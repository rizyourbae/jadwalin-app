<?php

namespace App\Filament\Dosen\Resources;

use App\Filament\Dosen\Resources\JadwalSayaResource\Pages;
use App\Models\JadwalSidang;
use Filament\Tables\{Columns\TextColumn, Table, Actions\ViewAction};
use Illuminate\Database\Eloquent\{Builder, Model};
use Filament\Resources\Resource;
use Illuminate\Support\Facades\Auth;


class JadwalSayaResource extends Resource
{
    protected static ?string $model = JadwalSidang::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';
    protected static ?string $navigationLabel = 'Jadwal Saya';
    protected static ?string $pluralModelLabel = 'Jadwal Saya';

    public static function canCreate(): bool
    {
        return false;
    }

    public static function canEdit(Model $record): bool
    {
        return false;
    }

    public static function getEloquentQuery(): Builder
    {
        $dosenId = Auth::user()->dosen->id;

        return parent::getEloquentQuery()
            ->where(function (Builder $query) use ($dosenId) {
                // Di mana dosen adalah penguji 1 atau penguji 2
                $query
                    ->where('penguji1_id', $dosenId)
                    ->orWhere('penguji2_id', $dosenId);
            })
            ->orWhereHas('pendaftaranSidang.mahasiswa', function (Builder $query) use ($dosenId) {
                // ATAU di mana dosen adalah pembimbing 1 atau pembimbing 2
                $query
                    ->where('pembimbing1_id', $dosenId)
                    ->orWhere('pembimbing2_id', $dosenId);
            })
            ->latest('tanggal_sidang');
    }
    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('pendaftaranSidang.mahasiswa.user.name')
                    ->label('Nama Mahasiswa'),
                TextColumn::make('tanggal_sidang')
                    ->label('Tanggal')
                    ->date('l, d M Y'),
                TextColumn::make('ruangan.nama_ruangan')
                    ->label('Ruangan'),
                // Kolom "pintar" untuk menampilkan peran dosen
                TextColumn::make('peran_saya')
                    ->label('Peran Saya')
                    ->badge()
                    ->formatStateUsing(function ($record) {
                        $dosenId = Auth::user()->dosen->id;
                        if ($record->penguji1_id == $dosenId || $record->penguji2_id == $dosenId) {
                            return 'Penguji';
                        }
                        return 'Pembimbing';
                    })
                    ->color(fn(string $state): string => match ($state) {
                        'Penguji' => 'success',
                        'Pembimbing' => 'info',
                    }),
            ])
            ->actions([
                ViewAction::make(),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListJadwalSayas::route('/'),
            'view' => Pages\ViewJadwalSaya::route('/{record}'),
        ];
    }
}
