-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 05:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtg`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `wins` int(11) NOT NULL DEFAULT '0',
  `ties` int(11) NOT NULL DEFAULT '0',
  `losses` int(11) NOT NULL DEFAULT '0',
  `text_color` varchar(6) NOT NULL,
  `background_color` varchar(6) NOT NULL,
  `avatar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `wins`, `ties`, `losses`, `text_color`, `background_color`, `avatar`) VALUES
(0, 'Matt', 0, 0, 0, 'C0C0C0', '000080', 'player_images/0.jpg'),
(1, 'Bob', 0, 0, 0, 'FFFFFF', '000000', 'player_images/1.jpg'),
(2, 'Dave', 0, 0, 0, 'B0AB29', '4D8246', 'player_images/2.jpg'),
(3, 'Nate', 0, 0, 0, 'FFFFFF', 'BB2FEF', 'player_images/3.jpg'),
(4, 'Lindsay', 0, 0, 0, 'B14AD7', '888888', 'player_images/4.jpg'),
(5, 'Nick', 0, 0, 0, 'B10808', '41290C', 'player_images/5.jpg'),
(6, 'Dead', 0, 0, 0, '6DE339', '214441', 'player_images/6.jpg'),
(7, 'Bruce', 0, 0, 0, '41B84C', '000000', 'player_images/7.jpg'),
(8, 'Spike', 0, 0, 0, '000000', 'E126DA', 'player_images/8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
