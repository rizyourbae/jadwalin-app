<!DOCTYPE html>
<html>

<head>
    <title>Jadwal Sidang Skripsi - UINSI</title>
    <style>
        @page {
            size: A4;
            margin: 15mm;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
        }

        .header-table {
            width: 100%;
            border-bottom: 3px solid #0D9488;
            padding-bottom: 10px;
            margin-bottom: 15px;
        }

        .header-table td {
            padding: 5px;
            text-align: center;
            font-size: 12px;
        }

        .header-title {
            font-size: 24px;
            font-weight: bold;
            color: #0D9488;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .summary-table {
            width: 100%;
            margin-bottom: 15px;
        }

        .summary-table td {
            background: #F0FDFA;
            border: 1px solid #D1FAE5;
            padding: 8px;
            text-align: center;
            font-size: 11px;
        }

        .summary-title {
            font-weight: bold;
            color: #4B5563;
        }

        .summary-value {
            font-size: 16px;
            font-weight: bold;
            color: #0D9488;
        }

        .main-table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #E5E7EB;
        }

        .main-table th,
        .main-table td {
            border: 1px solid #E5E7EB;
            padding: 8px;
            font-size: 11px;
            text-align: left;
        }

        .main-table thead th {
            background-color: #0D9488;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 10px;
            letter-spacing: 0.5px;
        }

        .main-table tbody tr:nth-child(even) {
            background-color: #F9FAFB;
        }

        .status-badge {
            background-color: #D1FAE5;
            color: #065F46;
            padding: 2px 5px;
            font-size: 9px;
            font-weight: bold;
            display: inline-block;
        }

        .notes-table {
            width: 100%;
            margin-top: 15px;
            background: #F9FAFB;
            border: 1px solid #E5E7EB;
            padding: 10px;
        }

        .notes-table td {
            padding: 5px;
            font-size: 10px;
        }

        .footer-table {
            width: 100%;
            margin-top: 20px;
            border-top: 2px solid #0D9488;
            padding-top: 15px;
        }

        .footer-table td {
            padding: 5px;
            vertical-align: top;
            font-size: 10px;
        }

        .signature-box {
            width: 120px;
            height: 40px;
            border: 1px dashed #0D9488;
            text-align: center;
            line-height: 40px;
            font-size: 9px;
            color: #6B7280;
        }

        .valid-stamp {
            background: #FBBF24;
            color: black;
            padding: 5px 10px;
            border-radius: 3px;
            text-align: center;
            font-size: 10px;
            font-weight: bold;
        }

        .footer-page {
            text-align: right;
            font-weight: bold;
            color: #4B5563;
        }

        .copyright {
            text-align: center;
            margin-top: 10px;
            font-size: 8px;
            color: #6B7280;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <table class="header-table">
        <tr>
            <td>
                <div class="header-title">JADWAL SIDANG SKRIPSI</div>
                <div>Fakultas {{ $fakultas }} - Universitas Islam Negeri Sultan Aji Muhammad Idris</div>
                <div>Tanggal Cetak: {{ date('d F Y') }}</div>
            </td>
        </tr>
    </table>

    <!-- Summary Cards -->
    <table class="summary-table">
        <tr>
            <td>
                <div class="summary-title">Total Mahasiswa</div>
                <div class="summary-value">{{ count($jadwals) }}</div>
            </td>
            <td>
                <div class="summary-title">Jadwal Sidang</div>
                <div class="summary-value">{{ count($jadwals) }}</div>
            </td>
            <td>
                <div class="summary-title">Ruangan Terpakai</div>
                <div class="summary-value">4</div>
            </td>
        </tr>
    </table>

    <!-- Main Schedule Table -->
    <table class="main-table">
        <thead>
            <tr>
                <th>No.</th>
                <th>Nama Mahasiswa</th>
                <th>NIM</th>
                <th>Status</th>
                <th>Tanggal</th>
                <th>Waktu</th>
                <th>Ruangan</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($jadwals as $index => $jadwal)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $jadwal->pendaftaranSidang->mahasiswa->user->name }}</td>
                    <td>{{ $jadwal->pendaftaranSidang->mahasiswa->nim }}</td>
                    <td><span class="status-badge">Disetujui</span></td>
                    <td>{{ \Carbon\Carbon::parse($jadwal->tanggal_sidang)->translatedFormat('d M Y') }}</td>
                    <td>{{ \Carbon\Carbon::parse($jadwal->waktu_mulai)->format('H:i') }}</td>
                    <td>{{ $jadwal->ruangan->nama_ruangan }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <!-- Notes Section -->
    <table class="notes-table">
        <tr>
            <td>
                <strong>📝 Catatan Penting</strong><br>
                <ul style="padding-left: 15px; margin: 5px 0;">
                    <li>Mahasiswa wajib hadir 30 menit sebelum jadwal sidang dimulai</li>
                    <li>Bawa dokumen pendukung dan draft skripsi terbaru</li>
                    <li>Pengajuan perubahan jadwal harus dilakukan minimal 3 hari sebelum sidang</li>
                </ul>
            </td>
        </tr>
    </table>

    <!-- Footer -->
    <table class="footer-table">
        <tr>
            <td width="33%">
                Dikeluarkan oleh:<br>
                Fakultas {{ $fakultas }}<br>
                UIN Sultan Aji Muhammad Idris<br>
                <div class="signature-box">Tanda Tangan</div>
            </td>
            <td width="33%" align="center">
                <div class="valid-stamp">SIDANG VALID<br><span style="font-size: 8px;">Dokumen Resmi</span></div>
            </td>
            <td width="33%" align="right" class="footer-page">
                Dokumen ini dicetak secara otomatis<br>
                oleh sistem JADWALIN<br>
                Halaman 1
            </td>
        </tr>
    </table>

    <div class="copyright">
        © 2025 JADWALIN - Sistem Penjadwalan Sidang Skripsi | Hak Cipta Dilindungi
    </div>

</body>

</html>
