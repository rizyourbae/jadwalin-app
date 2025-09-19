<x-filament-panels::page>
    <div class="space-y-8">
        <x-filament::section>
            <x-slot name="heading">
                Profil Mahasiswa
            </x-slot>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">Nama Lengkap</p>
                    <p class="font-semibold">{{ $mahasiswa->user->name }}</p>
                </div>
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">NIM</p>
                    <p class="font-semibold">{{ $mahasiswa->nim }}</p>
                </div>
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">Fakultas</p>
                    <p class="font-semibold">{{ $mahasiswa->fakultas->nama_fakultas }}</p>
                </div>
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">Email</p>
                    <p class="font-semibold">{{ $mahasiswa->user->email }}</p>
                </div>
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">Dosen Pembimbing 1</p>
                    <p class="font-semibold">{{ $mahasiswa->pembimbing1->user->name ?? '-' }}</p>
                </div>
                <div>
                    <p class="text-sm text-gray-500 dark:text-gray-400">Dosen Pembimbing 2</p>
                    <p class="font-semibold">{{ $mahasiswa->pembimbing2->user->name ?? '-' }}</p>
                </div>
            </div>
        </x-filament::section>

        <x-filament::section>
            <x-slot name="heading">
                Status Pendaftaran Sidang
            </x-slot>

            @if ($pendaftaran->isEmpty())
                <p>Anda belum pernah melakukan pendaftaran sidang.</p>
            @else
                <x-filament-tables::table>
                    <x-slot name="header">
                        <x-filament-tables::header-cell>Jenis Sidang</x-filament-tables::header-cell>
                        <x-filament-tables::header-cell>Status</x-filament-tables::header-cell>
                        <x-filament-tables::header-cell>Jadwal Sidang</x-filament-tables::header-cell>
                        <x-filament-tables::header-cell>Ruangan</x-filament-tables::header-cell> </x-slot>
                    @foreach ($pendaftaran as $item)
                        <x-filament-tables::row>
                            <x-filament-tables::cell><strong>{{ Str::title(str_replace('_', ' ', $item->jenis_sidang)) }}</strong></x-filament-tables::cell>
                            <x-filament-tables::cell>
                                <x-filament::badge :color="match ($item->status) {
                                    'diajukan' => 'primary',
                                    'diverifikasi' => 'warning',
                                    'dijadwalkan' => 'success',
                                    'selesai' => 'success',
                                    'ditolak' => 'danger',
                                    default => 'gray', // <-- TAMBAHKAN BARIS INI
                                }">
                                    {{ Str::title($item->status) }}
                                </x-filament::badge>
                            </x-filament-tables::cell>

                            <x-filament-tables::cell>
                                @if ($item->jadwalSidang)
                                    {{ \Carbon\Carbon::parse($item->jadwalSidang->tanggal_sidang)->translatedFormat('l, d F Y') }}
                                    <br>
                                    <span class="text-sm text-gray-500">
                                        {{ \Carbon\Carbon::parse($item->jadwalSidang->waktu_mulai)->format('H:i') }} -
                                        {{ \Carbon\Carbon::parse($item->jadwalSidang->waktu_selesai)->format('H:i') }}
                                    </span>
                                @else
                                    -
                                @endif
                            </x-filament-tables::cell>
                            <x-filament-tables::cell>
                                {{ $item->jadwalSidang->ruangan->nama_ruangan ?? '-' }}
                            </x-filament-tables::cell>

                        </x-filament-tables::row>
                    @endforeach
                </x-filament-tables::table>
            @endif
        </x-filament::section>
    </div>
</x-filament-panels::page>
