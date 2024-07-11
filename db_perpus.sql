-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 02:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pelatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `gelombang`
--

CREATE TABLE `gelombang` (
  `id` int(11) NOT NULL,
  `nama_gelombang` varchar(15) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gelombang`
--

INSERT INTO `gelombang` (`id`, `nama_gelombang`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Gelombang 1', 1, '2024-06-19 02:25:34', '2024-06-19 06:43:01'),
(2, 'Gelombang 2', 0, '2024-06-19 02:25:34', '2024-06-19 06:42:58'),
(3, 'Gelombang 3', 0, '2024-06-19 04:07:28', '2024-06-19 04:07:28'),
(4, 'Gelombang 4', 0, '2024-06-19 04:07:35', '2024-06-19 04:07:35'),
(6, 'Gelombang 5', 0, '2024-06-19 04:21:10', '2024-06-19 04:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(2, 'Video Editor', '2024-05-14 06:53:22', '2024-05-16 02:06:56'),
(3, 'Content Creator', '2024-05-15 01:30:12', '2024-05-15 01:30:12'),
(4, 'Junior Web Programming', '2024-05-16 02:07:43', '2024-05-16 02:07:43'),
(6, 'Teknik Komputer', '2024-05-16 02:08:17', '2024-05-16 02:08:17'),
(7, 'Tata Boga', '2024-05-16 02:08:31', '2024-05-16 02:08:31'),
(8, 'Tata Graha', '2024-05-16 02:08:59', '2024-05-16 02:08:59'),
(9, 'Tata Busana', '2024-05-16 02:09:10', '2024-05-16 02:09:10'),
(10, 'Teknik Pendingin', '2024-05-16 02:09:23', '2024-05-16 02:09:23'),
(11, 'Teknik Sepeda Motor', '2024-05-16 02:09:37', '2024-05-16 02:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2024-05-15 04:20:27', '2024-05-15 04:20:27'),
(2, 'Kepala', '2024-05-15 04:20:27', '2024-05-15 04:20:27'),
(4, 'Admin', '2024-06-19 02:31:19', '2024-06-19 02:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_wawancara`
--

CREATE TABLE `pertanyaan_wawancara` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_pertanyaan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan_wawancara`
--

INSERT INTO `pertanyaan_wawancara` (`id`, `id_jurusan`, `nama_pertanyaan`, `created_at`, `updated_at`) VALUES
(4, 2, 'Pernahkah anda menggunakan perangkat Hp dengan resolusi HD?', '2024-05-17 07:10:03', '2024-05-17 07:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_gelombang` int(11) NOT NULL,
  `nik` varchar(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `gelombang` int(5) NOT NULL,
  `tahun_pelatihan` varchar(5) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `id_jurusan`, `id_gelombang`, `nik`, `nama`, `email`, `hp`, `gender`, `alamat`, `pendidikan`, `gelombang`, `tahun_pelatihan`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 3, 0, '987654321', 'Reza Ibrahim', 'ribrahim50@gmail.com', '08994212290', 'Laki-laki', 'Bekasi', 'SMA', 1, '0000-', NULL, 1, '2024-05-15 01:42:20', '2024-05-17 01:41:59'),
(3, 4, 0, '9741209302080001', 'Reza Ibrahim', 'ribrahim50@gmail.com', '08994212290', 'Laki-laki', 'Bekasi', 'SMA', 1, '0000-', 1, 0, '2024-05-16 03:20:53', '2024-05-17 02:09:54'),
(4, 4, 0, '9741209302080002', 'Bambang Pamungkas', 'bambang@gmail.com', '08994212291', 'Laki-laki', 'Jakarta Pusat', 'D3 - Management Info', 1, '0000-', 1, 0, '2024-05-16 03:21:41', '2024-05-16 07:40:20'),
(5, 4, 0, '9741209302080003', 'Ratnasari', 'ratna@gmail.com', '08994212292', 'Perempuan', 'Tanah Abang Jakarta Pusat', 'SMA', 1, '0000-', 1, 0, '2024-05-16 03:22:40', '2024-05-16 04:14:51'),
(6, 6, 1, '987654321', 'Dani', 'dani@gmail.com', '084534234', 'Laki-laki', 'Jakarta', 'SMA', 0, '0000-', NULL, 0, '2024-06-20 06:58:07', '2024-06-20 06:58:07'),
(7, 4, 1, '987654321', 'Reza Ibrahim', 'toni@gmail.com', '87878', 'Laki-laki', 'sdfsfsd', 'SMA', 0, '0000-', NULL, 0, '2024-06-20 07:00:51', '2024-06-20 07:00:51'),
(8, 6, 1, '987654321', 'Admin12345', 'fgdfg@dfgdg', '3453453', 'Laki-laki', 'sdfsfsdfs', 'SMA', 0, '2024', NULL, 0, '2024-06-20 07:03:01', '2024-06-20 07:03:01'),
(9, 7, 1, '123', 'Reza Ibrahim', 'santi123@gmail.com', '3453453', 'Perempuan', 'sdfsdfsfsf', 'SMA', 0, '2024', NULL, 0, '2024-06-20 07:04:39', '2024-06-20 07:04:39'),
(10, 0, 1, '', '', '', '', 'Laki-laki', '', '', 0, '2024', NULL, 0, '2024-06-20 07:12:47', '2024-06-20 07:12:47'),
(11, 6, 1, '', 'Reza Ibrahim', 'santi123@gmail.com', '3453453', 'Laki-laki', 'dfgdfgdg', 'SMA', 0, '2024', NULL, 0, '2024-06-20 07:17:39', '2024-06-20 07:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(35) NOT NULL,
  `harga_brg` int(15) NOT NULL,
  `stock_brg` int(5) NOT NULL,
  `gbr_brg` varchar(30) NOT NULL,
  `tgl_publish` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `harga_brg`, `stock_brg`, `gbr_brg`, `tgl_publish`) VALUES
(1, 'Buku Sejarah 4', 350000, 100, 'brg-1716266778.jpg', '2024-05-13'),
(2, 'Bunga Kasturi', 50000, 56, 'brg-1716188472.jpg', '2024-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_level`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 1, 'Reza Ibrahim', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-05-15 05:31:41', '2024-06-19 03:33:59'),
(4, 1, 'Reza Ibrahim', 'asdfsadfsdf@sdfgdfgs.sdf', '7c222fb2927d828af22f592134e8932480637c0d', '2024-05-15 07:51:52', '2024-05-15 07:51:52'),
(5, 2, 'Admin12345', 'asdfsadfsddf@sdfgdfg.sdf', '7c222fb2927d828af22f592134e8932480637c0d', '2024-05-15 07:52:04', '2024-05-15 07:52:04'),
(6, 1, 'hhh', 'ribrahim50@gmail.com', '12345678', '2024-05-15 07:52:16', '2024-06-20 06:17:54'),
(7, 3, 'hhh', 'ribrahim50@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2024-05-15 07:52:27', '2024-06-19 01:48:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gelombang`
--
ALTER TABLE `gelombang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_wawancara`
--
ALTER TABLE `pertanyaan_wawancara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gelombang`
--
ALTER TABLE `gelombang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pertanyaan_wawancara`
--
ALTER TABLE `pertanyaan_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
