<?php

namespace App\Filament\Dosen\Resources;

use App\Filament\Dosen\Resources\BimbinganResource\Pages;
use App\Models\Mahasiswa;
use Illuminate\Database\Eloquent\Model;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class BimbinganResource extends Resource
{
    protected static ?string $model = Mahasiswa::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static ?string $navigationLabel = 'Mahasiswa Bimbingan';
    protected static ?string $pluralModelLabel = 'Mahasiswa Bimbingan';

    // Kita hapus semua kemampuan untuk membuat atau mengedit
    public static function canCreate(): bool
    {
        return false;
    }

    public static function canEdit(Model $record): bool
    {
        return false;
    }

    public static function getShieldPermissionPrefix(): string
    {
        // Paksa resource ini untuk menggunakan prefix izin 'mahasiswa'
        // bukan 'bimbingan'.
        return 'mahasiswa';
    }

    // Filter agar dosen hanya bisa lihat mahasiswa bimbingannya
    public static function getEloquentQuery(): Builder
    {
        $dosenId = Auth::user()->dosen->id;
        return parent::getEloquentQuery()
            ->where('pembimbing1_id', $dosenId)
            ->orWhere('pembimbing2_id', $dosenId);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('user.name')
                    ->label('Nama Mahasiswa')
                    ->searchable(),
                TextColumn::make('nim')
                    ->label('NIM')
                    ->searchable(),
                TextColumn::make('judul_skripsi')
                    ->label('Judul Skripsi')
                    ->words(10)
                    ->wrap(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->emptyStateHeading('Belum Ada Mahasiswa Bimbingan')
            ->emptyStateDescription('Data akan muncul di sini jika Anda sudah ditugaskan sebagai pembimbing.');
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBimbingans::route('/'),
            'view' => Pages\ViewBimbingan::route('/{record}'),
        ];
    }
}
