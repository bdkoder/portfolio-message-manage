-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 01:22 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portfoliomessage`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `profession` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(150) NOT NULL,
  `repassword` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `fullName`, `profession`, `phone`, `country`, `email`, `password`, `repassword`, `date`) VALUES
(1, 'Shahidul Islam', 'Web Developer', '01793330005', 'Bangladesh', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3c124177af429715b7be5d31c9130f5b', '2018-01-25 14:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `portfoliomessage`
--

CREATE TABLE IF NOT EXISTS `portfoliomessage` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `text` varchar(1200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `viewstatus` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfoliomessage`
--

INSERT INTO `portfoliomessage` (`id`, `name`, `email`, `subject`, `text`, `date`, `viewstatus`) VALUES
(7, 'Shahidul', 'admin@gmail.com', 'subject', 'Want to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\nWant to discuss a project? Just fill in the form below and Iâ€™ll get back to you ASAP!\r\n\r\n', '2018-03-09 09:22:13', '1'),
(12, 't', 't@g.c', 'tt', 'tttttttttttttt', '2018-01-22 10:20:29', '1'),
(13, 'unseen', 'u@s.s', 'sss', 'hjhjkhs snjhnjhgg', '2018-01-22 10:35:58', '1'),
(14, 'n', 's.s@a.c', 'hh', 'hhh', '2018-01-22 11:46:39', '1'),
(15, 'number', 'number@f.c', 'v', 'numbernumbernumber', '2018-01-22 11:46:54', '1'),
(16, 'Chayon', 'c@c.c', 'Intt', 'Hello', '2018-03-03 09:48:22', '1'),
(17, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:35:24', '0'),
(18, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:44:37', '1'),
(19, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:30', '0'),
(20, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:34', '0'),
(21, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:38', '0'),
(22, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:42', '0'),
(23, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:45', '0'),
(24, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-09 09:37:48', '0'),
(25, 'Hanna', 'mdislam7770@gmail.com', 'ASAS', 'Hey, Iâ€™m a professional SEO Analyst & Programmer  with  four(4) years(+) of working experience. Expertise in SEO Analyst & Programmer Technologies. I have much experience of working on SEO & Programming.\r\n\r\nI build unique and affordable Web Apps for small to medium-sized businesses & also give Google first page Ranking. I always try to gain confidence and fame using my potentiality in the field of â€œSEO Analyst & Programmingâ€ and express my innovative creative skills for self and company growth.', '2018-03-14 09:14:52', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `portfoliomessage`
--
ALTER TABLE `portfoliomessage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `portfoliomessage`
--
ALTER TABLE `portfoliomessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
