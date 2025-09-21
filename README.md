# JADWALIN - Aplikasi Penjadwalan Sidang Skripsi 🎓

Aplikasi web modern untuk mengelola dan mengotomatisasi seluruh proses penjadwalan sidang skripsi di lingkungan universitas, mulai dari seminar proposal hingga sidang munaqasah. Dibangun dengan penuh semangat menggunakan Laravel & Filament 3.

![PHP Version](https://img.shields.io/badge/PHP-8.2%2B-777BB4?style=for-the-badge&logo=php)
![Laravel Version](https://img.shields.io/badge/Laravel-11.x-FF2D20?style=for-the-badge&logo=laravel)
![Filament Version](https://img.shields.io/badge/Filament-3.x-F59E0B?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

---

### Tampilan Aplikasi



## 📖 Tentang Proyek

JADWALIN dibangun untuk memecahkan masalah penjadwalan sidang skripsi yang seringkali rumit dan manual. Aplikasi ini menyediakan platform terpusat bagi Mahasiswa, Dosen, dan Admin Fakultas untuk berkolaborasi secara efisien, mengurangi kesalahan administrasi, dan memberikan transparansi penuh terhadap seluruh proses akademik.

## ✨ Fitur Utama

-   **Multi-Panel Architecture**: Panel Admin (`/admin`) dan Panel Mahasiswa (`/mahasiswa`) yang terpisah, masing-masing dengan sistem login dan keamanan yang ketat.
-   **Manajemen Role & Izin**: Sistem hak akses yang kuat menggunakan Filament Shield (`Super Admin`, `Admin Fakultas`, `Dosen`, `Mahasiswa`).
-   **Data Scoping Otomatis**: Admin Fakultas hanya bisa melihat dan mengelola data yang relevan dengan fakultasnya sendiri.
-   **Alur Kerja Sidang Penuh**: Mengelola siklus hidup pendaftaran mahasiswa dari Seminar Proposal, Seminar Hasil, hingga Sidang Munaqasah.
-   **Manajemen Data Master**: Halaman CRUD yang fungsional untuk Fakultas, Dosen, Mahasiswa, Ruangan, dan User.
-   **Penjadwalan Cerdas**: Form penjadwalan dengan filter dinamis (*cascading dropdown*) untuk Dosen Penguji dan Ruangan berdasarkan fakultas mahasiswa.
-   **Portal Mahasiswa Fungsional**: Dashboard personal bagi mahasiswa untuk mengajukan pendaftaran baru dan memantau status secara *real-time*.
-   **Halaman Login Kustom**: Tampilan login yang unik dan profesional untuk setiap panel.
-   **Kustomisasi Halaman Error**: Halaman error (seperti 403 & 404) yang sudah di-branding.

## 🛠️ Teknologi yang Digunakan

-   **PHP 8.2+**
-   **Laravel 11.x**
-   **Filament 3.x**
-   **Filament Shield**
-   **MySQL**
-   **Tailwind CSS**

## 🚀 Instalasi & Setup

1.  Clone repository ini:
    ```bash
    git clone [https://github.com/username/nama-repo.git](https://github.com/username/nama-repo.git)
    cd nama-repo
    ```

2.  Install dependensi Composer:
    ```bash
    composer install
    ```

3.  Salin file `.env.example` menjadi `.env` dan generate application key:
    ```bash
    cp .env.example .env
    php artisan key:generate
    ```

4.  Konfigurasi koneksi database di file `.env`.

5.  Jalankan migrasi dan seeder untuk membuat tabel dan data awal:
    ```bash
    php artisan migrate --seed
    ```

6.  Buat storage link untuk file upload:
    ```bash
    php artisan storage:link
    ```

7.  Jalankan server development:
    ```bash
    php artisan serve
    ```

## 🔑 Akun Demo

Kamu bisa login menggunakan akun berikut yang sudah dibuat oleh Seeder:

-   **Super Admin**
    -   **Email:** `superadmin@uinsi.ac.id`
    -   **Password:** `password`
    -   **URL:** `/admin/login`

-   **Admin Fakultas, Dosen & Mahasiswa**
    -   Dapat dibuat melalui panel Super Admin atau Admin Fakultas untuk keperluan uji coba.

## 📄 Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT.
