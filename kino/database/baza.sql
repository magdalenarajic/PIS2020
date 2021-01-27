-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 12:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(23, 'Kapetanica Marvel', 'vip-hall', '2d', '16-3', '09-00', 'Josip', 'Rajic', '+6576535'),
(24, 'Kapetanica Marvel', 'main-hall', '3d', '13-3', '15-00', 'Magdalena', 'Rajic', '+65765378');

-- --------------------------------------------------------

--
-- Table structure for table `dvorana`
--

CREATE TABLE `dvorana` (
  `id_dvorana` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broj_mjesta` int(10) NOT NULL,
  `vrsta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dvorana`
--

INSERT INTO `dvorana` (`id_dvorana`, `naziv`, `broj_mjesta`, `vrsta`) VALUES
(1, '1', 100, '2D'),
(2, '2', 120, '2D'),
(3, '3', 100, '3D'),
(4, '4', 120, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karta`
--

CREATE TABLE `karta` (
  `id_karta` int(11) NOT NULL,
  `cijena` float NOT NULL,
  `datum_rezervacije` date NOT NULL,
  `id_filma` int(11) NOT NULL,
  `id_korisnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lozinka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `ime`, `prezime`, `email`, `lozinka`) VALUES
(108, 'Marija', 'Joipa', 'magi.rajic12@gmail.com', '123456'),
(109, 'Ivan', '765443', 'bvhjv@ht.rom', '765443'),
(110, 'Ana', 'FMJDSNJKF', 'ana17rajic@gmail.com', 'jsfcsedhjf'),
(111, 'Tea', 'Radic', 'trad@gmail.com', 'jhg654'),
(112, 'Ana', 'Pilic', 'apilic@hotmail.com', '1234567'),
(113, 'Marija', 'hireg', 'ivanr@hotmail.com', '52636'),
(114, 'Josip', 'Jo', 'ivajr@hotmail.com', '12345678'),
(115, 'Marija', 'fhr', 'bvhjbrev@ht.rom', '4357gng'),
(116, 'Iva', 'Ivic', 'ivic@gmai.com', 'iva123'),
(117, 'Ivan', 'ko', 'ivan@gmail.com', '12345'),
(118, 'Marija', 'Pilic', 'mpilic@hotmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieGenre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieActors` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/movie-poster-1.jpg', 'Kapetanica Marvel', ' Akcijski, Avanturisticki', 124, '2020-01-03', 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn'),
(2, 'img/joker.jpg', 'Joker', 'Drama, Kriminalisticki,Triler', 122, '2020-02-11', 'Todd Philips', 'Joaquin Phoenix, Robert De Niro, Zazie Beetz'),
(3, 'img/gospoda.jpg', 'Gospoda', 'Kriminalisticki', 113, '2020-02-13', 'Guy Ritchie', 'Matthew McConaughey, Charlie Hunnam, Michelle Dockery'),
(12, 'img/7.jpg', 'Cudo u celiji br 7', 'Drama, Kriminalistički', 132, '2019-06-22', 'Mehmet Ada Öztekin', 'Aras Bulut İynemli,Nisa Sofiya Aksongur,Deniz Baysal'),
(13, 'img/opsjednutost.jpg', 'Opsjednutost', 'Horor', 94, '2020-01-30', 'Floria Sigismondi', 'Mackenzie Davis, Finn Wolfhard, Brooklynn Prince');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);

--
-- Indexes for table `dvorana`
--
ALTER TABLE `dvorana`
  ADD PRIMARY KEY (`id_dvorana`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `karta`
--
ALTER TABLE `karta`
  ADD PRIMARY KEY (`id_karta`),
  ADD KEY `id_filma` (`id_filma`),
  ADD KEY `id_korisnik` (`id_korisnik`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `dvorana`
--
ALTER TABLE `dvorana`
  MODIFY `id_dvorana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `karta`
--
ALTER TABLE `karta`
  MODIFY `id_karta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
