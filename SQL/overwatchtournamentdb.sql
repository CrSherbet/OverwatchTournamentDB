-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2017 at 09:36 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overwatchtournamentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `MatchID` varchar(6) DEFAULT NULL,
  `WinnerTeamID` varchar(5) DEFAULT NULL,
  `LoserTeamID` varchar(5) DEFAULT NULL,
  `MapID` varchar(5) DEFAULT NULL,
  `Time` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`MatchID`, `WinnerTeamID`, `LoserTeamID`, `MapID`, `Time`) VALUES
('M01T01', 'TM010', 'TM001', 'Map07', 8),
('M01T01', 'TM001', 'TM010', 'Map14', 10),
('M01T01', 'TM001', 'TM010', 'Map04', 12),
('M01T01', 'TM001', 'TM010', 'Map14', 7),
('M02T01', 'TM006', 'TM002', 'Map07', 11),
('M02T01', 'TM002', 'TM006', 'Map05', 10),
('M02T01', 'TM002', 'TM006', 'Map06', 6),
('M02T01', 'TM006', 'TM002', 'Map10', 7),
('M02T01', 'TM006', 'TM002', 'Map09', 11),
('M03T01', 'TM006', 'TM001', 'Map07', 15),
('M03T01', 'TM001', 'TM006', 'Map11', 8),
('M03T01', 'TM006', 'TM001', 'Map05', 10),
('M03T01', 'TM006', 'TM001', 'Map12', 12),
('M01T02', 'TM002', 'TM001', 'Map02', 15),
('M01T02', 'TM001', 'TM002', 'Map07', 12),
('M01T02', 'TM002', 'TM001', 'Map01', 8),
('M01T02', 'TM001', 'TM002', 'Map04', 7),
('M01T02', 'TM002', 'TM001', 'Map12', 10),
('M02T02', 'TM012', 'TM010', 'Map02', 11),
('M02T02', 'TM010', 'TM012', 'Map04', 6),
('M02T02', 'TM012', 'TM010', 'Map14', 9),
('M02T02', 'TM012', 'TM010', 'Map09', 12),
('M03T02', 'TM002', 'TM012', 'Map09', 14),
('M03T02', 'TM012', 'TM002', 'Map13', 6),
('M03T02', 'TM002', 'TM012', 'Map04', 7),
('M03T02', 'TM002', 'TM012', 'Map07', 13),
('M01T03', 'TM013', 'TM014', 'Map08', 12),
('M01T03', 'TM013', 'TM014', 'Map11', 7),
('M01T03', 'TM014', 'TM013', 'Map12', 6),
('M01T03', 'TM013', 'TM014', 'Map13', 8),
('M02T03', 'TM002', 'TM015', 'Map09', 13),
('M02T03', 'TM002', 'TM015', 'Map01', 10),
('M02T03', 'TM002', 'TM015', 'Map08', 11),
('M03T03', 'TM002', 'TM013', 'Map08', 5),
('M03T03', 'TM013', 'TM002', 'Map08', 9),
('M03T03', 'TM002', 'TM013', 'Map07', 11),
('M03T03', 'TM002', 'TM013', 'Map11', 12),
('M03T03', 'TM002', 'TM013', 'Map02', 9),
('M01T04', 'TM013', 'TM016', 'Map05', 7),
('M01T04', 'TM016', 'TM013', 'Map13', 10),
('M01T04', 'TM013', 'TM016', 'Map01', 7),
('M01T04', 'TM013', 'TM016', 'Map09', 6),
('M02T04', 'TM005', 'TM002', 'Map06', 9),
('M02T04', 'TM002', 'TM005', 'Map12', 11),
('M02T04', 'TM005', 'TM002', 'Map03', 14),
('M02T04', 'TM005', 'TM002', 'Map10', 8),
('M03T04', 'TM013', 'TM005', 'Map09', 5),
('M03T04', 'TM005', 'TM013', 'Map10', 9),
('M03T04', 'TM005', 'TM013', 'Map12', 10),
('M03T04', 'TM005', 'TM013', 'Map06', 12),
('M01T05', 'TM016', 'TM017', 'Map11', 8),
('M01T05', 'TM017', 'TM016', 'Map08', 6),
('M01T05', 'TM016', 'TM017', 'Map03', 7),
('M01T05', 'TM016', 'TM017', 'Map05', 10),
('M02T05', 'TM018', 'TM001', 'Map12', 11),
('M02T05', 'TM001', 'TM018', 'Map07', 13),
('M02T05', 'TM001', 'TM018', 'Map01', 10),
('M02T05', 'TM018', 'TM001', 'Map06', 9),
('M02T05', 'TM001', 'TM018', 'Map10', 6),
('M03T05', 'TM001', 'TM016', 'Map09', 7),
('M03T05', 'TM001', 'TM016', 'Map03', 12),
('M03T05', 'TM001', 'TM016', 'Map05', 14),
('M01T06', 'TM019', 'TM020', 'Map12', 5),
('M01T06', 'TM019', 'TM020', 'Map02', 10),
('M01T06', 'TM020', 'TM019', 'Map08', 7),
('M01T06', 'TM019', 'TM020', 'Map05', 8),
('M02T06', 'TM007', 'TM021', 'Map12', 7),
('M02T06', 'TM021', 'TM007', 'Map01', 11),
('M02T06', 'TM007', 'TM021', 'Map07', 11),
('M02T06', 'TM007', 'TM021', 'Map04', 10),
('M03T06', 'TM007', 'TM019', 'Map12', 9),
('M03T06', 'TM007', 'TM019', 'Map03', 7),
('M03T06', 'TM007', 'TM019', 'Map07', 9),
('M01T07', 'TM001', 'TM023', 'Map04', 10),
('M01T07', 'TM001', 'TM023', 'Map13', 8),
('M01T07', 'TM001', 'TM023', 'Map07', 7),
('M02T07', 'TM010', 'TM022', 'Map04', 9),
('M02T07', 'TM022', 'TM010', 'Map13', 11),
('M02T07', 'TM010', 'TM022', 'Map07', 9),
('M02T07', 'TM022', 'TM010', 'Map03', 8),
('M02T07', 'TM022', 'TM010', 'Map05', 8),
('M03T07', 'TM001', 'TM022', 'Map08', 7),
('M03T07', 'TM001', 'TM022', 'Map11', 12),
('M03T07', 'TM001', 'TM022', 'Map02', 9),
('M01T08', 'TM004', 'TM025', 'Map04', 11),
('M01T08', 'TM004', 'TM025', 'Map02', 8),
('M01T08', 'TM004', 'TM025', 'Map11', 6),
('M02T08', 'TM024', 'TM026', 'Map06', 12),
('M02T08', 'TM024', 'TM026', 'Map07', 9),
('M02T08', 'TM024', 'TM026', 'Map09', 10),
('M03T08', 'TM024', 'TM004', 'Map12', 11),
('M03T08', 'TM004', 'TM024', 'Map04', 9),
('M03T08', 'TM004', 'TM024', 'Map05', 9),
('M03T08', 'TM004', 'TM024', 'Map14', 12),
('M01T09', 'TM010', 'TM027', 'Map02', 13),
('M01T09', 'TM027', 'TM010', 'Map04', 14),
('M01T09', 'TM010', 'TM027', 'Map08', 10),
('M01T09', 'TM027', 'TM010', 'Map10', 8),
('M01T09', 'TM010', 'TM027', 'Map03', 11),
('M02T09', 'TM006', 'TM026', 'Map02', 9),
('M02T09', 'TM026', 'TM006', 'Map09', 12),
('M02T09', 'TM006', 'TM026', 'Map14', 9),
('M02T09', 'TM006', 'TM026', 'Map05', 9),
('M03T09', 'TM010', 'TM006', 'Map02', 10),
('M03T09', 'TM006', 'TM010', 'Map14', 7),
('M03T09', 'TM006', 'TM010', 'Map05', 5),
('M03T09', 'TM010', 'TM006', 'Map09', 8),
('M03T09', 'TM006', 'TM010', 'Map04', 9),
('M01T10', 'TM029', 'TM010', 'Map06', 10),
('M01T10', 'TM010', 'TM029', 'Map01', 11),
('M01T10', 'TM010', 'TM029', 'Map08', 6),
('M01T10', 'TM010', 'TM029', 'Map12', 7),
('M02T10', 'TM028', 'TM030', 'Map05', 9),
('M02T10', 'TM030', 'TM028', 'Map02', 12),
('M02T10', 'TM030', 'TM028', 'Map11', 8),
('M02T10', 'TM028', 'TM030', 'Map04', 8),
('M02T10', 'TM028', 'TM030', 'Map03', 10),
('M03T10', 'TM010', 'TM028', 'Map13', 11),
('M03T10', 'TM010', 'TM028', 'Map08', 12),
('M03T10', 'TM010', 'TM028', 'Map07', 9),
('M01T11', 'TM009', 'TM032', 'Map11', 7),
('M01T11', 'TM032', 'TM009', 'Map10', 9),
('M01T11', 'TM032', 'TM009', 'Map05', 8),
('M01T11', 'TM009', 'TM032', 'Map07', 10),
('M01T11', 'TM009', 'TM032', 'Map14', 11),
('M02T11', 'TM031', 'TM033', 'Map01', 8),
('M02T11', 'TM033', 'TM031', 'Map11', 9),
('M02T11', 'TM031', 'TM033', 'Map08', 12),
('M02T11', 'TM031', 'TM033', 'Map09', 10),
('M03T11', 'TM009', 'TM031', 'Map05', 7),
('M03T11', 'TM009', 'TM031', 'Map13', 5),
('M03T11', 'TM031', 'TM009', 'Map03', 11),
('M03T11', 'TM009', 'TM031', 'Map06', 13),
('M01T12', 'TM003', 'TM005', 'Map10', 10),
('M01T12', 'TM005', 'TM003', 'Map11', 9),
('M01T12', 'TM003', 'TM005', 'Map05', 9),
('M01T12', 'TM003', 'TM005', 'Map13', 12),
('M02T12', 'TM008', 'TM034', 'Map11', 10),
('M02T12', 'TM008', 'TM034', 'Map13', 8),
('M02T12', 'TM008', 'TM034', 'Map01', 11),
('M03T12', 'TM008', 'TM003', 'Map03', 8),
('M03T12', 'TM008', 'TM003', 'Map07', 8),
('M03T12', 'TM008', 'TM003', 'Map02', 7);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryAbbr` varchar(3) NOT NULL,
  `CFullName` varchar(14) DEFAULT NULL,
  `AvgSpeedInternet` decimal(4,2) DEFAULT NULL,
  `Continent` varchar(13) DEFAULT NULL,
  `Population` decimal(6,3) DEFAULT NULL,
  `NumberOfAcc` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryAbbr`, `CFullName`, `AvgSpeedInternet`, `Continent`, `Population`, `NumberOfAcc`) VALUES
('ARG', 'Argentina', '4.20', 'South America', '43.840', 542561),
('AUS', 'Australia', '7.80', 'Australia', '23.130', 7048277),
('AUT', 'Austria', '11.40', 'Europe', '8.660', 290372),
('BRA', 'Brazil', '3.60', 'South America', '209.560', 8940326),
('CAN', 'Canada', '11.90', 'North America', '36.280', 4901592),
('CHE', 'Swizerland', '13.22', 'Europe', '8.080', 68830),
('CHL', 'Chile', '5.70', 'South America', '18.130', 380763),
('CHN', 'China', '3.70', 'Asia', '999.999', 459023891),
('DEU', 'Germany', '11.50', 'Europe', '80.680', 34970841),
('DNK', 'Denmark', '14.00', 'Europe', '5.690', 94037),
('EGY', 'Egypt', '1.70', 'Africa', '93.380', 1384003),
('ENG', 'England', '13.90', 'Europe', '53.010', 6048274),
('ESP', 'Spain', '10.40', 'Europe', '46.060', 1004764),
('EST', 'Estonia', '6.80', 'Europe', '1.340', 40825),
('FIN', 'Finland', '14.80', 'Europe', '5.520', 1573940),
('FRA', 'France', '8.20', 'Europe', '64.660', 21603084),
('GBR', 'United Kingdom', '13.00', 'Europe', '65.110', 8838072),
('GIB', 'Gibraltar', '5.25', 'Europe', '0.030', 8468),
('GRC', 'Greece', '9.64', 'Europe', '10.910', 602821),
('HKG', 'Hong Kong', '15.80', 'Asia', '7.340', 3959908),
('IDN', 'Indonesia', '7.45', 'Asia', '260.580', 2653086),
('IND', 'India', '2.50', 'Asia', '999.999', 9105384),
('IRQ', 'Iraq', '1.95', 'Asia', '37.540', 937081),
('ISL', 'Iceland', '6.88', 'Europe', '0.320', 6370),
('ITA', 'Italy', '6.50', 'Europe', '59.800', 1490174),
('JPN', 'Japan', '15.00', 'Asia', '126.320', 18420682),
('KOR', 'South Korea', '20.50', 'Asia', '50.500', 36908671),
('MEX', 'Mexico', '5.50', 'North America', '128.630', 10821837),
('MYS', 'Malaysia', '4.90', 'Asia', '30.750', 5305126),
('NLD', 'Netherlands', '12.50', 'Europe', '16.800', 2947084),
('NPL', 'Nepal', '1.03', 'Asia', '27.800', 49083),
('NZL', 'New Zealand', '8.70', 'Australia', '4.471', 2083298),
('PHL', 'Philippines', '2.80', 'Asia', '102.250', 14740578),
('RUS', 'Russia', '10.20', 'Europe', '143.430', 17082429),
('SGP', 'Singapore', '12.50', 'Asia', '5.690', 2462073),
('SWE', 'Sweden', '17.40', 'Europe', '9.850', 3846072),
('THA', 'Thailand', '8.20', 'Asia', '68.140', 5032692),
('TWN', 'Taiwan', '10.10', 'Asia', '23.390', 7368289),
('USA', 'United States', '12.60', 'North America', '324.110', 195038173),
('ZAF', 'South Africa', '3.70', 'Africa', '54.970', 51742);

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `HeroName` varchar(10) NOT NULL,
  `HeroRealName` varchar(36) DEFAULT NULL,
  `Damage` int(3) DEFAULT NULL,
  `Heal` int(3) DEFAULT NULL,
  `Blood` int(4) DEFAULT NULL,
  `PopRank` int(2) DEFAULT NULL,
  `Speed` decimal(3,2) DEFAULT NULL,
  `Country` varchar(3) DEFAULT NULL,
  `Role` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`HeroName`, `HeroRealName`, `Damage`, `Heal`, `Blood`, `PopRank`, `Speed`, `Country`, `Role`) VALUES
('Ana', 'Ana Amari', 60, 175, 200, 1, '6.30', 'EGY', 'Support'),
('Bastion', 'SST Laboratories Siege Automaton E54', 300, 300, 300, 16, '4.80', 'DEU', 'Defense'),
('DVa', 'Hana Song', 60, 0, 750, 10, '2.75', 'KOR', 'Tank'),
('Genji', 'Genji Shimada', 120, 0, 200, 11, '8.00', 'JPN', 'Offense'),
('Hanzo', 'Hanzo Shimada', 125, 0, 200, 21, '6.30', 'JPN', 'Defense'),
('Junkrat', 'Jamison Fawkes', 120, 0, 200, 20, '7.10', 'AUS', 'Defense'),
('Lucio', 'Lucio Correia dos Santos', 25, 120, 200, 5, '8.00', 'BRA', 'Support'),
('McCree', 'Jesse McCree', 250, 0, 200, 13, '4.80', 'USA', 'Offense'),
('Mei', 'Mei-Ling Zhou', 100, 150, 250, 19, '7.10', 'CHN', 'Defense'),
('Mercy', 'Angela Ziegler', 20, 300, 200, 3, '5.50', 'CHE', 'Support'),
('Orisa', 'Orisa', 140, 0, 400, 24, '2.75', 'ZAF', 'Tank'),
('Pharah', 'Fareeha Amari', 120, 0, 200, 8, '5.50', 'EGY', 'Offense'),
('Reaper', 'Gabriel Reyes', 170, 50, 250, 18, '7.10', 'USA', 'Offense'),
('Reinhardt', 'Reinhardt Wilhelm', 75, 0, 2500, 2, '2.75', 'DEU', 'Tank'),
('Roadhog', 'Mako Rutledge', 80, 300, 600, 7, '2.50', 'NZL', 'Tank'),
('Soldier76', 'Jack Morrison', 120, 200, 200, 4, '8.30', 'USA', 'Offense'),
('Sombra', 'Sombra', 50, 0, 200, 23, '8.80', 'MEX', 'Offense'),
('Symmetra', 'Satya Vaswani', 120, 0, 200, 15, '5.50', 'IND', 'Support'),
('Torbjorn', 'Torbjorn Lindholm', 150, 75, 200, 22, '5.50', 'SWE', 'Defense'),
('Tracer', 'Lena Oxton', 60, 150, 150, 14, '9.99', 'ENG', 'Offense'),
('Widowmaker', 'Amelie Lacroix', 130, 0, 200, 17, '4.80', 'FRA', 'Defense'),
('Winston', 'Winston', 60, 0, 500, 12, '5.50', 'GIB', 'Tank'),
('Zarya', 'Aleksandra Zaryanova', 95, 0, 400, 6, '6.30', 'RUS', 'Tank'),
('Zenyatta', 'Tekhartha Zenyatta', 45, 100, 200, 9, '6.30', 'NPL', 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ManagerID` varchar(22) NOT NULL,
  `MFirstName` varchar(11) DEFAULT NULL,
  `MLastName` varchar(12) DEFAULT NULL,
  `Country` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ManagerID`, `MFirstName`, `MLastName`, `Country`) VALUES
('Agape#9131', 'Cheol-yong', 'Hong', 'KOR'),
('AsuraxX#9983', 'Gregory ', 'Morais', 'FRA'),
('Aurace#9738', 'Alex', 'Nguyen', 'KOR'),
('Blurst#9721', 'Alan', 'Raharimanana', 'FRA'),
('Bokyems#9023', 'Bo Kyeom', 'Kim', 'KOR'),
('Chen#9273', 'Chen', 'Murong', 'CHN'),
('CherryGumms#9378', 'Nicolle ', 'Merhy', 'BRA'),
('Danan#9800', 'Danan', 'Flander', 'USA'),
('DAYVZ#9783', 'David ', 'Ly', 'FRA'),
('dean#9101', 'Dong-geun', 'Geum', 'KOR'),
('Def4lt#9731', 'Christian ', 'Margol', 'NLD'),
('DRUNKKZ3#9211', 'Florian Le ', 'Bihan', 'USA'),
('Frank#9140', 'Kevyn ', 'Lindstrom', 'FRA'),
('fRoD#9232', 'Daniel ', 'Montaner', 'USA'),
('gasmask#9113', 'Matheus ', 'Santiago', 'BRA'),
('HTBdz#9257', 'Ding', 'Li', 'CHN'),
('Nevelus#9730', 'Willian ', 'Szak', 'BRA'),
('NurseBaemax#9732', 'Bianca', 'Danielle', 'USA'),
('OldZZZ#9071', 'Fei', 'Zhao', 'CHN'),
('oPlaiD#9382', 'Samuel ', 'Lingle', 'USA'),
('Ricci#9900', 'Renan ', 'Melo', 'BRA'),
('Rocker#9320', 'Min Ho', 'Lee', 'KOR'),
('Seita#9780', 'Joni ', 'Paavola', 'FIN'),
('Shayed#9028', 'Lynnea ', 'MacKay', 'FRA'),
('Sliaf#9811', 'Leclercq ', 'Maxence', 'FRA'),
('TaiRong#9113', 'Tae Yeong', 'Kim', 'CHN'),
('TazMo#9022', 'Mat', 'Taylor', 'SWE'),
('Tephus#9221', 'John ', 'Lewis', 'USA'),
('Tiddler Celestial#9228', 'Xieyu', 'Wang', 'CHN'),
('Tifa#9082', 'Tiffany ', 'Chiu', 'USA'),
('Time#9722', 'Lu', 'Zhang', 'CHN'),
('Tyrion#9003', 'Tyrion Lee ', 'Dong', 'CHN'),
('Wife#9200', 'Hyun-woo', 'Kim', 'KOR'),
('Windz#9732', 'Cyril', 'Michel', 'SWE');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `MapID` varchar(5) NOT NULL,
  `MapName` varchar(20) DEFAULT NULL,
  `Location` varchar(3) DEFAULT NULL,
  `Type` varchar(7) DEFAULT NULL,
  `Terrain` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`MapID`, `MapName`, `Location`, `Type`, `Terrain`) VALUES
('Map01', 'Hanamura', 'JPN', 'Assault', 'Residential area'),
('Map02', 'Temple of Anubis', 'EGY', 'Assault', 'Temple'),
('Map03', 'Volskaya', 'RUS', 'Assault', 'Machine construction zone'),
('Map04', 'Dorado', 'MEX', 'Escort', 'Town street'),
('Map05', 'Watchpoint:Gibraltar', 'GIB', 'Escort', 'Research facility'),
('Map06', 'Route66', 'USA', 'Escort', 'Desert road'),
('Map07', 'King\'s row', 'ENG', 'Assault', 'Narrow, cobbleston streets'),
('Map08', 'Numbani', 'ZAF', 'Assault', 'Urban'),
('Map09', 'Hollywood', 'USA', 'Assault', 'Various movie sets'),
('Map10', 'Eichenwalde', 'DEU', 'Assault', 'Town street'),
('Map11', 'Nepal', 'NPL', 'Control', 'Monastery'),
('Map12', 'Lijiang', 'CHN', 'Control', 'City area'),
('Map13', 'Ilios', 'GRC', 'Control', 'City area'),
('Map14', 'Oasis', 'IRQ', 'Control', 'City area');

-- --------------------------------------------------------

--
-- Table structure for table `matching`
--

CREATE TABLE `matching` (
  `MatchID` varchar(6) NOT NULL,
  `WinnerTeamID` varchar(5) DEFAULT NULL,
  `LoserTeamID` varchar(5) DEFAULT NULL,
  `TourID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matching`
--

INSERT INTO `matching` (`MatchID`, `WinnerTeamID`, `LoserTeamID`, `TourID`) VALUES
('M01T01', 'TM001', 'TM010', 'Tour01'),
('M01T02', 'TM002', 'TM001', 'Tour02'),
('M01T03', 'TM013', 'TM014', 'Tour03'),
('M01T04', 'TM013', 'TM016', 'Tour04'),
('M01T05', 'TM016', 'TM017', 'Tour05'),
('M01T06', 'TM019', 'TM020', 'Tour06'),
('M01T07', 'TM001', 'TM023', 'Tour07'),
('M01T08', 'TM004', 'TM025', 'Tour08'),
('M01T09', 'TM010', 'TM027', 'Tour09'),
('M01T10', 'TM010', 'TM029', 'Tour10'),
('M01T11', 'TM009', 'TM032', 'Tour11'),
('M01T12', 'TM003', 'TM005', 'Tour12'),
('M02T01', 'TM006', 'TM002', 'Tour01'),
('M02T02', 'TM012', 'TM010', 'Tour02'),
('M02T03', 'TM002', 'TM015', 'Tour03'),
('M02T04', 'TM005', 'TM002', 'Tour04'),
('M02T05', 'TM001', 'TM018', 'Tour05'),
('M02T06', 'TM007', 'TM021', 'Tour06'),
('M02T07', 'TM022', 'TM010', 'Tour07'),
('M02T08', 'TM024', 'TM026', 'Tour08'),
('M02T09', 'TM006', 'TM026', 'Tour09'),
('M02T10', 'TM028', 'TM030', 'Tour10'),
('M02T11', 'TM031', 'TM033', 'Tour11'),
('M02T12', 'TM008', 'TM034', 'Tour12'),
('M03T01', 'TM006', 'TM001', 'Tour01'),
('M03T02', 'TM002', 'TM012', 'Tour02'),
('M03T03', 'TM002', 'TM013', 'Tour03'),
('M03T04', 'TM005', 'TM013', 'Tour04'),
('M03T05', 'TM001', 'TM016', 'Tour05'),
('M03T06', 'TM007', 'TM019', 'Tour06'),
('M03T07', 'TM001', 'TM022', 'Tour07'),
('M03T08', 'TM004', 'TM024', 'Tour08'),
('M03T09', 'TM006', 'TM010', 'Tour09'),
('M03T10', 'TM010', 'TM028', 'Tour10'),
('M03T11', 'TM009', 'TM031', 'Tour11'),
('M03T12', 'TM008', 'TM003', 'Tour12');

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `OrgID` varchar(5) NOT NULL,
  `OrgName` varchar(23) DEFAULT NULL,
  `Country` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`OrgID`, `OrgName`, `Country`) VALUES
('Org01', 'ELEAGUE', 'USA'),
('Org02', 'ESL', 'DEU'),
('Org03', 'Banana Gaming & Media', 'CHN'),
('Org04', 'Intel Extreme Masters', 'KOR'),
('Org05', 'OnGameNet', 'KOR'),
('Org06', 'zhanqi.tv', 'CHN'),
('Org07', 'Major League Gaming', 'USA'),
('Org08', 'Next Generation Esports', 'USA'),
('Org09', 'DreamHack', 'SWE'),
('Org10', 'NVIDIA', 'FRA'),
('Org11', 'Blizzard', 'FRA'),
('Org12', 'NetEase CC', 'CHN');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `BattleTag` varchar(17) NOT NULL,
  `PFirstName` varchar(16) DEFAULT NULL,
  `PLastName` varchar(15) DEFAULT NULL,
  `TeamID` varchar(5) DEFAULT NULL,
  `Position` varchar(7) DEFAULT NULL,
  `MainCharName` varchar(10) DEFAULT NULL,
  `Country` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`BattleTag`, `PFirstName`, `PLastName`, `TeamID`, `Position`, `MainCharName`, `Country`) VALUES
('aAa#1398', 'Hangyin', 'Lu', 'TM019', 'DPS', 'Pharah', 'CHN'),
('AcyOrt#1092', 'Jian ', 'Zhang', 'TM015', 'DPS', 'McCree', 'CHN'),
('Adam#2313', 'Adam ', 'Eckel', 'TM023', 'Support', 'Mercy', 'USA'),
('adam#7404', 'Yoon Hik ', 'Kim', 'TM016', 'Tank', 'Reinhardt', 'KOR'),
('ADIOS#9004', 'Dae Hyeon', 'Jang', 'TM005', 'Tank', 'Roadhog', 'KOR'),
('Agilities#9024', 'Brady ', 'Girardi', 'TM004', 'DPS', 'Widowmaker', 'USA'),
('Ajax#0032', 'Alex ', 'Jackson', 'TM014', 'Support', 'Symmetra', 'USA'),
('aKm#0158', 'Dylan', 'Bignet', 'TM002', 'DPS', 'Genji', 'FRA'),
('Alarm#5467', 'Kyeong Bo', 'Kim', 'TM017', 'Tank', 'Roadhog', 'KOR'),
('alemao#0434', 'Renan ', 'Moretto', 'TM010', 'Support', 'Zenyatta', 'BRA'),
('Ali#1982', 'Rongguang ', 'Sun', 'TM034', 'Tank', 'Roadhog', 'CHN'),
('AMON#5498', 'Kyung Jae', 'Kim', 'TM016', 'Support', 'Mercy', 'KOR'),
('AmuM2m#9137', 'Qinglin', 'Yang', 'TM020', 'Support', 'Lucio', 'CHN'),
('Arcane#2070', 'Sung Jin', 'Park', 'TM005', 'Support', 'Lucio', 'KOR'),
('ArHaN#1689', 'Weon hyeop ', 'Jeong', 'TM016', 'DPS', 'Tracer', 'KOR'),
('ArK#4767', 'Yeon Joon', 'Hong', 'TM005', 'Support', 'Zenyatta', 'KOR'),
('Asox#1981', 'Thomas ', 'Williame', 'TM031', 'DPS', 'Widowmaker', 'FRA'),
('Aythen#6098', 'Athen ', 'Zhu', 'TM004', 'Support', 'Ana', 'USA'),
('AZK#9127', 'Keven ', 'Lariviere', 'TM024', 'DPS', 'McCree', 'CAN'),
('Baud#7837', 'Julien', 'Robert', 'TM032', 'Support', 'Ana', 'FRA'),
('Baymax#1089', 'Can', 'Zhang', 'TM021', 'Tank', 'Dva', 'CHN'),
('Bdosin#2989', 'Choi Tae', 'Seung', 'TM008', 'Support', 'Lucio', 'KOR'),
('BeBe#4463', 'Hui-Chang', 'Yoon', 'TM003', 'Support', 'Lucio', 'KOR'),
('BenBest#3718', 'Benjamin ', 'Dieulafait', 'TM009', 'Tank', 'Reinhardt', 'FRA'),
('BERNAR#6027', 'Se Won', 'Shin', 'TM017', 'Tank', 'Winston', 'KOR'),
('birdring#8879', 'Ji Hyuk', 'Kim', 'TM018', 'DPS', 'Soldier76', 'KOR'),
('Bubbly#9763', 'Yoon Ho ', 'Cho', 'TM018', 'Support', 'Lucio', 'KOR'),
('buds#4460', 'Casey ', 'Mcllwaine', 'TM011', 'DPS', 'Reaper', 'USA'),
('Bunny#3609', 'Joon Hyuk', 'Chae', 'TM017', 'DPS', 'Hanzo', 'KOR'),
('Butcher#8442', 'Seong Won ', 'Yoon', 'TM018', 'Tank', 'Zarya', 'KOR'),
('Carpe#5609', 'Jae Hyeok', 'Lee', 'TM017', 'DPS', 'Genji', 'KOR'),
('chipshajen#1096', 'Sebastian', 'Widlund', 'TM001', 'Support', 'Ana', 'SWE'),
('ChoiHyoBin#7892', 'Hyo-Bin', 'Choi', 'TM003', 'Tank', 'Roadhog', 'KOR'),
('Chubz#0091', 'Simon ', 'Vullo', 'TM032', 'Tank', 'Zarya', 'FRA'),
('Chubz#8700', 'Simon ', 'Vullo', 'TM031', 'Tank', 'Dva', 'FRA'),
('CLAMP#2044', 'Sabian', 'Hayblum', 'TM022', 'DPS', 'Hanzo', 'AUS'),
('cocco#1145', 'Christian', 'Jonsson', 'TM001', 'Tank', 'Zarya', 'SWE'),
('coolmatt69#5709', 'Matthew', 'Iorio', 'TM011', 'Tank', 'Roadhog', 'USA'),
('creed#8742', 'Xiao ', 'Yan', 'TM034', 'Support', 'Mercy', 'CHN'),
('Curious#3308', 'Yeong Min', 'Lee', 'TM008', 'DPS', 'Hanzo', 'KOR'),
('Custa#3344', 'Scott', 'Kennedy', 'TM011', 'Support', 'Zenyatta', 'AUS'),
('DaHanG#8123', 'Tim ', 'Fogarty', 'TM024', 'Support', 'Mercy', 'USA'),
('Dark#0297', 'Shiheng', 'Ma', 'TM007', 'DPS', 'McCree', 'CHN'),
('DDing#9386', 'Jin Hyeok', 'Yang', 'TM008', 'Tank', 'Winston', 'KOR'),
('deh#0931', 'Luis ', 'Andre Gomes', 'TM028', 'Support', 'Ana', 'BRA'),
('Dismay#9801', 'Jardinier', 'Etienne', 'TM033', 'Support', 'Lucio', 'FRA'),
('DNCE#1278', 'Se Yong ', 'Kim', 'TM018', 'DPS', 'Bastion', 'KOR'),
('DongHyuN#9876', 'Dong Hyun', 'Bea', 'TM016', 'Tank', 'Dva', 'KOR'),
('dudu#4392', 'Eduardo ', 'Macedo', 'TM010', 'DPS', 'Junkrat', 'BRA'),
('dummy#2954', 'Tim ', 'Olson', 'TM014', 'Support', 'Mercy', 'USA'),
('EISSFELDT#1927', 'Arthur ', 'Marx', 'TM025', 'DPS', 'Tracer', 'DEU'),
('EscA#3326', 'In-jae', 'Kim', 'TM013', 'DPS', 'Mei', 'KOR'),
('Fastie#1278', 'Renan ', 'Melo', 'TM030', 'Tank', 'Reinhardt', 'BRA'),
('FCTFCTN#04821', 'Russell ', 'Campbell', 'TM022', 'Tank', 'Reinhardt', 'USA'),
('Fear#7534', 'Huixiang ', 'Han', 'TM034', 'DPS', 'Reaper', 'CHN'),
('fengyan#8938', 'Zhengfeng', 'Xu', 'TM034', 'DPS', 'McCree', 'CHN'),
('Flash0or#4009', 'Alan ', 'Barillaro', 'TM031', 'Support', 'Mercy', 'FRA'),
('Fool#8703', 'Houxin', 'Xu', 'TM021', 'Support', 'Ana', 'CHN'),
('Forsak3n#0831', 'Viktors ', 'Bernevs', 'TM022', 'Support', 'Lucio', 'SWE'),
('Fragi#5098', 'Joona ', 'Laine', 'TM027', 'Tank', 'Reinhardt', 'FIN'),
('Frisky#0064', 'Yusong', 'Huang', 'TM019', 'Tank', 'Winston', 'CHN'),
('Fury#8903', 'Chao ', 'Cheng', 'TM015', 'DPS', 'Reaper', 'CHN'),
('GILY#0298', 'Joon-Ho', 'Min', 'TM003', 'Support', 'Mercy', 'KOR'),
('Gods#8123', 'Daniel ', 'Graeser', 'TM023', 'Tank', 'Zarya', 'USA'),
('GodsB#2404', 'Kyeon-Bo ', 'Kim', 'TM003', 'DPS', 'Bastion', 'KOR'),
('Greg2Fram#1278', 'De Framond', 'Gregoire', 'TM033', 'DPS', 'Junkrat', 'FRA'),
('GrimReality#0978', 'Christopher ', 'Schaefer', 'TM004', 'DPS', 'Reaper', 'USA'),
('Hafficool#3024', 'Hafpor ', 'Hakonarsonis', 'TM011', 'DPS', 'Junkrat', 'ISL'),
('Harbleu#0189', 'Anthony ', 'Ballo', 'TM014', 'Tank', 'Roadhog', 'USA'),
('HarryHook#1728', 'Jonathan', 'Tejedor Rua', 'TM001', 'DPS', 'Soldier76', 'ESP'),
('Hayko#9842', 'Robin', 'Stahmer', 'TM032', 'Tank', 'Dva', 'FRA'),
('Hexis#1870', 'Alex', 'Berghs', 'TM031', 'DPS', 'Genji', 'FRA'),
('Hidan#9009', 'Mikael ', 'Da Silva', 'TM025', 'Support', 'Ana', 'FRA'),
('honorato#0034', 'Mauricio ', 'Honorato', 'TM028', 'Tank', 'Roadhog', 'BRA'),
('Hqrdest#1983', 'Jeremy ', 'Danton', 'TM032', 'DPS', 'Tracer', 'FRA'),
('Hyeok#1976', 'Jae Hyeok', 'Shin', 'TM008', 'DPS', 'Mei', 'KOR'),
('hymzi#1287', 'Kalle ', 'Honkala', 'TM027', 'DPS', 'Reaper', 'FIN'),
('Hyp#7857', 'Damien ', 'Souville', 'TM009', 'Support', 'Ana', 'FRA'),
('Hyped#1188', 'George', 'Maganzini', 'TM004', 'Tank', 'DVa', 'USA'),
('Hysteria#0027', 'Yihao ', 'Wang', 'TM015', 'Support', 'Zenyatta', 'CHN'),
('iddqd#9280', 'Andre', 'Dahlstrom', 'TM014', 'DPS', 'McCree', 'SWE'),
('id_#9800', 'Andrew', 'Trulli', 'TM024', 'DPS', 'Pharah', 'CAN'),
('Insanityz#4005', 'Yuri', 'Ribeiro', 'TM029', 'Support', 'Ana', 'BRA'),
('INTERNETHULK#3715', 'Dennis', 'Hawelka', 'TM001', 'Support', 'Winston', 'DEU'),
('Izzy#8712', 'Ast', 'Aymeric', 'TM033', 'Support', 'Zenyatta', 'FRA'),
('JiaoMei#5982', 'Chenhua ', 'Huang', 'TM007', 'Tank', 'Reinhardt', 'CHN'),
('JIN2#3238', 'Yong Jin', 'Jin', 'TM008', 'Support', 'Zenyatta', 'KOR'),
('jiqiren#8191', 'Yansong ', 'Wei', 'TM034', 'Tank', 'Dva', 'CHN'),
('jkw#4343', 'Joey', 'Wavering', 'TM026', 'Tank', 'Dva', 'USA'),
('Joemeister#3874', 'Joe', 'Gramano', 'TM026', 'Support', 'Ana', 'CAN'),
('Kalios#4026', 'Woo Yeol', 'Shin', 'TM008', 'Tank', 'Reinhardt', 'KOR'),
('Kallenge#1982', 'Sigogne', 'Raphael', 'TM033', 'Tank', 'Dva', 'FRA'),
('KaoFenrir#1092', 'Holecek', 'Alexandre', 'TM033', 'Tank', 'Reinhardt', 'FRA'),
('Kenny#83475', 'Hao', 'Liu', 'TM021', 'DPS', 'Torbjorn', 'CHN'),
('KnOxXx#2442', 'Jean-Louis', 'Boyer', 'TM002', 'Tank', 'Reinhardt', 'FRA'),
('kodo#7934', 'Yan ', 'Boente', 'TM028', 'DPS', 'Mei', 'BRA'),
('KREPSKER#5380', 'Vitor ', 'Krepsky', 'TM010', 'Tank', 'Roadhog', 'BRA'),
('krk#9255', 'Rodrigo ', 'Krober', 'TM010', 'Support', 'Symmetra', 'BRA'),
('Kruise#4382', 'Harrison ', 'Pond', 'TM012', 'Tank', 'Roadhog', 'ENG'),
('Kyb#1487', 'Finley ', 'Adisi', 'TM012', 'DPS', 'Hanzo', 'ENG'),
('Kyo#4939', 'Brunno', 'Cunha', 'TM029', 'Tank', 'Roadhog', 'BRA'),
('kyynel#3872', 'Antti', 'Kinnunen', 'TM027', 'Support', 'Mercy', 'FIN'),
('Leaf#3234', 'Lucas', 'Loison', 'TM009', 'DPS', 'Bastion', 'FRA'),
('Leo#0981', 'Leonardo ', 'Diniz', 'TM028', 'Tank', 'Dva', 'BRA'),
('liko#9901', 'Felipe ', 'Lebrao', 'TM010', 'DPS', 'Soldier76', 'BRA'),
('Lilbow#0098', 'David ', 'Moschetto', 'TM031', 'Tank', 'Reinhardt', 'FRA'),
('LittleCat#9920', 'Yi ', 'Li', 'TM015', 'Support', 'Lucio', 'CHN'),
('lucid#1393', 'Jun Seo ', 'Yoo', 'TM018', 'Support', 'Ana', 'KOR'),
('mafu#9012', 'Lauri ', 'Rasi', 'TM027', 'DPS', 'Pharah', 'FIN'),
('Manneten#5467', 'Tim Bylund', 'Bylund', 'TM006', 'DPS', 'Mei', 'SWE'),
('Mano#0086', 'Dong-gyu', 'Kim', 'TM016', 'Support', 'Ana', 'KOR'),
('Maps#4980', 'Chen ', 'Zhang', 'TM015', 'DPS', 'Mei', 'CHN'),
('Marblue#1189', 'Zhengpeng', 'Du', 'TM019', 'Support', 'Ana', 'CHN'),
('Masami#2837', 'Zhongkun', 'Chen', 'TM021', 'Support', 'Mercy', 'CHN'),
('mEm0ry#1374', 'Gonghao ', 'Zheng', 'TM020', 'DPS', 'Widowmaker', 'CHN'),
('MESR#9273', 'Adam ', 'De La Torre', 'TM024', 'Tank', 'Reinhardt', 'USA'),
('mestreak#1291', 'Mikael ', 'Akira', 'TM028', 'DPS', 'Widowmaker', 'BRA'),
('Meza#9981', 'Mihail ', 'Paunescu', 'TM026', 'Tank', 'Roadhog', 'USA'),
('Mickie#9804', 'Pongphop', 'Rattanasangchod', 'TM001', 'Tank', 'DVa', 'THA'),
('Mineral#1299', 'Vytis ', 'Lasaitis', 'TM025', 'Support', 'Symmetra', 'SWE'),
('Miro#4188', 'Jin-hyuk', 'Gong', 'TM013', 'Tank', 'Reinhardt', 'KOR'),
('MoonL#8741', 'Amaury ', 'Dennielou', 'TM032', 'Tank', 'Winston', 'FRA'),
('Morte#4467', 'Thomas ', 'Kerbusch', 'TM012', 'Support', 'Zenyatta', 'NLD'),
('murizzz#2489', 'Murillo ', 'Tuchtenhagen', 'TM029', 'DPS', 'Junkrat', 'BRA'),
('Narwak#2779', 'Aldrin ', 'Delmas', 'TM009', 'DPS', 'Tracer', 'FRA'),
('Nata#6626', 'Zhengnan ', 'Li', 'TM007', 'Support', 'Ana', 'CHN'),
('neil#0544', 'Mateus ', 'Krober', 'TM010', 'Tank', 'Reinhardt', 'BRA'),
('Neptune#5730', 'Xiuzhi', 'Yang', 'TM019', 'Tank', 'Roadhog', 'CHN'),
('Nevix#5891', 'Andreas ', 'Karlsson', 'TM006', 'DPS', 'Genji', 'SWE'),
('NiCO#2389', 'Nicolas', 'Moret', 'TM002', 'DPS', 'Mei', 'FRA'),
('NicolasTJO#0012', 'Nicolas ', 'Aubin', 'TM026', 'DPS', 'Pharah', 'CAN'),
('NIKO#8753', 'Yin', 'Lu', 'TM021', 'DPS', 'Mei', 'CHN'),
('Noki#1663', 'Martin ', 'Cornet', 'TM009', 'Support', 'Mercy', 'FRA'),
('nomy#5478', 'David ', 'Ramirez', 'TM004', 'Tank', 'Winston', 'USA'),
('NoName#4480', 'Won-jae', 'Lee', 'TM005', 'DPS', 'Pharah', 'KOR'),
('nosfa#7887', 'Filipe ', 'Barbosa', 'TM028', 'Support', 'Zenyatta', 'BRA'),
('NoSmite#0224', 'Da-Un', 'Jeong', 'TM003', 'Tank', 'Reinhardt', 'KOR'),
('numlocked#1034', 'Seb', 'Barton', 'TM014', 'Tank', 'Reinhardt', 'ENG'),
('ole#2789', 'Pedro', 'Orlandini', 'TM030', 'Tank', 'Zarya', 'BRA'),
('over#1839', 'Sifan', 'Deng', 'TM020', 'DPS', 'Soldier76', 'CHN'),
('Panker#1930', 'Byung Ho', 'Lee', 'TM018', 'Tank', 'Reinhardt', 'KOR'),
('Pearlyk#0913', 'Ryan', 'Rodrigo', 'TM029', 'DPS', 'McCree', 'BRA'),
('Pine#1099', 'Do-hyun', 'Kim', 'TM005', 'DPS', 'Hanzo', 'KOR'),
('PiPou#1982', 'Richard ', 'Buscemi', 'TM032', 'Support', 'Lucio', 'FRA'),
('pizzalover#1298', 'Paulo', 'Vitor', 'TM029', 'Support', 'Mercy', 'BRA'),
('Poko#7607', 'Gael ', 'Gouzerch', 'TM009', 'Tank', 'Zarya', 'FRA'),
('prod#2890', 'Vinicius ', 'Andrade', 'TM030', 'Support', 'Symmetra', 'BRA'),
('Prove#3488', 'Ho Jin', 'Chae', 'TM017', 'Support', 'Mercy', 'KOR'),
('r0ar#3954', 'Chang Hoon', 'Gye', 'TM005', 'Tank', 'Reinhardt', 'KOR'),
('rapha#1708', 'Shane', 'Hendrixson', 'TM024', 'Tank', 'Zarya', 'USA'),
('Rawkus#1187', 'Shane ', 'Flaherty', 'TM022', 'Support', 'Mercy', 'USA'),
('Recry#4893', 'Taek hyun', 'Jeong', 'TM016', 'DPS', 'Junkrat', 'KOR'),
('Reinforce#0441', 'Jonathan ', 'Larsson', 'TM006', 'Tank', 'Reinhardt', 'SWE'),
('Riskin#3024', 'Clement ', 'Hattee', 'TM031', 'Support', 'Zenyatta', 'FRA'),
('Rookie#8743', 'Jundong', 'Wang', 'TM020', 'Tank', 'Winston', 'CHN'),
('Roolf#1983', 'Randal ', 'Stark', 'TM023', 'Support', 'Ana', 'CAN'),
('Ryujehong#2805', 'Je-hong', 'Ryu', 'TM013', 'Support', 'Ana', 'KOR'),
('S#0388', 'Jingyi ', 'Chen', 'TM020', 'Tank', 'Reinhardt', 'CHN'),
('S01d#6029', 'Xuan ', 'Sun', 'TM007', 'Tank', 'Dva', 'CHN'),
('Saury#5921', 'Song', 'Lu', 'TM007', 'Tank', 'Zarya', 'CHN'),
('Seagull#3304', 'Brandon ', 'Larned', 'TM014', 'DPS', 'Pharah', 'USA'),
('Selly#8134', 'Jeonghwan ', 'An', 'TM023', 'DPS', 'Widowmaker', 'KOR'),
('shadder2k#1823', 'Robert', 'Mocanu', 'TM024', 'DPS', 'Genji', 'USA'),
('ShaDowBurn#8173', 'George ', 'Gushcha', 'TM022', 'DPS', 'Junkrat', 'RUS'),
('ShaDowCat#1463', 'Tianming ', 'Zhao', 'TM015', 'Tank', 'Zarya', 'CHN'),
('Shake#0980', 'Jackson ', 'Kaplan', 'TM026', 'Support', 'Lucio', 'USA'),
('Snow#4567', 'Gabriel ', 'Ceregatto', 'TM030', 'DPS', 'Soldier76', 'BRA'),
('SoOn#0974', 'Terrence ', 'Tarlier', 'TM002', 'DPS', 'Tracer', 'FRA'),
('SPREE#9120', 'Alexandre ', 'Vanhomwegen', 'TM025', 'Tank', 'Reinhardt', 'FRA'),
('Starlike#4720', 'Kangjun', 'Fu', 'TM019', 'Support', 'Lucio', 'CHN'),
('Stoop#1497', 'Warsi Faraaz ', 'Waris', 'TM011', 'Tank', 'Reinhardt', 'USA'),
('SuperPlouk#7692', 'Bastien', 'Klau', 'TM025', 'Tank', 'Zarya', 'FRA'),
('Surefour#3489', 'Lane ', 'Roberts', 'TM023', 'DPS', 'Soldier76', 'CAN'),
('Taimou#2526', 'Timo', 'Kettunen', 'TM001', 'DPS', 'Widowmaker', 'FIN'),
('tenight#3327', 'Pengcheng ', 'Liu', 'TM007', 'Support', 'Mercy', 'CHN'),
('Three3#9327', 'Yiping', 'Ge', 'TM021', 'Tank', 'Roadhog', 'CHN'),
('TimeBoy#3575', 'Won-Tae', 'Kim', 'TM003', 'DPS', 'Soldier76', 'KOR'),
('tobi#1028', 'Jin-mo', 'Yang', 'TM013', 'Support', 'Zenyatta', 'KOR'),
('torkTJO#9800', 'Jake', 'Lepoff', 'TM026', 'DPS', 'Soldier76', 'USA'),
('TviQ#6013', 'Kevyn ', 'Lindstrom', 'TM006', 'DPS', 'Junkrat', 'SWE'),
('TwinkI#6066', 'Young Bin', 'Lim', 'TM017', 'Support', 'Zenyatta', 'KOR'),
('TYGER#2090', 'Thiago', 'Mello', 'TM030', 'DPS', 'Reaper', 'BRA'),
('Typhex#8720', 'Matheus ', 'Santos', 'TM029', 'Tank', 'Reinhardt', 'BRA'),
('Ube#1023', 'Toni ', 'Hakli', 'TM025', 'DPS', 'Reaper', 'FIN'),
('uNFixed#2021', 'Andrei ', 'Leonov', 'TM012', 'Support', 'Mercy', 'RUS'),
('uNKOE#3277', 'Benjamin', 'Chevasson', 'TM002', 'Support', 'Mercy', 'FRA'),
('vallutaja#5763', 'Hendrik-William ', 'Kinks', 'TM012', 'DPS', 'McCree', 'EST'),
('Verbo#3360', 'Stefano ', 'Disalvo', 'TM004', 'Support', 'Mercy', 'USA'),
('Vonethil#5986', 'Oliver ', 'Lager', 'TM011', 'Support', 'Lucio', 'SWE'),
('Whoru#7609', 'Seung Joon', 'Lee', 'TM013', 'DPS', 'Genji', 'KOR'),
('Winghaven#5390', 'Sergi ', 'Torras', 'TM012', 'Tank', 'Reinhardt', 'ESP'),
('wings#8091', 'Tiago ', 'Righi', 'TM030', 'Support', 'Lucio', 'BRA'),
('winz#8754', 'Michael', 'Bignet', 'TM002', 'Support', 'Ana', 'FRA'),
('Worss#9182', 'Tisserant', 'Hugo', 'TM033', 'DPS', 'Reaper', 'FRA'),
('Xepher#9870', 'Jaemo ', 'Koo', 'TM023', 'Tank', 'Reinhardt', 'KOR'),
('Yin#1191', 'Dile', 'Weng', 'TM019', 'DPS', 'Reaper', 'CHN'),
('YjjPP#9018', 'Haojia', 'He', 'TM034', 'DPS', 'Mei', 'CHN'),
('YxBx#3419', 'Shenqi', 'Liu', 'TM020', 'Support', 'Zenyatta', 'CHN'),
('zappis#9109', 'Joonas', 'Alakurtti', 'TM027', 'DPS', 'McCree', 'FIN'),
('Zave#5441', 'Kalle Haag ', 'Nillson', 'TM006', 'Support', 'Symmetra', 'SWE'),
('Zebbosai#6067', 'Sebastian', 'Olsson', 'TM006', 'Support', 'Zenyatta', 'SWE'),
('zombs#8724', 'Jared ', 'Gitlin', 'TM022', 'Tank', 'Dva', 'USA'),
('zunba#1032', 'Joon Hyuk', 'Kim', 'TM013', 'Tank', 'Zarya', 'KOR'),
('Zuppehw#9123', 'Aleksi', 'Kuntsi', 'TM027', 'Support', 'Ana', 'FIN');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamID` varchar(5) NOT NULL,
  `TeamName` varchar(20) DEFAULT NULL,
  `ManagerID` varchar(22) DEFAULT NULL,
  `FormerName` varchar(16) DEFAULT NULL,
  `Country` varchar(3) DEFAULT NULL,
  `CaptainTeamID` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamID`, `TeamName`, `ManagerID`, `FormerName`, `Country`, `CaptainTeamID`) VALUES
('TM001', 'EnVyUs', 'TazMo#9022', 'Ronnie DuPree', 'SWE', 'INTERNETHULK#3715'),
('TM002', 'Rogue', 'Frank#9140', 'Kevyn Lindstrom', 'FRA', 'SoOn#0974'),
('TM003', 'X6-Gaming', 'Rocker#9320', 'Min Joon-Ho', 'KOR', 'GodsB#2404'),
('TM004', 'Immortals', 'NurseBaemax#9732', 'Jeremy Santacruz', 'USA', 'GrimReality#0978'),
('TM005', 'LW Red', 'Agape#9131', 'Kim Seong-hun', 'KOR', 'NoName#4480'),
('TM006', 'Misfits', 'Windz#9732', 'Terrence Tarlier', 'SWE', 'TviQ#6013'),
('TM007', 'Royal', 'Chen#9273', 'Li Haitao', 'CHN', 'Nata#6626'),
('TM008', 'wNv.KR', 'Tyrion#9003', 'Jang Woo Yeong', 'KOR', 'Bdosin#2989'),
('TM009', 'GamerOrigin', 'AsuraxX#9983', 'Raymond Tea', 'FRA', 'Hyp#7857'),
('TM010', 'Black Dragons', 'CherryGumms#9378', 'Thales Lemos', 'BRA', 'alemao#0434'),
('TM011', 'Fnatic', 'DRUNKKZ3#9211', 'Andre Dahlstrom', 'USA', 'coolmatt69#5709'),
('TM012', 'REUNITED', 'Def4lt#9731', 'Stefan Hof', 'NLD', 'uNFixed#2021'),
('TM013', 'Lunatic-Hai', 'dean#9101', 'Lee Tae-jun', 'KOR', 'tobi#1028'),
('TM014', 'NRG Esports', 'oPlaiD#9382', 'Matthew Dias', 'USA', 'Seagull#3304'),
('TM015', 'NGA Club', 'TaiRong#9113', 'Zhou Yi', 'CHN', 'ShaDowCat#1463'),
('TM016', 'AF.Blue', 'Wife#9200', 'Ahn Min-yeong', 'KOR', 'Mano#0086'),
('TM017', 'BK Stars', 'Bokyems#9023', 'Lee Joo Seok', 'KOR', 'TwinkI#6066'),
('TM018', 'Kongdoo Uncia', 'Aurace#9738', 'Kim Joo Seok', 'KOR', 'Bubbly#9763'),
('TM019', 'WE.White', 'Time#9722', 'Yan Bin', 'CHN', 'Starlike#4720'),
('TM020', 'Celestial', 'Tiddler Celestial#9228', 'Wan Kun', 'CHN', 'AmuM2m#9137'),
('TM021', 'Newbee', 'OldZZZ#9071', 'Fan Xiaowei', 'CHN', 'Fool#8703'),
('TM022', 'FaZe Clan', 'fRoD#9232', 'Daniel Montaner', 'USA', 'zombs#8724'),
('TM023', 'Cloud9', 'Danan#9800', 'Derrick Nowicki', 'USA', 'Gods#8123'),
('TM024', 'Liquid', 'Tephus#9221', 'John Fisher', 'USA', 'AZK#9127'),
('TM025', 'Luminosity Gaming', 'Shayed#9028', 'Brian Alesandro', 'FRA', 'SuperPlouk#7692'),
('TM026', 'compLexity Gaming', 'Tifa#9082', 'Joey Wavering', 'USA', 'torkTJO#9800'),
('TM027', 'Ninjas in Pyjamas', 'Seita#9780', 'Joni Paavola', 'FIN', 'hymzi#1287'),
('TM028', 'First e-Sports', 'gasmask#9113', 'Guilherme Lima', 'BRA', 'nosfa#7887'),
('TM029', 'WS Esports', 'Nevelus#9730', 'Rodrigo Vieira', 'BRA', 'murizzz#2489'),
('TM030', 'Keep Gaming', 'Ricci#9900', 'Renan Melo', 'BRA', 'prod#2890'),
('TM031', 'Vitality', 'DAYVZ#9783', 'Simon Vullo', 'FRA', 'Riskin#3024'),
('TM032', 'Sydioda', 'Blurst#9721', 'Jeremy Danton', 'FRA', 'PiPou#1982'),
('TM033', 'ECORP Goldrush', 'Sliaf#9811', 'Leclercq Maxence', 'FRA', 'Izzy#8712'),
('TM034', 'Miraculous Youngster', 'HTBdz#9257', 'Yang Junyi', 'CHN', 'creed#8742');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `TourID` varchar(6) NOT NULL,
  `TourName` varchar(47) DEFAULT NULL,
  `Price` int(6) DEFAULT NULL,
  `WinnerTeamID` varchar(5) DEFAULT NULL,
  `Tier` varchar(7) DEFAULT NULL,
  `Location` varchar(3) DEFAULT NULL,
  `OrganizerID` varchar(5) DEFAULT NULL,
  `StartDate` varchar(10) DEFAULT NULL,
  `EndDate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`TourID`, `TourName`, `Price`, `WinnerTeamID`, `Tier`, `Location`, `OrganizerID`, `StartDate`, `EndDate`) VALUES
('Tour01', 'Overwatch Open', 300000, 'TM006', 'Premier', 'USA', 'Org01', '2016-12-16', '2016-12-18'),
('Tour02', '2016 ESL Overwatch Atlantic Showdown - Gamescom', 191800, 'TM002', 'Premier', 'DEU', 'Org02', '2016-10-07', '2016-12-03'),
('Tour03', 'APAC Premier 2016', 192000, 'TM002', 'Premier', 'CHN', 'Org03', '2016-10-06', '2016-10-16'),
('Tour04', 'Intel Extreme Masters Season XI Gyeonggi', 100000, 'TM005', 'Premier', 'KOR', 'Org04', '2016-09-25', '2016-09-30'),
('Tour05', 'Overwatch APEX Season 1', 100000, 'TM001', 'Premier', 'KOR', 'Org05', '2016-08-20', '2016-08-21'),
('Tour06', 'Overwatch Team Story - Chapter 1', 101500, 'TM007', 'Major', 'CHN', 'Org06', '2016-12-02', '2017-01-14'),
('Tour07', 'Major League Gaming Vegas 2016', 100000, 'TM001', 'Major', 'USA', 'Org07', '2016-12-16', '2016-12-18'),
('Tour08', 'Overwatch Winter Premiere', 100000, 'TM004', 'Major', 'USA', 'Org08', '2017-01-03', '2017-01-28'),
('Tour09', 'DreamHack Winter 2016', 50000, 'TM006', 'Major', 'SWE', 'Org09', '2016-11-25', '2016-11-26'),
('Tour10', 'Liga Brasileira de Overwatch Season 1', 4050, 'TM010', 'Minor', 'USA', 'Org10', '2017-04-01', '2017-04-01'),
('Tour11', 'Overwatch GeForce Cup', 2125, 'TM009', 'Minor', 'FRA', 'Org11', '2017-02-18', '2017-02-19'),
('Tour12', 'Nexus Cup 2017 - Spring', 8700, 'TM008', 'Minor', 'CHN', 'Org12', '2017-03-03', '2017-03-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD KEY `MatchID` (`MatchID`),
  ADD KEY `WinnerTeamID` (`WinnerTeamID`),
  ADD KEY `LoserTeamID` (`LoserTeamID`),
  ADD KEY `MapID` (`MapID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryAbbr`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`HeroName`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`MapID`),
  ADD KEY `Location` (`Location`);

--
-- Indexes for table `matching`
--
ALTER TABLE `matching`
  ADD PRIMARY KEY (`MatchID`),
  ADD KEY `WinnerTeamID` (`WinnerTeamID`),
  ADD KEY `LoserTeamID` (`LoserTeamID`),
  ADD KEY `TourID` (`TourID`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`OrgID`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`BattleTag`),
  ADD KEY `TeamID` (`TeamID`),
  ADD KEY `MainCharName` (`MainCharName`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamID`),
  ADD KEY `ManagerID` (`ManagerID`),
  ADD KEY `Country` (`Country`),
  ADD KEY `CaptainTeamID` (`CaptainTeamID`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`TourID`),
  ADD KEY `WinnerTeamID` (`WinnerTeamID`),
  ADD KEY `Location` (`Location`),
  ADD KEY `OrganizerID` (`OrganizerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`MatchID`) REFERENCES `matching` (`MatchID`),
  ADD CONSTRAINT `competition_ibfk_2` FOREIGN KEY (`WinnerTeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `competition_ibfk_3` FOREIGN KEY (`LoserTeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `competition_ibfk_4` FOREIGN KEY (`MapID`) REFERENCES `map` (`MapID`);

--
-- Constraints for table `hero`
--
ALTER TABLE `hero`
  ADD CONSTRAINT `hero_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `country` (`CountryAbbr`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `country` (`CountryAbbr`);

--
-- Constraints for table `map`
--
ALTER TABLE `map`
  ADD CONSTRAINT `map_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `country` (`CountryAbbr`);

--
-- Constraints for table `matching`
--
ALTER TABLE `matching`
  ADD CONSTRAINT `matching_ibfk_1` FOREIGN KEY (`WinnerTeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `matching_ibfk_2` FOREIGN KEY (`LoserTeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `matching_ibfk_3` FOREIGN KEY (`TourID`) REFERENCES `tournament` (`TourID`);

--
-- Constraints for table `organizer`
--
ALTER TABLE `organizer`
  ADD CONSTRAINT `organizer_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `country` (`CountryAbbr`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`MainCharName`) REFERENCES `hero` (`HeroName`),
  ADD CONSTRAINT `player_ibfk_3` FOREIGN KEY (`Country`) REFERENCES `country` (`CountryAbbr`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`ManagerID`) REFERENCES `manager` (`ManagerID`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`Country`) REFERENCES `country` (`CountryAbbr`),
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`CaptainTeamID`) REFERENCES `player` (`BattleTag`);

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`WinnerTeamID`) REFERENCES `team` (`TeamID`),
  ADD CONSTRAINT `tournament_ibfk_2` FOREIGN KEY (`Location`) REFERENCES `country` (`CountryAbbr`),
  ADD CONSTRAINT `tournament_ibfk_3` FOREIGN KEY (`OrganizerID`) REFERENCES `organizer` (`OrgID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
