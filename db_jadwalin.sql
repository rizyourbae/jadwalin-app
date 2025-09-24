-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Sep 2025 pada 08.00
-- Versi server: 8.0.43-0ubuntu0.24.04.2
-- Versi PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jadwalin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:129:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"view_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"view_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"create_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:12:\"update_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"restore_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:17:\"restore_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:15:\"replicate_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"reorder_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"delete_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"delete_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"force_delete_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:22:\"force_delete_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:13:\"view_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:17:\"view_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"create_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:15:\"update_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:16:\"restore_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:20:\"restore_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:18:\"replicate_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:16:\"reorder_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"delete_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:19:\"delete_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"force_delete_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:25:\"force_delete_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:14:\"view_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:18:\"view_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:16:\"create_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:16:\"update_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:17:\"restore_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"restore_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:19:\"replicate_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:17:\"reorder_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:16:\"delete_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:20:\"delete_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:22:\"force_delete_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:26:\"force_delete_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"view_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:16:\"view_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:14:\"create_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:14:\"update_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:15:\"restore_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:19:\"restore_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:17:\"replicate_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"reorder_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:14:\"delete_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:18:\"delete_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:20:\"force_delete_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:24:\"force_delete_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"view_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:23:\"view_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:21:\"create_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:21:\"update_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:22:\"restore_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:26:\"restore_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:24:\"replicate_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:22:\"reorder_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:21:\"delete_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:25:\"delete_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:27:\"force_delete_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:31:\"force_delete_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:24:\"view_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:28:\"view_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:26:\"create_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:26:\"update_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:27:\"restore_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:31:\"restore_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:29:\"replicate_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:27:\"reorder_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:26:\"delete_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:30:\"delete_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:32:\"force_delete_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:36:\"force_delete_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:23:\"page_MahasiswaDashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:3:{s:1:\"a\";i:92;s:1:\"b\";s:31:\"widget_PendaftaranTerbaruWidget\";s:1:\"c\";s:3:\"web\";}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:26:\"widget_StatsOverviewWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:26:\"widget_RiwayatSidangWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:14:\"view_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:18:\"view_any_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:16:\"create_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:16:\"update_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:17:\"restore_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:21:\"restore_any_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:19:\"replicate_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:17:\"reorder_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:16:\"delete_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:20:\"delete_any_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:22:\"force_delete_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:26:\"force_delete_any_bimbingan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:3:{s:1:\"a\";i:107;s:1:\"b\";s:16:\"page_PortalDosen\";s:1:\"c\";s:3:\"web\";}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:28:\"widget_PerluVerifikasiWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:28:\"widget_SiapDijadwalkanWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:24:\"widget_JadwalDosenWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:31:\"widget_MahasiswaBimbinganWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:17:\"view_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:21:\"view_any_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:19:\"create_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:19:\"update_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:20:\"restore_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:24:\"restore_any_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:22:\"replicate_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:20:\"reorder_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:19:\"delete_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:23:\"delete_any_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:25:\"force_delete_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:29:\"force_delete_any_jadwal::saya\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:20:\"view_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:24:\"view_any_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:22:\"create_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:22:\"update_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:22:\"delete_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:26:\"delete_any_manajemen::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"dosen\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"mahasiswa\";s:1:\"c\";s:3:\"web\";}}}', 1758787142);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar_depan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dosens`
--

INSERT INTO `dosens` (`id`, `user_id`, `fakultas_id`, `nip`, `gelar_depan`, `gelar_belakang`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '19990208202501005', 'Dr.', 'M.Pd', '2025-09-18 06:06:04', '2025-09-22 19:53:24'),
(2, 7, 1, '198322864920155831', NULL, ', M.Ag.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(3, 8, 1, '198396336820166764', 'Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(4, 9, 1, '198926808920151391', NULL, ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(5, 10, 1, '198181621120134370', 'Dr.', ', M.Ag.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(6, 11, 1, '198681182020135433', 'Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(7, 12, 2, '198339544220169952', NULL, ', M.Ag.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(8, 13, 2, '198077967020175141', 'Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(9, 14, 2, '198701586120153723', 'Prof. Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(10, 15, 2, '198305102720164136', 'Dr.', ', M.Ag.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(11, 16, 2, '198012572920117642', NULL, ', M.Ag.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(12, 17, 3, '198621768020110267', 'Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(13, 18, 3, '198911664620174271', 'Prof. Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(14, 19, 3, '198581418520141648', 'Prof. Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(15, 20, 3, '198026452020110564', 'Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(16, 21, 3, '198055440420176003', 'Prof. Dr.', ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(17, 22, 4, '198552304520167702', NULL, ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(18, 23, 4, '198673336820197507', NULL, ', M.Kom.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(19, 24, 4, '198044882320102220', 'Prof. Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(20, 25, 4, '198068856420196488', 'Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(21, 26, 4, '198692961820132025', 'Prof. Dr.', ', M.Pd.', '2025-09-18 06:25:04', '2025-09-18 06:25:04'),
(22, 28, 1, '19990208202501001', NULL, NULL, '2025-09-18 07:57:52', '2025-09-18 07:57:52'),
(23, 38, 1, '19990208202501002', NULL, NULL, '2025-09-18 09:11:35', '2025-09-18 09:11:35'),
(24, 40, 4, '199902082024051002', NULL, NULL, '2025-09-18 19:32:15', '2025-09-18 19:32:15'),
(28, 45, 2, '199902082023051003', NULL, NULL, '2025-09-18 20:00:58', '2025-09-18 20:00:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_fakultas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_fakultas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`, `kode_fakultas`, `created_at`, `updated_at`) VALUES
(1, 'Fakultas Tarbiyah dan Ilmu Keguruan', 'FTIK', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(2, 'Fakultas Ushuluddin, Adab, dan Dakwah', 'FUAD', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(3, 'Fakultas Syariah', 'FASYA', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(4, 'Fakultas Ekonomi dan Bisnis Islam', 'FEBI', '2025-09-18 06:03:53', '2025-09-18 06:03:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_sidangs`
--

CREATE TABLE `jadwal_sidangs` (
  `id` bigint UNSIGNED NOT NULL,
  `pendaftaran_sidang_id` bigint UNSIGNED NOT NULL,
  `ruangan_id` bigint UNSIGNED NOT NULL,
  `tanggal_sidang` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `penguji1_id` bigint UNSIGNED NOT NULL,
  `penguji2_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_sidangs`
--

INSERT INTO `jadwal_sidangs` (`id`, `pendaftaran_sidang_id`, `ruangan_id`, `tanggal_sidang`, `waktu_mulai`, `waktu_selesai`, `penguji1_id`, `penguji2_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-09-01', '11:17:08', '13:19:13', 10, 8, '2025-09-18 07:17:34', '2025-09-18 07:17:34'),
(2, 3, 1, '2025-09-03', '08:49:55', '09:51:02', 4, 3, '2025-09-19 03:49:18', '2025-09-19 03:49:18'),
(3, 4, 1, '2025-09-01', '10:01:52', '11:05:02', 3, 4, '2025-09-19 04:02:11', '2025-09-19 04:02:11'),
(4, 5, 2, '2025-09-30', '08:04:05', '09:04:08', 3, 5, '2025-09-19 04:04:15', '2025-09-19 04:04:15'),
(5, 6, 4, '2025-08-12', '15:05:41', '16:05:46', 28, 9, '2025-09-23 23:05:53', '2025-09-23 23:05:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nim` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_skripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pembimbing1_id` bigint UNSIGNED DEFAULT NULL,
  `pembimbing2_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `user_id`, `fakultas_id`, `nim`, `judul_skripsi`, `pembimbing1_id`, `pembimbing2_id`, `created_at`, `updated_at`) VALUES
(1, 27, 2, '1715025096', 'Mengapa Dunia Ini Kacau Bro', 9, 7, '2025-09-18 06:28:48', '2025-09-18 06:28:48'),
(3, 47, 2, '1715025097', '-', 7, 8, '2025-09-18 20:07:35', '2025-09-18 20:07:35'),
(4, 49, 1, '2111223344', NULL, 1, 2, '2025-09-19 03:24:30', '2025-09-19 03:39:31'),
(5, 50, 1, '219689477', NULL, 23, 4, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(6, 51, 1, '214788695', NULL, 5, 2, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(7, 52, 1, '211520023', NULL, 23, 2, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(8, 53, 1, '218186664', NULL, 6, 2, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(9, 54, 1, '217467851', NULL, 1, 23, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(10, 55, 1, '219259118', NULL, 1, 3, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(11, 56, 1, '217109092', NULL, 22, 6, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(12, 57, 1, '217264492', NULL, 22, 5, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(13, 58, 1, '211865777', NULL, 2, 3, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(14, 59, 1, '211233834', NULL, 2, 1, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(15, 60, 2, '216652813', NULL, 9, 7, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(16, 61, 2, '210175675', NULL, 28, 7, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(17, 62, 2, '219059896', NULL, 10, 7, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(18, 63, 2, '213239488', NULL, 10, 10, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(19, 64, 2, '211266797', NULL, 11, 28, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(20, 65, 2, '213868748', NULL, 9, 11, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(21, 66, 2, '218583820', NULL, 7, 7, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(22, 67, 2, '218794492', NULL, 9, 11, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(23, 68, 2, '218341236', NULL, 7, 7, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(24, 69, 2, '213352625', NULL, 10, 9, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(25, 70, 3, '212976664', NULL, 12, 15, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(26, 71, 3, '215230191', NULL, 16, 15, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(27, 72, 3, '217575349', NULL, 16, 15, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(28, 73, 3, '211035215', NULL, 13, 16, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(29, 74, 3, '216980403', NULL, 15, 14, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(30, 75, 3, '212292682', NULL, 14, 16, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(31, 76, 3, '215263238', NULL, 13, 12, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(32, 77, 3, '219085010', NULL, 12, 16, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(33, 78, 3, '212582129', NULL, 13, 13, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(34, 79, 3, '211990057', NULL, 13, 12, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(35, 80, 4, '210546249', NULL, 19, 18, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(36, 81, 4, '216172830', NULL, 17, 17, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(37, 82, 4, '213807401', NULL, 17, 24, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(38, 83, 4, '212973571', NULL, 20, 21, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(39, 84, 4, '210814243', NULL, 18, 18, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(40, 85, 4, '216583009', NULL, 21, 24, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(41, 86, 4, '212383182', NULL, 17, 21, '2025-09-22 19:15:27', '2025-09-22 19:15:27'),
(42, 87, 4, '211739582', NULL, 21, 18, '2025-09-22 19:15:28', '2025-09-22 19:15:28'),
(43, 88, 4, '213348220', NULL, 21, 21, '2025-09-22 19:15:28', '2025-09-22 19:15:28'),
(44, 89, 4, '210036464', NULL, 17, 19, '2025-09-22 19:15:28', '2025-09-22 19:15:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_18_122926_create_permission_tables', 2),
(5, '2025_09_18_123538_create_fakultas_table', 3),
(6, '2025_09_18_124317_add_extra_columns_to_users_table', 4),
(7, '2025_09_18_124352_create_dosens_table', 5),
(8, '2025_09_18_124419_create_mahasiswas_table', 6),
(9, '2025_09_18_124441_create_ruangans_table', 7),
(10, '2025_09_18_124502_create_pendaftaran_sidangs_table', 8),
(11, '2025_09_18_124518_create_jadwal_sidangs_table', 9),
(12, '2025_09_24_073310_add_avatar_url_to_users_table', 10),
(13, '2025_09_24_075549_add_avatar_url_to_users_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran_sidang`
--

CREATE TABLE `pendaftaran_sidang` (
  `id` bigint UNSIGNED NOT NULL,
  `mahasiswa_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `jenis_sidang` enum('seminar_proposal','seminar_hasil','munaqasah') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `berkas_utama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `berkas_pendukung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('diajukan','diverifikasi','dijadwalkan','selesai','ditolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan_admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendaftaran_sidang`
--

INSERT INTO `pendaftaran_sidang` (`id`, `mahasiswa_id`, `fakultas_id`, `jenis_sidang`, `judul`, `berkas_utama`, `berkas_pendukung`, `status`, `catatan_admin`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'seminar_proposal', 'Uji Coba Sistem Penjadwalan', 'documents/skripsi/01K5T4NPD51KYW48Z8CX175DYF.pdf', NULL, 'selesai', NULL, '2025-09-18 07:10:05', '2025-09-22 17:58:06'),
(2, 1, 2, 'seminar_hasil', 'Uji Coba Sistem Penjadwalan', 'public/berkas_sidang/6Eep8JHDjnyRFlG2likF5o7TmmKErb3jcDh3durH.pdf', NULL, 'diajukan', NULL, '2025-09-18 07:48:45', '2025-09-18 07:48:45'),
(3, 4, 1, 'seminar_proposal', 'Analisa Sistem Jadwalin', 'documents/skripsi/01K5GWJJ3ZFSV1D8CTD5R3Q7MH.pdf', NULL, 'selesai', NULL, '2025-09-19 03:43:25', '2025-09-19 04:00:46'),
(4, 4, 1, 'seminar_hasil', 'Analisa Sistem Jadwalin', 'documents/skripsi/01K5T73R3T5BTYGTY6XG0E62N4.pdf', NULL, 'selesai', 'Bodo Kau', '2025-09-19 04:01:10', '2025-09-22 18:40:44'),
(5, 4, 1, 'munaqasah', 'Analisa', 'documents/skripsi/01K5GXQG0KE7JYWCRMB32F1JRD.pdf', NULL, 'selesai', NULL, '2025-09-19 04:03:35', '2025-09-19 04:05:06'),
(6, 3, 2, 'seminar_proposal', 'Analisa Kenapa Dia', 'documents/skripsi/01K5X8M8JXW8G046F07Q6WJGE0.pdf', NULL, 'dijadwalkan', 'Maju', '2025-09-23 23:04:57', '2025-09-23 23:13:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(2, 'view_any_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(3, 'create_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(4, 'update_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(5, 'delete_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(6, 'delete_any_role', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(7, 'view_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(8, 'view_any_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(9, 'create_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(10, 'update_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(11, 'restore_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(12, 'restore_any_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(13, 'replicate_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(14, 'reorder_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(15, 'delete_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(16, 'delete_any_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(17, 'force_delete_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(18, 'force_delete_any_dosen', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(19, 'view_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(20, 'view_any_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(21, 'create_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(22, 'update_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(23, 'restore_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(24, 'restore_any_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(25, 'replicate_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(26, 'reorder_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(27, 'delete_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(28, 'delete_any_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(29, 'force_delete_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(30, 'force_delete_any_fakultas', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(31, 'view_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(32, 'view_any_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(33, 'create_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(34, 'update_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(35, 'restore_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(36, 'restore_any_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(37, 'replicate_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(38, 'reorder_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(39, 'delete_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(40, 'delete_any_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(41, 'force_delete_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(42, 'force_delete_any_mahasiswa', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(43, 'view_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(44, 'view_any_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(45, 'create_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(46, 'update_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(47, 'restore_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(48, 'restore_any_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(49, 'replicate_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(50, 'reorder_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(51, 'delete_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(52, 'delete_any_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(53, 'force_delete_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(54, 'force_delete_any_ruangan', 'web', '2025-09-18 05:17:10', '2025-09-18 05:17:10'),
(55, 'view_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(56, 'view_any_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(57, 'create_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(58, 'update_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(59, 'restore_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(60, 'restore_any_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(61, 'replicate_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(62, 'reorder_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(63, 'delete_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(64, 'delete_any_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(65, 'force_delete_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(66, 'force_delete_any_jadwal::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(67, 'view_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(68, 'view_any_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(69, 'create_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(70, 'update_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(71, 'restore_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(72, 'restore_any_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(73, 'replicate_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(74, 'reorder_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(75, 'delete_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(76, 'delete_any_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(77, 'force_delete_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(78, 'force_delete_any_pendaftaran::sidang', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35'),
(79, 'view_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(80, 'view_any_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(81, 'create_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(82, 'update_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(83, 'restore_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(84, 'restore_any_user', 'web', '2025-09-18 09:14:08', '2025-09-18 09:14:08'),
(85, 'replicate_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(86, 'reorder_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(87, 'delete_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(88, 'delete_any_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(89, 'force_delete_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(90, 'force_delete_any_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09'),
(91, 'page_MahasiswaDashboard', 'web', '2025-09-19 03:09:06', '2025-09-19 03:09:06'),
(92, 'widget_PendaftaranTerbaruWidget', 'web', '2025-09-22 22:55:56', '2025-09-22 22:55:56'),
(93, 'widget_StatsOverviewWidget', 'web', '2025-09-22 23:01:35', '2025-09-22 23:01:35'),
(94, 'widget_RiwayatSidangWidget', 'web', '2025-09-22 23:01:35', '2025-09-22 23:01:35'),
(95, 'view_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(96, 'view_any_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(97, 'create_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(98, 'update_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(99, 'restore_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(100, 'restore_any_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(101, 'replicate_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(102, 'reorder_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(103, 'delete_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(104, 'delete_any_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(105, 'force_delete_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(106, 'force_delete_any_bimbingan', 'web', '2025-09-23 21:23:50', '2025-09-23 21:23:50'),
(107, 'page_PortalDosen', 'web', '2025-09-23 21:23:51', '2025-09-23 21:23:51'),
(108, 'widget_PerluVerifikasiWidget', 'web', '2025-09-23 21:23:51', '2025-09-23 21:23:51'),
(109, 'widget_SiapDijadwalkanWidget', 'web', '2025-09-23 21:23:51', '2025-09-23 21:23:51'),
(110, 'widget_JadwalDosenWidget', 'web', '2025-09-23 21:23:51', '2025-09-23 21:23:51'),
(111, 'widget_MahasiswaBimbinganWidget', 'web', '2025-09-23 21:23:51', '2025-09-23 21:23:51'),
(112, 'view_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(113, 'view_any_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(114, 'create_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(115, 'update_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(116, 'restore_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(117, 'restore_any_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(118, 'replicate_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(119, 'reorder_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(120, 'delete_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(121, 'delete_any_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(122, 'force_delete_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(123, 'force_delete_any_jadwal::saya', 'web', '2025-09-23 22:04:21', '2025-09-23 22:04:21'),
(124, 'view_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59'),
(125, 'view_any_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59'),
(126, 'create_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59'),
(127, 'update_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59'),
(128, 'delete_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59'),
(129, 'delete_any_manajemen::role', 'web', '2025-09-23 22:58:59', '2025-09-23 22:58:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(2, 'dosen', 'web', '2025-09-18 05:38:30', '2025-09-18 06:09:00'),
(3, 'mahasiswa', 'web', '2025-09-18 06:13:47', '2025-09-18 06:13:47'),
(4, 'admin', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(31, 2),
(32, 2),
(55, 2),
(56, 2),
(67, 3),
(68, 3),
(69, 3),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nama_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int NOT NULL DEFAULT '10',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `fakultas_id`, `nama_ruangan`, `kode_ruangan`, `kapasitas`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ruang Sidang 1', 'FTIK-S01', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(2, 1, 'Ruang Sidang 2', 'FTIK-S02', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(3, 2, 'Ruang Sidang 1', 'FUAD-S01', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(4, 2, 'Ruang Sidang 2', 'FUAD-S02', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(5, 3, 'Ruang Sidang 1', 'FASYA-S01', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(6, 3, 'Ruang Sidang 2', 'FASYA-S02', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(7, 4, 'Ruang Sidang 1', 'FEBI-S01', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55'),
(8, 4, 'Ruang Sidang 2', 'FEBI-S02', 15, '2025-09-18 06:32:55', '2025-09-18 06:32:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6gKKf23C8pNwH9NQ2qiGwUl1l4AbLY3Ex5OPkbu9', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU9BVXo3R3FGY0tidUVDQXFOU01LMDFmWE9HYW1ycmxvb3Z6R0d2TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb3Nlbi9sb2dpbiI7fX0=', 1758700511),
('gKNPtwFz5EHgybQIbTFtpO3uWOsI3pwrcdYm4gsX', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTFZaTRvOEVBQ2VxWVRSZlo2Skp0YjNHWE5oVWd0T1ZmWDhqZERYMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1758700745);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('superadmin','admin','dosen','mahasiswa') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fakultas_id` bigint UNSIGNED DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `fakultas_id`, `avatar_url`) VALUES
(1, 'Super Admin', 'superadmin@uinsi.ac.id', NULL, '$2y$12$PdnMx8MNAfz9mrJAiNB7O.bzpdazfoA9u/dEK2ry1y0bgvBQK1MKm', 'superadmin', NULL, '2025-09-18 04:25:07', '2025-09-23 23:57:52', NULL, 'avatars/01K5XBN57BVNAHQ5F36HMCM09P.png'),
(2, 'Test User', 'test@example.com', '2025-09-18 05:06:06', '$2y$12$KJ0DQ7hq4yvuIHoBtFm1Tu2SSxJUa1LExW/d6DqptF9257iTTba1m', 'superadmin', 'WIB1D0MmmMg6TvK8VwyWJD1TE3G0YiaosHbmL8T69lIgM0A8X9m3hMFK4MqX', '2025-09-18 05:06:07', '2025-09-18 15:55:17', 4, NULL),
(4, 'Dosen Penguji', 'dosen.test@uinsi.ac.id', NULL, '$2y$12$rytWvPWYFU6kJzxbEYnqHOCDYbe/JAVRtEV/hIwiNCG2DOw5xq5QK', 'dosen', NULL, '2025-09-18 05:39:12', '2025-09-18 05:39:12', NULL, NULL),
(6, 'Yayas Clevara', 'yayasclevara@gmail.com', NULL, '$2y$12$RcVrm2H0C74SwlFTVJ77WegnAhl9nh4LIGFhJ7IH.KHaza11A3ER.', 'dosen', NULL, '2025-09-18 06:06:04', '2025-09-18 06:06:04', NULL, NULL),
(7, 'Amanda Corkery I', 'tswift@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'gR7bC4ZXxK', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(8, 'Lauren Raynor DVM', 'florida.swaniawski@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'XJJNtFG2nY', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(9, 'Prof. Carleton Kirlin PhD', 'jayda12@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'HyHvflIA9X', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(10, 'Kayla Hagenes', 'dayne84@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'uQsiJDRawv', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(11, 'Mrs. Neva Wolff', 'gstehr@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'XnoVc3Of2Q', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(12, 'Hanna Smith PhD', 'jast.alyson@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'xjYefX2VPO', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(13, 'Bradly Spencer', 'shields.verner@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'YXd5o1L4Vj', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(14, 'Ms. Brionna Jacobson V', 'shayes@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'Om8XnFsi5y', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(15, 'Prof. Alessandra Murphy', 'pschmitt@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'pM94jylH42', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(16, 'Mr. Jamison Walker I', 'ldonnelly@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'GC6ERnyCkA', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(17, 'Nat Runte', 'shaag@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'imRvlP8qgq', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(18, 'Therese Bahringer', 'marquardt.kaylie@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', '1QOSynAYlI', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(19, 'Alfred King', 'daisha.green@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'L0IBajfVww', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(20, 'Bria Romaguera', 'meta35@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'Q1kY2nI3Hz', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(21, 'Rae Kassulke', 'funk.jaquelin@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'BG7wTc62rV', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(22, 'Osborne Parisian III', 'kavon18@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'gJNzItSmj2', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(23, 'Abigail Keebler', 'hilpert.frederic@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'wKZycvdXsV', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(24, 'Sheldon Ratke', 'julio57@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', '6CjLdsAiW8', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(25, 'Bill Rippin', 'sylvan.terry@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'RGgBo2WrnN', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(26, 'Sonia Oberbrunner', 'funk.kory@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'nA2EVrtlfq', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL, NULL),
(27, 'Rizqi Saputra', 'rizqi@uinsi.ac.id', NULL, '$2y$12$ZeHcnve1.mrzb8VqsjHAZ.9zIpaKFJQhT55NqA8z9SHLmuRCliEBu', 'mahasiswa', NULL, '2025-09-18 06:28:48', '2025-09-18 06:28:48', NULL, NULL),
(28, 'Admin FTIK', 'admin.ftik@uinsi.ac.id', NULL, '$2y$12$LtKQw6FotR3kbi24VkECkuBkwsiLqX/ERHxVD1tUs5aPk1qGzJDke', 'admin', NULL, '2025-09-18 07:57:52', '2025-09-18 08:15:45', 1, NULL),
(32, 'Wahyu Diansyah', 'wahyu@uinsi.ac.id', NULL, '$2y$12$slzBb531z2snqmzFn5YdYe.toOz9KYKpcRn1ifaoTiBswyDs3E9hu', 'dosen', NULL, '2025-09-18 08:48:57', '2025-09-18 08:48:57', 1, NULL),
(38, 'Muhammad Haidar', 'haidar@uinsi.ac.id', NULL, '$2y$12$tpFPiJg74n4otVw5JZ9YReVlxQNRMlIVYCTfhXqYkeZU9NBhvBCvO', 'dosen', NULL, '2025-09-18 09:11:35', '2025-09-18 09:11:35', NULL, NULL),
(40, 'Admin FEBI', 'adminfebi@uinsi.ac.id', NULL, '$2y$12$3uNpTyFu1RKdKywi6t505.jxYwPFpnxXpeX9hSLuZfCh7T5rq1OIC', 'admin', NULL, '2025-09-18 19:32:15', '2025-09-18 19:32:15', 4, NULL),
(43, 'Admin FUAD', 'adminfuad@uinsi.ac.id', NULL, '$2y$12$rIIvmneGQ89lAjj6MT.FeOfMwfw2B.zQuNIvHjSujeKT0TBx4ehOe', 'admin', NULL, '2025-09-18 19:53:44', '2025-09-19 08:37:44', 2, NULL),
(45, 'Amru', 'amru@uinsi.ac.id', NULL, '$2y$12$LJd3NLeLSO.Fw5hVmEumauScYkXJa2JrjO6bFpCsnKzt8B9pgywdG', 'dosen', NULL, '2025-09-18 20:00:58', '2025-09-18 20:00:58', 2, NULL),
(47, 'Amru Hasan', 'amru12@uinsi.ac.id', NULL, '$2y$12$5pVgo8asXuw1/IhoAxEKTuy0X70cW8E4CBvIqWmzGeM5V7B9pARV6', 'mahasiswa', NULL, '2025-09-18 20:07:35', '2025-09-18 20:07:35', 2, NULL),
(48, 'Admin FASYA', 'adminfasya@uinsi.ac.id', NULL, '$2y$12$qj6ApV8FhyKSafIfQpI3N.WZ/A62zle2Blh9/I4rXBWUyRfxTLe5m', 'superadmin', NULL, '2025-09-18 22:26:27', '2025-09-18 22:26:27', 3, NULL),
(49, 'Budi Santoso', 'budi.santoso@uinsi.ac.id', NULL, '$2y$12$fcHO.Y2QDcz5unsxESpe1u4hk7.UIOHrXsHE0U9wVM89cfllLyHqi', 'mahasiswa', NULL, '2025-09-19 03:24:30', '2025-09-19 03:24:30', 1, NULL),
(50, 'Milan Schaefer', 'celine19@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '4CouEQfJKl', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(51, 'Logan Hamill', 'kavon57@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'Sxr0f4BjL8', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(52, 'Nelle Wolff', 'elowe@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'Fj6MzcUq0e', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(53, 'Travon Denesik', 'tschuster@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'hINzWoxnuu', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(54, 'Amie Weissnat', 'bmcglynn@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'Y4cacsZxw4', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(55, 'Bernice Hoeger', 'tevin23@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'owcv6D2GmX', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(56, 'Marcelino Keeling IV', 'rusty10@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'IwwScR2WZ8', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(57, 'Dr. Tara Goodwin', 'mohammad08@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 's2aQ24Yg2S', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(58, 'Sim Murray', 'sroob@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '820vrvyjMn', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(59, 'Osvaldo Keeling', 'barrows.savanna@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '7r8G7GdEWL', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 1, NULL),
(60, 'Prof. Linwood Mayert', 'kklocko@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'Deaokw4MDg', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(61, 'Mr. Liam Weber III', 'aboehm@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '6FMmmmAZFQ', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(62, 'Ozella Kuhlman V', 'destany29@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'KCcL5YVjlm', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(63, 'Rex Predovic', 'greenholt.liliana@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'wDjNtZMUSS', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(64, 'Oral Swift', 'lucius.okuneva@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'an1dOnw56K', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(65, 'Mittie Bauch', 'wisozk.ethyl@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '9fN4mUTWq8', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(66, 'Mr. Ariel Russel V', 'dietrich.ettie@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'qHpKZhsqIz', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(67, 'Renee Deckow', 'maximillian50@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'nBnyiGd4AW', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(68, 'Mrs. Kariane O\'Keefe MD', 'ullrich.christophe@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'jau6P0HwTU', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(69, 'Sally Von', 'dgislason@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'XjmCGPDFK0', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 2, NULL),
(70, 'Karley Luettgen PhD', 'mccullough.aaron@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'mMBWmab47I', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(71, 'Nicolas Sawayn', 'gsimonis@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'gRYbOxi3sQ', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(72, 'Eddie Mayer DVM', 'marty94@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'DllTPD1bLs', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(73, 'Janis Fisher', 'trutherford@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '0Eyhzbyobh', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(74, 'Hubert Reinger', 'elta14@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '8XPNNZdznJ', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(75, 'Mr. Fletcher Cremin', 'keeling.dayna@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'DXWZdACstH', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(76, 'Darryl Gaylord Sr.', 'dayne.price@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'OwaPUpqmqW', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(77, 'Domenico Pollich', 'chaim18@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'iXr0Slx9XD', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(78, 'Gianni Spencer', 'ayden48@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'xqfjLYaNE8', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(79, 'Ms. Itzel Wiegand', 'runte.hulda@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'gFyXohaWkE', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 3, NULL),
(80, 'Misty Ferry', 'earmstrong@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'JLPNJpxGOr', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(81, 'Zachery Jenkins I', 'emmanuelle.schmidt@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'r5H49SyByu', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(82, 'Miss Kaitlyn Donnelly', 'flavie.hilpert@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'tH2XCcPipQ', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(83, 'Mrs. Aleen Hirthe DVM', 'rippin.anderson@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'htRnuJemB7', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(84, 'Dr. Deion McKenzie V', 'uvonrueden@example.org', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'KdcCKnyctb', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(85, 'Myron Swift', 'ernie48@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'JHAkiHIby4', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(86, 'Prof. Zachary Bartoletti Jr.', 'qdicki@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'baHODcqezk', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(87, 'Prof. Ellis Quitzon II', 'leopoldo10@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', '1CWbx67zDq', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(88, 'Miss Patricia Waters PhD', 'zboncak.crystal@example.com', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'tEXUbGfXV7', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL),
(89, 'Clark Runolfsson', 'clemmie.davis@example.net', '2025-09-22 19:15:27', '$2y$12$8tbEvh6PQuG.3tmgrtZnP.HnrAvKd2QTLy9m93H.Ca6EQAble6yPq', 'mahasiswa', 'Eoj5Dj28aZ', '2025-09-22 19:15:27', '2025-09-22 19:15:27', 4, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosens_nip_unique` (`nip`),
  ADD KEY `dosens_user_id_foreign` (`user_id`),
  ADD KEY `dosens_fakultas_id_foreign` (`fakultas_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fakultas_kode_fakultas_unique` (`kode_fakultas`);

--
-- Indeks untuk tabel `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_sidangs_pendaftaran_sidang_id_foreign` (`pendaftaran_sidang_id`),
  ADD KEY `jadwal_sidangs_ruangan_id_foreign` (`ruangan_id`),
  ADD KEY `jadwal_sidangs_penguji1_id_foreign` (`penguji1_id`),
  ADD KEY `jadwal_sidangs_penguji2_id_foreign` (`penguji2_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswas_nim_unique` (`nim`),
  ADD KEY `mahasiswas_user_id_foreign` (`user_id`),
  ADD KEY `mahasiswas_fakultas_id_foreign` (`fakultas_id`),
  ADD KEY `mahasiswas_pembimbing1_id_foreign` (`pembimbing1_id`),
  ADD KEY `mahasiswas_pembimbing2_id_foreign` (`pembimbing2_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_sidang_mahasiswa_id_foreign` (`mahasiswa_id`),
  ADD KEY `pendaftaran_sidang_fakultas_id_foreign` (`fakultas_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruangans_kode_ruangan_unique` (`kode_ruangan`),
  ADD KEY `ruangans_fakultas_id_foreign` (`fakultas_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_fakultas_id_foreign` (`fakultas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosens`
--
ALTER TABLE `dosens`
  ADD CONSTRAINT `dosens_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `dosens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  ADD CONSTRAINT `jadwal_sidangs_pendaftaran_sidang_id_foreign` FOREIGN KEY (`pendaftaran_sidang_id`) REFERENCES `pendaftaran_sidang` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_penguji1_id_foreign` FOREIGN KEY (`penguji1_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_penguji2_id_foreign` FOREIGN KEY (`penguji2_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangans` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD CONSTRAINT `mahasiswas_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `mahasiswas_pembimbing1_id_foreign` FOREIGN KEY (`pembimbing1_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `mahasiswas_pembimbing2_id_foreign` FOREIGN KEY (`pembimbing2_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  ADD CONSTRAINT `pendaftaran_sidang_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `pendaftaran_sidang_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswas` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD CONSTRAINT `ruangans_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
