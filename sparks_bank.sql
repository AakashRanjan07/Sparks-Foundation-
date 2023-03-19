-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Wilson', 'Deepak', 9, '2023-03-05 18:08:56')
(2, 'Shreyash', 'Deepak', 9, '2023-03-06 18:08:56'),
(3, 'Wilson', 'Jubin', 100, '2023-03-07 14:55:43'),
(4, 'Shreyash', 'Priyanka', 1, '2023-03-08 14:58:55'),
(5, 'Jubin', 'Brevis', 5000, '2023-0-09 21:49:16'),
(6, 'Abhinav', 'Priyanka', 5000, '2023-03-10 20:41:06'),
(7, 'Brevis', 'Abhinav', 5000, '2023-03-15 23:34:40'),
(8, 'Priyanka', 'Brevis', 5000, '2023-03-18 10:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Aakash R', 'aakashranjan0702@gmail.com', 70000),
(2, 'Wilson', 'wilsonkumar85@gmail.com', 30000),
(3, 'Abhinav', 'abhinavshah77@gmail.com', 39900),
(4, 'Priyanka', 'priyanka12@gmail.com', 10000),
(5, 'Shreyash', 'shreyash28@gmail.com', 40000),
(6, 'Jubin', 'jubinsingh88@gmail.com', 19990),
(7, 'Deepak', 'deepak1298@gmail.com', 50009),
(8, 'Brevis', 'Brevis99@gmail.com', 40100),
(9, 'Sanaya', 'sanaya588@gmail.com', 30000),
(10, 'Tarun', 'tarunk34@gmail.com', 50001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
