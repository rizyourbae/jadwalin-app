<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PendaftaranSidangResource\Pages;
use App\Filament\Resources\PendaftaranSidangResource\RelationManagers;
use App\Models\PendaftaranSidang;
use App\Models\Mahasiswa;
use App\Models\JadwalSidang;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\EditAction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PendaftaranSidangResource extends Resource
{
    protected static ?string $model = PendaftaranSidang::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-arrow-up';
    protected static ?string $navigationLabel = 'Pendaftaran Sidang';
    protected static ?string $pluralModelLabel = 'Pendaftaran Sidang';
    protected static ?string $navigationGroup = 'Proses Sidang';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Detail Pengajuan')
                    ->schema([
                        Select::make('mahasiswa_id')
                            ->relationship(
                                name: 'mahasiswa',
                                titleAttribute: 'nim',
                                modifyQueryUsing: function (Builder $query) {
                                    if (Auth::user()->hasRole('super_admin')) {
                                        return; // Super admin bisa lihat semua
                                    }
                                    // Admin fakultas hanya bisa lihat mahasiswa dari fakultasnya
                                    $query->where('fakultas_id', Auth::user()->fakultas_id);
                                }
                            )
                            ->getOptionLabelFromRecordUsing(fn($record) => $record->user->name . ' (' . $record->nim . ')')
                            ->label('Mahasiswa')
                            ->searchable()
                            ->preload()
                            ->required(),
                        Select::make('jenis_sidang')
                            ->options([
                                'seminar_proposal' => 'Seminar Proposal',
                                'seminar_hasil' => 'Seminar Hasil',
                                'munaqasah' => 'Sidang Munaqasah',
                            ])
                            ->required(),
                        Select::make('status')
                            ->options([
                                'diajukan' => 'Diajukan',
                                'diverifikasi' => 'Diverifikasi',
                                'dijadwalkan' => 'Dijadwalkan',
                                'selesai' => 'Selesai',
                                'ditolak' => 'Ditolak',
                            ])
                            ->required(),
                        Textarea::make('judul')
                            ->label('Judul Skripsi/Proposal')
                            ->required()
                            ->columnSpanFull(),
                        FileUpload::make('berkas_utama')
                            ->label('File Utama (Proposal/Skripsi)')
                            ->disk('public')
                            ->directory('documents/skripsi')
                            ->placeholder('Unggah Dokumen Disini')
                            ->required(),
                        FileUpload::make('berkas_pendukung')
                            ->label('File Pendukung (Jika Ada)'),
                        Textarea::make('catatan_admin')
                            ->label('Catatan dari Admin')
                            ->columnSpanFull(),
                    ])->columns(3),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('mahasiswa.user.name')
                    ->label('Nama Mahasiswa')
                    ->searchable(),
                TextColumn::make('mahasiswa.nim')
                    ->label('NIM')
                    ->searchable(),
                TextColumn::make('jenis_sidang')
                    ->label('Jenis')
                    ->badge(),
                TextColumn::make('status')
                    ->badge()
                    ->colors([
                        'primary' => 'diajukan',
                        'warning' => 'diverifikasi',
                        'success' => fn($state) => in_array($state, ['dijadwalkan', 'selesai']),
                        'danger' => 'ditolak',
                    ]),
            ])
            ->filters([
                SelectFilter::make('status')
                    ->options([
                        'diajukan' => 'Diajukan',
                        'diverifikasi' => 'Diverifikasi',
                        'dijadwalkan' => 'Dijadwalkan',
                        'selesai' => 'Selesai',
                        'ditolak' => 'Ditolak',
                    ]),
                SelectFilter::make('jenis_sidang')
                    ->options([
                        'seminar_proposal' => 'Seminar Proposal',
                        'seminar_hasil' => 'Seminar Hasil',
                        'munaqasah' => 'Sidang Munaqasah',
                    ]),
            ])
            ->actions([
                EditAction::make(),
                Action::make('buatJadwal')
                    ->label('Buat Jadwal')
                    ->icon('heroicon-o-calendar-days')
                    ->color('success')
                    // Aksi ini akan mengarahkan kita ke halaman pembuatan jadwal baru
                    ->url(fn(PendaftaranSidang $record): string => JadwalSidangResource::getUrl('create', ['pendaftaran_id' => $record->id]))
                    // Tombol ini hanya muncul jika statusnya 'diverifikasi'
                    ->visible(fn(PendaftaranSidang $record): bool => $record->status === 'diverifikasi'),
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

        if (Auth::user()->hasRole('super_admin')) {
            return $query;
        }

        return $query->where('fakultas_id', Auth::user()->fakultas_id);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPendaftaranSidangs::route('/'),
            'create' => Pages\CreatePendaftaranSidang::route('/create'),
            'edit' => Pages\EditPendaftaranSidang::route('/{record}/edit'),
        ];
    }
}
