-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2018 at 06:12 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_chat_bans`
--

CREATE TABLE `ajax_chat_bans` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ajax_chat_invitations`
--

CREATE TABLE `ajax_chat_invitations` (
  `userID` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ajax_chat_messages`
--

CREATE TABLE `ajax_chat_messages` (
  `id` int(11) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ajax_chat_messages`
--

INSERT INTO `ajax_chat_messages` (`id`, `userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`, `text`) VALUES
(36, 2147483647, 'Server', 4, 0, '2018-09-03 18:41:24', 0x7f000001, '/login (749292)');

-- --------------------------------------------------------

--
-- Table structure for table `ajax_chat_online`
--

CREATE TABLE `ajax_chat_online` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ajax_chat_online`
--

INSERT INTO `ajax_chat_online` (`userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`) VALUES
(489549292, '(749292)', 0, 0, '2018-09-03 18:41:26', 0x7f000001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_chat_bans`
--
ALTER TABLE `ajax_chat_bans`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ajax_chat_invitations`
--
ALTER TABLE `ajax_chat_invitations`
  ADD PRIMARY KEY (`userID`,`channel`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_condition` (`id`,`channel`,`dateTime`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ajax_chat_online`
--
ALTER TABLE `ajax_chat_online`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
