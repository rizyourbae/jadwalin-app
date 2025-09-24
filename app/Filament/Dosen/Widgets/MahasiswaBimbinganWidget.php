<?php

namespace App\Filament\Dosen\Widgets;

use App\Models\Mahasiswa;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder;

class MahasiswaBimbinganWidget extends BaseWidget
{
    protected static ?string $heading = 'Mahasiswa Bimbingan Saya';
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(function () {
                $dosenId = Auth::user()->dosen->id;

                return Mahasiswa::query()
                    ->where(function (Builder $query) use ($dosenId) {
                        $query->where('pembimbing1_id', $dosenId)
                            ->orWhere('pembimbing2_id', $dosenId);
                    });
            })
            ->columns([
                TextColumn::make('user.name')
                    ->label('Nama Mahasiswa'),
                TextColumn::make('nim')
                    ->label('NIM'),
                TextColumn::make('judul_skripsi')
                    ->label('Judul Skripsi')
                    ->words(10)
                    ->wrap(),
            ]);
    }
}
