-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 30 Des 2024 pada 17.48
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carinsurance`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `claim`
--

CREATE TABLE `claim` (
  `CLAIM_ID` varchar(20) NOT NULL,
  `CUSTOMER_ID` varchar(20) DEFAULT NULL,
  `VEHICLE_PLATE` varchar(10) DEFAULT NULL,
  `INSURANCE_ID` varchar(10) DEFAULT NULL,
  `CLAIM_DATE` date DEFAULT NULL,
  `CLAIM_RESULT_DATE` date DEFAULT NULL,
  `CLAIM_STATUS` tinyint(1) DEFAULT NULL,
  `TYPE_ACCIDENT` char(20) DEFAULT NULL,
  `DATE_ACCIDENT` date DEFAULT NULL,
  `FACTOR_ACCIDENT` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `claim`
--

INSERT INTO `claim` (`CLAIM_ID`, `CUSTOMER_ID`, `VEHICLE_PLATE`, `INSURANCE_ID`, `CLAIM_DATE`, `CLAIM_RESULT_DATE`, `CLAIM_STATUS`, `TYPE_ACCIDENT`, `DATE_ACCIDENT`, `FACTOR_ACCIDENT`) VALUES
('CLAIM_001', 'CUST_001', '8KFZ231', 'ISC_001', '2015-01-12', '2015-01-20', 1, 'minor', '2015-01-09', 'crash'),
('CLAIM_002', 'CUST_001', '7GHT456', 'ISC_002', '2018-03-05', '2018-03-12', 1, 'minor', '2018-03-01', 'accident'),
('CLAIM_003', 'CUST_001', '8FGJ671', 'ISC_003', '2021-05-18', '2021-05-26', 1, 'severe', '2021-05-15', 'crash'),
('CLAIM_004', 'CUST_002', 'JXW9475', 'ISC_004', '2015-01-12', '2015-01-19', 0, 'total loss', '2015-01-05', 'crash'),
('CLAIM_005', 'CUST_003', 'PYB4921', 'ISC_005', '2015-10-15', '2015-10-25', 1, 'severe', '2015-10-13', 'accident'),
('CLAIM_006', 'CUST_003', 'EYZ1836', 'ISC_006', '2015-11-30', '2015-12-08', 1, 'minor', '2015-11-21', 'catastrophe'),
('CLAIM_007', 'CUST_004', 'RMZ8103', 'ISC_007', '2016-01-07', '2016-01-15', 0, 'minor', '2016-01-03', 'accident');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` varchar(20) NOT NULL,
  `CUSTOMER_AGE` int(11) NOT NULL,
  `CUSTOMER_GENDER` char(20) NOT NULL,
  `DRIVING_EXPERIENCE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUSTOMER_AGE`, `CUSTOMER_GENDER`, `DRIVING_EXPERIENCE`) VALUES
('CUST_001', 50, 'female', '0-9y'),
('CUST_002', 24, 'male', '0-9y'),
('CUST_003', 25, 'female', '0-9y'),
('CUST_004', 31, 'male', '0-9y'),
('CUST_005', 35, 'male', '10-19y'),
('CUST_006', 28, 'female', '20-29y'),
('CUST_007', 51, 'male', '30y+');

-- --------------------------------------------------------

--
-- Struktur dari tabel `insurance`
--

CREATE TABLE `insurance` (
  `INSURANCE_ID` varchar(10) NOT NULL,
  `INSURANCE_TYPE_ID` varchar(10) NOT NULL,
  `INSURANCE_STATUS` varchar(15) NOT NULL,
  `INSURANCE_PREMI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `insurance`
--

INSERT INTO `insurance` (`INSURANCE_ID`, `INSURANCE_TYPE_ID`, `INSURANCE_STATUS`, `INSURANCE_PREMI`) VALUES
('ISC_001', 'TYP_01', 'active', 25000000),
('ISC_002', 'TYP_02', 'active', 10000000),
('ISC_003', 'TYP_02', 'active', 40000000),
('ISC_004', 'TYP_02', 'non-active', 28000000),
('ISC_005', 'TYP_02', 'active', 32000000),
('ISC_006', 'TYP_01', 'active', 5000000),
('ISC_007', 'TYP_01', 'active', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `insurancetype`
--

CREATE TABLE `insurancetype` (
  `INSURANCE_TYPE_ID` varchar(10) NOT NULL,
  `INSURANCE_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `insurancetype`
--

INSERT INTO `insurancetype` (`INSURANCE_TYPE_ID`, `INSURANCE_TYPE`) VALUES
('TYP_01', 'TLO'),
('TYP_02', 'All Risk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `VEHICLE_PLATE` varchar(10) NOT NULL,
  `VEHICLE_NUMBER` varchar(10) NOT NULL,
  `VEHICLE_YEAR` varchar(20) NOT NULL,
  `VEHICLE_TYPE` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vehicle`
--

INSERT INTO `vehicle` (`VEHICLE_PLATE`, `VEHICLE_NUMBER`, `VEHICLE_YEAR`, `VEHICLE_TYPE`) VALUES
('7GHT456', 'VHC_002', 'before 2015', 'sedan'),
('8FGJ671', 'VHC_003', 'before 2015', 'SUV'),
('8KFZ231', 'VHC_001', 'after 2015', 'sedan'),
('EYZ1836', 'VHC_006', 'before 2015', 'sedan'),
('JXW9475', 'VHC_004', 'before 2015', 'sedan'),
('PYB4921', 'VHC_005', 'before 2015', 'sedan'),
('RMZ8103', 'VHC_007', 'before 2015', 'sedan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`CLAIM_ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `VEHICLE_PLATE` (`VEHICLE_PLATE`),
  ADD KEY `INSURANCE_ID` (`INSURANCE_ID`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`);

--
-- Indeks untuk tabel `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`INSURANCE_ID`),
  ADD KEY `INSURANCE_TYPE_ID` (`INSURANCE_TYPE_ID`);

--
-- Indeks untuk tabel `insurancetype`
--
ALTER TABLE `insurancetype`
  ADD PRIMARY KEY (`INSURANCE_TYPE_ID`);

--
-- Indeks untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VEHICLE_PLATE`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `claim`
--
ALTER TABLE `claim`
  ADD CONSTRAINT `claim_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  ADD CONSTRAINT `claim_ibfk_2` FOREIGN KEY (`VEHICLE_PLATE`) REFERENCES `vehicle` (`VEHICLE_PLATE`),
  ADD CONSTRAINT `claim_ibfk_3` FOREIGN KEY (`INSURANCE_ID`) REFERENCES `insurance` (`INSURANCE_ID`);

--
-- Ketidakleluasaan untuk tabel `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`INSURANCE_TYPE_ID`) REFERENCES `insurancetype` (`INSURANCE_TYPE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
