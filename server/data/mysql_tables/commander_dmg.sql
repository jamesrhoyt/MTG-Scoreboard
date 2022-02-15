-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 01:50 AM
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
-- Table structure for table `commander_dmg`
--

CREATE TABLE `commander_dmg` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `life` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commander_dmg`
--

INSERT INTO `commander_dmg` (`id`, `game_id`, `from_id`, `to_id`, `life`) VALUES
(0, 0, 0, 1, 20),
(1, 0, 1, 0, 20),
(2, 2, 0, 0, 0),
(3, 2, 0, 1, 0),
(4, 2, 0, 2, 0),
(5, 2, 1, 0, 0),
(6, 2, 1, 1, 0),
(7, 2, 1, 2, 0),
(8, 2, 2, 0, 0),
(9, 2, 2, 1, 0),
(10, 2, 2, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commander_dmg`
--
ALTER TABLE `commander_dmg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
