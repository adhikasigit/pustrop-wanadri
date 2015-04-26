-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2015 at 05:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasilformanggota`
--

CREATE TABLE IF NOT EXISTS `hasilformanggota` (
  `NamaAnggota` text NOT NULL,
  `No Telpon` int(11) NOT NULL,
  `Alamat` text NOT NULL,
  `TanggalDaftar` date NOT NULL,
  `KategoriAnggota` text NOT NULL,
  `idGenerate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasilformbuku`
--

CREATE TABLE IF NOT EXISTS `hasilformbuku` (
  `idBuku` int(11) NOT NULL,
  `judul` text NOT NULL,
  `kategori` text NOT NULL,
  `kodekategori` text NOT NULL,
  `pengarang` text NOT NULL,
  `penerbit` text NOT NULL,
  `tahunterbit` int(11) NOT NULL,
  `halamanbuku` int(11) NOT NULL,
  `hargabeli` int(11) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `supplier` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasilformpeminjaman`
--

CREATE TABLE IF NOT EXISTS `hasilformpeminjaman` (
  `nopeminjaman` int(11) NOT NULL,
  `namapeminjam` text NOT NULL,
  `kodebuku` text NOT NULL,
  `tanggal pinjam` date NOT NULL,
  `tanggal kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasilformbuku`
--
ALTER TABLE `hasilformbuku`
 ADD PRIMARY KEY (`idBuku`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
