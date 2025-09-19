<?php

namespace App\Filament\Mahasiswa\Resources;

use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource\Pages;
use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource\RelationManagers;
use App\Models\PendaftaranSidang;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Textarea;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class PendaftaranSidangResource extends Resource
{
    protected static ?string $model = PendaftaranSidang::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-plus';
    protected static ?string $navigationLabel = 'Riwayat Pendaftaran';
    protected static ?string $pluralModelLabel = 'Pendaftaran Sidang';
    //protected static bool $shouldRegisterNavigation = false;
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Textarea::make('judul')
                    ->label('Judul Proposal/Skripsi')
                    ->required(),
                FileUpload::make('berkas_utama')
                    ->label('File Utama (PDF, maks 2MB)')
                    ->disk('public')
                    ->directory('documents/skripsi')
                    ->placeholder('Unggah Dokumen Disini')
                    ->required()
                    ->acceptedFileTypes(['application/pdf'])
                    ->maxSize(2048),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('jenis_sidang')
                    ->badge(),
                TextColumn::make('status')
                    ->badge()
                    ->colors([
                        'primary' => 'diajukan',
                        'warning' => 'diverifikasi',
                        'success' => fn($state) => in_array($state, ['dijadwalkan', 'selesai']),
                        'danger' => 'ditolak',
                    ]),
                TextColumn::make('created_at')
                    ->label('Tanggal Diajukan')
                    ->date('d M Y'),
            ])
            ->filters([
                //
            ])
            ->actions([])
            ->bulkActions([]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->where('mahasiswa_id', Auth::user()->mahasiswa->id);
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
