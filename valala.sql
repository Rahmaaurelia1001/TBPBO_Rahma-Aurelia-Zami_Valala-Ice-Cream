-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 11.06
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valala`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `valala`
--

CREATE TABLE `valala` (
  `notransaksi` int(11) NOT NULL,
  `kasir` varchar(255) NOT NULL,
  `namamenu` varchar(255) NOT NULL,
  `ukuranmenu` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `totalbayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `valala`
--

INSERT INTO `valala` (`notransaksi`, `kasir`, `namamenu`, `ukuranmenu`, `harga`, `jumlah`, `totalbayar`) VALUES
(1, 'AUREL', 'MANGGO SMOOTIES', 'menengah', 20000, 2, 40000),
(2, 'AUREL', 'VANILLA SUNDAE', 'menengah', 20000, 1, 20000),
(3, 'AUREL', 'MANGGO SUNDAE', 'kecil', 8000, 1, 8000),
(4, 'AUREL', 'VANILLA CONE', 'menengah', 10000, 2, 20000),
(5, 'AUREL', 'STRAWBERRY ICE CREAM', 'menengah', 20000, 2, 40000),
(6, 'AUREL', 'VANILLA SUNDAE', 'menengah', 20000, 2, 40000),
(7, 'AUREL', 'COKLAT SUNDAE', 'menengah', 20000, 3, 60000),
(8, 'AUREL', 'STRAWBERRY SUNDAE', 'menengah', 20000, 3, 60000),
(9, 'AUREL', 'GRAPE SUNDAE', 'menengah', 18000, 4, 72000),
(10, 'AUREL', 'MATCHA SUNDAE', 'menengah', 20000, 2, 40000),
(11, 'AUREL', 'STRAWBERRY SUNDAE', 'menengah', 20000, 5, 100000),
(12, 'dea', 'coklat', 'besar', 15000, 2, 30000),
(13, 'aurel', 'vanila', 'kecil', 7000, 1, 7000),
(14, 'aurel', 'coklat sundae', 'besar', 20000, 6, 115000),
(15, 'AUREL', 'COKLAT SUNDAE', 'menengah', 20000, 5, 100000),
(16, 'AUREL', 'MATCHA SMOOTIES', 'besar', 30000, 5, 145000),
(17, 'AUREL', 'COKLAT SUNDAE', 'menengah', 20000, 5, 100000),
(18, 'AUREL', 'manggoo', 'menengah', 20000, 3, 60000),
(19, 'AUREL', 'strawberry smooties', 'menengah', 20000, 5, 100000),
(20, 'AUREL', 'Matcha Smooties', 'menengah', 20000, 6, 115000),
(22, 'RAHMA', 'MANGGO SMOOTIE', 'menengah', 20000, 3, 60000),
(24, 'RAHMA', 'corn', 'besar', 30000, 5, 145000),
(25, 'AUREL', 'CORN', 'menengah', 20000, 6, 115000),
(26, 'AUREL', 'matcha smooties', 'menengah', 20000, 3, 60000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `valala`
--
ALTER TABLE `valala`
  ADD PRIMARY KEY (`notransaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `valala`
--
ALTER TABLE `valala`
  MODIFY `notransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
