-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2015 at 05:25 PM
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
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
`id_anggota` int(20) NOT NULL,
  `nama_anggota` text NOT NULL,
  `telefon_anggota` int(50) NOT NULL,
  `alamat_anggota` text NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kat_ang` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `telefon_anggota`, `alamat_anggota`, `tanggal_daftar`, `id_kat_ang`) VALUES
(10000, 'melodi', 8181, 'jajajaja', '2015-04-26 06:42:16', '123'),
(10001, 'asdf', 103, 'asdfsadf', '2015-04-26 10:36:16', '12');

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
  `id_kat_buku` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `pengarang_buku`, `penerbit_buku`, `tahun_terbit`, `halaman_buku`, `harga_jual`, `keterangan`, `id_kat_buku`) VALUES
('asdf', 'abc', 'asdf', 'basdf', 0, 1332, 1332, '', 'basfb');

-- --------------------------------------------------------

--
-- Table structure for table `inventarisasi_buku`
--

CREATE TABLE IF NOT EXISTS `inventarisasi_buku` (
  `id_buku` varchar(20) NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_supplier` varchar(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `kode_buku` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventarisasi_buku`
--

INSERT INTO `inventarisasi_buku` (`id_buku`, `tanggal_masuk`, `id_supplier`, `harga_beli`, `kode_buku`) VALUES
('', '2015-04-26 06:39:51', '12', 1223, 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_anggota`
--

CREATE TABLE IF NOT EXISTS `kategori_anggota` (
  `kode_kat_ang` varchar(20) NOT NULL,
  `nama_kat_angg` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE IF NOT EXISTS `kategori_buku` (
  `kode_kat_buku` varchar(20) NOT NULL,
  `nama_kat_buku` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` varchar(20) NOT NULL,
  `nama_menu` text NOT NULL,
  `modal` int(20) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
`id_peminjaman` int(20) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali_harus` date NOT NULL,
  `tanggal_kembali_real` date NOT NULL,
  `denda` int(20) DEFAULT NULL,
  `id_peminjam` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali_harus`, `tanggal_kembali_real`, `denda`, `id_peminjam`) VALUES
(1, 'asdfasdf', '2015-04-26', '0000-00-00', '0000-00-00', NULL, 'asdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
`id_penjualan` int(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `tanggal_jual` date NOT NULL,
  `id_pembeli` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`id_supplier` int(11) NOT NULL,
  `nama_supplier` text NOT NULL,
  `telefon_supplier` int(20) NOT NULL,
  `alamat_supplier` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `telefon_supplier`, `alamat_supplier`) VALUES
(1, 'alhamdulillah', 819191, 'wasyukurillah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `inventarisasi_buku`
--
ALTER TABLE `inventarisasi_buku`
 ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori_anggota`
--
ALTER TABLE `kategori_anggota`
 ADD PRIMARY KEY (`kode_kat_ang`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
 ADD PRIMARY KEY (`kode_kat_buku`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
 ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
 ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
MODIFY `id_anggota` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
MODIFY `id_peminjaman` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
MODIFY `id_penjualan` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
