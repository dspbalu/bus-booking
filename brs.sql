-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2017 at 02:40 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `routeid` int(11) NOT NULL,
  `ac` tinyint(1) NOT NULL,
  `fare` int(11) NOT NULL,
  `departuretime` varchar(6) NOT NULL,
  `ARRIVALTIME` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `routeid`, `ac`, `fare`, `departuretime`, `ARRIVALTIME`) VALUES
(200, 10, 1, 1600, '20:00', '09:00'),
(201, 10, 0, 1700, '20:00', '06:30'),
(202, 10, 1, 2000, '21:00', '07:00'),
(203, 11, 0, 1500, '18:00', '05:00'),
(204, 12, 0, 1200, '20:00', '09:00'),
(205, 12, 1, 2100, '20:00', '18:00'),
(206, 13, 0, 1700, '21:30', '19:00'),
(207, 13, 0, 800, '14:00', '09:30'),
(208, 13, 1, 700, '20:00', '19:00'),
(209, 14, 0, 300, '20:00', '09:00'),
(210, 13, 1, 1800, '19:10', '17:00');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(32) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `username`, `password`, `name`, `email`, `mobile`) VALUES
(1, 'ajay', 'ajay', 'ajay', 'ajay', 123),
(2, 'balu', 'balu', 'balu', 'balu', 12345);

-- --------------------------------------------------------

--
-- Stand-in structure for view `reservation`
--
CREATE TABLE `reservation` (
`id` int(11)
,`passengerid` int(11)
,`busid` int(11)
,`seat` int(11)
,`dt` date
,`tstamp` date
,`origin` varchar(20)
,`destination` varchar(20)
,`departuretime` varchar(6)
,`arrivaltime` varchar(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `passengerid` int(11) NOT NULL,
  `busid` int(11) NOT NULL,
  `passname` varchar(20) NOT NULL,
  `dt` date NOT NULL,
  `tstamp` date NOT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `passengerid`, `busid`, `passname`, `dt`, `tstamp`, `seat`) VALUES
(1, 1, 201, '', '2017-06-05', '2017-06-05', 1),
(3, 1, 201, '', '2017-06-05', '2017-06-05', 2),
(4, 1, 201, '', '2017-06-05', '2017-06-05', 25),
(7, 1, 201, '', '0000-00-00', '0000-00-00', 19),
(8, 1, 200, '', '2017-06-07', '2017-06-07', 21),
(9, 2, 200, '', '2017-06-07', '2017-06-07', 42),
(10, 2, 200, '', '2017-06-07', '2017-06-07', 35),
(11, 2, 200, '', '2017-06-07', '2017-06-07', 32),
(12, 1, 201, '', '2017-06-07', '2017-06-07', 14),
(13, 1, 201, '', '2017-06-07', '2017-06-07', 12),
(14, 2, 202, 'dsp', '2017-06-07', '2017-06-07', 18),
(15, 2, 202, 'balu', '2017-06-07', '2017-06-07', 19),
(16, 2, 202, 'balu038', '2017-06-07', '2017-06-07', 22),
(17, 2, 202, 'asd', '2017-06-07', '2017-06-07', 35),
(19, 2, 202, 'dspbalu', '2017-06-07', '2017-06-07', 46),
(20, 2, 202, 'balu', '2017-06-07', '2017-06-07', 5),
(21, 2, 201, 'balu', '2017-06-07', '2017-06-07', 39),
(22, 2, 200, 'balu', '2017-06-07', '2017-06-07', 43),
(23, 2, 200, 'hellloooo', '2017-06-07', '2017-06-07', 19),
(24, 2, 200, 'asd', '2017-06-07', '2017-06-07', 9),
(25, 2, 200, 'asdf', '2017-06-07', '2017-06-07', 30),
(26, 2, 201, 'asdfg', '2017-06-07', '2017-06-07', 46),
(27, 2, 201, 'jj', '2017-06-07', '2017-06-07', 30),
(28, 2, 201, 'dfgh', '2017-06-07', '2017-06-07', 37);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `origin`, `destination`) VALUES
(17, 'Bangalore', 'Hyderabad'),
(20, 'Bangalore', 'Tirupati'),
(13, 'Bangalore', 'Visakhapatnam'),
(16, 'Hyderabad', 'Bangalore'),
(18, 'Hyderabad', 'Tirupati'),
(11, 'Hyderabad', 'Visakhapatnam'),
(21, 'Tirupati', 'Bangalore'),
(19, 'Tirupati', 'Hyderabad'),
(15, 'Tirupati', 'Visakhapatnam'),
(12, 'Visakhapatnam', 'Bangalore'),
(10, 'Visakhapatnam', 'Hyderabad'),
(14, 'Visakhapatnam', 'Tirupati');

-- --------------------------------------------------------

--
-- Structure for view `reservation`
--
DROP TABLE IF EXISTS `reservation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reservation`  AS  select `reserve`.`id` AS `id`,`reserve`.`passengerid` AS `passengerid`,`reserve`.`busid` AS `busid`,`reserve`.`seat` AS `seat`,`reserve`.`dt` AS `dt`,`reserve`.`tstamp` AS `tstamp`,`route`.`origin` AS `origin`,`route`.`destination` AS `destination`,`bus`.`departuretime` AS `departuretime`,`bus`.`ARRIVALTIME` AS `arrivaltime` from ((`reserve` join `bus`) join `route`) where ((`reserve`.`busid` = `bus`.`id`) and (`route`.`id` = `bus`.`routeid`)) order by `reserve`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routeid` (`routeid`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SEAT_UNIQUE` (`busid`,`dt`,`seat`),
  ADD KEY `passengerid` (`passengerid`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ROUTE_UNIQUE` (`origin`,`destination`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`routeid`) REFERENCES `route` (`id`);

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`passengerid`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`busid`) REFERENCES `bus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
