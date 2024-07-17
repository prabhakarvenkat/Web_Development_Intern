-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 11:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `degree` varchar(15) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `age` varchar(2) NOT NULL,
  `college` varchar(60) NOT NULL,
  `state` varchar(25) NOT NULL,
  `department` varchar(60) NOT NULL,
  `yop` varchar(4) NOT NULL,
  `aoi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `gender`, `degree`, `dob`, `age`, `college`, `state`, `department`, `yop`, `aoi`) VALUES
(1, 'Sujitha Perumal', 'sujithaperumal3@gmail.com', 'c3VqaXRoYTEy', '9442582602', 'Female', 'B.E.', '1998-03-14', '21', 'Dr.Mahalingam college of Engineering and Technology', 'Tamil Nadu', 'Computer Science Engineering', '2019', 'Machine Learning'),
(2, 'kalpakha', 'kalpakha@gmail.com', 'a2FscGFraGExMg==', '9442490045', 'Female', '', '1997-11-07', '21', '', '', '', '', '');

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
