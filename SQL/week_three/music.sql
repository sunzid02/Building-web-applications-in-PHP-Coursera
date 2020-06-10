-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2020 at 05:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE `Album` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`id`, `artist_id`, `title`) VALUES
(1, 1, 'Onno Somoy 1'),
(2, 1, 'Onno Somoy 2'),
(3, 1, 'Onno Somoy 3'),
(4, 2, 'Onno Somoy 4'),
(5, 3, 'Onno Somoy 5');

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`id`, `name`) VALUES
(1, 'Artcell'),
(2, 'Aurthohin'),
(3, 'James');

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Metal');

-- --------------------------------------------------------

--
-- Table structure for table `Track`
--

CREATE TABLE `Track` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Track`
--

INSERT INTO `Track` (`id`, `title`, `album_id`, `genre_id`, `len`, `rating`, `count`) VALUES
(1, 'Rahur Grash', 1, 1, 20, 5, 0),
(2, 'Onno Somoy', 1, 1, 50, 5, 2),
(3, 'Pothchola', 3, 2, 20, 5, 0),
(4, 'Multiplan', 3, 2, 2, 5, 2),
(5, 'jani', 5, 2, 30, 5, 5),
(6, 'Rahur Grash 2', 2, 1, 20, 5, 0),
(7, 'Onno Somoy 2', 2, 1, 50, 4, 2),
(8, 'Pothchola 2', 1, 2, 20, 4, 0),
(9, 'Multiplan 2', 5, 2, 2, 5, 9),
(10, 'jani 1', 5, 2, 30, 5, 5),
(11, 'Rahur Grash 3', 3, 1, 20, 5, 0),
(12, 'Onno Somoy 3', 3, 1, 50, 4, 2),
(13, 'Pothchola 3', 3, 2, 20, 4, 0),
(14, 'Multiplan 3', 5, 2, 2, 5, 9),
(15, 'jani 3', 5, 2, 30, 5, 5),
(16, 'Rahur Grash 4', 2, 1, 20, 5, 0),
(17, 'Onno Somoy 4', 2, 1, 50, 4, 2),
(18, 'Pothchola 4', 2, 2, 20, 4, 0),
(19, 'Multiplan 4', 4, 2, 2, 5, 9),
(20, 'jani 4', 4, 2, 30, 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`) USING HASH;

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- Indexes for table `Track`
--
ALTER TABLE `Track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Album`
--
ALTER TABLE `Album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Track`
--
ALTER TABLE `Track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
