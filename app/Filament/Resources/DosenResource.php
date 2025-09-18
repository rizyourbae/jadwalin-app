<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DosenResource\Pages;
use App\Filament\Resources\DosenResource\RelationManagers;
use App\Models\Dosen;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\{Grid, Section, TextInput, Select};
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\SoftDeletingScope;

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
                    ->searchable()
                    ->sortable()
                    ->label('Nama Dosen'),
                TextColumn::make('nip')
                    ->searchable()
                    ->label('NIP'),
                TextColumn::make('fakultas.nama_fakultas')
                    ->sortable()
                    ->label('Fakultas'),
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

        if (Auth::user()->hasRole('super_admin')) {
            return $query;
        }

        return $query->where('fakultas_id', Auth::user()->fakultas_id);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDosens::route('/'),
            'create' => Pages\CreateDosen::route('/create'),
            'edit' => Pages\EditDosen::route('/{record}/edit'),
        ];
    }
}
