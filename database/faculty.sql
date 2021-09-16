-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 12:34 PM
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
-- Database: `faculty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`Username`, `Password`) VALUES
('admin', '12345'),
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `Faculty_name` varchar(60) NOT NULL,
  `Award_name` varchar(60) NOT NULL,
  `Title_of_innovation` varchar(30) NOT NULL,
  `Name_of_awardee` varchar(30) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Event_name` varchar(60) NOT NULL,
  `Awarding_agency` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Date` date DEFAULT NULL,
  `University` varchar(60) NOT NULL,
  `College_name` varchar(60) NOT NULL,
  `Level` varchar(60) NOT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  `Sdrn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `Faculty_name`, `Award_name`, `Title_of_innovation`, `Name_of_awardee`, `Position`, `Event_name`, `Awarding_agency`, `Category`, `Date`, `University`, `College_name`, `Level`, `pdf`, `Sdrn`) VALUES
(3, 'Leena R Ragha', ' Avishkar Research Convention 2019-21', '-', 'Mrs. Rashmi Dhumal', '3rd', ' 14th Intercollegiate / Institute / Department Avishkar', '-', 'Fr. C. Rodrigues Institute of ', '2021-09-03', 'Mumbai', 'Fr. C. Rodrigues Institute of Technology, Vashi, Navi Mumbai', 'Local level', 'upload_files/awards/Edu_JSTSP1.pdf', 811),
(4, 'Amarsinh A Vidhate', 'Avishkar Research Convention 2019-20', '-', 'Mrs. Rashmi Dhumal', 'Participating', '14th Intercollegiate / Institute / Department Avishkar Resea', '', '-', '0000-00-00', 'University of Mumbai', 'RAIT', 'District', '', 811),
(5, 'Amarsinh A Vidhate', ' Avishkar Research Convention 2019-20', '-', 'Amarsinh A Vidhate', 'Participating', '14th Intercollegiate / Institute / Department Avishkar Resea', '-', '-', '0000-00-00', 'University of Mumbai', 'Fr. C. Rodrigues Institute of Technology, Vashi, Navi Mumbai', 'Local level', '', 2),
(6, 'Vaibhav E Narawade', 'Outstanding Research Paper', '-', 'Vaibhav E Narawade', 'Participating', 'International Commerce & Management Co', 'Mumbai University', '', '0000-00-00', 'Mumbai University', 'RAIT', 'Local level', '', 3),
(7, 'Dhanajay M Dakhane', 'Significant Contribution for AY 2018-2019', '', '', 'Participating', '', '', '', '0000-00-00', '', '', 'Local level', '', 5),
(8, 'Vanita M Mane', 'Appreciation Letter', '', '', 'Participating', '', '', '', '0000-00-00', 'Cyber Crime cell, Crime Branch CBD Belapur', 'Navi Mumbai', 'National level', '', 6),
(9, 'Vishwanath S Chikkareddi', 'Moodle for Teachers', '-', 'Vishwanath S Chikkareddi', '1st', 'Online test by SPOKEN TREE, IIT BOMBAY', '-', '-', '0000-00-00', 'Mumbai University & IIT Bombay', 'Vidyalankar Institute of Technology With Spoken tree IIT Bom', '-', '', 16),
(10, 'Tushar H Ghorpade ', 'Data Science ', '-', 'Tushar H Ghorpade', 'Participating', 'Quiz', '-', '-', '0000-00-00', '-', 'NBNSCOE, Solapur', 'National', '', 19),
(11, 'Smita D Bharne', 'Faculty Program on NBA', '-', 'Smita D Bharne', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'Bharati Vidyapeeth College Of Engineering, Navi Mumbai', 'National Level', '', 20),
(12, 'Smita D Bharne', 'Covid -19 Awareness Program ', '-', 'Smita D Bharne', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Shivaji  University, Kolhapur ', 'National Service Scheme and Shiv Shayata Disaster Managment ', 'National Level', '', 20),
(13, 'Smita D Bharne', 'Awareness Quiz on  -Covid -19 ', '-', 'Smita D Bharne', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University ', 'RAIT, Nerul', 'National Level', '', 20),
(14, 'Sheetal A Ahir', 'Fundamentals of Computer Science', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', '-', 'VIVA Institute of Technology', '-', '', 21),
(15, 'Sheetal A Ahir', 'Ayush Sanjivani Quiz', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Ministry of Ayush and MyGov.', '-', 'National', '', 21),
(16, 'Sheetal A Ahir', 'Covid -19 Awareness Program ', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Anna University', 'Thiagarajar Collage of Engg.', 'National', '', 21),
(17, 'Sheetal A Ahir', 'Intercollegiate Environmental Quiz', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'SIES College of Comm.', 'National', '', 21),
(18, 'Sheetal A Ahir', 'Covid -19 Awareness Program ', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Social Wing RAIT', 'RAIT', 'National', '', 21),
(19, 'Sheetal A Ahir', 'E-Quiz on \"Research Methodology', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Savitribai Phule Pune University', 'Pratibha Institute of Business Management', 'National', '', 21),
(20, 'Sheetal A Ahir', 'E-Quiz on \"Machine Learning', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'SBITMRJ', 'S B Jain Institute of Technology, Managemet and Research', 'National', '', 21),
(21, 'Sheetal A Ahir', 'E-Quiz on \"Atmanirbhar Bharat-Strength of the Fututre', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Institutions Innovative Council', 'Institutions Innovative Council', 'National', '', 21),
(22, 'Sheetal A Ahir', 'R-Programming', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'SBITMRJ', 'S B Jain Institute of Technology, Managemet and Research', 'National', '', 21),
(23, 'Sheetal A Ahir', 'Data Analytics', '-', 'Sheetal A Ahir', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'SBITMRJ', 'S B Jain Institute of Technology, Managemet and Research', 'National', '', 21),
(24, 'Ekta K Sarda', 'Awareness of Outcome -Based Education Paradigm', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'L.R. Tiwari CoE', 'National', '', 22),
(25, 'Ekta K Sarda', 'Cloud Compiting', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'D Y Patil University', 'D Y Patil School of Engg & Technology', 'National', '', 22),
(26, 'Ekta K Sarda', 'Intellectual Property Rights', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'New Horizon institute of Technology', 'National', '', 22),
(27, 'Ekta K Sarda', 'Research Schemes and Funding Awareness ', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'New Horizon institute of Technology', 'National', '', 22),
(28, 'Ekta K Sarda', 'Faculty Program on NBA', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'Bharati Vidyapeeth CoE', 'National', '', 22),
(29, 'Ekta K Sarda', 'Covid -19 Awareness Program ', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'Pillai College of Engg.', 'National', '', 22),
(30, 'Ekta K Sarda', 'Advanced Data Structure', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'Jaihind CoE', 'National', '', 22),
(31, 'Ekta K Sarda', 'Google Cloud Computing', '-', 'Ekta K Sarda', 'Participating', 'Quiz', '-', '-', '0000-00-00', 'Mumbai University', 'Dhole Patil CoE', 'National', '', 22),
(32, 'Pallavi H Chitte ', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', 33),
(33, 'Dhanashri A Bhosle ', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', 34),
(34, 'Siddhi N Kadu ', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', 35),
(35, 'Apurva S Shinde ', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', 36),
(36, 'Preet Kaur ', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', 38),
(37, 'Leena R Ragha', 'fhfhf', 'fhghf', '', '1st', '', '', '', '0000-00-00', '', '', 'State level', 'upload_files/awards/__', 1),
(40, 'Leena R Ragha', 'technical', 'rait', 'leena raghe', '1st', '', '', '', '0001-01-01', '', '', 'Local level', 'upload_files/awards/0001_Leena R Ragha_2021-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `competitive_exam`
--

CREATE TABLE `competitive_exam` (
  `id` int(26) NOT NULL,
  `Faculty_name` varchar(60) NOT NULL,
  `PET_appeared` varchar(60) NOT NULL,
  `PET_date` date NOT NULL,
  `PET_score` int(60) NOT NULL,
  `GATE_appeared` varchar(60) NOT NULL,
  `GATE_date` date NOT NULL,
  `GATE_score` int(60) NOT NULL,
  `Exam_Name` varchar(50) NOT NULL,
  `Exam_Appered` varchar(50) NOT NULL,
  `Date_Of_Exam` date DEFAULT NULL,
  `Exam_Score` varchar(50) NOT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  `Sdrn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `competitive_exam`
--

INSERT INTO `competitive_exam` (`id`, `Faculty_name`, `PET_appeared`, `PET_date`, `PET_score`, `GATE_appeared`, `GATE_date`, `GATE_score`, `Exam_Name`, `Exam_Appered`, `Date_Of_Exam`, `Exam_Score`, `pdf`, `Sdrn`) VALUES
(4, 'Dr. Joshi Bharti A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 811),
(5, 'Dr. Dakhane Dhanajay M.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 5),
(6, 'Dr. Chaudhari Sangita S.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 6),
(7, 'Dr. Sharma Neeraj K.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 7),
(8, 'Dr. Barve Amit K.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 8),
(9, 'Dr.Shinde Shilpa G.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 9),
(10, 'Mrs. Mane Vanita M.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 10),
(11, 'Mrs. Shedge Rajashree A', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 11),
(12, 'Mrs. Padiya Puja Y.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 12),
(13, 'Mrs. Dhumal Rashmi A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 13),
(14, 'Mrs. Chhabria Aditi S.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 14),
(15, 'Mrs. Maktum Tabassum A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 15),
(16, 'Mr. Chikkareddi Vishwanath S.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 16),
(17, 'Mrs. Gaikwad Snehal P.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 17),
(18, 'Mrs. Pulgam Namita D', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 18),
(19, 'Mr. Ghorpade Tushar H.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 19),
(20, 'Mrs. Bharne Smita D.', 'MU-PET', '0000-00-00', 50, '', '0000-00-00', 0, '', '', NULL, '', '', 20),
(21, 'Mrs. Ahir Sheetal A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 21),
(22, 'Mrs. Ekta K. Sarda', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 22),
(23, 'Mrs. Bodhe Swarupa', 'PET', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 23),
(24, 'Mrs. Bhoir Smita V.', 'MU-PET', '0000-00-00', 48, '', '0000-00-00', 0, '', '', NULL, '', '', 24),
(25, 'Mrs. Sumithra T.V', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 25),
(26, 'Mr. Gorad Balwant J.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 26),
(27, 'Mrs. Alte Bhavna A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 27),
(28, 'Mr. Nenwani Kamlesh L.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 28),
(29, 'Ms. Mumbaikar Snehal J.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 29),
(30, 'Mr. Gunjgur Prathmesh N.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 30),
(31, 'Ms. Saxena Harsha A.', '', '0000-00-00', 0, '', '0000-00-00', 421, '', '', NULL, '', '', 31),
(32, 'Mrs. Ingle Saguna K.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 32),
(33, 'Mrs. Chitte Pallavi H.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 33),
(34, 'Ms. Bhosale Dhanashri A.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 34),
(35, 'Mrs. Kadu Siddhi N.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 35),
(36, 'Mrs. Shinde Apurva S.', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 36),
(37, 'Bhavana Alte', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', NULL, '', '', 811),
(38, 'Leena R Ragha', '', '0000-00-00', 0, '', '0000-00-00', 0, 'cat', '', '0000-00-00', '', '', 1),
(39, 'Leena R Ragha', '', '0000-00-00', 0, '', '0000-00-00', 0, '', '', '0000-00-00', '900', '', 1),
(40, 'Leena R Ragha', '', '0000-00-00', 900, '', '0000-00-00', 0, '', '', '0000-00-00', '', '', 1),
(41, 'Leena R Ragha', '', '0000-00-00', 999, '', '0000-00-00', 0, '', '', '0000-00-00', '', '', 1),
(43, 'Leena R Ragha', '', '0000-00-00', 0, '', '0000-00-00', 0, 'cat', '1', '0001-01-01', '450', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_as_resource`
--

CREATE TABLE `faculty_as_resource` (
  `id` int(26) NOT NULL,
  `Faculty_name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Resource_person` varchar(60) NOT NULL,
  `Topic_name` varchar(30) NOT NULL,
  `Event_name` varchar(30) NOT NULL,
  `Sponsored` varchar(100) NOT NULL,
  `Funded` varchar(100) NOT NULL,
  `Academic` varchar(100) NOT NULL,
  `Level` varchar(60) NOT NULL,
  `Venue` varchar(60) NOT NULL,
  `Date` date NOT NULL,
  `Other` varchar(100) NOT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  `Sdrn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_as_resource`
--

INSERT INTO `faculty_as_resource` (`id`, `Faculty_name`, `Email`, `Resource_person`, `Topic_name`, `Event_name`, `Sponsored`, `Funded`, `Academic`, `Level`, `Venue`, `Date`, `Other`, `pdf`, `Sdrn`) VALUES
(123, 'Balwant Gorad', '', 'FDP', '3 Days Hands-on Session on Pyt', 'Recent Trends in Computer Scie', 'Self Finance', '', '2020-21', 'National', 'Shriram Institute of Engineering and Technology(Poly), Paniv', '2020-07-02', '', NULL, 894),
(124, 'Mrs. Sheetal A. Ahir', '', 'Expert talk', 'Skill Enhancement Session Proj', 'Summer Internship Program 2020', 'Self Finance', '', '2020-21', 'Inhouse', 'SDG-RAIT ', '2020-08-17', '', NULL, 419),
(125, 'Ms. Puja Padiya', '', 'Expert talk', 'Operating System Basics_ in _C', 'Computer Fundamental Sessions_', 'Self Finance', '', '2020-21', 'Inhouse', 'Training & Placement Cell RAIT, Nerul.', '2020-08-17', '', NULL, 396),
(126, 'Puja Padiya', '', 'Expert talk', 'Operating System Basics', 'Computer Fundamental Sessions_', 'Self Finance', '', '2020-21', 'Inhouse', 'TPC of RAIT', '2020-08-17', '', NULL, 396),
(127, 'SMITA VINIT BHOIR', '', 'Training Program', 'A Step Towards Application Dev', 'A Step Towards Application Dev', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSTITUTE OF TECHNOLOGY', '2020-09-12', '', NULL, 482),
(128, 'SMITA VINIT BHOIR', '', 'Training Program', 'A Step Towards Application Dev', 'A Step Towards Application Dev', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSITUTE OF TECHNOLOGY', '2020-09-13', '', NULL, 482),
(129, 'Mrs. Sheetal A.Ahir', '', 'Training Program', 'Project Modeling ', 'Skill Set Development Program ', 'Self Finance', 'NA', '2020-21', 'Inhouse', 'Ramrao Adik Institute of Technology ', '2020-09-26', '', NULL, 419),
(130, 'Mr. Prathmesh Gunjgur', '', 'Expert talk', 'Discover MS-Word as an Enginee', 'FE Skill Development Programme', 'Self Finance', '', '2020-21', 'Inhouse', 'Institute', '2020-10-07', '', NULL, 593),
(131, 'Namita Pulgam', '', 'Expert talk', 'Steps towards developing appli', 'FE Skill Development Programme', 'Self Finance', '', '2020-21', 'Inhouse', 'RAIT', '2020-10-08', '', NULL, 330),
(132, 'SMITA VINIT BHOIR', '', 'Training Program', 'Become an Android App Develope', 'Become an Android App Develope', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSTITUTE OF TECHNOLOGY', '2020-10-10', '', NULL, 482),
(133, 'SMITA VINIT BHOIR', '', 'Training Program', 'Become an Android App Develope', 'Become an Android App Develope', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSITUTE OF TECHNOLOGY', '2020-10-11', '', NULL, 482),
(134, 'Dr. Sangita Chaudhari', '', 'Expert talk', 'Demystifying Machine Learning ', 'Dr. Sangita Chaudhari', 'Funded', 'NA', '2020-21', 'National', 'IEEE WIE AG Bomabay Section, IEEE DBCE SB WIE AG Goa and IEE', '2020-11-07', '', NULL, 896),
(135, 'Dr. Sangita Chaudhari', '', 'Expert talk', 'Data Analytics using Orange', 'One week STTP on \"Current Tren', 'Funded', 'NA (For Expert talk funding is not essential)', '2020-21', 'State', 'Vidyalankar School of Information Technology, Wadala, Mumbai', '2020-11-25', '', NULL, 896),
(136, 'Tabassum A. Maktum', '', 'Expert talk', 'Overview of Security Issues in', 'Webinar', 'Self Finance', '', '2020-21', 'National', 'Ramrao Adik Institute of Technology', '2020-11-25', '', NULL, 812),
(137, 'Tushar H. Ghorpade', '', 'FDP', 'Data Mining Introduction and u', 'Five days Faculty Development ', 'Self Finance', '', '2020-21', 'National', 'Reva University, Bengaluru, India', '2021-02-17', '', NULL, 411),
(138, 'Rajashree Shedge', '', 'FDP', 'Python/R for Data Science, ML ', 'FDP on \"Python/R for Data Scie', '', '', '2020-21', 'National', 'Sharad Institute of Technology, Polytechnic, Kolhapur', '2021-02-22', '', NULL, 407),
(139, 'Balwant Gorad', '', 'FDP', 'Step towards data science - AI', 'The National level One week Fa', 'Self Finance', '', '2020-21', 'National', 'Sharad Institutte of Technology, Ichalkaranji, Kolhapur', '2021-02-24', '', NULL, 894),
(140, 'Balwant Gorad', '', 'FDP', 'A Step Towards Data Science - ', 'The National level One week Fa', 'Self Finance', '', '2020-21', 'National', 'SIT Ichalkaranji kolhapur', '2021-02-24', '', NULL, 894),
(141, 'Balwant Gorad', '', 'FDP', 'Machine Learning Using python ', 'The National level One week Fa', 'Self Finance', '', '2020-21', 'National', 'SIT Ichalkaranji Kolhapur', '2021-02-25', '', NULL, 894),
(142, 'Rajashree Shedge', '', 'Expert talk', 'Computational Intelligence- Un', 'Expert session on Computationa', '', '', '2020-21', 'Inhouse', 'Department of Computer Engineering, RAIT', '2021-03-06', '', NULL, 407),
(143, 'Bharti Joshi', '', 'Expert talk', 'Creating Google Form', 'Orientation Program', 'Self Finance', '', '2020-21', 'Inhouse', 'DY Patil Ayurveda College', '2021-03-17', '', NULL, 878),
(144, 'SMITA VINIT BHOIR', '', 'Training Program', 'Android App Development using ', 'Android App Development using ', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSTITUTE OF TECHNOLOGY', '2021-03-20', '', NULL, 482),
(145, 'SMITA VINIT BHOIR', '', 'Training Program', 'Android App Development using ', 'Android App Development using ', 'Self Finance', '', '2020-21', 'Inhouse', 'RAMRAO ADIK INSTITUTE  OF TECHNOLOGY', '2021-03-21', '', NULL, 482),
(146, 'Puja Padiya', '', 'Reviewer', 'Survey On: Electric Vehicle Ch', 'ICCICT-2021', 'Self Finance', '', '2020-21', 'International', 'Institute - SPIT, Mumbai', '2021-04-16', '', NULL, 396),
(147, 'Rashmi Dhumal', '', 'Reviewer', 'International Conference', 'ICAITR-2021 ', '', '', '2020-21', 'International', 'Vidyalankar Institute of Technology, Wadala', '2021-04-30', '', NULL, 811),
(148, 'Dr. Shilpa Shinde', '', 'Reviewer', '4th International Conference o', '4th International Conference o', 'Self Finance', 'no', '2020-21', 'International', 'K. J. Somaiya Institute of Engineering and Information Techn', '2021-05-07', '', NULL, 752),
(149, 'Dr. Sangita Chaudhari', '', 'Expert talk', 'Data Analytics and Visualizati', 'Workshop', 'Funded', '', '2020-21', 'National', 'KC College, HSNC University, Mumbai', '2021-01-23', '', NULL, 896),
(150, 'Dr. Sangita Chaudhari', '', 'Expert talk', 'Geospatial Analytics- Research', 'STTP on “Artificial Intelligen', 'Self Finance', '', '2020-21', 'National', 'Amity University, Mumbai', '2021-01-13', '', NULL, 896),
(151, 'Balwant Gorad', '', 'Expert talk', 'How Real Time Predictions are ', 'RAIT LIve Webinar  Series', 'Self Finance', 'NA', '2020-21', 'National', 'RAIT Navi Mumbai', '0000-00-00', '', NULL, 894),
(152, 'Aditi Chhabria', '', 'Reviewer', 'International Conference on Co', 'ICCICT21', '', '', '2020-21', 'International', 'Sardar Patel Institute of Technology ', '2021-06-25', '', NULL, 374),
(153, 'Dr. Vanita Mane', '', 'Expert talk', ' A Step towards Application De', 'Skill Enhancement Session', 'Self Finance', '', '2020-21', 'Inhouse', ' Ramrao Adik  Institute of Technology ', '2021-09-11', '', NULL, 295),
(154, 'Dr. Vidhate Amarsinh', '', 'Expert talk', 'Demystifying Computing Trends ', 'Students orientation Program', 'Self Finance', '0', '2020-21', 'Inhouse', 'D.Y.Patil Deemed to be University School of medicine', '2021-01-28', '', NULL, 393),
(155, 'Puja Padiya', '', 'Reviewer', 'Total 5 papers reviewed based ', 'International Conference on In', 'Self Finance', '', '2020-21', 'International', 'Department of Applied Electronics & Instrumentation Engineer', '2021-05-22', '', NULL, 396),
(156, 'Dr. Vanita Mane', '', 'Reviewer', 'ANGULAR PHOTOMETRIC ANALYSIS O', 'Asian Journal of Advanced Rese', 'Self Finance', '', '2020-21', 'International', 'Asian Journal of Advanced Research and Reports', '2020-09-04', '', NULL, 295),
(157, 'Dr. Vanita Mane', '', 'Reviewer', '\"Evolution of Dark Web Threat ', 'IEEE Access', 'Self Finance', '', '2020-21', 'International', 'IEEE Access', '2020-09-07', '', NULL, 295),
(158, 'Dr. Vanita Mane', '', 'Reviewer', 'International Conference on Na', 'IEEE Technically Co-Sponsored ', 'Self Finance', '', '2020-21', 'International', '\"Fr. C. Rodrigues Institute of Technology Vashi, Navi Mumbai', '2021-01-15', '', NULL, 295),
(159, 'Dr. Vanita Mane', '', 'Reviewer', 'International Conference on Co', 'ICCICT21', 'Self Finance', '', '2020-21', 'International', 'Sardar Patel Institute of Technology ', '2021-06-30', '', NULL, 295),
(160, 'Rashmi Dhumal', '', 'Training Program', 'Hosting Applications on AWS', 'Skill Enhancement Session', '', '', '2020-21', 'State', 'Ramrao Adik Institute of Technology', '2021-06-30', '', NULL, 811),
(161, 'Rajashree Shedge', '', 'Expert talk', 'NLP Applications in Indian Reg', 'NLP Applications using Deep Le', '', '', '2020-21', 'Inhouse', 'RAIT', '2021-04-15', '', NULL, 407),
(162, 'Dr. Vidhate Amarsinh', '', 'Conference Session Chair', 'second International Conferenc', 'second International Conferenc', 'Self Finance', '', '2020-21', 'International', 'Ramrao Adik Institute of Technology', '2021-07-14', '', NULL, 393),
(163, 'Dr. Vidhate Amarsinh', '', 'Conference Session Chair', 'first International Conference', 'first International Conference', 'Self Finance', '', '2020-21', 'International', 'Ramrao Adik Institute of Technology', '2020-06-27', '', NULL, 393),
(164, 'Dr. Dhananjay Dakhane', '', 'Expert talk', 'Secure communication for Milit', 'Webinar', 'Self Finance', '0', '2020-21', 'International', 'RAIT', '2020-07-29', '', NULL, 888),
(165, 'Preet Chandan Kaur', '', 'Expert talk', 'NLP Applications - RNN ', 'Inhouse', 'Self Finance', '', '2020-21', 'Inhouse', 'RAIT', '2021-04-15', '', NULL, 699),
(166, 'Tabassum A. Maktum', '', 'Expert talk', 'Hosting Applications on AWS', 'Skill Enhancement Session', 'Self Finance', 'NA', '2020-21', 'State', 'Ramrao Adik Institute of Technology', '2021-06-30', '', NULL, 812),
(167, 'Ms Pallavi H. Chitte', '', 'Expert talk', 'GIT & GITHUB', 'SDG Skill Development Session', 'Self Finance', '', '2020-21', 'State', 'Ramrao Adik Institute of Technology, Nerul', '2021-07-05', '', NULL, 672),
(168, 'Mrs. Siddhi Kadu', '', 'Expert talk', 'NLP Applications - LSTM', 'INHOUSE', '', '', '2020-21', 'Inhouse', 'RAIT', '2021-04-15', '', NULL, 770);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info`
--

CREATE TABLE `faculty_info` (
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
-- Dumping data for table `faculty_info`
--

INSERT INTO `faculty_info` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `Addr`, `Email`, `Doj`, `Qualification`, `Desig`, `Password`, `OTP`) VALUES
('0001', 'Leena', 'R', 'Ragha', '1960-07-22', 'Computer E', 1234567892, '209 A, XYZ, Navi Mumbai', 'leenaragha@gmail.com', '1992-11-11', 'PhD', 'HOD Computer Engineering Dept', '123', '55555'),
('0002', 'Amarsinh', 'A', 'Vidhate', '1960-07-17', 'Computer E', 123456789, 'Navi Mumbai', 'AVidhate@gmail.com', '2007-08-17', 'PhD', 'Professor', '123', '55555'),
('0003', 'Vaibhav', 'E', 'Narawade', '1976-07-22', 'Computer E', 12345678911, 'Navi Mumbai', 'vaibhav@gmail.com', '2015-06-27', 'PhD', 'Professor', '123', '55555'),
('0004', 'Bharti', 'A', 'Joshi', '1960-09-10', 'Computer E', 12345678911, 'Navi Mumbai', 'BhartiJoshi@gmail.com', '2018-02-15', 'PhD', 'Professor', '123', '55555'),
('0005', 'Dhanajay', 'M', 'Dakhane', '1975-07-10', 'Computer E', 1234567891, 'Navi Mumbai', 'DhanajayD@gmail.com', '2018-05-15', 'PhD', 'Professor', '123', '55555'),
('0006', 'Sangita', 'S', 'Chaudhari', '1976-04-10', 'Computer E', 1234567891, 'Navi Mumbai', 'ChaudhariS@gmail.com', '2018-02-11', 'PhD', 'Professor', '123', '55555'),
('0007', 'Neeraj', 'K', 'Sharma', '1977-02-10', 'Computer E', 9764875452, 'Navi Mumbai', 'NeerajiS@gmail.com', '2018-02-11', 'PhD', 'Professor', '123', '55555'),
('0008', 'Amit', 'K', 'Barve', '1975-04-10', 'Computer E', 976487662, 'Navi Mumbai', 'AmitS@gmail.com', '2018-02-11', 'PhD', 'Professor', '123', '55555'),
('0009', 'Shilpa', 'G', 'Shinde', '1986-02-16', 'Computer E', 9764335452, 'Navi Mumbai', 'ShilpaS@gmail.com', '2018-02-11', 'PhD', 'Professor', '123', '55555'),
('0010', 'Vanita', 'M', 'Mane', '1986-01-19', 'Computer E', 9761175452, 'Navi Mumbai', 'VanitaS@gmail.com', '2018-02-11', 'PhD', 'Professor', '123', '55555'),
('0011', 'Rajashree', ' A.', 'Shedge', '1986-05-05', 'Computer E', 1234567898, 'vashi,navi Mumbai', 'rajashree@gmail.com', '2001-11-11', 'Ph.D', 'Assistant Professor', '123', '55555'),
('0012', 'Puja', ' Y', 'Padiya', '1983-06-03', 'Computer E', 1236767898, 'Dombivali, Mumbai', 'puja@gmail.com', '2007-01-08', 'Ph.D', 'Assistant Professor', '123', '55555'),
('0013', 'Rashmi', ' A', 'Dhumal', '1980-06-12', 'Computer E', 1236767898, 'Nerul,NaviMumbai', 'rashmi@gmail.com', '2010-02-02', 'Ph.D', 'Assistant Professor', '123', '55555'),
('0014', 'Aditi', ' S', 'Chhabria', '1985-06-12', 'Computer E', 1236790898, 'NaviMumbai', 'aditi@gmail.com', '2010-02-02', 'Ph.D', 'Assistant Professor', '123', '55555'),
('0015', 'Tabassum', ' A', 'Maktum', '1977-06-04', 'Computer E', 1236790898, 'Mumbai', 'tabassum@gmail.com', '2010-02-10', 'Ph.D', 'Assistant Professor', '123', '55555'),
('0016', 'Vishwanath', 'S', 'Chikkareddi', '1975-02-16', 'Computer E', 9761175452, 'Navi Mumabai', 'VishwanathS@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0017', 'Snehal', 'P', 'Gaikwad', '1977-07-10', 'Computer E', 9764875452, 'Navi Mumbai', 'SnehalP@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0018', 'Namita', 'D', 'Pulgam', '1976-04-10', 'Computer E', 1234567892, 'Navi Mumbai', 'NamitaP@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0019', 'Tushar', 'H', 'Ghorpade', '1976-07-22', 'Computer E', 1234567892, 'Navi Mumbai', 'TusharH@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0020', 'Smita', 'D', 'Bharne', '1976-12-22', 'Computer E', 1234567892, 'Navi Mumbai', 'SmitaD@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0021', 'Shetal', 'A', 'Ahir', '1976-09-22', 'Computer E', 1234567892, 'Navi Mumbai', 'SheetalA@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0022', 'Ekta', 'K', 'Sarda', '1976-09-15', 'Computer E', 1234567892, 'Navi Mumbai', 'EktaK@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0023', 'Swarupa', 'M', 'Bodhe', '1989-07-23', 'Computer E', 8867175452, 'Navi Mumbai', 'Swarupa@gmail.com', '0000-00-00', 'PhD', 'Professor', '123', '55555'),
('0024', 'Smita', 'M', 'Bhoir', '1996-01-19', 'Computer E', 9761175452, 'Navi Mumbai', 'smitab@gmail.com', '0000-00-00', 'PhD', 'Professor', '123', '55555'),
('0025', 'Sumithra', 'V', 'T', '1986-01-19', 'Computer E', 9799975452, 'Navi Mumbai', 'sumithra@gmail.com', '0000-00-00', 'PhD', 'Professor', '123', '55555'),
('0026', 'Balwant', 'J', 'Gorad', '1985-01-19', 'Computer E', 9761175452, 'Navi Mumbai', 'BalwantG@gmail.com', '0000-00-00', 'PhD', 'Professor', '123', '55555'),
('0027', 'Bhavna', 'A', 'Alte', '1989-07-13', 'Computer E', 9760075452, 'Navi Mumbai', 'BhavnaA@gmail.com', '0000-00-00', 'PhD', 'Professor', '123', '55555'),
('0028', 'Prathmesh', 'N', 'Gunjgur', '1976-06-13', 'Computer E', 9763355452, 'Navi Mumbai', 'PrathmeshN@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0029', 'Snehal', 'P', 'Gaikwad', '1981-05-12', 'Computer E', 9761056542, 'Navi Mumbai', 'SnehalP@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0030', 'Sheetal', 'A', 'Ahir', '1980-01-14', 'Computer E', 9761189561, 'Navi Mumbai', 'SheetalA@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0031', 'Sumithra', 'T', 'V', '1982-03-19', 'Computer E', 9123175487, 'Navi Mumbai', 'SumithraTV@gmail.com', '0000-00-00', 'PhD', 'Assistant Professor', '123', '55555'),
('0032', 'Kamlesh', 'L', 'Nenwani', '1978-02-19', 'Computer E', 9881275463, 'Navi Mumbai', 'KamleshL@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0033', 'Pallavi', 'H', 'Chitte', '1980-03-23', 'Computer E', 1234567890, 'Navi Mumbai', 'pallavi@gmail.com', '0000-00-00', 'PhD', 'Assistant Proffessor', '123', '55555'),
('0034', 'Dhanashri', 'A', 'Bhosle', '1984-08-10', 'Computer E', 1234567890, 'Navi Mumbai', 'Dhanashri@gmail.com', '0000-00-00', '-', 'Assistant Professor', '123', '55555'),
('0035', 'Siddhi', 'N', 'Kadu', '1989-04-12', 'Computer E', 1234567890, 'Navi Mumbai', 'Siddhi@gmail.com', '0000-00-00', 'phD', 'Assistant Professor', '123', '55555'),
('0036', 'Apurva', 'S', 'Shinde', '1980-05-12', 'Computer E', 1234567890, 'Navi Mumbai', 'Apurva@gmail.com', '0000-00-00', 'phd', 'Assistant Professor', '123', '55555'),
('0037', 'Bhavana', 'S', 'Alte', '1984-04-02', 'Computer E', 1234567890, 'Navi Mumbai', 'bhavana@gmail.com', '0000-00-00', 'phd', 'Assistant Professor', '123', '55555'),
('0555', 'dd', '', '', '0000-00-00', '', 0, '', 'admin@ee', '0000-00-00', '', '', '12345', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicals`
--

CREATE TABLE `medicals` (
  `id` int(20) NOT NULL,
  `Faculty_Name` varchar(50) NOT NULL,
  `AIAPGET_Appered` varchar(50) NOT NULL,
  `AIAPGET_Date` date NOT NULL,
  `AIAPGET_Score` varchar(50) NOT NULL,
  `NEET_SS_Appered` varchar(50) NOT NULL,
  `NEET_SS_Date` date NOT NULL,
  `NEET_SS_Score` varchar(50) NOT NULL,
  `Exam_Name` varchar(50) NOT NULL,
  `Exam_Appered` varchar(50) NOT NULL,
  `Date_Of_Exam` date DEFAULT NULL,
  `Exam_Score` varchar(50) NOT NULL,
  `PDF` varchar(100) NOT NULL,
  `sdrn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicals`
--

INSERT INTO `medicals` (`id`, `Faculty_Name`, `AIAPGET_Appered`, `AIAPGET_Date`, `AIAPGET_Score`, `NEET_SS_Appered`, `NEET_SS_Date`, `NEET_SS_Score`, `Exam_Name`, `Exam_Appered`, `Date_Of_Exam`, `Exam_Score`, `PDF`, `sdrn`) VALUES
(10, 'Leena R Ragha', '1', '2021-09-01', '120', '1', '2021-05-20', '220', '', '', NULL, '', '', '811'),
(11, 'Amarsinh A Vidhate', '0', '2021-06-24', '345', '1', '2021-08-04', '231', '', '', NULL, '', '', '811'),
(12, 'Vanita M Mane', '1', '0000-00-00', '232', '1', '0000-00-00', '555', '', '', NULL, '', '', '0010'),
(13, 'Shetal A Ahir', '1', '0000-00-00', '77', '1', '0000-00-00', '128', '', '', NULL, '', 'upload_files/exams/333-280.pdf', '0021'),
(14, 'Leena R Ragha', '', '0000-00-00', '', '', '0000-00-00', '', 'cat', '', '0000-00-00', '', '', '0001'),
(15, 'Leena R Ragha', '', '0000-00-00', '', '', '0000-00-00', '', 'cat', '', '0001-01-01', '60', '', '0001'),
(16, 'Leena R Ragha', '', '0000-00-00', '', '', '0000-00-00', '', 'neet', '', '0001-01-01', '550', '', '0001'),
(17, 'Leena R Ragha', '', '0000-00-00', '', '', '0000-00-00', '', 'jee', '1', '0001-01-01', '120', '', '0001'),
(19, 'Leena R Ragha', '', '0000-00-00', '', '', '0000-00-00', '', 'other', '', '0000-00-00', '500', '', '0001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competitive_exam`
--
ALTER TABLE `competitive_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_as_resource`
--
ALTER TABLE `faculty_as_resource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicals`
--
ALTER TABLE `medicals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `competitive_exam`
--
ALTER TABLE `competitive_exam`
  MODIFY `id` int(26) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `faculty_as_resource`
--
ALTER TABLE `faculty_as_resource`
  MODIFY `id` int(26) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `medicals`
--
ALTER TABLE `medicals`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
