-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 02:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`id_diskusi`, `nim`, `pengirim`, `isi`, `tanggal`) VALUES
(9, '72180225', 'Dito ADriel', 'dfgdfgdfg', '30-06-2022 16:35:09'),
(10, '72180225', 'yeyen', 'apelo', '30-06-2022 16:35:37'),
(11, '72180225', 'yeyen', 'woy taek', '30-06-2022 22:06:06'),
(12, '72210225', 'yeyen', 'Halloo', '19-07-2022 22:56:42'),
(13, '72210225', 'Dito ADriel', 'Halo bu dosen', '19-07-2022 23:29:15');

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

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(255) NOT NULL,
  `nim` int(255) DEFAULT NULL,
  `nidn` int(255) DEFAULT NULL,
  `kode_mk` varchar(255) DEFAULT NULL,
  `nama_mk` varchar(255) DEFAULT NULL,
  `absensi` varchar(255) DEFAULT NULL,
  `absensi_setelah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `nim`, `nidn`, `kode_mk`, `nama_mk`, `absensi`, `absensi_setelah`) VALUES
(1, 72200376, 502049501, 'SI111', 'Program Dasar Java', '3', '6'),
(2, 72200376, 502049501, 'SI222', 'Interaksi Manusia dan Komputer', '5', '6'),
(3, 72200376, 502049501, 'SI333', 'Pemrograman Berbasis Mobile', '1', '1'),
(4, 72200376, 502049501, 'SI0000', 'Front End', '6', '3'),
(5, 72200364, 502049501, 'SI0001 ', 'Algoritma Struktur Data', '6', '5'),
(6, 72200364, 502049501, 'SI0002', 'Matematika Sistem Informasi', '5', '1'),
(7, 72200364, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '7', '2'),
(8, 72200364, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '6', '6'),
(9, 72200364, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '7', '4'),
(10, 72200365, 502049501, 'SI111', 'Program Dasar Java', '3', '1'),
(11, 72200365, 502049501, 'SI222', 'Interaksi Manusia dan Komputer', '5', '5'),
(12, 72200365, 502049501, 'SI333', 'Pemrograman Berbasis Mobile', '4', '3'),
(13, 72200365, 502049501, 'SI0000', 'Front End', '6', '6'),
(14, 72200365, 502049501, 'SI0001 ', 'Algoritma Struktur Data', '2', '5'),
(15, 72200365, 502049501, 'SI0002', 'Matematika Sistem Informasi', '6', '1'),
(16, 72200365, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '1', '1'),
(17, 72200365, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '7', '3'),
(18, 72200365, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '5', '5'),
(19, 72200365, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '4', '3'),
(20, 72200365, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '6', '3'),
(21, 72200377, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '1', '7'),
(22, 72200377, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '1', '7'),
(23, 72200377, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '3'),
(24, 72200377, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '1', '1'),
(25, 72200377, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '5', '2'),
(26, 72200381, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '2', '6'),
(27, 72200381, 502049501, 'SI0001 ', 'Algoritma Struktur Data', '7', '3'),
(28, 72200381, 502049501, 'SI0002', 'Matematika Sistem Informasi', '1', '5'),
(29, 72200381, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '5', '1'),
(30, 72200381, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '5'),
(31, 72200384, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '4', '6'),
(32, 72200384, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '2', '7'),
(33, 72200384, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '5'),
(34, 72200384, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '1', '1'),
(35, 72200384, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '7', '3'),
(36, 72200388, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '7', '6'),
(37, 72200388, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '3', '6'),
(38, 72200388, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '6', '5'),
(39, 72200388, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '6', '5'),
(40, 72200388, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '3'),
(41, 72200391, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '1', '7'),
(42, 72200391, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '6', '3'),
(43, 72200391, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '3'),
(44, 72200391, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '2', '3'),
(45, 72200391, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '6'),
(46, 72200397, 502049501, 'SI0003', 'Pengantar Sistem Informasi', '5', '2'),
(47, 72200397, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '7', '3'),
(48, 72200397, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '1'),
(49, 72200397, 502049501, 'SI0004', 'Pemrograman Berbasis Web', '6', '4'),
(50, 72200397, 502049501, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '3'),
(51, 72200408, 503017010, 'SI0003', 'Pengantar Sistem Informasi', '7', '1'),
(52, 72200408, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '7', '2'),
(53, 72200408, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '5', '6'),
(54, 72200408, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '5', '3'),
(55, 72200408, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '4'),
(56, 72200415, 503017010, 'SI0003', 'Pengantar Sistem Informasi', '4', '2'),
(57, 72200415, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '3', '1'),
(58, 72200415, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '3', '2'),
(59, 72200415, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '5', '7'),
(60, 72200415, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '1'),
(61, 72200429, 503017010, 'SI0003', 'Pengantar Sistem Informasi', '2', '4'),
(62, 72200429, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '2', '3'),
(63, 72200429, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '3'),
(64, 72200429, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '6', '6'),
(65, 72200429, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '7', '4'),
(66, 72200435, 503017010, 'SI0003', 'Pengantar Sistem Informasi', '2', '3'),
(67, 72200435, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '3', '1'),
(68, 72200435, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '7', '5'),
(69, 72200435, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '7', '5'),
(70, 72200435, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '5'),
(71, 72200437, 503017010, 'SI0003', 'Pengantar Sistem Informasi', '6', '1'),
(72, 72200437, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '3', '3'),
(73, 72200437, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '3', '6'),
(74, 72200437, 503017010, 'SI0004', 'Pemrograman Berbasis Web', '1', '5'),
(75, 72200437, 503017010, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '2'),
(76, 72210448, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '7', '1'),
(77, 72210448, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '1', '4'),
(78, 72210448, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '2'),
(79, 72210448, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '3', '7'),
(80, 72210448, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '7', '5'),
(81, 72210453, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '1', '4'),
(82, 72210453, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '3', '5'),
(83, 72210453, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '4'),
(84, 72210453, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '3', '4'),
(85, 72210453, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '3', '2'),
(86, 72210454, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '5', '6'),
(87, 72210454, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '3', '6'),
(88, 72210454, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '5', '7'),
(89, 72210454, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '2', '1'),
(90, 72210454, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '3', '6'),
(91, 72210456, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '5', '6'),
(92, 72210456, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '5', '2'),
(93, 72210456, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '2'),
(94, 72210456, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '3', '7'),
(95, 72210456, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '6', '4'),
(96, 72210457, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '5', '3'),
(97, 72210457, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '2', '2'),
(98, 72210457, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '3'),
(99, 72210457, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '6', '6'),
(100, 72210457, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '5', '2'),
(101, 72210462, 503017001, 'SI0003', 'Pengantar Sistem Informasi', '1', '6'),
(102, 72210462, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '4', '3'),
(103, 72210462, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '4'),
(104, 72210462, 503017001, 'SI0004', 'Pemrograman Berbasis Web', '5', '1'),
(105, 72210462, 503017001, 'SI0005', 'Rekayasa Perangkat Lunak', '3', '6'),
(106, 72210464, 503017009, 'SI0003', 'Pengantar Sistem Informasi', '1', '7'),
(107, 72210464, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '2', '1'),
(108, 72210464, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '1', '5'),
(109, 72210464, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '6', '1'),
(110, 72210464, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '6', '3'),
(111, 72210465, 503017009, 'SI0003', 'Pengantar Sistem Informasi', '3', '4'),
(112, 72210465, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '2', '3'),
(113, 72210465, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '1'),
(114, 72210465, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '3', '6'),
(115, 72210465, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '3'),
(116, 72210468, 503017009, 'SI0003', 'Pengantar Sistem Informasi', '3', '6'),
(117, 72210468, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '1', '6'),
(118, 72210468, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '3'),
(119, 72210468, 503017009, 'SI0004', 'Pemrograman Berbasis Web', '3', '4'),
(120, 72210468, 503017009, 'SI0005', 'Rekayasa Perangkat Lunak', '4', '3'),
(121, 72200367, 502049501, 'SI111', 'Program Dasar Java', '1', '5'),
(122, 72200367, 502049501, 'SI222', 'Interaksi Manusia dan Komputer', '2', '7'),
(123, 72200367, 502049501, 'SI333', 'Pemrograman Berbasis Mobile', '6', '5'),
(124, 72200367, 502049501, 'SI0000', 'Front End', '3', '2'),
(125, 72200367, 502049501, 'SI0001 ', 'Algoritma Struktur Data', '4', '5'),
(126, 72200999, NULL, 'SI0003', 'Pengantar Sistem Informasi', '3', '3'),
(127, 72200999, NULL, 'SI0004', 'Pemrograman Berbasis Web', '4', '6'),
(128, 72200999, NULL, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '5'),
(129, 72200999, NULL, 'SI0004', 'Pemrograman Berbasis Web', '4', '7'),
(130, 72200999, NULL, 'SI0005', 'Rekayasa Perangkat Lunak', '2', '6'),
(131, 72210225, 503017001, 'SI111', 'Program Dasar Java', '2', '7'),
(132, 72210225, 503017001, 'SI222', 'Interaksi Manusia dan Komputer', '2', '4'),
(133, 72210225, 503017001, 'SI333', 'Pemrograman Berbasis Mobile', '6', '7'),
(134, 72210225, 503017001, 'SI0000', 'Front End', '7', '1'),
(135, 72210225, 503017001, 'SI0001 ', 'Algoritma Struktur Data', '5', '5'),
(136, 72210225, 503017001, 'SI0002', 'Matematika Sistem Informasi', '4', '6');

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
  `respon` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `deskripsi`, `angkatan`, `tanggal`, `respon`) VALUES
(7, 'Pemanggilan Mahasiswa Dengan IPK < 2', 'Harap Mahasiswa dengan nim xxxxxxx,xxxxxxx,xxxxxxx,xxxxxxx\r\n\r\nMengikuti pertemuan di link: https://meet.google.com/\r\n						', '2021', '19-07-2022 23:00:32', 1);

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
(4, '72180225', 'Screenshot_20211216-115313.png');

-- --------------------------------------------------------

--
-- Table structure for table `surat_peringatan`
--

CREATE TABLE `surat_peringatan` (
  `id_surat` int(255) NOT NULL,
  `nidn` varchar(225) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `sp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_peringatan`
--

INSERT INTO `surat_peringatan` (`id_surat`, `nidn`, `nim`, `sp`) VALUES
(4, '1', '72210225', '20220418_12-48-30_laporanindividu4.png'),
(5, '1', '72210225', '20220418_12-48-30_laporanindividu5.png'),
(6, '1', '72210225', '20220418_12-48-30_laporanindividu6.png');

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
  `dosen_pembimbing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `roles`, `nim`, `ipk`, `angkatan`, `nidn`, `pj_angkatan`, `dosen_pembimbing`) VALUES
(3, 'admin', 'admin@staff.ukdw.ac.id', 'admin', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Johanes Vincent Raga', 'johanes@si.ukdw.ac.id', 'johanes', '1', '72200364', '3,90', '2020', NULL, NULL, '502049501'),
(46, 'Seprionaldi', 'seprio@si.ukdw.ac.id', 'seprio', '1', '72200365', '2,53', '2020', NULL, NULL, '502049501'),
(47, 'Rio Rian Rivanka', 'r3@si.ukdw.ac.id', 'rio', '1', '72200367', '2,07', '2020', NULL, NULL, '502049501'),
(48, 'Jessica Ivana Wijayanto', 'jes@si.ukdw.ac.id', 'jessica', '1', '72200376', '4,00', '2020', NULL, NULL, '502049501'),
(49, 'Chara Kezia Stefani', 'char@si.ukdw.ac.id', 'char', '1', '72200377', '1,09', '2020', NULL, NULL, '502049501'),
(50, 'Fionika Arinda Yuliana', 'fioni@si.ukdw.ac.id', 'fioni', '1', '72200381', '2,65', '2020', NULL, NULL, '502049501'),
(51, 'Matthew Bill Raharjo', 'matt@si.ukdw.ac.id', 'matt', '1', '72200384', '3,40', '2020', NULL, NULL, '502049501'),
(52, 'Joshe Forgaritenzo', 'joshe@si.ukdw.ac.id', 'joshe', '1', '72200388', '2,75', '2020', NULL, NULL, '502049501'),
(53, 'Gilbert Christyano Day', 'gil@si.ukdw.ac.id', 'gilbert', '1', '72200391', '3,20', '2020', NULL, NULL, '502049501'),
(54, 'Verena Ananda Christy', 'ver@si.ukdw.ac.id', 'verena', '1', '72200397', '2,45', '2020', NULL, NULL, '502049501'),
(55, 'Nathaniel Pratomohadi Nugroho', 'nat@si.ukdw.ac.id', 'nat', '1', '72200408', '2,50', '2020', NULL, NULL, '503017010'),
(56, 'Naftalia Keisya Griselda Runtuwene', 'naftalia@si.ukdw.ac.id', 'naftalia', '1', '72200415', '2,00', '2020', NULL, NULL, '503017010'),
(57, 'Selvi Ayu Melianda Sarumaha', 'selvi@si.ukdw.ac.id', 'selvi', '1', '72200429', '3,50', '2020', NULL, NULL, '503017010'),
(58, 'Irene Amelia', 'irene@si.ukdw.ac.id', 'irene', '1', '72200435', '4,00', '2020', NULL, NULL, '503017010'),
(59, 'Monica Gracethea', 'monica@si.ukdw.ac.id', 'monica', '1', '72200437', '2,35', '2020', NULL, NULL, '503017010'),
(60, 'Kelvin Lie', 'kelvin@si.ukdw.ac.id', 'kelvin', '1', '72210448', '3,00', '2021', NULL, NULL, '503017001'),
(61, 'Clairine Nita Agustine', 'clay@si.ukdw.ac.id', 'clay', '1', '72210453', '2,75', '2021', NULL, NULL, '503017001'),
(62, 'Valentino Raviendra Christando', 'valen@si.ukdw.ac.id', 'valen', '1', '72210454', '1,50', '2021', NULL, NULL, '503017001'),
(63, 'Nikolaus Pastika Bara Satyaradi', 'nik@si.ukdw.ac.id', 'nik', '1', '72210456', '3,45', '2021', NULL, NULL, '503017001'),
(64, 'Verel Krisna Wibowo', 'verel@si.ukdw.ac.id', 'verel', '1', '72210457', '3,50', '2021', NULL, NULL, '503017001'),
(65, 'Itasa Harani', 'itasa@si.ukdw.ac.id', 'itasa', '1', '72210462', '3,25', '2021', NULL, NULL, '503017001'),
(66, 'Jerry Marcelino Nugroho', 'jer@si.ukdw.ac.id', 'jerry', '1', '72210464', '1,75', '2021', NULL, NULL, '503017009'),
(67, 'Stefanus Audy Advent Kristy', 'stef@si.ukdw.ac.id', 'stef', '1', '72210465', '2,70', '2021', NULL, NULL, '503017009'),
(68, 'Zellyne Octaviani', 'zelly@si.ukdw.ac.id', 'zelly', '1', '72210468', '4,00', '2021', NULL, NULL, '503017009'),
(76, 'Gabriel Indra Widi Tamtama, S.Kom., M.Kom.', 'indraaa@staff.ukdw.ac.id', 'indra', '2', NULL, '4,00', NULL, 502049501, '2020', NULL),
(81, 'Katon Wijana', 'katon@staff.ukdw.ac.id', 'katon', '2', NULL, '1,75', NULL, 503017009, '2021', NULL),
(83, 'Umi Proboyekti S.Kom., MLIS', 'othiee@staff.ukdw.ac.id', 'umi', '2', NULL, '2,60', NULL, 503017010, '2020', NULL),
(86, 'Dito ADriel', 'ditoadriel@gmail.com', 'dito', '1', '72210225', '3.50', '2021', NULL, NULL, '503017001'),
(87, 'Yetli Oslan, S.Kom., M.T', 'ditoadriel@gmail.com', 'yetli', '2', NULL, NULL, NULL, 503017001, '2021', NULL);

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
-- Indexes for table `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
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
  MODIFY `id_diskusi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id_pengumuman` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  MODIFY `id_surat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
