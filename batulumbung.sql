-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3309
-- Generation Time: Aug 22, 2022 at 01:16 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batulumbung`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `user_id`, `organisasi_id`, `nama`, `nama_kegiatan`, `tanggal`, `status`, `created_at`, `updated_at`, `is_label`) VALUES
(1, 1, 1, 'aq', 'pelatihan manajemen projek', '2022-04-30', 't', NULL, NULL, 'f'),
(3, 1, 1, 'arief', 'pelatihan manajemen projek', '2022-04-30', 't', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(4, 1, 2, 'arief', 'data', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(5, 1, 2, 'arief', 'data', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(6, 1, 1, 'arief', 'pelatihan manajemen projek', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(7, 1, 1, 'arief', 'pelatihan manajemen projek', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(8, 1, 3, 'arief', 'data', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f'),
(9, 1, 1, 'arief', 'pelatihan manajemen projek', '2022-04-30', 'hadir', '2022-05-21 05:53:15', '2022-05-21 05:53:15', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `detail_user`
--

CREATE TABLE `detail_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_user`
--

INSERT INTO `detail_user` (`id`, `user_id`, `organisasi_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-04-17 05:46:40', '2022-04-17 05:46:40'),
(2, 2, 2, '2022-04-17 05:46:41', '2022-04-17 05:46:41'),
(3, 3, 1, '2022-04-30 20:59:31', '2022-04-30 20:59:31'),
(4, 4, 4, '2022-05-27 05:27:14', '2022-05-27 05:27:14'),
(5, 7, 2, '2022-05-27 05:32:47', '2022-05-27 05:32:47'),
(6, 1, 2, '2022-05-31 07:31:24', '2022-05-31 07:40:34'),
(8, 3, 1, '2022-06-01 07:39:58', '2022-06-01 07:39:58'),
(9, 2, 2, '2022-06-01 07:50:50', '2022-06-01 07:50:50'),
(10, 7, 2, '2022-06-01 07:51:05', '2022-06-01 07:51:05'),
(11, 8, 1, '2022-06-02 01:36:10', '2022-06-02 01:36:10'),
(12, 9, 1, '2022-06-02 01:39:03', '2022-06-02 01:39:03'),
(13, 10, 1, '2022-06-02 03:31:06', '2022-06-02 03:31:06'),
(14, 14, 4, '2022-08-22 06:01:01', '2022-08-22 06:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `nama_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `excel_absensi`
--

CREATE TABLE `excel_absensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `organisasi_id`, `nama_kegiatan`, `tanggal`, `waktu`, `tempat`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'pelatihan manajemen projek', '2022-04-30', '06:18:00', 'gresik', '<p>aa</p>', '1654347860.jpg', '2022-04-18 16:20:22', '2022-06-04 06:04:20'),
(3, 1, 'manajemen resiko', '2022-06-04', '20:08:00', 'gresik', '<p>aa</p>', 'C:\\Users\\Arief Setyan\\AppData\\Local\\Temp\\phpB6C4.tmp', '2022-06-04 06:09:07', '2022-06-04 06:09:07'),
(4, 2, 'pelatihan fluter', '2022-06-04', '20:10:00', 'gresik', '<p>dasd</p>', 'C:\\Users\\Arief Setyan\\AppData\\Local\\Temp\\phpA036.tmp', '2022-06-04 06:11:12', '2022-06-04 06:11:12'),
(5, 1, 'manajemen resiko', '2022-06-04', '20:12:00', 'gresik', '<p>sada</p>', '1654348545.png', '2022-06-04 06:15:45', '2022-06-04 06:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `jmlh_pemasukan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmlh_pengeluaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_02_054432_create_kegiatan_table', 1),
(6, '2021_10_02_054651_create_organisasi_table', 1),
(7, '2021_10_02_054835_create_pengumuman_table', 1),
(8, '2021_10_02_055048_create_absensi_table', 1),
(9, '2021_10_22_132019_create_laporan_keuangan_table', 1),
(10, '2022_03_12_031525_create_event_table', 1),
(11, '2022_03_14_120814_create_excel_absensi_table', 1),
(12, '2022_03_20_161313_create_pemasukan_table', 1),
(13, '2022_03_20_162308_create_pengeluaran_table', 1),
(14, '2022_04_11_094538_create_detail_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id`, `kode`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 'ST', 'Sekaa Teruna', '2022-04-17 05:38:06', '2022-04-17 05:38:06'),
(2, 'SG', 'Sekaa Gong', '2022-04-17 05:38:06', '2022-04-17 05:38:06'),
(3, 'SS', 'Sekaa Santi', '2022-04-17 05:38:06', '2022-04-17 05:38:06'),
(4, 'PKK', 'PKK', '2022-04-17 05:38:06', '2022-04-17 05:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jmlh_pemasukan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `organisasi_id`, `user_id`, `jmlh_pemasukan`, `tanggal`, `sumber_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '100', '2022-05-15', 'qq', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jmlh_barang` float NOT NULL,
  `satuan_harga` int(11) NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `organisasi_id`, `user_id`, `total`, `tanggal`, `nama_barang`, `jmlh_barang`, `satuan_harga`, `sumber_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
(5, 3, 1, '8000', '2022-05-21', 'aq', 1, 2000, '2', 'keteranvan', NULL, NULL),
(6, 3, 1, '8000', '2022-05-21', 'a', 2, 3000, '2', 'keteranvan', NULL, NULL),
(7, 2, 1, '2000', '2022-05-21', 'aq', 1, 2000, '2', '', NULL, NULL),
(8, 1, 1, '2000', '2022-05-21', 'aq', 1, 2000, '2', '', NULL, NULL),
(9, 3, 1, '5000', '2022-05-09', 'buku', 1, 5000, '2', 'print surat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisasi_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `email`, `password`, `no_telp`, `jenis_kelamin`, `pekerjaan`, `alamat`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ni Putu Windi Masyundari', '510302608200005', 'Denpasar', '2000-08-29', 'windimasyundarii@gmail.com', '$2y$10$Emial6r3UasoEkTazwlikemRwsRH33YuGOMKAAaWdmVvzG7LuVhPS', '08567809809', 'Perempuan', 'Mahasiswa', 'Br. Batulumbung, Gulingan', 'Sekretaris', '1', NULL, '2022-04-17 05:38:06', '2022-05-31 07:40:34'),
(2, 'I Putu Febry Masprayoga', '510302354370005', 'Denpasar', '2000-12-31', 'febrymasprayoga@gmail.com', '$2y$10$/v0wHWk60vGcAd1.UFUDhOiTqa/V0huLr0NXQuW5R98wZNkD3.oTa', '085654345627', 'Laki-Laki', 'Mahasiswa', 'Br. Batulumbung, Gulingan', 'Anggota', 'Aktif', NULL, '2022-04-17 05:46:40', '2022-06-01 07:50:50'),
(4, 'sonic', '12321', 'gresik', '2022-05-27', 'user@user.com', '$2y$10$AaalRqec6Pt9bYdFUx7Fauf3OvD.En9ot7WW.pcgfr.ss10LRlgem', '0890000', 'Laki-Laki', 'negri', 'gresik', 'Anggota', '0', NULL, '2022-05-27 05:27:14', '2022-05-27 05:27:14'),
(7, 'aaaas', '12321222', 'gresik', '2022-05-27', 'user1@user.com', '$2y$10$DfbrQ0qtImFtE/ytOPTF1uQSj1WXz6bitHzslhfJCDCKFvyqvUA9K', '12321', 'Laki-Laki', 'negri', 'sss', 'Anggota', 'Aktif', NULL, '2022-05-27 05:32:47', '2022-06-01 07:51:04'),
(10, 'alpin', '12345', 'gresik', '2022-06-02', 'ariefsetyan@gmail.com', '$2y$10$7FqLUoC0lom3teuW8gyxy.74xeutqWGDEUnuApO62zSZVddm96VHy', '081249015664', 'Laki-Laki', 'progremmaer', 'gresik', 'Anggota', '0', NULL, '2022-06-02 03:31:06', '2022-06-02 03:31:06'),
(14, 'sonic MASTER', '112', 'gresik', '2022-08-01', 'ariefsetyan1@gmail.co', '$2y$10$MJuynY7P2bzaBkZnLo0OoebB6.wpwd1do68WgoSoHYbh5LSwi0YGm', '081249015664', 'Laki-Laki', 'progremmaer', 'gresik', 'Ketua', 'Aktif', NULL, '2022-08-22 06:01:01', '2022-08-22 06:01:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `excel_absensi`
--
ALTER TABLE `excel_absensi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `user_nik_unique` (`nik`) USING BTREE,
  ADD UNIQUE KEY `user_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detail_user`
--
ALTER TABLE `detail_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `excel_absensi`
--
ALTER TABLE `excel_absensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
