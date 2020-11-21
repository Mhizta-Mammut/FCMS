-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 03:02 PM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'About Faculty', 'Faculty of the great versity\r\n', '2017-03-28 07:10:55', '15-10-2020 10:34:21 PM'),
(2, 'General Complaint', 'This is general complaint category', '2017-06-11 10:54:06', '15-10-2020 10:36:00 PM'),
(3, 'Exam ', 'Complaints relating to exam', '2020-10-27 12:23:18', NULL),
(4, 'Course Registration', 'Complaints on Course Registration', '2020-10-27 12:23:59', NULL),
(5, 'Result Compilation', 'Complaints relating to result compilation', '2020-10-27 12:25:35', NULL),
(6, 'Students Welfare', 'Complaints relating to students wellfare', '2020-10-27 12:26:56', NULL),
(7, 'Students-Lecturers Relationship', 'Complaints relating to Students and Lecturers Relationship', '2020-10-27 12:28:14', NULL),
(8, 'Research Projects', 'Complaints relating to research projects', '2020-10-27 12:29:27', NULL),
(9, 'Lecturers', 'Complaints relating to Lecturers', '2020-10-27 12:30:31', NULL),
(10, 'School Fees', 'Complaints relating to school fees', '2020-10-27 12:31:14', NULL),
(11, 'Sports', 'Complaints Relating to extra curricular activities', '2020-10-27 12:32:24', NULL),
(12, 'University Policy', 'Complaints against University policy', '2020-10-27 12:33:18', NULL),
(13, 'Public', 'Complaints from the public', '2020-10-27 12:34:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 2, 'in process', 'we will see what we can do about it', '2020-10-24 15:52:53'),
(7, 11, 'closed', 'We will make sure everything works fine.', '2020-10-28 11:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 1, 'something goes here', '2017-03-28 07:11:20', '15-10-2020 10:37:14 PM'),
(3, 3, 'Exam Malpractice', '2020-10-27 12:35:04', NULL),
(4, 3, 'Exam Timetable', '2020-10-27 12:35:19', NULL),
(5, 3, 'Exams Clashing', '2020-10-27 12:35:45', NULL),
(6, 1, 'About Sub', '2020-10-27 12:55:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', NULL, '2017-03-30 16:52:40', 'closed', '2018-09-05 17:08:27'),
(2, 1, 1, 'Online SHopping', 'General Query', 'testing', 'sample text for demo', '', '2017-03-30 17:05:56', 'in process', '2017-04-01 17:29:19'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'ferwekt lwentgwewt', 'wetwetwe', '', '2017-03-30 17:07:51', 'in process', '2017-05-02 15:57:43'),
(4, 1, 1, 'E-wllaet', 'General Query', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '2. Compendium Selected Paper.doc', '2017-03-30 17:13:14', 'closed', '2017-03-31 16:06:22'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:14:55', NULL, '0000-00-00 00:00:00'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:16', NULL, '0000-00-00 00:00:00'),
(7, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:56', NULL, '0000-00-00 00:00:00'),
(8, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:23:05', NULL, '0000-00-00 00:00:00'),
(9, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:25:09', 'in process', '2017-04-01 18:38:00'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:27:24', NULL, '0000-00-00 00:00:00'),
(11, 1, 1, 'Online SHopping', 'General Query', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:36:32', 'closed', '2020-10-28 11:31:49'),
(12, 1, 1, 'Online SHopping', 'General Query', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:37:09', NULL, '0000-00-00 00:00:00'),
(13, 1, 1, 'Online SHopping', 'General Query', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:39:57', NULL, '0000-00-00 00:00:00'),
(14, 1, 1, 'Online SHopping', ' Complaint', 'vcxvxcvxcv', 'cvcx', 'doctorslog.sql', '2017-03-30 17:41:19', NULL, '0000-00-00 00:00:00'),
(15, 1, 1, 'E-wllaet', 'General Query', 'dsfsd', 'fsdfsdf', '', '2017-03-30 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'E-wllaet', 'General Query', 'dsfsd', 'fsdfsdf', '', '2017-03-31 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'E-wllaet', ' Complaint', 'regarding refund', 'test test', '', '2017-06-11 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Online SHopping', ' Complaint', 'yhytr', 'rtytry', 'About Us.docx', '2017-06-11 11:08:47', NULL, '0000-00-00 00:00:00'),
(19, 6, 1, 'Online SHopping', ' Complaint', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', 'About Us.docx', '2017-06-11 11:15:24', 'closed', '2017-06-11 11:18:33'),
(20, 1, 1, 'E-wllaet', 'General Query', 'sdgsdg', 'gdgsdgsd', '', '2018-05-24 18:26:23', NULL, '0000-00-00 00:00:00'),
(21, 1, 1, 'Online SHopping', 'General Query', 'csdf', 'fsdfs', '', '2018-05-24 18:26:55', NULL, '0000-00-00 00:00:00'),
(22, 1, 1, 'Online SHopping', 'General Query', 'csdf', 'fsdfs', '', '2018-05-24 18:27:02', NULL, '0000-00-00 00:00:00'),
(23, 2, 2, 'ooooo', ' Complaint', 'A', 'QEQEEERKW;LERLKWPEOTKPOWETOERKO', '', '2020-10-23 13:09:57', NULL, '2020-10-28 11:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-10-16 06:08:45', '', 0),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-10-16 06:13:48', '', 0),
(3, 1, 'mhizta.mammut@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-16 06:14:08', '', 1),
(4, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-10-17 12:02:47', '', 0),
(5, 2, 'm@m.m', 0x3a3a3100000000000000000000000000, '2020-10-17 12:05:13', '17-10-2020 08:01:35 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-10-22 21:47:14', '', 0),
(7, 2, 'm@m.m', 0x3a3a3100000000000000000000000000, '2020-10-22 21:56:03', '', 1),
(8, 2, 'm@m.m', 0x3a3a3100000000000000000000000000, '2020-10-23 11:43:12', '', 1),
(9, 2, 'm@m.m', 0x3a3a3100000000000000000000000000, '2020-10-23 12:41:12', '23-10-2020 06:58:17 PM', 1),
(10, 2, 'm@m.m', 0x3a3a3100000000000000000000000000, '2020-10-28 11:12:05', '28-10-2020 12:30:21 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `regNo`, `fullName`, `userEmail`, `password`, `contactNo`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, '', 'Mhizta Mammut', 'mhizta.mammut@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 9999857860, NULL, '2017-03-28 11:44:52', '2020-10-24 15:53:46', 1),
(2, NULL, 'Muhammad Hamisu', 'm@m.m', '827ccb0eea8a706c4c34a16891f84e7b', 809970355, '4f84011c42f9aa4241890a1f2b386504.png', '2020-10-17 12:04:56', '2020-10-17 14:30:20', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
