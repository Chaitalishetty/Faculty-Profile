-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 12:35 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculty_par`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Sdrn` varchar(8) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Middle_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Department` varchar(10) NOT NULL,
  `Contact_no` bigint(10) NOT NULL,
  `Addr` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Doj` date NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Desig` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `OTP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `Addr`, `Email`, `Doj`, `Qualification`, `Desig`, `Password`, `OTP`) VALUES
('007', 'test', NULL, NULL, '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', 'hncqx5d61o'),
('150', 'Leena', NULL, 'Ragha', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('197', 'Snehal', '', 'Gaikwad', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('248', 'Arpita', 'Goutam', 'Palchoudhury', '1967-06-21', 'COMP', 1234567890, '-', '@', '2001-09-10', 'Ph.D  ( English Literature)', ' Associate Professor', '123', NULL),
('295', 'Vanita', NULL, 'Mane', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('330', 'Namita', 'Damodar', 'Pulgam', '1983-09-10', 'COMP', 1234567890, '-', '@', '2005-12-23', 'M.E. Computer', 'A.P.', '123', 'bb9cad60'),
('374', 'Aditi', 'Sunil', 'Chhabria', '1984-07-23', 'COMP', 1234567890, '-', '@', '2006-07-17', 'M.E. Computers', 'Assistant Professor', '123', '362394c6'),
('377', 'Vaishali', 'Satish', 'Jadhav', '1971-09-17', 'COMP', 1234567890, '-', '@', '2007-07-13', 'Pursuing Ph.D.', 'Assistant Professor', '123', NULL),
('381', 'Narendrakumar ', 'Ramchandra', 'Dasre', '1980-08-01', 'COMP', 1234567890, '-', '@', '2007-07-23', 'Ph. D.', ' Professor', '123', '3cde8181'),
('383', 'Shital', 'Sunil', 'Mali', '1979-05-16', 'COMPS', 1234567890, '-', '@', '2007-07-09', 'Ph,D, pursing', 'Associate Professor', '123', NULL),
('393', 'Dr. Amarsinh', 'V.', 'Vidhate', '1974-05-21', 'COMP', 1234567890, '-', '@', '2007-07-17', 'Ph.D.(Computer Engineering), M.Tech. (Computer Eng', 'Professor', '123', 'ZxpgBY'),
('396', 'Puja', '', 'Padiya', '1979-09-09', 'COMP', 1234567890, '-', '@', '2007-01-08', 'Ph.D. Pursuing', 'Assistant Professor', '123', NULL),
('407', 'Rajshree', NULL, 'Shedge', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('411', 'TUSHAR ', 'HINDURAO', 'GHORPADE ', '1979-02-03', 'COMP', 1234567890, '-', '@', '2008-01-18', 'ME in Computer Engineering', 'Assistant Professor', '123', 'ec71de5a'),
('419', 'Sheetal', NULL, 'Ahir', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', '2MYHy6'),
('482', 'Smita', '', 'Patil-Bhoir', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', '', '', '123', 'JQ76CN'),
('526', 'Vilas', 'Janardan', 'Rane', '1986-11-11', 'COMP', 1234567890, '-', '@', '2011-02-03', 'M.Sc.', 'Assistant Professor', '123', NULL),
('528', 'Swarupa', NULL, 'Bodhe', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('536', 'nilam', 'sangram', 'patil', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'ME electronics', 'Assistant professor', '123', NULL),
('566', 'Pramod', 'Jagannath', 'Bide', '1989-01-25', 'COMP', 1234567890, '-', '@', '2012-08-16', 'M.E', 'AP', '123', 'NULL'),
('570', 'ASHWINI ', 'ANIL', 'RAORANE', '1990-04-23', 'COMP', 1234567890, '-', '@', '2012-08-16', 'ME (Electronics)', 'Lecturer', '123', NULL),
('576', 'Smita', 'dinesh', 'Bharne', '1982-06-14', 'COMP', 1234567890, '-', '@', '2012-09-13', 'M.Tech', 'Assistant Professor', '123', 'a22bc9ae'),
('583', 'Snehal', NULL, 'Mumbailkar', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', 'RKfwZg'),
('586', 'Vijaylaxmi', 'S', 'Bittal', '1984-07-31', 'COMP', 1234567890, '-', '@', '2013-01-10', 'M.Tech', 'assistant professor', '123', NULL),
('587', 'Trupti', 'prashant', 'Patil', '1984-07-08', 'COMP', 1234567890, '-', '@', '2013-01-07', 'ME (copmuter)', 'Assistant Professor', '123', NULL),
('593', 'Prathmesh', 'Narayan', 'Gunjgur', '1988-10-18', 'COMP', 1234567890, '-', '@', '2013-01-24', 'M.E Computer Engineering', 'Assistant Professor', '123', NULL),
('601', 'Kriti', '', 'Karnam', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'B.E.,Mtech', 'Assistant Professor', '123', 'e7fa430d'),
('603', 'Harsha', '', 'Saxena', '1990-11-06', 'COMP', 1234567890, '-', '@', '2013-07-01', 'mtech', 'assistant proffesor', '123', '2ff22efa'),
('609', 'Nazia', '', 'S', '1982-01-02', 'COMP', 1234567890, '-', '@', '2013-07-08', 'M.Tech', 'Asst Professor', '123', NULL),
('615', 'Shilpa', 'Tushar', 'Bhangale', '1976-07-27', 'CE', 1234567890, '-', '@', '2013-07-15', 'MPHIL- SET', 'assistant professor', '123', NULL),
('618', 'Rubi', '', 'Mandal', '1986-01-19', 'COMP', 1234567890, '-', '@', '2013-07-25', 'Mtech', 'Lecturer', '123', NULL),
('627', 'Apurva', 'Swapnil', 'Shinde', '1991-12-18', 'COMP', 1234567890, '-', '@', '2013-08-13', 'M.E. (Computers)', 'Assistant Professor', '123', '8023ed41'),
('631', 'Savita', 'Kiran', 'Sawant', '1983-12-15', 'COMP', 1234567890, '-', '@', '2016-01-02', 'M.Tech in Computer Engg', 'Assistant Professor', '123', 'd2367116'),
('638', 'Ekta', NULL, 'Sarda', '0000-00-00', '', 1234567890, '-', '@', '0000-00-00', '', '', '123', NULL),
('650', 'Bhavana', 'Bhimsen', 'Turorikar', '1983-07-03', 'COMP', 1234567890, '-', '@', '2014-08-07', 'ME(Computer Networks)', 'Assistant Professor', '123', '694a090f'),
('654', 'MANSI', 'BHUSHAN', 'JAWALE', '1991-10-31', 'COMP', 1234567890, '-', '@', '2014-06-15', 'M.A.', 'Lecturer', '123', NULL),
('657', 'KHUSHBOO', 'SHIVKUMAR', 'PICHHODE', '1989-12-03', 'COMPS', 1234567890, '-', '@', '2014-07-16', 'M.E', 'Assistant Professor', '123', NULL),
('663', 'Shilpa', 'Vilas', 'Mahagaonkar', '1984-05-24', 'COMP', 1234567890, '-', '@', '2014-07-16', 'ME', 'Assistant Professor', '123', NULL),
('672', 'Pallavi', 'H.', 'Chitte', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.E.Computer Engineering', 'Assistant Professor', '123', '41fd65ae'),
('677', 'kamlesh', 'lekhraj', 'nenwani', '1987-04-04', 'CE', 1234567890, '-', '@', '2014-08-01', 'M.E.', 'Lecturer', '123', NULL),
('679', 'Dhanashri', 'Ashok', 'Bhosale', '1989-03-10', 'COMP', 1234567890, '-', '@', '2013-02-09', 'ME', 'lecturer', '123', '8aa5381f'),
('687', 'Sumithra', '', 'T.V', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.TECH', '', '123', NULL),
('693', 'vishvas', 'hasuram', 'patil', '1986-01-15', 'COMP', 1234567890, '-', '@', '2015-07-01', 'M.sc.', 'Lecturer', '123', '703141b6'),
('696', 'varsha', 'ramesh', 'patil', '0091-04-29', 'COMP', 1234567890, '-', '@', '2015-06-17', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL),
('699', 'Preet Chandan', '', 'Kaur', '1989-02-09', 'COMP', 1234567890, '-', '@', '2015-07-15', 'M.E.Computer Engineering', 'Assistant professor', '123', 'CZtPQs'),
('700', 'Pranali', 'Mohan', 'Yadav', '1990-12-18', 'CE', 1234567890, '-', '@', '2015-06-15', 'BE, ME (persuing)', 'Teaching Assistant', '123', NULL),
('711', 'PRAMOD ', 'HARIBHAU', 'KACHARE', '1991-04-24', 'COMP', 1234567890, '-', '@', '2015-07-07', 'M.Tech.', 'Assistant Professor', '123', '536de3d5'),
('712', 'DIAMBAR', 'VITTHALBUWA', 'PURI', '1990-09-29', 'COMP', 1234567890, '-', '@', '2015-07-07', 'M.Tech.', 'Assistant Professor', '123', '4241a33d'),
('717', 'SWARALI', 'PRASHANT', 'SHETH', '1985-01-24', 'COMP', 1234567890, '-', '@', '2015-07-23', 'M.Tech.', 'Lecturer', '123', 'a862f9af'),
('719', 'CHANDRAKANT', 'JAGANNATH', 'GAIKWAD', '1972-08-02', 'COMP', 1234567890, '-', '@', '2015-08-10', 'Ph.D.', 'Professor', '123', '36ed2611'),
('721', 'Nivedita', 'Elan', 'Shekhar', '1992-04-28', 'COMPS', 1234567890, '-', '@', '2015-08-11', 'M.E.Computer Engineering', 'Assitance Professor', '123', NULL),
('726', 'Krupi', 'Pranav', 'Saraf', '1989-07-19', 'COMPS', 1234567890, '-', '@', '2016-01-06', 'ME', 'Assistant Professor', '123', NULL),
('728', 'saguna', 'kailas', 'ingle', '1983-08-05', 'COMP', 1234567890, '-', '@', '2016-12-03', 'M.E.(IT)', 'Assistant Professor', '123', NULL),
('752', 'Shilpa', 'Gulabrao', 'Kolte', '1977-06-17', 'COMP', 1234567890, '-', '@', '2016-06-22', 'M.E.', 'A.P.', '123', '0bf3ade3'),
('765', 'Pornima', 'Kailas', 'Gidhe', '1993-04-06', 'COMP', 1234567890, '-', '@', '2016-07-12', 'M.E.Computer Engineering', 'Assistant professor', '123', NULL),
('767', 'Bijal', 'Chandubhai', 'Panchal', '1989-12-11', 'COMP', 1234567890, '-', '@', '2016-07-12', 'M.E', 'Assistant Professor', '123', '3acb890f'),
('769', 'SAYALI', 'ASHOK', 'SAPKAL', '1989-05-08', 'COMP', 1234567890, '-', '@', '2016-07-13', 'M.E', 'Lecturer', '123', NULL),
('770', 'Siddhi', 'Nikhil', 'Kadu', '1989-12-01', 'COMP', 1234567890, '-', '@', '2016-07-12', 'M.E', 'Assistant Professor', '123', '5b6a61d0'),
('772', 'SAMEER', 'SHAMRAO', 'CHIKANE', '1993-09-03', 'COMPS', 1234567890, '-', '@', '2016-07-13', 'ME', 'ASSISTANT PROFESSOR', '123', NULL),
('785', 'Snehal', 'Shashikant', 'Bhoir', '1992-08-15', 'COMP', 1234567890, '-', '@', '2016-07-21', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL),
('786', 'JYOTI', 'VINAYAK', 'DEOGIRIKAR', '1994-01-14', 'COMP', 1234567890, '-', '@', '2016-08-01', 'ME', 'Assistant professor', '123', NULL),
('787', 'SHRADDHA', 'ANANT', 'NARHARI', '1989-07-31', 'COMP', 1234567890, '-', '@', '2017-12-15', 'ME', 'Assitant Professor', '123', NULL),
('800', 'Prof. Prashant', 's', 'Lokhande', '1974-06-16', 'COMP', 1234567890, '-', '@', '2017-01-16', 'ME IT', 'Associate Professor', '123', NULL),
('802', 'PAYAL', 'FATEHLAL', 'SANCHETI', '1994-04-02', 'COMP', 1234567890, '-', '@', '2017-01-23', 'B.E', 'LAB INSTRUCTOR', '123', NULL),
('803', 'Snehal', 'Suresh', 'Nikalje', '1992-10-27', 'COMP', 1234567890, '-', '@', '2017-02-01', 'BE', 'Lab Instructor', '123', NULL),
('804', 'roshni', 'satish', 'singh', '1993-06-18', 'COMP', 1234567890, '-', '@', '2017-02-01', 'BE', 'lab instructor', '123', NULL),
('806', 'Sathya', ' ', 'Arumugam', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'Ph.D', 'Assistant Professor', '123', NULL),
('807', 'vishwanath', 'subhaschandra', 'chikkareddi', '1988-02-24', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.TECH( COMPUTER SCIENCE AND ENGG), PhD(pursuing)', 'Assistant Professor', '123', NULL),
('811', 'Rashmi', 'Amol', 'Dhumal', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.E.Computer Engineering', 'Associate Professor', '123', NULL),
('812', 'Tabassum', 'Altaf', 'Maktum', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL),
('817', 'PRACHI', 'DEEPAK', 'JUNWALE', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.TECH( COMPUTER SCIENCE AND ENGG)', 'ASSISTANT PROFESSOR', '123', NULL),
('821', 'NEERAJ', 'KUMAR', 'SHARMA', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'PhD', 'PROFESSOR', '123', NULL),
('826', 'Ida', 'Hector', 'Lionel', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.Tech(Information Technology)', 'Assistant Professor', '123', 'NULL'),
('827', 'PRIYANKA', 'RAMRAO', 'GUTTE', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.Tech(Control system)', 'Asst. Professor', '123', NULL),
('829', 'Himani', 'Mohan', 'Jawale', '0000-00-00', 'COMP', 1234567890, '-', '@', '0000-00-00', 'M.TECH( COMPUTER ENGG)', 'Assistant Professor', '123', NULL),
('840', 'Dr. Dhiraj', 'B', 'Magare', '1981-02-02', 'COMP', 1234567890, '-', '@', '2017-11-20', 'Doctor', 'Associate Professor', '123', NULL),
('842', 'Suchita', 'Suresh', 'Dange', '1993-04-26', 'COMP', 1234567890, '-', '@', '2017-12-04', 'M.TECH( COMPUTER ENGG)', 'Assistant Professor', '123', NULL),
('848', 'Rohini', 'Lakhanlal', 'Damahe', '1988-02-03', 'COMP', 1234567890, '-', '@', '2017-11-12', 'ME(Computer Engineering)', 'Assistant Professor', '123', NULL),
('858', 'SHITAL', 'HARIBHAU', 'GADE', '1983-06-06', 'COMP', 1234567890, '-', '@', '2018-01-02', 'M.E.Computer Engineering', 'ASSISTANT PROFESSOR', '123', NULL),
('874', 'AMIT', 'KAILASH', 'BARVE', '1985-08-26', 'COMP', 1234567890, '-', '@', '2018-02-16', 'Phd', 'Assiciate Professor', '123', NULL),
('876', 'BHARTI', 'VISHANDAS', 'NATHWANI', '1984-07-27', 'COMPS', 1234567890, '-', '@', '2018-02-20', 'Ph.D.', 'Assistant Professor', '123', NULL),
('878', 'Bharti', 'A', 'Joshi', '1970-04-25', 'COMPS', 1234567890, '-', '@', '2018-03-01', 'Phd', 'Professor', '123', 'bHhwYV'),
('888', 'Dr Dhananjay', 'Manohar', 'Dakhane', '1972-04-06', 'COMP', 1234567890, '-', '@', '1972-04-06', 'PhD', 'Professor', '123', 'hDvgGJ'),
('892', 'Dr. Yogita ', 'Dhanraj', 'Mistry', '1979-07-26', 'COMP', 1234567890, '-', '@', '2018-12-17', 'Ph. D.', 'Associate Professor', '123', 'euFpRr'),
('894', 'B', 'J', 'Gorad', '1988-04-04', 'COMP', 1234567890, '-', '@', '2018-12-24', 'M.Tech CST,  PhD Pursuing', 'Assistant Professor', '123', NULL),
('896', 'SANGITA', 'SANTOSH', 'CHAUDHARI', '1977-06-10', 'COMP', 1234567890, '-', '@', '2019-01-01', 'PhD', 'professor', '123', '4GoHWM'),
('897', 'R', 'D', 'Suryawanshi', '1986-05-12', 'COMP', 1234567890, '-', '@', '2019-01-01', 'Msc, Net,Phd Persuing', 'Assistant Professor', '123', 'D7qHRm'),
('898', 'vaibhav', 'Eknath', 'Narawade', '1977-08-08', 'COMP', 1234567890, '-', '@', '2019-01-03', 'PhD Computer Enggineering', 'Professor', '123', 'uWzgp2'),
('999', 'a', 'a', 'a', '0000-00-00', 'INSTR', 1234567890, '-', '@', '0000-00-00', 'a', 'a', '123', 'dd867ff4'),
('abc', 'sf', 'f', 'h', '2016-01-07', 'CE', 1234567890, '-', '@', '2016-01-12', 'ME pursuing', 'ap', '123', '1225dbb4');

-- --------------------------------------------------------

--
-- Table structure for table `orientation`
--

CREATE TABLE `orientation` (
  `Srno` int(11) NOT NULL,
  `SDRN` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `University` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Venue` varchar(80) NOT NULL,
  `Date` date NOT NULL,
  `uploads` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orientation`
--

INSERT INTO `orientation` (`Srno`, `SDRN`, `Name`, `University`, `Subject`, `Semester`, `Venue`, `Date`, `uploads`) VALUES
(1, 150, 'Dr. Ragha Leena R.', 'University of Mumbai', 'Orientation on AI and SC', 'VII', 'RAIT on behalf of Mumbai University', '2020-01-01', ''),
(2, 393, 'Dr. Vidhate Amarsinh A.', 'University of Mumbai', 'Mobile Communication & Computing', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(3, 393, 'Dr. Vidhate Amarsinh A.', 'University of Mumbai', 'Mobile Application Development Lab', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(4, 393, 'Dr. Vidhate Amarsinh A.', 'University of Mumbai', 'Ad-hoc Wireless Network of BE Computer Engineering', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(5, 393, 'Dr. Vidhate Amarsinh A.', 'University of Mumbai', 'Computational Lab-II of BE Computer Engineering of', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(6, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Advanced Computer Network', 'VI (CS DLO', 'VESIT, Mumbai', '2020-01-01', ''),
(7, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Syllabus Setting', 'VIII', 'Online DBATU University', '2020-01-01', ''),
(8, 878, 'Dr. Joshi Bharti A.', 'University of Mumbai', 'Orientation on MIS', 'VII', 'Pillai College of Engineering, Panvel', '2020-01-01', ''),
(9, 896, 'Dr. Chaudhari Sangita S.', 'University of Mumbai', 'HPC ', 'VII(IT)', 'Terna Engineering College, Nerul', '2020-01-01', ''),
(10, 821, 'Dr. Sharma Neeraj K.', 'University of Mumbai', 'Orientation AI &SC ', 'VII(CE)', 'RAIT', '2020-01-01', ''),
(11, 407, 'Mrs. Shedge Rajashree A.', 'University of Mumbai', 'Orientation of NLP', 'VIII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(12, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Mobile Communication & Computing', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(13, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Mobile Application Development Lab', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(14, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Ad-hoc Wireless Network of BE Computer Engineering', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(15, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Computational Lab-II of BE Computer Engineering of', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(16, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Distributed Computing ', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(17, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'Distributed Computing Lab', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(18, 396, 'Mrs. Padiya Puja Y.', 'University of Mumbai', 'HPC ', 'VII(IT)', 'Terna Engineering College, Nerul', '2020-01-01', ''),
(19, 374, 'Mrs. Chhabria Aditi S.', 'University of Mumbai', 'Big Data Analytics', 'VII', 'DBIT,Mumbai', '2020-01-01', ''),
(20, 374, 'Mrs. Chhabria Aditi S.', 'University of Mumbai', 'Human Machine Interaction', 'VIII', 'TSEC, Mumbai', '2020-01-01', ''),
(21, 812, 'Mrs. Maktum Tabassum A.', 'University of Mumbai', 'ASSDF', 'VII', 'D. J. Sangvi COE', '2020-01-01', ''),
(22, 807, 'Mr. Chikkareddi Vishwanath S.', 'University of Mumbai', 'Ad-hoc Wireless Network of BE Computer Engineering', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(23, 807, 'Mr. Chikkareddi Vishwanath S.', 'University of Mumbai', 'Computational Lab-II of BE Computer Engineering of', 'VIII', 'K.J. Somaiyya institute of engineering and information Technology, Sion, Mumbai', '2020-01-01', ''),
(24, 411, 'Mr. Ghorpade Tushar H.', 'University of Mumbai', 'BDA', 'VII', 'DBIT,Mumbai', '2020-01-01', ''),
(25, 687, 'Mrs. Sumithra T.V', 'University of Mumbai', 'Orientation on AI and SC', 'VII', 'RAIT on behalf of Mumbai University', '2020-01-01', ''),
(26, 894, 'Mr. Gorad Balwant J.', 'University of Mumbai', 'Big Data Analytics', 'VI', 'DBIT, Kurla', '2020-01-01', ''),
(27, 650, 'Mrs. Alte Bhavna A.', 'University of Mumbai', 'Mobile Communication & Computing', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(28, 650, 'Mrs. Alte Bhavna A.', 'University of Mumbai', 'Mobile Application Development Lab', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(29, 650, 'Mrs. Alte Bhavna A.', 'University of Mumbai', 'Distributed Computing ', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(30, 650, 'Mrs. Alte Bhavna A.', 'University of Mumbai', 'Distributed Computing Lab', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(31, 593, 'Mr. GunjgurPrathmesh N.', 'University of Mumbai', 'Mobile Communication & Computing', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(32, 593, 'Mr. GunjgurPrathmesh N.', 'University of Mumbai', 'Mobile Application Development Lab', 'VII', 'Shah Anchor Kutchhi College of Engineering, Chembur, Mumbai', '2020-01-01', ''),
(33, 638, 'Mrs. Ekta K. Sarda', 'University of Mumbai', 'Orientation on DSIP', 'VII', 'Rajiv Gandhi Institute of Technology, Andhrei', '2020-01-01', ''),
(34, 603, 'Ms. Saxena Harsha A.', 'University of Mumbai', 'Distributed Computing ', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(35, 603, 'Ms. Saxena Harsha A.', 'University of Mumbai', 'Distributed Computing Lab', 'VIII', 'Vivekanand Institute of Technology', '2020-01-01', ''),
(36, 0, '', '', '', '', '', '2020-01-01', ''),
(37, 374, 'Mrs. Chhabria Aditi S.', 'University of Mumbai ', 'Data Structures', 'III', 'Pillai College of Engineering', '2020-01-01', ''),
(38, 407, 'Mrs. Shedge Rajashree A.', 'University of Mumbai', 'Mini Project-IA', 'III', 'LT College of Engg.(online )', '2020-01-01', ''),
(39, 411, 'Mr. Ghorpade Tushar H.', 'Mumbai ', 'Database Management System (ITC303)', 'III', 'K.J.Somaiya -Online', '2020-01-01', ''),
(40, 411, 'Mr. Ghorpade Tushar H.', 'Mumbai University', 'DBMS and SQL Lab', 'III', 'K.J.Somaya Sion', '2020-01-01', ''),
(41, 419, 'Mrs. Ahir Sheetal A.', 'Universityof Mumbai', 'Skill Base Lab.Course :Object Oriented Programming', 'III', 'Online', '2020-01-01', ''),
(42, 576, 'Mrs. Bharne Smita D.', 'Universityof Mumbai', 'Skill Base Lab Course: Object Oriented Programming', 'III', 'Online', '2020-01-01', ''),
(43, 583, 'Ms. Mumbaikar Snehal J.', 'University of Mumbai', 'Mini project A', 'III', 'online', '2020-01-01', ''),
(44, 583, 'Ms. Mumbaikar Snehal J.', 'Mumbai', 'SBL-JAVA', 'III', 'online', '2020-01-01', ''),
(45, 627, 'Mrs. Shinde Apurva S.', 'University of Mumbai', 'Computer Graphics and Computer Graphics Lab', 'III', 'TSEC Bandra(Online)', '2020-01-01', ''),
(46, 638, 'Mrs. Ekta K. Sarda', 'Mumbai University', 'Computer Graphics', 'III', 'Thadomal Shahani Engineering College, Bandra', '2020-01-01', ''),
(47, 650, 'Mrs. Alte Bhavna A.', 'Mumbai University', 'Digital Logic & Computer Organization and Architec', 'III', 'Datta Meghe College of Engineering', '2020-01-01', ''),
(48, 677, 'Mr. Nenwani Kamlesh L.', 'Mumbai University', 'Data Strcuture', 'III', 'online by PILLAI COLLEGE OF ENGINEERING', '2020-01-01', ''),
(49, 679, 'Ms. Bhosale Dhanashri A.', 'Mumbai University', 'Digital Logic and Computer Organization and Organi', 'III', 'Datta Meghe College Of Engineering', '2020-01-01', ''),
(50, 752, 'Dr. Kolte Shilpa G.', 'Mumbai University ', 'Mini Project-IA (CSM301) ', 'III', 'LTCOE,Navi Mumbai', '2020-01-01', ''),
(51, 752, 'Dr. Kolte Shilpa G.', 'Mumbai University', 'SBL JAVA', 'III', 'RGIT, MUMBAI', '2020-01-01', ''),
(52, 811, 'Mrs. Dhumal Rashmi A.', 'Mumbai University', 'Discrete Structure and Graph Theory', 'III', 'Online', '2020-01-01', ''),
(53, 811, 'Mrs. Dhumal Rashmi A.', 'Mumbai University', 'SBL-Java', 'III', 'RGIT Mumbai', '2020-01-01', ''),
(54, 812, 'Mrs. Maktum Tabassum A.', 'University of Mumbai', 'Data Structures', 'III', 'PIllai College of Engineering (Online)', '2020-01-01', ''),
(55, 878, 'Dr. Joshi Bharti A.', 'Mumbai UNiversity', 'Discrete Structures and Graph Theory', 'III', 'Online', '2020-01-01', ''),
(56, 896, 'Dr. Choudhari Sangeeta S.', 'Mumbai University', 'Computer Graphics', 'III', 'Thadomal Shahani Engineering College, Bandra', '2020-01-01', ''),
(57, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Java', 'III', 'Online', '2020-01-01', ''),
(58, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai ', 'Mini Project ', 'V', 'Online', '2020-01-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `Srno` int(11) NOT NULL,
  `SDRN` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `University` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Semester` varchar(11) NOT NULL,
  `Venue` varchar(80) NOT NULL,
  `Date` date NOT NULL,
  `uploads` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`Srno`, `SDRN`, `Name`, `University`, `Subject`, `Semester`, `Venue`, `Date`, `uploads`) VALUES
(1, 150, 'Dr. Ragha Leena R.', 'D.Y.patil Deemed to be University', 'Board Of Studies (Syllabus  Setting and Verificati', 'III', 'Online', '2020-01-01', ''),
(2, 396, 'Mrs. Padiya Puja Y.', 'D Y Patil Deemed to be University', 'Computer NEtworks', 'IV', 'Online - Ramaro Adik Institute of Technology', '2020-01-01', ''),
(3, 295, 'Dr. Mane Vanita M.', 'University of Mumbai', 'Digital Forensic (ECCDLO_6013)', 'VI', 'Pillai HOC College of Engineering and Technology, Rasayani', '2020-01-01', ''),
(4, 407, 'Mrs. Shedge Rajashree A.', 'DYPU', 'SBL-1 & Mini Project', 'III', 'RAIT(online)', '2020-01-01', ''),
(5, 411, 'Mr. Ghorpade Tushar H.', 'D.Y.Patil Deemed to be university', 'Database Management System', 'IV', 'Ramrao Adik Institute of Technology', '2020-01-01', ''),
(6, 393, 'Dr. Vidhate Amarsinh A.', 'Punyashlok Ahilyadevi Holkar Solapur University, S', 'BoS Meeting for syallbus setting', 'III', 'online', '2020-01-01', ''),
(7, 393, 'Dr. Vidhate Amarsinh A.', 'punyashlok Ahilyadevi Hotkar solapur University, s', 'Board of Studies in Information Technology of Walc', 'III', 'Online', '2020-01-01', ''),
(8, 393, 'Dr. Vidhate Amarsinh A.', 'D.Y.patil Deemed to be University', 'Board Of Studies (Syllabus  Setting and Verificati', 'III', 'Online', '2020-01-01', ''),
(9, 898, 'Dr. NarawadeVaibhav E.', 'Dr. BATU, Lonere', 'Computer Engineering', 'VII', 'Online', '2020-01-01', ''),
(10, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Bsc_Computer Science ', 'VII', 'Online', '2020-01-01', ''),
(11, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Information Technology', 'VII', 'Online', '2020-01-01', ''),
(12, 898, 'Dr. NarawadeVaibhav E.', 'University of Mumbai', 'Information Technology', 'VII', 'Online', '2020-01-01', ''),
(13, 396, 'Mrs. Padiya Puja Y.', 'D Y Patil Deemed to be University', 'Operating System and Computer Networks', 'IV', 'Online', '2020-01-01', ''),
(14, 812, 'Mrs. Maktum Tabassum A.', 'D Y Patil Deemed to be University', 'Theoretical Computer Science', 'IV', 'Online', '2020-01-01', ''),
(15, 150, 'Dr. Ragha Leena R.', 'Mumbai University ', 'BOS Information Technology ', 'NA', '', '2020-01-01', ''),
(16, 150, 'Dr. Ragha Leena R.', 'Mumbai University ', 'Syllabus revision workshop at Datta Meghe College ', 'NA', 'Datta Meghe College of Engineering,Airoli', '2020-01-01', ''),
(17, 150, 'Dr. Ragha Leena R.', 'Mumbai University ', 'Chairman and Paper Setter', 'ME Sem-1(AO', 'Mumbai University', '2020-01-01', ''),
(18, 150, 'Dr. Ragha Leena R.', 'Mumbai University ', 'Chairman and Paper Setter', 'ME Sem-2(Ad', 'Mumbai University', '2020-01-01', ''),
(19, 150, 'Dr. Ragha Leena R.', 'Mumbai University ', 'Chairman and Paper Setter', 'TE Sem-5(Mu', 'Mumbai University', '2020-01-01', ''),
(20, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'BE - Sem-VI', 'Mumbai University', '2020-01-01', ''),
(21, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', ' Chairman & paper setter', 'BE - Sem-VI', 'Mumbai University', '2020-01-01', ''),
(22, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'ME (Comp. E', 'Mumbai University', '2020-01-01', ''),
(23, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'T.E.(COMPUT', 'Mumbai University', '2020-01-01', ''),
(24, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'BE - Sem-VI', 'Mumbai University', '2020-01-01', ''),
(25, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'BE - Sem-VI', 'Mumbai University', '2020-01-01', ''),
(26, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'B.E.(COMPUT', 'Mumbai University', '2020-01-01', ''),
(27, 393, 'Dr. Vidhate Amarsinh A.', 'Mumbai University ', 'paper setter', 'T.E.(COMPUT', 'Mumbai University', '2020-01-01', ''),
(28, 898, 'Dr. NarawadeVaibhav E.', 'Mumbai University ', 'Member, BOS Information Technology ', '', '', '2020-01-01', ''),
(29, 898, 'Dr. NarawadeVaibhav E.', 'Mumbai University ', 'paper setter', 'ME (Comp Ne', 'Mumbai University', '2020-01-01', ''),
(30, 898, 'Dr. NarawadeVaibhav E.', '', 'Member, BOS Computer Science', '', '', '2020-01-01', ''),
(31, 898, 'Dr. NarawadeVaibhav E.', 'Mumbai University', 'Convenor - Java Programming Lab', 'Sem - III', 'Mumbai University', '2020-01-01', ''),
(32, 898, 'Dr. NarawadeVaibhav E.', 'Dr. BATU, Lonere', 'Syllabus Committe Member', 'B. Tech fin', 'Dr. BATU, Lonere', '2020-01-01', ''),
(33, 898, 'Dr. NarawadeVaibhav E.', 'DBATU , Lonere', 'Syllabus Settings', 'VIII', 'Online', '2020-01-01', ''),
(34, 898, 'Dr. NarawadeVaibhav E.', 'Mumbai University', 'Syllabus Setting', 'IV, VI, VII', 'online', '2020-01-01', ''),
(35, 896, 'Dr. Chaudhari Sangita S.', 'AICTE Curriculum', 'C Programming', 'II', 'LTCOE', '2020-01-01', ''),
(36, 874, 'Dr. Barve Amit K.', 'Mumbai University', 'Multimedia System (Paper Setting)', 'III', 'Mumbai University', '2020-01-01', ''),
(37, 295, 'Mrs. Mane Vanita M.', 'Mumbai University', 'Analysis of algorithm and Analysis of algorithm La', 'IV', 'Universal College of Engineering, Kaman Bhivandi road, Kaman village, Vasai.', '2020-01-01', ''),
(38, 295, 'Mrs. Mane Vanita M.', 'Mumbai University', 'Discrete Structures and Automata Theory', 'IV', 'ECS. Fr. CRCE', '2020-01-01', ''),
(39, 295, 'Mrs. Mane Vanita M.', 'University of Mumbai', 'Discrete Structures and Automata Theory', '4th', 'Dept of Electronics and Computer Science Engineering,Fr. Conceicao Rodrigues Col', '2020-01-01', ''),
(40, 811, 'Mrs. Dhumal Rashmi A.', 'Mumbai University', 'Discrete Structure and Graph Theory', 'III', 'VESIT, Chembur', '2020-01-01', ''),
(41, 811, 'Mrs. Dhumal Rashmi A.', 'university of Mumbai', 'Discrete Structure and GraphvTheory', '3rd', 'VESIT, Chembur', '2020-01-01', ''),
(42, 374, 'Mrs. Chhabria Aditi S.', 'University of Mumbai', 'Data structures ', '3rd', 'Pillai College of Engineering', '2020-01-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `Srno` int(11) NOT NULL,
  `SDRN` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `criteria` varchar(16) NOT NULL,
  `Name_workshop` varchar(5) NOT NULL,
  `sponsor` varchar(4) NOT NULL,
  `venue` varchar(80) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `ndays` int(11) NOT NULL,
  `organiser` varchar(28) NOT NULL,
  `org_type` varchar(8) NOT NULL,
  `sfunding` varchar(21) NOT NULL,
  `ramount` int(11) NOT NULL,
  `amount_funded` int(11) NOT NULL,
  `TA` int(11) NOT NULL,
  `uploads` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`Srno`, `SDRN`, `Name`, `criteria`, `Name_workshop`, `sponsor`, `venue`, `sdate`, `edate`, `ndays`, `organiser`, `org_type`, `sfunding`, `ramount`, `amount_funded`, `TA`, `uploads`) VALUES
(17, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(18, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'Block', 'AICT', 'online', '2019-07-29', '2019-10-18', 84, 'online', 'National', '1100', 0, 0, 0, ''),
(19, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(20, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(21, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Machi', 'NIL', 'Dept of CSE, RGIT, Adheri', '2019-12-16', '2019-12-20', 5, 'Dept of CSE, RGIT, Adheri', 'National', 'NA', 0, 0, 0, ''),
(22, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Rubri', 'NIL', 'RAIT', '2019-10-17', '2019-10-17', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(23, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(24, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(25, 878, 'Dr. Joshi Bharti A.', 'STTP', 'STTP ', 'NIL', 'Pillai College of Engineering, Panvel', '2019-07-01', '2019-07-05', 5, 'Pillai College of Engineerin', 'National', '1000', 0, 0, 0, ''),
(26, 878, 'Dr. Joshi Bharti A.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(27, 878, 'Dr. Joshi Bharti A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(28, 898, 'Dr. NarawadeVaibhav E.', 'Workshop', 'Solar', 'NIL', 'RAIT', '2019-10-02', '2019-10-02', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(29, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(30, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Machi', 'NIL', 'Rajiv Gandhi Institute of Technology', '2019-12-16', '2019-12-20', 5, 'Rajiv Gandhi Institute of Te', 'National', '2000', 0, 0, 0, ''),
(31, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Rubri', 'NIL', 'RAIT', '2019-10-17', '2019-10-17', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(32, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(33, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(34, 150, 'Dr. Ragha Leena R.', 'UBA', 'Unnat', 'NIL', 'IIT,Bombay', '2019-09-13', '2019-09-13', 1, 'IIT,Bombay', 'National', 'NA', 0, 0, 0, ''),
(35, 150, 'Dr. Ragha Leena R.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(36, 821, 'Dr. Sharma Neeraj K.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(37, 752, 'Dr. Shinde Shilpa S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(38, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(39, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(40, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(41, 807, 'Mr. Chikkareddi Vishwanath S.', 'FDP', 'Cyber', 'AICT', 'Atherva college of Engg', '2019-09-03', '2019-09-08', 6, 'Atherva college of Engg', 'National', 'NA', 0, 0, 0, ''),
(42, 807, 'Mr. Chikkareddi Vishwanath S.', 'STTP', 'Secur', 'AICT', 'RAIT', '2019-06-10', '2019-06-21', 14, 'RAIT', 'National', '200', 0, 0, 0, ''),
(43, 807, 'Mr. Chikkareddi Vishwanath S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(44, 411, 'Mr. Ghorpade Tushar H.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(45, 894, 'Mr. Gorad Balwant J.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(46, 894, 'Mr. Gorad Balwant J.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(47, 894, 'Mr. Gorad Balwant J.', 'FDP', 'Data ', 'AICT', 'CDAC, Khargar', '2019-11-18', '2019-11-22', 6, 'CDAC, Khargar', 'National', 'NIL', 0, 0, 0, ''),
(48, 593, 'Mr. Gunjgur Prathmesh N.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(49, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'IT In', 'TCS', 'RAIT', '2019-09-20', '2019-09-20', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(50, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Machi', 'TCS', 'RAIT', '2019-09-20', '2019-09-20', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(51, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Artif', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(52, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Block', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(53, 593, 'Mr. Gunjgur Prathmesh N.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(54, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Agile', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(55, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-02', '2019-12-14', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(56, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-02', '2019-12-14', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(57, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-16', '2019-12-28', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(58, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-16', '2019-12-28', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(59, 419, 'Mrs. Ahir Sheetal A.', '', 'TCS R', 'NIL', 'RAIT', '2019-08-16', '2019-08-16', 0, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(60, 419, 'Mrs. Ahir Sheetal A.', 'FDP', 'Data ', 'NIL', 'Ramrao Adik Institute of Technology', '2019-10-09', '2019-10-14', 6, 'Ramrao Adik Institute of Tec', 'National', 'NA', 0, 0, 0, ''),
(61, 650, 'Mrs. Alte Bhavana A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(62, 650, 'Mrs. Alte Bhavana A.', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '200', 0, 0, 0, ''),
(63, 576, 'Mrs. Bharne Smita D.', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '500', 0, 0, 0, ''),
(64, 576, 'Mrs. Bharne Smita D.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(65, 576, 'Mrs. Bharne Smita D.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(66, 482, 'Mrs. Bhoir Smita V.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(67, 874, 'Dr. Barve Amit K.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(68, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(69, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'Block', 'AICT', 'online', '2019-07-29', '2019-10-18', 84, 'online', 'National', '1100', 0, 0, 0, ''),
(70, 896, 'Dr. Chaudhari Sangita S.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(71, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(72, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Machi', 'NIL', 'Dept of CSE, RGIT, Adheri', '2019-12-16', '2019-12-20', 5, 'Dept of CSE, RGIT, Adheri', 'National', 'NA', 0, 0, 0, ''),
(73, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Rubri', 'NIL', 'RAIT', '2019-10-17', '2019-10-17', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(74, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(75, 888, 'Dr. Dakhane Dhanajay M.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(76, 878, 'Dr. Joshi Bharti A.', 'STTP', 'STTP ', 'NIL', 'Pillai College of Engineering, Panvel', '2019-07-01', '2019-07-05', 5, 'Pillai College of Engineerin', 'National', '1000', 0, 0, 0, ''),
(77, 878, 'Dr. Joshi Bharti A.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(78, 878, 'Dr. Joshi Bharti A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(79, 898, 'Dr. NarawadeVaibhav E.', 'Workshop', 'Solar', 'NIL', 'RAIT', '2019-10-02', '2019-10-02', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(80, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(81, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Machi', 'NIL', 'Rajiv Gandhi Institute of Technology', '2019-12-16', '2019-12-20', 5, 'Rajiv Gandhi Institute of Te', 'National', '2000', 0, 0, 0, ''),
(82, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Rubri', 'NIL', 'RAIT', '2019-10-17', '2019-10-17', 1, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(83, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 7, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(84, 898, 'Dr. NarawadeVaibhav E.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(85, 150, 'Dr. Ragha Leena R.', 'UBA', 'Unnat', 'NIL', 'IIT,Bombay', '2019-09-13', '2019-09-13', 1, 'IIT,Bombay', 'National', 'NA', 0, 0, 0, ''),
(86, 150, 'Dr. Ragha Leena R.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(87, 821, 'Dr. Sharma Neeraj K.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(88, 752, 'Dr. Shinde Shilpa S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(89, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(90, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(91, 393, 'Dr. Vidhate Amarsinh A.', 'FDP', 'Block', 'ISTE', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(92, 807, 'Mr. Chikkareddi Vishwanath S.', 'FDP', 'Cyber', 'AICT', 'Atherva college of Engg', '2019-09-03', '2019-09-08', 6, 'Atherva college of Engg', 'National', 'NA', 0, 0, 0, ''),
(93, 807, 'Mr. Chikkareddi Vishwanath S.', 'STTP', 'Secur', 'AICT', 'RAIT', '2019-06-10', '2019-06-21', 14, 'RAIT', 'National', '200', 0, 0, 0, ''),
(94, 807, 'Mr. Chikkareddi Vishwanath S.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(95, 411, 'Mr. Ghorpade Tushar H.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(96, 894, 'Mr. Gorad Balwant J.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(97, 894, 'Mr. Gorad Balwant J.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(98, 894, 'Mr. Gorad Balwant J.', 'FDP', 'Data ', 'AICT', 'CDAC, Khargar', '2019-11-18', '2019-11-22', 6, 'CDAC, Khargar', 'National', 'NIL', 0, 0, 0, ''),
(99, 593, 'Mr. Gunjgur Prathmesh N.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 5, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(100, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'IT In', 'TCS', 'RAIT', '2019-09-20', '2019-09-20', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(101, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Machi', 'TCS', 'RAIT', '2019-09-20', '2019-09-20', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(102, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Artif', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(103, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Block', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(104, 593, 'Mr. Gunjgur Prathmesh N.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(105, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Agile', 'TCS', 'RAIT', '2019-09-19', '2019-09-19', 1, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(106, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-02', '2019-12-14', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(107, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-02', '2019-12-14', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(108, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-16', '2019-12-28', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(109, 593, 'Mr. Gunjgur Prathmesh N.', 'Training Program', 'Inter', 'NIL', 'RAIT', '2019-12-16', '2019-12-28', 12, 'RAIT', 'Local', 'NA', 0, 0, 0, ''),
(110, 419, 'Mrs. Ahir Sheetal A.', '', 'TCS R', 'NIL', 'RAIT', '2019-08-16', '2019-08-16', 0, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(111, 419, 'Mrs. Ahir Sheetal A.', 'FDP', 'Data ', 'NIL', 'Ramrao Adik Institute of Technology', '2019-10-09', '2019-10-14', 6, 'Ramrao Adik Institute of Tec', 'National', 'NA', 0, 0, 0, ''),
(112, 650, 'Mrs. Alte Bhavana A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', '500', 0, 0, 0, ''),
(113, 650, 'Mrs. Alte Bhavana A.', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '200', 0, 0, 0, ''),
(114, 576, 'Mrs. Bharne Smita D.', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '500', 0, 0, 0, ''),
(115, 576, 'Mrs. Bharne Smita D.', 'FDP', 'TCS R', 'TCS', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(116, 576, 'Mrs. Bharne Smita D.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(117, 482, 'Mrs. Bhoir Smita V.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(118, 482, 'Mrs. Bhoir Smita V.', 'FDP', 'TCS R', '', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(119, 528, 'Mrs. Bodhe Swarupa', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '200', 0, 0, 0, ''),
(120, 528, 'Mrs. Bodhe Swarupa', 'FDP', 'Data ', 'NIL', 'Ramrao Adik Institute of Technology', '2019-10-09', '2019-10-14', 6, 'Ramrao Adik Institute of Tec', 'National', 'NA', 0, 0, 0, ''),
(121, 374, 'Mrs. Chhabria Aditi S.', 'FDP', 'TCS R', 'NIL', 'RAIT', '2019-08-16', '2019-08-16', 1, 'RAIT', 'National', 'NA', 0, 0, 0, ''),
(122, 374, 'Mrs. Chhabria Aditi S.', 'FDP', 'Intro', 'NPTE', 'RAIT', '2019-07-29', '2019-09-29', 56, 'RAIT', 'National', '1100', 0, 0, 0, ''),
(123, 374, 'Mrs. Chhabria Aditi S.', 'STTP', 'Block', 'AICT', 'RAIT', '2019-12-09', '2019-12-14', 6, 'RAIT', 'National', '1500', 0, 0, 0, ''),
(124, 672, 'Mrs. Chitte Pallavi H.', 'FDP', 'Data ', 'PMMM', 'RAIT', '2019-10-09', '2019-10-14', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(125, 672, 'Mrs. Chitte Pallavi H.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(126, 672, 'Mrs. Chitte Pallavi H.', 'Workshop', 'Andro', 'NIL', 'RAIT,Navi Mumbai', '2019-08-03', '2019-08-03', 1, 'RAIT,Navi Mumbai', 'National', '200', 0, 0, 0, ''),
(127, 811, 'Mrs. Dhumal Rashmi A.', 'FDP', 'High ', 'IEEE', 'RAIT', '2019-11-11', '2019-11-16', 6, 'RAIT', 'National', 'NIL', 0, 0, 0, ''),
(128, 811, 'Mrs. Dhumal Rashmi A.', 'FDP', 'Cloud', 'MHRD', 'Online NPTEL course from IIT KHARAGPUR', '2019-08-26', '2019-10-18', 56, 'Online NPTEL course from IIT', 'National', '1100', 0, 0, 0, ''),
(129, 638, 'Mrs. Ekta K. Sarda', 'FDP', 'Data ', 'NIL', 'Ramrao Adik Institute of Technology', '2019-10-09', '2019-10-14', 6, 'Ramrao Adik Institute of Tec', 'National', 'NA', 0, 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orientation`
--
ALTER TABLE `orientation`
  ADD PRIMARY KEY (`Srno`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`Srno`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`Srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orientation`
--
ALTER TABLE `orientation`
  MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `Srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
