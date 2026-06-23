-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2026 at 03:00 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_pbo_trpl1b_indrisafitri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `id_karyawan` int NOT NULL,
  `nama_karyawan` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_karyawan` enum('kontrak','teteap','magang') COLLATE utf8mb4_general_ci NOT NULL,
  `durasi_kontrak_bulan` int DEFAULT NULL,
  `agensi_penyalur` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tunjangan_kesehatan` decimal(10,2) DEFAULT NULL,
  `opsi_saham_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uang_sakku_bulanan` decimal(10,2) DEFAULT NULL,
  `sertifikat_kampus_merdeka` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_karyawan`, `durasi_kontrak_bulan`, `agensi_penyalur`, `tunjangan_kesehatan`, `opsi_saham_id`, `uang_sakku_bulanan`, `sertifikat_kampus_merdeka`) VALUES
(1, 'Budi Santoso', 'kontrak', 12, 'PT Sinergi Talenta', NULL, NULL, NULL, NULL),
(2, 'Siti Aminah', 'kontrak', 6, 'PT Karya Mandiri', NULL, NULL, NULL, NULL),
(3, 'Agus Wijaya', 'kontrak', 18, 'PT Solusi Bangsa', NULL, NULL, NULL, NULL),
(4, 'Dewi Lestari', 'kontrak', 12, 'PT Bina Kreatif', NULL, NULL, NULL, NULL),
(5, 'Rudi Hartono', 'kontrak', 24, 'PT Maju Bersama', NULL, NULL, NULL, NULL),
(6, 'Nina Karlina', 'kontrak', 6, 'PT Digital Nusantara', NULL, NULL, NULL, NULL),
(7, 'Andi Prasetyo', 'kontrak', 12, 'PT Cipta Karya', NULL, NULL, NULL, NULL),
(8, 'Drs. Suprapto', 'teteap', NULL, NULL, 1500000.00, 'SAHAM-001', NULL, NULL),
(9, 'Ir. Wati Susanti', 'teteap', NULL, NULL, 2000000.00, 'SAHAM-002', NULL, NULL),
(10, 'Herman Subagio', 'teteap', NULL, NULL, 1200000.00, 'SAHAM-003', NULL, NULL),
(11, 'Dra. Retno Palupi', 'teteap', NULL, NULL, 1800000.00, 'SAHAM-004', NULL, NULL),
(12, 'Dwi Cipto', 'teteap', NULL, NULL, 1600000.00, 'SAHAM-005', NULL, NULL),
(13, 'Sri Mulyani', 'teteap', NULL, NULL, 2200000.00, 'SAHAM-006', NULL, NULL),
(14, 'Bambang Tri', 'teteap', NULL, NULL, 1300000.00, 'SAHAM-007', NULL, NULL),
(15, 'Mira Fadila', 'magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-001'),
(16, 'Rizky Ramadhan', 'magang', NULL, NULL, NULL, NULL, 1400000.00, 'MSIB-2025-002'),
(17, 'Citra Ayu', 'magang', NULL, NULL, NULL, NULL, 1600000.00, 'MSIB-2025-003'),
(18, 'Fajar Nugroho', 'magang', NULL, NULL, NULL, NULL, 1300000.00, 'MSIB-2025-004'),
(19, 'Lila Sari', 'magang', NULL, NULL, NULL, NULL, 1550000.00, 'MSIB-2025-005'),
(20, 'Gilang Pratama', 'magang', NULL, NULL, NULL, NULL, 1450000.00, 'MSIB-2025-006'),
(21, 'Rina Melati', 'magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-007'),
(22, 'Budi Santoso', 'kontrak', 12, 'PT Sinergi Talenta', NULL, NULL, NULL, NULL),
(23, 'Siti Aminah', 'kontrak', 6, 'PT Karya Mandiri', NULL, NULL, NULL, NULL),
(24, 'Agus Wijaya', 'kontrak', 18, 'PT Solusi Bangsa', NULL, NULL, NULL, NULL),
(25, 'Dewi Lestari', 'kontrak', 12, 'PT Bina Kreatif', NULL, NULL, NULL, NULL),
(26, 'Rudi Hartono', 'kontrak', 24, 'PT Maju Bersama', NULL, NULL, NULL, NULL),
(27, 'Nina Karlina', 'kontrak', 6, 'PT Digital Nusantara', NULL, NULL, NULL, NULL),
(28, 'Andi Prasetyo', 'kontrak', 12, 'PT Cipta Karya', NULL, NULL, NULL, NULL),
(29, 'Drs. Suprapto', 'teteap', NULL, NULL, 1500000.00, 'SAHAM-001', NULL, NULL),
(30, 'Ir. Wati Susanti', 'teteap', NULL, NULL, 2000000.00, 'SAHAM-002', NULL, NULL),
(31, 'Herman Subagio', 'teteap', NULL, NULL, 1200000.00, 'SAHAM-003', NULL, NULL),
(32, 'Dra. Retno Palupi', 'teteap', NULL, NULL, 1800000.00, 'SAHAM-004', NULL, NULL),
(33, 'Dwi Cipto', 'teteap', NULL, NULL, 1600000.00, 'SAHAM-005', NULL, NULL),
(34, 'Sri Mulyani', 'teteap', NULL, NULL, 2200000.00, 'SAHAM-006', NULL, NULL),
(35, 'Bambang Tri', 'teteap', NULL, NULL, 1300000.00, 'SAHAM-007', NULL, NULL),
(36, 'Mira Fadila', 'magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-001'),
(37, 'Rizky Ramadhan', 'magang', NULL, NULL, NULL, NULL, 1400000.00, 'MSIB-2025-002'),
(38, 'Citra Ayu', 'magang', NULL, NULL, NULL, NULL, 1600000.00, 'MSIB-2025-003'),
(39, 'Fajar Nugroho', 'magang', NULL, NULL, NULL, NULL, 1300000.00, 'MSIB-2025-004'),
(40, 'Lila Sari', 'magang', NULL, NULL, NULL, NULL, 1550000.00, 'MSIB-2025-005'),
(41, 'Gilang Pratama', 'magang', NULL, NULL, NULL, NULL, 1450000.00, 'MSIB-2025-006'),
(42, 'Rina Melati', 'magang', NULL, NULL, NULL, NULL, 1500000.00, 'MSIB-2025-007');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  MODIFY `id_karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
