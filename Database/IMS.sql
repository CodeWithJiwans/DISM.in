-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2023 at 01:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Fname` text NOT NULL,
  `Lname` text NOT NULL,
  `Email` text NOT NULL,
  `Contact` text NOT NULL,
  `Password` text NOT NULL,
  `SecretKey` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Fname`, `Lname`, `Email`, `Contact`, `Password`, `SecretKey`) VALUES
(1, 'Dhaval', 'Patel', 'admin@bs.ca', '358-1111', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'bb0b2c20da80fc59513c7c88f826426b');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL,
  `userID` text NOT NULL,
  `serviceDate` text NOT NULL,
  `Note` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ID`, `userID`, `serviceDate`, `Note`, `timestamp`) VALUES
(73, 'manager@ibm.ca', '1', 'eegege', '2023-03-17 16:39:20'),
(74, 'manager@ibm.ca', '3', 'eqfqef', '2023-03-17 16:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `ID` int(11) NOT NULL,
  `Available` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`ID`, `Available`, `Date`) VALUES
(3, '[[1,1,1,1,1],[1,0,1,1,1],[1,1,0,0,1]]', '2022-07-09'),
(4, '[[1,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-10'),
(5, '[[1,0,1,1,0],[0,0,1,0,0],[0,0,0,0,0]]', '2022-07-11'),
(6, '[[1,1,0,1,0],[0,0,1,0,0],[0,0,0,0,0]]', '2022-07-20'),
(9, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-12'),
(19, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-22'),
(20, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-21'),
(21, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-14'),
(22, '[[1,1,0,0,0],[0,0,0,0,0],[1,0,0,0,0]]', '2022-07-13'),
(23, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-30'),
(24, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-16'),
(26, '[[0,0,0,0,0],[0,0,1,0,0],[0,0,0,0,0]]', '2022-07-28'),
(27, '[[0,1,0,0,0],[0,0,0,0,0],[0,0,0,0,1]]', '2022-07-15'),
(28, '[[1,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-29'),
(30, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-07-27'),
(32, '[[0,0,1,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2022-08-16'),
(33, '', '2023-03-16'),
(34, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2023-03-17'),
(35, '[[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]', '2023-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `breakdown`
--

CREATE TABLE `breakdown` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `problem` text NOT NULL,
  `note` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakdown`
--

INSERT INTO `breakdown` (`id`, `user`, `problem`, `note`, `timestamp`) VALUES
(1, 'manager@ibm.ca', 'need repait', 'qegfoqenpgqe', '2023-03-16 23:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Contact` text NOT NULL,
  `Msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `Name`, `Email`, `Contact`, `Msg`) VALUES
(1, 'Dhaval Patel', 'pateldk2507@gmail.com', '09714233673', 'fwf'),
(2, 'Dhaval Patel', 'pateldk2507@gmail.com', '09714233673', 'demo message'),
(3, 'AKASH Patel', 'denny@gmail.com', '9974398232', 'Just Demo Message'),
(4, 'Dhaval Patel', 'pateldk2507@gmail.com', '8073581806', 'This is demo message form IMS');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `item_id` varchar(15) NOT NULL,
  `qty` text NOT NULL,
  `total` text NOT NULL,
  `address` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_id`, `qty`, `total`, `address`, `timestamp`) VALUES
(1, 'pateldk@gmail.com', 'I001', '1', '150000', 'Anand', '2023-03-17 03:18:24'),
(2, 'manager@ibm.ca', 'I001', '1', '150000', 'efefe', '2023-03-17 15:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` varchar(15) NOT NULL,
  `item_name` text NOT NULL,
  `item_desc` text NOT NULL,
  `qty` int(3) NOT NULL,
  `price` text NOT NULL,
  `img` text NOT NULL,
  `est_time` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_id`, `item_name`, `item_desc`, `qty`, `price`, `img`, `est_time`, `timestamp`) VALUES
(1, 'I001', 'HALLMARK LABPLUS\n', 'Flat Cutting|| Precision Cutting|| Superior Productivity\n', 4, '500000', '../assets/1.jpeg', '2 week from order date', '2023-03-19 00:07:22'),
(2, 'I002', 'HALLMARK 4G', 'Accuracy: 2 Micron|| Application: Multi-Processing', 4, '400000', '../assets/2.jpeg', '2 weeks from order conformation', '2023-03-19 00:07:26'),
(3, 'I003', 'Hallmark 7G', 'Accuracy: 2 Micron || Shapes: Multiple options + Customization', 3, '400000', '../assets/3.jpeg', '5 weeks from order conformation', '2023-03-19 00:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'Routine Check'),
(2, 'Breakdown');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Contact` text NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `Name`, `Email`, `Contact`, `Category`) VALUES
(1, 'Mark', 'mark@bs.ca', '359-1125', 'Hair Stylist'),
(2, 'David', 'david@bs.ca', '359-1234', 'Hair Stylist');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Fname` text NOT NULL,
  `Lname` text DEFAULT NULL,
  `Email` text NOT NULL,
  `Contact` text NOT NULL,
  `Password` text NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Fname`, `Lname`, `Email`, `Contact`, `Password`, `Image`) VALUES
(1, 'Patel', 'Dhaval', 'Dhaval123@gmail.com', '3561825', '827ccb0eea8a706c4c34a16891f84e7b', '62c6318536d903.jpg'),
(2, 'Patel', 'Dhaval', 'admin@bs.in', '8073586321', '827ccb0eea8a706c4c34a16891f84e7b', '62c6320b22045p1.jpg'),
(3, 'Dhaval', 'Patel', 'seam-bulk-0m@icloud.com', '3564888', 'ec7131243335a0ab2f5fec19ce550344', '62c64ce6c1c5783FB507E-1A45-4692-874B-E189E21117A7.jpeg'),
(4, 'Dhaval', 'Patel', 'Dhaval@gmail.com', '33333352', '827ccb0eea8a706c4c34a16891f84e7b', '62c713e03c8f5WhatsApp Image 2022-07-04 at 12.27.30 AM.jpeg'),
(5, 'Maulin', 'Darji', 'Maulin@gmail.com', '358-1234', '40903dc740f9397b65904dd4311d57de', '62cb501fa4d4c'),
(6, 'Ravi', 'Teja', 'Tejabhai@gmail.com', '359-9956', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg'),
(7, 'AKASH', 'Patel', 'akashpatel9809@gmail.com', '9974398232', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg'),
(8, 'Harsh', 'Rathod', 'harsh@gmail.com', '359-1112', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg'),
(9, 'Rushikesh', 'Teja', 'paidarushikeshteja@gmail.com', '8073586811', 'ae93663b1869dce065899ff4917e46b3', '62cc68cb036bdIMG_9053-01.jpeg'),
(10, 'Dipenkumar', 'Patel', 'dipen@gmail.com', '3587890', 'dcddb75469b4b4875094e14561e573d8', 'profile.jpg'),
(11, 'Pratik', 'Patel', 'Pratik@gmail.com', '358-1555', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg'),
(12, 'Kush', 'Patel', 'kush@gmail.com', '456-7890', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg'),
(13, 'IBM', NULL, 'manager@ibm.ca', '8073581806', '827ccb0eea8a706c4c34a16891f84e7b', 'profile.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breakdown`
--
ALTER TABLE `breakdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `breakdown`
--
ALTER TABLE `breakdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
