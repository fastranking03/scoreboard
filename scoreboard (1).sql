-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 10:55 AM
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
-- Database: `scoreboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `fastranking`
--

CREATE TABLE `fastranking` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `score` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fastranking`
--

INSERT INTO `fastranking` (`id`, `name`, `score`) VALUES
(2, 'Deepak', '0'),
(7, 'Naveen', '2'),
(8, 'Anurag', '2'),
(9, 'Ankita', '0'),
(14, 'Yashwin', '1'),
(15, 'Shone', '3'),
(16, 'Dhruv', '0'),
(20, 'Harsh', '1'),
(22, 'Franklin', '0'),
(23, 'Mamta', '1'),
(25, 'Rohit', '2');

-- --------------------------------------------------------

--
-- Table structure for table `score_data`
--

CREATE TABLE `score_data` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `score` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `score_data`
--

INSERT INTO `score_data` (`id`, `emp_name`, `score`, `user_id`, `user_name`, `created_at`) VALUES
(36, 'Ankita', '1', 3, 'fastranking', '2025-02-12 14:15:25'),
(37, 'Anurag', '4', 3, 'fastranking', '2025-02-12 14:15:35'),
(38, 'Naveen', '2', 3, 'fastranking', '2025-02-12 14:15:45'),
(39, 'Franklin', '1', 3, 'fastranking', '2025-02-12 14:15:54'),
(40, 'Mamta', '2', 3, 'fastranking', '2025-02-12 17:19:43'),
(41, 'Shone', '4', 3, 'fastranking', '2025-02-12 17:19:43'),
(42, 'Deepak', '5', 3, 'fastranking', '2025-02-12 17:19:44'),
(45, 'Gunjan', '0', 4, 'sparta', '2025-02-12 14:17:41'),
(46, 'Mankirat', '0', 4, 'sparta', '2025-02-12 14:17:48'),
(47, 'Naveen', '0', 4, 'sparta', '2025-02-12 14:17:55'),
(48, 'Mehul', '0', 4, 'sparta', '2025-02-12 14:18:02'),
(49, 'Saksham', '0', 4, 'sparta', '2025-02-12 14:18:09'),
(50, 'Sanday', '0', 4, 'sparta', '2025-02-12 14:18:13'),
(51, 'Shehbaz', '0', 4, 'sparta', '2025-02-12 17:39:12'),
(52, 'Akriti', '1', 5, 'veerepairs', '2025-02-12 14:19:10'),
(53, 'Kavi', '1', 5, 'veerepairs', '2025-02-12 14:19:25'),
(54, 'Mannat', '1', 5, 'veerepairs', '2025-02-12 14:19:31'),
(55, 'Geeta', '5', 5, 'veerepairs', '2025-02-12 17:21:02'),
(56, 'Karan', '0', 5, 'veerepairs', '2025-02-12 14:19:50'),
(57, 'Muskan', '0', 5, 'veerepairs', '2025-02-12 14:20:01'),
(58, 'Mayank', '0', 5, 'veerepairs', '2025-02-12 15:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `sparta_telecom`
--

CREATE TABLE `sparta_telecom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `score` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sparta_telecom`
--

INSERT INTO `sparta_telecom` (`id`, `name`, `score`) VALUES
(1, 'Naveen', '0'),
(3, 'Sandy', '0'),
(12, 'Taranpreet', '0'),
(14, 'Vanya', '0'),
(19, 'Saksham', '0'),
(21, 'Mehul', '0'),
(22, 'Gunjan', '0'),
(23, 'Shehbaz', '0'),
(24, 'Mankirat', '0'),
(25, 'Tanvi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `company`) VALUES
(3, 'fastranking', 'fast@admin', 'f'),
(4, 'sparta', 'sparta@admin', 's'),
(5, 'veerepairs', 'veerepairs@admin', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `v_repair`
--

CREATE TABLE `v_repair` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `score` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `v_repair`
--

INSERT INTO `v_repair` (`id`, `name`, `score`) VALUES
(4, 'Geeta', '1'),
(7, 'Pooja', '0'),
(9, 'Muskan', '0'),
(17, 'Mannat', '0'),
(24, 'Karan', '0'),
(25, 'Kavi', '0'),
(28, 'Mayank', '0'),
(29, 'Akriti', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fastranking`
--
ALTER TABLE `fastranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score_data`
--
ALTER TABLE `score_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sparta_telecom`
--
ALTER TABLE `sparta_telecom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_repair`
--
ALTER TABLE `v_repair`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fastranking`
--
ALTER TABLE `fastranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `score_data`
--
ALTER TABLE `score_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sparta_telecom`
--
ALTER TABLE `sparta_telecom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `v_repair`
--
ALTER TABLE `v_repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
