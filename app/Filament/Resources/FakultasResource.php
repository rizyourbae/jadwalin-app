<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FakultasResource\Pages;
use App\Filament\Resources\FakultasResource\RelationManagers;
use App\Models\Fakultas;
use Filament\Forms\Components\{Section, TextInput};
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Tables\Actions\{ActionGroup, BulkActionGroup, DeleteBulkAction, ViewAction, EditAction, DeleteAction};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder;

class FakultasResource extends Resource
{
    protected static ?string $model = Fakultas::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-library';
    protected static ?string $navigationLabel = 'Data Fakultas';
    protected static ?string $pluralModelLabel = 'Data Fakultas';
    protected static ?string $navigationGroup = 'Manajemen Akademik';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make()->schema([
                    TextInput::make('nama_fakultas')
                        ->label('Nama Fakultas')
                        ->required()
                        ->maxLength(255),
                    TextInput::make('kode_fakultas')
                        ->label('Kode Fakultas')
                        ->required()
                        ->unique(ignoreRecord: true)
                        ->maxLength(255),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('No.'),
                TextColumn::make('nama_fakultas')
                    ->label('Nama Fakultas')
                    ->searchable(),
                TextColumn::make('kode_fakultas')
                    ->label('Kode Fakultas')
                    ->searchable(),
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

        return $query->where('id', Auth::user()->fakultas_id);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListFakultas::route('/'),
            'create' => Pages\CreateFakultas::route('/create'),
            'view' => Pages\ViewFakultas::route('/{record}'),
            'edit' => Pages\EditFakultas::route('/{record}/edit'),
        ];
    }
}
