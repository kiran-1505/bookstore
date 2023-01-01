-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 07:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('Prathik', 'Admin123'),
('Rishika', 'Admin456');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `course_code` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `semesterid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`course_code`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `semesterid`) VALUES
('CS302', 'Computer Organization', 'Carl Hamacher', 'cs302.jpg', 'The sixth edition of this book covers the key topics in computer organization and embedded systems. It presents hardware design principles and shows how hardware design is influenced by the requirements of software. The book carefully explains the main principles supported by examples drawn from commercially available processors.\r\nThe book is suitable for undergraduate electrical and computer engineering majors and computer science specialists. It is intended for a first course in computer organization and embedded systems.', '99.00', 1),
('CS303', 'Data Principles & Applications', 'Donald P Leach', 'CS303.jpg', '\"Digital Principles and Applications, an authentic self-study textbook in the field of Digital Electronics, continues to build upon the concepts in lucid language, down-to-earth approach and ready-to-use information for laboratory exercises. The eighth edition has been revised extensively to enhance coverage on existing topics and examples.', '99.00', 1),
('CS304', 'Data Structures Using C', 'Reema Thereja', 'cs304.jpg', 'This second edition of Data Structures Using C has been developed to provide a comprehensive and consistent coverage of both the abstract concepts of data structures as well as the implementation of these concepts using C language.', '99.00', 1),
('CS305', 'Introduction to Automata Theory,Languages & Computation', 'John E. Hopcroft', 'cs305.jpg', 'Introduction To Automata Theory is a book on computer science and internet theories presented by writers John E. Hopcroft, Jeffrey D. Ullman, and Rajeev Motwani. This book can be considered as a standard on formal languages, the automata theory, and computational complications.', '99.00', 1),
('CS306', 'UNIX-concepts & Applications', 'Sumitabha Das', 'cs306.jpg', 'The Third Edition Incorporates Major Revisions, Moderate Additions, And Minor Deletions. It Focuses On The Two Major Versions Of Unix - Solaris And Linux. The Two-Part Structure Od The Previous Edition Has Been Maintained. The Fundamental Aspects Of The System Are Covered In Part I, Whereas The Intermediate And Advances Concepts Are Explained In Part Ii. Salient Features : Two New Chapters On Unix Systems Programming - The File And Process Control. Complete Chapter Devoted To Tcp/Ip Network Of Administration. Enhanced Coverage On Linux. Updated Coverage On The Internaet And The Http Protocol. End-Of-Chapter Questions Grouped Under Test Your Understanding With Answers In Appendix C And Flex Your Brain. Also Conforms To The Latest Revised Doeacca Level Syllabus Effective July 2003.', '99.00', 1),
('CS403', 'Java The Complete Reference', 'Herbert Schildt', 'cs503.jpg', 'In Java: The Complete Reference, Eighth Edition, bestselling programming author Herb Schildt shows you everything you need to develop, compile, debug, and run Java programs. Updated for Java Platform, Standard Edition 7 (Java SE 7), this comprehensive volume covers the entire Java language, including its syntax, keywords, and fundamental programming principles.', '99.00', 2),
('CS404', 'Introduction To  The Design & Analysis of Algorithms', 'Anany Levitin', 'cs404.jpg', 'Introduction to the Design and Analysis of Algorithms presents the subject in a coherent and innovative manner. Written in a student-friendly style, the book emphasizes the understanding of ideas over excessively formal treatment while thoroughly covering the material required in an introductory algorithms course. Popular puzzles are used to motivate students\' interest and strengthen their skills in algorithmic problem solving.', '99.00', 2),
('CS405', 'ARM System Developers guide', 'Andrew N Sloss', 'cs405.jpg', 'This book provides a comprehensive description of the operation of the ARM core from a developer\'s perspective with a clear emphasis on software. It demonstrates not only how to write efficient ARM software in C and assembly but also how to optimize code. Example code throughout the book can be integrated into commercial products or used as templates to enable quick creation of productive software.', '99.00', 2),
('CS406', 'Software Engineering', 'ian Sommerville', 'cs406.jpg', 'The ninth edition of Software Engineering presents a broad perspective of software engineering, focusing on the processes and techniques fundamental to the creation of reliable, software systems. Increased coverage of agile methods and software reuse, along with coverage of \'traditional\' plan-driven software engineering, gives readers the most up-to-date view of the field currently available.', '99.00', 2),
('CS501', 'Management & Entrepreneurship', 'N.V.R. Naidu', 'cs501.jpg', 'This book is intended to serve as a textbook for Engineering and Management courses. It seeks to develop an understanding of the concepts of management and entrepreneurship. The chapters are well planned to cover basic functions of management and entrepreneurship, small scale industry, institutional support and project preparation.', '199.00', 3),
('CS502', 'Operating System Principles', 'Greg Gagne', 'cs502.jpg', 'This market-leading book provides developers with the latest and most relevant information on today’s operating systems. In addition, it uncovers the fundamental concepts that have remained constant throughout the evolution of those systems. The eighth edition adds simulation content throughout the pages along with new programming projects.', '199.00', 3),
('CS503', 'Data Communications & Networking', 'Behrouz A Forouzan', 'cs5033.jpg', 'Data Communications and Networking, 5th Edition\r\nis designed to help students understand the basics of data \r\ncommunications and networking, and the protocols used in the Internet in\r\nparticular by using the protocol layering of the Internet and TCP/IP \r\nprotocol suite. Technologies related to data communication and \r\nnetworking may be the fastest growing in today\'s culture.', '199.00', 3),
('CS504', 'Programming the WWW', 'Robert W Sebesta', 'cs504.jfif', 'Programming the World Wide Web¿is intended for undergraduate students who have completed a course in object-oriented programming. It also serves as an up-to-date reference for Web programming professionals.', '199.00', 3),
('CS506', 'Database Management Systems', 'Raghu Ramakrishna', 'cs506.jpeg', 'Database Management Systems, known for its practical emphasis and comprehensive coverage, has quickly become one of the leading texts for database courses. The third edition features new material on database application development, with a focus on Internet applications.', '199.00', 3),
('CS601', 'Introduction To System Programming', 'Leland Beck', 'cs601.jpg', 'This text is an introduction to the design and implementation of various types of system software. A central theme of the book is the relationship between machine architecture and systems software.', '199.00', 4),
('CS701', 'Machine Learning', 'Tom M', 'cs701.jpg', 'This book covers the field of machine learning, which is the study of algorithms that allow computer programs to automatically improve through experience. The book is intended to support upper level undergraduate and introductory level graduate courses in machine learning.', '299.00', 5),
('CS803', 'Software Architecture in Practice', 'Len Bass', 'cs803.jpg', 'The core book in SEI\'s influential architecture curriculum, this book introduces software architecture both for practicing software engineers and for students pursuing careers in software design or management. It combines the authority of SEI\'s pioneering curriculum with the proven pedagogical effectiveness of a book that\'s been used for many years in countless training and college courses.', '299.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'Prathik', 'Chitpady', 'Udupi', '576101', 'India'),
(2, 'Rishika', 'MG road', 'Gabba', '261909', 'Australia'),
(3, 'Virat', 'Gandhiroad', 'Dehli', '2839', 'India'),
(5, 'Ramya', 'mg road', 'shimogga', '573233', 'india'),
(6, 'vinamrahg', 'mg road', 'chikmaglur', '573233', 'india'),
(7, 'tuna', '123-asd', 'new york', '12121', 'america'),
(8, 'Krishna', 'kolarnagar', 'bnglr', '121211', 'india'),
(9, 'sam', 'kolarnagar', 'new york', '121211', 'america'),
(10, 'Krishna', 'mce hostel', 'HASSAN', '573202', 'India'),
(11, 'Shreyas N', 'mce hostel', 'HASSAN', '573202', 'India'),
(12, 'Vinamra', 'Modi road', 'Gotham', '573233', 'India'),
(13, 'Ramya', '13831 Calvert Street', 'Van Nuys', '91406', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(11, 10, '99.00', '2021-01-23 00:31:11', 'Krishna', 'mce hostel', 'HASSAN', '573202', 'India'),
(12, 11, '198.00', '2021-01-23 00:33:48', 'Shreyas N', 'mce hostel', 'HASSAN', '573202', 'India'),
(13, 12, '297.00', '2021-01-23 00:36:17', 'Vinamra', 'Modi road', 'Gotham', '573233', 'India'),
(14, 13, '497.00', '2021-01-23 00:41:16', 'Ramya', '13831 Calvert Street', 'Van Nuys', '91406', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `course_code`, `item_price`, `quantity`) VALUES
(11, 'CS302', '99.00', 1),
(12, 'CS304', '99.00', 2),
(13, 'CS305', '99.00', 1),
(13, 'CS404', '99.00', 1),
(13, 'CS403', '99.00', 1),
(14, 'CS701', '299.00', 1),
(14, 'CS306', '99.00', 1),
(14, 'CS405', '99.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semesterid` int(10) UNSIGNED NOT NULL,
  `semester_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semesterid`, `semester_name`) VALUES
(1, '3rd Sem'),
(2, '4th Sem'),
(3, '5th Sem'),
(4, '6th Sem'),
(5, '7th Sem'),
(6, '8th Sem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semesterid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semesterid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
