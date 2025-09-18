-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2025 at 05:24 PM
-- Server version: 8.0.43-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1758208262),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1758208262;', 1758208262),
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1758216231),
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1758216231;', 1758216231),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:90:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"view_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:14:\"view_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"create_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:12:\"update_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"restore_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:17:\"restore_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:15:\"replicate_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"reorder_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"delete_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"delete_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"force_delete_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:22:\"force_delete_any_dosen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:13:\"view_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:17:\"view_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"create_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:15:\"update_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:16:\"restore_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:20:\"restore_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:18:\"replicate_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:16:\"reorder_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"delete_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:19:\"delete_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"force_delete_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:25:\"force_delete_any_fakultas\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:14:\"view_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:18:\"view_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:16:\"create_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:16:\"update_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:17:\"restore_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"restore_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:19:\"replicate_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:17:\"reorder_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:16:\"delete_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:20:\"delete_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:22:\"force_delete_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:26:\"force_delete_any_mahasiswa\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"view_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:16:\"view_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:14:\"create_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:14:\"update_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:15:\"restore_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:19:\"restore_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:17:\"replicate_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"reorder_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:14:\"delete_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:18:\"delete_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:20:\"force_delete_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:24:\"force_delete_any_ruangan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"view_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:23:\"view_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:21:\"create_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:21:\"update_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:22:\"restore_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:26:\"restore_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:24:\"replicate_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:22:\"reorder_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:21:\"delete_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:25:\"delete_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:27:\"force_delete_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:31:\"force_delete_any_jadwal::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:24:\"view_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:28:\"view_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:26:\"create_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:26:\"update_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:27:\"restore_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:31:\"restore_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:29:\"replicate_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:27:\"reorder_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:26:\"delete_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:30:\"delete_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:32:\"force_delete_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:36:\"force_delete_any_pendaftaran::sidang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:78;a:3:{s:1:\"a\";i:79;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";}i:79;a:3:{s:1:\"a\";i:80;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";}i:80;a:3:{s:1:\"a\";i:81;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";}i:81;a:3:{s:1:\"a\";i:82;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";}i:82;a:3:{s:1:\"a\";i:83;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";}i:83;a:3:{s:1:\"a\";i:84;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";}i:84;a:3:{s:1:\"a\";i:85;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";}i:85;a:3:{s:1:\"a\";i:86;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";}i:86;a:3:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";}i:87;a:3:{s:1:\"a\";i:88;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";}i:88;a:3:{s:1:\"a\";i:89;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";}i:89;a:3:{s:1:\"a\";i:90;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"dosen\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}}}', 1758302060);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar_depan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `user_id`, `fakultas_id`, `nip`, `gelar_depan`, `gelar_belakang`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '19990208202501005', NULL, 'M.Pd', '2025-09-18 06:06:04', '2025-09-18 06:06:04'),
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
(23, 38, 1, '19990208202501002', NULL, NULL, '2025-09-18 09:11:35', '2025-09-18 09:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`, `kode_fakultas`, `created_at`, `updated_at`) VALUES
(1, 'Fakultas Tarbiyah dan Ilmu Keguruan', 'FTIK', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(2, 'Fakultas Ushuluddin, Adab, dan Dakwah', 'FUAD', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(3, 'Fakultas Syariah', 'FASYA', '2025-09-18 06:03:53', '2025-09-18 06:03:53'),
(4, 'Fakultas Ekonomi dan Bisnis Islam', 'FEBI', '2025-09-18 06:03:53', '2025-09-18 06:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_sidangs`
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
-- Dumping data for table `jadwal_sidangs`
--

INSERT INTO `jadwal_sidangs` (`id`, `pendaftaran_sidang_id`, `ruangan_id`, `tanggal_sidang`, `waktu_mulai`, `waktu_selesai`, `penguji1_id`, `penguji2_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-09-01', '11:17:08', '13:19:13', 10, 8, '2025-09-18 07:17:34', '2025-09-18 07:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nim` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_skripsi` text COLLATE utf8mb4_unicode_ci,
  `pembimbing1_id` bigint UNSIGNED DEFAULT NULL,
  `pembimbing2_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `user_id`, `fakultas_id`, `nim`, `judul_skripsi`, `pembimbing1_id`, `pembimbing2_id`, `created_at`, `updated_at`) VALUES
(1, 27, 2, '1715025096', 'Mengapa Dunia Ini Kacau Bro', 9, 7, '2025-09-18 06:28:48', '2025-09-18 06:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
(11, '2025_09_18_124518_create_jadwal_sidangs_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
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
(2, 'App\\Models\\User', 38);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_sidang`
--

CREATE TABLE `pendaftaran_sidang` (
  `id` bigint UNSIGNED NOT NULL,
  `mahasiswa_id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `jenis_sidang` enum('seminar_proposal','seminar_hasil','munaqasah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `berkas_utama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berkas_pendukung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('diajukan','diverifikasi','dijadwalkan','selesai','ditolak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan_admin` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftaran_sidang`
--

INSERT INTO `pendaftaran_sidang` (`id`, `mahasiswa_id`, `fakultas_id`, `jenis_sidang`, `judul`, `berkas_utama`, `berkas_pendukung`, `status`, `catatan_admin`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'seminar_proposal', 'Uji Coba Sistem Penjadwalan', '01K5EP093W0F5GZB3V1GYEKBD0.pdf', NULL, 'selesai', NULL, '2025-09-18 07:10:05', '2025-09-18 07:48:00'),
(2, 1, 2, 'seminar_hasil', 'Uji Coba Sistem Penjadwalan', 'public/berkas_sidang/6Eep8JHDjnyRFlG2likF5o7TmmKErb3jcDh3durH.pdf', NULL, 'diajukan', NULL, '2025-09-18 07:48:45', '2025-09-18 07:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
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
(90, 'force_delete_any_user', 'web', '2025-09-18 09:14:09', '2025-09-18 09:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-09-18 04:30:10', '2025-09-18 04:30:10'),
(2, 'dosen', 'web', '2025-09-18 05:38:30', '2025-09-18 06:09:00'),
(3, 'mahasiswa', 'web', '2025-09-18 06:13:47', '2025-09-18 06:13:47'),
(4, 'admin', 'web', '2025-09-18 07:56:35', '2025-09-18 07:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
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
(7, 2),
(8, 2),
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
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint UNSIGNED NOT NULL,
  `fakultas_id` bigint UNSIGNED NOT NULL,
  `nama_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int NOT NULL DEFAULT '10',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c937z7cLUoQHqkhQz1hgfEJD306pxyBNJuSVJib1', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTUswNmthNFJnMzlrQWhDWXJyazlxMkJlR2tUYVhrSFo5TE5vQ05EZyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vZmFrdWx0YXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUGRuTXg4TU5BZno5bXJKQWlOQjdPLmJ6cGRhemZvQTl1L2RFSzJyeTF5MGJndkJRSzFNS20iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1758210812),
('f1OeAAbQXOcEZ8Q9ms7xIdPjxJSvcspabGqCZA89', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRXJPSkxVYlFGUU9TQTVVMFhqSmJJN2txTXhOZDdESFpxNGd4MVcwcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9zaGllbGQvcm9sZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MzoidXJsIjthOjA6e31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJFBkbk14OE1OQWZ6OW1ySkFpTkI3Ty5ienBkYXpmb0E5dS9kRUsycnkxeTBiZ3ZCUUsxTUttIjt9', 1758216206);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('superadmin','admin','dosen','mahasiswa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fakultas_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `fakultas_id`) VALUES
(1, 'Super Admin', 'superadmin@uinsi.ac.id', NULL, '$2y$12$PdnMx8MNAfz9mrJAiNB7O.bzpdazfoA9u/dEK2ry1y0bgvBQK1MKm', 'superadmin', NULL, '2025-09-18 04:25:07', '2025-09-18 04:25:07', NULL),
(2, 'Test User', 'test@example.com', '2025-09-18 05:06:06', '$2y$12$KJ0DQ7hq4yvuIHoBtFm1Tu2SSxJUa1LExW/d6DqptF9257iTTba1m', 'superadmin', 'WIB1D0MmmMg6TvK8VwyWJD1TE3G0YiaosHbmL8T69lIgM0A8X9m3hMFK4MqX', '2025-09-18 05:06:07', '2025-09-18 05:06:07', NULL),
(4, 'Dosen Penguji', 'dosen.test@uinsi.ac.id', NULL, '$2y$12$rytWvPWYFU6kJzxbEYnqHOCDYbe/JAVRtEV/hIwiNCG2DOw5xq5QK', 'dosen', NULL, '2025-09-18 05:39:12', '2025-09-18 05:39:12', NULL),
(6, 'Yayas Clevara', 'yayasclevara@gmail.com', NULL, '$2y$12$RcVrm2H0C74SwlFTVJ77WegnAhl9nh4LIGFhJ7IH.KHaza11A3ER.', 'dosen', NULL, '2025-09-18 06:06:04', '2025-09-18 06:06:04', NULL),
(7, 'Amanda Corkery I', 'tswift@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'gR7bC4ZXxK', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(8, 'Lauren Raynor DVM', 'florida.swaniawski@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'XJJNtFG2nY', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(9, 'Prof. Carleton Kirlin PhD', 'jayda12@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'HyHvflIA9X', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(10, 'Kayla Hagenes', 'dayne84@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'uQsiJDRawv', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(11, 'Mrs. Neva Wolff', 'gstehr@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'XnoVc3Of2Q', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(12, 'Hanna Smith PhD', 'jast.alyson@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'xjYefX2VPO', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(13, 'Bradly Spencer', 'shields.verner@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'YXd5o1L4Vj', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(14, 'Ms. Brionna Jacobson V', 'shayes@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'Om8XnFsi5y', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(15, 'Prof. Alessandra Murphy', 'pschmitt@example.net', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'pM94jylH42', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(16, 'Mr. Jamison Walker I', 'ldonnelly@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'GC6ERnyCkA', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(17, 'Nat Runte', 'shaag@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'imRvlP8qgq', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(18, 'Therese Bahringer', 'marquardt.kaylie@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', '1QOSynAYlI', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(19, 'Alfred King', 'daisha.green@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'L0IBajfVww', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(20, 'Bria Romaguera', 'meta35@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'Q1kY2nI3Hz', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(21, 'Rae Kassulke', 'funk.jaquelin@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'BG7wTc62rV', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(22, 'Osborne Parisian III', 'kavon18@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'gJNzItSmj2', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(23, 'Abigail Keebler', 'hilpert.frederic@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'wKZycvdXsV', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(24, 'Sheldon Ratke', 'julio57@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', '6CjLdsAiW8', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(25, 'Bill Rippin', 'sylvan.terry@example.org', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'RGgBo2WrnN', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(26, 'Sonia Oberbrunner', 'funk.kory@example.com', '2025-09-18 06:25:04', '$2y$12$uVH3ZObeOzTrOr0e4UXsG.1AyI3SY7J3nyeNzV.KoSfbDpYANpk3i', 'dosen', 'nA2EVrtlfq', '2025-09-18 06:25:04', '2025-09-18 06:25:04', NULL),
(27, 'Rizqi Saputra', 'rizqi@uinsi.ac.id', NULL, '$2y$12$ZeHcnve1.mrzb8VqsjHAZ.9zIpaKFJQhT55NqA8z9SHLmuRCliEBu', 'mahasiswa', NULL, '2025-09-18 06:28:48', '2025-09-18 06:28:48', NULL),
(28, 'Admin FTIK', 'admin.ftik@uinsi.ac.id', NULL, '$2y$12$LtKQw6FotR3kbi24VkECkuBkwsiLqX/ERHxVD1tUs5aPk1qGzJDke', 'admin', NULL, '2025-09-18 07:57:52', '2025-09-18 08:15:45', 1),
(32, 'Wahyu Diansyah', 'wahyu@uinsi.ac.id', NULL, '$2y$12$slzBb531z2snqmzFn5YdYe.toOz9KYKpcRn1ifaoTiBswyDs3E9hu', 'dosen', NULL, '2025-09-18 08:48:57', '2025-09-18 08:48:57', 1),
(38, 'Muhammad Haidar', 'haidar@uinsi.ac.id', NULL, '$2y$12$tpFPiJg74n4otVw5JZ9YReVlxQNRMlIVYCTfhXqYkeZU9NBhvBCvO', 'superadmin', NULL, '2025-09-18 09:11:35', '2025-09-18 09:11:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosens_nip_unique` (`nip`),
  ADD KEY `dosens_user_id_foreign` (`user_id`),
  ADD KEY `dosens_fakultas_id_foreign` (`fakultas_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fakultas_kode_fakultas_unique` (`kode_fakultas`);

--
-- Indexes for table `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_sidangs_pendaftaran_sidang_id_foreign` (`pendaftaran_sidang_id`),
  ADD KEY `jadwal_sidangs_ruangan_id_foreign` (`ruangan_id`),
  ADD KEY `jadwal_sidangs_penguji1_id_foreign` (`penguji1_id`),
  ADD KEY `jadwal_sidangs_penguji2_id_foreign` (`penguji2_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswas_nim_unique` (`nim`),
  ADD KEY `mahasiswas_user_id_foreign` (`user_id`),
  ADD KEY `mahasiswas_fakultas_id_foreign` (`fakultas_id`),
  ADD KEY `mahasiswas_pembimbing1_id_foreign` (`pembimbing1_id`),
  ADD KEY `mahasiswas_pembimbing2_id_foreign` (`pembimbing2_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_sidang_mahasiswa_id_foreign` (`mahasiswa_id`),
  ADD KEY `pendaftaran_sidang_fakultas_id_foreign` (`fakultas_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruangans_kode_ruangan_unique` (`kode_ruangan`),
  ADD KEY `ruangans_fakultas_id_foreign` (`fakultas_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_fakultas_id_foreign` (`fakultas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosens`
--
ALTER TABLE `dosens`
  ADD CONSTRAINT `dosens_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `dosens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwal_sidangs`
--
ALTER TABLE `jadwal_sidangs`
  ADD CONSTRAINT `jadwal_sidangs_pendaftaran_sidang_id_foreign` FOREIGN KEY (`pendaftaran_sidang_id`) REFERENCES `pendaftaran_sidang` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_penguji1_id_foreign` FOREIGN KEY (`penguji1_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_penguji2_id_foreign` FOREIGN KEY (`penguji2_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `jadwal_sidangs_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangans` (`id`);

--
-- Constraints for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD CONSTRAINT `mahasiswas_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `mahasiswas_pembimbing1_id_foreign` FOREIGN KEY (`pembimbing1_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `mahasiswas_pembimbing2_id_foreign` FOREIGN KEY (`pembimbing2_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendaftaran_sidang`
--
ALTER TABLE `pendaftaran_sidang`
  ADD CONSTRAINT `pendaftaran_sidang_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`),
  ADD CONSTRAINT `pendaftaran_sidang_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswas` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD CONSTRAINT `ruangans_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fakultas_id_foreign` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
