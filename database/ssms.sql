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
-- Database: `ssms`
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
(2, 'Sapna', 'admin', 'Associate Developer', 'https://media.licdn.com/dms/image/D5635AQFsmHEFBO0wpg/profile-framedphoto-shrink_400_400/0/1709462131405?e=1712941200&v=beta&t=5bLZeDnF0ie0tI7iVUZ3-A_dkC4_IN_T9J7sY_nL1Go'),
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

INSERT INTO `complaints` (`id`, `name`, `contact`, `email`, `title`, `description`, `uniqueId`, `status`, `remarks`,`category`) VALUES
(1, 'Amit Sharma', '9876543211', 'amit@example.com', 'Billing Issue', 'I was charged incorrectly for my last purchase.', 'ABCD1234', 1, 'Investigating'),
(2, 'Priya Patel', '9876543212', 'priya@example.com', 'Product Quality', 'The product I received is of poor quality and doesn\'t work as expected.', 'EFGH5678', 1, 'Pending'),
(3, 'Rajesh Kumar', '9876543213', 'rajesh@example.com', 'Shipping Delay', 'My order has been delayed for more than a week.', 'IJKL9012', 1, 'Investigating'),
(4, 'Neha Verma', '9876543214', 'neha@example.com', 'Product Missing', 'One of the items in my order is missing from the delivery.', 'MNOP3456', 1, 'Investigating'),
(5, 'Ankur Gupta', '9876543215', 'ankur@example.com', 'Defective Product', 'The product I received is damaged and unusable.', 'QRST7890', 1, 'Pending'),
(6, 'Pooja Singh', '9876543216', 'pooja@example.com', 'Late Delivery', 'My order has not been delivered even though it was scheduled for today.', 'UVWX1234', 1, 'Investigating'),
(7, 'Rahul Singh', '9876543217', 'rahul@example.com', 'Wrong Product', 'I received a completely different product from what I ordered.', 'YZAB5678', 2, 'Pending'),
(8, 'Shreya Pandey', '9876543218', 'shreya@example.com', 'Refund Request', 'I would like to request a refund for my recent purchase.', 'CDEF9012', 1, 'Processing'),
(9, 'Nisha Gupta', '9876543219', 'nisha@example.com', 'Product Quality', 'The quality of the product is not up to the mark as advertised.', 'KLMN7890', 1, 'Investigating'),
(10, 'Vikram Sharma', '9876543220', 'vikram@example.com', 'Delayed Refund', 'I requested a refund, but it\'s taking too long to process.', 'OPQR1234', 1, 'Processing'),


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
