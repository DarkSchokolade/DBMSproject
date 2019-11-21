-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2019 at 04:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmsproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `allorganisms`
--

CREATE TABLE `allorganisms` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allorganisms`
--

INSERT INTO `allorganisms` (`ID`, `Name`) VALUES
(1, 'dog'),
(2, 'cat'),
(3, 'tiger'),
(4, 'lion'),
(5, 'human'),
(6, 'cow'),
(7, 'horse');

-- --------------------------------------------------------

--
-- Table structure for table `Animals`
--

CREATE TABLE `Animals` (
  `A_id` int(11) NOT NULL,
  `A_scientificname` varchar(30) NOT NULL,
  `A_Kingdom` varchar(25) NOT NULL,
  `A_Phylum` varchar(25) NOT NULL,
  `A_Class` varchar(20) NOT NULL,
  `A_Genus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Animals`
--

INSERT INTO `Animals` (`A_id`, `A_scientificname`, `A_Kingdom`, `A_Phylum`, `A_Class`, `A_Genus`) VALUES
(1, 'Canis lupus familiaris', 'Animalia', 'Chordata', 'Mammal', 'Canis'),
(2, 'Felis catus', 'Animalia', 'Chordata', 'Mammal', 'Felis'),
(3, 'Panthera tigris', 'Animalia', 'Chordata', 'Mammal', 'Panthera'),
(4, 'Panthera leo', 'Animalia', 'Choradata', 'Mammalia', 'Panthera'),
(5, 'Homo sapiens', 'Animalia', 'Chordata', 'Mammalia', 'Homo'),
(6, 'Bovine taurus', 'Animalia', 'Choradata', 'Mammalia', 'Bos'),
(7, 'Equus ferus caballus', 'Animalia', 'Chordata', 'Mammalia', 'Equus');

-- --------------------------------------------------------

--
-- Table structure for table `Breed`
--

CREATE TABLE `Breed` (
  `B_id` int(4) NOT NULL,
  `BreedName` varchar(25) NOT NULL,
  `Origin` varchar(25) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Breed`
--

INSERT INTO `Breed` (`B_id`, `BreedName`, `Origin`, `ID`) VALUES
(1, 'Golden Retriever', 'Scotland', 1),
(2, 'Irish Setter', 'Ireland', 1),
(3, 'Italian Greyhound', 'Italy', 1),
(4, 'Afgan Shepard', 'Afganistan', 1),
(5, 'German Shepard', 'Germany', 1),
(6, 'Mudhol Hound', 'German', 1),
(7, 'Bengal Tiger', 'INDIA', 3),
(8, 'South China Tiger', 'China', 3),
(9, 'Siberian Tiger', 'Russia', 3),
(10, 'Barbary Lion ', 'North Africa', 4),
(11, 'Asiatic Lion', 'SouthWest Asia', 4),
(12, 'Cornish Rex', 'england', 2),
(13, 'Scottish Fold', 'Scotland', 2),
(14, 'Javanese', 'U.S', 2),
(15, 'Cymric', 'Canada', 2),
(16, 'Birman', 'Burma', 2),
(19, 'Red Poll', 'England', 6),
(20, 'Jersey', 'Jersey', 6),
(21, 'Beefmaster', 'Texas', 6),
(22, 'Zebu', 'India', 6),
(23, 'Brabant', 'Belgium', 7),
(24, 'Percheron', 'France', 7),
(25, 'Akhal-Teke', 'Turkmenistan', 7),
(26, 'Andalusian', 'Spain', 7),
(27, 'Cleveland Bay', 'England', 7);

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE `organisms` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `ScientificName` varchar(25) NOT NULL,
  `Kingdom` varchar(25) NOT NULL,
  `Phylum` varchar(25) NOT NULL,
  `Division` varchar(25) NOT NULL,
  `Class` varchar(25) NOT NULL,
  `Genus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organisms`
--

INSERT INTO `organisms` (`Id`, `Name`, `ScientificName`, `Kingdom`, `Phylum`, `Division`, `Class`, `Genus`) VALUES
(1, 'star fish', 'Asterias rubens', 'Animalia', 'Echinodermata', '', 'Asteroida', 'Asteris'),
(2, 'maize', 'Zea mays', 'Plantae', '', 'Angiospermae', 'Monocotyledonae', 'Zea');

-- --------------------------------------------------------

--
-- Table structure for table `Plants`
--

CREATE TABLE `Plants` (
  `P_id` int(11) NOT NULL,
  `P_scientificname` varchar(25) NOT NULL,
  `P_Kingdom` varchar(25) NOT NULL,
  `P_Division` varchar(25) NOT NULL,
  `P_Genus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allorganisms`
--
ALTER TABLE `allorganisms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Animals`
--
ALTER TABLE `Animals`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `Breed`
--
ALTER TABLE `Breed`
  ADD PRIMARY KEY (`B_id`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `organisms`
--
ALTER TABLE `organisms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Plants`
--
ALTER TABLE `Plants`
  ADD PRIMARY KEY (`P_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allorganisms`
--
ALTER TABLE `allorganisms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Breed`
--
ALTER TABLE `Breed`
  MODIFY `B_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `organisms`
--
ALTER TABLE `organisms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Animals`
--
ALTER TABLE `Animals`
  ADD CONSTRAINT `Animals_ibfk_1` FOREIGN KEY (`A_id`) REFERENCES `allorganisms` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Breed`
--
ALTER TABLE `Breed`
  ADD CONSTRAINT `Breed_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `allorganisms` (`ID`);

--
-- Constraints for table `Plants`
--
ALTER TABLE `Plants`
  ADD CONSTRAINT `Plants_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `allorganisms` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
