<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RuanganResource\Pages;
use App\Filament\Resources\RuanganResource\RelationManagers;
use App\Models\Ruangan;
use Filament\Forms\Form;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RuanganResource extends Resource
{
    protected static ?string $model = Ruangan::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office-2';
    protected static ?string $navigationLabel = 'Data Ruangan';
    protected static ?string $pluralModelLabel = 'Data Ruangan';
    protected static ?string $navigationGroup = 'Manajemen Akademik';
    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()->schema([
                    Select::make('fakultas_id')
                        ->relationship('fakultas', 'nama_fakultas')
                        ->label('Fakultas')
                        ->required(),
                    TextInput::make('nama_ruangan')
                        ->label('Nama Ruangan')
                        ->required(),
                    TextInput::make('kode_ruangan')
                        ->label('Kode Ruangan')
                        ->required()
                        ->unique(ignoreRecord: true),
                    TextInput::make('kapasitas')
                        ->numeric()
                        ->required()
                        ->label('Kapasitas'),
                ])->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nama_ruangan')
                    ->searchable(),
                TextColumn::make('kode_ruangan')
                    ->searchable(),
                TextColumn::make('fakultas.nama_fakultas')
                    ->label('Fakultas')
                    ->sortable(),
                TextColumn::make('kapasitas'),
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
            'index' => Pages\ListRuangans::route('/'),
            'create' => Pages\CreateRuangan::route('/create'),
            'edit' => Pages\EditRuangan::route('/{record}/edit'),
        ];
    }
}
