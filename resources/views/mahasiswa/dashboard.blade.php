<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Mahasiswa</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css" />
</head>

<body>
    <main class="container">
        <header>
            <h1 style="margin-top: 2rem;">Selamat Datang, {{ $user->name }}!</h1>
            <p>Ini adalah halaman dashboard progres sidang skripsi Anda.</p>
        </header>

        <article>
            <header>
                <h2>Status Pendaftaran Sidang</h2>
            </header>
            @if ($pendaftaran->isEmpty())
                <p>Anda belum pernah melakukan pendaftaran sidang.</p>
                <a href="{{ route('mahasiswa.pendaftaran.create') }}" role="button">Daftar Seminar Proposal</a>
            @else
                {{-- Logika untuk Tombol Selanjutnya --}}
                @php
                    $pendaftaranTerakhir = $pendaftaran->first();
                @endphp

                @if ($pendaftaranTerakhir->jenis_sidang === 'seminar_proposal' && $pendaftaranTerakhir->status === 'selesai')
                    <a href="{{ route('mahasiswa.pendaftaran.create') }}" role="button" class="contrast">Daftar Seminar
                        Hasil</a>
                @elseif($pendaftaranTerakhir->jenis_sidang === 'seminar_hasil' && $pendaftaranTerakhir->status === 'selesai')
                    <a href="{{ route('mahasiswa.pendaftaran.create') }}" role="button" class="contrast">Daftar Sidang
                        Munaqasah</a>
                @endif
                <table>
                    <thead>
                        <tr>
                            <th>Jenis Sidang</th>
                            <th>Status</th>
                            <th>Tanggal Pengajuan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($pendaftaran as $item)
                            <tr>
                                <td><strong>{{ Str::title(str_replace('_', ' ', $item->jenis_sidang)) }}</strong></td>
                                <td>{{ Str::title($item->status) }}</td>
                                <td>{{ $item->created_at->format('d M Y') }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
        </article>
    </main>
</body>

</html>
