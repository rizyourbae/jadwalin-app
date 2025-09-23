<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\PendaftaranSidang;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\Action;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class PerluVerifikasiWidget extends BaseWidget
{
    protected static ?string $heading = 'Pengajuan Perlu Diverifikasi';

    protected static ?int $sort = 2;

    public function table(Table $table): Table
    {
        $user = Auth::user();
        $query = PendaftaranSidang::query()->where('status', 'diajukan');

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
                Action::make('Verifikasi')
                    ->icon('heroicon-o-check-circle')
                    ->url(fn(PendaftaranSidang $record): string => PendaftaranSidangResource::getUrl('edit', ['record' => $record])),
            ])
            ->emptyStateHeading('Tidak ada pengajuan baru');
    }
}
