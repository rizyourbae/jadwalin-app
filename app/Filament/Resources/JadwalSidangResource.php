<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JadwalSidangResource\Pages;
use App\Filament\Resources\JadwalSidangResource\RelationManagers;
use App\Models\JadwalSidang;
use App\Models\PendaftaranSidang;
use App\Models\Ruangan;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Get;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Facades\Auth;

class JadwalSidangResource extends Resource
{
    protected static ?string $model = JadwalSidang::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';
    protected static ?string $navigationLabel = 'Jadwal Sidang Final';
    protected static ?string $pluralModelLabel = 'Jadwal Sidang Final';
    protected static ?string $navigationGroup = 'Proses Sidang';
    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Detail Jadwal')
                    ->schema([
                        Select::make('pendaftaran_sidang_id')
                            ->relationship('pendaftaranSidang', 'id')
                            ->getOptionLabelFromRecordUsing(fn($record) => $record->mahasiswa->user->name . ' - ' . str_replace('_', ' ', $record->jenis_sidang))
                            ->label('Pilih Pendaftaran')
                            ->live()
                            ->required(),
                        Select::make('ruangan_id')
                            ->label('Pilih Ruangan')
                            ->options(function (Get $get) {
                                // 1. Ambil id pendaftaran yang dipilih
                                $pendaftaranId = $get('pendaftaran_sidang_id');
                                if (!$pendaftaranId) {
                                    return []; // Kembalikan array kosong jika belum ada pendaftaran dipilih
                                }

                                // 2. Cari data pendaftarannya untuk dapat fakultas_id
                                $pendaftaran = PendaftaranSidang::find($pendaftaranId);
                                if (!$pendaftaran) {
                                    return [];
                                }

                                // 3. Ambil hanya ruangan dari fakultas yang sesuai
                                return Ruangan::where('fakultas_id', $pendaftaran->fakultas_id)
                                    ->pluck('nama_ruangan', 'id');
                            })
                            ->searchable()
                            ->required(),
                        DatePicker::make('tanggal_sidang')
                            ->label('Tanggal Sidang')
                            ->required(),
                        TimePicker::make('waktu_mulai')
                            ->label('Waktu Mulai')
                            ->required(),
                        TimePicker::make('waktu_selesai')
                            ->label('Waktu Selesai')
                            ->required(),
                    ])->columns(2),

                Section::make('Dosen Penguji')
                    ->schema([
                        Select::make('penguji1_id')
                            ->label('Dosen Penguji 1')
                            ->options(function (Get $get) {
                                $pendaftaran = PendaftaranSidang::find($get('pendaftaran_sidang_id'));
                                if (!$pendaftaran) {
                                    return [];
                                }
                                return $pendaftaran->mahasiswa->fakultas->dosens
                                    ->whereNotIn('id', [$pendaftaran->mahasiswa->pembimbing1_id, $pendaftaran->mahasiswa->pembimbing2_id])
                                    ->pluck('user.name', 'id');
                            })
                            ->searchable()
                            ->preload()
                            ->required(),
                        Select::make('penguji2_id')
                            ->label('Dosen Penguji 2')
                            ->options(function (Get $get) {
                                $pendaftaran = PendaftaranSidang::find($get('pendaftaran_sidang_id'));
                                if (!$pendaftaran) {
                                    return [];
                                }
                                // Ambil juga penguji 1 agar tidak dipilih dua kali
                                $penguji1 = $get('penguji1_id');
                                return $pendaftaran->mahasiswa->fakultas->dosens
                                    ->whereNotIn('id', [$pendaftaran->mahasiswa->pembimbing1_id, $pendaftaran->mahasiswa->pembimbing2_id, $penguji1])
                                    ->pluck('user.name', 'id');
                            })
                            ->searchable()->preload()->required(),
                    ])->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('pendaftaranSidang.mahasiswa.user.name')
                    ->label('Nama Mahasiswa')
                    ->searchable(),
                TextColumn::make('tanggal_sidang')
                    ->date('d F Y')
                    ->sortable(),
                TextColumn::make('waktu_mulai')
                    ->time('H:i'),
                TextColumn::make('ruangan.nama_ruangan')
                    ->label('Ruangan'),
                TextColumn::make('penguji1.user.name')
                    ->label('Penguji 1'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        $query = parent::getEloquentQuery();

        /** @var \App\Models\User */
        $user = Auth::user();
        if ($user->hasRole('super_admin')) {
            return $query;
        }

        return $query->whereHas('pendaftaranSidang', function (Builder $subQuery) {
            $subQuery->where('fakultas_id', Auth::user()->fakultas_id);
        });
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListJadwalSidangs::route('/'),
            'create' => Pages\CreateJadwalSidang::route('/create'),
            'edit' => Pages\EditJadwalSidang::route('/{record}/edit'),
        ];
    }
}
