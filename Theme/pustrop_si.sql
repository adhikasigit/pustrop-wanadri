-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2015 at 04:51 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

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
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` varchar(20) NOT NULL,
  `nama_anggota` text NOT NULL,
  `telefon_anggota` int(50) NOT NULL,
  `alamat_anggota` text NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kat_ang` varchar(20) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `kode_buku` varchar(20) NOT NULL,
  `judul_buku` text NOT NULL,
  `pengarang_buku` varchar(20) NOT NULL,
  `penerbit_buku` varchar(20) NOT NULL,
  `tahun_terbit` int(20) NOT NULL,
  `halaman_buku` int(20) NOT NULL,
  `harga_jual` int(20) DEFAULT NULL,
  `keterangan` text,
  `id_kat_buku` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_buku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventarisasi_buku`
--

CREATE TABLE IF NOT EXISTS `inventarisasi_buku` (
  `id_buku` varchar(20) NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_supplier` varchar(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_anggota`
--

CREATE TABLE IF NOT EXISTS `kategori_anggota` (
  `kode_kat_ang` varchar(20) NOT NULL,
  `nama_kat_angg` text NOT NULL,
  PRIMARY KEY (`kode_kat_ang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE IF NOT EXISTS `kategori_buku` (
  `kode_kat_buku` varchar(20) NOT NULL,
  `nama_kat_buku` text NOT NULL,
  PRIMARY KEY (`kode_kat_buku`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` varchar(20) NOT NULL,
  `nama_menu` text NOT NULL,
  `modal` int(20) NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` int(20) NOT NULL AUTO_INCREMENT,
  `id_buku` varchar(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali_harus` date NOT NULL,
  `tanggal_kembali_real` date NOT NULL,
  `denda` int(20) DEFAULT NULL,
  `id_peminjam` varchar(20) NOT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_penjualan` int(20) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(20) NOT NULL,
  `tanggal_jual` date NOT NULL,
  `id_pembeli` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama_supplier` text NOT NULL,
  `telefon_supplier` int(20) NOT NULL,
  `alamat_supplier` text NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
