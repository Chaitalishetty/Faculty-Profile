-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 11:10 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_chapter`
--

CREATE TABLE `book_chapter` (
  `id` int(11) NOT NULL,
  `sdrn` int(20) NOT NULL,
  `faculty_name` varchar(128) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `chapter_name` varchar(128) NOT NULL,
  `book_name` varchar(128) NOT NULL,
  `through` varchar(128) NOT NULL,
  `publisher_name` varchar(128) NOT NULL,
  `isbn_no` int(13) NOT NULL,
  `reg_date` date NOT NULL,
  `publication_year` date NOT NULL,
  `sanction_amt` int(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `awards` varchar(255) NOT NULL,
  `desgn` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_chapter`
--

INSERT INTO `book_chapter` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `chapter_name`, `book_name`, `through`, `publisher_name`, `isbn_no`, `reg_date`, `publication_year`, `sanction_amt`, `org_name`, `awards`, `desgn`, `institute`, `opt1`, `opt2`, `opt3`) VALUES
(30, 482, 'Mrs. Bhoir Smita V.', 'Mrs. Bhoir Smita V.', 'Jyoti Kundale', 'Smita Bharne', '', 'Applications of Machine Learning in Fakey News Detection', 'Design of Intelligent System using Machine Learning and Deep Learning', '', 'CRC Press Taylor and Francis Group', 0, '0001-01-01', '0001-01-01', 0, '', '0', 'Assistant Professor', '', '', '', ''),
(31, 482, 'Mrs. Bhoir Smita V.', 'Mrs. Bhoir Smita V.', 'Dr. Sunita Patil ', 'Ibtisam Yakub Mogul', '', 'Person-based Artificial Intelligence Chatbots-A driving force of Industry 4.0', 'AI Industry 4.0', '', 'Elsevier', 0, '0001-01-01', '0001-01-01', 0, 'K.J. Somaiya Institute of Engineering and Information Technology, Sion, Mumbai, Maharashtra, India & ATHE Coordinator Computing, University of Bolton Academic Centre RAK, UAE', '0', 'Assistant Professor', 'K.J. Somaiya Institute of Engineering and Information Technology, Sion, Mumbai, Maharashtra, India & ATHE Coordinator Computing, University of Bolton Academic Centre RAK, UAE', '', '', ''),
(32, 576, 'Mrs.  Bharne Smita D.', 'Mrs.  Bharne Smita D.', 'Suryakant Patil', '', '', 'Exploring in the Context of Development of Smart Cities in India', 'dvances in Intelligent Systems and Computing book series (AISC, volume 1245) ', '', 'Springer Book Series ', 0, '0000-00-00', '2044-12-02', 0, 'Sandip University. Nashik ', 'NO', 'Assistant Professor', 'Sandip University. Nashik ', '', '', ''),
(33, 638, 'Mrs. Ekta K. Sarda', 'Mrs. Ekta K. Sarda', 'Ms. SnehalBhole', 'Ms. PriyankaDeshmukh', 'Mr. ShubhamJadhav ', 'Estimating Food Nutrients using Region Based Neural Network', 'Proceedings of International Conference on Computational Intelligence and Data Engineering', '', 'Springer Series', 0, '0000-00-00', '2044-08-09', 0, 'no', '0', 'Assistant Professor', 'no', '', '', ''),
(34, 811, 'Mrs. Dhumal Rashmi A.', 'Mrs. Dhumal Rashmi A.', 'Sangita Chaudhari', 'Tabassum Maktum', '', 'Blockchain of Things: Benefits and Research Challenges', 'Real-Life Applications of the Internet of Things Challenges, Applications, and Advances', '', 'CRC Press taylor & Francis', 2147483647, '0000-00-00', '0000-00-00', 0, '', 'NA', 'Assistant Professor', '', '', '', ''),
(35, 812, 'Mrs. Maktum Tabassum A.', 'Mrs. Maktum Tabassum A.', 'Dr. Choudhari Sangeeta S.', 'Rashmi Dhumal', '', 'Blockchain of Things: Benefits and Research Challenge', 'Real-Life Applications of the Internet of Things Challenges, Applications, and Advances', '', 'Apple Academic Press (CRC)', 2147483647, '2044-02-02', '0000-00-00', 0, '', '-', 'Assistant Professor', '', '', '', ''),
(36, 878, 'Dr. Joshi Bharti A.', 'Dr. Joshi Bharti A.', 'Dr Shivangi Agarwal', 'Riddhi Vinchhi', 'Neha Zimare', 'Low Cost Bone Mineral Densitometer', 'Computational Intelligence in Healthcare, Springer', '', 'Springer', 0, '2044-10-04', '0000-00-00', 0, '', 'NA', 'Professor', '', '', '', ''),
(38, 896, 'Dr. Chaudhari Sangita S.', 'Dr. Chaudhari Sangita S.', 'Abid Kapadi', 'Chinmay Kavimandan', 'Chinmay Mandke', 'Wildlife Video Captioning based on ResNet and LSTM', 'Modern Approaches in Machine Learning & Cognitive Science: A Walkthrough', '', 'Springer', 978, '0000-00-00', '0000-00-00', 0, '', 'NA', 'Professor', '', '', '', ''),
(39, 407, 'Mrs. Shedge Rajashree A.', 'Mrs. Shedge Rajashree A.', 'Dr. Bharati Joshi', 'Jaspreet Kaur', '', 'A Comprehensive Survey of Fully Homomorphic Encryption from its Theory to Applications.', 'Cyber Security and Digital Forensics: Challenges and Future Trends', '', 'Wiley Scrivener Publishing, Scopus Indexed', 0, '0000-00-00', '0000-00-00', 0, 'KLS Gogte Institute of Technology, Belagavi, SDM College of Engg.Dharwad', '', 'Assistant Professor', 'KLS Gogte Institute of Technology, Belagavi, SDM College of Engg.Dharwad', '', '', ''),
(40, 811, 'Mrs. Dhumal Rashmi A.', 'Mrs. Dhumal Rashmi A.', 'Dr. M. M. Math', 'Dr. U. P. Kulkarni', '', 'A Model for Evaluating Trustworthiness of Cloud Service and Cloud Users using Behaviour and Recommendation', 'Machine Learning and Deep Learning Techniques in Wireless and Mobile Networking Systems', '', 'CRC Press, A Taylor & Francis Company', 0, '0000-00-00', '0000-00-00', 0, 'Basaveshwar Engineering College (Autonomous), Bagalkot', '', 'Assistant Professor', 'Basaveshwar Engineering College (Autonomous), Bagalkot', '', '', ''),
(41, 812, 'Mrs. Maktum Tabassum A.', 'Mrs. Maktum Tabassum A.', 'Dr. Lokesh B. Bhajantri', '', '', 'Probabilistic optimization of Machine Learning Algorithms for Heart Disease Prediction ', 'Bioinformatics and Medical Applications: Big Data Using Deep Learning Algorithms ', '', 'Wiley- Scrivener Publishing', 0, '0000-00-00', '0000-00-00', 0, '', '', 'Assistant Professor', '', '', '', ''),
(42, 878, 'Dr. Joshi Bharti A.', 'Dr. Joshi Bharti A.', 'Rajashree Shedge', 'Jaspreet Kaur', '', 'BDDL 2020: Bioinformatics and Medical Applications: Big Data Using Deep Learning Algorithms', 'BDDL 2020', '', 'Wiley- Scrivener Publishing', 0, '0000-00-00', '0000-00-00', 0, '', '', 'Professor', '', '', '', ''),
(43, 896, 'Dr. Chaudhari Sangita S.', 'Dr. Chaudhari Sangita S.', 'Bharti Joshi', 'Sweta Thakur', '', 'Ransomware: Threats, Identification and Prevention', 'Cyber Security and Digital Forensics: Challenges and Future Trends', '', 'CRC Press', 0, '0000-00-00', '0000-00-00', 0, '', '', 'Professor', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_publication`
--

CREATE TABLE `book_publication` (
  `id` int(11) NOT NULL,
  `sdrn` int(20) NOT NULL,
  `faculty_name` varchar(128) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `book_name` varchar(128) NOT NULL,
  `publisher_name` varchar(128) NOT NULL,
  `isbn_no` varchar(20) NOT NULL,
  `year` date NOT NULL,
  `desgn` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_publication`
--

INSERT INTO `book_publication` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `book_name`, `publisher_name`, `isbn_no`, `year`, `desgn`, `institute`, `opt1`, `opt2`, `opt3`) VALUES
(8, 811, 'test  ', 'test', 'test', 'test', 'test', 'test', 'test', '0', '2021-07-23', 'test', 'test', 'PG', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `id` int(11) NOT NULL,
  `sdrn` varchar(20) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `paper_title` varchar(128) NOT NULL,
  `con_name` varchar(128) NOT NULL,
  `con_place` varchar(128) NOT NULL,
  `con_date` date NOT NULL,
  `ntnl_no` varchar(128) NOT NULL,
  `isbn_no` varchar(128) NOT NULL,
  `doi` varchar(128) NOT NULL,
  `year` date NOT NULL,
  `org` varchar(40) NOT NULL,
  `institute` varchar(40) NOT NULL,
  `indexed_in` varchar(128) NOT NULL,
  `no_of_times` int(128) NOT NULL,
  `reg_amount` int(128) NOT NULL,
  `amount_sanctioned` int(128) NOT NULL,
  `presented_personally` varchar(128) NOT NULL,
  `awards` varchar(128) NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference`
--

INSERT INTO `conference` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `paper_title`, `con_name`, `con_place`, `con_date`, `ntnl_no`, `isbn_no`, `doi`, `year`, `org`, `institute`, `indexed_in`, `no_of_times`, `reg_amount`, `amount_sanctioned`, `presented_personally`, `awards`, `opt1`, `opt2`, `opt3`) VALUES
(16, '330', 'Mrs. Pulgam Namita D.', 'Mrs. Pulgam Namita D.', 'Shagun Gupta', 'Riya Thakur', 'Vinay Maheshwari', 'Sign Language Converter Using Hand Gestures', '3rd International Conference on Intelligent Sustainable Systems (ICISS)', 'Thoothukudi, Tamilnadu, India', '0000-00-00', '', '', '10.1109/ICISS49785.2020.9315964', '0000-00-00', '0', '', 'ISBN: 978-1-7281-7088-6', 0, 7000, 0, 'Yes', '', 'International', 'https://ieeexplore.ieee.org/document/9315964', ''),
(17, '396', 'Mrs. Padiya Puja', 'Mrs. Padiya Puja', 'Dr. Amarsinh Vidhate', 'Dr. Ramesh Vasappanavara', '', 'A Hybrid Clustering Approach for Faster Propagation of  Emergency Messages in VANET ', '26th annual International Conference on Advanced Computing and Communications (ADCOM 2020)', 'Online mode by NIT-Silchar', '0000-00-00', '', '', '( In Process of Publication)', '0000-00-00', '0', '--', 'Springer', 0, 4000, 0, 'Yes', '-', 'International', 'www.InprocessofPublication.com', ''),
(18, '411', 'Mr. Ghorpade Tushar H.', 'Mr. Ghorpade Tushar H.', 'Krutuja S Lasne', 'Sejal S Nandrekar', 'Ashraf A Khan', 'Food Reviews Classification using Multi-label Convolutional Neural Network Text Classifier', 'second International Conference on Automation, Computing and Communication (ICACC-2021)', 'Navi Mumbai, Maharashtra, India', '0000-00-00', '', '', 'NO', '0000-00-00', '0', 'Ramrao Adik Institute of Technology', 'no', 0, 2000, 0, 'Yes', 'NA', 'International', 'www.easychair.com', ''),
(19, '419', 'Mrs. Ahir Sheetal A.', 'Mrs. Ahir Sheetal A.', 'Swaraj Yadav', 'Tejas Shelatkar', 'Stephen Tondale', 'Web Traffic Time Series Forecasting using ARIMA and LSTM RNN', ' International Conference on Automation, Computing and Communication 2020 (ICACC-2020)', 'Ramrao Adik Institute of Technology, Nerul, Navi Mumbai, Maharashtra.', '0000-00-00', '', '', '        https://doi.org/10.1051/itmconf/20203203017', '0000-00-00', '0', '', 'Google Scholar - EDP Sciences database', 0, 3500, 0, 'Yes', '', 'International', 'https://www.itm-conferences.org/articles/itmconf/abs/2020/02/itmconf_icacc2020_03017/itmconf_icacc2020_03017.html', ''),
(20, '482', 'Mrs. Bhoir Smita V.', 'Mrs. Bhoir Smita V.', 'Kshitij Pawar', 'Siddhi Jagtap', '', 'Efficient pothole detection using smartphone sensors ', 'International Conference on Automation, Computing and Communication 2020 (ICACC-2020)', 'RAIT, NERUL, NAVI MUMBAI, MAHARASHTRA, INDIA', '2044-04-01', '', '', 'https://doi.org/10.1051/itmconf/20203203013', '0000-00-00', '0', '', 'Google Scholar - EDP Sciences database', 0, 3500, 0, 'Yes', '', 'International', 'https://www.itm-conferences.org/articles/itmconf/abs/2020/02/itmconf_icacc2020_03013/itmconf_icacc2020_03013.html', ''),
(21, '672', 'Mrs. Chitte Pallavi H.', 'Mrs. Chitte Pallavi H.', 'Manish Utekar', 'Chinmay Parkhi', 'Gaurav mathurkar', 'Ensuring social distancing using machine learning', 'ICACC-2021(2nd International Conference on Automation, Computing and Communication)', 'Online Mode (Ramrao Adik Instritute of Technology, Nerul)', '0000-00-00', '', '', 'In process of Publication', '0000-00-00', '0', '', 'IEEE Bombay section, CS,  IETE', 0, 2000, 0, 'Yes', '', 'International', 'www.easychair.com', ''),
(22, '811', 'Mrs. Dhumal Rashmi A.', 'Mrs. Dhumal Rashmi A.', 'Aditya Desai', 'Omkar Kumbhar', 'Shashank Kalaskar', 'Cyber Bullying Detection on Social Media using Machine Learning', 'second International Conference on Automation, Computing and Communication (ICACC-2021)', 'Ramrao Adik Institute of Technology, Nerul, Maharashtra', '0000-00-00', '', '', '', '0000-00-00', '0', '', 'MATEC Web of Conference', 0, 2000, 0, 'Yes', '', 'International', 'https://www.rait.ac.in/icacc2021/', ''),
(23, '812', 'Mrs. Maktum Tabassum A.', 'Mrs. Maktum Tabassum A.', 'Asmita Sonavane', 'Devyani Narkhede', ' Shruti Pawar', 'Assessment of Water Quality using Fuzzy-AHP and TOPSIS', '2nd International Conference on Automation, Computing and Communication', 'Nerul, Navi Mumbai, Maharashtra, India', '0000-00-00', '', '', '', '0000-00-00', '0', '', 'MATEC Web of Conferences', 0, 2000, 0, 'Yes', '', 'International', 'https://www.rait.ac.in/icacc2021/', ''),
(24, '896', 'Dr. Chaudhari Sangita S.', 'Dr. Chaudhari Sangita S.', 'Abid Kapadi', 'Chinmay Kavimandan', 'Chinmay mandke', 'Wildlife Video Captioning based on ResNet and LSTM', '2nd International Conference on Cybernetics, Cognition and Machine Learning Applications (ICCCMLA 2020)', 'Goa, India', '0000-00-00', '', '', 'https://doi.org/10.1007/978-3-030-68291-0', '0000-00-00', '0', '', 'Springer/Scopus', 0, 8500, 0, 'Yes', '', 'International', 'https://doi.org/10.1007/978-3-030-68291-0', ''),
(25, '150', 'Dr. Ragha Leena R.', 'Dr. Ragha Leena R.', 'Shubham Deolalkar ', 'Tanmay Bhagwat', 'Jayesh Lokhande', 'Enhanced Audio Source Separation and Musical\nComponent Analysis ', '2020 IEEE International Symposium on Sustainable Energy, Signal Processing & Cyber Security (IEEE-iSSSC 2020)', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 4500, 0, '', '', 'International', '', ''),
(26, '374', 'Mrs. Chhabria Aditi S.', 'Mrs. Chhabria Aditi S.', 'Sayalee Deshpande', '', '', 'Multifactor Authentication On Mobile Phones Using Existing BrightPass', 'ICSIST-21: International Conference on Sustainable Innovation in Science & Technology-2021', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 8500, 0, '', '', 'International', '', ''),
(27, '374', 'Mrs. Chhabria Aditi S.', 'Mrs. Chhabria Aditi S.', 'Sayalee Deshpande', '', '', 'Comparative Study of Phishing Defense Scheme on Mobile Computing Platform  ', 'ICIAETM-2021: International Conference On Innovative Applications Of Emerging Technologies And Management (selected for scopus i', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 2000, 0, '', '', 'International', '', ''),
(28, '396', 'Mrs. Padiya Puja', 'Mrs. Padiya Puja', 'Sanjana M', 'Dr. Vanita Mane', '', 'Cloud based Computing Services with Load Balancing ', 'ICAMET-2020: International Conference On Advances in Mathematics, Engineering and Technology', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 1845, 0, '', '', 'International', '', ''),
(29, '583', 'Ms. Mumbaikar Snehal J.', 'Ms. Mumbaikar Snehal J.', 'Yash Ghanate', 'Aditya Mhaparle', 'Saurabh Yadav', 'Smart Item Recommendation System for Offline Cloth Shop', '2nd International Conference on Data Science, Machine Learning & Applications (ICDSMLA) ', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 6120, 0, '', '', 'International', '', ''),
(30, '638', 'Mrs. Ekta K. Sarda', 'Mrs. Ekta K. Sarda', 'Priyanka Deshmukh', 'Snehal bhola', 'Shubham Jadhav', 'Estimating Food Nutrients Using Region-Based Convolutional Neural Network', 'ICCIDE', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 5000, 0, '', '', 'International', '', ''),
(31, '811', 'Mrs. Dhumal Rashmi A.', 'Mrs. Dhumal Rashmi A.', 'Balvinder Singh', 'Jatin Habbikar', 'Anjesh Sohrot', 'Cyber Crime Detection Using Live Sentiment Analysis', '3rd International Conference on Machine Intelligence and Signal Processing (MISP 2021)', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 4000, 0, '', '', 'International', '', ''),
(32, '812', 'Mrs. Maktum Tabassum A.', 'Mrs. Maktum Tabassum A.', 'Atharva Jadhav', 'Sriujan H', 'Harshali Gaikwad', 'Blockchain Based Approach to Secure Online Charity System', '3rd International Conference On Machine\nIntelligence And Signal Processing\n', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 4000, 0, '', '', 'International', '', ''),
(33, '812', 'Mrs. Maktum Tabassum A.', 'Mrs. Maktum Tabassum A.', 'Rishi Holani', 'Rewa Deshpande', '', 'Malicious Node Detection in Wireless Sensor Networks using Quality of Service parameters and Blockchain  ', 'Conference on Technologies for Future Cities\n', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 1500, 0, '', '', 'International', '', ''),
(34, '878', 'Dr. Joshi Bharti A.', 'Dr. Joshi Bharti A.', 'Swapnil More', 'Manmohan Sharma', 'Navjot Singh', 'Respiratory Sound Classification for Remote Diagnosis', 'IC-RACT2020 Amity University', '', '0000-00-00', '', '', '', '0000-00-00', '', '', '', 0, 2000, 0, '', '', 'International', '', ''),
(35, '295', 'Dr. Mane Vanita M.', 'Dr. Mane Vanita M.', '', '', '', ' Copy-Move Forgery Detection of Digital Images using Window Based Feature Matching Approach .', 'E-Conference on Artificial Intelligence and Machine Learning: Research opportunities and Applications in the fields of Engineeri', 'Mumbai, India', '0000-00-00', '', '', '-', '0000-00-00', '0', '', '-', 0, 1000, 0, 'Yes', '', 'International', 'www.easychair.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

CREATE TABLE `copyright` (
  `id` int(11) NOT NULL,
  `sdrn` varchar(20) NOT NULL,
  `faculty_name` varchar(128) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `copyright` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `application_no` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `reg_amount` int(128) NOT NULL,
  `amount_funded` int(128) NOT NULL,
  `reg_date` date NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `ntnl` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `designation`, `copyright`, `title`, `application_no`, `status`, `reg_amount`, `amount_funded`, `reg_date`, `publisher`, `ntnl`, `institute`, `opt1`, `opt2`, `opt3`) VALUES
(12, '411', 'Mr. Ghorpade Tushar H.', 'Mr. Ghorpade Tushar H.', 'Dr. Nilesh Ratnakar Marathe', 'Ms. Snehal Mumbaikar', '', 'Assistant Professor', 'Copyright', 'A Novel Approach for Assuring Quality in Outcome Based Education (OBE) System.', '91/2021- CO/SW', 'Published', 500, 0, '0000-00-00', '', '', 'Ramrao Adik Institute of Technology', 'With faculty of other department of Ramrao Adik Institute of Technology', '', ''),
(13, '482', 'Mrs. Bhoir Smita V.', 'Mrs. Bhoir Smita V.', 'Dr. Leena Ragha', '', '', 'Assistant Professor', 'Copyright', 'Transcript System', '15968/2020-CO/SW', 'Published', 500, 0, '0000-00-00', '', '', '', 'With faculty of same department', '', ''),
(14, '583', 'Ms. Mumbaikar Snehal J.', 'Ms. Mumbaikar Snehal J.', 'Tushar Ghorpade', 'Dr. Nilesh Marathe', '', 'Assistant Professor', 'Copyright', 'A NOVEL APPROACH FOR ASSURING QUALITY IN OUTCOME BASED EDUCATION (OBE) SYSTEM', 'SW-14290/2021', 'Published', 500, 0, '0000-00-00', '', '', '', 'With faculty of same department', '', ''),
(15, '687', 'Mrs. Sumithra T.V', 'Mrs. Sumithra T.V', '', '', '', 'Assistant Professor', 'Copyright', 'Multilevel context based search in chat engines for hybrid business models.', 'Diary Number: 11459/2020-CO/SW', 'Published', 500, 0, '2044-12-06', '', '', '', 'Personal / Self', '', ''),
(16, '699', 'Dr. Chaudhari Sangita S.', 'Dr. Chaudhari Sangita S.', 'Preet Chandan Kaur', 'Esha Kalokhe', 'Shehal Khedekar, Prakarsha Dahat', 'Assistant Professor', 'Copyright', 'PREEMPTIVE DIAGNOSIS AND STAGE IDENTIFIER OF CHRONIC KIDNEY DISEASE', '17337/2020-CO/SW', 'Published', 500, 0, '0000-00-00', '', '', 'NA', 'With UG students of same department', '', ''),
(18, '', 'Dr. Dhananjay Dakhane', 'Dr. Dhananjay Dakhane', 'GAUTAM M BORKAR', '', '', 'Professor', 'Copyright', 'SECURE AND HIDDEN COMMUNICATION THROUGH 8 BIT STORAGE COVERT CHANNEL MODEL USING TCP SEQUENCE NUMBER', '15696/2020-CO/L', 'Published', 500, 0, '0000-00-00', '', '', 'Information Technology Department, RAIT', 'Personal / Self', '', ''),
(19, '', 'Tushar Ghorpade  ', 'Tushar Ghorpade  ', '', '', '', 'Assistant Professor', 'Copyright', '', '', '', 0, 0, '0000-00-00', '', '', '', '', '', ''),
(20, '396', 'Mrs. Padiya Puja', 'Mrs. Padiya Puja', 'Dr. Leena Ragha', 'Rugveda Shripatrao Sarambale [19CE5013], Prachi Eknath Ramane [19CE5005],   Shreya Sanjay Kale [19CE5012],   Uzma Khalil Shaikh ', 'Tanvi Mahesh Daware [18CE2029]', 'Assistant Professor', 'Copyright', 'Online Faculty Publication Management System', '', 'Applied', 500, 0, '0000-00-00', '', '', '', 'With UG students of same department', '', ''),
(21, '811', 'Mrs. Dhumal Rashmi A.', 'Mrs. Dhumal Rashmi A.', 'Somesh Koli', 'Neil Agarwal', 'Sanyukta Birajdar', 'Assistant Professor', 'Copyright', 'Self hosted Cloud SaaS bundle for universities', '', 'Applied', 500, 2, '0000-00-00', '', '', '', 'With UG students of same department', '', ''),
(23, '896', 'Dr. Choudhari Sangeeta S.', 'Dr. Choudhari Sangeeta S.', 'Preet Chandan Kaur', 'Esha Kalokhe', 'Shehal Khedekar, Prakarsha Dahat', 'Professor', 'Copyright', 'PREEMPTIVE DIAGNOSIS AND STAGE IDENTIFIER OF CHRONIC KIDNEY DISEASES', '', 'Published', 500, 0, '0000-00-00', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Sdrn` int(11) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Middle_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Contact_no` bigint(10) NOT NULL,
  `p_address` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Doj` date NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Specialization` varchar(150) NOT NULL,
  `Desig` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `OTP` varchar(20) DEFAULT NULL,
  `profile_photo` blob NOT NULL,
  `image_type` varchar(15) NOT NULL,
  `aadhar_card` varchar(50) NOT NULL,
  `pan_card` varchar(50) NOT NULL,
  `bank_acc_no` int(20) NOT NULL,
  `bank_ifsc_code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `p_address`, `r_address`, `Email`, `Doj`, `Qualification`, `Specialization`, `Desig`, `Password`, `OTP`, `profile_photo`, `image_type`, `aadhar_card`, `pan_card`, `bank_acc_no`, `bank_ifsc_code`) VALUES
(150, 'Dr. Leena', 'R.', 'Ragha', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'hodce@rait.ac.in', '0000-00-00', 'PhD', 'Machine Learning, Data Science, Computer Vision', 'Professor & HOD', '123', NULL, '', '', '', '', 0, ''),
(197, 'Mrs. Snehal', 'P.', 'Gaikwad', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'snehal.gaikwad@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Neural Network &Image processing, Artificial Intelligence', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(295, 'Mrs. Vanita', 'M.', 'Mane', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'vanita.mane@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Cyber Security, Digital Forensics, Image Processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(330, 'Mrs. Namita', 'D.', 'Pulgam', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'namita.pulgam@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Pattern Recognition , Image Forensics', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(374, 'Mrs. Aditi', 'S.', 'Chhabria', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'aditi.chhabria@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Big Data Analysis, Machine Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(393, 'Dr. Amarsinh', 'A.', 'Vidhate', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'amar.vidhate@rait.ac.in', '0000-00-00', 'PhD', 'Protocol Stacks(Computer Network), Mobile & Wireless Networking, VaNET, IoT, 5G Applications into healthcare , Green Networks,', 'Professor', '123', NULL, '', '', '', '', 0, ''),
(396, 'Mrs. Puja', 'Y.', 'Padiya', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'padiya.puja@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Networking and Security, Ad-hoc Wireless Network, VANET', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(407, 'Mrs. Rajashree', 'A.', 'Shedge', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'rajashree.shedge@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Data Science- Big Data Analytics, Natural Language Processing, Machine Learning, Soft Computing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(411, 'Mr. Tushar', 'H.', 'Ghorpade', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'tushar.ghorpade@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Machine Learning, Natural Language Processing, Data Science', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(419, 'Mrs. Sheetal', 'A.', 'Ahir', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'sheetal.ahir@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Network Security, Web and server security Cloud and Edge computing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(482, 'Mrs. Smita', 'V.', 'Bhoir', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'smita.bhoir@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Machine Learning, Natural Language Processing, Data Science, Deep Web Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(528, 'Mrs. Swarupa', '', 'Bodhe', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'swarupa.bodhe@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Data Science, Data Mining, Machine Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(576, 'Mrs. Smita', 'D.', 'Bharne', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'smita.bharne@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Machine Learning, Cyber Security, Data Science', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(583, 'Ms. Snehal', 'J.', 'Mumbaikar', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'snehal.mumbaikar@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Information Security, Web Development.', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(593, 'Mr. N.', '', 'GunjgurPrathmesh', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'prathmesh.gunjgur@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Information Security, Wireless Network', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(603, 'Ms. Harsha', 'A.', 'Saxena', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'harsha.saxena@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Artificial Intelligence, Digital Image Processing, Video Analytics, Deep and Machine Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(622, 'Dr. Pritam', '', 'Wani', '0000-00-00', 'Engineering Science', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', '', '0000-00-00', 'PhD', 'Category theory, Image Processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(627, 'Ms. Dhanashri', 'A.', 'Bhosale', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'dhanashri.bhosale@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Cyber Security', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(638, 'Mrs. Ekta', 'K.', 'Sarda', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'ekta.sarda@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Artificial Intelligence, Digital Image Processing, Video Analytics, Deep and Machine Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(650, 'Mrs. Bhavna', 'A.', 'Alte', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'bhavana.alte@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Wireless Networks ,Internet of Things', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(672, 'Mrs. Pallavi', 'H.', 'Chitte', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'pallavi.chitte@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Wireless Sensor Network, Machine Learning', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(677, 'Mr. Kamlesh', 'L.', 'Nenwani', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'kamlesh.nenwani@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Algorithm optimization, cloud computing, parallel processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(679, 'Mrs. Apurva', 'S.', 'Shinde', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'apurva.karkhanis@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Image Processing and Data Science', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(687, 'Mrs. Sumithra', '', 'T.V', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'sumithratv@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Artificial Intelligence, HMI, User centric Computing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(699, 'Mrs. Preet', 'C.', 'Kaur', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'preetchandan.kaur@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Data Mining,  Natural Language Processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(728, 'Mrs. Saguna', 'K.', 'Ingle', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'saguna.ingle@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Data science and Image processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(752, 'Dr. Shilpa', 'S.', 'Shinde', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'shilpa.shinde@rait.ac.in', '0000-00-00', 'PhD', 'Big Data Mining & Machine Learning', 'Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(770, 'Mrs. Siddhi', 'N.', 'Kadu', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'siddhi.kadu@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Natural Language Processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(807, 'Mr. Vishwanath', 'S.', 'Chikkareddi', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'vishwanath.c@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Image Processing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(811, 'Mrs. Rashmi', 'A.', 'Dhumal', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'rashmi.dhumal@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Security , Cloud Computing', 'Assistant Professor', '123', '', 0x89504e470d0a1a0a0000000d49484452000000d7000000d70803000000bea3348700000300504c5445ffffffa6867b723d2d763f2eb65e3fc06342bb6040ac593c8b4833995037be6141a3543a8546327a4738b89e96f6f3f2af9289b15b3dd2c2bdcab6b08f4b348c6154e4dad7ede6e3934c35b85f3fa8573b753e2d804430c1aaa3b35c3d79402ea15339956d61874732b95f40af5a3c964e367b412fa1776b9d5238844531835547dbceca956658a67b6db89083d6ada2f6d8cfffe3dae6c2b7dcb9aec3998ea16f63844f40b0847c8c5a4beed0c5cca499ac7e71e7c9b9fcdcd3fedfd7f9d5cdf9d6cd936254b5887bf8d3ca9c6a5defc9c0fad8cffcded5be9185f6cdc5f3c7c0ecb9b3e7aba6efc0b9de9793e9b2acd5827ece7472d17a78da8f8cdf9e9ad78885e4a49fd88a86e2a09becb6b0d37f7deebcb5d07977f7d0c8f1c1b9d58582f5cdc4f6e5e4e0a8a6b76a63fbd9d1a0584fda9695f4dedad17d79875147be7b79f8edecfee2d9e9c2c1c5716dac625be5a9a3855b47795f3f654d333d281c6c5439725a3c513927c685845d402fd88e8b92867e9d9291fdf7f7e6b9b8db918deccbcaaa9d9d4a34258e7c6e7e6443efd5d17965518e4e42bbb3afd8d3d1e3b0afc5bcb7856a47d2c8c5a2876beddbd6f2f1f0c68981ffede7fff2edffe8e1e3d8d4f1c3bbe8afa9f4cac2cd7b75d39684fecfc6fdc0b6fcaea5fcb8affbaaa0fb9d92fdc7befed5ccfba59bfcb3a9fba196fcbfb8e88e85ee948ade877fdfb1a0c57052a95f46e4eef2c7dee575acbcb1c9d46ca9ba7db5c5c1e9f5c7eef9cba1a48ec2d1a7a7ae8a9ba785bac9dce9edd1e0e5bae5f182bac9b5e1ed71adbd94c6d5f5f9fa99cbd9b0dce976b1c1c3c3c4a3c9d3a5d5e297b4c1abd8e588bece9ecfddeff4f6afc1c67eb1c0a3bdc6c3ebf687b3c0bac8cb70acbdbed9e0c6edf87fb7c77ab4c4b5d4dcc4d0d5678da32a607e0c4a6d1b5677bde6f297cad85681982e6c8a85a4b63d6e8a0e537e10598915649d176ba91b75bb4690b9186fb1579cba0c4e7460a0b8789aac13629890b7c22c80babfe8f31a72b7be888b125e931567a32e78a554596e244f6d14639c4288ac66a4b85596af3988ba2376b1b8406fad00001d04494441547801c498d1729b301045e38b568b0027554352100a496c4371faffffd76ac03520b0336e21e7d17ed199bbbaabe1ee663608048d901c42d16d4811514b9c00dbfb87bb2fe11b024d23228e1148fa77d8997dff0aadc7092dd29cfa71dd6ef6f4bcbad68f2d321a93b3296e8dcbc758e0656daf2780fd29e40c29fd3fd4ea91dd03a03125f32b04fd47b4c5f671cd2904904cc4f586903e813c135d8f6cc5597c478a7022ae1d0c5d21da97ec3894622fe93a7180cdc36a5d9828283f2e7e0de83279271557314bfa14bac6cf95c4b6e0ccf3ca999bcbad11b552a63a5a439f475abcaf22768f90fc3d75600e11d32cddfc5547a49aaee089fd5c41eb610be1bcfc31ac2167ad0eadd52b52a6abf8629b35e24a497a5e82d9c05eb66a2cacb3ba45ec7e95b86405e5b561f79b87d4ec303b40d16de800df57888b6483cc1bc31d78be2d5815b07ada5b949acf685dfa1bc0e0e361f9b848c6a3bd2c5dcb837cf6dc12024a4e58e79a27d1651e0d17f466f1b89c0682f1f572aa7361c53502431eb2649f83d6a510f9f82d52e3d7925e1fd0eebc6c2146d7cb5fd59473a7f50aab27db641891c825cdc1f858f6a9410eb7abbcedc5decbaac5d448e45c94ddabca33f208977c293e758767357c5b30b3859c3ef85b8dc40fab27d5bb497c662c2ab05dac3a9e5177c5cba847b5817aa875386915b0d2affe137adf5dd026496a0c089234eee9a5cb2db10de2534f1c61fcda98d64ae5fc08e644a45562d152dbbfa0c366469e025bace403790aa8423ab8490dd4609f759802e9bc5519916e6a0028ec4e356f3cc0c4559604ad9b7081e17119af97f319dd8145bf3632c4d39561e7eb622f94754e7f9406b538e87869320b2089dd725eb2e4bb83a750fd7442f0b4969c5b58074e9dd4b1eafd24244dd0869a881acfcbb486a513a2ffed291fd561ce1dbb81563e58582e2ad8caf44da38bdf3a821a9b655aa3e937e00e15b5b8762bb03fffd7a110889935ec022832c323ca0b66a6c632cdb185ec6fac1805efa3cec3c0f25eba27acd6bdcee0a972372a3d02858bcaa79434870cb144733c221c7fa609993b8f06471ed258386c92ba56204724755339270045cc33e8dfc4da8772da4a1406e0e45759409673f1281346daa105ad754d151ddcbbdfff89024b59a4f4f8ecf23f01dfcc72e614fd5c16a041ef3a4798ef74b1afcc153413f54beb7141007ea7e3e307f1bbbd7e172264f9a80ee4272e1b20ef393ec1ca4f2601f89651c377f17b83344d87a3f144e930edcc7aa37495c11c5191fd3caab7ca84e38cfe19064eae250c15a7d3ebf5660ad0998dd25f673001441cfe42f6e33de97ffa9ea12a824dc84cbbfdf4ef33f601882039b0150395a4e57eef62f8aced192a97077f90fe7b06e3397e95a8f0d5c90720769da1f09dab805efabe2c96eaf1cabfdfa4371ec92c271d202ae65d27686b6ae5952b8c30483566047c376757a8a7cb0bd89b2e54d58d00dd54afabc6f3bb398fb8707cd98e8d76ddddf7ba352cb4ba86e0ac1241b04ce1686819516c2fd9f5b6313aa9dea026b708f01c155c68e9796db6df04f818e97661bb7a0cb415c40bb06d9b51639b6798609e6a8e8ffdaad85505917406039cadabc93713f2ff58ea7675e0edd6aadc56855ec722ca613192f573f4304df5bb92fddc2d3f17215f72b451d8af326a962da7cab176d70c4535796f61459c9296c3e27eee8ac14316aa164a5f7a08d6035e4bc1a85da7f0d4a2964384012e53ede9a3c96cb9ee51305ad74735d1cbd72e225ce9772dc05b6a87d08470a95d0de5aa4a18ceaf53fd01aa6aed23b75bc4aecf700f2f06610dfd1b03ae4e7629c95170186983086457d4350c530399a1eea8d8618484b64104b2cb5ce0d684ab9fdd3d943c58093e92bad8e136b78ef99d09d700c2c9248685535257e5f02126b8bf4e4d649e3f820a10bbacc3a36b804b33ae65fecac4485d5f7038049559010f37465c0358f90507a5ab0d01e12a1757655e732608b32e8fd6757270ee6aa932af3dcbfccd9d11bb5c0be55ddd08e13fa686e28369753921f8aece17f1746bcab5cc1d72436a975340b07d864d8cef4cb9aea7106e66437f46ecaa0a789b434a846773ae910f5e3e74b5895d252f5ac3ca2cc6f9a339d7e33d609535ba9c563d42623356c3e8f1c594eb75e53a5c2156e85d365bc19aeb26eaf1f1da94eb66e54a2a80a7f66cd4ae129330819169178b81f2cef581dae554250c4f8fc65d2c06d7e2c2b6935fc39ecdbbd4c7f9207695b71f01308ec763b898e0f4778736b66787d6f15c5e644b5783d6c5a5cb3d9e8b55eae4f7af4f00eced9d08c772b14a69ed22fdf40bfb7b68f5782ecf56e3179d4b389be0deb0eb69e3faeadaad925324769d081425ab6cdcf58078c5929fedbbaa9da7097888cd6794ec08ae40ba747cbfe1c339d9acda123cac5d2fc65d5aceb00d382c4228fbe9f1da7567da55dded0f3f10bbdc585eaf0586865d6fd2653b32a076d92e6b829743dc3f1a767da3e5bcbbd34896388acb3af01c376736e7c8b6737803b25b691a1828064642394bce3632382abc75da1c243d367cdaedae66248c850f137cffb54787cbf4fcba28aa49c0e75b5e5d21cfb33d0fb1bdf495611c12ad5ea690a4339ab410267b9c7496b560582db1630821320db242623017437ac55dafd0c76d0eca6e973af70974bb2429a63172797c92825d9486f4e28c0c5aacd5146d7dbd296dec12ee4031b5a3d79bb02b64afcf54cd2bc7783fe51aa65f74019f46c9b60b8859d64a01d1a67f6a0fa993572fbceb7a85bb2d53e1bb471f6280134d5ea2841d60b127c862071432da8bd3385134f4313d777ea38b3e05c1b657063bc131d893a40bd801b6bcb4afd92bfcb14ad90888ea318a042792868d8ac1a19c3025a25c2e3b439241c9306e51643b623689a92b2c75a9fc1323a66264c81ea55b66b26ececfc07bae573cec132aeafb1ae5f5329ce2c45849bd2247986d909e84606dc4ca1ab31d654ba909f2fa8cbcc2dfbe6863a6076c8f2ea3b818c6516bdcec00d6860e2ecd4c208e707e1a3e6e7845c33ea04283295d745ee334974c4e0c67e856f9f71a333b60c41a1dd7855434fced4b0f487d46eda846bd6195fb4c339817373b2125acc923f079c3ebcd307fd9616a1a1167e065bd10c94b703edba1d8186bc3acd909fd9c0bda98c96b0fcca1647e2a129c854554a8c64d547b11ddcd0b69bc3c640d36b054ae09d385b336241f4f0982f2b099d924e7bc17a0e1f5b2f6c2c585e05ef388962cdb8e813e0b700e5caf7e9310197b6278b095d1092ba35f196b478a1e2067c876b705cdf0a05316ae16535efc00ecd35efbe1bc7c2916e27c60ad0b883926f91a6274c3f66f6fccfd233ba43321e40d1cd4817991b5e3e258ce961a56b915b993d15f1e33a8dca0a0272ff5218949728817827a5dc282a1671c3fd3a300db5e2c27df5a223344eb102f5f51cccc5c9eb072ea5e4c5ced676d11a5d25066dc2c3bb6bb7e9ded7538c6533c6336bc3e8597b51700531805bc14d4ab8836531ca649d837b6bdfa52aa306f30513c72ed5a65e93a51ad556f1c9c1e75f86cbff9142d27c5d8a495bf79eedab56bb72470ae6766a6517fdcb6ed925a27461f970cc0e7e4f5823b536c6331f8e395691a55dabbed95ccca6a3d8f92db97e4aab853ad55ae6b6e546ab7ee469657564df67452c5f9b5c8ff6e546bb7f485df556a4bf716566e23e108914b757349023ea17a3ee69e44c8047fc026c84b720ca2aa41bfe56534eed6840edd7bd5daaebbdf69affbb5a5bb2a499decd3b5261ec8ff75f756b546d749ee576a0fd533bd3281449a710280bcf6c0d7aed74450af45e56538888f6890e29d262f26f2b8b8b21c21be5faa3d17b9735db174bf72eb07fd70a6597bd23fd2a53fddaafefccb5dd7ab7a47a7d5bcaa7ae5d59c3801efbd439f52e6b09021afc5e0ebd062ac888873d4187d63fbf96212b1b5913c57abddfbf516ada6fbf72b0f239adf4cd68eec5a4453ad1e8cfcae1fccfb95a59fdc6d73b5986214f3141c7b5ea098bf828852ccc2f9e05e366358c0d53f2838a2e4d5dce158df88103f552bf77fae2e2d2d49adaafb296999b5452d5ff74e57966ec8f7a3f6f3f61bb2bcce14da4bb5a45ea098ff63151119b3837b4dabbf53b2d1ead51d7af222d8169beb1bcb52ec7ee5fefd9f7f965af7ffaf5fdbc6265324d98eac2fbb4da1aaba5022af7c8dae535284c109d592a298e7ab68974c86381d7cff423395cae228d7c1f1f98127bc5c4eeefa95787e6a43a29d08ce7666736399dc7e7958a9dc97d47e5dd858a7eb5abc548b43c5fc018e984d091383ef5f0b886943755a440f0507d5874492754aca644f67f6bfc449d64a37d71c83187d35308e05299b460c5e20ea8ff20e8e9c853d8f79f5b34e49d6fb983f5caf1ef84cc5fce93fd161146361d4bd79157c584e50706c7b19ac63cc7a92f9826bd47745aa9a3feba0608ce5293602b282a896113a87548f234ad31b84877b60d439f3c345de8006cef743c241f52e21ae04f79a42aa38ec2c573f6116a3fe86e7167ddddf0d4bf206bdeae3df6e38ecd8babf371509ce222d44a7cecfc09be4e5c23ae7af7ab7bfa12f97639f50cc3b0e2dc3c548084cd342cc09ae82631f1cf1e3c5eb93fe86f45cce003ddae91c2dc3e930bc1ed04214265733c47b20c15d925ebceacc07b3ad5e938296e18330bc9669210ad69d68f1eaf7f002eb75c36fcc130794d7319e14b40c9723212d44c10cd67d585652d406f01ef4a97a7d967927c55d746e1c4a3226425a86547214e9cd03a0f2d047d08ff9f3e22e87f5e0f480f42a52b1110a1388d44201a0fbe523e805ad43df31aff7af7dd0c39881381109894b886935190d71f2f21e88fd75ca0ddf5e14c5aa3bcf58bab9e60dde6b2b492f991b8f7b5df4b00cff0a14f3bae68ec32156a21e5b4814d5169674bdbc077dbdee6b5feee32e00519a89f926856e2b2aa42d2ca7bd5e86435e0391d2502483c47ce330470c8ed2e6151e8b68b38b6a917f0c09af5e941a2916240e3fd5e3aa51f8aad4a6860ad20d505eaf377bf5757cbbeafd41bc7a55c5ad8033b47985c71aa2503f1b21bd06bc067d526a9981aaf901f75768e158a8cb903eaca4d521cee86770d46bd073e9351ba8ea3d016f36ceeacd212e47c244d5be00d1373e83396f81487b97606cd3bf97aadf8897e10ade8e84ed751276cb23df706cdc9b9729bdc6185bf71f87a7a9b142fb32350ec364028baa46eb8abd15ffd35320f6d72506dbdcf45ff59e007788e8ebd0bde6d1d65e7158f5108874bbd2ab82adfbf072d3d0fde92ad90778765eff81192f8128c3706434cfc8cb671cba67b35f8623ac803f86eb55c492f28ac6f6c0dca48740ecaed72db402c5c659b9bdb85fea51272a4c5610b5d73e3856f650f9ca902f619e0569029c8117f4ed3af56cbce81b4b750ad1f21088d2cbd91afe2ada45c37b1c1e8346187efb0cbc2e21a68e41947e0febbc874054c5c62a62c9a480cbd859ef5514ecd6f3edc7a907b016aed702a25067f5df89bd2e1f300f8168fc551fc9d3c49dcfd838a48ba84f2041030e0be17a2d233a2a98e4d9517854e62e9d94e97d93f5e228e60d9fb19120af2e38e67ee1102eb731ff2dd02f7d41bce8f523f3ac58c58ccfd8d05efbe06b9adb2886ed750931771cf6c8072c0e7f73ef3dc46cc1f057452520be978e5930960bfdf1a2ee28fe039fd00fb45f99f4d1434ca5fc541be4d5a5be4b39acb42622a13325c5e2d0f5a1f49afbd343c5e1936493576caff49a41c4c5a948f8aca9198e37a3cacbf25071f8c468f67a87bcf42a0c9f0bd347e503a6bc463df6a482f4a27aa5576cef1e383aff2f6f67c11b370cc5f1c8922f65661833b368ccbcb354664875515938669e1886613a1c7cc5d94e76c9d06975de6fd09ca8fa2b7efc4e9e9a13385103ca2b70e63b83c6566160ab332f7f7d7e4d25d7bbcdea40f946ec0f67514f1899b99a1766e208a8c4c24035d7eb38c5351d003c42432b31304951354df79f0dd3d02d7b25addef7336033d6b50534f0bc14b6422cc727424663710dccd61d9362588aa2b88e2429bae7e84aec56efc3696260e2668e1765ed009564b1b25198423db10cccb63cf3178cb42459f8a7e75a17e298d704423bc8f71dd62cd5f27b5d5b607d25d841fada438c0876ec1a16e598ffc6519533c71803f3f7e80efebde47ba31caf19ed20deb08eb671861929e2bb3b992c25f99192340959193fcab95c2e4bc924fb6cc631ecc741ab9a58184c099ca8ee82edb8ac6ca565e675d6413cb69ca3641d82995ccc99a69c249f3c2c28e793660d602f9361720db1b0c4736edeb01caec1c730285b2e335329d5c4b8691f07bf383983cd8b6298149de9e5af93464d2d001d62e220b77328c24d6da02e1844f4b06b15e2359c7480eb65b2a6461f752f90c5f48613fe146f3d59a0cf73cb362014370461640e8d14937ae9effe9008d3d3017af0a4993e0a632d0ad3e78f4f6a401b475d07e99a79e06edfb05f18e602d160603d215af0b20c9b1d942f8fc873c12d8c22e4a6eb39d5157cb87f07bd8f13c2680473345f9aee1aa68fa75f606fb14d8ca30521d0b5869faefb10e26e546d383a1a8bd30d905cf3373c578a93433d44778af9f6467eba8402dcb419ec0cebb191b158c9af64b99e1941b3a4584b87d78b75641d5807e10181173d704d47677764383b3211b7cd612baa8fa2c46d6cf4d13a32bc0ce4b9c0d3c0dab64674a2a189f02496b8505e0e17505ae93a80c00f19ae118fd4860677a728ec64a90bafe548cbba1bb441f849e047aa502176d408a1b071343e1106b112307ff247ba1b9908ed001dc4bcb80a4b88eb76869fe7643434169a58c9da1aefa3fb0cdd64e05110b832f729b1e9732ad27d1b2f7ac5e3a532ae5f64edac061db09012383377606ff4487c994523837eaf7ebe44c6f58b2c009a38181783afdfbedd4241e67172be34b27a88ac901d75f939e13ff39d99bbd08ddc8ac200fc0a7d8f158da01c9046728a53dddd701c282e85c42a3393a81af52192e9b14f1dba637be36986c2cc4ce5f60d7a4f3d736d2b8cde5fb4e8cc37e7dedf10f809341d7f66acf3329e4db5ca6951c187996e30744482c5e485e245ab3046a7e39059342dcad702d622611760d1a52eebe97a2858941ec69a25ec62ac1f7b01fafa43640d782c0e3deac560ad4a54a4a99eb1dea46958603f088bd5e5b1d0800f9ad4c289acf4fce7e3b8cade67bd16a23e087d21c1ba1296647100f15e37b3faf87961c46a799f7a95f5028a98565f28ac077d9689deb8e05bf1ba622aab3cd752a4bd456bb0590c9cbd033a8a38d01d86cb0047b24c48c12f85ed51d342b073b0e2ee9b422e079123a6ec10584390461903b89589525a6a587dc35961c46aa9646a3c4a618f095756b86c08a3e16d94d12127684fc89bdcd8d960c46a52690d165d69278f886918befecec8a1973ce4d18191a89b06f7025f39cb35618cb16a5abf94b7ee412ee76eb0feebee8cd1948e5e34fa5d32e10e8cea438cecb9a8d27adaef34ac53597d5dd44d59eb2d06c0c3710dc92aa47030747a1563d1621aeae9d6a5ec34b0126a7756591cd66bad915b8fc02086e1ea929de16610b234bd1cdc90b0966a46fba5e4145b8bfe25350da59cce7c5f40124370758f027de0c032e4e3d41ed6c46d45ca9eab61ace639e584ad55d6a932b5533e35a6014f82a65fbfab7f14a60c3030b80cc9859885b14845b994d5350b59c371d71ed16a957ed88b372c9131efe00e4cf75f93ca8029dbcc0797611ad27c0629364c465a4ba232f17a260ae1a85d4625c86252456b965883bed307c5b8fa0be021809cc3b90d1c7dc94d718e6e34f8321290d5d50859e58b0751652fbdc5982a6755462a6205de326d366df7cd5df96a9c871ca7f459e88fd5275dba96f82142b232af1a692a372b9f7fd6ffb35f5fa862c2dbd9e29b15e5f684e5a02fc959ce79faaa5dc35417e49a4d06b7972d5d685a042399b7cf5a3a6b0a3f42d5cd4d46a858b103958ae216fc7e2265a23f96412e18b8ea27341c67c815ac8d2ca4a54bc288f69a8f168f353319b5a6ba49ae3f6ff77d399ad4d11f0e797201cc5f256b615470c6c90583c1b397295d12e6a6544e8dd25088dc538a44512613469085c694492e4842dfd55c280e641697965720edbad290455f6ce07c150fc2a4ad44293f10a5a4c26f6a6d8d64208dc13860739135709c54a2fbd2ab3db3befc7f3680175d0737370660b010395b4abf1ff51a431e668e536c40d47360b7dd7ef7f206b5b945a4ed9dddbdfd5f015d571ecc635dc83598a4219c9a55b290d0f84196597099b48b2d78ecce1b5fbd7c19aacc12a176767fdba7fcae155c36e0b12eaa7b181317eaa7657d9a011b0fb06873b92e8b56284fc23b4ce48d57da2e34b7e1cd95e5e53f76f6f68bf993da7de6142e8a0113b75f3bd5c0a807ad2c1e3ead551ce7b3737390750beaaf7b8cc29a5f693befe0369785eaef7d5fdc163cc4456d3c83c1601e123794d3a86e8f80c60fb26639b1c461f9946da62c1d454c0d3eacac626ede7aef1cb4fe2da192a30abae46959ba046c1c0fbcb4148c949ecc5a48d0710fb06c62e96e2be6791a0ca4e836fc733bf27c75d156f9c119eb422c419a953fff421e45560fb80c9803e3a08b3a2c73fb04d57f9d9c0772a34814860fb457d97c8fbdc7e6ade473789ee96252032aa00a03e35cc8a99dca22484613d022e7c013b8ab0ddd4edfe4287ffdbff7ab35c1735fbb61e19184681535c19b9406409beeb7e6ffc0a2f9e1c75f6bb5df5eb25abb2c6769dbab6ef7a2e36583d9c7f3ec125acbf84628f96f05ac9074b5de3bb4e0076560dbfba0f3d3c24a42f09289993dbf450ed960c212b99726f1c2f33434d2011762499dd50a802ef955665825c5a170402bfa96b0b973fc4501be53ffff17778e179f756162f9288bcb4c64343d0593d445dfd73b5e3404cb9146066bffc94b700dc090fe12dafadd1df40a853b8e5507867cf7f6ec9c213bcfb868edb2ca29190852697271710904892a2f5bf2c8fe0684441ad9fc5277cbd62b2bdd244fa35901454cd085079c1dd53fef0e7751298f9369ce8e9f7c31b3c27274c9052904bd104a37da5edeec91fb10684482e72ecf3d8c6a651edc5023cfa1878786f45dc175fd9fb7870cc99b4bc364c0760531655c15b3bc26b594e8b54fc16b7bf18b812f3df39eb5c823fb6f7d1920f0c9f37040a73507c26b74fd0a9d0665e5c489b9983aae4956518e322e855cbbdccb693d367a21fe26f4880caacfafa3d91cce9fe129a3525ca656356c444fe892a3389970252ef6e88e1dd771a5699a4d2f442fa3397db517350358301566802ce80a298516f8a8858749378423334eb88e2876fc88d847c6f0242698712af35aa540e45e88b7d1bd3e98be1db8ae61fb5265359e05e0d1fda86eabf786f023f0ada3853bf659edf599c5b3b6b848f1338171534891c26bbf894c87058770a5681696e31005514454e8707d08bd82cc28e88125fc983bccd22fd3d628a68c6d2bbdf6d834ab48d06b227af11ca821f52251519b852ed87cd8fc9e6af03493445a51a8bc4c030e738643d29ca60f62575d0d12d924ee3c5ef29814ea090b96f027c6fd8e5748eb2d20da7e1399cb975c73f4839076d6cdd3754c78952808adaba33c2e875c669f6e08a153b8e96a6160ea2b54dd1a95c843af53de1685dd3a78682edf483453f3fb10342e784109834dc30e9d063b3000fa98f163619ddce294dd80c97f9bf7e2301be34c42cede286ebc8c8db2660027a8277869f71e189c48edb54f1a568b4a2ddce4c318a1a913067d6870fbbaff9895d6837113c737f079443df13c7dde1c22b1aa3916d9a01ec38a51f3257f5a96c2bd9a7c786a9e6b795cac8bbaee6deb6ad87ad187149ee885cdd165ca8e5563f825bb9fbff4a197a1f6d229d2da95d5c27b6f987c165b56ca1af45c38a9a348937290039759350322d01be358a5adaa67ecd31363581787f0f415a8bd209427b06ad695810152ce7eb14a54380b707d5a969510ab412f3e8844c0846fd5a9630a2203f982bd6179dd1a48f2c06b6c3fe2053dbe606d4c8d346635ab9894da6a7cc4eec90765920a5e8547441686d55b15b79ec24af982ed601bf21a9c8885089edaebf2125c8fd288bc1e6e853a65998e3afb45563d22125e2595d7f4590bb6c7523e86b3e2988a35af0286a36f63e8fb98ccabb12bab1baec3112fd266ebe9e5b4f28a3b0ba61c43de16d3075e54ed85d534bc8200d55f85e6b930bcc9249ca8eb2ab8aebcf2ce826dcbc630e6eb854cd08bd7bc12abaedc9b31b8fa6bd4a86dd51df8322f0f928b924ddb0bc6ffa8e30ed91d7368b145053e0000000049454e44ae426082, 'image/png', '', '', 0, ''),
(812, 'Mrs. Tabassum', 'A.', 'Maktum', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'tabassum.maktum@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Security , Cloud Computing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(874, 'Dr. Amit', 'K.', 'Barve', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'amit.barve@rait.ac.in', '0000-00-00', 'PhD', 'Compiler Design', 'Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(878, 'Dr. Bharti', 'A.', 'Joshi', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'bharti.joshi@rait.ac.in', '2043-10-03', 'PhD', 'Artificial Intelligence, Data Science, Object Oriented Database', 'Professor', '123', NULL, '', '', '', '', 0, ''),
(888, 'Dr. Dhanajay', 'M.', 'Dakhane', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'dhananjay.dakhane@rait.ac.in', '0000-00-00', 'PhD', 'Computer Network, Information Security, Network Security, Cloud Architecture', 'Professor', '123', NULL, '', '', '', '', 0, ''),
(894, 'Mr. Balwant', 'J.', 'Gorad', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'goradbj@rait.ac.in', '0000-00-00', 'ME/Mtech', 'Machine Learning, Deep Learning, Artificial Intelligence, Data Science', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(896, 'Dr. Sangeeta', 'S.', 'Choudhari', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'sangita.chaudhari@rait.ac.in', '0000-00-00', 'PhD', 'Image Processing, Information Security, GIS & Remote Sensing', 'Professor', '123', NULL, '', '', '', '', 0, ''),
(898, 'Dr. Vaibhav', 'E.', 'Narawade', '0000-00-00', 'Computer Engineering', 9988776655, 'Ramrao Adik Institute of Technology', 'Ramrao Adik Institute of Technology', 'vaibhav.narawade@rait.ac.in', '0000-00-00', 'PhD', 'Computer Network, Wireless Sensor Network, Image Processing', 'Professor', '123', NULL, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_designation`
--

CREATE TABLE `faculty_designation` (
  `sr_no` int(11) NOT NULL,
  `sdrn` int(11) NOT NULL,
  `desig_name` varchar(50) NOT NULL,
  `from_yr` varchar(10) NOT NULL,
  `to_yr` varchar(10) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_education`
--

CREATE TABLE `faculty_education` (
  `sr_no` int(11) NOT NULL,
  `sdrn` int(11) NOT NULL,
  `edu_type` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `score` varchar(5) NOT NULL,
  `university` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `from_yr` varchar(10) NOT NULL,
  `to_yr` varchar(10) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `sdrn` varchar(128) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `title` varchar(255) NOT NULL,
  `journal_name` varchar(255) NOT NULL,
  `volume_no` varchar(128) NOT NULL,
  `page_no` int(128) NOT NULL,
  `isbn_no` varchar(255) NOT NULL,
  `doi` varchar(128) NOT NULL,
  `year` date NOT NULL,
  `desg` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `publication_date` date NOT NULL,
  `paper_index` varchar(255) NOT NULL,
  `funding_org` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `impact_factor` varchar(20) NOT NULL,
  `ntnl_no` varchar(255) NOT NULL,
  `indexed_in` varchar(255) NOT NULL,
  `no_of_times` int(20) NOT NULL,
  `reg_amount` int(200) NOT NULL,
  `amount_sanctioned` int(255) NOT NULL,
  `awards` varchar(255) NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `title`, `journal_name`, `volume_no`, `page_no`, `isbn_no`, `doi`, `year`, `desg`, `status`, `publication_date`, `paper_index`, `funding_org`, `institute`, `impact_factor`, `ntnl_no`, `indexed_in`, `no_of_times`, `reg_amount`, `amount_sanctioned`, `awards`, `opt1`, `opt2`, `opt3`) VALUES
(1, '482', 'Mrs. Bhoir Smita V.', 'Mrs. Bhoir Smita V.', 'Dr. Sunita Patil', '', '', 'ICT-based Learner-Centric Evolutionary Learning Model: An effective solution to Teaching-Learning process', 'IOP Conf. Series: Materials Science and Engineering\r\n', '1074', 1, 'doi:10.1088/1757-899X/1074/1/012028\r\n', 'doi:10.1088/1757-899X/1074/1/012028', '0000-00-00', '', 'Scopus', '0000-00-00', '', 'NA', 'K.J. Somaiya Institute of Engineering and Information Technology, Mumbai, Maharashtra, India.', '0.53', '', '0', 0, 6000, 0, 'NA', '', '', ''),
(2, '812', 'Mrs. Maktum Tabassum A.\r\n', 'Mrs. Maktum Tabassum A.\r\n', 'Dr. Lokesh B. Bhajantri\r\n', '', '', 'Behavior and Feedback based Trust Computation in Cloud Environment\r\n', 'Journal of King Saud University - Computer and Information Sciences\r\n', 'Article in press\r\n', 1, 'ISSN: 1319-1578\r\n', 'https://doi.org/10.1016/j.jksuci.2020.12.003', '0000-00-00', 'Assistant Professor', '', '0000-00-00', '', '', 'Basaveshwar Engineering College, Bagalkot\r\n', '3.5', '', 'Scopus\r\n', 0, 0, 0, 'NA', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

CREATE TABLE `patent` (
  `id` int(11) NOT NULL,
  `sdrn` varchar(20) NOT NULL,
  `faculty_name` varchar(128) NOT NULL,
  `author1` varchar(128) NOT NULL,
  `author2` varchar(128) NOT NULL,
  `author3` varchar(128) NOT NULL,
  `author4` varchar(128) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `patent` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `application_no` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `reg_amount` int(128) NOT NULL,
  `amount_funded` int(128) NOT NULL,
  `reg_date` date NOT NULL,
  `opt1` varchar(128) NOT NULL,
  `opt2` varchar(128) NOT NULL,
  `opt3` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patent`
--

INSERT INTO `patent` (`id`, `sdrn`, `faculty_name`, `author1`, `author2`, `author3`, `author4`, `designation`, `patent`, `title`, `application_no`, `status`, `reg_amount`, `amount_funded`, `reg_date`, `opt1`, `opt2`, `opt3`) VALUES
(1, '687', 'Mrs. Sumithra T.V\r\n', 'Mrs. Sumithra T.V\r\n', '', '', '', 'Assistant Professor\r\n', '2020-08-17', 'Multilevel context based search in chat engines for hybrid business models.\r\n', '11459/2020-CO/SW\r\n', 'Published', 500, 0, '2020-10-22', '', '', ''),
(2, '699', 'Preetchandan Kaur', 'Preet Chandan Kaur', 'Dr. Chaudhari Sangita S.', 'Esha Kalokhe', 'Shehal Khedekar, Prakarsha Dahat', 'Assistant Professor', '2020-11-01', 'PREEMPTIVE DIAGNOSIS AND STAGE IDENTIFIER OF CHRONIC KIDNEY DISEASE ', '17337/2020-CO/SW ', 'Published', 500, 0, '2021-03-02', '', '', ''),
(3, '482', 'Mrs. Bhoir Smita V.\r\n', 'Dr. Leena Ragha\r\n', '', '', '', 'Assistant Professor\r\n', '2020-10-16', 'Transcript System\r\n', '15968/2020-CO/SW\r\n', 'Published', 500, 0, '2021-03-24', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rd`
--

CREATE TABLE `rd` (
  `id` int(25) NOT NULL,
  `sdrn` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `First_name` text NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Middle_name` text NOT NULL,
  `Last_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rd`
--

INSERT INTO `rd` (`id`, `sdrn`, `Password`, `Email`, `First_name`, `Contact_no`, `Middle_name`, `Last_name`) VALUES
(7, 'verify1', '123', 'preramane@gmail.com', 'Prachi', '0', '', ''),
(8, 'hod1', 'hod@123', '', '', '', '', ''),
(9, 'verify1', '123', 'preramane@gmail.com', 'Prachi', '0', '', ''),
(10, 'hod1', 'hod@123', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_chapter`
--
ALTER TABLE `book_chapter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chapter_name` (`chapter_name`,`book_name`);

--
-- Indexes for table `book_publication`
--
ALTER TABLE `book_publication`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_name` (`book_name`,`isbn_no`);

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paper_title` (`paper_title`,`isbn_no`);

--
-- Indexes for table `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Sdrn`);

--
-- Indexes for table `faculty_designation`
--
ALTER TABLE `faculty_designation`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `sdrn` (`sdrn`),
  ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `faculty_education`
--
ALTER TABLE `faculty_education`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `sdrn` (`sdrn`),
  ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patent`
--
ALTER TABLE `patent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`,`application_no`);

--
-- Indexes for table `rd`
--
ALTER TABLE `rd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_chapter`
--
ALTER TABLE `book_chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `book_publication`
--
ALTER TABLE `book_publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `Sdrn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1314;

--
-- AUTO_INCREMENT for table `faculty_designation`
--
ALTER TABLE `faculty_designation`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_education`
--
ALTER TABLE `faculty_education`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patent`
--
ALTER TABLE `patent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rd`
--
ALTER TABLE `rd`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty_designation`
--
ALTER TABLE `faculty_designation`
  ADD CONSTRAINT `faculty_designation_ibfk_1` FOREIGN KEY (`sdrn`) REFERENCES `faculty` (`Sdrn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faculty_designation_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `faculty` (`Sdrn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_education`
--
ALTER TABLE `faculty_education`
  ADD CONSTRAINT `faculty_education_ibfk_1` FOREIGN KEY (`sdrn`) REFERENCES `faculty` (`Sdrn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faculty_education_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `faculty` (`Sdrn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
