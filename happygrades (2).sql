-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 نوفمبر 2021 الساعة 08:05
-- إصدار الخادم: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happygrades`
--

-- --------------------------------------------------------

--
-- بنية الجدول `assistant`
--

CREATE TABLE `assistant` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `ID` int(11) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `assistant`
--

INSERT INTO `assistant` (`name`, `email`, `ID`, `password`) VALUES
('Tasneem raed', 'assTasneem @gmail.com', 1444, '789987');

-- --------------------------------------------------------

--
-- بنية الجدول `assistantcourses`
--

CREATE TABLE `assistantcourses` (
  `assistantid` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `courseName` text NOT NULL,
  `courseID` int(11) NOT NULL,
  `assignmentname` text NOT NULL,
  `teacherid` int(11) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `assistantcourses`
--

INSERT INTO `assistantcourses` (`assistantid`, `weight`, `courseName`, `courseID`, `assignmentname`, `teacherid`, `link`) VALUES
(1444, 5, 'web programming ', 1061515, 'Assignment#1', 1999, 'http://localhost/SP/assignment.php');

-- --------------------------------------------------------

--
-- بنية الجدول `grades`
--

CREATE TABLE `grades` (
  `assignmentname` text NOT NULL,
  `courseid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `studentname` text NOT NULL,
  `grade` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `grades`
--

INSERT INTO `grades` (`assignmentname`, `courseid`, `studentid`, `studentname`, `grade`, `weight`) VALUES
('Assignment#1', 1061515, 11819805, 'Israa Shtayeh', 0, 5),
('Assignment#1', 1061515, 11819833, 'Randa Alawneh', 0, 5),
('Assignment#1', 1061515, 11819222, 'Dana Ramadan', 0, 5),
('Assignment#1', 1061515, 11819555, 'Asmaa KHalilia', 0, 5),
('Assignment#1', 1061515, 11819666, 'Masa masri', 0, 5);

-- --------------------------------------------------------

--
-- بنية الجدول `scourses`
--

CREATE TABLE `scourses` (
  `courseid` int(11) NOT NULL,
  `courseName` text NOT NULL,
  `studentid` int(11) NOT NULL,
  `studentname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `scourses`
--

INSERT INTO `scourses` (`courseid`, `courseName`, `studentid`, `studentname`) VALUES
(1061515, 'Web Programming ', 11819805, 'Israa Shtayeh'),
(1061515, 'Web Programming ', 11819833, 'Randa Alawneh'),
(1061515, 'Web Programming', 11819222, 'Dana Ramadan'),
(1061515, 'Web Programming ', 11819555, 'Asmaa KHalilia'),
(1061515, 'Web Programming', 11819666, 'Masa masri');

-- --------------------------------------------------------

--
-- بنية الجدول `student`
--

CREATE TABLE `student` (
  `name` text NOT NULL,
  `ID` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `student`
--

INSERT INTO `student` (`name`, `ID`, `email`, `password`) VALUES
('Israa Shtayeh', 11819805, 'isramuaath@gmail.com', '123321'),
('Randa Alawneh', 11819833, 'randa@gmail.com', '123');

-- --------------------------------------------------------

--
-- بنية الجدول `tcourses`
--

CREATE TABLE `tcourses` (
  `TID` int(11) NOT NULL,
  `TName` text NOT NULL,
  `CName` text NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `tcourses`
--

INSERT INTO `tcourses` (`TID`, `TName`, `CName`, `CID`) VALUES
(1999, 'Sufyan samara', 'web programming ', 1061515),
(1999, 'Sufyan samara', 'Data Base', 1061414),
(2000, 'Mona Dmidi', 'Critical Thinking', 1061313),
(2000, 'Mona Dmidi', 'Advanced ', 1061212),
(2000, 'Mona Dmidi', 'c++ programming language', 1061111);

-- --------------------------------------------------------

--
-- بنية الجدول `teacher`
--

CREATE TABLE `teacher` (
  `name` text NOT NULL,
  `ID` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `teacher`
--

INSERT INTO `teacher` (`name`, `ID`, `email`, `password`) VALUES
('Sufyan samara', 1999, 'Sufyansamaraa@gmail.com', '123321'),
('Mona Dmidi', 2000, 'monad@gmail.com', '147741');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
