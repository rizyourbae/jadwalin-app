<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\JadwalSidangResource;
use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\PendaftaranSidang;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\Action;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class SiapDijadwalkanWidget extends BaseWidget
{
    protected static ?string $heading = 'Pengajuan Siap Dijadwalkan';

    protected static ?int $sort = 3;

    public function table(Table $table): Table
    {
        $user = Auth::user();
        $query = PendaftaranSidang::query()->where('status', 'diverifikasi');

        if (!$user->hasRole('super_admin')) {
            $query->where('fakultas_id', $user->fakultas_id);
        }

        return $table
            ->query($query->latest())
            ->columns([
                TextColumn::make('mahasiswa.user.name')
                    ->label('Mahasiswa'),
                TextColumn::make('jenis_sidang')
                    ->badge()
                    ->formatStateUsing(fn(string $state): string => Str::title(str_replace('_', ' ', $state)))
                    // 2. Memberikan warna berbeda berdasarkan isinya
                    ->color(fn(string $state): string => match ($state) {
                        'seminar_proposal' => 'info',
                        'seminar_hasil' => 'warning',
                        'munaqasah' => 'success',
                        default => 'gray',
                    }),
            ])
            ->actions([
                Action::make('Buat Jadwal')
                    ->icon('heroicon-o-calendar-days')
                    ->color('success')
                    ->url(fn(PendaftaranSidang $record): string => JadwalSidangResource::getUrl('create', ['pendaftaran_id' => $record->id])),
            ])
            ->emptyStateHeading('Tidak ada pengajuan yang siap dijadwalkan');
    }
}
