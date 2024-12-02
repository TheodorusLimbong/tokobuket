-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 04:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_tokoonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(8, 'dvgaby', 'admin1', 'c84258e9c39059a89ab77d846ddab909', '1266523374_logobuket.png'),
(9, 'cindy', 'admin2', '010204', '467507127_bglogin.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_new` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_email`, `customer_hp`, `customer_alamat`, `customer_password`, `customer_new`) VALUES
(9, 'gaby', 'dvgaby@gmail.com', '4342', 'jalan yosudarso 10', 'ddaf3e29375ed9565450c316ebc91cae', 1),
(10, 'sky', 'bluesky@gmail.com', '4342', 'Universitas Palangka Raya, Palangka Raya, Indonesia', 'ddaf3e29375ed9565450c316ebc91cae', 1),
(11, 'monmoon', 'monmoon@gmail.com', '081251167', 'jalan karet', 'efdd7ce8badb51d4b81fd6489beb9f66', 1),
(12, 'panji', 'oktapanji0@mhs.eng.upr.ac.id', '923829732', 'Universitas Palangka Raya, Palangka Raya, Indonesia', 'ddaf3e29375ed9565450c316ebc91cae', 0),
(26, 'natan', 'natan@gmail.com', '3242', 'sdfsdf', 'f39fae12f6f866c7e6ac6f54c700c204', 0),
(27, 'natan', 'natan2@gmail.com', '0843534534', 'fsdfsdfsd', 'f39fae12f6f866c7e6ac6f54c700c204', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_customer` int(11) NOT NULL,
  `invoice_nama` varchar(255) NOT NULL,
  `invoice_hp` varchar(255) NOT NULL,
  `invoice_alamat` text NOT NULL,
  `invoice_status` int(11) NOT NULL,
  `invoice_bukti` text NOT NULL,
  `total_bayar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_tanggal`, `invoice_customer`, `invoice_nama`, `invoice_hp`, `invoice_alamat`, `invoice_status`, `invoice_bukti`, `total_bayar`) VALUES
(17, '2024-11-13', 10, 'lisa', '222221412', 'jalan ahmad yani', 5, '293587814.jpg', NULL),
(18, '2024-11-14', 10, 'lila', '09323232321', 'jalan yos 3', 0, '', NULL),
(19, '2024-11-14', 10, 'okta ', '087576367722', 'jalan yos 4', 0, '', NULL),
(21, '2024-11-16', 10, 'theo', '09928281821', 'jalan yos 4', 0, '', NULL),
(22, '2024-11-18', 11, 'monmoon', '081251161788', 'jalan karet', 5, '1633036303.jpg', NULL),
(23, '2024-11-22', 12, 'panji', '9293293020', 'jalan ahmad yani ', 0, '', NULL),
(24, '2024-11-23', 12, 'Natan', '5656', 'dfdfgdfgd', 0, '', NULL),
(25, '2024-11-23', 12, 'fgh', '45', 'dfgd', 0, '', NULL),
(26, '2024-11-23', 13, 'sdfsd', '4354', 'dsfsdf', 0, '', NULL),
(27, '2024-11-23', 14, 'were', '343432', 'sdsdfds', 5, '964824567.jpg', 275000),
(28, '2024-11-23', 14, 'natan lagi', '08343432', 'asoyy', 0, '', 100000),
(29, '2024-11-23', 15, 'natan', '0854565464', 'ghfghfhf', 0, '', 54187.5),
(30, '2024-11-23', 16, 'sfdsf', '033443534', 'sdfsdfsdf', 0, '', 72250),
(31, '2024-11-23', 17, 'natan', '3545', 'dgdffd', 0, '', 72250),
(32, '2024-11-23', 18, 'sdsad', '324234', 'asdasdas', 0, '', 72250),
(33, '2024-11-23', 20, 'sdsd', '3243', 'sds', 0, '', 100000),
(34, '2024-11-23', 21, 'wqewqe', '2323', 'sdsad', 0, '', 72250),
(35, '2024-11-23', 22, 'wewe', '34324', 'sdasd', 0, '', 72250),
(36, '2024-11-23', 23, 'sdasd', '2323', 'sdasd', 0, '', 85000),
(37, '2024-11-23', 23, 'werwe', '33434', 'sfsdf', 0, '', 54187.5),
(38, '2024-11-23', 24, 'erew', '3423', 'sffdsf', 0, '', 85000),
(39, '2024-11-23', 24, 'werwer', '32432', 'dsfsd', 0, '', 100000),
(40, '2024-11-23', 25, 'Natannael', '08234324', 'Jalan Tingang', 0, '', 72250),
(41, '2024-11-23', 25, 'erwe', '35345', 'xcvxc', 0, '', 100000),
(42, '2024-11-23', 26, 'sdfsdfsd', '3432', 'sdfsd', 0, '', 85000),
(43, '2024-11-23', 26, 'dfsadfsdf', '35345', 'dsfdfsf', 0, '', 100000),
(44, '2024-11-23', 27, 'natan', '34433', 'dsfsdf', 0, '', 85000),
(45, '2024-11-23', 27, 'natannnael', '3453453', 'dfsdfds', 0, '', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Tidak Berkategori'),
(10, 'buket wisuda '),
(11, 'buket sempro ');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_jumlah` int(11) NOT NULL,
  `produk_berat` int(11) NOT NULL,
  `produk_foto1` varchar(255) DEFAULT NULL,
  `produk_foto2` varchar(255) DEFAULT NULL,
  `produk_foto3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_nama`, `produk_kategori`, `produk_harga`, `produk_keterangan`, `produk_jumlah`, `produk_berat`, `produk_foto1`, `produk_foto2`, `produk_foto3`) VALUES
(15, 'buket bunga', 1, 75000, '<p>buket bunga yang bagus untuk hari hari specia anda&nbsp;</p>', 1, 1, '215752319_bucket bunga (5).jpg', '', ''),
(16, 'buket model kupu-kupu ', 1, 100000, '<p>buket bermodel kupu kupu&nbsp;</p>', 3, 1, '1511856427_kupu-kupu.jpg', '', ''),
(17, 'buket sempro', 1, 100000, '<p>wdawds</p>', 3, 0, '1219042439_WhatsApp Image 2024-11-07 at 12.20.22.jpeg', '', ''),
(18, 'buket  bla vbla ', 1, 100000, '<p>sangat bagus&nbsp;</p>', 12, 0, '1260944687_bucket boneka (4).jpg', '494805358_INTERNATIONAL DAY.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_jumlah`, `transaksi_harga`) VALUES
(28, 17, 15, 1, 75000),
(29, 18, 15, 1, 75000),
(30, 19, 15, 1, 75000),
(32, 21, 18, 2, 100000),
(33, 22, 17, 1, 100000),
(34, 23, 18, 1, 100000),
(35, 24, 18, 1, 100000),
(36, 25, 17, 1, 100000),
(37, 26, 17, 1, 100000),
(38, 27, 16, 1, 100000),
(39, 27, 17, 1, 100000),
(40, 27, 15, 1, 75000),
(41, 28, 18, 1, 100000),
(42, 29, 15, 1, 75000),
(43, 30, 18, 1, 100000),
(44, 31, 18, 1, 100000),
(45, 32, 17, 1, 100000),
(46, 0, 17, 1, 100000),
(47, 0, 16, 1, 100000),
(48, 33, 17, 1, 100000),
(49, 34, 16, 1, 100000),
(50, 35, 17, 1, 100000),
(51, 36, 17, 1, 100000),
(52, 37, 15, 1, 75000),
(53, 38, 17, 1, 100000),
(54, 39, 16, 1, 100000),
(55, 40, 18, 1, 100000),
(56, 41, 17, 1, 100000),
(57, 42, 17, 1, 100000),
(58, 43, 17, 1, 100000),
(59, 44, 17, 1, 100000),
(60, 45, 17, 1, 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
