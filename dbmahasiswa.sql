-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2024 pada 17.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `mhsID` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`mhsID`, `nama`, `jurusan`, `semester`, `createdAt`, `updatedAt`) VALUES
(6, 'Egy Djaya', 'Teknik Informatika', '7', '2024-03-08 12:39:59', '2024-03-08 12:39:59'),
(9, 'Maheswara Kamel', 'Teknik Mesin', '5', '2024-03-08 16:24:06', '2024-03-08 16:24:06'),
(10, 'Muhammad Ghazi Al Fathin', 'Teknik Informatika', '7', '2024-03-08 16:49:03', '2024-03-08 16:49:03'),
(11, 'Daffa Ade Pratama', 'Ekonomi', '5', '2024-03-08 16:50:48', '2024-03-08 16:50:48'),
(15, 'Bima Galaxy Putra', 'Teknik Informatika', '8', '2024-03-08 18:03:48', '2024-03-08 18:03:48'),
(16, 'Lovandria Satya Purwanto', 'Sistem Informasi', '5', '2024-03-09 07:56:29', '2024-03-09 07:56:29'),
(17, 'Evan Maulana', 'Teknik Informatika', '7', '2024-03-09 09:13:41', '2024-03-09 09:37:48'),
(19, 'Destyandra', 'Teknik Informatika', '5', '2024-03-09 10:49:10', '2024-03-09 10:49:10'),
(20, 'Indra Ridho R. P.', 'Teknik Informatika', '5', '2024-03-09 10:49:32', '2024-03-09 10:49:32'),
(21, 'Putra Ramadhani', 'Teknik Sipil', '5', '2024-03-09 10:52:18', '2024-03-09 10:52:18'),
(22, 'Disca Anca Pratama', 'Teknik Mesin', '5', '2024-03-09 10:52:39', '2024-03-09 10:52:39'),
(23, 'Moch. Abdul Aziz', 'Teknik Informatika', '5', '2024-03-09 10:53:33', '2024-03-09 10:53:33'),
(24, 'Syarofi Ishma Yahya', 'Teknik Informatika', '5', '2024-03-09 10:53:57', '2024-03-09 10:53:57'),
(25, 'Akbar Bagus Wicaksana', 'Teknik Informatika', '5', '2024-03-09 10:55:03', '2024-03-09 10:55:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240308113504-create-mhs.js'),
('20240308120700-create-mhs.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`mhsID`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `mhsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
