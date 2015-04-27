-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2015 at 09:57 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustrop_si`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
`id_katalog` int(11) NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  `judul_buku` text NOT NULL,
  `pengarang_buku` varchar(20) NOT NULL,
  `penerbit_buku` varchar(20) NOT NULL,
  `tahun_terbit` int(20) NOT NULL,
  `halaman_buku` int(20) NOT NULL,
  `harga_jual` int(20) DEFAULT NULL,
  `keterangan` text,
  `id_kat_buku` varchar(20) NOT NULL,
  `jumlah_eksemplar` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_katalog`, `kode_buku`, `judul_buku`, `pengarang_buku`, `penerbit_buku`, `tahun_terbit`, `halaman_buku`, `harga_jual`, `keterangan`, `id_kat_buku`, `jumlah_eksemplar`) VALUES
(1, '', 'abc', 'asdf', 'basdf', 0, 1332, 1332, '', 'basfb', 0),
(2, 'AF123', 'Barasuara', 'Lutfi Fadlan', 'Lingga Binangkit', 2014, 2015, 32333, 'asdfghjkl;;lkjhgfdsasdfghj', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`id_katalog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
MODIFY `id_katalog` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
