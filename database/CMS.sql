-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 03:44 PM
-- Server version: 8.1.0
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


/*mysql -u root -p */;
--
-- Database: `CMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  `profileURL` varchar(255) DEFAULT NULL
);

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `position`, `profileURL`) VALUES
(1, 'Rupali', 'admin', 'Lead Developer', 'https://media.licdn.com/dms/image/D4D03AQGoF1RTHzNwMw/profile-displayphoto-shrink_800_800/0/1698758401443?e=1717632000&v=beta&t=SVxyAFJjiCHY8dMwUUIQjyH7A8N8WnkAuJOvdKO67Xw'),
(2, 'Sapna', 'admin', 'Associate Developer', 'https://media.licdn.com/dms/image/D5635AQFsmHEFBO0wpg/profile-framedphoto-shrink_800_800/0/1709462131405?e=1716807600&v=beta&t=rc4gbrHwycfKMaH7klqypADyemj90IjfoRIrTLRlY2k'),
(3, 'Puja', 'admin', 'Lead Developer', 'https://media.licdn.com/dms/image/D5603AQEiaCexxyF0bA/profile-displayphoto-shrink_800_800/0/1712212346518?e=1718236800&v=beta&t=yXaUynAFf9wiuyrKyyumUez_uJXiye_pYASLqe66HhU'),
(4, 'Diksha', 'admin', 'Developer', 'https://media.licdn.com/dms/image/D4D03AQGIvwOoVpgHyQ/profile-displayphoto-shrink_800_800/0/1673153703844?e=1718236800&v=beta&t=fMrJSsrPpjrJ75kZSgzSbvZw5J4PiYYqx3jjLX_IwfA')
;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(10) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL
);

--
-- Dumping data for table `complaints`
--




--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
