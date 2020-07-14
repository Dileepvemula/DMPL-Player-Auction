-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2018 at 10:09 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1163152_dmpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `avail_bal`
--

CREATE TABLE `avail_bal` (
  `team_id` int(11) NOT NULL,
  `avail_bal` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avail_bal`
--

INSERT INTO `avail_bal` (`team_id`, `avail_bal`) VALUES
(1, '5000'),
(2, '5000'),
(3, '5000'),
(4, '5000'),
(5, '5000'),
(6, '5000'),
(7, '5000'),
(8, '5000'),
(9, '5000'),
(10, '5000'),
(11, '5000'),
(12, '5000');

-- --------------------------------------------------------

--
-- Table structure for table `base_price`
--

CREATE TABLE `base_price` (
  `set_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `base_price` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_price`
--

INSERT INTO `base_price` (`set_name`, `base_price`) VALUES
('A', '300'),
('B', '200'),
('C', '100'),
('D', '50'),
('E', '100');

-- --------------------------------------------------------

--
-- Table structure for table `current_bid`
--

CREATE TABLE `current_bid` (
  `player_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `player_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `set_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `base_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `count` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `current_bid`
--

INSERT INTO `current_bid` (`player_id`, `player_name`, `role`, `set_name`, `base_price`, `count`) VALUES
('1', 'RAMESH', 'ALLROUNDER', 'A', '300', '8');

-- --------------------------------------------------------

--
-- Table structure for table `login_credentials`
--

CREATE TABLE `login_credentials` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_credentials`
--

INSERT INTO `login_credentials` (`team_id`, `team_name`, `password`) VALUES
(1, 'FIREBALLS XI', 'dmpl_fb72'),
(2, 'THE BOLTZ', 'dmpl_tb24'),
(3, 'CRICKET CONVICTS', 'dmpl_cc19'),
(4, 'TERRIFIC RUNNERS', 'dmpl_sr64'),
(5, 'SUNRISERS', 'dmpl_sr64'),
(6, 'HARA HARA MAHADEV', 'dmpl_hm35'),
(7, 'ASSASSINS', 'dmpl_as89'),
(8, 'LOCAL BOYS', 'dmpl_lb02'),
(9, 'VIVIDH UNITED', 'dmpl_vu93'),
(10, 'RIVER SHARKS', 'dmpl_rs27'),
(11, 'MIGHTY EAGLES', 'dmpl_me77'),
(12, 'SMASHING SIXERS', 'dmpl_ss49'),
(13, 'admin', '71440');

-- --------------------------------------------------------

--
-- Table structure for table `player_credentials`
--

CREATE TABLE `player_credentials` (
  `player_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `player_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `set_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `sold_price` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `player_credentials`
--

INSERT INTO `player_credentials` (`player_id`, `player_name`, `role`, `set_name`, `team_id`, `sold_price`, `status`) VALUES
('1', 'RAMESH', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('10', 'AJITH', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('100', 'RAJENDRA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('101', 'SAIDEEP', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('102', 'SUMAN', 'BAT', 'C', NULL, NULL, '0'),
('103', 'SURYA TEJA', 'BAT', 'C', NULL, NULL, '0'),
('104', 'RAJ KUMAR', 'BOWL', 'C', NULL, NULL, '0'),
('105', 'VAMSHI KRISHNA', 'BAT/WK', 'C', NULL, NULL, '0'),
('106', 'AMIT SHARMA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('107', 'MAHESH A', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('108', 'SUSHANTH REDDY', 'BAT/WK', 'C', NULL, NULL, '0'),
('109', 'ASHWIN', 'BAT', 'C', NULL, NULL, '0'),
('11', 'GOUTHAM', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('110', 'SAI MAHESH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('111', 'SRI CHAKRA', 'ALLROUNDER', 'D', NULL, NULL, '0'),
('112', 'VISHNU KALAL', 'BAT/WK', 'C', NULL, NULL, '0'),
('113', 'SAGAR', 'BAT', 'C', NULL, NULL, '0'),
('114', 'RISHAV', 'BAT', 'C', NULL, NULL, '0'),
('115', 'LEKARAJ', '-', 'D', NULL, NULL, '0'),
('116', 'MOHIT MEENA', '-', 'D', NULL, NULL, '0'),
('117', 'TIRUMALESH ARAVIND', '-', 'D', NULL, NULL, '0'),
('118', 'GIRISH', '-', 'D', NULL, NULL, '0'),
('119', 'NIKHIL', '-', 'D', NULL, NULL, '0'),
('12', 'AKHIL', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('120', 'PAUL RAJ', '-', 'D', NULL, NULL, '0'),
('121', 'SHIVA PRASAD', '-', 'D', NULL, NULL, '0'),
('122', 'RAJATH', '-', 'D', NULL, NULL, '0'),
('123', 'SAMINATH', '-', 'D', NULL, NULL, '0'),
('124', 'STEPHEN', '-', 'D', NULL, NULL, '0'),
('125', 'SUBRAMANYAM', '-', 'D', NULL, NULL, '0'),
('126', 'ANIRUDH', '-', 'D', NULL, NULL, '0'),
('127', 'DIKSHITH', '-', 'D', NULL, NULL, '0'),
('128', 'D.S.BALAJI', '-', 'D', NULL, NULL, '0'),
('129', 'GAJARAJ', '-', 'D', NULL, NULL, '0'),
('13', 'RAJ KUMAR', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('130', 'GANAPATHI', '-', 'D', NULL, NULL, '0'),
('131', 'IQBAL', '-', 'D', NULL, NULL, '0'),
('132', 'KARTHIK', '-', 'D', NULL, NULL, '0'),
('133', 'NIVAAS', '-', 'D', NULL, NULL, '0'),
('134', 'PHANISH', '-', 'D', NULL, NULL, '0'),
('135', 'PRASATH', '-', 'D', NULL, NULL, '0'),
('136', 'RAJEEV', '-', 'D', NULL, NULL, '0'),
('137', 'SACHIN', '-', 'D', NULL, NULL, '0'),
('138', 'SANDEEP', '-', 'D', NULL, NULL, '0'),
('139', 'YESHWANTH', '-', 'D', NULL, NULL, '0'),
('14', 'PRAHLAD', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('140', 'ANOOP', '-', 'D', NULL, NULL, '0'),
('141', 'LOKESH', '-', 'D', NULL, NULL, '0'),
('142', 'SHASHANK', '-', 'D', NULL, NULL, '0'),
('143', 'VASTAV', '-', 'D', NULL, NULL, '0'),
('144', 'DURGESH', '-', 'D', NULL, NULL, '0'),
('145', 'HARSHA', '-', 'D', NULL, NULL, '0'),
('146', 'JANARDHAN', '-', 'D', NULL, NULL, '0'),
('147', 'JASWANTH', '-', 'D', NULL, NULL, '0'),
('148', 'JASWANTH', '-', 'D', NULL, NULL, '0'),
('149', 'KOUSHIK', '-', 'D', NULL, NULL, '0'),
('15 ', 'SHANMUKH', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('150', 'NAGA SAI', '-', 'D', NULL, NULL, '0'),
('151', 'NANDA KISHORE', '-', 'D', NULL, NULL, '0'),
('152', 'NITESH', '-', 'D', NULL, NULL, '0'),
('153', 'PRAVEEN', '-', 'D', NULL, NULL, '0'),
('154', 'RAJESH', '-', 'D', NULL, NULL, '0'),
('155', 'SAI VIVEK', '-', 'D', NULL, NULL, '0'),
('156', 'SASI KANTH', '-', 'D', NULL, NULL, '0'),
('157', 'SHARATH', '-', 'D', NULL, NULL, '0'),
('158', 'SUDHIR', '-', 'D', NULL, NULL, '0'),
('159', 'VINAY', '-', 'D', NULL, NULL, '0'),
('16', 'SAI', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('160', 'VINEETH', '-', 'D', NULL, NULL, '0'),
('161', 'VIVEK', '-', 'D', NULL, NULL, '0'),
('162', 'AMAN SACHIN', '-', 'D', NULL, NULL, '0'),
('163', 'BALAJI', '-', 'D', NULL, NULL, '0'),
('164', 'PRUDHVI', '-', 'D', NULL, NULL, '0'),
('165', 'SAI CHARAN', '-', 'D', NULL, NULL, '0'),
('166', 'SAI KUMAR', '-', 'D', NULL, NULL, '0'),
('167', 'SHUBHAM RAJ', '-', 'D', NULL, NULL, '0'),
('168', 'VAMSHI', '-', 'D', NULL, NULL, '0'),
('169', 'VENKAT RAO', '-', 'D', NULL, NULL, '0'),
('17', 'SIVA', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('170', 'SAIO', '-', 'D', NULL, NULL, '0'),
('171', 'SUDEEP', '-', 'D', NULL, NULL, '0'),
('172', 'RISHI VARDHAN', '-', 'D', NULL, NULL, '0'),
('173', 'KRISHNA VARDHAN', '-', 'D', NULL, NULL, '0'),
('174', 'SAI KUMAR', '-', 'D', NULL, NULL, '0'),
('18', 'HEMANTH', 'BAT', 'B', NULL, NULL, '0'),
('181', 'AISHWARYA', '-', 'E', NULL, NULL, '0'),
('182', 'DIVYA', '-', 'E', NULL, NULL, '0'),
('183', 'YAMUNA', '-', 'E', NULL, NULL, '0'),
('184', 'AKHILA', '-', 'E', NULL, NULL, '0'),
('185', 'KANIMOZHI', '-', 'E', NULL, NULL, '0'),
('186', 'POOJITHA', '-', 'E', NULL, NULL, '0'),
('187', 'KRITHI', '-', 'E', NULL, NULL, '0'),
('188', 'SATHAKSHI', '-', 'E', NULL, NULL, '0'),
('189', 'ANKITHA', '-', 'E', NULL, NULL, '0'),
('19', 'VENKAT RAMANA', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('190', 'LALITHA', '-', 'E', NULL, NULL, '0'),
('191', 'DAKSHAJA', '-', 'E', NULL, NULL, '0'),
('192', 'LAKSHMI', '-', 'E', NULL, NULL, '0'),
('193', 'CHINMAI', '-', 'E', NULL, NULL, '0'),
('194', 'DIVITHA', '-', 'E', NULL, NULL, '0'),
('195', 'JANAKI RAMYA', '-', 'E', NULL, NULL, '0'),
('196', 'POOJA ', '-', 'E', NULL, NULL, '0'),
('197', 'KALYANI', '-', 'E', NULL, NULL, '0'),
('198', 'LASYA', '-', 'E', NULL, NULL, '0'),
('199', 'SONIKA', '-', 'E', NULL, NULL, '0'),
('2', 'MURALI', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('20', 'RAJENDRA', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('200', 'NEELIMA', '-', 'E', NULL, NULL, '0'),
('201', 'DIVYA', '-', 'E', NULL, NULL, '0'),
('202', 'SARANYA', '-', 'E', NULL, NULL, '0'),
('203', 'PRANEETHA', '-', 'E', NULL, NULL, '0'),
('204', 'AMRUTHA', '-', 'E', NULL, NULL, '0'),
('205', 'TEJASWI', '-', 'E', NULL, NULL, '0'),
('206', 'SRUTHI', '-', 'E', NULL, NULL, '0'),
('207', 'PVANI', '-', 'E', NULL, NULL, '0'),
('208', 'JOSHNA', '-', 'E', NULL, NULL, '0'),
('209', 'AKANSHA', '-', 'E', NULL, NULL, '0'),
('21', 'KV KIRAN', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('210', 'PRANAVI', '-', 'E', NULL, NULL, '0'),
('211', 'MADHURI', '-', 'E', NULL, NULL, '0'),
('212', 'D PAVITRA HARSHA', '-', 'E', NULL, NULL, '0'),
('213', 'SOWJANYA', '-', 'E', NULL, NULL, '0'),
('214', 'MICHITHA', '-', 'E', NULL, NULL, '0'),
('215', 'VAISHNAVI', '-', 'E', NULL, NULL, '0'),
('216', 'SANTHOSHI', '-', 'E', NULL, NULL, '0'),
('217', 'PRANJALI', '-', 'E', NULL, NULL, '0'),
('218', 'SUKRUTHI', '-', 'E', NULL, NULL, '0'),
('219', 'HARSHITHA', '-', 'E', NULL, NULL, '0'),
('22', 'SWAMINATH', 'BAT/WK', 'B', NULL, NULL, '0'),
('220', 'SRIYA', '-', 'E', NULL, NULL, '0'),
('221', 'SANA', '-', 'E', NULL, NULL, '0'),
('222', 'PRACHI', '-', 'E', NULL, NULL, '0'),
('223', 'MANALI', '-', 'E', NULL, NULL, '0'),
('224', 'ANKITA', '-', 'E', NULL, NULL, '0'),
('225', 'ABHIRAMI', '-', 'E', NULL, NULL, '0'),
('23', 'TEJ KIRAN', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('24', 'SUMIT KUMAR', 'BOWL', 'B', NULL, NULL, '0'),
('25', 'KOUSHIK REDDY', 'BAT/WK', 'B', NULL, NULL, '0'),
('26', 'NAGARJUNA', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('27', 'PRATHIK', 'BAT/WK', 'B', NULL, NULL, '0'),
('28', 'RAJESH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('29', 'SAI PRASAD', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('3', 'ADARSH', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('30', 'SUNIL', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('31', 'VIJAY', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('32', 'VYAS', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('33', 'HARSHA', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('34', 'SAI CHAND', 'BAT', 'B', NULL, NULL, '0'),
('35', 'MANNU MANOJ', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('36', 'MANOJ', 'BAT', 'B', NULL, NULL, '0'),
('37', 'PRASHANTH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('38', 'DHARANINATH', 'BAT/WK', 'B', NULL, NULL, '0'),
('39', 'SATYA KRISHNA', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('4', 'NAVEEN', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('40', 'ABHISHEK BANKAR', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('41', 'MAHESH', 'BOWL', 'B', NULL, NULL, '0'),
('42', 'RISHI', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('43', 'SRIKANTH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('44', 'SUDHANSHU', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('45', 'VAMSHI', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('46', 'NISCHAY PANDEY', 'BOWL', 'B', NULL, NULL, '0'),
('47', 'AKASH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('48', 'CHAITANYA', 'BAT/WK', 'B', NULL, NULL, '0'),
('49', 'SRIKANTH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('5', 'VAMSHI', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('50', 'AGATHIYAN', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('51', 'HARISH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('52', 'SARANG', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('53', 'SAI PRANEETH', 'ALLROUNDER', 'B', NULL, NULL, '0'),
('54', 'NAVEEN', 'FIELDER', 'C', NULL, NULL, '0'),
('55', 'VIVEK', 'BAT', 'C', NULL, NULL, '0'),
('56', 'MURMU', 'FIELDER', 'C', NULL, NULL, '0'),
('57', 'SAMPATH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('58', 'PRAVEEN', 'BAT', 'C', NULL, NULL, '0'),
('59', 'ADARSH SRIVASTAVA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('6', 'GANGARAM', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('60', 'ROHIT RAJ', 'BOWL', 'C', NULL, NULL, '0'),
('61', 'SNEHIL', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('62', 'ADITHYA NAIK', 'BAT', 'C', NULL, NULL, '0'),
('63', 'AKASH', 'BAT', 'C', NULL, NULL, '0'),
('64', 'ANUP', 'BOWL', 'C', NULL, NULL, '0'),
('65', 'ANVESH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('66', 'DHERAJ', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('67', 'VIJAY NAIK', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('68', 'MIDHUN', 'BAT', 'C', NULL, NULL, '0'),
('69', 'MONISH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('7', 'SASIDHAR', 'ALLROUNDER', 'A', 1, '1000', '2'),
('70', 'RAGHU VARMA', 'BOWL', 'C', NULL, NULL, '0'),
('71', 'RAMAKANTH', 'BAT', 'C', NULL, NULL, '0'),
('72', 'ROSHAN', 'BAT', 'C', NULL, NULL, '0'),
('73', 'SAI TEJA', 'BAT', 'C', NULL, NULL, '0'),
('74', 'SAI VARMA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('75', 'SASI', 'BOWL', 'C', NULL, NULL, '0'),
('76', 'VAMSHI VIKAS', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('77', 'KOUSHIK', 'BAT/WK', 'C', NULL, NULL, '0'),
('78', 'TIRUMULESH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('79', 'SAI ANJANEYA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('8', 'SRINIVAS', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('80', 'CHAITANYA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('81', 'AJAY BYRI', 'BAT/WK', 'C', NULL, NULL, '0'),
('82', 'AJAY', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('83', 'SANDEEP', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('84', 'MOHIT', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('85', 'PRUDHVI', 'BAT/WK', 'C', NULL, NULL, '0'),
('86', 'RAJESH', 'BAT', 'C', NULL, NULL, '0'),
('87', 'SAMPATH', 'BOWL', 'C', NULL, NULL, '0'),
('88', 'SANJAY', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('89', 'SATYANARAYANA', 'BAT', 'C', NULL, NULL, '0'),
('9', 'YAGNA TEJA', 'ALLROUNDER', 'A', NULL, NULL, '0'),
('90', 'SRINATH', 'BAT/WK', 'C', NULL, NULL, '0'),
('91', 'VIGNESH', 'BAT', 'C', NULL, NULL, '0'),
('92', 'VINEETH', 'BAT', 'C', NULL, NULL, '0'),
('93', 'HARISH', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('94', 'MANIKANTA', 'BOWL', 'C', NULL, NULL, '0'),
('95', 'MANOJ NANDIGAMA', 'ALLROUNDER', 'C', NULL, NULL, '0'),
('96', 'REVANTH', 'BAT', 'C', NULL, NULL, '0'),
('97', 'HEMANTH', 'BAT', 'C', NULL, NULL, '0'),
('98', 'IMRAN', 'BAT', 'C', NULL, NULL, '0'),
('99', 'PRANEETH', 'BAT', 'C', NULL, NULL, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avail_bal`
--
ALTER TABLE `avail_bal`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `base_price`
--
ALTER TABLE `base_price`
  ADD KEY `set_name` (`set_name`);

--
-- Indexes for table `current_bid`
--
ALTER TABLE `current_bid`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `player_credentials`
--
ALTER TABLE `player_credentials`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avail_bal`
--
ALTER TABLE `avail_bal`
  ADD CONSTRAINT `avail_bal_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `login_credentials` (`team_id`);

--
-- Constraints for table `current_bid`
--
ALTER TABLE `current_bid`
  ADD CONSTRAINT `current_bid_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player_credentials` (`player_id`);

--
-- Constraints for table `player_credentials`
--
ALTER TABLE `player_credentials`
  ADD CONSTRAINT `player_credentials_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `login_credentials` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
