<x-filament-panels::page>
    <div class="space-y-4">
        <h1 class="text-2xl font-bold">Selamat Datang, {{ $user->name }}!</h1>
        <p class="text-gray-600 dark:text-gray-400">Ini adalah halaman dashboard progres sidang skripsi Anda.</p>

        <x-filament::section>
            <x-slot name="heading">
                Status Pendaftaran Sidang
            </x-slot>

            @if ($pendaftaran->isEmpty())
                <p>Anda belum pernah melakukan pendaftaran sidang.</p>
                {{-- Nanti di sini kita tambahkan tombol/action untuk mendaftar --}}
            @else
                <x-filament-tables::table>
                    <x-slot name="header">
                        <x-filament-tables::header-cell>Jenis Sidang</x-filament-tables::header-cell>
                        <x-filament-tables::header-cell>Status</x-filament-tables::header-cell>
                        <x-filament-tables::header-cell>Tanggal Pengajuan</x-filament-tables::header-cell>
                    </x-slot>
                    @foreach ($pendaftaran as $item)
                        <x-filament-tables::row>
                            <x-filament-tables::cell><strong>{{ Str::title(str_replace('_', ' ', $item->jenis_sidang)) }}</strong></x-filament-tables::cell>
                            <x-filament-tables::cell>{{ Str::title($item->status) }}</x-filament-tables::cell>
                            <x-filament-tables::cell>{{ $item->created_at->format('d M Y') }}</x-filament-tables::cell>
                        </x-filament-tables::row>
                    @endforeach
                </x-filament-tables::table>
            @endif
        </x-filament::section>
    </div>
</x-filament-panels::page>
