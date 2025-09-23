<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DosenResource\Pages;
use App\Filament\Resources\DosenResource\RelationManagers;
use App\Models\Dosen;
use App\Models\User;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\{Grid, Section, TextInput, Select};
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\{ActionGroup, ViewAction, EditAction, DeleteAction, BulkActionGroup, DeleteBulkAction};
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class DosenResource extends Resource
{
    protected static ?string $model = Dosen::class;

    protected static ?string $navigationIcon = 'heroicon-o-academic-cap';
    protected static ?string $navigationLabel = 'Data Dosen';
    protected static ?string $modelLabel = 'Dosen';
    protected static ?string $pluralModelLabel = 'Data Dosen';
    protected static ?string $navigationGroup = 'Manajemen Akademik'; // Grouping menu
    protected static ?int $navigationSort = 2; // Urutan menu


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Akun Login Baru')
                    ->description('Buat akun login untuk dosen ini secara otomatis.')
                    ->schema([
                        TextInput::make('name')
                            ->label('Nama Lengkap Dosen')
                            ->required(),
                        TextInput::make('email')
                            ->label('Email Login')
                            ->email()
                            ->required()
                            ->unique(table: User::class, column: 'email', ignoreRecord: true),
                        TextInput::make('password')
                            ->label('Password')
                            ->password()
                            ->required()
                            ->minLength(8)
                            ->confirmed(), // Tambahan: validasi konfirmasi password
                        TextInput::make('password_confirmation')
                            ->label('Konfirmasi Password')
                            ->password()
                            ->required(),
                    ])
                    ->columns(2)
                    ->visibleOn('create'),

                Section::make('Data Diri & Kepegawaian')
                    ->schema([
                        Select::make('fakultas_id') // <-- FIELD YANG HILANG
                            ->relationship('fakultas', 'nama_fakultas')
                            ->searchable()
                            ->preload()
                            ->required()
                            ->label('Fakultas'),
                        TextInput::make('nip')
                            ->required()
                            ->unique(ignoreRecord: true)
                            ->maxLength(20)
                            ->label('NIP'),
                        Grid::make()
                            ->schema([
                                TextInput::make('gelar_depan')
                                    ->maxLength(255)
                                    ->label('Gelar Depan'),
                                TextInput::make('gelar_belakang')
                                    ->maxLength(255)
                                    ->label('Gelar Belakang'),
                            ]),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('user.name')
                    ->label('Nama Dosen')
                    // Mengambil seluruh data record untuk digabungkan
                    ->formatStateUsing(function ($record) {
                        // Asumsi $record adalah model Dosen
                        $nama = $record->user->name;
                        $gelarDepan = $record->gelar_depan;
                        $gelarBelakang = $record->gelar_belakang;
                        // Menggabungkan gelar depan & nama dengan spasi, lalu nama & gelar belakang dengan koma
                        return trim($gelarDepan . ' ' . $nama) . (!empty($gelarBelakang) ? ', ' . $gelarBelakang : '');
                    })
                    ->searchable(
                        query: function (Builder $query, string $search): Builder {
                            return $query
                                ->whereHas('user', function ($subQuery) use ($search) {
                                    $subQuery->where('name', 'like', "%{$search}%");
                                })
                                ->orWhere('gelar_depan', 'like', "%{$search}%")
                                ->orWhere('gelar_belakang', 'like', "%{$search}%");
                        }
                    )
                    ->sortable(
                        query: function (Builder $query, string $direction): Builder {
                            return $query
                                ->join('users', 'dosens.user_id', '=', 'users.id')
                                ->orderBy('users.name', $direction);
                        }
                    ), // Diurutkan berdasarkan nama
                TextColumn::make('nip')
                    ->searchable()
                    ->label('NIP'),
                TextColumn::make('fakultas.nama_fakultas')
                    ->sortable()
                    ->searchable()
                    ->label('Fakultas'),
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
            'index' => Pages\ListDosens::route('/'),
            'create' => Pages\CreateDosen::route('/create'),
            'view' => Pages\ViewDosen::route('/{record}'),
            'edit' => Pages\EditDosen::route('/{record}/edit'),
        ];
    }
}
