-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 05:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

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
(1, 811, 'Mrs. Dhumal Rashmi A.', 'Sangita Chaudhari', 'Tabassum Maktum', '', '', 'Blockchain of Things: Benefits and Research Challenges', 'Real-Life Applications of the Internet of Things Challenges, Applications, and Advances', 'Direct', 'CRC Press taylor & Francis', 2147483647, '2021-02-28', '2021-07-23', 0, '', 'NA', 'Assistant Professor', '', '', '', ''),
(2, 482, 'Mrs. Bhoir Smita V.', 'Jyoti Kundale', 'Smita Bharne', '', '', 'Applications of Machine Learning in Fakey News Detection', 'Design of Intelligent System using Machine Learning and Deep Learning', 'Direct', 'CRC Press Taylor and Francis Group', 0, '0000-00-00', '0000-00-00', 0, '', 'NA', 'Assistant Professor', '\r\n', '', '', ''),
(3, 896, 'Dr. Choudhari Sangeeta S.\r\n', 'Rashmi Dhumal', 'Sangita Chaudhari', '', '', 'Blockchain of Things: Benefits and Research Challenge', 'Real-Life Applications of the Internet of Things Challenges, Applications, and Advances', 'Direct', 'Apple Academic Press (CRC)', 2147483647, '2021-02-28', '2021-07-10', 0, '', 'NA', 'Professor', '', '', '', ''),
(4, 878, 'Dr. Joshi Bharti A.', 'Dr Shivangi Agarwal\r\n', 'Riddhi Vinchhi', 'Neha Zimare', '', 'Low Cost Bone Mineral Densitometer', 'Computational Intelligence in Healthcare, Springer', 'Direct', 'Springer', 2147483647, '2021-05-18', '2021-07-23', 0, '', 'NA', 'Professor', '', '', '', ''),
(7, 0, 'test  ', 'Tanvi', 'Sangita Chaudhari', '', '', 'demo', 'demo1', 'direct', 'Springer', 2147483647, '2021-07-01', '2021-07-08', 1000, 'RAIT', 'NA', 'student', 'RAIT', '--SELECT--', '', ''),
(8, 7, 'Rashmi Dhumal', 'Tanvi', 'Shreya', '', '', 'ww', 'qqq', 'direct', 'ghdjqidp', 1234545, '2021-07-01', '2021-07-08', 1000, '500', 'NA', 'student', 'rait', '--SELECT--', '', ''),
(10, 999, 'a a a', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 12365, '2021-07-30', '2021-07-02', 0, 'prachi', 'prachi', 'prachi', 'prachi', 'UG', '', '');

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
(1, '811', '', 'Mrs. Bhoir Smita V.\r\n', 'Kshitij Pawar\r\n', 'Siddhi Jagtap\r\n', '', 'Efficient pothole detection using smartphone sensors \r\n', 'International Conference on Automation, Computing and Communication 2020 (ICACC-2020)\r\n', 'RAIT, NERUL, NAVI MUMBAI, MAHARASHTRA, INDIA\r\n', '2018-07-14', '', '', 'https://doi.org/10.1051/itmconf/20203203013\r\n', '0000-00-00', '', '', 'Google Scholar - EDP Sciences database\r\n', 0, 3500, 0, 'Yes', '', '', '', ''),
(2, '896', '', 'Dr. Chaudhari Sangita S.\r\n', 'Abid Kapadi\r\n', 'Chinmay Kavimandan\r\n', 'Chinmay mandke\r\n', 'Wildlife Video Captioning based on ResNet and LSTM\r\n', '2nd International Conference on Cybernetics, Cognition and Machine Learning Applications (ICCCMLA 2020)\r\n', 'Goa, India\r\n', '2019-07-15', '', '', 'https://doi.org/10.1007/978-3-030-68291-0\r\n', '0000-00-00', '', '', 'Springer/Scopus\r\n', 0, 8500, 0, 'Yes', '', '', '', ''),
(3, '330', '', 'Mrs. Pulgam Namita D.\r\n', 'Shagun Gupta\r\n', 'Riya Thakur\r\n', 'Vinay Maheshwari\r\n', 'Sign Language Converter Using Hand Gestures\r\n', '3rd International Conference on Intelligent Sustainable Systems (ICISS)\r\n', 'Thoothukudi, Tamilnadu, India\r\n', '2020-06-09', '', '', '10.1109/ICISS49785.2020.9315964\r\n', '0000-00-00', '', '', 'ISBN: 978-1-7281-7088-6\r\n', 0, 7000, 0, 'Yes', '', '', '', ''),
(5, '007', 'test  ', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', 'prachi', '2021-07-01', 'prachi', 'prachi', 'prachi', '2021-07-16', 'prachi', 'prachi', 'prachi', 2, 500, 300, 'no', 'prachi', 'PhD', '', '');

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
(1, '687', 'Mrs. Sumithra T.V\r\n', '', '', '', '', 'Assistant Professor\r\n', '', 'Multi Level Context based search in chat engines for hybrid business models\r\n', 'Diary Number: 11459/2020-CO/SW\r\n', 'Published\r\n', 500, 0, '0000-00-00', '', '', 'RAIT only - No collaboration\r\n', '', '', ''),
(2, '811', 'Dr. Choudhari Sangeeta S.\r\n', 'Preet Chandan Kaur\r\n', 'Esha Kalokhe\r\n', 'Shehal Khedekar, Prakarsha Dahat\r\n', '', 'Professor\r\n', '', 'PREEMPTIVE DIAGNOSIS AND STAGE IDENTIFIER OF CHRONIC KIDNEY DISEASE\r\n', '', 'Published\r\n', 500, 0, '2019-07-16', '', '', '', '', '', ''),
(3, '482', 'Mrs. Bhoir Smita V.\r\n', 'Dr. Leena Ragha\r\n', '', '', '', 'Assistant Professor\r\n', '', 'Transcript System\r\n', '15968/2020-CO/SW\r\n', 'Published', 500, 0, '0000-00-00', '', '', '', '', '', ''),
(5, '007', 'test  ', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 0, 20, '2021-07-01', 'test', 'test', 'test', 'Personal', '', '');

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
  `Department` varchar(10) NOT NULL,
  `Contact_no` bigint(10) NOT NULL,
  `p_address` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Doj` date NOT NULL,
  `Qualification` varchar(50) NOT NULL,
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

INSERT INTO `faculty` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `p_address`, `r_address`, `Email`, `Doj`, `Qualification`, `Desig`, `Password`, `OTP`, `profile_photo`, `image_type`, `aadhar_card`, `pan_card`, `bank_acc_no`, `bank_ifsc_code`) VALUES
(7, 'test', NULL, NULL, '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', 'hncqx5d61o', 0x6956424f5277304b47676f414141414e5355684555674141414f45414141446743414d41414144434d66487441414141636c424d5645582f2f2f394e5455314a53556b395054317a63334e465255566b5a47524251554738764c79566c5a574b696f724b797371626d3573354f546c43516b49334e7a647362477a352b666e7a382f5072362b746358467931746257426759472f76372f5731745a52555647787362465957466a67344f42336433664d7a4d7a6c3565576c7061556a49794d5145424346685957686f6145774d4441464a6a666c41414146376b6c45515652346e4f3264585866714b684241425970596c5552724e50576a36726c742f2f39667646465054684d44436851796844583771532f563253736b595a674252794d45515241455152414551524145515241455152414551524145515241455152414536596d395a506e693873642f4b2b6851416a476d684c35632f70414c3646414338632b51735249366c6a443847424b786841346d43413144766f454f4a67674e51794b54484b644e51794c656f4d4d4a514d75517076673862526b536351594f4a77427451354b2f5177666b6e5476444246385a39345a3044423252622b344e5354614644736b7a48555043647441782b6156725350496a64464265555267536559434f796963717737546d4e6b704453684a365a79674e4364326d6f3667324a4c53414473776247734e4b4d5a577271444d6b644a2b496f74617775686654654b4c7144516e6c4a2b6a6f66504441734a7241705a424c5054516b2b51513676742f7a324a4377562b67416638305451794c4751332b6b506a4d6b4e4276347a666a55734c6f5a353942422f676f44513549565130366e5441774a48664a6c4e444b734c694d5a624f4a766146676c2f6938446e65455947315a446454724969617135495345386e7736774647356a65484863444f3774614764596a56573233773172734e6f61566d527973523651704950685a53596e692f6e7833764b56385365777a364559586953356b47527a4c7439582f32626d722f7a5a503347496d6f69725961334a704d777a506a457a70494d7a7242466f32444b633758757462765671654c73505a30795148704d566947736f7170797a723961643158704c51417a3755567a74786a496a51496268757a354f75304a6d395061394949596b43376e4564547276617a30347733434e676f667a56725a694154496b4d73773466532f6b66534251686d466164335935375834766b47475173736778563330766c43483938472b6f6a41484d6b4f54653038794a554834766d4b48775874726164473943554550712f595778694d7951694f514e70652f567965674d686539615158534732547031512b3637706857666f6538326765674d716538463150674d666238516f7a5030766b51636e3248793979452f7032376f66656f646e61483348446736512b6b3751597a4f634f745a634453504c4d66332f6967644856544c4e4943477a483862306b5956424b436864384852614b75344538454d2f512f536975575964527a4244504d776657537a44796e616b6d42723373454b4638747930354b454d737844747041745a77314a494550784656447779757a7a7279534d595439377834375469794f4d59645a58343167425930685a622f32344d4c30593262612f526c554977322f5a5a324d38674f4670307573326e4e38615573367a37447652766a59755745345730362f64656e4a4b7a35434c66503961486c72444c61454f5773367936617a374f69766e543448597a6d6874534957594471706633394b51797648514467537a4d755479633369373243774d365343337a4a676255726c35367265636c467257554c747454513146596642344b622b4644675a32464a795a495a5647426663583559727a6c5542724d675959476249506f3252757156794f76514b796c2b53476753453150646c55335652327534527747365765473471786158547173736a3145674c7549333571614c374a2b55302f53426e6773515650444b6c46615747583651537a63366a7744586873794731574738623651526f7165734f773949615a7a5574734a585743776e64766c785750444f33534f6630673956344874654b426f65563655614562704777574a484a5439496279625056424a3930676854345954577559573934385a3930715461434e4938626f44473046523376644a59512b66566c6a61433134304133534844706e56687461336f4d56583570424771344d616f72536b4e6c50493765365377692b4c4b4179465061707a6b457a7251584d6d6d6f5568767a462f6d5055765567423272727336526f367662383062337649724b6d6d612b6879784f36373772533343413537367867365064303152526b527738485a3934624d4b512f51544c717033316a647544506b547457686f3371512b74393835304c626b4f3664506d5371667444415a6b30316255504876575361637a4e68733661616c714862546468732b6d3365684a4838796b4c543048586e735870724b6e5457564e4d30644831374b644d4b366a417a436b4c44305056487530726c494158506d6d702b444a313378332b6f42696c38316c547a592b67365356347142796c38316c5254694f78573276766a4f734e53316d4f43744843374d646e7464746637372b7a36436371696f5978677975324c4e3955677a594c332f2f6249576a58727a71436a386f6d71614268463175514c645430474f697166714f6f786166336570364a6f364a6943525970716b4162596b5162497554744959386d61504c487644744a597369592f4b49714749593633416b52524e495272377770437478376a746c67584c5970365441534643703930367a457846437038306e325151725a33426141375345486275774c51585949436265384b5143633168473376436b446e47735a527150444966554e70576c6e546c632f32616233702f4f376c4430567a6e4b59313561365a35344c2f665374793650617551437a4c615a477a536c4d6b39504f7a5851376c664a505338687143494169434941694349416943494169434941694349416943444a582f4153543958495948427745794141414141456c46546b5375516d4343, 'image/png', '', '', 0, ''),
(150, 'Leena', NULL, 'Ragha', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', 'HOD', '123', NULL, '', '', '', '', 0, ''),
(197, 'Snehal', '', 'Gaikwad', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', NULL, '', '', '', '', 0, ''),
(248, 'Arpita', 'Goutam', 'Palchoudhury', '1967-06-21', 'COMP', 1234567890, '-', '', '@', '2001-09-10', 'Ph.D  ( English Literature)', ' Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(295, 'Vanita', NULL, 'Mane', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', NULL, '', '', '', '', 0, ''),
(330, 'Namita', 'Damodar', 'Pulgam', '1983-09-10', 'COMP', 1234567890, '-', '', '@', '2005-12-23', 'M.E. Computer', 'A.P.', '123', 'bb9cad60', '', '', '', '', 0, ''),
(374, 'Aditi', 'Sunil', 'Chhabria', '1984-07-23', 'COMP', 1234567890, '-', '', '@', '2006-07-17', 'M.E. Computers', 'Assistant Professor', '123', '362394c6', '', '', '', '', 0, ''),
(377, 'Vaishali', 'Satish', 'Jadhav', '1971-09-17', 'COMP', 1234567890, '-', '', '@', '2007-07-13', 'Pursuing Ph.D.', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(381, 'Narendrakumar ', 'Ramchandra', 'Dasre', '1980-08-01', 'COMP', 1234567890, '-', '', '@', '2007-07-23', 'Ph. D.', ' Professor', '123', '3cde8181', '', '', '', '', 0, ''),
(383, 'Shital', 'Sunil', 'Mali', '1979-05-16', 'COMPS', 1234567890, '-', '', '@', '2007-07-09', 'Ph,D, pursing', 'Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(393, 'Dr. Amarsinh', 'V.', 'Vidhate', '1974-05-21', 'COMP', 1234567890, '-', '', '@', '2007-07-17', 'Ph.D.(Computer Engineering), M.Tech. (Computer Eng', 'Professor', '123', 'ZxpgBY', '', '', '', '', 0, ''),
(396, 'Puja', '', 'Padiya', '1979-09-09', 'COMP', 1234567890, '-', '', '@', '2007-01-08', 'Ph.D. Pursuing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(407, 'Rajshree', NULL, 'Shedge', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', NULL, '', '', '', '', 0, ''),
(411, 'TUSHAR ', 'HINDURAO', 'GHORPADE ', '1979-02-03', 'COMP', 1234567890, '-', '', '@', '2008-01-18', 'ME in Computer Engineering', 'Assistant Professor', '123', 'ec71de5a', '', '', '', '', 0, ''),
(419, 'Sheetal', NULL, 'Ahir', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', '2MYHy6', '', '', '', '', 0, ''),
(482, 'Smita', '', 'Patil-Bhoir', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', 'JQ76CN', '', '', '', '', 0, ''),
(526, 'Vilas', 'Janardan', 'Rane', '1986-11-11', 'COMP', 1234567890, '-', '', '@', '2011-02-03', 'M.Sc.', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(528, 'Swarupa', NULL, 'Bodhe', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', NULL, '', '', '', '', 0, ''),
(536, 'nilam', 'sangram', 'patil', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'ME electronics', 'Assistant professor', '123', NULL, '', '', '', '', 0, ''),
(566, 'Pramod', 'Jagannath', 'Bide', '1989-01-25', 'COMP', 1234567890, '-', '', '@', '2012-08-16', 'M.E', 'AP', '123', 'NULL', '', '', '', '', 0, ''),
(570, 'ASHWINI ', 'ANIL', 'RAORANE', '1990-04-23', 'COMP', 1234567890, '-', '', '@', '2012-08-16', 'ME (Electronics)', 'Lecturer', '123', NULL, '', '', '', '', 0, ''),
(576, 'Smita', 'dinesh', 'Bharne', '1982-06-14', 'COMP', 1234567890, '-', '', '@', '2012-09-13', 'M.Tech', 'Assistant Professor', '123', 'a22bc9ae', '', '', '', '', 0, ''),
(583, 'Snehal', NULL, 'Mumbailkar', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', 'RKfwZg', '', '', '', '', 0, ''),
(586, 'Vijaylaxmi', 'S', 'Bittal', '1984-07-31', 'COMP', 1234567890, '-', '', '@', '2013-01-10', 'M.Tech', 'assistant professor', '123', NULL, '', '', '', '', 0, ''),
(587, 'Trupti', 'prashant', 'Patil', '1984-07-08', 'COMP', 1234567890, '-', '', '@', '2013-01-07', 'ME (copmuter)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(593, 'Prathmesh', 'Narayan', 'Gunjgur', '1988-10-18', 'COMP', 1234567890, '-', '', '@', '2013-01-24', 'M.E Computer Engineering', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(601, 'Kriti', '', 'Karnam', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'B.E.,Mtech', 'Assistant Professor', '123', 'e7fa430d', '', '', '', '', 0, ''),
(603, 'Harsha', '', 'Saxena', '1990-11-06', 'COMP', 1234567890, '-', '', '@', '2013-07-01', 'mtech', 'assistant proffesor', '123', '2ff22efa', '', '', '', '', 0, ''),
(609, 'Nazia', '', 'S', '1982-01-02', 'COMP', 1234567890, '-', '', '@', '2013-07-08', 'M.Tech', 'Asst Professor', '123', NULL, '', '', '', '', 0, ''),
(615, 'Shilpa', 'Tushar', 'Bhangale', '1976-07-27', 'CE', 1234567890, '-', '', '@', '2013-07-15', 'MPHIL- SET', 'assistant professor', '123', NULL, '', '', '', '', 0, ''),
(618, 'Rubi', '', 'Mandal', '1986-01-19', 'COMP', 1234567890, '-', '', '@', '2013-07-25', 'Mtech', 'Lecturer', '123', NULL, '', '', '', '', 0, ''),
(627, 'Apurva', 'Swapnil', 'Shinde', '1991-12-18', 'COMP', 1234567890, '-', '', '@', '2013-08-13', 'M.E. (Computers)', 'Assistant Professor', '123', '8023ed41', '', '', '', '', 0, ''),
(631, 'Savita', 'Kiran', 'Sawant', '1983-12-15', 'COMP', 1234567890, '-', '', '@', '2016-01-02', 'M.Tech in Computer Engg', 'Assistant Professor', '123', 'd2367116', '', '', '', '', 0, ''),
(638, 'Ekta', NULL, 'Sarda', '0000-00-00', '', 1234567890, '-', '', '@', '0000-00-00', '', '', '123', NULL, '', '', '', '', 0, ''),
(650, 'Bhavana', 'Bhimsen', 'Turorikar', '1983-07-03', 'COMP', 1234567890, '-', '', '@', '2014-08-07', 'ME(Computer Networks)', 'Assistant Professor', '123', '694a090f', '', '', '', '', 0, ''),
(654, 'MANSI', 'BHUSHAN', 'JAWALE', '1991-10-31', 'COMP', 1234567890, '-', '', '@', '2014-06-15', 'M.A.', 'Lecturer', '123', NULL, '', '', '', '', 0, ''),
(657, 'KHUSHBOO', 'SHIVKUMAR', 'PICHHODE', '1989-12-03', 'COMPS', 1234567890, '-', '', '@', '2014-07-16', 'M.E', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(663, 'Shilpa', 'Vilas', 'Mahagaonkar', '1984-05-24', 'COMP', 1234567890, '-', '', '@', '2014-07-16', 'ME', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(672, 'Pallavi', 'H.', 'Chitte', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.E.Computer Engineering', 'Assistant Professor', '123', '41fd65ae', '', '', '', '', 0, ''),
(677, 'kamlesh', 'lekhraj', 'nenwani', '1987-04-04', 'CE', 1234567890, '-', '', '@', '2014-08-01', 'M.E.', 'Lecturer', '123', NULL, '', '', '', '', 0, ''),
(679, 'Dhanashri', 'Ashok', 'Bhosale', '1989-03-10', 'COMP', 1234567890, '-', '', '@', '2013-02-09', 'ME', 'lecturer', '123', '8aa5381f', '', '', '', '', 0, ''),
(687, 'Sumithra', '', 'T.V', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.TECH', '', '123', NULL, '', '', '', '', 0, ''),
(693, 'vishvas', 'hasuram', 'patil', '1986-01-15', 'COMP', 1234567890, '-', '', '@', '2015-07-01', 'M.sc.', 'Lecturer', '123', '703141b6', '', '', '', '', 0, ''),
(696, 'varsha', 'ramesh', 'patil', '0091-04-29', 'COMP', 1234567890, '-', '', '@', '2015-06-17', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(699, 'Preet Chandan', '', 'Kaur', '1989-02-09', 'COMP', 1234567890, '-', '', '@', '2015-07-15', 'M.E.Computer Engineering', 'Assistant professor', '123', 'CZtPQs', '', '', '', '', 0, ''),
(700, 'Pranali', 'Mohan', 'Yadav', '1990-12-18', 'CE', 1234567890, '-', '', '@', '2015-06-15', 'BE, ME (persuing)', 'Teaching Assistant', '123', NULL, '', '', '', '', 0, ''),
(711, 'PRAMOD ', 'HARIBHAU', 'KACHARE', '1991-04-24', 'COMP', 1234567890, '-', '', '@', '2015-07-07', 'M.Tech.', 'Assistant Professor', '123', '536de3d5', '', '', '', '', 0, ''),
(712, 'DIAMBAR', 'VITTHALBUWA', 'PURI', '1990-09-29', 'COMP', 1234567890, '-', '', '@', '2015-07-07', 'M.Tech.', 'Assistant Professor', '123', '4241a33d', '', '', '', '', 0, ''),
(717, 'SWARALI', 'PRASHANT', 'SHETH', '1985-01-24', 'COMP', 1234567890, '-', '', '@', '2015-07-23', 'M.Tech.', 'Lecturer', '123', 'a862f9af', '', '', '', '', 0, ''),
(719, 'CHANDRAKANT', 'JAGANNATH', 'GAIKWAD', '1972-08-02', 'COMP', 1234567890, '-', '', '@', '2015-08-10', 'Ph.D.', 'Professor', '123', '36ed2611', '', '', '', '', 0, ''),
(721, 'Nivedita', 'Elan', 'Shekhar', '1992-04-28', 'COMPS', 1234567890, '-', '', '@', '2015-08-11', 'M.E.Computer Engineering', 'Assitance Professor', '123', NULL, '', '', '', '', 0, ''),
(726, 'Krupi', 'Pranav', 'Saraf', '1989-07-19', 'COMPS', 1234567890, '-', '', '@', '2016-01-06', 'ME', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(728, 'saguna', 'kailas', 'ingle', '1983-08-05', 'COMP', 1234567890, '-', '', '@', '2016-12-03', 'M.E.(IT)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(752, 'Shilpa', 'Gulabrao', 'Kolte', '1977-06-17', 'COMP', 1234567890, '-', '', '@', '2016-06-22', 'M.E.', 'A.P.', '123', '0bf3ade3', '', '', '', '', 0, ''),
(765, 'Pornima', 'Kailas', 'Gidhe', '1993-04-06', 'COMP', 1234567890, '-', '', '@', '2016-07-12', 'M.E.Computer Engineering', 'Assistant professor', '123', NULL, '', '', '', '', 0, ''),
(767, 'Bijal', 'Chandubhai', 'Panchal', '1989-12-11', 'COMP', 1234567890, '-', '', '@', '2016-07-12', 'M.E', 'Assistant Professor', '123', '3acb890f', '', '', '', '', 0, ''),
(769, 'SAYALI', 'ASHOK', 'SAPKAL', '1989-05-08', 'COMP', 1234567890, '-', '', '@', '2016-07-13', 'M.E', 'Lecturer', '123', NULL, '', '', '', '', 0, ''),
(770, 'Siddhi', 'Nikhil', 'Kadu', '1989-12-01', 'COMP', 1234567890, '-', '', '@', '2016-07-12', 'M.E', 'Assistant Professor', '123', '5b6a61d0', '', '', '', '', 0, ''),
(772, 'SAMEER', 'SHAMRAO', 'CHIKANE', '1993-09-03', 'COMPS', 1234567890, '-', '', '@', '2016-07-13', 'ME', 'ASSISTANT PROFESSOR', '123', NULL, '', '', '', '', 0, ''),
(785, 'Snehal', 'Shashikant', 'Bhoir', '1992-08-15', 'COMP', 1234567890, '-', '', '@', '2016-07-21', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(786, 'JYOTI', 'VINAYAK', 'DEOGIRIKAR', '1994-01-14', 'COMP', 1234567890, '-', '', '@', '2016-08-01', 'ME', 'Assistant professor', '123', NULL, '', '', '', '', 0, ''),
(787, 'SHRADDHA', 'ANANT', 'NARHARI', '1989-07-31', 'COMP', 1234567890, '-', '', '@', '2017-12-15', 'ME', 'Assitant Professor', '123', NULL, '', '', '', '', 0, ''),
(800, 'Prof. Prashant', 's', 'Lokhande', '1974-06-16', 'COMP', 1234567890, '-', '', '@', '2017-01-16', 'ME IT', 'Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(802, 'PAYAL', 'FATEHLAL', 'SANCHETI', '1994-04-02', 'COMP', 1234567890, '-', '', '@', '2017-01-23', 'B.E', 'LAB INSTRUCTOR', '123', NULL, '', '', '', '', 0, ''),
(803, 'Snehal', 'Suresh', 'Nikalje', '1992-10-27', 'COMP', 1234567890, '-', '', '@', '2017-02-01', 'BE', 'Lab Instructor', '123', NULL, '', '', '', '', 0, ''),
(804, 'roshni', 'satish', 'singh', '1993-06-18', 'COMP', 1234567890, '-', '', '@', '2017-02-01', 'BE', 'lab instructor', '123', NULL, '', '', '', '', 0, ''),
(806, 'Sathya', ' ', 'Arumugam', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'Ph.D', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(807, 'vishwanath', 'subhaschandra', 'chikkareddi', '1988-02-24', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.TECH( COMPUTER SCIENCE AND ENGG), PhD(pursuing)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(811, 'Rashmi', 'Amol', 'Dhumal', '0000-00-00', 'COMP', 1234567890, '-', 'Address', '@', '2017-02-01', 'M.E.Computer Engineering', 'Associate Professor', '123', NULL, 0x89504e470d0a1a0a0000000d49484452000000d7000000d70803000000bea3348700000300504c5445ffffffa6867b723d2d763f2eb65e3fc06342bb6040ac593c8b4833995037be6141a3543a8546327a4738b89e96f6f3f2af9289b15b3dd2c2bdcab6b08f4b348c6154e4dad7ede6e3934c35b85f3fa8573b753e2d804430c1aaa3b35c3d79402ea15339956d61874732b95f40af5a3c964e367b412fa1776b9d5238844531835547dbceca956658a67b6db89083d6ada2f6d8cfffe3dae6c2b7dcb9aec3998ea16f63844f40b0847c8c5a4beed0c5cca499ac7e71e7c9b9fcdcd3fedfd7f9d5cdf9d6cd936254b5887bf8d3ca9c6a5defc9c0fad8cffcded5be9185f6cdc5f3c7c0ecb9b3e7aba6efc0b9de9793e9b2acd5827ece7472d17a78da8f8cdf9e9ad78885e4a49fd88a86e2a09becb6b0d37f7deebcb5d07977f7d0c8f1c1b9d58582f5cdc4f6e5e4e0a8a6b76a63fbd9d1a0584fda9695f4dedad17d79875147be7b79f8edecfee2d9e9c2c1c5716dac625be5a9a3855b47795f3f654d333d281c6c5439725a3c513927c685845d402fd88e8b92867e9d9291fdf7f7e6b9b8db918deccbcaaa9d9d4a34258e7c6e7e6443efd5d17965518e4e42bbb3afd8d3d1e3b0afc5bcb7856a47d2c8c5a2876beddbd6f2f1f0c68981ffede7fff2edffe8e1e3d8d4f1c3bbe8afa9f4cac2cd7b75d39684fecfc6fdc0b6fcaea5fcb8affbaaa0fb9d92fdc7befed5ccfba59bfcb3a9fba196fcbfb8e88e85ee948ade877fdfb1a0c57052a95f46e4eef2c7dee575acbcb1c9d46ca9ba7db5c5c1e9f5c7eef9cba1a48ec2d1a7a7ae8a9ba785bac9dce9edd1e0e5bae5f182bac9b5e1ed71adbd94c6d5f5f9fa99cbd9b0dce976b1c1c3c3c4a3c9d3a5d5e297b4c1abd8e588bece9ecfddeff4f6afc1c67eb1c0a3bdc6c3ebf687b3c0bac8cb70acbdbed9e0c6edf87fb7c77ab4c4b5d4dcc4d0d5678da32a607e0c4a6d1b5677bde6f297cad85681982e6c8a85a4b63d6e8a0e537e10598915649d176ba91b75bb4690b9186fb1579cba0c4e7460a0b8789aac13629890b7c22c80babfe8f31a72b7be888b125e931567a32e78a554596e244f6d14639c4288ac66a4b85596af3988ba2376b1b8406fad00001d04494441547801c498d1729b301045e38b568b0027554352100a496c4371faffffd76ac03520b0336e21e7d17ed199bbbaabe1ee663608048d901c42d16d4811514b9c00dbfb87bb2fe11b024d23228e1148fa77d8997dff0aadc7092dd29cfa71dd6ef6f4bcbad68f2d321a93b3296e8dcbc758e0656daf2780fd29e40c29fd3fd4ea91dd03a03125f32b04fd47b4c5f671cd2904904cc4f586903e813c135d8f6cc5597c478a7022ae1d0c5d21da97ec3894622fe93a7180cdc36a5d9828283f2e7e0de83279271557314bfa14bac6cf95c4b6e0ccf3ca999bcbad11b552a63a5a439f475abcaf22768f90fc3d75600e11d32cddfc5547a49aaee089fd5c41eb610be1bcfc31ac2167ad0eadd52b52a6abf8629b35e24a497a5e82d9c05eb66a2cacb3ba45ec7e95b86405e5b561f79b87d4ec303b40d16de800df57888b6483cc1bc31d78be2d5815b07ada5b949acf685dfa1bc0e0e361f9b848c6a3bd2c5dcb837cf6dc12024a4e58e79a27d1651e0d17f466f1b89c0682f1f572aa7361c53502431eb2649f83d6a510f9f82d52e3d7925e1fd0eebc6c2146d7cb5fd59473a7f50aab27db641891c825cdc1f858f6a9410eb7abbcedc5decbaac5d448e45c94ddabca33f208977c293e758767357c5b30b3859c3ef85b8dc40fab27d5bb497c662c2ab05dac3a9e5177c5cba847b5817aa875386915b0d2affe137adf5dd026496a0c089234eee9a5cb2db10de2534f1c61fcda98d64ae5fc08e644a45562d152dbbfa0c366469e025bace403790aa8423ab8490dd4609f759802e9bc5519916e6a0028ec4e356f3cc0c4559604ad9b7081e17119af97f319dd8145bf3632c4d39561e7eb622f94754e7f9406b538e87869320b2089dd725eb2e4bb83a750fd7442f0b4969c5b58074e9dd4b1eafd24244dd0869a881acfcbb486a513a2ffed291fd561ce1dbb81563e58582e2ad8caf44da38bdf3a821a9b655aa3e937e00e15b5b8762bb03fffd7a110889935ec022832c323ca0b66a6c632cdb185ec6fac1805efa3cec3c0f25eba27acd6bdcee0a972372a3d02858bcaa79434870cb144733c221c7fa609993b8f06471ed258386c92ba56204724755339270045cc33e8dfc4da8772da4a1406e0e45759409673f1281346daa105ad754d151ddcbbdfff89024b59a4f4f8ecf23f01dfcc72e614fd5c16a041ef3a4798ef74b1afcc153413f54beb7141007ea7e3e307f1bbbd7e172264f9a80ee4272e1b20ef393ec1ca4f2601f89651c377f17b83344d87a3f144e930edcc7aa37495c11c5191fd3caab7ca84e38cfe19064eae250c15a7d3ebf5660ad0998dd25f673001441cfe42f6e33de97ffa9ea12a824dc84cbbfdf4ef33f601882039b0150395a4e57eef62f8aced192a97077f90fe7b06e3397e95a8f0d5c90720769da1f09dab805efabe2c96eaf1cabfdfa4371ec92c271d202ae65d27686b6ae5952b8c30483566047c376757a8a7cb0bd89b2e54d58d00dd54afabc6f3bb398fb8707cd98e8d76ddddf7ba352cb4ba86e0ac1241b04ce1686819516c2fd9f5b6313aa9dea026b708f01c155c68e9796db6df04f818e97661bb7a0cb415c40bb06d9b51639b6798609e6a8e8ffdaad85505917406039cadabc93713f2ff58ea7675e0edd6aadc56855ec722ca613192f573f4304df5bb92fddc2d3f17215f72b451d8af326a962da7cab176d70c4535796f61459c9296c3e27eee8ac14316aa164a5f7a08d6035e4bc1a85da7f0d4a2964384012e53ede9a3c96cb9ee51305ad74735d1cbd72e225ce9772dc05b6a87d08470a95d0de5aa4a18ceaf53fd01aa6aed23b75bc4aecf700f2f06610dfd1b03ae4e7629c95170186983086457d4350c530399a1eea8d8618484b64104b2cb5ce0d684ab9fdd3d943c58093e92bad8e136b78ef99d09d700c2c9248685535257e5f02126b8bf4e4d649e3f820a10bbacc3a36b804b33ae65fecac4485d5f7038049559010f37465c0358f90507a5ab0d01e12a1757655e732608b32e8fd6757270ee6aa932af3dcbfccd9d11bb5c0be55ddd08e13fa686e28369753921f8aece17f1746bcab5cc1d72436a975340b07d864d8cef4cb9aea7106e66437f46ecaa0a789b434a846773ae910f5e3e74b5895d252f5ac3ca2cc6f9a339d7e33d609535ba9c563d42623356c3e8f1c594eb75e53a5c2156e85d365bc19aeb26eaf1f1da94eb66e54a2a80a7f66cd4ae129330819169178b81f2cef581dae554250c4f8fc65d2c06d7e2c2b6935fc39ecdbbd4c7f9207695b71f01308ec763b898e0f4778736b66787d6f15c5e644b5783d6c5a5cb3d9e8b55eae4f7af4f00eced9d08c772b14a69ed22fdf40bfb7b68f5782ecf56e3179d4b389be0deb0eb69e3faeadaad925324769d081425ab6cdcf58078c5929fedbbaa9da7097888cd6794ec08ae40ba747cbfe1c339d9acda123cac5d2fc65d5aceb00d382c4228fbe9f1da7567da55dded0f3f10bbdc585eaf0586865d6fd2653b32a076d92e6b829743dc3f1a767da3e5bcbbd34896388acb3af01c376736e7c8b6737803b25b691a1828064642394bce3632382abc75da1c243d367cdaedae66248c850f137cffb54787cbf4fcba28aa49c0e75b5e5d21cfb33d0fb1bdf495611c12ad5ea690a4339ab410267b9c7496b560582db1630821320db242623017437ac55dafd0c76d0eca6e973af70974bb2429a63172797c92825d9486f4e28c0c5aacd5146d7dbd296dec12ee4031b5a3d79bb02b64afcf54cd2bc7783fe51aa65f74019f46c9b60b8859d64a01d1a67f6a0fa993572fbceb7a85bb2d53e1bb471f6280134d5ea2841d60b127c862071432da8bd3385134f4313d777ea38b3e05c1b657063bc131d893a40bd801b6bcb4afd92bfcb14ad90888ea318a042792868d8ac1a19c3025a25c2e3b439241c9306e51643b623689a92b2c75a9fc1323a66264c81ea55b66b26ececfc07bae573cec132aeafb1ae5f5329ce2c45849bd2247986d909e84606dc4ca1ab31d654ba909f2fa8cbcc2dfbe6863a6076c8f2ea3b818c6516bdcec00d6860e2ecd4c208e707e1a3e6e7845c33ea04283295d745ee334974c4e0c67e856f9f71a333b60c41a1dd7855434fced4b0f487d46eda846bd6195fb4c339817373b2125acc923f079c3ebcd307fd9616a1a1167e065bd10c94b703edba1d8186bc3acd909fd9c0bda98c96b0fcca1647e2a129c854554a8c64d547b11ddcd0b69bc3c640d36b054ae09d385b336241f4f0982f2b099d924e7bc17a0e1f5b2f6c2c585e05ef388962cdb8e813e0b700e5caf7e9310197b6278b095d1092ba35f196b478a1e2067c876b705cdf0a05316ae16535efc00ecd35efbe1bc7c2916e27c60ad0b883926f91a6274c3f66f6fccfd233ba43321e40d1cd4817991b5e3e258ce961a56b915b993d15f1e33a8dca0a0272ff5218949728817827a5dc282a1671c3fd3a300db5e2c27df5a223344eb102f5f51cccc5c9eb072ea5e4c5ced676d11a5d25066dc2c3bb6bb7e9ded7538c6533c6336bc3e8597b51700531805bc14d4ab8836531ca649d837b6bdfa52aa306f30513c72ed5a65e93a51ad556f1c9c1e75f86cbff9142d27c5d8a495bf79eedab56bb72470ae6766a6517fdcb6ed925a27461f970cc0e7e4f5823b536c6331f8e395691a55dabbed95ccca6a3d8f92db97e4aab853ad55ae6b6e546ab7ee469657564df67452c5f9b5c8ff6e546bb7f485df556a4bf716566e23e108914b757349023ea17a3ee69e44c8047fc026c84b720ca2aa41bfe56534eed6840edd7bd5daaebbdf69affbb5a5bb2a499decd3b5261ec8ff75f756b546d749ee576a0fd533bd3281449a710280bcf6c0d7aed74450af45e56538888f6890e29d262f26f2b8b8b21c21be5faa3d17b9735db174bf72eb07fd70a6597bd23fd2a53fddaafefccb5dd7ab7a47a7d5bcaa7ae5d59c3801efbd439f52e6b09021afc5e0ebd062ac888873d4187d63fbf96212b1b5913c57abddfbf516ada6fbf72b0f239adf4cd68eec5a4453ad1e8cfcae1fccfb95a59fdc6d73b5986214f3141c7b5ea098bf828852ccc2f9e05e366358c0d53f2838a2e4d5dce158df88103f552bf77fae2e2d2d49adaafb296999b5452d5ff74e57966ec8f7a3f6f3f61bb2bcce14da4bb5a45ea098ff63151119b3837b4dabbf53b2d1ead51d7af222d8169beb1bcb52ec7ee5fefd9f7f965af7ffaf5fdbc6265324d98eac2fbb4da1aaba5022af7c8dae535284c109d592a298e7ab68974c86381d7cff423395cae228d7c1f1f98127bc5c4eeefa95787e6a43a29d08ce7666736399dc7e7958a9dc97d47e5dd858a7eb5abc548b43c5fc018e984d091383ef5f0b886943755a440f0507d5874492754aca644f67f6bfc449d64a37d71c83187d35308e05299b460c5e20ea8ff20e8e9c853d8f79f5b34e49d6fb983f5caf1ef84cc5fce93fd161146361d4bd79157c584e50706c7b19ac63cc7a92f9826bd47745aa9a3feba0608ce5293602b282a896113a87548f234ad31b84877b60d439f3c345de8006cef743c241f52e21ae04f79a42aa38ec2c573f6116a3fe86e7167ddddf0d4bf206bdeae3df6e38ecd8babf371509ce222d44a7cecfc09be4e5c23ae7af7ab7bfa12f97639f50cc3b0e2dc3c548084cd342cc09ae82631f1cf1e3c5eb93fe86f45cce003ddae91c2dc3e930bc1ed04214265733c47b20c15d925ebceacc07b3ad5e938296e18330bc9669210ad69d68f1eaf7f002eb75c36fcc130794d7319e14b40c9723212d44c10cd67d585652d406f01ef4a97a7d967927c55d746e1c4a3226425a86547214e9cd03a0f2d047d08ff9f3e22e87f5e0f480f42a52b1110a1388d44201a0fbe523e805ad43df31aff7af7dd0c39881381109894b886935190d71f2f21e88fd75ca0ddf5e14c5aa3bcf58bab9e60dde6b2b492f991b8f7b5df4b00cff0a14f3bae68ec32156a21e5b4814d5169674bdbc077dbdee6b5feee32e00519a89f926856e2b2aa42d2ca7bd5e86435e0391d2502483c47ce330470c8ed2e6151e8b68b38b6a917f0c09af5e941a2916240e3fd5e3aa51f8aad4a6860ad20d505eaf377bf5757cbbeafd41bc7a55c5ad8033b47985c71aa2503f1b21bd06bc067d526a9981aaf901f75768e158a8cb903eaca4d521cee86770d46bd073e9351ba8ea3d016f36ceeacd212e47c244d5be00d1373e83396f81487b97606cd3bf97aadf8897e10ade8e84ed751276cb23df706cdc9b9729bdc6185bf71f87a7a9b142fb32350ec364028baa46eb8abd15ffd35320f6d72506dbdcf45ff59e007788e8ebd0bde6d1d65e7158f5108874bbd2ab82adfbf072d3d0fde92ad90778765eff81192f8128c3706434cfc8cb671cba67b35f8623ac803f86eb55c492f28ac6f6c0dca48740ecaed72db402c5c659b9bdb85fea51272a4c5610b5d73e3856f650f9ca902f619e0569029c8117f4ed3af56cbce81b4b750ad1f21088d2cbd91afe2ada45c37b1c1e8346187efb0cbc2e21a68e41947e0febbc874054c5c62a62c9a480cbd859ef5514ecd6f3edc7a907b016aed702a25067f5df89bd2e1f300f8168fc551fc9d3c49dcfd838a48ba84f2041030e0be17a2d233a2a98e4d9517854e62e9d94e97d93f5e228e60d9fb19120af2e38e67ee1102eb731ff2dd02f7d41bce8f523f3ac58c58ccfd8d05efbe06b9adb2886ed750931771cf6c8072c0e7f73ef3dc46cc1f057452520be978e5930960bfdf1a2ee28fe039fd00fb45f99f4d1434ca5fc541be4d5a5be4b39acb42622a13325c5e2d0f5a1f49afbd343c5e1936493576caff49a41c4c5a948f8aca9198e37a3cacbf25071f8c468f67a87bcf42a0c9f0bd347e503a6bc463df6a482f4a27aa5576cef1e383aff2f6f67c11b370cc5f1c8922f65661833b368ccbcb354664875515938669e1886613a1c7cc5d94e76c9d06975de6fd09ca8fa2b7efc4e9e9a13385103ca2b70e63b83c6566160ab332f7f7d7e4d25d7bbcdea40f946ec0f67514f1899b99a1766e208a8c4c24035d7eb38c5351d003c42432b31304951354df79f0dd3d02d7b25addef7336033d6b50534f0bc14b6422cc727424663710dccd61d9362588aa2b88e2429bae7e84aec56efc3696260e2668e1765ed009564b1b25198423db10cccb63cf3178cb42459f8a7e75a17e298d704423bc8f71dd62cd5f27b5d5b607d25d841fada438c0876ec1a16e598ffc6519533c71803f3f7e80efebde47ba31caf19ed20deb08eb671861929e2bb3b992c25f99192340959193fcab95c2e4bc924fb6cc631ecc741ab9a58184c099ca8ee82edb8ac6ca565e675d6413cb69ca3641d82995ccc99a69c249f3c2c28e793660d602f9361720db1b0c4736edeb01caec1c730285b2e335329d5c4b8691f07bf383983cd8b6298149de9e5af93464d2d001d62e220b77328c24d6da02e1844f4b06b15e2359c7480eb65b2a6461f752f90c5f48613fe146f3d59a0cf73cb362014370461640e8d14937ae9effe9008d3d3017af0a4993e0a632d0ad3e78f4f6a401b475d07e99a79e06edfb05f18e602d160603d215af0b20c9b1d942f8fc873c12d8c22e4a6eb39d5157cb87f07bd8f13c2680473345f9aee1aa68fa75f606fb14d8ca30521d0b5869faefb10e26e546d383a1a8bd30d905cf3373c578a93433d44778af9f6467eba8402dcb419ec0cebb191b158c9af64b99e1941b3a4584b87d78b75641d5807e10181173d704d47677764383b3211b7cd612baa8fa2c46d6cf4d13a32bc0ce4b9c0d3c0dab64674a2a189f02496b8505e0e17505ae93a80c00f19ae118fd4860677a728ec64a90bafe548cbba1bb441f849e047aa502176d408a1b071343e1106b112307ff247ba1b9908ed001dc4bcb80a4b88eb76869fe7643434169a58c9da1aefa3fb0cdd64e05110b832f729b1e9732ad27d1b2f7ac5e3a532ae5f64edac061db09012383377606ff4487c994523837eaf7ebe44c6f58b2c009a38181783afdfbedd4241e67172be34b27a88ac901d75f939e13ff39d99bbd08ddc8ac200fc0a7d8f158da01c9046728a53dddd701c282e85c42a3393a81af52192e9b14f1dba637be36986c2cc4ce5f60d7a4f3d736d2b8cde5fb4e8cc37e7dedf10f809341d7f66acf3329e4db5ca6951c187996e30744482c5e485e245ab3046a7e39059342dcad702d622611760d1a52eebe97a2858941ec69a25ec62ac1f7b01fafa43640d782c0e3deac560ad4a54a4a99eb1dea46958603f088bd5e5b1d0800f9ad4c289acf4fce7e3b8cade67bd16a23e087d21c1ba1296647100f15e37b3faf87961c46a799f7a95f5028a98565f28ac077d9689deb8e05bf1ba622aab3cd752a4bd456bb0590c9cbd033a8a38d01d86cb0047b24c48c12f85ed51d342b073b0e2ee9b422e079123a6ec10584390461903b89589525a6a587dc35961c46aa9646a3c4a618f095756b86c08a3e16d94d12127684fc89bdcd8d960c46a52690d165d69278f886918befecec8a1973ce4d18191a89b06f7025f39cb35618cb16a5abf94b7ee412ee76eb0feebee8cd1948e5e34fa5d32e10e8cea438cecb9a8d27adaef34ac53597d5dd44d59eb2d06c0c3710dc92aa47030747a1563d1621aeae9d6a5ec34b0126a7756591cd66bad915b8fc02086e1ea929de16610b234bd1cdc90b0966a46fba5e4145b8bfe25350da59cce7c5f40124370758f027de0c032e4e3d41ed6c46d45ca9eab61ace639e584ad55d6a932b5533e35a6014f82a65fbfab7f14a60c3030b80cc9859885b14845b994d5350b59c371d71ed16a957ed88b372c9131efe00e4cf75f93ca8029dbcc0797611ad27c0629364c465a4ba232f17a260ae1a85d4625c86252456b965883bed307c5b8fa0be021809cc3b90d1c7dc94d718e6e34f8321290d5d50859e58b0751652fbdc5982a6755462a6205de326d366df7cd5df96a9c871ca7f459e88fd5275dba96f82142b232af1a692a372b9f7fd6ffb35f5fa862c2dbd9e29b15e5f684e5a02fc959ce79faaa5dc35417e49a4d06b7972d5d685a042399b7cf5a3a6b0a3f42d5cd4d46a858b103958ae216fc7e2265a23f96412e18b8ea27341c67c815ac8d2ca4a54bc288f69a8f168f353319b5a6ba49ae3f6ff77d399ad4d11f0e797201cc5f256b615470c6c90583c1b397295d12e6a6544e8dd25088dc538a44512613469085c694492e4842dfd55c280e641697965720edbad290455f6ce07c150fc2a4ad44293f10a5a4c26f6a6d8d64208dc13860739135709c54a2fbd2ab3db3befc7f3680175d0737370660b010395b4abf1ff51a431e668e536c40d47360b7dd7ef7f206b5b945a4ed9dddbdfd5f015d571ecc635dc83598a4219c9a55b290d0f84196597099b48b2d78ecce1b5fbd7c19aacc12a176767fdba7fcae155c36e0b12eaa7b181317eaa7657d9a011b0fb06873b92e8b56284fc23b4ce48d57da2e34b7e1cd95e5e53f76f6f68bf993da7de6142e8a0113b75f3bd5c0a807ad2c1e3ead551ce7b3737390750beaaf7b8cc29a5f693befe0369785eaef7d5fdc163cc4456d3c83c1601e123794d3a86e8f80c60fb26639b1c461f9946da62c1d454c0d3eacac626ede7aef1cb4fe2da192a30abae46959ba046c1c0fbcb4148c949ecc5a48d0710fb06c62e96e2be6791a0ca4e836fc733bf27c75d156f9c119eb422c419a953fff421e45560fb80c9803e3a08b3a2c73fb04d57f9d9c0772a34814860fb457d97c8fbdc7e6ade473789ee96252032aa00a03e35cc8a99dca22484613d022e7c013b8ab0ddd4edfe4287ffdbff7ab35c1735fbb61e19184681535c19b9406409beeb7e6ffc0a2f9e1c75f6bb5df5eb25abb2c6769dbab6ef7a2e36583d9c7f3ec125acbf84628f96f05ac9074b5de3bb4e0076560dbfba0f3d3c24a42f09289993dbf450ed960c212b99726f1c2f33434d2011762499dd50a802ef955665825c5a170402bfa96b0b973fc4501be53ffff17778e179f756162f9288bcb4c64343d0593d445dfd73b5e3404cb9146066bffc94b700dc090fe12dafadd1df40a853b8e5507867cf7f6ec9c213bcfb868edb2ca29190852697271710904892a2f5bf2c8fe0684441ad9fc5277cbd62b2bdd244fa35901454cd085079c1dd53fef0e7751298f9369ce8e9f7c31b3c27274c9052904bd104a37da5edeec91fb10684482e72ecf3d8c6a651edc5023cfa1878786f45dc175fd9fb7870cc99b4bc364c0760531655c15b3bc26b594e8b54fc16b7bf18b812f3df39eb5c823fb6f7d1920f0c9f37040a73507c26b74fd0a9d0665e5c489b9983aae4956518e322e855cbbdccb693d367a21fe26f4880caacfafa3d91cce9fe129a3525ca656356c444fe892a3389970252ef6e88e1dd771a5699a4d2f442fa3397db517350358301566802ce80a298516f8a8858749378423334eb88e2876fc88d847c6f0242698712af35aa540e45e88b7d1bd3e98be1db8ae61fb5265359e05e0d1fda86eabf786f023f0ada3853bf659edf599c5b3b6b848f1338171534891c26bbf894c87058770a5681696e31005514454e8707d08bd82cc28e88125fc983bccd22fd3d628a68c6d2bbdf6d834ab48d06b227af11ca821f52251519b852ed87cd8fc9e6af03493445a51a8bc4c030e738643d29ca60f62575d0d12d924ee3c5ef29814ea090b96f027c6fd8e5748eb2d20da7e1399cb975c73f4839076d6cdd3754c78952808adaba33c2e875c669f6e08a153b8e96a6160ea2b54dd1a95c843af53de1685dd3a78682edf483453f3fb10342e784109834dc30e9d063b3000fa98f163619ddce294dd80c97f9bf7e2301be34c42cede286ebc8c8db2660027a8277869f71e189c48edb54f1a568b4a2ddce4c318a1a913067d6870fbbaff9895d6837113c737f079443df13c7dde1c22b1aa3916d9a01ec38a51f3257f5a96c2bd9a7c786a9e6b795cac8bbaee6deb6ad87ad187149ee885cdd165ca8e5563f825bb9fbff4a197a1f6d229d2da95d5c27b6f987c165b56ca1af45c38a9a348937290039759350322d01be358a5adaa67ecd31363581787f0f415a8bd209427b06ad695810152ce7eb14a54380b707d5a969510ab412f3e8844c0846fd5a9630a2203f982bd6179dd1a48f2c06b6c3fe2053dbe606d4c8d346635ab9894da6a7cc4eec90765920a5e8547441686d55b15b79ec24af982ed601bf21a9c8885089edaebf2125c8fd288bc1e6e853a65998e3afb45563d22125e2595d7f4590bb6c7523e86b3e2988a35af0286a36f63e8fb98ccabb12bab1baec3112fd266ebe9e5b4f28a3b0ba61c43de16d3075e54ed85d534bc8200d55f85e6b930bcc9249ca8eb2ab8aebcf2ce826dcbc630e6eb854cd08bd7bc12abaedc9b31b8fa6bd4a86dd51df8322f0f928b924ddb0bc6ffa8e30ed91d7368b145053e0000000049454e44ae426082, '', '', '', 0, ''),
(812, 'Tabassum', 'Altaf', 'Maktum', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.E.Computer Engineering', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(817, 'PRACHI', 'DEEPAK', 'JUNWALE', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.TECH( COMPUTER SCIENCE AND ENGG)', 'ASSISTANT PROFESSOR', '123', NULL, '', '', '', '', 0, ''),
(821, 'NEERAJ', 'KUMAR', 'SHARMA', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'PhD', 'PROFESSOR', '123', NULL, '', '', '', '', 0, ''),
(826, 'Ida', 'Hector', 'Lionel', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.Tech(Information Technology)', 'Assistant Professor', '123', 'NULL', '', '', '', '', 0, ''),
(827, 'PRIYANKA', 'RAMRAO', 'GUTTE', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.Tech(Control system)', 'Asst. Professor', '123', NULL, '', '', '', '', 0, ''),
(829, 'Himani', 'Mohan', 'Jawale', '0000-00-00', 'COMP', 1234567890, '-', '', '@', '0000-00-00', 'M.TECH( COMPUTER ENGG)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(840, 'Dr. Dhiraj', 'B', 'Magare', '1981-02-02', 'COMP', 1234567890, '-', '', '@', '2017-11-20', 'Doctor', 'Associate Professor', '123', NULL, '', '', '', '', 0, ''),
(842, 'Suchita', 'Suresh', 'Dange', '1993-04-26', 'COMP', 1234567890, '-', '', '@', '2017-12-04', 'M.TECH( COMPUTER ENGG)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(848, 'Rohini', 'Lakhanlal', 'Damahe', '1988-02-03', 'COMP', 1234567890, '-', '', '@', '2017-11-12', 'ME(Computer Engineering)', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(858, 'SHITAL', 'HARIBHAU', 'GADE', '1983-06-06', 'COMP', 1234567890, '-', '', '@', '2018-01-02', 'M.E.Computer Engineering', 'ASSISTANT PROFESSOR', '123', NULL, '', '', '', '', 0, ''),
(874, 'AMIT', 'KAILASH', 'BARVE', '1985-08-26', 'COMP', 1234567890, '-', '', '@', '2018-02-16', 'Phd', 'Assiciate Professor', '123', NULL, '', '', '', '', 0, ''),
(876, 'BHARTI', 'VISHANDAS', 'NATHWANI', '1984-07-27', 'COMPS', 1234567890, '-', '', '@', '2018-02-20', 'Ph.D.', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(878, 'Bharti', 'A', 'Joshi', '1970-04-25', 'COMPS', 1234567890, '-', '', '@', '2018-03-01', 'Phd', 'Professor', '123', 'bHhwYV', '', '', '', '', 0, ''),
(888, 'Dr Dhananjay', 'Manohar', 'Dakhane', '1972-04-06', 'COMP', 1234567890, '-', '', '@', '1972-04-06', 'PhD', 'Professor', '123', 'hDvgGJ', '', '', '', '', 0, ''),
(892, 'Dr. Yogita ', 'Dhanraj', 'Mistry', '1979-07-26', 'COMP', 1234567890, '-', '', '@', '2018-12-17', 'Ph. D.', 'Associate Professor', '123', 'euFpRr', '', '', '', '', 0, ''),
(894, 'B', 'J', 'Gorad', '1988-04-04', 'COMP', 1234567890, '-', '', '@', '2018-12-24', 'M.Tech CST,  PhD Pursuing', 'Assistant Professor', '123', NULL, '', '', '', '', 0, ''),
(896, 'SANGITA', 'SANTOSH', 'CHAUDHARI', '1977-06-10', 'COMP', 1234567890, '-', '', '@', '2019-01-01', 'PhD', 'professor', '123', '4GoHWM', '', '', '', '', 0, ''),
(897, 'R', 'D', 'Suryawanshi', '1986-05-12', 'COMP', 1234567890, '-', '', '@', '2019-01-01', 'Msc, Net,Phd Persuing', 'Assistant Professor', '123', 'D7qHRm', '', '', '', '', 0, ''),
(898, 'vaibhav', 'Eknath', 'Narawade', '1977-08-08', 'COMP', 1234567890, '-', '', '@', '2019-01-03', 'PhD Computer Enggineering', 'Professor', '123', 'uWzgp2', '', '', '', '', 0, ''),
(999, 'a', 'a', 'a', '0000-00-00', 'INSTR', 1234567890, '-', '', '@', '0000-00-00', 'a', 'a', '123', 'dd867ff4', '', '', '', '', 0, ''),
(1000, 'sf', 'f', 'h', '2016-01-07', 'CE', 1234567890, '-', '', '@', '2016-01-12', 'ME pursuing', 'ap', '123', '1225dbb4', '', '', '', '', 0, '');
INSERT INTO `faculty` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `p_address`, `r_address`, `Email`, `Doj`, `Qualification`, `Desig`, `Password`, `OTP`, `profile_photo`, `image_type`, `aadhar_card`, `pan_card`, `bank_acc_no`, `bank_ifsc_code`) VALUES
(1090, 'a', 's', 'd', '0000-00-00', '', 1231231231, 'asdasdasdasdasdasd', 'asdasdasdasdasdasd', 'sd@asd', '2021-09-03', '', '', '123', NULL, 0x6956424f5277304b47676f414141414e5355684555674141415067414141426643415941414144467941706441414141475852465748525462325a30643246795a5142425a4739695a53424a6257466e5a564a6c5957523563636c6c5041414141794670564668305745314d4f6d4e76625335685a4739695a53353462584141414141414144772f654842685932746c644342695a576470626a30693737752f496942705a443069567a564e4d4531775132566f61556836636d5654656b355559337072597a6c6b496a382b494478344f6e68746347316c6447456765473173626e4d366544306959575276596d5536626e4d366257563059533869494867366547317764477339496b466b62324a6c4946684e5543424462334a6c494455754e53316a4d444530494463354c6a45314d5451344d5377674d6a41784d7938774d7938784d7930784d6a6f774f546f784e5341674943416749434167496a346750484a6b5a6a70535245596765473173626e4d36636d526d50534a6f644852774f693876643364334c6e637a4c6d39795a7938784f546b354c7a41794c7a49794c584a6b5a69317a6557353059586774626e4d6a496a346750484a6b5a6a70455a584e6a636d6c7764476c76626942795a47593659574a76645851394969496765473173626e4d366547317750534a6f644852774f693876626e4d7559575276596d5575593239744c336868634338784c6a41764969423462577875637a70346258424e545430696148523063446f764c32357a4c6d466b62324a6c4c6d4e7662533934595841764d5334774c3231744c79496765473173626e4d36633352535a575939496d6830644841364c793975637935685a4739695a53356a62323076654746774c7a45754d43397a56486c775a5339535a584e7664584a6a5a564a6c5a694d694948687463447044636d566864473979564739766244306951575276596d5567554768766447397a6147397749454e44494368586157356b6233647a4b53496765473177545530365357357a644746755932564a52443069654731774c6d6c705a4470464e7a6b7a4e6a56454e7a4d354f4441784d55553051554530517a67774d444e474d5467794f5449774d79496765473177545530365247396a6457316c626e524a52443069654731774c6d52705a4470464e7a6b7a4e6a56454f444d354f4441784d55553051554530517a67774d444e474d5467794f5449774d79492b494478346258424e545470455a584a70646d566b526e4a766253427a64464a6c5a6a7070626e4e305957356a5a556c4550534a346258417561576c6b4f6b55334f544d324e5551314d7a6b344d44457852545242515452444f4441774d3059784f4449354d6a417a4969427a64464a6c5a6a706b62324e316257567564456c4550534a34625841755a476c6b4f6b55334f544d324e5551324d7a6b344d44457852545242515452444f4441774d3059784f4449354d6a417a4969382b49447776636d526d4f6b526c63324e796158423061573975506941384c334a6b5a6a70535245592b4944777665447034625842745a585268506941385033687759574e725a5851675a57356b50534a79496a382b4b64556c6c4141414969424a52454655654e727358516563464d585372393037777433426b535548455644687153416734414e455248794b6d4642555449414a6c61655945796f6d486d626b47586e71427967714b4169595552517a4753524956704363387955756650576672626e746e5a764e733374377431322f58392f4f546571656d66353368613675496b6f514f713570737a5a633769644e6d6a5135527534456173736f4c673879794776707a364a4a557a6b434f494e3649502b637a3655616c3748386634722b4e4a6f3052552b7555675a3252663642574437434d7468387765584739527333624e5766534a4f6d4d675a77426e5a7a2f726d55793141756a6247764a7156516e6149555775334b4d302f4c346649326c2f65357a474777462b725070556c544441444f674b7a43503764774763596c6e3874364b5a7535374f5379693874754c67566344696d5856754a5367387378584a70784f5a464c42793474315075334b6170452f79724d6f4452757a6878584e7633677a71616a564b5365736f664c6643354c75667a4a5a5175586656794f4b4f656b5358305a584f704a6e665735594441356a6b736a4c684f356a4f5442346d2f393654556c5063415a324e5835353159756433467831506956796c57334b7170416e5976537145465271732b787731524938397735744d795679364f4634347a374b4a6478584a356c6f4b2f54585542543067476367563162784764773747726d6961325a30395a6c4d667141713544324d3750657a372f5a444d417358323572432b5a4d5672467238725631575252767a494275797543754549494173635756543573596b31763564792f5874633956514c6c42367176493936334339565574636c4e312f6b586465587a4e5968347738727a58517470346a387454477569616b674c674d6b5631723441626f7135682b54714a675831365952717a63502f476259414f42664170556d36637a6c73564846623177644f7a2b472b427061354b764156772b357361794f477a35376c79574472494e7261467344475a79364d4d3944573653326771543552712b522b474c38505a424642755731535a4f6864575a6955362b4b775677465570546a5937414c684b42444e386c626c3933566b6c364652516d65594c30466e36514b4d7635354c4e5a5a44754570724b4d3842726d6d4339756143364964715752384c7a64525767762b632b614b6742544c56316439425533736874422f41716f72655764344c716f4b6764326f4e4f55376b48754e484a3034706353664d43307232766f4b62754470724b4f38447247414250417535746b6a4b59615136754b546c453948524b48673665356e31577a6345314a596d496e6b77633350757337754f614e744d6731315375794e614b6e6b7736654a71767449494262712b543978633358355363414b64566c734532532f375058723978513636446259433738436c633870513654494b3334693675623057413636767954337679754159665651374243576f2f582f74374347316f614b71414e7531494a2f676e65516c546c6c7634766f656a65476134566b2f68652b774d345679344f635033347a6679756b41664a41724c6a524c57326871436f554b7564344679663353794a755231326369565a367845486864725541466673386e53726d503570366d794b307665585657707a36516c664f332b55414265793662546c32764b384a5657597348422b3345356e55745073766a67422b6c30364e7a77752f2b447930396370764e4833424a68473670494777625a744745486c2b753572416877505472554e5677474b2f734f63486d487933646366672b6844526867756e447077615672694f39674e66393878475530502f75654d4e35644e2f35356a63732f754e77577769566f31374d4f6676507058433779365761656439795753312b62382f474d53376e644979324c7171724a65384d315a316d7541646a4853422f782b2b3163796b75704c714d5839537573536963575655774b674d50582f6557556665612f666667466678474c65766a39676b762f725841786b67387a6a54774c64514369544336747562516a7a30495a6c664468502b5879494c64785a5952745145663779674977634c686d664d2f73494e65654b574147596148526d56614f45324962304f66512f754f5633654f3476433763444f433833664b65734a6a70584b357659596831344a31654b43426f784e66744333492b6e4c7447796143316e72774c706b79753245532b69556e627563785631467741455975626d6f736b4d6f3372764e685058562f7a5432396c313264386274386737584e4c33326d6f3748365a727873576a6f686532342f595771374a596c434d6d51374f48794f4850395171533864396766662f6e352b50696c56335137674d4648484d4c5a33326644373241462f33664152744f4d4c58776c74786f644a5a304447786d4f6a70494a64667134695846305943626d6c446b6277484665412f38503535356a596666354e2f502b6653556662686e58334d2b3175484d424242724c31414566317634504a636b476131675a54413556362b6637374e5066454e314f38306c382b377949387138354b4e5a4b7a534b677641313466777a67723533757373414e385172704774707266544a342b524c635858567a3757336d78576e61346f77456464774f55474565755757335339352f694450786b68774343533332725a2f51446672313441304a776f496a726f34554436756b4f44345334526364586c774d314533516c4774355076476f7662516f67516847554e393975424f387832672f4d2f454552334c34706e2f335a623965396b4d374a5a4a4a61456331666c54674e77642b497932334a6f4f48666338794f38357777596f4377366571414234316b5a5742594b7034764863794f617a37755733523244634f2b716f757571314e5369443976564e59684c6e6b507468727231534b4c304831734f6e6b776975694778464c6c4c4448494a426e4c6f6b706477735961772b69393336745149623373372b51626e474d7a334f746b474e4e334a4579385058476b49743655676a6f2f2b717a2b626b5238614a4c614d5a525975656e7563763965575241533430626b6872715a53306e4c77654d2b444877366a30384251394c426c64374e6733436b4968337a4130686465734447496d6674655636642b346b5457715a2f31515178522f355a2f6e2b4c7970584b344f7839766c364464373343384146343747626d33355a6e6a7a63484431666b2b494a6e70554f69694b4f702f67387338356639654449512b79762f3979524e69437a727838464c344e466137774763427a6b5737573068625955562f32305a695355534b564f382f46424548547974794a79484145317445563767754c4e6a6657485a336a754a2b45474d78543677616670364832433852622f396a3676762b48436c695442637132784f34445945737a75615530546a52707a45593746434f442b426e4f7159636464754363414665716e376f54587166595a52533575426c595533345973762f6a614d634e4342326a3156326e63446c5a764a59326a486c74496a4c572f462b534445676d744945706f6a7544484475536552784a434c7a576669353448453351546d746f6a7858556c464a446c354b414739782b5156474b51314b64434f6268625a622f6e6643492b6b68692b672f5168484a3734316e7947704d6158473569547868744543772b4866684e6752794962354466722b7a784e657a69756d33696d53536c414376615246586b3459557153564e504d34536d61772b36746b4f695034417a354d576577774775316c38374c7334415275353656415858432f76466e74446436372f51706c36386e6364326e71562f50756d35626e673676717a5261652f4c4a6e3664676c507475513073766b4d61756a59385a726d714f62414e553546684956662b53694c524441356a766146465971594851364232324e51686f3167747268636b2b555a756c71342f63526b354f41656743656c6b53302b37716f32464d6c6f577366792f317948414862415a7244596d636a666a6346636762794c5351447348614a717147574d35624b4f66463258704f4c676f70646b574d5456704b484b7670353764524b3875646235334b6b4f33747336425a645643704a6b4f41527875344673677976376d334b43712b31704669372b577a4b4a3644487859717463737a726c3749334e3745716c36706d55652b415155564830727233704a555830524f5659574479684c6876457171797648617a43437043384f4431616c5169764d34317233374945636e5741393462353862584b726e36384436764d4e6b666174524f674f31514952305376355563666a5a67616444754e2b692f38696d6f6366317a4a6c6c564a7034715a56594d2f515561365561785574576b6a366a2f2f533272637135737a4178455061713753456448444a66685a5a79722f4f323368546e474973385a6a734f7569634f5658673667665544316d575a377231716936544f6c5452676a764b4d5664676f4d37744e426b7837776c64475472447572303548306c6a6e5638394334363838316e6774366a2b7974505535645244355859332b6e78657968332f77486139737438422f58777545795657546c56395441364e4949586a46523276636f6439334f4832316656496337714350634a6b58746a3265716e495a7a2f7575582f6d795353537953416a695a2f665771453739674b3646414d744a5064567233544b5135656b4a74483830613851505736744b646a2b2f62324f625a2f7a5a3955742f4f706c4a726d6679423056366841446271655a70797255714f7a7568706c2f704f6a4b5438723230474178385664316671526d6f5949377250353533756c4d377972644842484e5a395345736d7268334d7876773834393177712f34344e6351454d35744e33574653786d305075486f4548776d69655053504376744d3679447343302b35714936493770344e762b755a4832764c39723954686b57452b594e3732303178797036596149506448783351346d56497156364b7450387a78447073564b787263652f7563526654586a4a6d4f396a6846636f6d6c4e357656674963565841507335743535587961584337694153382b556469464f474b7a473138566f5656656d67783035454e554f556d3877756c2f686f69464e35596c6e327a75573351394a50723567564376492f2b46516a51696633616f36587352747678654251626a55782f53676c4561796e6741757a627438525052597a49485066657835537174546b30372b747a6563317a376d79746d3739786f633272384f33346e794468796b5063745846653972632f5056564b565241356f372f426e4832786b72455630387334376e4d74546d3376693473503465354f4d7275667a475a516d586a65514a48345459587565524a337248434e794f4f2b707269496f534135305769306f6157485a664955456a6e617748727243744c4c763742416f346f56786267637467692f34635470444d69545944377052415075703844464a4e4c38767568727a2f6a41696548546a72594e6c39426b415a34427173437a69584e2b7461446d486d432b76306f6164695a6141354c51695642583734344a347255333042487231344473366355726b69485433736d5745352b4e666674474c7352414f636179664e6f454d624e787557623344782b6b45417675325842565255364c45685a54536f53366663666a3274476a2b5a3971316537324f774b386a4a6f384c3871494a78714e4f44546f766f2b486a586b636369446666504979494b5a306f785937476c69363648364b76515337416943714d62416936756941576f70514f31464e30656e663172386f332b436e445034485051636437694e6e775a5254313444792f4c2b2f32576644337949414a2f4b49456d762b4a36587247354873615962714c447a6c42302b596b79494e3453676c545451775a4e76472b3173302f6d65304238763450767356327038326b425a4a5a63702b72526a2f4e78664d744e664d325159414d5465667a3545584c704477476c71686139782b64414f767546372f574d6368334357706b4c667362374566645446634372466d6c494c4b2b373545616f2f50714752616b30714c42615642326d375630333066465839364f5a4132366a6661733866684f7768462f3877785461733277567a52726b5754505134724b2b31505846782b6a44746d64547a70353931504e747a374c6a3736362f3237437758376c7346733135654253746673387a7a64766a6a57656f587164324e4c58374a5a5233794c4f457473594a4c656a73392f354c61795a2b516b74654768745675326535732b67336c364854722b475866447870306c514f7945634864344b447278722f6b5448336663366b4e777741476b504a6b537861384f526f593171725563392f65765477587a7a4c6b4f7566586a494b543733544f35444c3761617450386b352f2b78497a667163525174487665494462745352752f3867725a72776b5a4d3675453568704b6e634154787350335277366a347a786c48646a6d3139396f4d6266333335454d72657463634835482f4f6d456b37356936693078362f783743515977707435344b6c564c4761523856622b2b4630576a664a49336e4251576233306a384d636436646d6b4b646e37715064693165546d736e662b6f4462745342756c436e6a77586e354e5a303773646a7164303951384c51776231525853535369535a4e35597544682b4f6d2b76665873796d4667587275314c666f6a466448556b6244656f46427a6e7233334565667036714e47314c6a737a304f4b6c3963504c6859424966462f652b5a50786a626139372f6844377234346e533236686e563870733370546d446e2f5775456367634b6656716356692f7767362f375078564b6c476464723833532b52474e6c6370504f5561536f6e5a4f72674d437a5537564759546c324c306b4b2f6d4d586f467633375576763762364d4b56544a6f3265766a61666e724579672f32324f6e715679726867464741413967684535657657567a677a4d583549586d42516c756e336c7359324d2b76476272567454376739644b6744756c556b5671632b4e56644e4c51515652344e4a3857502f3847362b56547144412f394a6d6b6a61366a394b37376f506e76386179487239486451314e354154677362716e6e466d5a512b364c7776664141376c5075754a3561337a4341736e66756f59556a787867694f546775514e35722f4d7347384d43786f36487a7072374e67452b6c6277634f4b775a3330334e3755736448686c4647673371474c7237346854654e36625677615a6572674e3530462f764e49384441484e30394e4a56356745737361514d526c78525770645a5270437a4b624e61594f6a35364a34766733576e6e2f4e2b4e4f66413979315a53616e71614d51686b3739776456574d6843527739664d5351454d444e6f632f583633777162666e684e356f33346b5536734f3676694f39396d4170707444654630666b786341505670436e7568446b3078314957486479776957594e766f73616e7447464f6a35324a2f583966414b74654f74396d762f45533436346c5549304237562f59436a3934355a72366443477a515933337a7a7235366a766e5262374a49525245512f45574c57444f564e7a435364634633644c70684c7a6e4a59696c55482f775568646f4159716c4f676e4466316c417858666245775277736b47382b3677674736556a42316d6c74496d63747a7a326e687352426f6a385a57484d3449356a77374773636b6172464869702b455a437551637a50566a66686a75716f656f5a444242677748786654624b3958672b33414d6479737830576b332b3338376e48517a6858534c575842647050376a4f416a57577554696b4e44495a48336e6d6c2f644c71476c7a5851446d307664523449673656655235386752726d5076486e48672b332b73765335756179546e3531766365725a477465466f6f334c58673159357253673236647937685577364f4f7150336c5454333065654b3958456e43553474433534615464504f366c38433348426e72647670564b72617047465939307768556c4d594a574c305454515236352f2f6b744b6653755a33522b65355259342f525355584e71426a7a684b512b522f7269443652653753793147474379327a444c65514e57674551334b6b6375343473697a49456e4269596c70416e7155453938755a64777a4c5964584974706b766736494e456b4167796561616c6a52693852736d35754266435457454b356744584d59394c5a7a2f41547047385a2b67304a7769496b616e6c48527463644653653551624c65304145563169453462417a6d7a7835314d787a76354239555047576b73657446675051633349637470304f4e733344774c6c57326e59384f5a546943434c364f65544a4f456d334639546759536e3075584373436d747a34774144634a6a793276377241747232387a786a536974617a374b51487944465462565061555031542b39677a4a6366302b4555773463642b76696368384e7a61663076692b674850416b786b4d62313451546b3473326b6b344461326e4669366477495a6a44596d7469516a2f55677a364b5633574a6e574f656e48695132484d6a48612f73356e69736736386e6e664b2f73522b645a4b514d44504e3975744c6b57697951516e676e70677359702b34757a327a4b3134324e4c5a48386634586866572b347a6b44774a416165626951423533776a2b655977383771764e724279516a3850464655744c322f4f78526249506e4f415a3633707947597a4d706269642b66686335526853453939744a6b4b3074503159337239426b62707534762f766c364171474254776663627a766f47572b71365267515a74572b70556e334654464d4565356a2f78496b3372325a2f6d502f346935523038524b3176754e4b594e687577346e733665384959673550476972415970646534305452672b6666555a2f722f30556d334454525773433136396c5761386138424e50655235384b2b5a786d4c726e72417a3335545a41724541514463325249497764346b45546a6a52725a64486249322f54583574373845714c415359716768304d4a374954376e4c416f392b736f54584c5a4a6e2b35756339774d6c72464c61544e4538784a686f53327577645a416c2f63457933497139344236394c4a7335346b6b414d353372666a2b6d2b43754a47306636535334545232386c6d66444a38746d794c522f375a394757546c757373464e6137553567657033375768346f325855393556304559576c786f6b744b623175485761394c73725a765a64324c56706d654c7235794a6b5a3656546e314a4f6f637532616869552b6138637532726479726547315a684b73356d3457783565394e7435594637356e365239685459765a7936616c6c73496f586c52524f76634f45646342386834326e447761765170632b576e52555a454e3946326c49304f586734504466304c4e35496d307936473252394c7351716576542f6252614d774f684a78752f633245672f77374f3577486c4678786f5a363756646c6549644952556b614e3465312f796b4179564f775349324e685a484e734a566c525161486867595943344b6e553836336e71636b3550557063553543545379762b4e354557762f4347527a6137653467787077307832307077684947764f676a4c525231664d6b706c696f4e4851756c696d4d4943665378694f63345079434d474f494933387633416e624857656a44355a676939544f774549533863454d4f6679775a552f6a676f78475545692f7a5235686a614264455947564f2b3458746677666664467564764148764246574c6b77326f3971423559684e52504d746334446e426a6a58496f6b567751764b466d6d39445759634334746d375339474b7557716d6d2f5a702b41426c4c5353745572554a46724c646a4c7430665661355a77306633626e586c5258783961505032652f3959593967495175546774616e385567593674656a6a4d48513146704233733168326a30525278327343384237515178564c2f6b32696d7838496376316273724b4d5a424243324f4f4e6c6e4e7962515944474143683431396b427862654277506a5332494d6841672f4832767554583038486f5342697575385451787a304350784858364b56667a3559673665486f4a78726456566c78517646676c4768617750622f37324a304f384e6f6262376273436e6e2f696463486a3057647433366d492b39576f375a303355557061614142485738494165486e67344c6c424f74706d376d694951773778744b467774423453695041776561656749756e45532f6c656b4244676b347955767350467541617564553049743044485879316950726a623967446e596a33312f38677a4859555579316a792b5657413879454377766a3271447a33397a424d386a557234776a794c37684f4c4c3039567761393172477171316748443056452f33466f3549626c3744333741702f67436c352f7a6c37765065444a4e716e39763579565832466b6379553077465772634c43527a5536456858686354656c6f363453547a31624664596f383436575669775067412f6d656a306c482f7353304d41656831596f562f596b676f75737134595a7452526f647974644d3547734f2b774558644e37482b4a7a6c35466c6a6e536d47734e35782f70597a424f4462596a6d3475436c4f4b59756939574c7a635042644d57326a4d73685644694d67587a774a307a2b4651517942706e7278743531346274506831346d59754d55454f586e38414b494e435456464f432b345a463878727230554162667a3538566b6870504b356e4f6d63526e42323550456544677532497041506839726a4b2b55663376494646383879585251696d6c6f616a66464b656c67546a414f48736f39397536504d6341544f7a36366342387a7532676e5036655a586c352f42444263705163422b654d55597637704147303971686a5449454b763558322f526e49766d555971596235522b72424a305073684966516a33317872356e332b62576b6a6f72537346386b6d55496a6f594945524977465055547a366a4e736338564e69584a47715035656d4642424d58306c6b674374674952464671396b41463476672f79665453795730454d757646655464704d4d48452f387a512b7a5959305553514239374d63693546663173672b3449384c6c536c576541386535694765416535766478672f4a75634d2f4c4c4f384c77495a62364d2f6d6c4a6c794c4e576932675369616d476f54695a5674786d6759674a7751785439325a564e383130354d6176494551362b65322f4d327266446c552f54335966444762564c6938614b3774696379317834644345414942653468734b4b4348337551542f584e704866646e3634376c2f4379646348344b594e46474333434d4c464952484137585754694f7942714c6d79505a7272755a764c4d504561367872672f4f5943564c504f4a534a36413742763872483752414c416f4e614e74392f67306c34635453594b6237764e3576374e6c4f31676673394e6c4f31574958354838353731784d632f4a75535344424749756d42456244693571424c314b617a694f4564507233634d395a2f2f525654332b4c684c587a713832666c707937577550507145775a336e6b5a71673438494e6354516c4d456c557a3473465a4b6b436f716e2b416950792b56644b52387956515832785032757a4245693831506f4f65442f6975463871414d3858304543586e43416975643239414b535766507944414d2b433347486e6b3864795830455a5843744948545056352b4c7a595632466d3253576348753035557656574356756f6e3345566f4752472b47564d545747434b6d495541707544362b78736462307848787463336d33356e4f69506568343436795a5a475468535239706536464942482f7865524d44504f2f5a6f6d49646c6d3848754d336861333577484f4253496344394d52646a44677a42462f73585675576e636b3536514f4347612f2f387a664236322f544e5435544c2b6e52362f574d4d332f4861702f6a4f456d434a4b544b6a5a473362616379664939454255694339322b4a3077783356535a724c5573753337694f6d51675250707975696952367153564d696b6375696f38444b6561744879584c5435517a79756b584f70616543762f6a794e795959486d382b4374327854616a582b4e4847564e6d736763506f774870666e775a456a6a6c353643443666637a626a72554667503653676233497135596756504835385a775031615170626742586741354c4a4f4a537031626b77356577754e3469696941516f524a6971526d32674c7447784c7975664962337879795372334d5653774f77376c356f4664553061537272354c59786a4743394c43626739304d6e6e65512b524174696148794c4e3258784d7948326d674a75474839366158427253677141433869786b423347742f55515a62396955665962393545792f37443771494447705279674c6135695279326f4a5031445766716e53564f3541626941484336417350515a613346686a494b6c7562434d506969434b6f35504f55683776513561642f497a33755677666d314e6d736f477741586b43494b476151556b4d364d56726c7a366b4d58626f2f4678776e474d774c484875772b5144452b597a72676d306166424e476c79676f4b617947563547304c695144652f2f6b2b4a48333546595762594d64784b673944656a3979487a45454a6f6a6a6d64372b49562f33383768416237522b3671326c4b5349414c7943485833734364465a354a6a32356c6a67686439707143544b704b376f5239754a5775504a72473442616848485063352f477a2f424c504e6e423977335533303553514972704e5a3857795038795446304b58665a6431326e31556b4a415074707a5669616c65634d4d4c715775387761314a55356b4375494438646649732f637450564a4144335041724630734270493775334f356c2b6e4e72306741504465547773385753764b4d48716441414f617a556955434c58546b71754c466f6f724f2f384d43614e476d412b776335496c4c4136542f62414c6d373945472b6b4d483975646576484f41325178427030715142486748494553674f7134437973306f5a354144336c31356e6e4e5561334a6f304f6244593341376b652b4f736b30506e2f736f4c627354613671624272556c54694e4e6b6f594438754b624e41504b76474f5156336d4f6448464e6f4e5749654a345a6f6c537650716e4f667865335a70543974634f4a76686b434661395359343777506a6b315930377845445a416f455534366d544d526b685546382f743439664d5234462f696d754636524456424c4456456373466159506747662b63765959436b5735716e6568564b66616679766e6e7950395a336e7954312f636237643071797854626b53594434725a79485747314e2b662f6c316a72556c4e43794274324d41583541366a3969307a595961482b303745504d4f72545a4a64647453395276374e676b746e427942414d7744473866704279695744753265674931484c4c713344733164454d6d4c4371614a6b75466938644d4c734e746f7038695763415935587644634e6d65504646523973672b664841454d366a4e32337535494e45656b67536546435162434a495939725073513444387135583638483278306e47412b59333546386e364547644e42655970584a363341424944316b647149455a5a466f7a494e3344485269434958327a416a5567775536334a4771562b4a432b344f70484237536a413563466e79494d62382b54767337696545794f33316732756f7a53564f62636f4135674b36365846387243706b6e54776a7857512b38744c4273433134764d364b7676673767737872613841416846596b416c557a57614370596a4246764d67302b64444a674246456e68413462416d5a646e633635426c4830496d6e57504a4d4971517a596853303852794c61354452426f6b4a47786d3079344d4f6f69414d38546d574235466c787969374146635144355658696a74644258514a415a3576734d67332b624b4e356178697673706c6e6d6547574b386255306c43624863546a56424c766d38437979637249573835796e436263317644633739495a66725a646346584362354339385567464266533545535447427470704c787a554b4a3949724241706c4152306a62455a367142336c43547265304f5238444842793452766f5a314a416839527152416c51366e4252474e6a38676631764548397245594a7a6d315a476a4a6b674748336a424466665463305255307854704b2f55414143422f487a6d3062594345415875686c43736b5861354a344836394a5937625665534e2b6871714851447830534475497a6e6459384c46495a6f6a79305a5450794754412f5668634831345735374e31376154416577645565464f734e50307543412f47464c38396c62615a6359526777682b564d4375556e3753416c7841506b70454f4d4d514e744f4239655451366439504f55685a48743065346c566338307156513449787a4b3345525964594f3447387952564d505253782b71423362704c66363554766a4569754b496844766b6b6b674841496f454f347242646b47336f2b4447597278596a5630694a535a317175723037654a414b67544f6b5448306d627a754d7958594273783846684b2f684d62416e446c5030517978475573716c636636766c756d704a4458416835494743794736455a49346d4d6b792b524a665a372b6c372b484e4e4c4b4a514a6948413078576a4755422b68715666494a62344e4d6b654d6b3234345332575443437643656a48524e4147412b4269724d4a39594b683953314950376242775851416649614c72794f4344304d4e4854554f583241424d51396f54417537334a5745454f4c68644472414d68534f765659787937666d36562b535a63612b5465662f70796e55756d38456d75514175566c556b6d7a4f6d4f72356d4c7237654658354f4f337764474e533265534f7849466a444649335079496b374b334a6f417844745a47704a42666b694f516669376a6c63746971587770434b6c4552446c417770304d4e66564c4b496b6e4939444b414e654c7578545275716970356451384435487937334b684632454650394e443757524e71486234366b67524e3448365444683867336d53466d425461694c6a34586d5632515258537948454e476d4d4f536577313148307349386b5055676263664634505a6739496d32426d573848616d314c7442376f4d59394d316c6d6778326779795a626b7459637357704d78306a49473961696173635846434e616c6e6d79414d4658555334714c6c65376f2b4f644c654771435a4e70532b696d3577636568737372466d357a49386e707877796b7777457053577558425863454a6675305a394e6b3659454172694148466b6b6b4375613972423059306b545a4575625753542f306e73657272396139436c4e6d6a516c45734146354a4e467a364c56726a7961342f4c762f77434c2b636665674132474247446e5371684a6b36594541626a5149317a67316b726675625055454d6246424d7663464865787179744f364d66673371672f6c795a4e43513577696538476834686467432f434b7556613950465a37694f4767347a51665147537747765370436e424f4468416a6d6b57654373564857417572535a56674f6975474e552b346e4e663070394a6b365979424841422b557a2b65526262734a51666352556137716566656f317157496b3057483869545a724b494d4346344f532f416875776d473930485456586e384562356b72785a744b6b53564e5a42446744474576786a416974304d4f7a584d57362b4844745936354a55396e6e34435241666c725a4e5a7373432f593161644a5552674575394852365776722b4648634b5250507264454a41545a71636f66385859414270725877655965492f706741414141424a52553545726b4a6767673d3d, 'image/png', '1212aadhar_card_20210819180915.pdf', '1212pan_card20210819180915.pdf', 0, '');
INSERT INTO `faculty` (`Sdrn`, `First_name`, `Middle_name`, `Last_name`, `DOB`, `Department`, `Contact_no`, `p_address`, `r_address`, `Email`, `Doj`, `Qualification`, `Desig`, `Password`, `OTP`, `profile_photo`, `image_type`, `aadhar_card`, `pan_card`, `bank_acc_no`, `bank_ifsc_code`) VALUES
(1212, 'a', 's', 'd', '0000-00-00', '', 1231231231, 'asdasdasdasdasdasd', 'asdasdasdasdasdasd', 'sd@asd', '2021-09-03', 'Principal', '', '123', NULL, 0x6956424f5277304b47676f414141414e5355684555674141415067414141426643415941414144467941706441414141475852465748525462325a30643246795a5142425a4739695a53424a6257466e5a564a6c5957523563636c6c5041414141794670564668305745314d4f6d4e76625335685a4739695a53353462584141414141414144772f654842685932746c644342695a576470626a30693737752f496942705a443069567a564e4d4531775132566f61556836636d5654656b355559337072597a6c6b496a382b494478344f6e68746347316c6447456765473173626e4d366544306959575276596d5536626e4d366257563059533869494867366547317764477339496b466b62324a6c4946684e5543424462334a6c494455754e53316a4d444530494463354c6a45314d5451344d5377674d6a41784d7938774d7938784d7930784d6a6f774f546f784e5341674943416749434167496a346750484a6b5a6a70535245596765473173626e4d36636d526d50534a6f644852774f693876643364334c6e637a4c6d39795a7938784f546b354c7a41794c7a49794c584a6b5a69317a6557353059586774626e4d6a496a346750484a6b5a6a70455a584e6a636d6c7764476c76626942795a47593659574a76645851394969496765473173626e4d366547317750534a6f644852774f693876626e4d7559575276596d5575593239744c336868634338784c6a41764969423462577875637a70346258424e545430696148523063446f764c32357a4c6d466b62324a6c4c6d4e7662533934595841764d5334774c3231744c79496765473173626e4d36633352535a575939496d6830644841364c793975637935685a4739695a53356a62323076654746774c7a45754d43397a56486c775a5339535a584e7664584a6a5a564a6c5a694d694948687463447044636d566864473979564739766244306951575276596d5567554768766447397a6147397749454e44494368586157356b6233647a4b53496765473177545530365357357a644746755932564a52443069654731774c6d6c705a4470464e7a6b7a4e6a56454e7a4d354f4441784d55553051554530517a67774d444e474d5467794f5449774d79496765473177545530365247396a6457316c626e524a52443069654731774c6d52705a4470464e7a6b7a4e6a56454f444d354f4441784d55553051554530517a67774d444e474d5467794f5449774d79492b494478346258424e545470455a584a70646d566b526e4a766253427a64464a6c5a6a7070626e4e305957356a5a556c4550534a346258417561576c6b4f6b55334f544d324e5551314d7a6b344d44457852545242515452444f4441774d3059784f4449354d6a417a4969427a64464a6c5a6a706b62324e316257567564456c4550534a34625841755a476c6b4f6b55334f544d324e5551324d7a6b344d44457852545242515452444f4441774d3059784f4449354d6a417a4969382b49447776636d526d4f6b526c63324e796158423061573975506941384c334a6b5a6a70535245592b4944777665447034625842745a585268506941385033687759574e725a5851675a57356b50534a79496a382b4b64556c6c4141414969424a52454655654e727358516563464d585372393037777433426b535548455644687153416734414e455248794b6d4642555449414a6c61655945796f6d486d626b47586e71427967714b4169595552517a4753524956704363387955756650576672626e746e5a764e733374377431322f58392f4f546571656d66353368613675496b6f514f713570737a5a633769644e6d6a5135527534456173736f4c673879794776707a364a4a557a6b434f494e3649502b637a3655616c3748386634722b4e4a6f3052552b7555675a3252663642574437434d7468387765584739527333624e5766534a4f6d4d675a77426e5a7a2f726d55793141756a6247764a7156516e6149555775334b4d302f4c346649326c2f65357a474777462b725070556c544441444f674b7a43503764774763596c6e3874364b5a7535374f5379693874754c67566344696d5856754a5367387378584a70784f5a464c42793474315075334b6170452f79724d6f4452757a6878584e7633677a71616a564b5365736f664c6643354c75667a4a5a5175586656794f4b4f656b5358305a584f704a6e665735594441356a6b736a4c684f356a4f5442346d2f393654556c5063415a324e5835353159756433467831506956796c57334b7170416e5976537145465271732b787731524938397735744d795679364f4634347a374b4a6478584a356c6f4b2f54585542543067476367563162784764773747726d6961325a30395a6c4d667141713544324d3750657a372f5a444d417358323572432b5a4d5672467238725631575252767a494275797543754549494173635756543573596b31763564792f5874633956514c6c42367176493936334339565574636c4e312f6b586465587a4e5968347738727a58517470346a387454477569616b674c674d6b5631723441626f7135682b54714a675831365952717a63502f476259414f42664170556d36637a6c73564846623177644f7a2b472b427061354b764156772b357361794f477a35376c79574472494e7261467344475a79364d4d3944573653326771543552712b522b474c38505a424642755731535a4f6864575a6955362b4b775677465570546a5937414c684b42444e386c626c3933566b6c364652516d65594c30466e36514b4d7635354c4e5a5a44754570724b4d3842726d6d4339756143364964715752384c7a64525767762b632b614b6742544c56316439425533736874422f41716f72655764344c716f4b6764326f4e4f55376b48754e484a3034706353664d43307232766f4b62754470724b4f38447247414250417535746b6a4b59615136754b546c453948524b48673665356e31577a6345314a596d496e6b77633350757337754f614e744d6731315375794e614b6e6b7736654a71767449494262712b543978633358355363414b64566c734532532f375058723978513636446259433738436c633870513654494b3334693675623057413636767954337679754159665651374243576f2f582f74374347316f614b71414e7531494a2f676e65516c546c6c7634766f656a65476134566b2f68652b774d345679344f635033347a6679756b41664a41724c6a524c57326871436f554b7564344679663353794a755231326369565a367845486864725541466673386e53726d503570366d794b307665585657707a36516c664f332b55414265793662546c32764b384a5657597348422b3345356e55745073766a67422b6c30364e7a77752f2b447930396370764e4833424a68473670494777625a744745486c2b753572416877505472554e5677474b2f734f63486d487933646366672b6844526867756e447077615672694f39674e66393878475530502f75654d4e35644e2f35356a63732f754e77577769566f31374d4f6676507058433779365761656439795753312b62382f474d53376e644979324c7171724a65384d315a316d7541646a4853422f782b2b3163796b75704c714d5839537573536963575655774b674d50582f6557556665612f666667466678474c65766a39676b762f725841786b67387a6a54774c64514369544336747562516a7a30495a6c664468502b5879494c64785a5952745145663779674977634c686d664d2f73494e65654b574147596148526d56614f45324962304f66512f754f5633654f3476433763444f433833664b65734a6a70584b357659596831344a31654b43426f784e66744333492b6e4c7447796143316e72774c706b79753245532b69556e627563785631467741455975626d6f736b4d6f3372764e685058562f7a5432396c313264386274386737584e4c33326d6f3748365a727873576a6f686532342f595771374a596c434d6d51374f48794f4850395171533864396766662f6e352b50696c56335137674d4648484d4c5a33326644373241462f33664152744f4d4c58776c74786f644a5a304447786d4f6a70494a64667134695846305943626d6c446b6277484665412f38503535356a596666354e2f502b6653556662686e58334d2b3175484d424242724c31414566317634504a636b476131675a54413556362b6637374e5066454e314f38306c382b377949387138354b4e5a4b7a534b677641313466777a67723533757373414e385172704774707266544a342b524c635858567a3757336d78576e61346f77456464774f55474565755757335339352f694450786b68774343533332725a2f51446672313441304a776f496a726f34554436756b4f44345334526364586c774d314533516c4774355076476f7662516f67516847554e393975424f387832672f4d2f454552334c34706e2f335a623965396b4d374a5a4a4a61456331666c54674e77642b497932334a6f4f48666338794f38357777596f4377366571414234316b5a5742594b7034764863794f617a37755733523244634f2b716f757571314e5369443976564e59684c6e6b507468727231534b4c304831734f6e6b776975694778464c6c4c4448494a426e4c6f6b706477735961772b69393336745149623373372b51626e474d7a334f746b474e4e334a4579385058476b49743655676a6f2f2b717a2b626b5238614a4c614d5a525975656e7563763965575241533430626b6872715a53306e4c77654d2b444877366a30384251394c426c64374e6733436b4968337a4130686465734447496d6674655636642b346b5457715a2f31515178522f355a2f6e2b4c7970584b344f7839766c364464373343384146343747626d33355a6e6a7a63484431666b2b494a6e70554f69694b4f702f67387338356639654449512b79762f3979524e69437a727838464c344e466137774763427a6b5737573068625955562f32305a695355534b564f382f46424548547974794a79484145317445563767754c4e6a6657485a336a754a2b45474d78543677616670364832433852622f396a3676762b48436c695442637132784f34445945737a75615530546a52707a45593746434f442b426e4f7159636464754363414665716e376f54587166595a52533575426c595533345973762f6a614d634e4342326a3156326e63446c5a764a59326a486c74496a4c572f462b534445676d744945706f6a7544484475536552784a434c7a576669353448453351546d746f6a7858556c464a446c354b414739782b5156474b51314b64434f6268625a622f6e6643492b6b68692b672f5168484a3734316e7947704d6158473569547868744543772b4866684e6752794962354466722b7a784e657a69756d33696d53536c414376615246586b3459557153564e504d34536d61772b36746b4f695034417a354d576577774775316c38374c7334415275353656415858432f76466e74446436372f51706c36386e6364326e71562f50756d35626e673676717a5261652f4c4a6e3664676c507475513073766b4d61756a59385a726d714f62414e553546684956662b53694c524441356a766146465971594851364232324e51686f3167747268636b2b555a756c71342f63526b354f41656743656c6b53302b37716f32464d6c6f577366792f317948414862415a7244596d636a666a6346636762794c5351447348614a717147574d35624b4f66463258704f4c676f70646b574d5456704b484b7670353764524b3875646235334b6b4f33747336425a645643704a6b4f41527875344673677976376d334b43712b31704669372b577a4b4a3644487859717463737a726c3749334e3745716c36706d55652b415155564830727233704a555830524f5659574479684c6876457171797648617a43437043384f4431616c5169764d34317233374945636e5741393462353862584b726e36384436764d4e6b666174524f674f31514952305376355563666a5a67616444754e2b692f38696d6f6366317a4a6c6c564a7034715a56594d2f515561365561785574576b6a366a2f2f533272637135737a4178455061713753456448444a66685a5a79722f4f323368546e474973385a6a734f7569634f5658673667665544316d575a377231716936544f6c5452676a764b4d5664676f4d37744e426b7837776c64475472447572303548306c6a6e5638394334363838316e6774366a2b7974505535645244355859332b6e78657968332f77486139737438422f58777545795657546c56395441364e4949586a46523276636f6439334f4832316656496337714350634a6b58746a3265716e495a7a2f7575582f6d795353537953416a695a2f665771453739674b3646414d744a5064567233544b5135656b4a74483830613851505736744b646a2b2f62324f625a2f7a5a3955742f4f706c4a726d6679423056366841446271655a70797255714f7a7568706c2f704f6a4b5438723230474178385664316671526d6f5949377250353533756c4d377972644842484e5a395345736d7268334d7876773834393177712f34344e6351454d35744e33574653786d305075486f4548776d69655053504376744d3679447343302b35714936493770344e762b755a4832764c39723954686b57452b594e3732303178797036596149506448783351346d56497156364b7450387a78447073564b787263652f7563526654586a4a6d4f396a6846636f6d6c4e357656674963565841507335743535587961584337694153382b556469464f474b7a473138566f5656656d67783035454e554f556d3877756c2f686f69464e35596c6e327a75573351394a50723567564376492f2b46516a51696633616f36587352747678654251626a55782f53676c4561796e6741757a627438525052597a49485066657835537174546b30372b747a6563317a376d79746d3739786f633272384f33346e794468796b5063745846653972632f5056564b565241356f372f426e4832786b72455630387334376e4d74546d3376693473503465354f4d7275667a475a516d586a65514a48345459587565524a337248434e794f4f2b707269496f534135305769306f6157485a664955456a6e617748727243744c4c763742416f346f56786267637467692f34635470444d69545944377052415075703844464a4e4c38767568727a2f6a41696548546a72594e6c39426b415a34427173437a69584e2b7461446d486d432b76306f6164695a6141354c51695642583734344a347255333042487231344473366355726b69485433736d5745352b4e666674474c7352414f636179664e6f454d624e787557623344782b6b45417675325842565255364c45685a54536f53366663666a3274476a2b5a3971316537324f774b386a4a6f384c3871494a78714e4f44546f766f2b486a586b636369446666504979494b5a306f785937476c69363648364b76515337416943714d62416936756941576f70514f31464e30656e663172386f332b436e445034485051636437694e6e775a5254313444792f4c2b2f32576644337949414a2f4b49456d762b4a36587247354873615962714c447a6c42302b596b79494e3453676c545451775a4e76472b3173302f6d65304238763450767356327038326b425a4a5a63702b72526a2f4e78664d744e664d325159414d5465667a3545584c704477476c71686139782b64414f767546372f574d6368334357706b4c667362374566645446634372466d6c494c4b2b373545616f2f50714752616b30714c42615642326d375630333066465839364f5a4132366a6661733866684f7768462f3877785461733277567a52726b5754505134724b2b31505846782b6a44746d64547a70353931504e747a374c6a3736362f3237437758376c7346733135654253746673387a7a64766a6a57656f587164324e4c58374a5a5233794c4f457473594a4c656a73392f354c61795a2b516b74654768745675326535732b67336c364854722b475866447870306c514f7945634864344b447278722f6b5448336663366b4e777741476b504a6b537861384f526f593171725563392f65765477587a7a4c6b4f7566586a494b543733544f35444c3761617450386b352f2b78497a667163525174487665494462745352752f3867725a72776b5a4d3675453568704b6e634154787350335277366a347a786c48646a6d3139396f4d6266333335454d72657463634835482f4f6d456b37356936693078362f783743515977707435344b6c564c4761523856622b2b4630576a664a49336e4251576233306a384d636436646d6b4b646e37715064693165546d736e662b6f4462745342756c436e6a77586e354e5a303773646a7164303951384c51776231525853535369535a4e35597544682b4f6d2b76665873796d4667587275314c666f6a466448556b6244656f46427a6e7233334565667036714e47314c6a737a304f4b6c3963504c6859424966462f652b5a50786a626139372f6844377234346e533236686e563870733370546d446e2f5775456367634b6656716356692f7767362f375078564b6c476464723833532b52474e6c6370504f5561536f6e5a4f72674d437a5537564759546c324c306b4b2f6d4d586f467633375576763762364d4b56544a6f3265766a61666e724579672f32324f6e715679726867464741413967684535657657567a677a4d583549586d42516c756e336c7359324d2b76476272567454376739644b6744756c556b5671632b4e56644e4c51515652344e4a3857502f3847362b56547144412f394a6d6b6a61366a394b37376f506e76386179487239486451314e354154677362716e6e466d5a512b364c7776664141376c5075754a3561337a4341736e66756f59556a787867694f546775514e35722f4d7347384d43786f36487a7072374e67452b6c6277634f4b775a3330334e3755736448686c4647673371474c7237346854654e36625677615a6572674e3530462f764e49384441484e30394e4a56356745737361514d526c78525770645a5270437a4b624e61594f6a35364a34766733576e6e2f4e2b4e4f66413979315a53616e71614d51686b3739776456574d6843527739664d5351454d444e6f632f583633777162666e684e356f33346b5536734f3676694f39396d4170707444654630666b786341505670436e7568446b3078314957486479776957594e766f73616e7447464f6a35324a2f583966414b74654f74396d762f45533436346c5549304237562f59436a3934355a72366443477a515933337a7a7235366a766e5262374a49525245512f45574c57444f564e7a435364634633644c70684c7a6e4a59696c55482f775568646f4159716c4f676e4466316c417858666245775277736b47382b3677674736556a42316d6c74496d63747a7a326e687352426f6a385a57484d3449356a77374773636b6172464869702b455a437551637a50566a66686a75716f656f5a444242677748786654624b3958672b33414d6479737830576b332b3338376e48517a6858534c575842647050376a4f416a57577554696b4e44495a48336e6d6c2f644c71476c7a5851446d307664523449673656655235386752726d5076486e48672b332b73765335756179546e3531766365725a477465466f6f334c58673159357253673236647937685577364f4f7150336c5454333065654b3958456e43553474433534615464504f366c38433348426e72647670564b72617047465939307768556c4d594a574c305454515236352f2f6b744b6653755a33522b65355259342f525355584e71426a7a684b512b522f7269443652653753793147474379327a444c65514e57674551334b6b6375343473697a49456e4269596c70416e7155453938755a64777a4c5964584974706b766736494e456b4167796561616c6a52693852736d35754266435457454b356744584d59394c5a7a2f41547047385a2b67304a7769496b616e6c48527463644653653551624c65304145563169453462417a6d7a7835314d787a76354239555047576b73657446675051633349637470304f4e733344774c6c57326e59384f5a546943434c364f65544a4f456d334639546759536e3075584373436d747a34774144634a6a793276377241747232387a786a536974617a374b51487944465462565061555031542b39677a4a6366302b4555773463642b76696368384e7a61663076692b674850416b786b4d62313451546b3473326b6b344461326e4669366477495a6a44596d7469516a2f55677a364b5633574a6e574f656e48695132484d6a48612f73356e69736736386e6e664b2f73522b645a4b514d44504e3975744c6b57697951516e676e70677359702b34757a327a4b3134324e4c5a48386634586866572b347a6b44774a416165626951423533776a2b655977383771764e724279516a3850464655744c322f4f78526249506e4f415a3633707947597a4d706269642b66686335526853453939744a6b4b3074503159337239426b62707534762f766c364171474254776663627a766f47572b71365267515a74572b70556e334654464d4565356a2f78496b3372325a2f6d502f346935523038524b3176754e4b594e687577346e733665384959673550476972415970646534305452672b6666555a2f722f30556d334454525773433136396c5761386138424e50655235384b2b5a786d4c726e72417a3335545a41724541514463325249497764346b45546a6a52725a64486249322f54583574373845714c415359716768304d4a374954376e4c416f392b736f54584c5a4a6e2b35756339774d6c72464c61544e4538784a686f53327577645a416c2f63457933497139344236394c4a7335346b6b414d353372666a2b6d2b43754a47306636535334545232386c6d66444a38746d794c522f375a394757546c757373464e6137553567657033375768346f325855393556304559576c786f6b744b623175485761394c73725a765a64324c56706d654c7235794a6b5a3656546e314a4f6f637532616869552b6138637532726479726547315a684b73356d3457783565394e7435594637356e365239685459765a7936616c6c73496f586c52524f76634f45646342386834326e447761765170632b576e52555a454e3946326c49304f586734504466304c4e35496d307936473252394c7351716576542f6252614d774f684a78752f633245672f77374f3577486c4678786f5a363756646c6549644952556b614e3465312f796b4179564f775349324e685a484e734a566c525161486867595943344b6e553836336e71636b3550557063553543545379762b4e354557762f4347527a6137653467787077307832307077684947764f676a4c525231664d6b706c696f4e4851756c696d4d4943665378694f63345079434d474f494933387633416e624857656a44355a676939544f774549533863454d4f6679775a552f6a676f78475545692f7a5235686a614264455947564f2b3458746677666664467564764148764246574c6b77326f3971423559684e52504d746334446e426a6a58496f6b567751764b466d6d39445759634334746d375339474b7557716d6d2f5a702b41426c4c5353745572554a46724c646a4c7430665661355a77306633626e586c5258783961505032652f3959593967495175546774616e385567593674656a6a4d48513146704233733168326a30525278327343384237515178564c2f6b32696d7838496376316273724b4d5a424243324f4f4e6c6e4e7962515944474143683431396b427862654277506a5332494d6841672f4832767554583038486f5342697575385451787a304350784858364b56667a3559673665486f4a78726456566c78517646676c4768617750622f37324a304f384e6f6262376273436e6e2f696463486a3057647433366d492b39576f375a303355557061614142485738494165486e67344c6c424f74706d376d694951773778744b467774423453695041776561656749756e45532f6c656b4244676b347955767350467541617564553049743044485879316950726a623967446e596a33312f38677a4859555579316a792b5657413879454377766a3271447a33397a424d386a557234776a794c37684f4c4c3039567761393172477171316748443056452f33466f3549626c3744333741702f67436c352f7a6c37765065444a4e716e39763579565832466b6379553077465772634c43527a5536456858686354656c6f363453547a31624664596f383436575669775067412f6d656a306c482f7353304d41656831596f562f596b676f75737134595a7452526f647974644d3547734f2b774558644e37482b4a7a6c35466c6a6e536d47734e35782f70597a424f4462596a6d3475436c4f4b59756939574c7a635042644d57326a4d73685644694d67587a774a307a2b4651517942706e7278743531346274506831346d59754d55454f586e38414b494e435456464f432b345a463878727230554162667a3538566b6870504b356e4f6d63526e42323550456544677532497041506839726a4b2b55663376494646383879585251696d6c6f616a66464b656c67546a414f48736f39397536504d6341544f7a36366342387a7532676e5036655a586c352f42444263705163422b654d55597637704147303971686a5449454b763558322f526e49766d555971596235522b72424a305073684966516a33317872356e332b62576b6a6f72537346386b6d55496a6f594945524977465055547a366a4e736338564e69584a47715035656d4642424d58306c6b674374674952464671396b41463476672f79665453795730454d757646655464704d4d48452f387a512b7a5959305553514239374d63693546663173672b3449384c6c536c576541386535694765416535766478672f4a75634d2f4c4c4f384c77495a62364d2f6d6c4a6c794c4e576932675369616d476f54695a5674786d6759674a7751785439325a564e383130354d6176494551362b65322f4d327266446c552f54335966444762564c6938614b3774696379317834644345414942653468734b4b4348337551542f584e704866646e3634376c2f4379646348344b594e46474333434d4c464952484137585754694f7942714c6d79505a7272755a764c4d504561367872672f4f5943564c504f4a534a36413742763872483752414c416f4e614e74392f67306c34635453594b6237764e3576374e6c4f31676673394e6c4f31574958354838353731784d632f4a75535344424749756d42456244693571424c314b617a694f4564507233634d395a2f2f525654332b4c684c587a713832666c707937577550507145775a336e6b5a71673438494e6354516c4d456c557a3473465a4b6b436f716e2b416950792b56644b52387956515832785032757a4245693831506f4f65442f6975463871414d3858304543586e43416975643239414b535766507944414d2b433347486e6b3864795830455a5843744948545056352b4c7a595632466d3253576348753035557656574356756f6e3345566f4752472b47564d545747434b6d495541707544362b78736462307848787463336d33356e4f69506568343436795a5a475468535239706536464942482f7865524d44504f2f5a6f6d49646c6d3848754d336861333577484f4253496344394d52646a44677a42462f73585675576e636b3536514f4347612f2f387a664236322f544e5435544c2b6e52362f574d4d332f4861702f6a4f456d434a4b544b6a5a473362616379664939454255694339322b4a3077783356535a724c5573753337694f6d51675250707975696952367153564d696b6375696f38444b6561744879584c5435517a79756b584f70616543762f6a794e795959486d382b4374327854616a582b4e4847564e6d736763506f774870666e775a456a6a6c353643443666637a626a72554667503653676233497135596756504835385a775031615170626742586741354c4a4f4a537031626b77356577754e3469696941516f524a6971526d32674c7447784c7975664962337879795372334d5653774f77376c356f4664553061537272354c59786a4743394c43626739304d6e6e65512b524174696148794c4e3258784d7948326d674a75474839366158427253677141433869786b423347742f55515a62396955665962393545792f37443771494447705279674c6135695279326f4a5031445766716e53564f3541626941484336417350515a613346686a494b6c7562434d506969434b6f35504f55683776513561642f497a33755677666d314e6d736f477741586b43494b476151556b4d364d56726c7a366b4d58626f2f4678776e474d774c484875772b5144452b597a72676d306166424e476c79676f4b617947563547304c695144652f2f6b2b4a48333546595762594d64784b673944656a3979487a45454a6f6a6a6d64372b49562f33383768416237522b3671326c4b5349414c7943485833734364465a354a6a32356c6a67686439707143544b704b376f5239754a5775504a72473442616848485063352f477a2f424c504e6e423977335533303553514972704e5a3857795038795446304b58665a6431326e31556b4a415074707a5669616c65634d4d4c715775387761314a55356b4375494438646649732f637450564a4144335041724630734270493775334f356c2b6e4e72306741504465547773385753764b4d48716441414f617a556955434c58546b71754c466f6f724f2f384d43614e476d412b776335496c4c4136542f62414c6d373945472b6b4d483975646576484f41325178427030715142486748494553674f7134437973306f5a354144336c31356e6e4e5561334a6f304f6244593341376b652b4f736b30506e2f736f4c627354613671624272556c54694e4e6b6f594438754b624e41504b76474f5156336d4f6448464e6f4e5749654a345a6f6c537650716e4f667865335a70543974634f4a76686b434661395359343777506a6b315930377845445a416f455534366d544d526b685546382f743439664d5234462f696d754636524456424c4456456373466159506747662b63765959436b5735716e6568564b66616679766e6e7950395a336e7954312f636237643071797854626b53594434725a79485747314e2b662f6c316a72556c4e43794274324d41583541366a3969307a595961482b303745504d4f72545a4a64647453395276374e676b746e427942414d7744473866704279695744753265674931484c4c713344733164454d6d4c4371614a6b75466938644d4c734e746f7038695763415935587644634e6d65504646523973672b664841454d366a4e32337535494e45656b67536546435162434a495939725073513444387135583638483278306e47412b59333546386e364547644e42655970584a363341424944316b647149455a5a466f7a494e3344485269434958327a416a5567775536334a4771562b4a432b344f70484237536a413563466e79494d62382b54767337696545794f33316732756f7a53564f62636f4135674b36365846387243706b6e54776a7857512b38744c4273433134764d364b7676673767737872613841416846596b416c557a57614370596a4246764d67302b64444a674246456e68413462416d5a646e633635426c4830496d6e57504a4d4971517a596853303852794c61354452426f6b4a47786d3079344d4f6f69414d38546d574235466c787969374146635144355658696a74644258514a415a3576734d67332b624b4e356178697673706c6e6d6547574b386255306c43624863546a56424c766d38437979637249573835796e436263317644633739495a66725a646346584362354339385567464266533545535447427470704c787a554b4a3949724241706c4152306a62455a367142336c43547265304f5238444842793452766f5a314a416839527152416c51366e4252474e6a38676631764548397245594a7a6d315a476a4a6b674748336a424466665463305255307854704b2f55414143422f487a6d3062594345415875686c43736b5861354a344836394a5937625665534e2b6871714851447830534475497a6e6459384c46495a6f6a79305a5450794754412f5668634831345735374e31376154416577645565464f734e50307543412f47464c38396c62615a6359526777682b564d4375556e3753416c7841506b70454f4d4d514e744f4239655451366439504f55685a48743065346c566338307156513449787a4b3345525964594f3447387952564d505253782b71423362704c66363554766a4569754b496844766b6b6b674841496f454f347242646b47336f2b4447597278596a5630694a535a317175723037654a414b67544f6b5448306d627a754d7958594273783846684b2f684d62416e446c5030517978475573716c636636766c756d704a4458416835494743794736455a49346d4d6b792b524a665a372b6c372b484e4e4c4b4a514a6948413078576a4755422b68715666494a62344e4d6b654d6b3234345332575443437643656a48524e4147412b4269724d4a39594b683953314950376242775851416649614c72794f4344304d4e4854554f583241424d51396f54417537334a5745454f4c68644472414d68534f765659787937666d36562b535a63612b5465662f70796e55756d38456d75514175566c556b6d7a4f6d4f72356d4c7237654658354f4f337764474e533265534f7849466a444649335079496b374b334a6f417844745a47704a42666b694f516669376a6c63746971587770434b6c4552446c417770304d4e66564c4b496b6e4939444b414e654c7578545275716970356451384435487937334b684632454650394e443757524e71486234366b67524e3448365444683867336d53466d425461694c6a34586d5632515258537948454e476d4d4f536577313148307349386b5055676263664634505a6739496d32426d573848616d314c7442376f4d59394d316c6d6778326779795a626b7459637357704d78306a49473961696173635846434e616c6e6d79414d4658555334714c6c65376f2b4f644c654771435a4e70532b696d3577636568737372466d357a49386e707877796b7777457053577558425863454a6675305a394e6b3659454172694148466b6b6b4375613972423059306b545a4575625753542f306e73657272396139436c4e6d6a516c45734146354a4e467a364c56726a7961342f4c762f77434c2b636665674132474247446e5371684a6b36594541626a5149317a67316b726675625055454d6246424d7663464865787179744f364d66673371672f6c795a4e43513577696538476834686467432f434b7556613950465a37694f4767347a51665147537747765370436e424f4468416a6d6b57654373564857417572535a56674f6975474e552b346e4e663070394a6b365979424841422b557a2b65526262734a51666352556137716566656f317157496b3057483869545a724b494d4346344f532f416875776d473930485456586e384562356b72785a744b6b53564e5a42446744474576786a416974304d4f7a584d57362b4844745936354a55396e6e34435241666c725a4e5a7373432f593161644a5552674575394852365776722b4648634b5250507264454a41545a71636f66385859414270725877655965492f706741414141424a52553545726b4a6767673d3d, 'image/png', '1212aadhar_card_20210819181618.pdf', '1212pan_card20210819181618.pdf', 123, '123'),
(1313, 'asd', 'asdas', '', '0000-00-00', '', 1231231231, 'asdasd', 'asdasd', '123@sdf', '2021-08-27', '', '', '123', NULL, '', 'image/png', '1313aadhar_card_20210819181937.pdf', '1313pan_card20210819181937.pdf', 123, '123');

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
(2, '812', 'Mrs. Maktum Tabassum A.\r\n', 'Mrs. Maktum Tabassum A.\r\n', 'Dr. Lokesh B. Bhajantri\r\n', '', '', 'Behavior and Feedback based Trust Computation in Cloud Environment\r\n', 'Journal of King Saud University - Computer and Information Sciences\r\n', 'Article in press\r\n', 1, 'ISSN: 1319-1578\r\n', 'https://doi.org/10.1016/j.jksuci.2020.12.003', '0000-00-00', 'Assistant Professor', '', '0000-00-00', '', '', 'Basaveshwar Engineering College, Bagalkot\r\n', '3.5', '', 'Scopus\r\n', 0, 0, 0, 'NA', '', '', ''),
(4, '811', 'test  ', 'test   ', 'test   ', 'test   ', 'test   ', 'test   ', 'test   ', 'test   ', 50, 'test   ', 'test   ', '2021-07-02', 'test   ', 'test   ', '2021-07-09', 'test   ', 'test   ', 'test   ', 'test   ', 'test   ', 'test   ', 2, 500, 100, 'test   ', 'PhD', '', '');

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
(3, '482', 'Mrs. Bhoir Smita V.\r\n', 'Dr. Leena Ragha\r\n', '', '', '', 'Assistant Professor\r\n', '2020-10-16', 'Transcript System\r\n', '15968/2020-CO/SW\r\n', 'Published', 500, 0, '2021-03-24', '', '', ''),
(6, '007', 'test  ', 'test', 'test', 'test', 'test', 'test', '2021-07-17', 'test', 'test', 'test', 200, 50, '2021-07-01', 'PhD', '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_publication`
--
ALTER TABLE `book_publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
