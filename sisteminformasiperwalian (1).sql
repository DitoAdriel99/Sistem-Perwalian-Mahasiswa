-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 09:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisteminformasiperwalian`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `id_diskusi` int(225) NOT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diskusi_pengumuman`
--

CREATE TABLE `diskusi_pengumuman` (
  `id` int(255) NOT NULL,
  `id_pengumuman` int(225) DEFAULT NULL,
  `id_user` int(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diskusi_pengumuman`
--

INSERT INTO `diskusi_pengumuman` (`id`, `id_pengumuman`, `id_user`, `isi`) VALUES
(12, 7, 86, 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(255) NOT NULL,
  `nim` int(255) DEFAULT NULL,
  `kode_mk` varchar(255) DEFAULT NULL,
  `nama_mk` varchar(255) DEFAULT NULL,
  `absensi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `nim`, `kode_mk`, `nama_mk`, `absensi`) VALUES
(1, 72200376, 'SI111', 'Program Dasar Java', '80'),
(2, 72200376, 'SI222', 'Interaksi Manusia dan Komputer', '90'),
(3, 72200376, 'SI333', 'Pemrograman Berbasis Mobile', '90'),
(4, 72200376, 'SI0000', 'Front End', '66'),
(5, 72200364, 'SI0001 ', 'Algoritma Struktur Data', '22'),
(6, 72200364, 'SI0002', 'Matematika Sistem Informasi', '88'),
(7, 72200364, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(8, 72200364, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(9, 72200364, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(10, 72200365, 'SI111', 'Program Dasar Java', '80'),
(11, 72200365, 'SI222', 'Interaksi Manusia dan Komputer', '90'),
(12, 72200365, 'SI333', 'Pemrograman Berbasis Mobile', '90'),
(13, 72200365, 'SI0000', 'Front End', '66'),
(14, 72200365, 'SI0001 ', 'Algoritma Struktur Data', '22'),
(15, 72200365, 'SI0002', 'Matematika Sistem Informasi', '88'),
(16, 72200365, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(17, 72200365, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(18, 72200365, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(19, 72200365, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(20, 72200365, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(21, 72200377, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(22, 72200377, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(23, 72200377, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(24, 72200377, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(25, 72200377, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(26, 72200381, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(27, 72200381, 'SI0001 ', 'Algoritma Struktur Data', '22'),
(28, 72200381, 'SI0002', 'Matematika Sistem Informasi', '88'),
(29, 72200381, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(30, 72200381, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(31, 72200384, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(32, 72200384, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(33, 72200384, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(34, 72200384, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(35, 72200384, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(36, 72200388, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(37, 72200388, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(38, 72200388, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(39, 72200388, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(40, 72200388, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(41, 72200391, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(42, 72200391, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(43, 72200391, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(44, 72200391, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(45, 72200391, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(46, 72200397, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(47, 72200397, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(48, 72200397, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(49, 72200397, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(50, 72200397, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(51, 72200408, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(52, 72200408, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(53, 72200408, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(54, 72200408, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(55, 72200408, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(56, 72200415, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(57, 72200415, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(58, 72200415, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(59, 72200415, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(60, 72200415, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(61, 72200429, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(62, 72200429, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(63, 72200429, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(64, 72200429, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(65, 72200429, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(66, 72200435, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(67, 72200435, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(68, 72200435, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(69, 72200435, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(70, 72200435, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(71, 72200437, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(72, 72200437, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(73, 72200437, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(74, 72200437, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(75, 72200437, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(76, 72210448, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(77, 72210448, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(78, 72210448, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(79, 72210448, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(80, 72210448, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(81, 72210453, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(82, 72210453, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(83, 72210453, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(84, 72210453, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(85, 72210453, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(86, 72210454, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(87, 72210454, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(88, 72210454, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(89, 72210454, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(90, 72210454, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(91, 72210456, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(92, 72210456, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(93, 72210456, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(94, 72210456, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(95, 72210456, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(96, 72210457, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(97, 72210457, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(98, 72210457, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(99, 72210457, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(100, 72210457, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(101, 72210462, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(102, 72210462, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(103, 72210462, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(104, 72210462, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(105, 72210462, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(106, 72210464, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(107, 72210464, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(108, 72210464, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(109, 72210464, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(110, 72210464, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(111, 72210465, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(112, 72210465, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(113, 72210465, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(114, 72210465, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(115, 72210465, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(116, 72210468, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(117, 72210468, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(118, 72210468, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(119, 72210468, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(120, 72210468, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(121, 72200367, 'SI111', 'Program Dasar Java', '80'),
(122, 72200367, 'SI222', 'Interaksi Manusia dan Komputer', '90'),
(123, 72200367, 'SI333', 'Pemrograman Berbasis Mobile', '90'),
(124, 72200367, 'SI0000', 'Front End', '66'),
(125, 72200367, 'SI0001 ', 'Algoritma Struktur Data', '22'),
(126, 72200999, 'SI0003', 'Pengantar Sistem Informasi', '55'),
(127, 72200999, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(128, 72200999, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(129, 72200999, 'SI0004', 'Pemrograman Berbasis Web', '99'),
(130, 72200999, 'SI0005', 'Rekayasa Perangkat Lunak', '88'),
(131, 72180225, 'SI111', 'Program Dasar Java', '2'),
(132, 72180225, 'SI222', 'Interaksi Manusia dan Komputer', '3'),
(133, 72180225, 'SI333', 'Pemrograman Berbasis Mobile', '4'),
(134, 72180225, 'SI0000', 'Front End', '5'),
(135, 72180225, 'SI0001 ', 'Algoritma Struktur Data', '7'),
(136, 72180225, 'SI0002', 'Matematika Sistem Informasi', '7');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(255) NOT NULL,
  `judul` varchar(225) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `angkatan` varchar(10) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `respon` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `deskripsi`, `angkatan`, `tanggal`, `respon`) VALUES
(6, 'dfsdf', '\r\n	sdfdsf					', '2018', '08-07-2022 00:35:36', '0'),
(7, 'tretreter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus sollicitudin libero vel efficitur. Donec sit amet lorem non lectus aliquet rutrum sed sed neque. Phasellus ultrices, mauris ac pharetra facilisis, lectus nulla accumsan lacus, non matt', '2018', '08-07-2022 00:46:01', '1'),
(20, 'dfsdf', 'dfdfdfdffghdffffffffffffffffffff', '2020', '08-07-2022 01:07:16', '1');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(10) NOT NULL,
  `nim` varchar(225) DEFAULT NULL,
  `surat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `nim`, `surat`) VALUES
(1, '72180225', 'ac1.jpg'),
(2, '72180225', 'ac2.jpg'),
(3, '72180225', 'ac3.jpg'),
(4, '72180225', 'Screenshot_20211216-115313.png'),
(5, '72210462', 'moon-knight-marvel-cinematic-universe-marvel-comics-comics-superhero-hd-wallpaper-preview.jpg'),
(6, '72210457', '1224918.jpg'),
(7, '72200364', '12249181.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `nim` varchar(225) DEFAULT NULL,
  `ipk` varchar(255) DEFAULT NULL,
  `angkatan` varchar(255) DEFAULT NULL,
  `nidn` int(225) DEFAULT NULL,
  `pj_angkatan` varchar(255) DEFAULT NULL,
  `sp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `roles`, `nim`, `ipk`, `angkatan`, `nidn`, `pj_angkatan`, `sp`) VALUES
(3, 'admin', 'admin@staff.ukdw.ac.id', 'admin', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Johanes Vincent Raga', 'johanes@si.ukdw.ac.id', 'johanes', '1', '72200364', '3,90', '2020', NULL, NULL, 'Screenshot_20211216-1153132.png'),
(46, 'Seprionaldi', 'seprio@si.ukdw.ac.id', 'seprio', '1', '72200365', '2,53', '2020', NULL, NULL, NULL),
(47, 'Rio Rian Rivanka', 'r3@si.ukdw.ac.id', 'rio', '1', '72200367', '2,07', '2020', NULL, NULL, NULL),
(48, 'Jessica Ivana Wijayanto', 'jes@si.ukdw.ac.id', 'jessica', '1', '72200376', '4,00', '2020', NULL, NULL, 'moon-knight-marvel-cinematic-universe-marvel-comics-comics-superhero-hd-wallpaper-preview.jpg'),
(49, 'Chara Kezia Stefani', 'char@si.ukdw.ac.id', 'char', '1', '72200377', '1,09', '2020', NULL, NULL, NULL),
(50, 'Fionika Arinda Yuliana', 'fioni@si.ukdw.ac.id', 'fioni', '1', '72200381', '2,65', '2020', NULL, NULL, NULL),
(51, 'Matthew Bill Raharjo', 'matt@si.ukdw.ac.id', 'matt', '1', '72200384', '3,40', '2020', NULL, NULL, NULL),
(52, 'Joshe Forgaritenzo', 'joshe@si.ukdw.ac.id', 'joshe', '1', '72200388', '2,75', '2020', NULL, NULL, NULL),
(53, 'Gilbert Christyano Day', 'gil@si.ukdw.ac.id', 'gilbert', '1', '72200391', '3,20', '2020', NULL, NULL, NULL),
(54, 'Verena Ananda Christy', 'ver@si.ukdw.ac.id', 'verena', '1', '72200397', '2,45', '2020', NULL, NULL, NULL),
(55, 'Nathaniel Pratomohadi Nugroho', 'nat@si.ukdw.ac.id', 'nat', '1', '72200408', '2,50', '2020', NULL, NULL, NULL),
(56, 'Naftalia Keisya Griselda Runtuwene', 'naftalia@si.ukdw.ac.id', 'naftalia', '1', '72200415', '2,00', '2020', NULL, NULL, NULL),
(57, 'Selvi Ayu Melianda Sarumaha', 'selvi@si.ukdw.ac.id', 'selvi', '1', '72200429', '3,50', '2020', NULL, NULL, NULL),
(58, 'Irene Amelia', 'irene@si.ukdw.ac.id', 'irene', '1', '72200435', '4,00', '2020', NULL, NULL, NULL),
(59, 'Monica Gracethea', 'monica@si.ukdw.ac.id', 'monica', '1', '72200437', '2,35', '2020', NULL, NULL, NULL),
(60, 'Kelvin Lie', 'kelvin@si.ukdw.ac.id', 'kelvin', '1', '72210448', '3,00', '2021', NULL, NULL, NULL),
(61, 'Clairine Nita Agustine', 'clay@si.ukdw.ac.id', 'clay', '1', '72210453', '2,75', '2021', NULL, NULL, NULL),
(62, 'Valentino Raviendra Christando', 'valen@si.ukdw.ac.id', 'valen', '1', '72210454', '1,50', '2021', NULL, NULL, NULL),
(63, 'Nikolaus Pastika Bara Satyaradi', 'nik@si.ukdw.ac.id', 'nik', '1', '72210456', '3,45', '2021', NULL, NULL, NULL),
(64, 'Verel Krisna Wibowo', 'verel@si.ukdw.ac.id', 'verel', '1', '72210457', '3,50', '2021', NULL, NULL, NULL),
(65, 'Itasa Harani', 'itasa@si.ukdw.ac.id', 'itasa', '1', '72210462', '3,25', '2021', NULL, NULL, NULL),
(66, 'Jerry Marcelino Nugroho', 'jer@si.ukdw.ac.id', 'jerry', '1', '72210464', '1,75', '2021', NULL, NULL, NULL),
(67, 'Stefanus Audy Advent Kristy', 'stef@si.ukdw.ac.id', 'stef', '1', '72210465', '2,70', '2021', NULL, NULL, NULL),
(68, 'Zellyne Octaviani', 'zelly@si.ukdw.ac.id', 'zelly', '1', '72210468', '4,00', '2021', NULL, NULL, NULL),
(69, 'Tasha Prijanto Putri', 'tasha@si.ukdw.ac.id', 'tasha', '1', '72210469', '2,30', '2021', NULL, NULL, NULL),
(70, 'Christian Denny Christanto', 'christian@si.ukdw.ac.id', 'christian', '1', '72210470', '2,50', '2021', NULL, NULL, NULL),
(71, 'Jane Patricia Putri', 'jane@si.ukdw.ac.id', 'jane', '1', '72210472', '3,50', '2021', NULL, NULL, NULL),
(72, 'Adelia Christine Silaban', 'adelia@si.ukdw.ac.id', 'adelia', '1', '72210475', '2,40', '2021', NULL, NULL, NULL),
(73, 'Era Riece Swany Angelica', 'era@si.ukdw.ac.id', 'era', '1', '72210476', '1,50', '2021', NULL, NULL, NULL),
(74, 'Bryan Nicholas Winata', 'bry@si.ukdw.ac.id', 'bry', '1', '72210477', '4,00', '2021', NULL, NULL, NULL),
(75, 'Yetli Oslan, S.Kom., M.T', 'yetliii@staff.ukdw.ac.id', 'yetli', '2', NULL, '2,10', NULL, 503017001, NULL, NULL),
(76, 'Gabriel Indra Widi Tamtama, S.Kom., M.Kom.', 'indraaa@staff.ukdw.ac.id', 'indra', '2', NULL, '4,00', NULL, 502049501, NULL, NULL),
(81, 'Katon Wijana', 'katon@staff.ukdw.ac.id', 'katon', '2', NULL, '1,75', NULL, 503017009, '2021', NULL),
(83, 'Umi Proboyekti S.Kom., MLIS', 'othiee@staff.ukdw.ac.id', 'umi', '2', NULL, '2,60', NULL, 503017010, '2020', NULL),
(84, 'keren kezia', 'lerenkezia12@gmail.com', 'yeyen', '1', '72200999', '2,50', '2020', NULL, NULL, NULL),
(86, 'Dito ADriel', 'ditoadriel@gmail.com', 'dito', '1', '72180225', '3.50', '2018', NULL, NULL, 'Screenshot_20211216-1153133.png'),
(87, 'yeyen', 'benedicto.adriel@si.ukdw.ac.id', 'yeyen', '2', NULL, NULL, NULL, 1, '2018', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indexes for table `diskusi_pengumuman`
--
ALTER TABLE `diskusi_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `diskusi_pengumuman`
--
ALTER TABLE `diskusi_pengumuman`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
