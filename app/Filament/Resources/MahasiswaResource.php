<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MahasiswaResource\Pages;
use App\Models\Mahasiswa;
use App\Models\User; // <-- Penting
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Resources\Resource;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Actions\EditAction;
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
                            ->relationship(
                                name: 'pembimbing2',
                                titleAttribute: 'nip',
                                // Hanya ambil dosen dari fakultas yang dipilih
                                modifyQueryUsing: fn(Builder $query, Get $get) => $query->where('fakultas_id', $get('fakultas_id'))
                            )
                            ->getOptionLabelFromRecordUsing(fn($record) => $record->user->name . ' (' . $record->nip . ')')
                            ->label('Dosen Pembimbing 2')
                            ->searchable()
                            ->preload(),
                        Textarea::make('judul_skripsi')->label('Judul Skripsi')->rows(3)->columnSpanFull(),
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
                EditAction::make(),
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

        if (Auth::user()->hasRole('super_admin')) {
            return $query;
        }

        return $query->where('fakultas_id', Auth::user()->fakultas_id);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListMahasiswas::route('/'),
            'create' => Pages\CreateMahasiswa::route('/create'),
            'edit' => Pages\EditMahasiswa::route('/{record}/edit'),
        ];
    }
}
