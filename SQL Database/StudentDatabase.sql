-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2018 at 01:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `StudentDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `dbAdminSerialNo` int(11) NOT NULL,
  `dbAdminFname` varchar(64) DEFAULT NULL,
  `dbAdminLname` varchar(64) DEFAULT NULL,
  `dbAdminEmail` varchar(64) DEFAULT NULL,
  `dbAdminPassword` varchar(64) DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`dbAdminSerialNo`, `dbAdminFname`, `dbAdminLname`, `dbAdminEmail`, `dbAdminPassword`) VALUES
(1, 'Atri', 'Tripathi', 'atri', '1234'),
(2, 'Ishant', 'Singh', 'ishant', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `dbCourseSerial` int(11) NOT NULL,
  `dbCourseSec` varchar(64) DEFAULT NULL,
  `dbCourseCredit` int(11) DEFAULT NULL,
  `dbCourseCode` varchar(64) DEFAULT NULL,
  `dbCourseTitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`dbCourseSerial`, `dbCourseSec`, `dbCourseCredit`, `dbCourseCode`, `dbCourseTitle`) VALUES
(1, 'SB,A,B', 1, 'CSE211', 'OOP LAB'),
(2, 'SC,D,E', 3, 'CSE212', 'OOP'),
(4, 'C,D,E', 1, 'CSE111', 'SPL LAB'),
(5, 'A,B,C,D', 3, 'CSE112', 'SPL'),
(6, 'A,B,C,SD', 3, 'CSE123', 'Electronics'),
(7, 'A,B,C,D', 1, 'CSE124', 'Electronics Laboratory'),
(8, 'A,B,SC', 3, 'ACT111', 'Financial and Managerial Accounting'),
(9, 'NA,NB,NC,ND', 3, 'MATH187', 'Fourier & Laplace Transformations & Complex Variable'),
(10, 'A,SB,C', 3, 'CSI233', 'Theory of Computing');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `dbStudentSerialNo` int(11) NOT NULL,
  `dbStudentFname` varchar(64) DEFAULT NULL,
  `dbStudentLname` varchar(64) DEFAULT NULL,
  `dbStudentID` varchar(64) DEFAULT NULL,
  `dbStudentPassword` varchar(64) DEFAULT 'password',
  `dbStudentDepartment` varchar(64) DEFAULT NULL,
  `dbStudentEmail` varchar(64) DEFAULT NULL,
  `dbStudentPhone` varchar(64) DEFAULT NULL,
  `dbStudentAddress` varchar(64) DEFAULT NULL,
  `dbStudentDOB` varchar(64) DEFAULT NULL,
  `dbGuardianFname` varchar(64) DEFAULT NULL,
  `dbGuardianLname` varchar(64) DEFAULT NULL,
  `dbGuardianEmail` varchar(64) DEFAULT NULL,
  `dbGuardianPhone` varchar(64) DEFAULT NULL,
  `dbGuardianPassword` varchar(64) DEFAULT 'password',
  `dbStudent1stSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent2ndSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent3rdSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent4thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent5thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent6thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent7thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent8thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent9thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent10thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent11thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudent12thSemGpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dbStudentCgpa` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`dbStudentSerialNo`, `dbStudentFname`, `dbStudentLname`, `dbStudentID`, `dbStudentPassword`, `dbStudentDepartment`, `dbStudentEmail`, `dbStudentPhone`, `dbStudentAddress`, `dbStudentDOB`, `dbGuardianFname`, `dbGuardianLname`, `dbGuardianEmail`, `dbGuardianPhone`, `dbGuardianPassword`, `dbStudent1stSemGpa`, `dbStudent2ndSemGpa`, `dbStudent3rdSemGpa`, `dbStudent4thSemGpa`, `dbStudent5thSemGpa`, `dbStudent6thSemGpa`, `dbStudent7thSemGpa`, `dbStudent8thSemGpa`, `dbStudent9thSemGpa`, `dbStudent10thSemGpa`, `dbStudent11thSemGpa`, `dbStudent12thSemGpa`, `dbStudentCgpa`) VALUES
(1, 'Atri', 'Tripathi', '1RN16CS017', '1234', 'CSE', 'atri@gmail.com', '01750 943080', 'House no 307, RR Nagar 15', '1996-02-05', 'Sharda', 'Tiwari', 'sharda@gmail.com', '01748 737217', 'password', '3.67', '2.00', '2.67', '3.67', '4.00', '3.33', '2.33', '0.00', '0.00', '0.00', '0.00', '0.00', '3.33'),
(2, 'Vivek', 'Singh', '1RN16CS127', '1234', 'CSE', 'vivek@gmail.com', '01676 338612', 'House no.71, Gujrat', '1995-06-15', 'Arun', 'Singh', 'sofisF@gmail.com', '01799 556644', 'password', '2.00', '4.00', '3.67', '4.00', '3.67', '2.33', '3.67', '0.00', '0.00', '0.00', '0.00', '0.00', '3.67'),
(3, 'Amit', 'Sharma', '1RN16CS007', '1234', 'CSE', 'amit@gmail.com', '01818 556699', 'House no.336, Chandigarg', '2010-07-14', 'Ramchand', 'Sharma', 'his.father@gmail.com', '01775 442255', 'password', '2.67', '3.67', '1.67', '4.00', '3.67', '2.33', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.33'),
(4, 'Nitesh', 'Verma', '1RN16EC063', '1234', 'ECE', 'J.joy@gmail.com', '01687 176783', 'House no.30, PATNA', '2007-07-26', 'Rakesh', 'Verma', 'janina@gmail.com', '01745 556689', 'password', '4.00', '2.00', '3.67', '1.33', '2.33', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3.00'),
(5, 'Ramesh', 'Kumar', '1RN16ME013', '1234', 'MECH', 'c.shoag@gmail.com', '01748 454525', 'House no.12, Nagpur', '2016-07-06', 'Suresh', 'Kumar', 'sjdfsd@gmail.com', '01855 223355', 'password', '3.33', '1.00', '3.67', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.67');

-- --------------------------------------------------------

--
-- Table structure for table `studentgpa`
--

CREATE TABLE `studentgpa` (
  `dbstudentgpaSerial` int(11) NOT NULL,
  `dbstudentgpaID` varchar(64) DEFAULT NULL,
  `dbstudentgpaCurrentCourse` varchar(64) DEFAULT NULL,
  `dbstudentgpaCurrentCourseGPA` varchar(64) DEFAULT NULL,
  `dbstudentgpa1stSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa2ndSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa3rdSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa4thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa5thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa6thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa7thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa8thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa9thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa10thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa11thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa12thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa13thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa14thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa15thSem` varchar(64) DEFAULT NULL,
  `dbstudentgpa16thSem` varchar(64) DEFAULT NULL,
  `dbstudentCGPA` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgpa`
--

INSERT INTO `studentgpa` (`dbstudentgpaSerial`, `dbstudentgpaID`, `dbstudentgpaCurrentCourse`, `dbstudentgpaCurrentCourseGPA`, `dbstudentgpa1stSem`, `dbstudentgpa2ndSem`, `dbstudentgpa3rdSem`, `dbstudentgpa4thSem`, `dbstudentgpa5thSem`, `dbstudentgpa6thSem`, `dbstudentgpa7thSem`, `dbstudentgpa8thSem`, `dbstudentgpa9thSem`, `dbstudentgpa10thSem`, `dbstudentgpa11thSem`, `dbstudentgpa12thSem`, `dbstudentgpa13thSem`, `dbstudentgpa14thSem`, `dbstudentgpa15thSem`, `dbstudentgpa16thSem`, `dbstudentCGPA`) VALUES
(1, '1RN16CS017', 'CSE111:C,CSE211:A', 'CSE211:A:3.40,CSE111:C:2.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '011142047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1RN16CS007', 'CSE111:C', 'CSE111:C:4.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '114142010', 'CSE111:C', 'CSE111:C:3.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1RN16CS127', 'CSE111:C', 'CSE111:C:3.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '1RN16ME013', 'CSE111:C,MATH187:NB,CSE124:B', 'MATH187:NB:2.67,CSE124:B:3.00,CSE111:C:4.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '011143087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1RN16EC063', 'CSE212:D,MATH187:NB,CSE124:B', 'CSE211:A:2.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '011142501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '011152064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '011153033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `dbTeacherSerialNo` int(11) NOT NULL,
  `dbTeacherFname` varchar(64) DEFAULT NULL,
  `dbTeacherLname` varchar(64) DEFAULT NULL,
  `dbTeacherEmail` varchar(64) DEFAULT NULL,
  `dbTeacherPassword` varchar(64) DEFAULT 'password',
  `dbTeacherDepartment` varchar(64) DEFAULT NULL,
  `dbTeacherID` varchar(64) DEFAULT NULL,
  `dbTeacherCourse` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`dbTeacherSerialNo`, `dbTeacherFname`, `dbTeacherLname`, `dbTeacherEmail`, `dbTeacherPassword`, `dbTeacherDepartment`, `dbTeacherID`, `dbTeacherCourse`) VALUES
(1, 'Sanjay', 'Kumar', 'sanjay', '1234', 'CSE', '111023', 'CSE211:A,CSE111:C'),
(2, 'Mamtha', 'Jajur', 'mamtha', '1234', 'CSE', '111089', 'CSE112:C'),
(3, 'Sunil', 'Karnam', 'sunil', '1234', 'EEE', '111055', 'CSE111:D,CSE111:C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`dbAdminSerialNo`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`dbCourseSerial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`dbStudentSerialNo`);

--
-- Indexes for table `studentgpa`
--
ALTER TABLE `studentgpa`
  ADD PRIMARY KEY (`dbstudentgpaSerial`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`dbTeacherSerialNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `dbAdminSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `dbCourseSerial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `dbStudentSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentgpa`
--
ALTER TABLE `studentgpa`
  MODIFY `dbstudentgpaSerial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `dbTeacherSerialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
