-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 01:51 AM
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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `game_id` int(11) NOT NULL,
  `life` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `partner1_id` int(11) NOT NULL,
  `partner1_life` int(11) NOT NULL,
  `partner1_poison` int(11) NOT NULL,
  `partner2_id` int(11) NOT NULL,
  `partner2_life` int(11) NOT NULL,
  `partner2_poison` int(11) NOT NULL,
  `emperor` tinyint(1) NOT NULL,
  `poison` int(11) NOT NULL,
  `isAlive` bit NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_id`, `name`, `game_id`, `life`, `player_id`, `partner1_id`, `partner1_life`, `partner1_poison`, `partner2_id`, `partner2_life`, `partner2_poison`, `emperor`, `poison`, `isAlive`) VALUES
(0, 0, 'Matt\'s Team', 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1, 1, 'Bob\'s Team', 0, 20, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1),
(2, 0, 'Bob\'s Team', 2, 40, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1),
(3, 1, 'Matt\'s Team', 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 2, 'Dave\'s Team', 2, 40, 2, 2, 0, 0, 2, 0, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
