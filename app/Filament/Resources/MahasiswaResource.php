<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MahasiswaResource\Pages;
use App\Models\Mahasiswa;
use App\Models\User;
use App\Models\Dosen;
use Filament\Forms\Components\{Section, Select, Textarea, TextInput};
use Filament\Forms\{Form, Get, Set};
use Filament\Resources\Resource;
use Filament\Tables\Actions\{ActionGroup, EditAction, ViewAction, DeleteAction, BulkActionGroup, DeleteBulkAction};
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder;

class MahasiswaResource extends Resource
{
    protected static ?string $model = Mahasiswa::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static ?string $navigationLabel = 'Data Mahasiswa';
    protected static ?string $modelLabel = 'Mahasiswa';
    protected static ?string $pluralModelLabel = 'Data Mahasiswa';
    protected static ?string $navigationGroup = 'Manajemen Akademik';
    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Akun Login Baru')
                    ->description('Buat akun login untuk mahasiswa ini secara otomatis.')
                    ->schema([
                        TextInput::make('name')
                            ->label('Nama Lengkap Mahasiswa')
                            ->required(),
                        TextInput::make('email')
                            ->label('Email Login')
                            ->email()
                            ->required()
                            ->unique(table: User::class, column: 'email', ignoreRecord: true),
                        TextInput::make('password')
                            ->password()
                            ->required()
                            ->minLength(8)
                            ->confirmed(),
                        TextInput::make('password_confirmation')
                            ->password()
                            ->required(),
                    ])
                    ->columns(2)
                    ->visibleOn('create'),

                Section::make('Data Akademik Mahasiswa')
                    ->schema([
                        TextInput::make('nim')
                            ->label('NIM')
                            ->required()
                            ->unique(ignoreRecord: true),
                        Select::make('fakultas_id')
                            ->relationship('fakultas', 'nama_fakultas')
                            ->label('Fakultas')
                            ->live()
                            ->required(),
                        Select::make('pembimbing1_id')
                            ->relationship(
                                name: 'pembimbing1',
                                titleAttribute: 'nip',
                                // Hanya ambil dosen dari fakultas yang dipilih
                                modifyQueryUsing: fn(Builder $query, Get $get) => $query->where('fakultas_id', $get('fakultas_id'))
                            )
                            ->getOptionLabelFromRecordUsing(fn($record) => $record->user->name . ' (' . $record->nip . ')')
                            ->label('Dosen Pembimbing 1')
                            ->searchable()
                            ->preload(),
                        Select::make('pembimbing2_id')
                            ->label('Dosen Pembimbing 2 (Internal)')
                            ->options(
                                Dosen::all()->mapWithKeys(function ($dosen) {
                                    return [$dosen->id => $dosen->user->name . ' (' . $dosen->nip . ')'];
                                })
                            )
                            ->searchable()
                            ->helperText('Pilih ini jika dosen dari UINSI. Biarkan kosong jika mengisi Dosen Eksternal.'),
                        TextInput::make('pembimbing2_external')
                            ->label('Nama Dosen Pembimbing 2 (Eksternal)')
                            ->helperText('Isi ini HANYA jika dosen dari luar UINSI.'),
                        Textarea::make('judul_skripsi')
                            ->label('Judul Skripsi')
                            ->rows(3)
                            ->columnSpanFull(),
                    ])->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('user.name')
                    ->label('Nama Mahasiswa')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('nim')
                    ->label('NIM')
                    ->searchable(),
                TextColumn::make('fakultas.nama_fakultas')
                    ->label('Fakultas')
                    ->sortable(),
                TextColumn::make('pembimbing1.user.name')
                    ->label('Pembimbing 1'),
            ])
            ->filters([
                //
            ])
            ->actions([
                ActionGroup::make([
                    ViewAction::make()
                        ->label('Detail'),
                    EditAction::make()
                        ->label('Ubah'),
                    DeleteAction::make()
                        ->label('Hapus'),
                ])
                    ->label('Opsi') // Mengubah label default jika tidak pakai ikon
                    ->icon('bi-gear-fill') // Mengganti ikon
                    ->tooltip('Klik untuk melihat opsi lainnya') // Menambahkan tooltip
                    ->color('info') // Mengubah warna tombol
                    ->button()
                    ->size('sm'), // Mengubah ukuran tombol
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
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

        return $query->where('fakultas_id', Auth::user()->fakultas_id);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListMahasiswas::route('/'),
            'create' => Pages\CreateMahasiswa::route('/create'),
            'view' => Pages\ViewMahasiswa::route('/{record}'),
            'edit' => Pages\EditMahasiswa::route('/{record}/edit'),
        ];
    }
}
