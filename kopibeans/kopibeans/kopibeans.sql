-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 05:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopibeans`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_whatsapp` varchar(14) NOT NULL,
  `password` text NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `tipe_daftar` varchar(50) NOT NULL,
  `tipe_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, '1631191185.png', 'User Biasa', 'user@gmail.com', '085381259307', '$2y$10$uDy0.tHRpB0alUAAwL.1XOT/f3Y6O4SfIZ28rnhyyRlkEgacqimPu', '2021-06-18 16:20:48', '', ''),
(15, '1631188751.png', 'Administrator', 'admin@gmail.com', '082377823390', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2021-07-11 01:18:30', '', 'Admin'),
(18, 'user.png', 'Siti Nur Aini', 'aini@gmail.com', '086783991008', '$2y$10$q6.Dxb6HclBHLgbGycRX8OG2aSAreM73i8JTNPITAxAb8FYeXa2Mi', '2023-06-11 17:19:46', '', ''),
(19, 'user.png', 'Retno Hestiningrum', 'hesti@gmail.com', '098753689', '$2y$10$14j9HU2dn3xYX6yWPThJOOWVeH0UnKxxeyRHydmOUsgGVEaax3PWO', '2023-06-15 09:25:52', '', ''),
(20, 'user.png', 'Maufiroh', 'ufi@gmail.com', '011111111', '$2y$10$K2fkMcTFpvXriCfCa79Vl.VBOZ6JGwocY6b6WgUNTlRi.bbAO2oue', '2023-06-15 15:46:11', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner_promo`
--

INSERT INTO `banner_promo` (`idbanner`, `image`, `status`) VALUES
(25, '6630882b82d3c8d0dd87b54cf0542898.png', ''),
(26, 'a7272767e891317f9557d360f62cda9f.png', ''),
(27, 'f06b0e516f08b08246224b97ed23ee73.png', ''),
(28, '6a961356b7e36c65da835e655ec480e3.png', ''),
(29, '637909ff22ce0c1ea24584b2b157668f.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '1688054400');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `judul` varchar(200) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `berat` int(11) NOT NULL,
  `warna` text NOT NULL,
  `ukuran` text NOT NULL,
  `stok` int(5) NOT NULL,
  `terjual` int(5) NOT NULL,
  `diskon` int(3) NOT NULL,
  `tipe_iklan` varchar(15) NOT NULL,
  `waktu` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(50, 12, '1686495998-1.png', 'Arabika Ijen', 66000, 'Kopi Arabika ijen merupakan salah satu kopi nusantara yang memiliki cita rarsa tidak hanya nikmat tetapi juga sangat unik. Cita rasa khas dari kopi ini adalah perpeduan antara asam jawa denga pedas', 1000, '', '', 50, 0, 20, 'flash sale', '2023-06-11 17:06:38', ''),
(51, 12, '1686496062-1.png', 'Arabika Wamena', 77000, 'Kopi Arabika Wamena', 1000, '', '', 90, 0, 0, '', '2023-06-11 17:07:41', ''),
(52, 12, '1686496102-1.png', 'Arabika Malabar', 150000, 'Kopi arabika malabar', 1000, '', '', 78, 0, 15, 'flash sale', '2023-06-11 17:08:22', ''),
(53, 12, '1686496144-1.png', 'Arabika Luwak Liar', 450000, 'Arabika Luwak Liar', 1000, '', '', 25, 0, 0, '', '2023-06-11 17:09:04', ''),
(54, 13, '1686496189-1.png', 'Rabusta Temanggung', 95000, 'Robusta Temanggung', 1000, '', '', 150, 0, 0, '', '2023-06-11 17:09:48', ''),
(55, 13, '1686496243-1.png', 'Robusta Pupuan', 120000, 'Kopi robusta pupuan', 1000, '', '', 230, 0, 0, '', '2023-06-11 17:10:42', ''),
(56, 13, '1686496286-1.png', 'Robusta Flores', 200000, 'Kopi robusta flores', 1000, '', '', 9, 0, 0, '', '2023-06-11 17:11:25', ''),
(57, 13, '1686496330-1.png', 'Robusta Toraja', 300000, 'Kopi robusta toraja', 1000, '', '', 40, 0, 0, '', '2023-06-11 17:12:09', ''),
(58, 13, '1686496367-1.png', 'Robusta Luwak Liar', 330000, 'Kopi robusta luwak liar', 1000, '', '', 23, 0, 0, '', '2023-06-11 17:12:47', ''),
(59, 14, '1686496412-1.png', 'Liberika Banyuwangi', 190000, 'Kopi liberika Banyuwangi', 1000, '', '', 89, 0, 0, '', '2023-06-11 17:13:31', ''),
(60, 14, '1686496455-1.png', 'Liberika Meranti', 88000, 'Kopi liberika meranti', 1000, '', '', 179, 0, 0, '', '2023-06-11 17:14:15', ''),
(61, 14, '1686496496-1.png', 'Liberika Wonogiri', 66000, 'Kopi liberika wonogiri', 1000, '', '', 51, 0, 0, '', '2023-06-11 17:14:56', ''),
(62, 15, '1686496545-1.png', 'Gayo Luwak Liar', 450000, 'Kopi gayo luwak liar', 1000, '', '', 19, 0, 0, '', '2023-06-11 17:15:44', ''),
(63, 15, '1686496607-1.png', 'Gayo Takengon Honey', 115000, 'Kopi gayo takengon honey', 1000, '', '', 47, 0, 25, 'flash sale', '2023-06-11 17:16:47', ''),
(64, 16, '1686496665-1.png', 'Sidikalang Arabika', 220000, 'Kopi sidikalang arabika', 1000, '', '', 32, 0, 0, '', '2023-06-11 17:17:44', ''),
(65, 16, '1686496712-1.png', 'Sidikalang Blend', 75000, 'Kopi sidikalang blend', 1000, '', '', 55, 0, 70, 'flash sale', '2023-06-11 17:18:31', ''),
(66, 12, '1686917770-1.jpg', 'coba1', 15000, 'cobaa1', 1, '', '', 1, 0, 0, '', '2023-06-16 14:16:09', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `warna_i` text NOT NULL,
  `ukuran_i` text NOT NULL,
  `harga_i` int(11) NOT NULL,
  `diskon_i` int(11) NOT NULL,
  `kurir` varchar(10) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `layanan_kurir` text NOT NULL,
  `etd` text NOT NULL,
  `harga_ongkir` int(11) NOT NULL,
  `resi` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `tipe_progress` varchar(50) NOT NULL,
  `transaction` text NOT NULL,
  `type` text NOT NULL,
  `order_id` text NOT NULL,
  `fraud` text NOT NULL,
  `bank_manual` text NOT NULL,
  `bukti_transfer` text NOT NULL,
  `waktu_transaksi` text NOT NULL,
  `waktu_dikirim` text NOT NULL,
  `waktu_selesai` text NOT NULL,
  `waktu_dibatalkan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(102, 29, 14, 1, '', '', 415000, 30, 'jne', 0, 'OKE', '2-3', 15000, '123456', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:38:31', 'Selesai', '', '', '', '', 'BCA', '102-bukti-transfer.png', '2021-07-25 22:38:44', '2021-09-09 12:26:33', '2021-09-09 12:26:48', ''),
(103, 20, 14, 1, '', '', 222000, 0, 'jne', 0, 'OKE', '2-3', 90000, '123', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 23:27:20', 'Selesai', '', '', '', '', 'BCA', '103-bukti-transfer.png', '2021-07-25 23:27:32', '2021-09-09 12:26:21', '2021-09-09 12:26:44', ''),
(105, 21, 14, 1, '', '', 15000000, 0, 'jne', 0, '', '', 0, '', '', '', '', '2021-09-09 12:44:57', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(106, 43, 14, 2, 'merah', '', 10000, 0, '', 0, '', '', 0, '', '1,Bali', '17,Badung', 'hall', '2023-06-10 16:28:45', 'Dikemas', '', '', '', '', 'BCA', '106-bukti-transfer.png', '2023-06-10 17:48:23', '', '', ''),
(107, 56, 18, 1, '', '', 200000, 0, '', 0, '', '', 0, '123', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:24:15', 'Selesai', '', '', '', '', 'BCA', '107-bukti-transfer.jpeg', '2023-06-11 17:25:43', '2023-06-11 17:26:45', '2023-06-11 17:26:51', ''),
(108, 65, 18, 5, '', '', 75000, 50, '', 0, '', '', 0, '1234', '11,Jawa Timur', '31,Bangkalan', 'jl telang', '2023-06-11 17:39:17', 'Selesai', '', '', '', '', 'BCA', '108-bukti-transfer.png', '2023-06-15 15:50:20', '2023-06-16 07:31:42', '2023-06-16 07:31:47', ''),
(109, 57, 18, 1, '', '', 300000, 0, '', 0, '', '', 0, '455', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:39:36', 'Dikirim', '', '', '', '', 'BCA', '109-bukti-transfer.png', '2023-06-16 07:33:49', '2023-06-16 07:35:32', '', ''),
(110, 59, 18, 2, '', '', 190000, 0, '', 0, '', '', 0, '1111', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:39:50', 'Selesai', '', '', '', '', 'BCA', '110-bukti-transfer.jpeg', '2023-06-11 17:40:08', '2023-06-13 13:45:13', '2023-06-13 13:45:54', ''),
(111, 58, 18, 1, '', '', 330000, 0, '', 0, '', '', 0, '123', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:41:03', 'Selesai', '', '', '', '', 'BCA', '111-bukti-transfer.jpeg', '2023-06-11 17:41:18', '2023-06-13 13:45:23', '2023-06-13 13:46:01', ''),
(112, 61, 18, 1, '', '', 66000, 0, '', 0, '', '', 0, '1234', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:41:35', 'Selesai', '', '', '', '', 'BCA', '112-bukti-transfer.jpeg', '2023-06-11 17:41:51', '2023-06-13 13:45:35', '2023-06-16 07:36:02', ''),
(113, 63, 18, 1, '', '', 115000, 0, '', 0, '', '', 0, '1234', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-11 17:42:21', 'Selesai', '', '', '', '', 'BCA', '113-bukti-transfer.jpeg', '2023-06-11 17:42:36', '2023-06-13 13:45:44', '2023-06-16 06:36:05', ''),
(114, 54, 14, 11, '', '', 95000, 0, '', 0, '', '', 0, '999', '1,Bali', '17,Badung', 'hall', '2023-06-11 17:44:33', 'Selesai', '', '', '', '', 'BCA', '114-bukti-transfer.jpeg', '2023-06-11 17:46:03', '2023-06-11 17:52:54', '2023-06-11 17:55:18', ''),
(115, 50, 14, 5, '', '', 66000, 0, '', 0, '', '', 0, '888', '1,Bali', '17,Badung', 'hall', '2023-06-11 17:46:36', 'Selesai', '', '', '', '', 'BCA', '115-bukti-transfer.jpeg', '2023-06-11 17:46:51', '2023-06-11 17:53:09', '2023-06-11 17:55:35', ''),
(116, 59, 14, 5, '', '', 190000, 0, '', 0, '', '', 0, '777', '1,Bali', '17,Badung', 'hall', '2023-06-11 17:47:10', 'Selesai', '', '', '', '', 'BCA', '116-bukti-transfer.jpeg', '2023-06-11 17:47:31', '2023-06-11 17:53:27', '2023-06-11 17:55:47', ''),
(117, 60, 14, 10, '', '', 88000, 0, '', 0, '', '', 0, '000', '1,Bali', '17,Badung', 'hall', '2023-06-11 17:48:00', 'Selesai', '', '', '', '', 'BCA', '117-bukti-transfer.jpeg', '2023-06-11 17:48:15', '2023-06-11 17:52:38', '2023-06-11 17:55:58', ''),
(118, 62, 18, 1, '', '', 450000, 0, '', 0, '', '', 0, '1234', '10,Jawa Tengah', '37,Banjarnegara', 'rumah', '2023-06-13 06:23:11', 'Selesai', '', '', '', '', 'BCA', '118-bukti-transfer.png', '2023-06-13 06:23:29', '2023-06-13 06:23:58', '2023-06-13 06:24:05', ''),
(119, 64, 18, 2, '', '', 220000, 0, '', 0, '', '', 0, '', '11,Jawa Timur', '80,Bojonegoro', 'rumah aini', '2023-06-13 13:39:38', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(120, 60, 18, 1, '', '', 88000, 0, '', 0, '', '', 0, '12345', '11,Jawa Timur', '80,Bojonegoro', 'rumah aini', '2023-06-15 06:45:09', 'Selesai', '', '', '', '', 'BCA', '120-bukti-transfer.png', '2023-06-15 09:21:26', '2023-06-16 14:19:27', '2023-06-16 14:19:42', ''),
(121, 51, 18, 1, '', '', 77000, 0, '', 0, '', '', 0, '', '11,Jawa Timur', '80,Bojonegoro', 'rumah aini', '2023-06-15 09:50:24', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(122, 52, 18, 5, '', '', 150000, 15, '', 0, '', '', 0, '', '11,Jawa Timur', '80,Bojonegoro', 'rumah aini', '2023-06-15 15:22:59', 'Dikemas', '', '', '', '', 'BCA', '122-bukti-transfer.png', '2023-06-15 15:23:17', '', '', ''),
(123, 53, 18, 1, '', '', 450000, 0, '', 0, '', '', 0, '', '11,Jawa Timur', '31,Bangkalan', 'jl telang', '2023-06-16 06:31:11', 'Dikemas', '', '', '', '', 'BCA', '123-bukti-transfer.png', '2023-06-16 07:32:55', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(12, 'Arabika', 'ee9ff1357a60d1b88f1977c521b58481.png'),
(13, 'Robusta', 'da63dbeebf0dfa27781a22208acca54b.png'),
(14, 'Liberika', '21f7f33d307246c641e40db5ddb360e2.png'),
(15, 'Gayo', '2aeed06ec11e4b3d96e9f0b838e567b2.png'),
(16, 'Sidikalang', '5b898ae0513d39357ed913b3baecfba2.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga_k` int(15) NOT NULL,
  `diskon_k` int(11) NOT NULL,
  `warna_k` text NOT NULL,
  `ukuran_k` text NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_iklan`, `id_user`, `jumlah`, `harga_k`, `diskon_k`, `warna_k`, `ukuran_k`, `waktu`) VALUES
(188, 64, 19, 1, 220000, 0, '', '', '2023-06-15 09:26:20'),
(189, 63, 19, 1, 115000, 0, '', '', '2023-06-15 09:26:35'),
(190, 58, 19, 1, 330000, 0, '', '', '2023-06-15 09:26:44'),
(198, 52, 18, 1, 150000, 15, '', '', '2023-06-16 06:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_user`
--

CREATE TABLE `lokasi_user` (
  `idlokasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` text NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(9, 3, 'Jawa Timur', 11, 'Surabaya', 444, '', '', 'Jl banyu urip'),
(10, 14, 'Bali', 1, 'Badung', 17, '', '', 'hall'),
(11, 18, 'Jawa Timur', 11, 'Bangkalan', 31, '', '', 'jl telang');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BCA', '123456789', 'KELOMPOK 4'),
(2, 'BRI', '1876889286539', 'Aini'),
(3, 'Mandiri', '00987627658', 'Kel 4'),
(4, 'BNI', '1009876479343', 'Kel 4');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `nama_notif` text NOT NULL,
  `deskripsi_notif` text NOT NULL,
  `waktu_notif` text NOT NULL,
  `status_notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notif`, `id_user`, `id_invoice`, `nama_notif`, `deskripsi_notif`, `waktu_notif`, `status_notif`) VALUES
(1, 3, 36, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-06-18 14:51:53', 'Read'),
(2, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-22 18:09:46', 'Read'),
(3, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 12:53:23', 'Read'),
(4, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:55', 'Read'),
(5, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(6, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(7, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(8, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(9, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:01:14', 'Read'),
(10, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:01:19', 'Read'),
(11, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:03:03', 'Read'),
(12, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:54', 'Read'),
(13, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:55', 'Read'),
(14, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:05:58', 'Read'),
(15, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:06:00', 'Read'),
(16, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:02', 'Read'),
(17, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:04', 'Read'),
(18, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:07', 'Read'),
(19, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:15', 'Read'),
(20, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:11:39', 'Read'),
(21, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:11:41', 'Read'),
(22, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:12:12', 'Read'),
(23, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:13:50', 'Read'),
(24, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:13:53', 'Read'),
(25, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:15:52', 'Read'),
(26, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:23', 'Read'),
(27, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:24', 'Read'),
(28, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:27', 'Read'),
(29, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:29', 'Read'),
(30, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:11', 'Read'),
(31, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:12', 'Read'),
(32, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:15', 'Read'),
(33, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:16', 'Read'),
(34, 3, 49, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 22:55:36', 'Read'),
(35, 3, 49, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-13 22:55:45', 'Read'),
(36, 3, 48, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 23:43:31', 'Read'),
(37, 3, 66, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:00:16', 'Read'),
(38, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:41:18', 'Read'),
(39, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:42:26', 'Read'),
(40, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:50', 'Read'),
(41, 3, 70, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:57', 'Read'),
(42, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 11:41:08', 'Read'),
(43, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 11:41:08', 'Read'),
(44, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:09:46', 'Read'),
(45, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:09:46', 'Read'),
(46, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:19:14', 'Read'),
(47, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:19:14', 'Read'),
(48, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:22:13', 'Read'),
(49, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:22:13', 'Read'),
(50, 3, 87, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:44:34', 'Read'),
(51, 3, 87, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:44:34', 'Read'),
(52, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:47:14', 'Read'),
(53, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:47:14', 'Read'),
(54, 3, 86, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:09:00', 'Read'),
(55, 3, 86, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:09:00', 'Read'),
(56, 3, 91, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:12:45', 'Read'),
(57, 3, 91, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:12:45', 'Read'),
(58, 3, 92, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:26:19', 'Read'),
(59, 3, 92, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:26:19', 'Read'),
(60, 3, 93, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:19', 'Read'),
(61, 3, 93, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:19', 'Read'),
(62, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:21', 'Read'),
(63, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:21', 'Read'),
(64, 3, 94, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:31:38', 'Read'),
(65, 3, 94, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:31:38', 'Read'),
(66, 3, 95, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:33:05', 'Read'),
(67, 3, 95, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:33:05', 'Read'),
(68, 3, 96, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:36:58', 'Read'),
(69, 3, 96, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:36:58', 'Read'),
(70, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:41:02', 'Read'),
(71, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:41:02', 'Read'),
(72, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:42:33', 'Read'),
(73, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:42:33', 'Read'),
(74, 3, 98, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:44:30', 'Read'),
(75, 3, 98, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:44:30', 'Read'),
(76, 3, 99, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:55:18', ''),
(77, 3, 99, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:55:18', ''),
(78, 3, 99, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:04:10', ''),
(79, 3, 99, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:12:37', ''),
(80, 3, 100, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 17:15:32', ''),
(81, 3, 100, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 17:15:32', ''),
(82, 3, 100, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:15:47', ''),
(83, 3, 100, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:15:52', ''),
(84, 3, 101, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 22:09:55', ''),
(85, 3, 101, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 22:09:55', ''),
(86, 3, 101, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 22:11:24', ''),
(87, 3, 101, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 22:14:15', ''),
(88, 3, 103, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 23:29:08', ''),
(89, 3, 103, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 23:29:08', ''),
(90, 14, 102, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-09-09 12:25:46', 'Read'),
(91, 14, 102, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-09-09 12:25:46', 'Read'),
(92, 14, 103, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:21', 'Read'),
(93, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:30', ''),
(94, 14, 102, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:33', 'Read'),
(95, 14, 103, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:44', 'Read'),
(96, 14, 102, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:48', 'Read'),
(97, 14, 106, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 18:13:53', 'Read'),
(98, 14, 106, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 18:13:53', 'Read'),
(99, 18, 107, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:26:27', 'Read'),
(100, 18, 107, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:26:27', 'Read'),
(101, 18, 107, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-11 17:26:45', 'Read'),
(102, 18, 107, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-11 17:26:51', 'Read'),
(103, 14, 117, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:51:44', ''),
(104, 14, 117, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:51:44', ''),
(105, 14, 116, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:51:50', ''),
(106, 14, 116, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:51:50', ''),
(107, 14, 114, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:51:59', ''),
(108, 14, 114, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:51:59', ''),
(109, 14, 115, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:52:04', ''),
(110, 14, 115, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:52:04', ''),
(111, 14, 117, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-11 17:52:38', ''),
(112, 14, 114, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-11 17:52:54', ''),
(113, 14, 115, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-11 17:53:09', ''),
(114, 14, 116, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-11 17:53:27', ''),
(115, 18, 110, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:53:52', 'Read'),
(116, 18, 110, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:53:52', 'Read'),
(117, 18, 111, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:54:13', 'Read'),
(118, 18, 111, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:54:13', 'Read'),
(119, 18, 112, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:54:23', 'Read'),
(120, 18, 112, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:54:23', 'Read'),
(121, 18, 113, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 17:54:33', 'Read'),
(122, 18, 113, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 17:54:33', 'Read'),
(123, 14, 114, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-11 17:55:18', ''),
(124, 14, 115, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-11 17:55:35', ''),
(125, 14, 116, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-11 17:55:47', ''),
(126, 14, 117, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-11 17:55:58', ''),
(127, 18, 118, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-13 06:23:46', 'Read'),
(128, 18, 118, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-13 06:23:46', 'Read'),
(129, 18, 118, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-13 06:23:58', 'Read'),
(130, 18, 118, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-13 06:24:05', 'Read'),
(131, 18, 110, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-13 13:45:13', 'Read'),
(132, 18, 111, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-13 13:45:23', 'Read'),
(133, 18, 112, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-13 13:45:35', 'Read'),
(134, 18, 113, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-13 13:45:44', 'Read'),
(135, 18, 110, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-13 13:45:54', 'Read'),
(136, 18, 111, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-13 13:46:01', 'Read'),
(137, 18, 113, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-16 06:36:05', 'Read'),
(138, 18, 108, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-16 07:31:21', 'Read'),
(139, 18, 108, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-16 07:31:21', 'Read'),
(140, 18, 122, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-16 07:31:25', 'Read'),
(141, 18, 122, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-16 07:31:25', 'Read'),
(142, 18, 108, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-16 07:31:42', 'Read'),
(143, 18, 108, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-16 07:31:47', 'Read'),
(144, 18, 123, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-16 07:33:25', 'Read'),
(145, 18, 123, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-16 07:33:25', 'Read'),
(146, 18, 109, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-16 07:34:16', 'Read'),
(147, 18, 109, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-16 07:34:16', 'Read'),
(148, 18, 109, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-16 07:35:32', 'Read'),
(149, 18, 112, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-16 07:36:02', 'Read'),
(150, 18, 120, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-16 14:19:10', 'Read'),
(151, 18, 120, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-16 14:19:10', 'Read'),
(152, 18, 120, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-16 14:19:27', 'Read'),
(153, 18, 120, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-16 14:19:42', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idrating`, `id_invoice_rat`, `star_rat`, `deskripsi_rat`, `waktu_rat`) VALUES
(7, 35, 5, 'Barang nya bagus sekali', '2021-06-18 14:51:53'),
(8, 35, 5, '', '2021-06-18 14:51:53'),
(9, 35, 5, '', '2021-06-18 14:51:53'),
(10, 35, 3, '', '2021-06-18 14:51:53'),
(11, 103, 5, 'kerennn dan berkualitas', ''),
(12, 102, 4, 'kerennn dan berkualitas', ''),
(13, 101, 5, 'kerennn dan berkualitas', ''),
(14, 100, 5, 'kerennn dan berkualitas', ''),
(15, 99, 2, 'kegedean', ''),
(16, 107, 5, 'kopinya enak', ''),
(17, 110, 5, 'kopinya enak sekali', ''),
(18, 111, 5, 'wow kopinya enak sekalii', ''),
(19, 118, 5, 'woww kopinya enakk :)', ''),
(20, 113, 5, 'mau ngasih tau kalo kopinya enak banget ga nyesel beli disini', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_apikey`
--

CREATE TABLE `setting_apikey` (
  `id_apikey` int(11) NOT NULL,
  `google_client_id` text NOT NULL,
  `google_client_secret` text NOT NULL,
  `midtrans_client_key` text NOT NULL,
  `midtrans_server_key` text NOT NULL,
  `rajaongkir_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '667755539556-t91a5rigvs8sjn8ov5ob449uofahvjdf.apps.googleusercontent.com', 'egHGBI5BcztK-VbZNeCEHHTW', 'SB-Mid-client-rwRR5kz4E-kNnJs2', 'SB-Mid-server-iU7JbDaoVDjBJu4N-LLH0xW8', 'a4b42f5c23792b524e47263b90b61b34\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `setting_email`
--

CREATE TABLE `setting_email` (
  `id` int(11) NOT NULL,
  `email_notif` text NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `port_smtp` int(11) NOT NULL,
  `username_smtp` varchar(100) NOT NULL,
  `password_smtp` varchar(100) NOT NULL,
  `setfrom_smtp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@401xd.com', 'mail.401xd.com', 465, 'support@401xd.com', 'PASSWORD EMAIL ANDA', 'KOPI BEANS');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(1, 'Facebook', '<i class=\"ri-facebook-box-fill\"></i>', 'https://facebook.com/mycodingxd', ''),
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', 'https://instagram.com/mycodingxd', ''),
(3, 'Whatsapp', '<i class=\"ri-whatsapp-fill\"></i>', 'https://wa.me/6282377823390', ''),
(4, 'Twitter', '<i class=\"ri-twitter-fill\"></i>', 'https://twitter.com/mycodingxd', ''),
(5, 'YouTube', '<i class=\"ri-youtube-fill\"></i>', 'https://youtube.com/mycodingxd', ''),
(6, 'LinkedIn', '<i class=\"ri-linkedin-fill\"></i>', 'https://linkedin.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'logo.png', 'Kopi Beans', 'Pencarian..');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Bali', 'Denpasar', 1, 114);

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', ''),
(2, 'Manual', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indexes for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indexes for table `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indexes for table `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
