-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2016 at 03:34 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Title` text NOT NULL,
  `Content` text NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`ID`, `Date`, `Title`, `Content`, `votes`, `comment`, `views`) VALUES
(1, '2016-11-02 16:26:04', 'How to connect jdbc', 'I am stuck at connection java front end to database through Jdbc. Kindly help.', 2, 3, 0),
(2, '2016-11-01 16:26:04', 'how to make jsp pages', 'I am trying to make my java project', 2, 2, 1),
(3, '2016-11-20 16:26:04', 'how to make a java project', 'i am tryimg jjkgjg to do this but i am stuck', 3, 5, 12),
(4, '2016-11-22 10:09:19', 'ta', 'i am trying to ', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `QID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User` varchar(25) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`QID`, `Date`, `User`, `Comment`) VALUES
(1, '2016-11-21 20:04:30', 'shivangi', 'nice question.'),
(1, '2016-11-21 20:04:42', 'shivangi', 'I too need help on this.'),
(1, '2016-11-22 06:57:06', 'shivangi', 'HI'),
(2, '2016-11-22 08:17:47', '${username}', 'hello'),
(2, '2016-11-22 08:24:48', 'nimisha', 'okay'),
(3, '2016-11-22 07:35:05', 'shivangi', 'okay'),
(3, '2016-11-22 07:36:32', 'shivangi', 'hi'),
(3, '2016-11-22 08:44:30', 'nimisha', 'hey'),
(3, '2016-11-22 13:27:42', 'nimisha', 'okay'),
(3, '2016-11-22 14:06:23', 'nimisha', 'okay dokey...allu loki');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'abc@gmail.com',
  `gender` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `password`, `email`, `gender`, `contact`, `address`) VALUES
(1, 'nimisha', 'nimi', 'nimisha@gmail.com', 'Female', '9015', 'janakpuri'),
(2, 'shivangi', 'shivi', 'abc@gmail.com', 'Female', '900', 'rohini'),
(3, 'avaleen', 'ava', 'ava@gmail.com', 'Female', '8789', 'shjshj'),
(4, 'geetika', 'geetu', 'geetu@gmail.com', 'Female', '8979', 'haryana');

-- --------------------------------------------------------

--
-- Table structure for table `voted`
--

CREATE TABLE `voted` (
  `user` varchar(255) NOT NULL,
  `qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voted`
--

INSERT INTO `voted` (`user`, `qid`) VALUES
('nimisha', 1),
('nimisha', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`QID`,`Date`,`User`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
