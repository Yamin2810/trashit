-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 11:24 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trash_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `image` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `organisasi_id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(15) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `phone` int(15) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `tipe` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `birth`, `email`, `pass`, `jenis_kelamin`, `phone`, `lokasi`, `tipe`) VALUES
(1, 'Yoichi', 'Tests', '2019-12-10', 'yoichi@trashit.com', 'yoichi', 'on', 2147483647, 'Tekukur', 'organisasi'),
(2, 'admin', 'admin', '2019-12-02', 'admin@trashit.com', 'admin', 'laki-laki', 518313122, 'Server', 'admin'),
(3, 'Aldy', 'M Heryana', '0000-00-00', 'aldidi@trashit.com', 'aldiditrashit', 'on', 9864884, 'Bogor', 'pengguna'),
(4, 'hah', 'Tests', '0000-00-00', 'hah@trashit.com', 'aldiditrashit', 'on', 2147483647, 'Alamat Palsu', 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `order_id` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_order` varchar(20) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `berat` double NOT NULL,
  `stat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`order_id`, `nama`, `jenis_order`, `alamat`, `berat`, `stat`) VALUES
(1, 'Aldy', '\"Notebook dan Tablet', 'Alamat Palsu', 1, 'Tunggu'),
(2, 'Aldy', 'Notebook dan Tablet', 'Alamat Palsu', 1, 'Tunggu'),
(3, 'hah', 'Mobile Phone', 'Tekukur', 30, 'Tunggu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`organisasi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
