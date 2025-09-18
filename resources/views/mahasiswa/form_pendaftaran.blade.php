<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Pendaftaran Sidang</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css" />
</head>

<body>
    <main class="container">
        <h1 style="margin-top: 2rem;">Form Pendaftaran {{ Str::title(str_replace('_', ' ', $jenis_sidang)) }}</h1>

        @if ($errors->any())
            <article style="background: #ffcdd2; color: #c62828;">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </article>
        @endif

        <form method="POST" action="{{ route('mahasiswa.pendaftaran.store') }}" enctype="multipart/form-data">
            @csrf

            <input type="hidden" name="jenis_sidang" value="{{ $jenis_sidang }}">

            <label for="judul">
                Judul {{ $jenis_sidang === 'seminar_proposal' ? 'Proposal' : 'Skripsi' }}
                <input type="text" id="judul" name="judul" value="{{ old('judul') }}" required>
            </label>

            <label for="berkas_utama">
                File Utama (PDF, maks 2MB)
                <input type="file" id="berkas_utama" name="berkas_utama" required>
            </label>

            <button type="submit">Ajukan Pendaftaran</button>
        </form>
    </main>
</body>

</html>
