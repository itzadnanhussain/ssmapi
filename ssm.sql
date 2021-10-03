-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 07:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `screenshotdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `clientName` varchar(55) NOT NULL,
  `companyId` int(11) NOT NULL,
  `month_limit` int(11) NOT NULL,
  `client_email` varchar(100) NOT NULL DEFAULT 'No Email',
  `ssm_id` varchar(150) NOT NULL,
  `flag25` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag50` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag75` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag100` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `client_status` enum('active','inactive','','') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `clientId`, `clientName`, `companyId`, `month_limit`, `client_email`, `ssm_id`, `flag25`, `flag50`, `flag75`, `flag100`, `client_status`) VALUES
(1, 5179, 'Orangehat', 0, 80, 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapp', '52033l664d7349b4d71e273adbd19e2197745f', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(2, 5231, 'XeroMedia Web', 0, 40, 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersappro', '52033l664d7349b4d71e273adbd19e2197745f', 'inactive', 'inactive', 'inactive', 'active', 'inactive'),
(3, 5499, 'Early Charm', 0, 20, 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapp', '52033l664d7349b4d71e273adbd19e2197745f', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(4, 5502, 'FA Internal', 0, 450, 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', '52033l664d7349b4d71e273adbd19e2197745f', 'inactive', 'inactive', 'active', 'inactive', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `cronjob`
--

CREATE TABLE `cronjob` (
  `id` int(11) NOT NULL,
  `execute_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cronjob`
--

INSERT INTO `cronjob` (`id`, `execute_time`) VALUES
(1, '2021-05-03 12:48:AM');

-- --------------------------------------------------------

--
-- Table structure for table `custom-range`
--

CREATE TABLE `custom-range` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(100) DEFAULT NULL,
  `project_id` varchar(100) DEFAULT NULL,
  `emplId` int(11) DEFAULT NULL,
  `total_work` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom-range`
--

INSERT INTO `custom-range` (`id`, `ssm_id`, `project_id`, `emplId`, `total_work`, `created_at`) VALUES
(2885, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103565, '6.59', '2021-04-27 20:18:35'),
(2886, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103565, '1.12', '2021-04-27 20:18:35'),
(2887, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 103566, '3.43', '2021-04-27 20:18:35'),
(2888, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103566, '2.98', '2021-04-27 20:18:35'),
(2889, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103566, '2.06', '2021-04-27 20:18:35'),
(2890, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103567, '1.39', '2021-04-27 20:18:36'),
(2891, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 103567, '0.12', '2021-04-27 20:18:36'),
(2892, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103567, '0.2', '2021-04-27 20:18:36'),
(2893, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103567, '0.2', '2021-04-27 20:18:36'),
(2894, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103567, '0.19', '2021-04-27 20:18:36'),
(2895, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 113574, '5.68', '2021-04-27 20:18:36'),
(2896, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 113574, '1.5', '2021-04-27 20:18:36'),
(2897, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 113574, '0.92', '2021-04-27 20:18:36'),
(2898, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, '1.57', '2021-04-27 20:18:37'),
(2899, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, '0.61', '2021-04-27 20:18:37'),
(2900, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 117079, '2.78', '2021-04-27 20:18:37'),
(2901, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, '0.35', '2021-04-27 20:18:37'),
(2902, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, '0.86', '2021-04-27 20:18:37'),
(2903, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, '0.32', '2021-04-27 20:18:37'),
(2904, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, '0.52', '2021-04-27 20:18:37'),
(2905, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, '0.38', '2021-04-27 20:18:37'),
(2906, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, '2.61', '2021-04-27 20:18:38'),
(2907, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 126042, '4.6', '2021-04-27 20:18:38'),
(2908, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 126042, '1.12', '2021-04-27 20:18:38'),
(2909, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 142280, '1.1', '2021-04-27 20:18:39'),
(2910, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 142280, '0.54', '2021-04-27 20:18:39'),
(2911, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 148355, '0.48', '2021-04-27 20:18:41'),
(2912, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 148355, '0.9', '2021-04-27 20:18:41'),
(2913, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 148355, '0.57', '2021-04-27 20:18:41'),
(2914, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 148355, '0.5', '2021-04-27 20:18:41'),
(2915, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 148355, '0.68', '2021-04-27 20:18:41'),
(2916, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 148355, '0.08', '2021-04-27 20:18:41'),
(2917, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 148355, '0.98', '2021-04-27 20:18:41'),
(2918, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 172662, '2.34', '2021-04-27 20:18:42'),
(2919, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 172662, '0.83', '2021-04-27 20:18:42'),
(2920, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 172662, '2.39', '2021-04-27 20:18:42'),
(2921, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 175931, '0.45', '2021-04-27 20:18:43'),
(2922, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 175931, '5.04', '2021-04-27 20:18:43'),
(2923, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 175931, '0.32', '2021-04-27 20:18:43'),
(2924, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 177614, '9.35', '2021-04-27 20:18:43'),
(2925, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 185014, '1.99', '2021-04-27 20:18:43'),
(2926, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 187456, '7.67', '2021-04-27 20:18:44'),
(2927, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 190892, '2', '2021-04-27 20:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(255) DEFAULT NULL,
  `emplId` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `ssm_id`, `emplId`, `name`, `email`) VALUES
(1, '52033l664d7349b4d71e273adbd19e2197745f', 103434, 'Dave Phelan', 'support@foundersapproach.com'),
(2, '52033l664d7349b4d71e273adbd19e2197745f', 103565, 'Parth', 'parth@foundersapproach.com'),
(3, '52033l664d7349b4d71e273adbd19e2197745f', 103566, 'Divyesh', 'divyesh@foundersapproach.com'),
(4, '52033l664d7349b4d71e273adbd19e2197745f', 103567, 'Neil Patel', 'neil@foundersapproach.com'),
(5, '52033l664d7349b4d71e273adbd19e2197745f', 113574, 'Chirag Bavda', 'chiragbavda93@gmail.com'),
(6, '52033l664d7349b4d71e273adbd19e2197745f', 117079, 'Cole Barger', 'cole@foundersapproach.com'),
(7, '52033l664d7349b4d71e273adbd19e2197745f', 117080, 'Jermaine Dory', 'jermaine@foundersapproach.com'),
(8, '52033l664d7349b4d71e273adbd19e2197745f', 126042, 'Philip DiMuro', 'phil@foundersapproach.com'),
(9, '52033l664d7349b4d71e273adbd19e2197745f', 127835, 'Arvind Verma', 'arvind@foundersapproach.com'),
(10, '52033l664d7349b4d71e273adbd19e2197745f', 128167, 'Jasmine Edwards', 'centralhausofjas@gmail.com'),
(11, '52033l664d7349b4d71e273adbd19e2197745f', 128171, 'Marvin Moore', 'mmoore0383@comcast.net'),
(12, '52033l664d7349b4d71e273adbd19e2197745f', 142280, 'Kat Haladus', 'va.kat.haladus@gmail.com'),
(13, '52033l664d7349b4d71e273adbd19e2197745f', 147056, 'Tushar Sanjay Patil', 'patil.tushar2313@gmail.com'),
(14, '52033l664d7349b4d71e273adbd19e2197745f', 147071, 'Praveena', 'praveena.designersden@gmail.com'),
(15, '52033l664d7349b4d71e273adbd19e2197745f', 147971, 'Harpreet Singh', 'happy27387@gmail.com'),
(16, '52033l664d7349b4d71e273adbd19e2197745f', 148355, 'Tushar', 'tushar@foundersapproach.com'),
(17, '52033l664d7349b4d71e273adbd19e2197745f', 162422, 'Femi Gbangbalasa', 'femi@foundersapproach.com'),
(18, '52033l664d7349b4d71e273adbd19e2197745f', 162732, 'Dipak', 'ddpatil6609@gmail.com'),
(19, '52033l664d7349b4d71e273adbd19e2197745f', 172662, 'Hunter Campbell', 'hunter@foundersapproach.com'),
(20, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 93585, 'Dave Phelan', 'dave@foundersapproach.com'),
(21, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104318, 'Kirti', 'ku@narola.email'),
(22, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104320, 'Hiren Danecha', 'hiren@foundersapproach.com'),
(23, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104321, 'Milan', 'milan@foundersapproach.com'),
(24, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104725, 'Gavan Depani', 'gde@narola.email'),
(25, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104726, 'Yagnesh', 'ypi@narola.email'),
(26, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104727, 'Ravina Gandhi', 'rga@narola.email'),
(27, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 104737, 'Milan Paladiya', 'mpa@narola.email'),
(28, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 105057, 'Paresh Markana', 'pam@narola.email'),
(29, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106327, 'Pathan Fezalkhan', 'fap@narola.email'),
(30, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106726, 'dma narola', 'dma@narola.email'),
(31, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106728, 'Raj Shah', 'rsh@narola.email'),
(32, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106896, 'Hariom', 'ho@narola.email'),
(33, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106898, 'Rohan Mali', 'rm@narola.email'),
(34, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 106899, 'Dhaval', 'dha@narola.email'),
(35, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 109593, 'Avdhesh Solanki', 'ass@narola.email'),
(36, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 111434, 'Vishnu Narola', 'vn@narola.email'),
(37, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 111449, 'vj', 'vj@narola.email'),
(38, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 111518, 'Rvr Narola', 'rvr@narola.email'),
(39, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 114172, 'Sapna Vaghela', 'sva@narola.email'),
(40, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 116045, 'Praful Argiddi', 'pa@narola.email'),
(41, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 116046, 'Praful Parmar', 'psp@narola.email'),
(42, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 117067, 'Arjun Jagtap', 'arj@narola.email'),
(43, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 123499, 'Niket Joshi', 'nbj@narola.email'),
(44, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 123501, 'Kesha Kapadia', 'kek@narola.email'),
(45, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 125677, 'Ankita Misal', 'aam@narola.email'),
(46, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 125753, 'Mansi', 'mm@narola.email'),
(47, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 126003, 'Krishna N Parekh', 'kpk@narola.email'),
(48, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 126497, 'Cole Barger', 'cole@foundersapproach.com'),
(49, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 126498, 'Philip DiMuro', 'phil@foundersapproach.com'),
(50, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 126752, 'Neil Patel', 'neil@foundersapproach.com'),
(51, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 127786, 'Akshay Patel', 'apa@narola.email'),
(52, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 128389, 'Marvin Moore', 'mmoore0383@comcast.net'),
(53, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 128391, 'Jasmine Edwards', 'centralhausofjas@gmail.com'),
(54, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 136997, 'Akash Patel', 'amp@narola.email'),
(55, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 144796, 'Kat Haladus', 'va.kat.haladus@gmail.com'),
(56, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 148270, 'Tushar', 'tushar@foundersapproach.com'),
(57, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 150621, 'Neelima Chaudhary', 'nc@narola.email'),
(58, '52033l664d7349b4d71e273adbd19e2197745f', 175931, 'Muhammad Shaoor', 'shaoor@foundersapproach.com'),
(59, '52033l664d7349b4d71e273adbd19e2197745f', 177614, 'Lokesh', 'lokesh@foundersapproach.com'),
(60, '52033l664d7349b4d71e273adbd19e2197745f', 185014, 'Mansi Modi', 'mansimodi2019@gmail.com'),
(61, '52033l664d7349b4d71e273adbd19e2197745f', 185015, 'Hiren Danecha', 'hirendanecha@gmail.com'),
(62, '52033l664d7349b4d71e273adbd19e2197745f', 187456, 'Ravina', 'gandhiravina14@gmail.com'),
(63, '52033l664d7349b4d71e273adbd19e2197745f', 190892, 'Pankaj Sonvane', 'pankaj21898@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `roll` enum('Admin','User','','') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `roll`, `date`) VALUES
(1, 'admin@test.com', '$2y$10$Cq1eXoO2QVIkfWRkTls3.OBBEdk2Yb/c8qnYmZDTCwYVirkzFgyNO', 'Admin', '0000-00-00 00:00:00'),
(7, 'phil@foundersapproach.com', '$2y$10$mudeZLDtA5Qmod76xDxx0..FZIrxIFSa1MoR34s/E86/rFTGD7qui', 'Admin', '2021-04-29 17:23:11'),
(8, 'dave@foundersapproach.com', '$2y$10$RTw0yjME3FHN4q1FpoCTiOY/.9J4Z8HJooR3V4gQ1ASJNZCxGfkUi', 'Admin', '2021-04-29 17:24:11'),
(9, 'cole@foundersapproach.com', '$2y$10$2ROFME5F252nCaDLHpwwR.LLU59UvFZVuoey5V75BWpCwkRTQmujG', 'Admin', '2021-04-29 17:24:38'),
(10, 'hunter@foundersapproach.com', '$2y$10$1hOMQXQ.0oTHTAiWXYtrIOHiUujWMpjC5Y0B2b/BiJIvo/6MzkjdO', 'Admin', '2021-04-29 17:24:54'),
(11, 'kat@foundersapproach.com', '$2y$10$Tcq3MivDGd6o2X8XugDnHux.fRgVbBmBz.GBO6XnAgDvnBMvCM3S.', 'Admin', '2021-04-29 17:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `ssm_id` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `manager_id`, `ssm_id`, `count`, `email`, `time`) VALUES
(1, 111434, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 1, '', '2021-02-01 16:10:36'),
(2, 117079, '52033l664d7349b4d71e273adbd19e2197745f', 17, '', '2021-04-27 19:45:06'),
(3, 126042, '52033l664d7349b4d71e273adbd19e2197745f', 6, '', '2021-04-28 13:56:01'),
(4, 172662, '52033l664d7349b4d71e273adbd19e2197745f', 2, '', '2021-04-28 20:20:45'),
(5, 142280, '52033l664d7349b4d71e273adbd19e2197745f', 4, '', '2021-04-28 20:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `month_limit`
--

CREATE TABLE `month_limit` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) NOT NULL,
  `emplId` int(11) NOT NULL,
  `total_work_hours` varchar(50) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month_limit`
--

INSERT INTO `month_limit` (`id`, `ssm_id`, `project_id`, `emplId`, `total_work_hours`, `update_time`) VALUES
(11137, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 103565, '69.58', '2021-04-30 17:00:05'),
(11138, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103565, '60.76', '2021-04-30 17:00:05'),
(11139, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103565, '19.76', '2021-04-30 17:00:05'),
(11140, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103565, '7.04', '2021-04-30 17:00:05'),
(11141, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103565, '3.91', '2021-04-30 17:00:05'),
(11142, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 103566, '66.34', '2021-04-30 17:00:07'),
(11143, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103566, '1.23', '2021-04-30 17:00:07'),
(11144, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103566, '5.39', '2021-04-30 17:00:07'),
(11145, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103566, '8.68', '2021-04-30 17:00:07'),
(11146, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 103566, '7.24', '2021-04-30 17:00:07'),
(11147, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103566, '6.18', '2021-04-30 17:00:07'),
(11148, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 103566, '19.29', '2021-04-30 17:00:07'),
(11149, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 103566, '16.5', '2021-04-30 17:00:07'),
(11150, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 103566, '10.86', '2021-04-30 17:00:07'),
(11151, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103566, '18.27', '2021-04-30 17:00:07'),
(11152, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103566, '3.58', '2021-04-30 17:00:07'),
(11153, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 103566, '2.77', '2021-04-30 17:00:07'),
(11154, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103566, '2.55', '2021-04-30 17:00:07'),
(11155, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 103566, '0.87', '2021-04-30 17:00:07'),
(11156, '52033l664d7349b4d71e273adbd19e2197745f', '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 103566, '1.12', '2021-04-30 17:00:07'),
(11157, '52033l664d7349b4d71e273adbd19e2197745f', '', 103566, '0.78', '2021-04-30 17:00:07'),
(11158, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103566, '0.77', '2021-04-30 17:00:07'),
(11159, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103566, '0.37', '2021-04-30 17:00:07'),
(11160, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 103566, '2.45', '2021-04-30 17:00:07'),
(11161, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 103566, '0.08', '2021-04-30 17:00:07'),
(11162, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103566, '0.6', '2021-04-30 17:00:07'),
(11163, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 103567, '0.2', '2021-04-30 17:00:08'),
(11164, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 103567, '0.76', '2021-04-30 17:00:08'),
(11165, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103567, '17.98', '2021-04-30 17:00:08'),
(11166, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103567, '0.45', '2021-04-30 17:00:08'),
(11167, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103567, '1.46', '2021-04-30 17:00:08'),
(11168, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103567, '0.23', '2021-04-30 17:00:08'),
(11169, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 103567, '0.18', '2021-04-30 17:00:08'),
(11170, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 103567, '3.52', '2021-04-30 17:00:08'),
(11171, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103567, '1.29', '2021-04-30 17:00:08'),
(11172, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103567, '1.26', '2021-04-30 17:00:08'),
(11173, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 103567, '0.32', '2021-04-30 17:00:08'),
(11174, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 103567, '0.4', '2021-04-30 17:00:08'),
(11175, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103567, '0.33', '2021-04-30 17:00:08'),
(11176, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103567, '0.38', '2021-04-30 17:00:08'),
(11177, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 103567, '0.65', '2021-04-30 17:00:08'),
(11178, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 103567, '0.4', '2021-04-30 17:00:08'),
(11179, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103567, '0.28', '2021-04-30 17:00:08'),
(11180, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103567, '0.2', '2021-04-30 17:00:08'),
(11181, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 103567, '0.65', '2021-04-30 17:00:08'),
(11182, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 103567, '0.18', '2021-04-30 17:00:08'),
(11183, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 103567, '0.12', '2021-04-30 17:00:08'),
(11184, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103567, '0.19', '2021-04-30 17:00:08'),
(11185, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 103567, '0.5', '2021-04-30 17:00:08'),
(11186, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 103567, '0.5', '2021-04-30 17:00:08'),
(11187, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103567, '0.26', '2021-04-30 17:00:08'),
(11188, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 103567, '0.18', '2021-04-30 17:00:08'),
(11189, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 103567, '0.25', '2021-04-30 17:00:08'),
(11190, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 113574, '5.11', '2021-04-30 17:00:10'),
(11191, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 113574, '45.87', '2021-04-30 17:00:10'),
(11192, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 113574, '12.83', '2021-04-30 17:00:10'),
(11193, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 113574, '32.49', '2021-04-30 17:00:10'),
(11194, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 113574, '3.95', '2021-04-30 17:00:10'),
(11195, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 113574, '0.5', '2021-04-30 17:00:10'),
(11196, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 113574, '14.32', '2021-04-30 17:00:10'),
(11197, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 113574, '5.41', '2021-04-30 17:00:10'),
(11198, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 113574, '14.24', '2021-04-30 17:00:10'),
(11199, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 113574, '11.67', '2021-04-30 17:00:10'),
(11200, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 113574, '2.33', '2021-04-30 17:00:10'),
(11201, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 113574, '14.75', '2021-04-30 17:00:10'),
(11202, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 113574, '2.04', '2021-04-30 17:00:10'),
(11203, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 113574, '0.47', '2021-04-30 17:00:10'),
(11204, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 113574, '0.57', '2021-04-30 17:00:10'),
(11205, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 113574, '2.08', '2021-04-30 17:00:10'),
(11206, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 117079, '63.83', '2021-04-30 17:00:12'),
(11207, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, '8.96', '2021-04-30 17:00:12'),
(11208, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, '27.45', '2021-04-30 17:00:12'),
(11209, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, '1.94', '2021-04-30 17:00:12'),
(11210, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 117079, '8.17', '2021-04-30 17:00:12'),
(11211, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, '5.8', '2021-04-30 17:00:12'),
(11212, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, '0.78', '2021-04-30 17:00:12'),
(11213, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 117079, '0.24', '2021-04-30 17:00:12'),
(11214, '52033l664d7349b4d71e273adbd19e2197745f', '91913915-16b8-b403-f35a-c19d7d44252f', 117079, '5.79', '2021-04-30 17:00:12'),
(11215, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, '5.34', '2021-04-30 17:00:12'),
(11216, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 117079, '1.35', '2021-04-30 17:00:12'),
(11217, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 117079, '0.22', '2021-04-30 17:00:12'),
(11218, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, '3.18', '2021-04-30 17:00:12'),
(11219, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 117079, '2.08', '2021-04-30 17:00:12'),
(11220, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 117079, '0.5', '2021-04-30 17:00:12'),
(11221, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 117079, '0.3', '2021-04-30 17:00:12'),
(11222, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 117079, '0.25', '2021-04-30 17:00:12'),
(11223, '52033l664d7349b4d71e273adbd19e2197745f', 'f1660824-5f01-5de5-2a27-ba30b2f195c5', 126042, '10.68', '2021-04-30 17:00:15'),
(11224, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 126042, '41.15', '2021-04-30 17:00:15'),
(11225, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 126042, '21.84', '2021-04-30 17:00:15'),
(11226, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 126042, '12.13', '2021-04-30 17:00:15'),
(11227, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 126042, '3.5', '2021-04-30 17:00:15'),
(11228, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 126042, '1.56', '2021-04-30 17:00:15'),
(11229, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, '4.35', '2021-04-30 17:00:15'),
(11230, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 126042, '0.23', '2021-04-30 17:00:15'),
(11231, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 126042, '1.95', '2021-04-30 17:00:15'),
(11232, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 126042, '0.27', '2021-04-30 17:00:15'),
(11233, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 126042, '0.83', '2021-04-30 17:00:15'),
(11234, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 142280, '3.65', '2021-04-30 17:00:20'),
(11235, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 142280, '0.25', '2021-04-30 17:00:20'),
(11236, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 142280, '22.74', '2021-04-30 17:00:20'),
(11237, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 142280, '19.39', '2021-04-30 17:00:20'),
(11238, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 142280, '2.53', '2021-04-30 17:00:20'),
(11239, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 142280, '1.13', '2021-04-30 17:00:20'),
(11240, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 142280, '0.55', '2021-04-30 17:00:20'),
(11241, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 148355, '2.41', '2021-04-30 17:00:26'),
(11242, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 148355, '2.69', '2021-04-30 17:00:26'),
(11243, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 148355, '1.27', '2021-04-30 17:00:26'),
(11244, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 148355, '22.26', '2021-04-30 17:00:26'),
(11245, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 148355, '12.37', '2021-04-30 17:00:26'),
(11246, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 148355, '4.28', '2021-04-30 17:00:26'),
(11247, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 148355, '6.52', '2021-04-30 17:00:26'),
(11248, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 148355, '5.72', '2021-04-30 17:00:26'),
(11249, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 148355, '9', '2021-04-30 17:00:26'),
(11250, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 148355, '6.08', '2021-04-30 17:00:26'),
(11251, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 148355, '1.68', '2021-04-30 17:00:26'),
(11252, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 148355, '1.14', '2021-04-30 17:00:26'),
(11253, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 148355, '1.24', '2021-04-30 17:00:26'),
(11254, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 148355, '0.48', '2021-04-30 17:00:26'),
(11255, '52033l664d7349b4d71e273adbd19e2197745f', '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 148355, '0.21', '2021-04-30 17:00:26'),
(11256, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 148355, '6.92', '2021-04-30 17:00:26'),
(11257, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 148355, '1.65', '2021-04-30 17:00:26'),
(11258, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 148355, '1.43', '2021-04-30 17:00:26'),
(11259, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 148355, '1.41', '2021-04-30 17:00:26'),
(11260, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 148355, '1.58', '2021-04-30 17:00:26'),
(11261, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 162732, '12.72', '2021-04-30 17:00:29'),
(11262, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 162732, '7.68', '2021-04-30 17:00:29'),
(11263, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 162732, '9.95', '2021-04-30 17:00:29'),
(11264, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 162732, '4.87', '2021-04-30 17:00:29'),
(11265, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 162732, '0.85', '2021-04-30 17:00:29'),
(11266, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 162732, '1.43', '2021-04-30 17:00:29'),
(11267, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 162732, '0.08', '2021-04-30 17:00:29'),
(11268, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 162732, '0.4', '2021-04-30 17:00:29'),
(11269, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 172662, '33.44', '2021-04-30 17:00:31'),
(11270, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 172662, '27.92', '2021-04-30 17:00:31'),
(11271, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 172662, '4.72', '2021-04-30 17:00:31'),
(11272, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 172662, '1.98', '2021-04-30 17:00:31'),
(11273, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 172662, '0.17', '2021-04-30 17:00:31'),
(11274, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 175931, '12.47', '2021-04-30 17:00:32'),
(11275, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 175931, '69.42', '2021-04-30 17:00:32'),
(11276, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 175931, '37.86', '2021-04-30 17:00:32'),
(11277, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 175931, '21.4', '2021-04-30 17:00:32'),
(11278, '52033l664d7349b4d71e273adbd19e2197745f', '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 175931, '8.9', '2021-04-30 17:00:32'),
(11279, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 175931, '7.35', '2021-04-30 17:00:32'),
(11280, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 175931, '0.18', '2021-04-30 17:00:32'),
(11281, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 177614, '59.78', '2021-04-30 17:00:34'),
(11282, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 177614, '119.59', '2021-04-30 17:00:34'),
(11283, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 177614, '1.66', '2021-04-30 17:00:34'),
(11284, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 185014, '104.66', '2021-04-30 17:00:35'),
(11285, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 187456, '148.08', '2021-04-30 17:00:38'),
(11286, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 190892, '14.59', '2021-04-30 17:00:39'),
(11287, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 190892, '17.83', '2021-04-30 17:00:39'),
(11288, '52033l664d7349b4d71e273adbd19e2197745f', '', 190892, '4.9', '2021-04-30 17:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `notes_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `ssm_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`notes_id`, `employee_id`, `ssm_id`, `project_id`, `notes`, `time`) VALUES
(1, 103434, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 'test Notes One', 1611307218),
(2, 103565, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 'test test test test', 1612186941),
(3, 113574, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 'test Note Two', 1612195382),
(4, 103566, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 'This is a test notes .', 1612416592);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `project_type` enum('Fixed','DNE') NOT NULL DEFAULT 'DNE',
  `ssm_id` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `endDate` int(11) DEFAULT NULL,
  `billed_hours` int(11) NOT NULL DEFAULT 0,
  `billed` enum('true','false') NOT NULL DEFAULT 'false',
  `emails` varchar(250) NOT NULL DEFAULT 'No Emails',
  `month_name` varchar(50) NOT NULL DEFAULT 'No Name',
  `week_limit` int(11) DEFAULT 0,
  `total_work_by_week` varchar(50) DEFAULT '0',
  `month_limit` varchar(22) NOT NULL DEFAULT '0',
  `total_work_by_month` double NOT NULL DEFAULT 0,
  `total_limit` int(11) NOT NULL,
  `total_work` int(11) NOT NULL,
  `custom_hours` varchar(30) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `week_flag25` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `week_flag50` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `week_flag75` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `week_flag100` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag25` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag50` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag75` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag100` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag125` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag150` enum('inactive','active','','') NOT NULL DEFAULT 'inactive',
  `status` enum('active','inactive','','') NOT NULL DEFAULT 'active',
  `pm_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `project_type_status` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `week_limit`, `total_work_by_week`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `custom_hours`, `update_time`, `week_flag25`, `week_flag50`, `week_flag75`, `week_flag100`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`) VALUES
(2, '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MSCRF Mobile App', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '5', 0, 0, 268, '0', '2021-01-11 06:26:54', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(4, 'd8d928a3-1d2e-0292-cbaa-077389160922', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Wifi', '#16D620', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, shaoor@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 191, '0', '2021-01-11 06:26:54', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(6, '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TEC(Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 70, '0', '2021-01-11 06:26:54', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(8, 'a41cae05-da51-443f-8262-11dccd670a19', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Sales', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0.5', '0', 0, 0, 207, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(10, '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Go working space website', '#66AA00', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 68, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(11, 'b78ad6ad-30d8-2f28-f153-1891b807febb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Keystone (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 67, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(12, '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat (General)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '1', '0', 0, 0, 42, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(13, 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tranquility (Orangehat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 11, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(14, 'ecef0716-344a-73be-a6d9-1cb785211872', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SimplyScouted Website', '#B82E2E', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 33, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(18, '7943dc6b-e582-6542-809d-2129e11a4831', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Training', '#329262', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 1065, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(19, '5053acdb-3032-4e91-38a6-233a09d3e762', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CVP (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 3, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(20, '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bvudzi website', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 170, '0', '2021-01-11 06:26:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(25, 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SendMe Missionary App', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 470, '0', '2021-01-11 06:26:56', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active'),
(26, 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Charm It (Orangehat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 9, '0', '2021-01-11 06:26:56', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(30, '8005e28c-798b-1426-ec81-30a4b0d13189', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Early Charm (General)', '#8B0707', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '7.33', '0', 0, 0, 677, '0', '2021-01-11 06:26:56', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(31, 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Audience.co', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '4.95', '80', 0, 0, 1794, '3.26', '2021-01-11 06:26:56', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(32, 'c04794f5-9835-6784-5f98-35e750a4a007', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStory', '#329262', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '4.23', '20', 0, 0, 261, '0.88', '2021-01-11 06:26:56', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(33, '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Trysail website', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 61, '0', '2021-01-11 06:26:57', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(37, 'd6c79194-9161-d34d-4854-3a6483f2bec7', 172662, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatorWebsite', '#329262', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '8.37', '60', 0, 60, 185, '5.12', '2021-01-11 06:26:59', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(38, '9d6ad43f-5363-dba3-2050-3afd115ff19e', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'ARK', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0.11', '10', 0, 0, 127, '0', '2021-01-11 06:26:59', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(39, '45b538f7-d6a2-42aa-eced-3c48729911cb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'JohnPaoletti.com  (XeroMedia)', '#5574A6', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 9, '0', '2021-01-11 06:26:59', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(40, '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Design B&B (OrangeHat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 100, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(42, '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Talk to Travelers', '#8B0707', 5502, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 40, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(44, '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Maroon PR Jubilie (Orange Hat)', '#16D620', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 170, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(45, '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'H2H', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 95, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(48, '9fce2b8f-c046-6834-d227-4be7ad887200', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cal Ripken (Orangehat)', '#651067', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 29, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(49, '66396a22-1708-3e19-822a-4cea505ebcc7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'House of Ruth (Orangehat)', '#AAAA11', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 74, '0', '2021-01-11 06:27:00', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(53, '42aa6549-66d9-dcea-7afe-58877063b993', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cricket Flats (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 39, '0', '2021-01-11 06:27:01', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(54, 'ff154844-279e-a8e3-1e45-5a014cea9670', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Walla Walla (Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 14, '0', '2021-01-11 06:27:01', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(55, '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Baseline Motion', '#990099', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, hunter@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, shaoor@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 580, '0', '2021-01-11 06:27:01', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active'),
(57, '18b1be16-241b-b377-662f-5f875fcffb9e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CBM Insurance (XeroMedia)', '#22AA99', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 140, '0', '2021-01-11 06:27:01', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(60, 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RobertRyan', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '5.49', '100', 0, 0, 127, '0', '2021-01-11 06:27:01', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(62, 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'FA internal', '#6633CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '46.7', '0', 0, 0, 2777, '12.21', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(68, '1427fc82-fda1-0e0c-468e-789980d2e786', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Pittman (Orange Hat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 28, '0', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(70, '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Blossoms (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 68, '0', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(71, '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clear Alignment', '#9C5935', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 536, '0', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(72, '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Decisions Oriented (Orange Hat)', '#329262', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 17, '0', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(73, '1020afac-5d9d-ac89-6afb-821207022338', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rainn', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 486, '0', '2021-01-11 06:27:02', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(74, '68aad3ab-aa32-1d29-108c-84b5428a9c10', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Kaala iPad app', '#9C5935', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '5', 0, 0, 114, '0', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(77, '0a008290-97ea-d118-dfc8-87ea494e0726', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Napp React Native Project', '#22AA99', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 529, '0', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(78, '98c68cd4-e837-61ab-e1d6-8a136a79957a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Finding and Training resources', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 150, '0', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(79, '59500d9d-3432-271d-06f2-8a8c371b3924', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Founders Approach website', '#DC3912', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '11.06', '0', 0, 0, 158, '3.43', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(80, '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'COMSA website', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 190, '0', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(83, '3aeed760-6a29-0ec6-44ad-90e6f7706674', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'The Quarter House(Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 7, '0', '2021-01-11 06:27:03', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(84, '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GoodWorks', '#0099C6', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 58, '0', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(86, '581b9208-501a-6912-1b2d-9bff4fd914ca', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'BeautyShoppe (Orangehat)', '#6633CC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(87, '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'procc', '#5574A6', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '5', 0, 0, 45, '0', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active'),
(91, '9498028c-654e-51aa-96a5-a7ba14ae49a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Poker Mobile', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 34, '0', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(92, 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bromo (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '6.83', '0', 0, 0, 116, '0.32', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(93, '32456ad1-3589-31c3-aef2-a8bc26174e70', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'David Brown (Orangehat)', '#E67300', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 7, '0', '2021-01-11 06:27:04', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(96, '8f38059e-e5bc-acf7-0117-ac3198d12143', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'LEAD CAMP (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 5, '0', '2021-01-11 06:27:05', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(100, 'f8753495-b546-ae32-6b13-b0b00ccf037b', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bike Alerts WP website', '#316395', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '3.8', '20', 0, 0, 896, '0', '2021-01-11 06:27:05', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(103, 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'OpenWorks (Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 327, '0', '2021-01-11 06:27:05', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(104, '277b161e-35f3-df8c-146f-bb80cadea902', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MyOptio', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 0, NULL, '2021-01-11 06:27:05', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(106, '91913915-16b8-b403-f35a-c19d7d44252f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'PM Training', '#AAAA11', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '2.62', '0', 0, 0, 18, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(107, 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Diet Spotlight', '#E67300', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '34.31', '80', 0, 0, 1018, '6.77', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(108, 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Hudson Health (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 56, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(110, '4b387034-b9ae-e5f7-34b4-c79c8ce91f01', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (OrangeHat)', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 0, NULL, '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(111, '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Ghost Vibration', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 191, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(112, '72cdba18-7016-8c99-63f9-c85daf582395', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (Orange Hat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 19, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(113, '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rasani (Orange Hat)', '#0099C6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 25, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(115, '28df5f0b-dc46-0291-be49-d30d50a37e83', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Forge Biologics (XeroMedia)', '#FF9900', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 20, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(116, '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Discount Vape Pen', '#FF9900', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0.08', '0', 0, 0, 230, '0', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(117, '32bec526-358e-0702-566c-de4d72a7de6e', 172662, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatoApp', '#994499', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, lokesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '30.22', '0', 0, 515, 615, '2.45', '2021-01-11 06:27:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active'),
(118, '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStoryRN', '#990099', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '22.69', '60', 0, 215, 268, '8.12', '2021-01-11 06:27:07', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active'),
(119, 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RAM (Orangehat)', '#316395', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 43, '0', '2021-01-11 06:27:07', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(123, '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clarity Advisor', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '8.1', '12', 0, 130, 653, '2.44', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active'),
(124, 'a489870f-b474-0bc6-c33f-e9df15d25fee', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'XeroMedia DNE', '#651067', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 5, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(127, 'e5602784-dcb7-baa4-d427-eb153f6db514', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spring Garden Lending (Orangehat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 166, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(129, '7e82b784-433f-57bd-284b-ef6e1b275f37', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Reliance Tactical (XeroMedia)', '#DC3912', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 7, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(131, 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Greenmount Tile DNE', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 15, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(132, 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Stadium Square (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 3, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(133, '442979ed-58be-b629-7770-f62d362e9c84', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SAIL (OrangeHat)', '#5574A6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 25, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(134, '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Simply Scouted', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '20', 0, 0, 472, '0', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(135, '6c347464-f931-44b7-72c9-f991286296fe', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gamers Booklet', '#22AA99', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '1.12', '10', 0, 0, 553, '0.19', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(136, '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Knitrino Help', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '27.86', '40', 0, 0, 413, '0.98', '2021-01-11 06:27:08', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active'),
(177, '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Vaksea', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 3, '0', '2021-01-14 09:48:21', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(178, 'a0369873-3af4-063d-b868-446628c040f4', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gaskiya', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 1, '0', '2021-01-14 09:48:34', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(179, '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Screenshot Project', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 171, '0', '2021-01-14 09:48:44', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(180, '432a8a83-edb9-694f-875d-925fb176d84d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Abriscience', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-14 09:48:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(181, '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'NanoDirect', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '1.12', '0', 0, 0, 3, '0', '2021-01-14 09:48:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(182, '1a31c08b-72f0-80be-c9c4-a113630edce0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Scigenesis', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-14 09:48:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(183, '421b1b6d-882c-0649-3a81-a5a581f694fa', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Minnowtech', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 1, '0', '2021-01-14 09:48:55', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(184, '77dc4640-0141-c90b-994e-c68e228ddddb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'DiPole', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 10, '0', '2021-01-14 09:49:06', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(185, '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'EarlyCharm Site', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 10, '0', '2021-01-14 09:49:10', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(186, '2a036971-d010-1dc5-aed7-cf75d3f89b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RasioTx', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-14 09:49:10', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(187, '32504283-1811-5bc3-84f8-e92d2bc732a1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tarsieroptics', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-14 09:49:13', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(188, '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling', '#FF9900', NULL, NULL, 0, 'false', 'Cole@foundersapproach.com, Shaoor@foundersapproach.com, Phil@foundersapproach.com, Dave@foundersapproach.com, Neil@foundersapproach.com', 'May', 0, '12.64', '60', 0, 0, 76, '1.89', '2021-01-15 12:00:16', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(189, '30e84e35-8285-73e7-72c3-f44620440981', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Synteris (Early Charm)', '#66AA00', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 2, '0', '2021-01-15 12:00:16', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(190, '8880790e-8629-e072-bbf9-c9ee740032b5', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Your Life Rocks Internal', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 24, '0', '2021-01-19 12:00:27', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active'),
(191, 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling Internal', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 0, '0', '2021-01-19 12:00:27', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(192, '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HAB312 (OrangeHat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 2, '0', '2021-01-22 12:00:21', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(193, '73f56710-f5f9-b44e-732f-40c6182a8bbc', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'Rallie App', '#E67300', NULL, NULL, 0, 'false', 'No Emails', 'May', 0, '45.55', '0', 0, 0, 419, '12', '2021-03-04 10:54:27', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active'),
(194, '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Marketing Doctor', '#6633CC', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 31, '0', '2021-03-06 12:00:26', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(195, '6da266df-c737-bca2-4aed-5dd58fd42bf9', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Mission Facilitators', '#8B0707', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, phil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '0', '10', 0, 0, 13, '0', '2021-03-19 06:42:11', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(196, '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Coastal Hospice', '#990099', 5179, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 48, '0', '2021-03-19 06:42:11', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(197, 'fa461119-c21f-177c-0fde-a8543d67d6af', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Metro Centre (Orange Hat)', '#994499', 5179, NULL, 0, 'false', 'No Emails', 'May', 0, '0', '0', 0, 0, 3, '0', '2021-03-19 06:42:11', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(198, '96c36ec9-aecf-427a-7975-78c5b7ed9870', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Materic', '#E67300', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'May', 0, '0', '0', 0, 0, 17, '0', '2021-03-19 17:00:38', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(199, '80070947-82ff-fa95-8205-08361372714b', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'tabrabbit', '#B77322', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '46.17', '216', 0, 0, 190, '8.79', '2021-04-02 05:00:37', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(200, 'f1660824-5f01-5de5-2a27-ba30b2f195c5', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TabRabbit(Support)', '#994499', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com', 'May', 0, '2.75', '30', 0, 0, 11, '0', '2021-04-06 05:00:36', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(201, 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Jennyward (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'No Emails', 'May', 0, '3.53', '0', 0, 0, 5, '3.53', '2021-04-19 17:00:37', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(202, '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'REVA', '#DC3912', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, hunter@foundersapproach.com', 'May', 0, '40.27', '0', 0, 563, 46, '7.93', '2021-04-23 17:00:33', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(203, 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'WeCanBmore', '#B77322', 5179, NULL, 0, 'false', 'No Emails', 'May', 0, '6.46', '0', 0, 0, 6, NULL, '2021-04-30 05:00:46', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active'),
(204, '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat.us', '#16D620', 5179, NULL, 0, 'false', 'No Emails', 'May', 0, '0.38', '0', 0, 0, 0, NULL, '2021-04-30 05:00:46', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `projects_config`
--

CREATE TABLE `projects_config` (
  `id` int(11) NOT NULL,
  `project_id` varchar(200) NOT NULL,
  `completed_task_link` varchar(255) NOT NULL DEFAULT '''No Links''',
  `estimation_link` varchar(255) NOT NULL DEFAULT '''No Links''',
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects_history`
--

CREATE TABLE `projects_history` (
  `id` int(11) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `project_type` enum('Fixed','DNE') NOT NULL DEFAULT 'DNE',
  `ssm_id` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `endDate` int(11) DEFAULT NULL,
  `billed_hours` int(11) NOT NULL DEFAULT 0,
  `billed` enum('true','false') NOT NULL DEFAULT 'false',
  `emails` varchar(250) NOT NULL DEFAULT 'No Emails',
  `month_name` varchar(50) NOT NULL DEFAULT 'No Name',
  `year` varchar(100) NOT NULL,
  `month_limit` varchar(22) NOT NULL DEFAULT '0',
  `total_work_by_month` double NOT NULL DEFAULT 0,
  `total_limit` int(11) NOT NULL,
  `total_work` int(11) NOT NULL,
  `month_flag25` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag50` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag75` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag100` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag125` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `month_flag150` enum('inactive','active','','') NOT NULL DEFAULT 'inactive',
  `status` enum('active','inactive','','') NOT NULL DEFAULT 'active',
  `pm_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `project_type_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `month_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `year_status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects_history`
--

INSERT INTO `projects_history` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `year`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`, `month_status`, `year_status`, `update_time`) VALUES
(1, '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MSCRF Mobile App', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '5', 0, 0, 267, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:36:10'),
(2, 'd8d928a3-1d2e-0292-cbaa-077389160922', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Wifi', '#16D620', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, shaoor@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '45', 6, 0, 59, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(3, '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TEC(Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 3, 0, 70, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(4, 'a41cae05-da51-443f-8262-11dccd670a19', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Sales', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 5, 0, 175, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(5, '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Go working space website', '#66AA00', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 48, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(6, 'b78ad6ad-30d8-2f28-f153-1891b807febb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Keystone (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 5, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(7, '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat (General)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 5, 0, 20, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(8, 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tranquility (Orangehat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:18'),
(9, 'ecef0716-344a-73be-a6d9-1cb785211872', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SimplyScouted Website', '#B82E2E', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 0, 0, 12, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(10, '7943dc6b-e582-6542-809d-2129e11a4831', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Training', '#329262', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 175, 0, 760, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(11, '5053acdb-3032-4e91-38a6-233a09d3e762', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CVP (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(12, '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bvudzi website', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 170, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(13, 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SendMe Missionary App', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 0, 0, 458, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(14, 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Charm It (Orangehat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(15, '8005e28c-798b-1426-ec81-30a4b0d13189', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Early Charm (General)', '#8B0707', 5499, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '15', 10, 0, 636, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(16, 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103434, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Audience.co', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '80', 130, 0, 1572, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(17, 'c04794f5-9835-6784-5f98-35e750a4a007', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStory', '#329262', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '20', 32, 0, 134, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(18, '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Trysail website', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 61, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(19, 'd6c79194-9161-d34d-4854-3a6483f2bec7', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatorWebsite', '#329262', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '60', 29, 60, 37, 'active', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(20, '9d6ad43f-5363-dba3-2050-3afd115ff19e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'ARK', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '30', 8, 0, 113, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(21, '45b538f7-d6a2-42aa-eced-3c48729911cb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'JohnPaoletti.com  (XeroMedia)', '#5574A6', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 9, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(22, '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Design B&B (OrangeHat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 100, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(23, '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Talk to Travelers', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 32, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(24, '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Maroon PR Jubilie (Orange Hat)', '#16D620', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 5, 0, 125, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(25, '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'H2H', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 95, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(26, '9fce2b8f-c046-6834-d227-4be7ad887200', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cal Ripken (Orangehat)', '#651067', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(27, '66396a22-1708-3e19-822a-4cea505ebcc7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'House of Ruth (Orangehat)', '#AAAA11', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 37, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(28, '42aa6549-66d9-dcea-7afe-58877063b993', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cricket Flats (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 39, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(29, 'ff154844-279e-a8e3-1e45-5a014cea9670', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Walla Walla (Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 14, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(30, '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Baseline Motion', '#990099', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, hunter@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, shaoor@foundersapproach.com', 'Jan', '2021', '45', 21, 0, 511, 'active', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:19'),
(31, '18b1be16-241b-b377-662f-5f875fcffb9e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CBM Insurance (XeroMedia)', '#22AA99', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 34, 0, 140, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(32, 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RobertRyan', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '5', 5, 0, 56, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(33, 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'FA internal', '#6633CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 222, 0, 2085, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(34, '1427fc82-fda1-0e0c-468e-789980d2e786', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Pittman (Orange Hat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 28, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(35, '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Blossoms (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 68, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(36, '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clear Alignment', '#9C5935', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '20', 1, 0, 518, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(37, '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Decisions Oriented (Orange Hat)', '#329262', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(38, '1020afac-5d9d-ac89-6afb-821207022338', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rainn', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 486, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(39, '68aad3ab-aa32-1d29-108c-84b5428a9c10', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Kaala iPad app', '#9C5935', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '5', 0, 0, 112, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(40, '0a008290-97ea-d118-dfc8-87ea494e0726', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Napp React Native Project', '#22AA99', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 3, 0, 527, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(41, '98c68cd4-e837-61ab-e1d6-8a136a79957a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Finding and Training resources', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 17, 0, 135, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(42, '59500d9d-3432-271d-06f2-8a8c371b3924', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Founders Approach website', '#DC3912', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 32, 0, 103, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(43, '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'COMSA website', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 10, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(44, '3aeed760-6a29-0ec6-44ad-90e6f7706674', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'The Quarter House(Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(45, '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GoodWorks', '#0099C6', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '5', 0, 0, 57, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(46, '581b9208-501a-6912-1b2d-9bff4fd914ca', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'BeautyShoppe (Orangehat)', '#6633CC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(47, '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'procc', '#5574A6', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '5', 0, 0, 45, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(48, '9498028c-654e-51aa-96a5-a7ba14ae49a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Poker Mobile', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 34, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(49, 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bromo (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 21, 0, 60, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(50, '32456ad1-3589-31c3-aef2-a8bc26174e70', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'David Brown (Orangehat)', '#E67300', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(51, '8f38059e-e5bc-acf7-0117-ac3198d12143', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'LEAD CAMP (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(52, 'f8753495-b546-ae32-6b13-b0b00ccf037b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bike Alerts WP website', '#316395', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 0, 0, 805, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:20'),
(53, 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'OpenWorks (Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 3, 0, 312, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(54, '277b161e-35f3-df8c-146f-bb80cadea902', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MyOptio', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(55, '91913915-16b8-b403-f35a-c19d7d44252f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'PM Training', '#AAAA11', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 2, 0, 8, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(56, 'b33a22d6-2843-a13e-7f53-c5790105d620', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Diet Spotlight', '#E67300', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '80', 29, 0, 915, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(57, 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Hudson Health (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 1, 0, 54, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(58, '4b387034-b9ae-e5f7-34b4-c79c8ce91f01', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (OrangeHat)', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(59, '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Ghost Vibration', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 191, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(60, '72cdba18-7016-8c99-63f9-c85daf582395', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (Orange Hat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 2, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(61, '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rasani (Orange Hat)', '#0099C6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(62, '28df5f0b-dc46-0291-be49-d30d50a37e83', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Forge Biologics (XeroMedia)', '#FF9900', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 10, 0, 20, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(63, '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Web', '#FF9900', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 25, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(64, '32bec526-358e-0702-566c-de4d72a7de6e', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatoApp', '#994499', NULL, NULL, 3, 'false', 'hunter@foundersapproach.com, lokesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 70, 415, 80, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(65, '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStoryRN', '#990099', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '60', 97, 215, 120, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(66, 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RAM (Orangehat)', '#316395', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 43, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(67, '065e9587-61c5-750c-4ab1-e6de534971a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spade Business', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '20', 69, 130, 609, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(68, 'a489870f-b474-0bc6-c33f-e9df15d25fee', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'XeroMedia DNE', '#651067', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 1, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(69, 'e5602784-dcb7-baa4-d427-eb153f6db514', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spring Garden Lending (Orangehat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 166, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(70, '7e82b784-433f-57bd-284b-ef6e1b275f37', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Reliance Tactical (XeroMedia)', '#DC3912', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(71, 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Greenmount Tile DNE', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 15, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:21'),
(72, 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Stadium Square (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(73, '442979ed-58be-b629-7770-f62d362e9c84', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SAIL (OrangeHat)', '#5574A6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 10, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(74, '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Simply Scouted', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '20', 0, 0, 442, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(75, '6c347464-f931-44b7-72c9-f991286296fe', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gamers Booklet', '#22AA99', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 11, 0, 506, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(76, '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Knitrino Help', '#651067', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '40', 74, 0, 134, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(77, '6853045f-06a7-5e60-4939-1cafa8393563', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Mobile)', '#B77322', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(78, 'd6ab53fa-1b44-0057-1241-2efbc5240e9c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Web)', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(79, '98e9cd76-bec5-beab-b4af-32089c380fff', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Prebeo', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(80, '8ac36429-6d29-82ba-dfb0-35a4db0fd071', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Simply Scouted', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(81, '7f686df0-9161-dc98-975e-3d903fdf461b', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit (Support - Phil Only)', '#990099', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(82, '2cc927ad-01b3-3da9-7444-3feb1ce322f9', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Founders Approach', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(83, '09df56e7-030d-0ef0-08cf-59ac17b34d1d', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'knitrino', '#DC3912', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(84, 'eaee27bd-987b-fbf0-4994-83f67bac9b12', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Tlee', '#316395', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(85, '850c8dea-79f3-3401-b2ae-9f1a6be39c79', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'EarlyCharm', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(86, '08122477-d857-6077-395f-aad1c3123b4c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(87, '72ee842c-cb07-69ea-147f-b7e6495ad9dd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'PM Training', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(88, '55bcdf7a-c46f-9b3a-9e95-d602c44eaffd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'FA Narola', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(89, '03d3eaf0-29d5-9207-6493-d6992de2eef7', 111434, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Robert Ryan Catering', '#9C5935', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(90, '5e688576-4744-8135-97be-e55d4f94ebeb', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'VivoVibe', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(91, '110bafd6-865f-6c6f-07cb-e75025b4beaf', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Your Life Rocks(Web)', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(92, '3a4af54f-7b0f-8e2e-583d-ec170e141082', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sage', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(93, '379e618b-5c79-8955-33e3-fda19ed8f96a', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sure Space', '#66AA00', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(94, '1ded105f-349d-f3f5-233d-fdf094b62d32', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Audience Web Development', '#329262', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:22'),
(95, '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Vaksea', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(96, 'a0369873-3af4-063d-b868-446628c040f4', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gaskiya', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(97, '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Screenshot Project', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Jan', '2021', '0', 86, 0, 86, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(98, '432a8a83-edb9-694f-875d-925fb176d84d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Abriscience', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(99, '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'NanoDirect', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(100, '1a31c08b-72f0-80be-c9c4-a113630edce0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Scigenesis', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(101, '421b1b6d-882c-0649-3a81-a5a581f694fa', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Minnowtech', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(102, '77dc4640-0141-c90b-994e-c68e228ddddb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'DiPole', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(103, '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'EarlyCharm Site', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 2, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(104, '2a036971-d010-1dc5-aed7-cf75d3f89b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RasioTx', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(105, '32504283-1811-5bc3-84f8-e92d2bc732a1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tarsieroptics', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(106, '7c893222-bdfb-a504-de44-6aaf358dac03', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 2, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(107, '30e84e35-8285-73e7-72c3-f44620440981', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Synteris (Early Charm)', '#66AA00', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Jan', '2021', '0', 2, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(108, '8880790e-8629-e072-bbf9-c9ee740032b5', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Your Life Rocks Internal', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '10', 6, 0, 6, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(109, 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling Internal', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Jan', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(110, '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HAB312 (OrangeHat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Jan', '2021', '0', 2, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-03-03 12:41:23'),
(111, '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MSCRF Mobile App', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '5', 0, 0, 267, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(112, 'd8d928a3-1d2e-0292-cbaa-077389160922', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Wifi', '#16D620', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, shaoor@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '45', 66, 0, 123, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(113, '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TEC(Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 70, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(114, 'a41cae05-da51-443f-8262-11dccd670a19', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Sales', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 16, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25');
INSERT INTO `projects_history` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `year`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`, `month_status`, `year_status`, `update_time`) VALUES
(115, '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Go working space website', '#66AA00', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 48, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(116, 'b78ad6ad-30d8-2f28-f153-1891b807febb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Keystone (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(117, '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat (General)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 4, 0, 22, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(118, 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tranquility (Orangehat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(119, 'ecef0716-344a-73be-a6d9-1cb785211872', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SimplyScouted Website', '#B82E2E', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 0, 0, 12, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(120, '7943dc6b-e582-6542-809d-2129e11a4831', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Training', '#329262', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 93, 0, 835, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(121, '5053acdb-3032-4e91-38a6-233a09d3e762', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CVP (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:25'),
(122, '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bvudzi website', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 170, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(123, 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SendMe Missionary App', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 12, 0, 470, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(124, 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Charm It (Orangehat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(125, '8005e28c-798b-1426-ec81-30a4b0d13189', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Early Charm (General)', '#8B0707', 5499, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '15', 10, 0, 645, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(126, 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103434, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Audience.co', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '80', 74, 0, 1633, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(127, 'c04794f5-9835-6784-5f98-35e750a4a007', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStory', '#329262', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '20', 17, 0, 150, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(128, '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Trysail website', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 61, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(129, 'd6c79194-9161-d34d-4854-3a6483f2bec7', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatorWebsite', '#329262', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '60', 10, 60, 48, 'active', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(130, '9d6ad43f-5363-dba3-2050-3afd115ff19e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'ARK', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '30', 4, 0, 114, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(131, '45b538f7-d6a2-42aa-eced-3c48729911cb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'JohnPaoletti.com  (XeroMedia)', '#5574A6', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(132, '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Design B&B (OrangeHat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 100, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(133, '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Talk to Travelers', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 32, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(134, '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Maroon PR Jubilie (Orange Hat)', '#16D620', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 125, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(135, '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'H2H', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 95, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:26'),
(136, '9fce2b8f-c046-6834-d227-4be7ad887200', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cal Ripken (Orangehat)', '#651067', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(137, '66396a22-1708-3e19-822a-4cea505ebcc7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'House of Ruth (Orangehat)', '#AAAA11', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 13, 0, 73, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(138, '42aa6549-66d9-dcea-7afe-58877063b993', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cricket Flats (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 39, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(139, 'ff154844-279e-a8e3-1e45-5a014cea9670', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Walla Walla (Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 14, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(140, '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Baseline Motion', '#990099', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, hunter@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, shaoor@foundersapproach.com', 'Feb', '2021', '45', 44, 0, 553, 'active', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(141, '18b1be16-241b-b377-662f-5f875fcffb9e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CBM Insurance (XeroMedia)', '#22AA99', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 140, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(142, 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RobertRyan', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '5', 9, 0, 62, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(143, 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'FA internal', '#6633CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 153, 0, 2213, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(144, '1427fc82-fda1-0e0c-468e-789980d2e786', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Pittman (Orange Hat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 28, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(145, '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Blossoms (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 68, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(146, '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clear Alignment', '#9C5935', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '20', 9, 0, 526, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(147, '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Decisions Oriented (Orange Hat)', '#329262', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(148, '1020afac-5d9d-ac89-6afb-821207022338', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rainn', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 486, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:27'),
(149, '68aad3ab-aa32-1d29-108c-84b5428a9c10', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Kaala iPad app', '#9C5935', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '5', 0, 0, 112, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(150, '0a008290-97ea-d118-dfc8-87ea494e0726', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Napp React Native Project', '#22AA99', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 0, 0, 527, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(151, '98c68cd4-e837-61ab-e1d6-8a136a79957a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Finding and Training resources', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 6, 0, 140, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(152, '59500d9d-3432-271d-06f2-8a8c371b3924', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Founders Approach website', '#DC3912', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 10, 0, 111, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(153, '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'COMSA website', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(154, '3aeed760-6a29-0ec6-44ad-90e6f7706674', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'The Quarter House(Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(155, '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GoodWorks', '#0099C6', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '5', 0, 0, 57, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(156, '581b9208-501a-6912-1b2d-9bff4fd914ca', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'BeautyShoppe (Orangehat)', '#6633CC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(157, '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'procc', '#5574A6', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '5', 0, 0, 45, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(158, '9498028c-654e-51aa-96a5-a7ba14ae49a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Poker Mobile', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 1, 0, 34, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(159, 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bromo (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 8, 0, 65, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(160, '32456ad1-3589-31c3-aef2-a8bc26174e70', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'David Brown (Orangehat)', '#E67300', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(161, '8f38059e-e5bc-acf7-0117-ac3198d12143', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'LEAD CAMP (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(162, 'f8753495-b546-ae32-6b13-b0b00ccf037b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bike Alerts WP website', '#316395', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 2, 0, 807, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(163, 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'OpenWorks (Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 312, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(164, '277b161e-35f3-df8c-146f-bb80cadea902', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MyOptio', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', '2021-03-03 12:45:28'),
(165, '91913915-16b8-b403-f35a-c19d7d44252f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'PM Training', '#AAAA11', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 2, 0, 10, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(166, 'b33a22d6-2843-a13e-7f53-c5790105d620', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Diet Spotlight', '#E67300', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '80', 27, 0, 932, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(167, 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Hudson Health (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 54, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(168, '4b387034-b9ae-e5f7-34b4-c79c8ce91f01', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (OrangeHat)', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(169, '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Ghost Vibration', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 191, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(170, '72cdba18-7016-8c99-63f9-c85daf582395', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (Orange Hat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 5, 0, 14, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(171, '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rasani (Orange Hat)', '#0099C6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(172, '28df5f0b-dc46-0291-be49-d30d50a37e83', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Forge Biologics (XeroMedia)', '#FF9900', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 20, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(173, '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Web', '#FF9900', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '50', 51, 0, 111, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(174, '32bec526-358e-0702-566c-de4d72a7de6e', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatoApp', '#994499', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, lokesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 118, 415, 176, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(175, '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStoryRN', '#990099', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '60', 29, 215, 146, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(176, 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RAM (Orangehat)', '#316395', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 43, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(177, '065e9587-61c5-750c-4ab1-e6de534971a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spade Business', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '20', 21, 130, 622, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(178, 'a489870f-b474-0bc6-c33f-e9df15d25fee', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'XeroMedia DNE', '#651067', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(179, 'e5602784-dcb7-baa4-d427-eb153f6db514', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spring Garden Lending (Orangehat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 166, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(180, '7e82b784-433f-57bd-284b-ef6e1b275f37', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Reliance Tactical (XeroMedia)', '#DC3912', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(181, 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Greenmount Tile DNE', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 15, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(182, 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Stadium Square (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:29'),
(183, '442979ed-58be-b629-7770-f62d362e9c84', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SAIL (OrangeHat)', '#5574A6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(184, '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Simply Scouted', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '20', 10, 0, 452, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(185, '6c347464-f931-44b7-72c9-f991286296fe', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gamers Booklet', '#22AA99', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 14, 0, 520, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(186, '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Knitrino Help', '#651067', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '40', 77, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(187, '6853045f-06a7-5e60-4939-1cafa8393563', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Mobile)', '#B77322', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(188, 'd6ab53fa-1b44-0057-1241-2efbc5240e9c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Web)', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(189, '98e9cd76-bec5-beab-b4af-32089c380fff', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Prebeo', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(190, '8ac36429-6d29-82ba-dfb0-35a4db0fd071', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Simply Scouted', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(191, '7f686df0-9161-dc98-975e-3d903fdf461b', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit (Support - Phil Only)', '#990099', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(192, '2cc927ad-01b3-3da9-7444-3feb1ce322f9', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Founders Approach', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(193, '09df56e7-030d-0ef0-08cf-59ac17b34d1d', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'knitrino', '#DC3912', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(194, 'eaee27bd-987b-fbf0-4994-83f67bac9b12', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Tlee', '#316395', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(195, '850c8dea-79f3-3401-b2ae-9f1a6be39c79', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'EarlyCharm', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(196, '08122477-d857-6077-395f-aad1c3123b4c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(197, '72ee842c-cb07-69ea-147f-b7e6495ad9dd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'PM Training', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(198, '55bcdf7a-c46f-9b3a-9e95-d602c44eaffd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'FA Narola', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(199, '03d3eaf0-29d5-9207-6493-d6992de2eef7', 111434, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Robert Ryan Catering', '#9C5935', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(200, '5e688576-4744-8135-97be-e55d4f94ebeb', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'VivoVibe', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(201, '110bafd6-865f-6c6f-07cb-e75025b4beaf', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Your Life Rocks(Web)', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(202, '3a4af54f-7b0f-8e2e-583d-ec170e141082', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sage', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(203, '379e618b-5c79-8955-33e3-fda19ed8f96a', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sure Space', '#66AA00', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(204, '1ded105f-349d-f3f5-233d-fdf094b62d32', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Audience Web Development', '#329262', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(205, '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Vaksea', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 2, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(206, 'a0369873-3af4-063d-b868-446628c040f4', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gaskiya', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:30'),
(207, '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Screenshot Project', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Feb', '2021', '0', 33, 0, 95, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(208, '432a8a83-edb9-694f-875d-925fb176d84d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Abriscience', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(209, '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'NanoDirect', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(210, '1a31c08b-72f0-80be-c9c4-a113630edce0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Scigenesis', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(211, '421b1b6d-882c-0649-3a81-a5a581f694fa', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Minnowtech', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 1, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(212, '77dc4640-0141-c90b-994e-c68e228ddddb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'DiPole', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 5, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(213, '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'EarlyCharm Site', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 4, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(214, '2a036971-d010-1dc5-aed7-cf75d3f89b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RasioTx', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(215, '32504283-1811-5bc3-84f8-e92d2bc732a1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tarsieroptics', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(216, '7c893222-bdfb-a504-de44-6aaf358dac03', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(217, '30e84e35-8285-73e7-72c3-f44620440981', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Synteris (Early Charm)', '#66AA00', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(218, '8880790e-8629-e072-bbf9-c9ee740032b5', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Your Life Rocks Internal', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '10', 0, 0, 6, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(219, 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling Internal', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Feb', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(220, '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HAB312 (OrangeHat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Feb', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'active', '2021-03-03 12:45:31'),
(221, '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MSCRF Mobile App', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '5', 1.36, 0, 268, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(222, 'd8d928a3-1d2e-0292-cbaa-077389160922', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Wifi', '#16D620', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, shaoor@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '45', 45.48, 0, 182, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(223, '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TEC(Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 70, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(224, 'a41cae05-da51-443f-8262-11dccd670a19', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Sales', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 3.2, 0, 203, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(225, '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Go working space website', '#66AA00', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 7.06, 0, 55, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(226, 'b78ad6ad-30d8-2f28-f153-1891b807febb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Keystone (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(227, '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat (General)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 12.04, 0, 36, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:56'),
(228, 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tranquility (Orangehat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57');
INSERT INTO `projects_history` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `year`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`, `month_status`, `year_status`, `update_time`) VALUES
(229, 'ecef0716-344a-73be-a6d9-1cb785211872', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SimplyScouted Website', '#B82E2E', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 9.25, 0, 32, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(230, '7943dc6b-e582-6542-809d-2129e11a4831', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Training', '#329262', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 151.67, 0, 1031, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(231, '5053acdb-3032-4e91-38a6-233a09d3e762', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CVP (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(232, '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bvudzi website', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 170, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(233, 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SendMe Missionary App', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 0, 0, 470, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(234, 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Charm It (Orangehat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(235, '8005e28c-798b-1426-ec81-30a4b0d13189', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Early Charm (General)', '#8B0707', 5499, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '15', 6.87, 0, 660, 'active', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(236, 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103434, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Audience.co', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '80', 72.35, 0, 1725, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(237, 'c04794f5-9835-6784-5f98-35e750a4a007', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStory', '#329262', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '20', 25.62, 0, 229, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(238, '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Trysail website', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 61, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(239, 'd6c79194-9161-d34d-4854-3a6483f2bec7', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatorWebsite', '#329262', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '60', 49.45, 60, 97, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(240, '9d6ad43f-5363-dba3-2050-3afd115ff19e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'ARK', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '30', 2.96, 0, 124, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(241, '45b538f7-d6a2-42aa-eced-3c48729911cb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'JohnPaoletti.com  (XeroMedia)', '#5574A6', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(242, '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Design B&B (OrangeHat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 100, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(243, '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Talk to Travelers', '#8B0707', 5502, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 2.26, 0, 34, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(244, '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Maroon PR Jubilie (Orange Hat)', '#16D620', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 41.69, 0, 168, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(245, '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'H2H', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 95, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:57'),
(246, '9fce2b8f-c046-6834-d227-4be7ad887200', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cal Ripken (Orangehat)', '#651067', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 7.87, 0, 13, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(247, '66396a22-1708-3e19-822a-4cea505ebcc7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'House of Ruth (Orangehat)', '#AAAA11', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 74, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(248, '42aa6549-66d9-dcea-7afe-58877063b993', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cricket Flats (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 39, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(249, 'ff154844-279e-a8e3-1e45-5a014cea9670', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Walla Walla (Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 14, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(250, '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Baseline Motion', '#990099', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, hunter@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, shaoor@foundersapproach.com', 'Mar', '2021', '45', 8.17, 0, 580, 'active', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(251, '18b1be16-241b-b377-662f-5f875fcffb9e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CBM Insurance (XeroMedia)', '#22AA99', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 140, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(252, 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RobertRyan', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '5', 21.33, 0, 90, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(253, 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'FA internal', '#6633CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 226.84, 0, 2529, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(254, '1427fc82-fda1-0e0c-468e-789980d2e786', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Pittman (Orange Hat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 28, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(255, '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Blossoms (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 68, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(256, '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clear Alignment', '#9C5935', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '20', 0, 0, 536, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(257, '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Decisions Oriented (Orange Hat)', '#329262', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(258, '1020afac-5d9d-ac89-6afb-821207022338', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rainn', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 486, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(259, '68aad3ab-aa32-1d29-108c-84b5428a9c10', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Kaala iPad app', '#9C5935', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '5', 1.34, 0, 114, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(260, '0a008290-97ea-d118-dfc8-87ea494e0726', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Napp React Native Project', '#22AA99', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 1.36, 0, 529, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(261, '98c68cd4-e837-61ab-e1d6-8a136a79957a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Finding and Training resources', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 6, 0, 150, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(262, '59500d9d-3432-271d-06f2-8a8c371b3924', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Founders Approach website', '#DC3912', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 15.65, 0, 129, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(263, '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'COMSA website', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:58'),
(264, '3aeed760-6a29-0ec6-44ad-90e6f7706674', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'The Quarter House(Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(265, '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GoodWorks', '#0099C6', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '5', 0.61, 0, 58, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(266, '581b9208-501a-6912-1b2d-9bff4fd914ca', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'BeautyShoppe (Orangehat)', '#6633CC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(267, '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'procc', '#5574A6', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '5', 0, 0, 45, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(268, '9498028c-654e-51aa-96a5-a7ba14ae49a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Poker Mobile', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 34, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(269, 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bromo (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 9.28, 0, 91, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(270, '32456ad1-3589-31c3-aef2-a8bc26174e70', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'David Brown (Orangehat)', '#E67300', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(271, '8f38059e-e5bc-acf7-0117-ac3198d12143', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'LEAD CAMP (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(272, 'f8753495-b546-ae32-6b13-b0b00ccf037b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bike Alerts WP website', '#316395', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 2.61, 0, 810, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(273, 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'OpenWorks (Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 5.18, 0, 317, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(274, '277b161e-35f3-df8c-146f-bb80cadea902', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MyOptio', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(275, '91913915-16b8-b403-f35a-c19d7d44252f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'PM Training', '#AAAA11', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 0.72, 0, 12, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(276, 'b33a22d6-2843-a13e-7f53-c5790105d620', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Diet Spotlight', '#E67300', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '80', 33.15, 0, 971, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(277, 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Hudson Health (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 56, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(278, '4b387034-b9ae-e5f7-34b4-c79c8ce91f01', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (OrangeHat)', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(279, '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Ghost Vibration', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 191, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(280, '72cdba18-7016-8c99-63f9-c85daf582395', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (Orange Hat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 15, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(281, '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rasani (Orange Hat)', '#0099C6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(282, '28df5f0b-dc46-0291-be49-d30d50a37e83', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Forge Biologics (XeroMedia)', '#FF9900', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 20, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:53:59'),
(283, '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Discount Vape Pen', '#FF9900', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '50', 91.58, 0, 229, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(284, '32bec526-358e-0702-566c-de4d72a7de6e', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatoApp', '#994499', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, lokesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 220.84, 415, 490, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(285, '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStoryRN', '#990099', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '60', 11.39, 215, 168, 'active', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(286, 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RAM (Orangehat)', '#316395', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 43, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(287, '065e9587-61c5-750c-4ab1-e6de534971a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clarity Advisor', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '20', 4.42, 130, 639, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(288, 'a489870f-b474-0bc6-c33f-e9df15d25fee', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'XeroMedia DNE', '#651067', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(289, 'e5602784-dcb7-baa4-d427-eb153f6db514', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spring Garden Lending (Orangehat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 166, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(290, '7e82b784-433f-57bd-284b-ef6e1b275f37', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Reliance Tactical (XeroMedia)', '#DC3912', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(291, 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Greenmount Tile DNE', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 15, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(292, 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Stadium Square (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(293, '442979ed-58be-b629-7770-f62d362e9c84', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SAIL (OrangeHat)', '#5574A6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(294, '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Simply Scouted', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '20', 18.56, 0, 472, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(295, '6c347464-f931-44b7-72c9-f991286296fe', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gamers Booklet', '#22AA99', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 16.14, 0, 544, 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(296, '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Knitrino Help', '#651067', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '40', 88.69, 0, 323, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(297, '6853045f-06a7-5e60-4939-1cafa8393563', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Mobile)', '#B77322', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(298, 'd6ab53fa-1b44-0057-1241-2efbc5240e9c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Web)', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:00'),
(299, '98e9cd76-bec5-beab-b4af-32089c380fff', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Prebeo', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(300, '8ac36429-6d29-82ba-dfb0-35a4db0fd071', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Simply Scouted', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(301, '7f686df0-9161-dc98-975e-3d903fdf461b', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit (Support - Phil Only)', '#990099', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(302, '2cc927ad-01b3-3da9-7444-3feb1ce322f9', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Founders Approach', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(303, '09df56e7-030d-0ef0-08cf-59ac17b34d1d', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'knitrino', '#DC3912', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(304, 'eaee27bd-987b-fbf0-4994-83f67bac9b12', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Tlee', '#316395', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(305, '850c8dea-79f3-3401-b2ae-9f1a6be39c79', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'EarlyCharm', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(306, '08122477-d857-6077-395f-aad1c3123b4c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(307, '72ee842c-cb07-69ea-147f-b7e6495ad9dd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'PM Training', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(308, '55bcdf7a-c46f-9b3a-9e95-d602c44eaffd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'FA Narola', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(309, '03d3eaf0-29d5-9207-6493-d6992de2eef7', 111434, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Robert Ryan Catering', '#9C5935', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(310, '5e688576-4744-8135-97be-e55d4f94ebeb', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'VivoVibe', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(311, '110bafd6-865f-6c6f-07cb-e75025b4beaf', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Your Life Rocks(Web)', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(312, '3a4af54f-7b0f-8e2e-583d-ec170e141082', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sage', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(313, '379e618b-5c79-8955-33e3-fda19ed8f96a', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sure Space', '#66AA00', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(314, '1ded105f-349d-f3f5-233d-fdf094b62d32', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Audience Web Development', '#329262', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(315, '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Vaksea', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0.4, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(316, 'a0369873-3af4-063d-b868-446628c040f4', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gaskiya', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0.74, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:01'),
(317, '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Screenshot Project', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Mar', '2021', '0', 51.4, 0, 160, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(318, '432a8a83-edb9-694f-875d-925fb176d84d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Abriscience', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(319, '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'NanoDirect', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(320, '1a31c08b-72f0-80be-c9c4-a113630edce0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Scigenesis', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(321, '421b1b6d-882c-0649-3a81-a5a581f694fa', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Minnowtech', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(322, '77dc4640-0141-c90b-994e-c68e228ddddb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'DiPole', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0.9, 0, 10, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(323, '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'EarlyCharm Site', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0.51, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(324, '2a036971-d010-1dc5-aed7-cf75d3f89b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RasioTx', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:02'),
(325, '32504283-1811-5bc3-84f8-e92d2bc732a1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tarsieroptics', '#DC3912', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(326, '7c893222-bdfb-a504-de44-6aaf358dac03', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 32, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(327, '30e84e35-8285-73e7-72c3-f44620440981', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Synteris (Early Charm)', '#66AA00', 5499, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, kat@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(328, '8880790e-8629-e072-bbf9-c9ee740032b5', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Your Life Rocks Internal', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '10', 18.05, 0, 24, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(329, 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling Internal', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(330, '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HAB312 (OrangeHat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Mar', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(331, '73f56710-f5f9-b44e-732f-40c6182a8bbc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rallie App', '#E67300', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 149.25, 0, 154, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(332, '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Marketing Doctor', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 30.77, 0, 31, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(333, '6da266df-c737-bca2-4aed-5dd58fd42bf9', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Mission Facilitators', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 9.27, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(334, '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Coastal Hospice', '#990099', 5179, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 42.6, 0, 43, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(335, 'fa461119-c21f-177c-0fde-a8543d67d6af', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Metro Centre (Orange Hat)', '#994499', 5179, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 3.28, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(336, '96c36ec9-aecf-427a-7975-78c5b7ed9870', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Materic', '#E67300', 5499, NULL, 0, 'false', 'No Emails', 'Mar', '2021', '0', 16.59, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-04-01 03:54:03'),
(337, '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MSCRF Mobile App', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '5', 0, 0, 268, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:33'),
(338, 'd8d928a3-1d2e-0292-cbaa-077389160922', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Wifi', '#16D620', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, shaoor@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 9.72, 0, 191, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:33'),
(339, '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TEC(Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 70, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:33'),
(340, 'a41cae05-da51-443f-8262-11dccd670a19', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Sales', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 2.21, 0, 207, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(341, '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Go working space website', '#66AA00', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 13.22, 0, 68, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(342, 'b78ad6ad-30d8-2f28-f153-1891b807febb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Keystone (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 67, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34');
INSERT INTO `projects_history` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `year`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`, `month_status`, `year_status`, `update_time`) VALUES
(343, '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat (General)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 5.32, 0, 42, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(344, 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tranquility (Orangehat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(345, 'ecef0716-344a-73be-a6d9-1cb785211872', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SimplyScouted Website', '#B82E2E', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 0.85, 0, 33, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(346, '7943dc6b-e582-6542-809d-2129e11a4831', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Training', '#329262', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 20.25, 0, 1065, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(347, '5053acdb-3032-4e91-38a6-233a09d3e762', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CVP (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(348, '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bvudzi website', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 170, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(349, 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SendMe Missionary App', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 0, 0, 470, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(350, 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Charm It (Orangehat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(351, '8005e28c-798b-1426-ec81-30a4b0d13189', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Early Charm (General)', '#8B0707', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 16.35, 0, 677, 'active', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(352, 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Audience.co', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '80', 69.03, 0, 1794, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(353, 'c04794f5-9835-6784-5f98-35e750a4a007', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStory', '#329262', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '20', 32.44, 0, 261, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(354, '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Trysail website', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 61, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(355, 'd6c79194-9161-d34d-4854-3a6483f2bec7', 172662, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatorWebsite', '#329262', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '60', 81.35, 60, 185, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:34'),
(356, '9d6ad43f-5363-dba3-2050-3afd115ff19e', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'ARK', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 2.71, 0, 127, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(357, '45b538f7-d6a2-42aa-eced-3c48729911cb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'JohnPaoletti.com  (XeroMedia)', '#5574A6', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 9, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(358, '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Design B&B (OrangeHat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 100, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(359, '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Talk to Travelers', '#8B0707', 5502, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 4.13, 0, 40, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(360, '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Maroon PR Jubilie (Orange Hat)', '#16D620', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 170, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(361, '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'H2H', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 95, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(362, '9fce2b8f-c046-6834-d227-4be7ad887200', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cal Ripken (Orangehat)', '#651067', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 14.02, 0, 29, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(363, '66396a22-1708-3e19-822a-4cea505ebcc7', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'House of Ruth (Orangehat)', '#AAAA11', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 74, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(364, '42aa6549-66d9-dcea-7afe-58877063b993', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Cricket Flats (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 39, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(365, 'ff154844-279e-a8e3-1e45-5a014cea9670', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Walla Walla (Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 14, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(366, '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Baseline Motion', '#990099', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, hunter@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, shaoor@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 580, 'active', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(367, '18b1be16-241b-b377-662f-5f875fcffb9e', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'CBM Insurance (XeroMedia)', '#22AA99', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 140, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(368, 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RobertRyan', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '100', 36.27, 0, 127, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(369, 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'FA internal', '#6633CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 231.53, 0, 2777, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:35'),
(370, '1427fc82-fda1-0e0c-468e-789980d2e786', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Pittman (Orange Hat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 28, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(371, '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Blossoms (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 68, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(372, '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clear Alignment', '#9C5935', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 0, 0, 536, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(373, '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Decisions Oriented (Orange Hat)', '#329262', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(374, '1020afac-5d9d-ac89-6afb-821207022338', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rainn', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 486, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(375, '68aad3ab-aa32-1d29-108c-84b5428a9c10', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Kaala iPad app', '#9C5935', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '5', 0, 0, 114, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(376, '0a008290-97ea-d118-dfc8-87ea494e0726', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Napp React Native Project', '#22AA99', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 0, 0, 529, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(377, '98c68cd4-e837-61ab-e1d6-8a136a79957a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Finding and Training resources', '#16D620', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 150, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(378, '59500d9d-3432-271d-06f2-8a8c371b3924', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Founders Approach website', '#DC3912', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 27.69, 0, 158, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(379, '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'COMSA website', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 190, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(380, '3aeed760-6a29-0ec6-44ad-90e6f7706674', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'The Quarter House(Orange Hat)', '#22AA99', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(381, '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GoodWorks', '#0099C6', NULL, NULL, 0, 'false', 'parth@foundersapproach.com,  phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0.21, 0, 58, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(382, '581b9208-501a-6912-1b2d-9bff4fd914ca', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'BeautyShoppe (Orangehat)', '#6633CC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(383, '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'procc', '#5574A6', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '5', 0, 0, 45, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(384, '9498028c-654e-51aa-96a5-a7ba14ae49a3', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Upswing Poker Mobile', '#316395', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 34, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(385, 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bromo (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 24.44, 0, 116, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(386, '32456ad1-3589-31c3-aef2-a8bc26174e70', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'David Brown (Orangehat)', '#E67300', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(387, '8f38059e-e5bc-acf7-0117-ac3198d12143', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'LEAD CAMP (Orange Hat)', '#DC3912', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:36'),
(388, 'f8753495-b546-ae32-6b13-b0b00ccf037b', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Bike Alerts WP website', '#316395', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '20', 86.02, 0, 896, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(389, 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'OpenWorks (Orange Hat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 9.52, 0, 327, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(390, '277b161e-35f3-df8c-146f-bb80cadea902', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'MyOptio', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(391, '91913915-16b8-b403-f35a-c19d7d44252f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'PM Training', '#AAAA11', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 5.79, 0, 18, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(392, 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Diet Spotlight', '#E67300', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, chirag@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '80', 46.28, 0, 1018, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(393, 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Hudson Health (Orangehat)', '#3B3EAC', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 56, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(394, '4b387034-b9ae-e5f7-34b4-c79c8ce91f01', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (OrangeHat)', '#6633CC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(395, '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Ghost Vibration', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 191, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(396, '72cdba18-7016-8c99-63f9-c85daf582395', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'GOTR (Orange Hat)', '#990099', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 3.72, 0, 19, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(397, '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Rasani (Orange Hat)', '#0099C6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(398, '28df5f0b-dc46-0291-be49-d30d50a37e83', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Forge Biologics (XeroMedia)', '#FF9900', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 20, 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(399, '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Discount Vape Pen', '#FF9900', NULL, NULL, 0, 'false', 'divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 1.29, 0, 230, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(400, '32bec526-358e-0702-566c-de4d72a7de6e', 172662, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'ecomplicatoApp', '#994499', NULL, NULL, 0, 'false', 'hunter@foundersapproach.com, lokesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 120.97, 515, 615, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(401, '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'HereStoryRN', '#990099', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '60', 97.2, 215, 268, 'active', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(402, 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RAM (Orangehat)', '#316395', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 43, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(403, '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Clarity Advisor', '#B77322', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '12', 14.04, 130, 653, 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(404, 'a489870f-b474-0bc6-c33f-e9df15d25fee', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'XeroMedia DNE', '#651067', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(405, 'e5602784-dcb7-baa4-d427-eb153f6db514', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Spring Garden Lending (Orangehat)', '#9C5935', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 166, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(406, '7e82b784-433f-57bd-284b-ef6e1b275f37', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Reliance Tactical (XeroMedia)', '#DC3912', 5231, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 7, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:37'),
(407, 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Greenmount Tile DNE', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, dipak@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 15, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(408, 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Stadium Square (Orangehat)', '#66AA00', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(409, '442979ed-58be-b629-7770-f62d362e9c84', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'SAIL (OrangeHat)', '#5574A6', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 25, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(410, '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Simply Scouted', '#FF9900', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '20', 0, 0, 472, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(411, '6c347464-f931-44b7-72c9-f991286296fe', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gamers Booklet', '#22AA99', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 8.14, 0, 553, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(412, '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Knitrino Help', '#651067', NULL, NULL, 0, 'false', 'parth@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '40', 87.43, 0, 413, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(413, '6853045f-06a7-5e60-4939-1cafa8393563', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Mobile)', '#B77322', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(414, 'd6ab53fa-1b44-0057-1241-2efbc5240e9c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Choice Remodeling (Web)', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(415, '98e9cd76-bec5-beab-b4af-32089c380fff', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Prebeo', '#3B3EAC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(416, '8ac36429-6d29-82ba-dfb0-35a4db0fd071', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Simply Scouted', '#B82E2E', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(417, '7f686df0-9161-dc98-975e-3d903fdf461b', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit (Support - Phil Only)', '#990099', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(418, '2cc927ad-01b3-3da9-7444-3feb1ce322f9', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Founders Approach', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(419, '09df56e7-030d-0ef0-08cf-59ac17b34d1d', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'knitrino', '#DC3912', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(420, 'eaee27bd-987b-fbf0-4994-83f67bac9b12', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Tlee', '#316395', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(421, '850c8dea-79f3-3401-b2ae-9f1a6be39c79', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'EarlyCharm', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:38'),
(422, '08122477-d857-6077-395f-aad1c3123b4c', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'TabRabbit', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(423, '72ee842c-cb07-69ea-147f-b7e6495ad9dd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'PM Training', '#16D620', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(424, '55bcdf7a-c46f-9b3a-9e95-d602c44eaffd', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'FA Narola', '#3366CC', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(425, '03d3eaf0-29d5-9207-6493-d6992de2eef7', 111434, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Robert Ryan Catering', '#9C5935', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(426, '5e688576-4744-8135-97be-e55d4f94ebeb', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'VivoVibe', '#651067', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(427, '110bafd6-865f-6c6f-07cb-e75025b4beaf', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Your Life Rocks(Web)', '#8B0707', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(428, '3a4af54f-7b0f-8e2e-583d-ec170e141082', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sage', '#AAAA11', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(429, '379e618b-5c79-8955-33e3-fda19ed8f96a', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Sure Space', '#66AA00', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(430, '1ded105f-349d-f3f5-233d-fdf094b62d32', 0, 'DNE', '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'Audience Web Development', '#329262', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(431, '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Vaksea', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(432, 'a0369873-3af4-063d-b868-446628c040f4', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Gaskiya', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(433, '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Screenshot Project', '#3366CC', 5502, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, cole@foundersapproach.com', 'Apr', '2021', '0', 8.9, 0, 171, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(434, '432a8a83-edb9-694f-875d-925fb176d84d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Abriscience', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(435, '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'NanoDirect', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 1.12, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(436, '1a31c08b-72f0-80be-c9c4-a113630edce0', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Scigenesis', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(437, '421b1b6d-882c-0649-3a81-a5a581f694fa', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Minnowtech', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 1, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(438, '77dc4640-0141-c90b-994e-c68e228ddddb', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'DiPole', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 10, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:39'),
(439, '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'EarlyCharm Site', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 2.44, 0, 10, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(440, '2a036971-d010-1dc5-aed7-cf75d3f89b8f', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'RasioTx', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(441, '32504283-1811-5bc3-84f8-e92d2bc732a1', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Tarsieroptics', '#DC3912', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(442, '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling', '#FF9900', NULL, NULL, 0, 'false', 'Cole@foundersapproach.com, Shaoor@foundersapproach.com, Phil@foundersapproach.com, Dave@foundersapproach.com, Neil@foundersapproach.com', 'Apr', '2021', '60', 44.17, 0, 76, 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(443, '30e84e35-8285-73e7-72c3-f44620440981', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Synteris (Early Charm)', '#66AA00', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(444, '8880790e-8629-e072-bbf9-c9ee740032b5', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Your Life Rocks Internal', '#9C5935', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 0, 0, 24, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(445, 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Choice Remodeling Internal', '#FF9900', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(446, '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'HAB312 (OrangeHat)', '#B82E2E', 5179, NULL, 0, 'false', 'cole@foundersapproach.com, divyesh@foundersapproach.com, phil@foundersapproach.com, neil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 2, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(447, '73f56710-f5f9-b44e-732f-40c6182a8bbc', 0, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'Rallie App', '#E67300', NULL, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 252.48, 0, 419, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(448, '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Marketing Doctor', '#6633CC', NULL, NULL, 0, 'false', 'cole@foundersapproach.com, phil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 31, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(449, '6da266df-c737-bca2-4aed-5dd58fd42bf9', 142280, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Mission Facilitators', '#8B0707', NULL, NULL, 0, 'false', 'kat@foundersapproach.com, phil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '10', 3.76, 0, 13, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(450, '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Coastal Hospice', '#990099', 5179, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 48, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(451, 'fa461119-c21f-177c-0fde-a8543d67d6af', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Metro Centre (Orange Hat)', '#994499', 5179, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0, 0, 3, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(452, '96c36ec9-aecf-427a-7975-78c5b7ed9870', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Materic', '#E67300', 5499, NULL, 0, 'false', 'Kat@foundersapproach.com, tushar@foundersapproach.com, phil@foundersapproach.com, \r\nneil@foundersapproach.com', 'Apr', '2021', '0', 0, 0, 17, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(453, '80070947-82ff-fa95-8205-08361372714b', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'tabrabbit', '#B77322', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '216', 189.78, 0, 190, 'inactive', 'inactive', 'active', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(454, 'f1660824-5f01-5de5-2a27-ba30b2f195c5', 126042, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'TabRabbit(Support)', '#994499', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com', 'Apr', '2021', '30', 10.68, 0, 11, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(455, 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Jennyward (Orange Hat)', '#9C5935', 5179, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 4.56, 0, 5, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(456, '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, 'Fixed', '52033l664d7349b4d71e273adbd19e2197745f', 'REVA', '#DC3912', NULL, NULL, 0, 'false', 'phil@foundersapproach.com, dave@foundersapproach.com, hunter@foundersapproach.com', 'Apr', '2021', '0', 46.3, 563, 46, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40'),
(457, 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'WeCanBmore', '#B77322', 5179, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 6.46, 0, 6, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:40');
INSERT INTO `projects_history` (`id`, `project_id`, `manager_id`, `project_type`, `ssm_id`, `name`, `color`, `client_id`, `endDate`, `billed_hours`, `billed`, `emails`, `month_name`, `year`, `month_limit`, `total_work_by_month`, `total_limit`, `total_work`, `month_flag25`, `month_flag50`, `month_flag75`, `month_flag100`, `month_flag125`, `month_flag150`, `status`, `pm_status`, `project_type_status`, `month_status`, `year_status`, `update_time`) VALUES
(458, '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 0, 'DNE', '52033l664d7349b4d71e273adbd19e2197745f', 'Orangehat.us', '#16D620', 5179, NULL, 0, 'false', 'No Emails', 'Apr', '2021', '0', 0.38, 0, 0, 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'inactive', 'active', 'active', 'active', 'inactive', 'inactive', '2021-05-03 04:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `project_total_work`
--

CREATE TABLE `project_total_work` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) NOT NULL,
  `emplId` int(11) NOT NULL,
  `total_limit` varchar(100) DEFAULT NULL,
  `total_work_hours` varchar(50) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_total_work`
--

INSERT INTO `project_total_work` (`id`, `ssm_id`, `project_id`, `emplId`, `total_limit`, `total_work_hours`, `update_time`) VALUES
(44674, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 103434, NULL, '4.25', '2021-04-30 17:00:03'),
(44675, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 103434, NULL, '0.5', '2021-04-30 17:00:03'),
(44676, '52033l664d7349b4d71e273adbd19e2197745f', '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 103434, NULL, '0.75', '2021-04-30 17:00:03'),
(44677, '52033l664d7349b4d71e273adbd19e2197745f', '68aad3ab-aa32-1d29-108c-84b5428a9c10', 103434, NULL, '3.75', '2021-04-30 17:00:03'),
(44678, '52033l664d7349b4d71e273adbd19e2197745f', '42aa6549-66d9-dcea-7afe-58877063b993', 103434, NULL, '1.83', '2021-04-30 17:00:03'),
(44679, '52033l664d7349b4d71e273adbd19e2197745f', 'e5602784-dcb7-baa4-d427-eb153f6db514', 103434, NULL, '7', '2021-04-30 17:00:03'),
(44680, '52033l664d7349b4d71e273adbd19e2197745f', '8f38059e-e5bc-acf7-0117-ac3198d12143', 103434, NULL, '0.25', '2021-04-30 17:00:03'),
(44681, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 103434, NULL, '38.5', '2021-04-30 17:00:03'),
(44682, '52033l664d7349b4d71e273adbd19e2197745f', 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 103434, NULL, '1.75', '2021-04-30 17:00:03'),
(44683, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 103434, NULL, '3', '2021-04-30 17:00:03'),
(44684, '52033l664d7349b4d71e273adbd19e2197745f', '9760777c-89fd-78a2-f950-4cfa667c9799', 103434, NULL, '2.25', '2021-04-30 17:00:03'),
(44685, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 103434, NULL, '0.5', '2021-04-30 17:00:03'),
(44686, '52033l664d7349b4d71e273adbd19e2197745f', '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 103434, NULL, '1.58', '2021-04-30 17:00:03'),
(44687, '52033l664d7349b4d71e273adbd19e2197745f', '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 103434, NULL, '1.5', '2021-04-30 17:00:03'),
(44688, '52033l664d7349b4d71e273adbd19e2197745f', 'c23db3bb-b968-c4e9-7035-11c463f897b9', 103434, NULL, '0.33', '2021-04-30 17:00:03'),
(44689, '52033l664d7349b4d71e273adbd19e2197745f', '1427fc82-fda1-0e0c-468e-789980d2e786', 103434, NULL, '0.5', '2021-04-30 17:00:03'),
(44690, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 103434, NULL, '0.25', '2021-04-30 17:00:03'),
(44691, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 103434, NULL, '29.5', '2021-04-30 17:00:03'),
(44692, '52033l664d7349b4d71e273adbd19e2197745f', 'cc078edc-2530-27c8-1941-4b4b976ccde1', 103434, NULL, '5.83', '2021-04-30 17:00:03'),
(44693, '52033l664d7349b4d71e273adbd19e2197745f', 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 103434, NULL, '1.5', '2021-04-30 17:00:03'),
(44694, '52033l664d7349b4d71e273adbd19e2197745f', '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 103434, NULL, '0.25', '2021-04-30 17:00:03'),
(44695, '52033l664d7349b4d71e273adbd19e2197745f', '32456ad1-3589-31c3-aef2-a8bc26174e70', 103434, NULL, '1', '2021-04-30 17:00:03'),
(44696, '52033l664d7349b4d71e273adbd19e2197745f', '1895bb50-9a71-2817-9421-e37811103211', 103434, NULL, '0.5', '2021-04-30 17:00:03'),
(44697, '52033l664d7349b4d71e273adbd19e2197745f', 'ef2d3724-f62a-20f3-6d40-6bf2cfdc7d15', 103565, NULL, '251.8', '2021-04-30 17:00:04'),
(44698, '52033l664d7349b4d71e273adbd19e2197745f', '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 103565, NULL, '187.95', '2021-04-30 17:00:04'),
(44699, '52033l664d7349b4d71e273adbd19e2197745f', 'fa3d9634-7530-a53d-06ec-a943db71d1c0', 103565, NULL, '13.05', '2021-04-30 17:00:04'),
(44700, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 103565, NULL, '86.77', '2021-04-30 17:00:04'),
(44701, '52033l664d7349b4d71e273adbd19e2197745f', '9498028c-654e-51aa-96a5-a7ba14ae49a3', 103565, NULL, '17.91', '2021-04-30 17:00:04'),
(44702, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103565, NULL, '218.96', '2021-04-30 17:00:04'),
(44703, '52033l664d7349b4d71e273adbd19e2197745f', '376c1202-4391-518a-cf6c-4b2cc764c07c', 103565, NULL, '296.22', '2021-04-30 17:00:04'),
(44704, '52033l664d7349b4d71e273adbd19e2197745f', '891bf18c-539f-0bff-c099-b6f767d8e0e2', 103565, NULL, '201.94', '2021-04-30 17:00:04'),
(44705, '52033l664d7349b4d71e273adbd19e2197745f', '6d689d2f-8752-0eb3-e459-2edeb8feab69', 103565, NULL, '6.73', '2021-04-30 17:00:04'),
(44706, '52033l664d7349b4d71e273adbd19e2197745f', '68aad3ab-aa32-1d29-108c-84b5428a9c10', 103565, NULL, '99.77', '2021-04-30 17:00:04'),
(44707, '52033l664d7349b4d71e273adbd19e2197745f', '66c0fc64-ecec-1e21-722e-1ff62aca222c', 103565, NULL, '4.35', '2021-04-30 17:00:04'),
(44708, '52033l664d7349b4d71e273adbd19e2197745f', '1007d034-f0fd-4fbb-018a-a748c02c917b', 103565, NULL, '304.91', '2021-04-30 17:00:04'),
(44709, '52033l664d7349b4d71e273adbd19e2197745f', '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 103565, NULL, '235.32', '2021-04-30 17:00:04'),
(44710, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 103565, NULL, '70.68', '2021-04-30 17:00:04'),
(44711, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 103565, NULL, '402.82', '2021-04-30 17:00:04'),
(44712, '52033l664d7349b4d71e273adbd19e2197745f', '4c3c5a2d-1aa3-f025-7150-389331303860', 103565, NULL, '6.22', '2021-04-30 17:00:04'),
(44713, '52033l664d7349b4d71e273adbd19e2197745f', 'dc8e7e94-a44b-8178-d0a9-7778d2fb4cba', 103565, NULL, '2.8', '2021-04-30 17:00:04'),
(44714, '52033l664d7349b4d71e273adbd19e2197745f', '0a008290-97ea-d118-dfc8-87ea494e0726', 103565, NULL, '452.64', '2021-04-30 17:00:04'),
(44715, '52033l664d7349b4d71e273adbd19e2197745f', '69ee2e15-9f99-7713-33eb-ac9fa4dfc0d1', 103565, NULL, '81', '2021-04-30 17:00:04'),
(44716, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 103565, NULL, '401.47', '2021-04-30 17:00:04'),
(44717, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 103565, NULL, '412.1', '2021-04-30 17:00:04'),
(44718, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103565, NULL, '101.07', '2021-04-30 17:00:04'),
(44719, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103565, NULL, '95.07', '2021-04-30 17:00:04'),
(44720, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 103565, NULL, '373.82', '2021-04-30 17:00:04'),
(44721, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103565, NULL, '149.82', '2021-04-30 17:00:04'),
(44722, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 103565, NULL, '27.68', '2021-04-30 17:00:04'),
(44723, '52033l664d7349b4d71e273adbd19e2197745f', '1895bb50-9a71-2817-9421-e37811103211', 103565, NULL, '20.14', '2021-04-30 17:00:04'),
(44724, '52033l664d7349b4d71e273adbd19e2197745f', '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 103565, NULL, '51.71', '2021-04-30 17:00:04'),
(44725, '52033l664d7349b4d71e273adbd19e2197745f', '', 103565, NULL, '0.58', '2021-04-30 17:00:04'),
(44726, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 103565, NULL, '0.02', '2021-04-30 17:00:04'),
(44727, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103565, NULL, '0.22', '2021-04-30 17:00:04'),
(44728, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103566, NULL, '140.84', '2021-04-30 17:00:06'),
(44729, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103566, NULL, '47.78', '2021-04-30 17:00:06'),
(44730, '52033l664d7349b4d71e273adbd19e2197745f', '804f41eb-0732-4873-ffb9-90a3a09ef9d1', 103566, NULL, '1.34', '2021-04-30 17:00:06'),
(44731, '52033l664d7349b4d71e273adbd19e2197745f', '84c5ce3d-e477-b6fc-4db9-6de5064267ab', 103566, NULL, '55.87', '2021-04-30 17:00:06'),
(44732, '52033l664d7349b4d71e273adbd19e2197745f', '1fe34842-2413-5684-9206-724c6c763258', 103566, NULL, '74.37', '2021-04-30 17:00:06'),
(44733, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103566, NULL, '342.13', '2021-04-30 17:00:06'),
(44734, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 103566, NULL, '804.48', '2021-04-30 17:00:06'),
(44735, '52033l664d7349b4d71e273adbd19e2197745f', '7b6e1e6f-f0b4-c74c-97b0-39a25f1c36df', 103566, NULL, '39.18', '2021-04-30 17:00:06'),
(44736, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103566, NULL, '168.75', '2021-04-30 17:00:06'),
(44737, '52033l664d7349b4d71e273adbd19e2197745f', '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 103566, NULL, '137.9', '2021-04-30 17:00:06'),
(44738, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103566, NULL, '337.63', '2021-04-30 17:00:06'),
(44739, '52033l664d7349b4d71e273adbd19e2197745f', 'ff154844-279e-a8e3-1e45-5a014cea9670', 103566, NULL, '12.79', '2021-04-30 17:00:06'),
(44740, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 103566, NULL, '6.9', '2021-04-30 17:00:06'),
(44741, '52033l664d7349b4d71e273adbd19e2197745f', 'cef142b4-37dc-3e38-31dc-b016bb388dd2', 103566, NULL, '3.74', '2021-04-30 17:00:06'),
(44742, '52033l664d7349b4d71e273adbd19e2197745f', '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 103566, NULL, '145.86', '2021-04-30 17:00:06'),
(44743, '52033l664d7349b4d71e273adbd19e2197745f', '4d2fa3f7-508c-daa1-9c2d-c5b402679da6', 103566, NULL, '0.87', '2021-04-30 17:00:06'),
(44744, '52033l664d7349b4d71e273adbd19e2197745f', '5c1aa8f6-55e1-26d8-a74d-ebb7444f0ce7', 103566, NULL, '23.31', '2021-04-30 17:00:06'),
(44745, '52033l664d7349b4d71e273adbd19e2197745f', '4fcbc177-1c71-b6e4-23a1-9c5c6bc6d997', 103566, NULL, '7.18', '2021-04-30 17:00:06'),
(44746, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 103566, NULL, '15.86', '2021-04-30 17:00:06'),
(44747, '52033l664d7349b4d71e273adbd19e2197745f', '6960d7e7-691b-2037-878f-85b1888537df', 103566, NULL, '27.96', '2021-04-30 17:00:06'),
(44748, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 103566, NULL, '49.04', '2021-04-30 17:00:06'),
(44749, '52033l664d7349b4d71e273adbd19e2197745f', '1427fc82-fda1-0e0c-468e-789980d2e786', 103566, NULL, '24.05', '2021-04-30 17:00:06'),
(44750, '52033l664d7349b4d71e273adbd19e2197745f', 'c23db3bb-b968-c4e9-7035-11c463f897b9', 103566, NULL, '8.2', '2021-04-30 17:00:06'),
(44751, '52033l664d7349b4d71e273adbd19e2197745f', '', 103566, NULL, '4.26', '2021-04-30 17:00:06'),
(44752, '52033l664d7349b4d71e273adbd19e2197745f', '8ad84d44-8709-d581-29c6-2ebf30106731', 103566, NULL, '1.82', '2021-04-30 17:00:06'),
(44753, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 103566, NULL, '1.99', '2021-04-30 17:00:06'),
(44754, '52033l664d7349b4d71e273adbd19e2197745f', 'a0e05808-117c-9eb5-318f-b39c4babec1c', 103566, NULL, '1.3', '2021-04-30 17:00:06'),
(44755, '52033l664d7349b4d71e273adbd19e2197745f', '6670d311-edd1-8957-235f-13f8d82e435d', 103566, NULL, '0.47', '2021-04-30 17:00:06'),
(44756, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 103566, NULL, '434.76', '2021-04-30 17:00:06'),
(44757, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 103566, NULL, '288.64', '2021-04-30 17:00:06'),
(44758, '52033l664d7349b4d71e273adbd19e2197745f', 'e5602784-dcb7-baa4-d427-eb153f6db514', 103566, NULL, '147.73', '2021-04-30 17:00:06'),
(44759, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 103566, NULL, '199.81', '2021-04-30 17:00:06'),
(44760, '52033l664d7349b4d71e273adbd19e2197745f', 'b78ad6ad-30d8-2f28-f153-1891b807febb', 103566, NULL, '61.08', '2021-04-30 17:00:06'),
(44761, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103566, NULL, '30.1', '2021-04-30 17:00:06'),
(44762, '52033l664d7349b4d71e273adbd19e2197745f', '66396a22-1708-3e19-822a-4cea505ebcc7', 103566, NULL, '62.33', '2021-04-30 17:00:06'),
(44763, '52033l664d7349b4d71e273adbd19e2197745f', 'e7b0f60e-0fd2-da2a-9835-4d8b4934d3e1', 103566, NULL, '0.76', '2021-04-30 17:00:06'),
(44764, '52033l664d7349b4d71e273adbd19e2197745f', '42aa6549-66d9-dcea-7afe-58877063b993', 103566, NULL, '34.15', '2021-04-30 17:00:06'),
(44765, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 103566, NULL, '26.65', '2021-04-30 17:00:06'),
(44766, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 103566, NULL, '105.11', '2021-04-30 17:00:06'),
(44767, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 103566, NULL, '9.34', '2021-04-30 17:00:06'),
(44768, '52033l664d7349b4d71e273adbd19e2197745f', 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 103566, NULL, '50.39', '2021-04-30 17:00:06'),
(44769, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 103566, NULL, '15.45', '2021-04-30 17:00:06'),
(44770, '52033l664d7349b4d71e273adbd19e2197745f', 'a8531e3f-d1be-1d46-4b0d-250a4db4c4d9', 103566, NULL, '13.51', '2021-04-30 17:00:06'),
(44771, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 103566, NULL, '26.77', '2021-04-30 17:00:06'),
(44772, '52033l664d7349b4d71e273adbd19e2197745f', '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 103566, NULL, '38.86', '2021-04-30 17:00:06'),
(44773, '52033l664d7349b4d71e273adbd19e2197745f', '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 103566, NULL, '59.08', '2021-04-30 17:00:06'),
(44774, '52033l664d7349b4d71e273adbd19e2197745f', '442979ed-58be-b629-7770-f62d362e9c84', 103566, NULL, '23.01', '2021-04-30 17:00:06'),
(44775, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103566, NULL, '6.18', '2021-04-30 17:00:06'),
(44776, '52033l664d7349b4d71e273adbd19e2197745f', 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 103566, NULL, '41.25', '2021-04-30 17:00:06'),
(44777, '52033l664d7349b4d71e273adbd19e2197745f', '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 103566, NULL, '81.27', '2021-04-30 17:00:06'),
(44778, '52033l664d7349b4d71e273adbd19e2197745f', '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 103566, NULL, '21.25', '2021-04-30 17:00:06'),
(44779, '52033l664d7349b4d71e273adbd19e2197745f', '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 103566, NULL, '63.6', '2021-04-30 17:00:06'),
(44780, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 103566, NULL, '20.14', '2021-04-30 17:00:06'),
(44781, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 103566, NULL, '3.61', '2021-04-30 17:00:06'),
(44782, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 103566, NULL, '16.5', '2021-04-30 17:00:06'),
(44783, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 103566, NULL, '22.68', '2021-04-30 17:00:06'),
(44784, '52033l664d7349b4d71e273adbd19e2197745f', '69ee2e15-9f99-7713-33eb-ac9fa4dfc0d1', 103566, NULL, '125', '2021-04-30 17:00:06'),
(44785, '52033l664d7349b4d71e273adbd19e2197745f', '32456ad1-3589-31c3-aef2-a8bc26174e70', 103566, NULL, '5.47', '2021-04-30 17:00:06'),
(44786, '52033l664d7349b4d71e273adbd19e2197745f', '642c90ce-f298-5ea8-0d57-d002132f8b34', 103566, NULL, '1.61', '2021-04-30 17:00:06'),
(44787, '52033l664d7349b4d71e273adbd19e2197745f', '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 103566, NULL, '1.55', '2021-04-30 17:00:06'),
(44788, '52033l664d7349b4d71e273adbd19e2197745f', '73b16048-91ee-68e9-7710-1f616de29950', 103566, NULL, '7.86', '2021-04-30 17:00:06'),
(44789, '52033l664d7349b4d71e273adbd19e2197745f', '8f38059e-e5bc-acf7-0117-ac3198d12143', 103566, NULL, '3.04', '2021-04-30 17:00:06'),
(44790, '52033l664d7349b4d71e273adbd19e2197745f', '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 103566, NULL, '13.2', '2021-04-30 17:00:06'),
(44791, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 103566, NULL, '8.16', '2021-04-30 17:00:06'),
(44792, '52033l664d7349b4d71e273adbd19e2197745f', '8880790e-8629-e072-bbf9-c9ee740032b5', 103566, NULL, '21.16', '2021-04-30 17:00:06'),
(44793, '52033l664d7349b4d71e273adbd19e2197745f', 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 103566, NULL, '8.57', '2021-04-30 17:00:06'),
(44794, '52033l664d7349b4d71e273adbd19e2197745f', '9760777c-89fd-78a2-f950-4cfa667c9799', 103566, NULL, '3.93', '2021-04-30 17:00:06'),
(44795, '52033l664d7349b4d71e273adbd19e2197745f', '18b1be16-241b-b377-662f-5f875fcffb9e', 103566, NULL, '4.25', '2021-04-30 17:00:06'),
(44796, '52033l664d7349b4d71e273adbd19e2197745f', 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 103566, NULL, '4.34', '2021-04-30 17:00:06'),
(44797, '52033l664d7349b4d71e273adbd19e2197745f', '5053acdb-3032-4e91-38a6-233a09d3e762', 103566, NULL, '2.82', '2021-04-30 17:00:06'),
(44798, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103566, NULL, '3.58', '2021-04-30 17:00:06'),
(44799, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103566, NULL, '2.55', '2021-04-30 17:00:06'),
(44800, '52033l664d7349b4d71e273adbd19e2197745f', '581b9208-501a-6912-1b2d-9bff4fd914ca', 103566, NULL, '0.23', '2021-04-30 17:00:06'),
(44801, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103566, NULL, '2.79', '2021-04-30 17:00:06'),
(44802, '52033l664d7349b4d71e273adbd19e2197745f', 'e19b9a68-f737-e6c0-1904-1f4e387998a9', 103566, NULL, '0.33', '2021-04-30 17:00:06'),
(44803, '52033l664d7349b4d71e273adbd19e2197745f', 'e43d0acf-7908-ec5c-90b1-f5050f904c65', 103566, NULL, '2.8', '2021-04-30 17:00:06'),
(44804, '52033l664d7349b4d71e273adbd19e2197745f', '3aeed760-6a29-0ec6-44ad-90e6f7706674', 103566, NULL, '6.14', '2021-04-30 17:00:06'),
(44805, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 103566, NULL, '1.34', '2021-04-30 17:00:06'),
(44806, '52033l664d7349b4d71e273adbd19e2197745f', '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 103566, NULL, '1.12', '2021-04-30 17:00:06'),
(44807, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 103566, NULL, '0.33', '2021-04-30 17:00:06'),
(44808, '52033l664d7349b4d71e273adbd19e2197745f', 'a489870f-b474-0bc6-c33f-e9df15d25fee', 103566, NULL, '0.08', '2021-04-30 17:00:06'),
(44809, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 103566, NULL, '0.48', '2021-04-30 17:00:06'),
(44810, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103566, NULL, '0.67', '2021-04-30 17:00:06'),
(44811, '52033l664d7349b4d71e273adbd19e2197745f', 'add95355-3bbf-7e85-a598-792975540be2', 103566, NULL, '1.6', '2021-04-30 17:00:06'),
(44812, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 103566, NULL, '0.08', '2021-04-30 17:00:06'),
(44813, '52033l664d7349b4d71e273adbd19e2197745f', '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 103566, NULL, '2.38', '2021-04-30 17:00:06'),
(44814, '52033l664d7349b4d71e273adbd19e2197745f', '4c7b05b9-46e8-348b-dfb1-2ab4fbdb4df6', 103567, NULL, '371.17', '2021-04-30 17:00:08'),
(44815, '52033l664d7349b4d71e273adbd19e2197745f', '1fe34842-2413-5684-9206-724c6c763258', 103567, NULL, '10.16', '2021-04-30 17:00:08'),
(44816, '52033l664d7349b4d71e273adbd19e2197745f', 'ee785466-6eaf-eb0a-4b13-a7aa5d6a1fe6', 103567, NULL, '10.61', '2021-04-30 17:00:08'),
(44817, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 103567, NULL, '44.17', '2021-04-30 17:00:08'),
(44818, '52033l664d7349b4d71e273adbd19e2197745f', 'ef2d3724-f62a-20f3-6d40-6bf2cfdc7d15', 103567, NULL, '45.68', '2021-04-30 17:00:08'),
(44819, '52033l664d7349b4d71e273adbd19e2197745f', '1007d034-f0fd-4fbb-018a-a748c02c917b', 103567, NULL, '24.27', '2021-04-30 17:00:08'),
(44820, '52033l664d7349b4d71e273adbd19e2197745f', '9498028c-654e-51aa-96a5-a7ba14ae49a3', 103567, NULL, '15.06', '2021-04-30 17:00:08'),
(44821, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 103567, NULL, '6.6', '2021-04-30 17:00:08'),
(44822, '52033l664d7349b4d71e273adbd19e2197745f', 'da6fd666-ce9f-c924-8741-e9eaeed7563c', 103567, NULL, '54.6', '2021-04-30 17:00:08'),
(44823, '52033l664d7349b4d71e273adbd19e2197745f', '376c1202-4391-518a-cf6c-4b2cc764c07c', 103567, NULL, '32.74', '2021-04-30 17:00:08'),
(44824, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103567, NULL, '55.99', '2021-04-30 17:00:08'),
(44825, '52033l664d7349b4d71e273adbd19e2197745f', '33f24970-77d3-3860-f805-ea07d54d2e73', 103567, NULL, '20.92', '2021-04-30 17:00:08'),
(44826, '52033l664d7349b4d71e273adbd19e2197745f', '4b878c0f-5c1c-43f7-f56e-3083e0522cbd', 103567, NULL, '25.91', '2021-04-30 17:00:08'),
(44827, '52033l664d7349b4d71e273adbd19e2197745f', '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 103567, NULL, '14.09', '2021-04-30 17:00:08'),
(44828, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 103567, NULL, '12.37', '2021-04-30 17:00:08'),
(44829, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 103567, NULL, '42.93', '2021-04-30 17:00:08'),
(44830, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103567, NULL, '20.88', '2021-04-30 17:00:08'),
(44831, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103567, NULL, '40.66', '2021-04-30 17:00:08'),
(44832, '52033l664d7349b4d71e273adbd19e2197745f', '6d689d2f-8752-0eb3-e459-2edeb8feab69', 103567, NULL, '6.77', '2021-04-30 17:00:08'),
(44833, '52033l664d7349b4d71e273adbd19e2197745f', '1b0e9bf5-3adb-652e-a402-ab468862984f', 103567, NULL, '1.05', '2021-04-30 17:00:08'),
(44834, '52033l664d7349b4d71e273adbd19e2197745f', '804f41eb-0732-4873-ffb9-90a3a09ef9d1', 103567, NULL, '7.35', '2021-04-30 17:00:08'),
(44835, '52033l664d7349b4d71e273adbd19e2197745f', '5c1aa8f6-55e1-26d8-a74d-ebb7444f0ce7', 103567, NULL, '0.88', '2021-04-30 17:00:08'),
(44836, '52033l664d7349b4d71e273adbd19e2197745f', '891bf18c-539f-0bff-c099-b6f767d8e0e2', 103567, NULL, '16.77', '2021-04-30 17:00:08'),
(44837, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103567, NULL, '412.25', '2021-04-30 17:00:08'),
(44838, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 103567, NULL, '1.93', '2021-04-30 17:00:08'),
(44839, '52033l664d7349b4d71e273adbd19e2197745f', '68aad3ab-aa32-1d29-108c-84b5428a9c10', 103567, NULL, '9.22', '2021-04-30 17:00:08'),
(44840, '52033l664d7349b4d71e273adbd19e2197745f', '85e1ec43-976c-8d98-c24d-c7ef23d12e89', 103567, NULL, '3.17', '2021-04-30 17:00:08'),
(44841, '52033l664d7349b4d71e273adbd19e2197745f', '', 103567, NULL, '8.49', '2021-04-30 17:00:08'),
(44842, '52033l664d7349b4d71e273adbd19e2197745f', 'a71012b0-8a85-94a8-d877-e5b89b35eca7', 103567, NULL, '0.93', '2021-04-30 17:00:08'),
(44843, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 103567, NULL, '9.7', '2021-04-30 17:00:08'),
(44844, '52033l664d7349b4d71e273adbd19e2197745f', 'ba3df2e3-bf65-8331-846d-5f784517e85b', 103567, NULL, '139.47', '2021-04-30 17:00:08'),
(44845, '52033l664d7349b4d71e273adbd19e2197745f', 'e19b9a68-f737-e6c0-1904-1f4e387998a9', 103567, NULL, '408.23', '2021-04-30 17:00:08'),
(44846, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 103567, NULL, '147.36', '2021-04-30 17:00:08'),
(44847, '52033l664d7349b4d71e273adbd19e2197745f', '7b6e1e6f-f0b4-c74c-97b0-39a25f1c36df', 103567, NULL, '9.87', '2021-04-30 17:00:08'),
(44848, '52033l664d7349b4d71e273adbd19e2197745f', '1427fc82-fda1-0e0c-468e-789980d2e786', 103567, NULL, '1.94', '2021-04-30 17:00:08'),
(44849, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 103567, NULL, '14.45', '2021-04-30 17:00:08'),
(44850, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 103567, NULL, '21.81', '2021-04-30 17:00:08'),
(44851, '52033l664d7349b4d71e273adbd19e2197745f', '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 103567, NULL, '4.06', '2021-04-30 17:00:08'),
(44852, '52033l664d7349b4d71e273adbd19e2197745f', '98c68cd4-e837-61ab-e1d6-8a136a79957a', 103567, NULL, '117.41', '2021-04-30 17:00:08'),
(44853, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 103567, NULL, '56.81', '2021-04-30 17:00:08'),
(44854, '52033l664d7349b4d71e273adbd19e2197745f', '0a008290-97ea-d118-dfc8-87ea494e0726', 103567, NULL, '21.54', '2021-04-30 17:00:08'),
(44855, '52033l664d7349b4d71e273adbd19e2197745f', '0961dd5b-e69f-8592-1718-e6a7ed44f161', 103567, NULL, '21.13', '2021-04-30 17:00:08'),
(44856, '52033l664d7349b4d71e273adbd19e2197745f', '044261d0-31d5-a69d-9ed3-4017f2239045', 103567, NULL, '38.53', '2021-04-30 17:00:08'),
(44857, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 103567, NULL, '4.63', '2021-04-30 17:00:08'),
(44858, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103567, NULL, '11.23', '2021-04-30 17:00:08'),
(44859, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103567, NULL, '67.1', '2021-04-30 17:00:08'),
(44860, '52033l664d7349b4d71e273adbd19e2197745f', '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 103567, NULL, '30.98', '2021-04-30 17:00:08'),
(44861, '52033l664d7349b4d71e273adbd19e2197745f', '42aa6549-66d9-dcea-7afe-58877063b993', 103567, NULL, '2.38', '2021-04-30 17:00:08'),
(44862, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 103567, NULL, '15.01', '2021-04-30 17:00:08'),
(44863, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 103567, NULL, '10.35', '2021-04-30 17:00:08'),
(44864, '52033l664d7349b4d71e273adbd19e2197745f', '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 103567, NULL, '4.98', '2021-04-30 17:00:08'),
(44865, '52033l664d7349b4d71e273adbd19e2197745f', 'e5602784-dcb7-baa4-d427-eb153f6db514', 103567, NULL, '7.93', '2021-04-30 17:00:08'),
(44866, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 103567, NULL, '38.86', '2021-04-30 17:00:08'),
(44867, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 103567, NULL, '3.66', '2021-04-30 17:00:08'),
(44868, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 103567, NULL, '9.65', '2021-04-30 17:00:08'),
(44869, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 103567, NULL, '27.05', '2021-04-30 17:00:08'),
(44870, '52033l664d7349b4d71e273adbd19e2197745f', '66396a22-1708-3e19-822a-4cea505ebcc7', 103567, NULL, '1.48', '2021-04-30 17:00:08'),
(44871, '52033l664d7349b4d71e273adbd19e2197745f', 'd595c31c-0a2c-bd0a-8c07-082e27f27a41', 103567, NULL, '7.97', '2021-04-30 17:00:08'),
(44872, '52033l664d7349b4d71e273adbd19e2197745f', 'b78ad6ad-30d8-2f28-f153-1891b807febb', 103567, NULL, '1.55', '2021-04-30 17:00:08'),
(44873, '52033l664d7349b4d71e273adbd19e2197745f', '4fcbc177-1c71-b6e4-23a1-9c5c6bc6d997', 103567, NULL, '5.94', '2021-04-30 17:00:08'),
(44874, '52033l664d7349b4d71e273adbd19e2197745f', '69ee2e15-9f99-7713-33eb-ac9fa4dfc0d1', 103567, NULL, '68.05', '2021-04-30 17:00:08'),
(44875, '52033l664d7349b4d71e273adbd19e2197745f', '442979ed-58be-b629-7770-f62d362e9c84', 103567, NULL, '0.58', '2021-04-30 17:00:08'),
(44876, '52033l664d7349b4d71e273adbd19e2197745f', '0e3b9b57-2243-7445-d3d0-06915b7b3bee', 103567, NULL, '1.98', '2021-04-30 17:00:08'),
(44877, '52033l664d7349b4d71e273adbd19e2197745f', '4539d721-a2cc-e872-3e27-ae2df4a9cdb1', 103567, NULL, '0.6', '2021-04-30 17:00:08'),
(44878, '52033l664d7349b4d71e273adbd19e2197745f', '84c5ce3d-e477-b6fc-4db9-6de5064267ab', 103567, NULL, '3.4', '2021-04-30 17:00:08'),
(44879, '52033l664d7349b4d71e273adbd19e2197745f', '6670d311-edd1-8957-235f-13f8d82e435d', 103567, NULL, '2.06', '2021-04-30 17:00:08'),
(44880, '52033l664d7349b4d71e273adbd19e2197745f', '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 103567, NULL, '7.59', '2021-04-30 17:00:08'),
(44881, '52033l664d7349b4d71e273adbd19e2197745f', '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 103567, NULL, '1.8', '2021-04-30 17:00:08'),
(44882, '52033l664d7349b4d71e273adbd19e2197745f', '18b1be16-241b-b377-662f-5f875fcffb9e', 103567, NULL, '2.11', '2021-04-30 17:00:08'),
(44883, '52033l664d7349b4d71e273adbd19e2197745f', 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 103567, NULL, '1.87', '2021-04-30 17:00:08'),
(44884, '52033l664d7349b4d71e273adbd19e2197745f', '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 103567, NULL, '4.09', '2021-04-30 17:00:08'),
(44885, '52033l664d7349b4d71e273adbd19e2197745f', '7e82b784-433f-57bd-284b-ef6e1b275f37', 103567, NULL, '0.45', '2021-04-30 17:00:08'),
(44886, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 103567, NULL, '1.94', '2021-04-30 17:00:08'),
(44887, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 103567, NULL, '1.47', '2021-04-30 17:00:08'),
(44888, '52033l664d7349b4d71e273adbd19e2197745f', '4ef60fd3-bf2b-fefa-37a8-6e023fad3382', 103567, NULL, '10.19', '2021-04-30 17:00:08'),
(44889, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 103567, NULL, '15.2', '2021-04-30 17:00:08'),
(44890, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 103567, NULL, '5.11', '2021-04-30 17:00:08'),
(44891, '52033l664d7349b4d71e273adbd19e2197745f', '8f38059e-e5bc-acf7-0117-ac3198d12143', 103567, NULL, '0.93', '2021-04-30 17:00:08'),
(44892, '52033l664d7349b4d71e273adbd19e2197745f', '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 103567, NULL, '0.88', '2021-04-30 17:00:08'),
(44893, '52033l664d7349b4d71e273adbd19e2197745f', '66c0fc64-ecec-1e21-722e-1ff62aca222c', 103567, NULL, '4.59', '2021-04-30 17:00:08'),
(44894, '52033l664d7349b4d71e273adbd19e2197745f', '1895bb50-9a71-2817-9421-e37811103211', 103567, NULL, '1', '2021-04-30 17:00:08'),
(44895, '52033l664d7349b4d71e273adbd19e2197745f', '9076adb9-69bb-4e72-e3ad-7a432f7caf90', 103567, NULL, '4.01', '2021-04-30 17:00:08'),
(44896, '52033l664d7349b4d71e273adbd19e2197745f', '9695c458-5448-1176-2e11-272ed69b7383', 103567, NULL, '4.49', '2021-04-30 17:00:08'),
(44897, '52033l664d7349b4d71e273adbd19e2197745f', 'f993b6bd-7037-7e6e-e94a-df74dc1bd880', 103567, NULL, '1.69', '2021-04-30 17:00:08'),
(44898, '52033l664d7349b4d71e273adbd19e2197745f', 'e7cfbb44-c584-d75c-94f7-f09fb884c2d7', 103567, NULL, '0.75', '2021-04-30 17:00:08'),
(44899, '52033l664d7349b4d71e273adbd19e2197745f', '8ad84d44-8709-d581-29c6-2ebf30106731', 103567, NULL, '0.67', '2021-04-30 17:00:08'),
(44900, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103567, NULL, '1.81', '2021-04-30 17:00:08'),
(44901, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 103567, NULL, '0.9', '2021-04-30 17:00:08'),
(44902, '52033l664d7349b4d71e273adbd19e2197745f', '32456ad1-3589-31c3-aef2-a8bc26174e70', 103567, NULL, '0.93', '2021-04-30 17:00:08'),
(44903, '52033l664d7349b4d71e273adbd19e2197745f', 'a8531e3f-d1be-1d46-4b0d-250a4db4c4d9', 103567, NULL, '1.11', '2021-04-30 17:00:08'),
(44904, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 103567, NULL, '0.61', '2021-04-30 17:00:08'),
(44905, '52033l664d7349b4d71e273adbd19e2197745f', 'a0e05808-117c-9eb5-318f-b39c4babec1c', 103567, NULL, '0.32', '2021-04-30 17:00:08'),
(44906, '52033l664d7349b4d71e273adbd19e2197745f', '9c38979a-adc5-38b5-b734-493015c8a021', 103567, NULL, '1.27', '2021-04-30 17:00:08'),
(44907, '52033l664d7349b4d71e273adbd19e2197745f', '6960d7e7-691b-2037-878f-85b1888537df', 103567, NULL, '0.83', '2021-04-30 17:00:08'),
(44908, '52033l664d7349b4d71e273adbd19e2197745f', 'c23db3bb-b968-c4e9-7035-11c463f897b9', 103567, NULL, '0.7', '2021-04-30 17:00:08'),
(44909, '52033l664d7349b4d71e273adbd19e2197745f', '9be83445-c11c-8a41-b663-6c6269a5f70a', 103567, NULL, '4.86', '2021-04-30 17:00:08'),
(44910, '52033l664d7349b4d71e273adbd19e2197745f', 'ff154844-279e-a8e3-1e45-5a014cea9670', 103567, NULL, '1.19', '2021-04-30 17:00:08'),
(44911, '52033l664d7349b4d71e273adbd19e2197745f', 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 103567, NULL, '0.71', '2021-04-30 17:00:08'),
(44912, '52033l664d7349b4d71e273adbd19e2197745f', '965b922a-8cd0-0ae3-96fd-c8e7a3585b8f', 103567, NULL, '1.78', '2021-04-30 17:00:08'),
(44913, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 103567, NULL, '2.16', '2021-04-30 17:00:08'),
(44914, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 103567, NULL, '5.13', '2021-04-30 17:00:08'),
(44915, '52033l664d7349b4d71e273adbd19e2197745f', '5053acdb-3032-4e91-38a6-233a09d3e762', 103567, NULL, '0.27', '2021-04-30 17:00:08'),
(44916, '52033l664d7349b4d71e273adbd19e2197745f', '40f924d9-436f-2f4f-5cd9-60b148196f62', 103567, NULL, '0.69', '2021-04-30 17:00:08'),
(44917, '52033l664d7349b4d71e273adbd19e2197745f', 'a489870f-b474-0bc6-c33f-e9df15d25fee', 103567, NULL, '0.17', '2021-04-30 17:00:08'),
(44918, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103567, NULL, '0.58', '2021-04-30 17:00:08'),
(44919, '52033l664d7349b4d71e273adbd19e2197745f', '3aeed760-6a29-0ec6-44ad-90e6f7706674', 103567, NULL, '0.37', '2021-04-30 17:00:08'),
(44920, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 103567, NULL, '1.17', '2021-04-30 17:00:08'),
(44921, '52033l664d7349b4d71e273adbd19e2197745f', '4c3c5a2d-1aa3-f025-7150-389331303860', 103567, NULL, '2.12', '2021-04-30 17:00:08'),
(44922, '52033l664d7349b4d71e273adbd19e2197745f', 'f2932771-4858-1185-7dea-28061a8d32bd', 103567, NULL, '0.54', '2021-04-30 17:00:08'),
(44923, '52033l664d7349b4d71e273adbd19e2197745f', '4ac09b3e-31bd-58db-b754-86348ad1038c', 103567, NULL, '0.45', '2021-04-30 17:00:08'),
(44924, '52033l664d7349b4d71e273adbd19e2197745f', 'dc8e7e94-a44b-8178-d0a9-7778d2fb4cba', 103567, NULL, '0.69', '2021-04-30 17:00:08'),
(44925, '52033l664d7349b4d71e273adbd19e2197745f', '73b16048-91ee-68e9-7710-1f616de29950', 103567, NULL, '0.52', '2021-04-30 17:00:08'),
(44926, '52033l664d7349b4d71e273adbd19e2197745f', '28df5f0b-dc46-0291-be49-d30d50a37e83', 103567, NULL, '0.25', '2021-04-30 17:00:08'),
(44927, '52033l664d7349b4d71e273adbd19e2197745f', 'e7e511bb-56f3-6863-4c5f-1b399e86e0a3', 103567, NULL, '0.73', '2021-04-30 17:00:08'),
(44928, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103567, NULL, '4.52', '2021-04-30 17:00:08'),
(44929, '52033l664d7349b4d71e273adbd19e2197745f', 'cef142b4-37dc-3e38-31dc-b016bb388dd2', 103567, NULL, '0.2', '2021-04-30 17:00:08'),
(44930, '52033l664d7349b4d71e273adbd19e2197745f', '277b161e-35f3-df8c-146f-bb80cadea902', 103567, NULL, '0.25', '2021-04-30 17:00:08'),
(44931, '52033l664d7349b4d71e273adbd19e2197745f', '9760777c-89fd-78a2-f950-4cfa667c9799', 103567, NULL, '0.59', '2021-04-30 17:00:08'),
(44932, '52033l664d7349b4d71e273adbd19e2197745f', 'add95355-3bbf-7e85-a598-792975540be2', 103567, NULL, '0.42', '2021-04-30 17:00:08'),
(44933, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 103567, NULL, '0.74', '2021-04-30 17:00:08'),
(44934, '52033l664d7349b4d71e273adbd19e2197745f', '45b538f7-d6a2-42aa-eced-3c48729911cb', 103567, NULL, '0.35', '2021-04-30 17:00:08'),
(44935, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 103567, NULL, '0.76', '2021-04-30 17:00:08'),
(44936, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 103567, NULL, '1.31', '2021-04-30 17:00:08'),
(44937, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 103567, NULL, '3.52', '2021-04-30 17:00:08'),
(44938, '52033l664d7349b4d71e273adbd19e2197745f', '8880790e-8629-e072-bbf9-c9ee740032b5', 103567, NULL, '0.72', '2021-04-30 17:00:08'),
(44939, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103567, NULL, '0.28', '2021-04-30 17:00:08'),
(44940, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103567, NULL, '0.2', '2021-04-30 17:00:08'),
(44941, '52033l664d7349b4d71e273adbd19e2197745f', '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 103567, NULL, '0.6', '2021-04-30 17:00:08'),
(44942, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 103567, NULL, '0.18', '2021-04-30 17:00:08'),
(44943, '52033l664d7349b4d71e273adbd19e2197745f', 'cbdae2f6-336b-0772-c6db-de04d7c4ce5d', 103567, NULL, '0.17', '2021-04-30 17:00:08'),
(44944, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 113574, NULL, '15.54', '2021-04-30 17:00:10'),
(44945, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 113574, NULL, '1315.91', '2021-04-30 17:00:10'),
(44946, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 113574, NULL, '32.42', '2021-04-30 17:00:10'),
(44947, '52033l664d7349b4d71e273adbd19e2197745f', '7b6e1e6f-f0b4-c74c-97b0-39a25f1c36df', 113574, NULL, '59.84', '2021-04-30 17:00:10'),
(44948, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 113574, NULL, '758.57', '2021-04-30 17:00:10'),
(44949, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 113574, NULL, '40.37', '2021-04-30 17:00:10'),
(44950, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 113574, NULL, '45.19', '2021-04-30 17:00:10'),
(44951, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 113574, NULL, '231.88', '2021-04-30 17:00:10'),
(44952, '52033l664d7349b4d71e273adbd19e2197745f', '4fcbc177-1c71-b6e4-23a1-9c5c6bc6d997', 113574, NULL, '57.99', '2021-04-30 17:00:10'),
(44953, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 113574, NULL, '113.34', '2021-04-30 17:00:10'),
(44954, '52033l664d7349b4d71e273adbd19e2197745f', '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 113574, NULL, '27.9', '2021-04-30 17:00:10'),
(44955, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 113574, NULL, '43.05', '2021-04-30 17:00:10'),
(44956, '52033l664d7349b4d71e273adbd19e2197745f', '6670d311-edd1-8957-235f-13f8d82e435d', 113574, NULL, '28.92', '2021-04-30 17:00:10'),
(44957, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 113574, NULL, '55.97', '2021-04-30 17:00:10'),
(44958, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 113574, NULL, '36.71', '2021-04-30 17:00:10'),
(44959, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 113574, NULL, '164.77', '2021-04-30 17:00:10'),
(44960, '52033l664d7349b4d71e273adbd19e2197745f', '0e3b9b57-2243-7445-d3d0-06915b7b3bee', 113574, NULL, '9.04', '2021-04-30 17:00:10'),
(44961, '52033l664d7349b4d71e273adbd19e2197745f', 'cef142b4-37dc-3e38-31dc-b016bb388dd2', 113574, NULL, '0.37', '2021-04-30 17:00:10'),
(44962, '52033l664d7349b4d71e273adbd19e2197745f', 'f2932771-4858-1185-7dea-28061a8d32bd', 113574, NULL, '6.8', '2021-04-30 17:00:10'),
(44963, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 113574, NULL, '1.86', '2021-04-30 17:00:10'),
(44964, '52033l664d7349b4d71e273adbd19e2197745f', '', 113574, NULL, '25.69', '2021-04-30 17:00:10'),
(44965, '52033l664d7349b4d71e273adbd19e2197745f', '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 113574, NULL, '4.59', '2021-04-30 17:00:10'),
(44966, '52033l664d7349b4d71e273adbd19e2197745f', '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 113574, NULL, '2.47', '2021-04-30 17:00:10'),
(44967, '52033l664d7349b4d71e273adbd19e2197745f', '9be83445-c11c-8a41-b663-6c6269a5f70a', 113574, NULL, '2.14', '2021-04-30 17:00:10'),
(44968, '52033l664d7349b4d71e273adbd19e2197745f', '69ee2e15-9f99-7713-33eb-ac9fa4dfc0d1', 113574, NULL, '123.83', '2021-04-30 17:00:10'),
(44969, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 113574, NULL, '62.38', '2021-04-30 17:00:10'),
(44970, '52033l664d7349b4d71e273adbd19e2197745f', '4ac09b3e-31bd-58db-b754-86348ad1038c', 113574, NULL, '7.34', '2021-04-30 17:00:10'),
(44971, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 113574, NULL, '1.3', '2021-04-30 17:00:10'),
(44972, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 113574, NULL, '0.87', '2021-04-30 17:00:10'),
(44973, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 113574, NULL, '4.79', '2021-04-30 17:00:10'),
(44974, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 113574, NULL, '49.84', '2021-04-30 17:00:10'),
(44975, '52033l664d7349b4d71e273adbd19e2197745f', '8880790e-8629-e072-bbf9-c9ee740032b5', 113574, NULL, '1.81', '2021-04-30 17:00:10'),
(44976, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 113574, NULL, '6.57', '2021-04-30 17:00:10'),
(44977, '52033l664d7349b4d71e273adbd19e2197745f', '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 113574, NULL, '2.37', '2021-04-30 17:00:10'),
(44978, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 113574, NULL, '34.91', '2021-04-30 17:00:10'),
(44979, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 113574, NULL, '22.69', '2021-04-30 17:00:10'),
(44980, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 113574, NULL, '26.78', '2021-04-30 17:00:10'),
(44981, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 113574, NULL, '0.52', '2021-04-30 17:00:10'),
(44982, '52033l664d7349b4d71e273adbd19e2197745f', '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 113574, NULL, '6.59', '2021-04-30 17:00:10'),
(44983, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 113574, NULL, '7.97', '2021-04-30 17:00:10'),
(44984, '52033l664d7349b4d71e273adbd19e2197745f', '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 113574, NULL, '40.26', '2021-04-30 17:00:10'),
(44985, '52033l664d7349b4d71e273adbd19e2197745f', 'fa461119-c21f-177c-0fde-a8543d67d6af', 113574, NULL, '2.46', '2021-04-30 17:00:10'),
(44986, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 113574, NULL, '2.33', '2021-04-30 17:00:10'),
(44987, '52033l664d7349b4d71e273adbd19e2197745f', '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 113574, NULL, '0.86', '2021-04-30 17:00:10'),
(44988, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 113574, NULL, '0.57', '2021-04-30 17:00:10'),
(44989, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 113574, NULL, '2.08', '2021-04-30 17:00:10'),
(44990, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 113574, NULL, '0.98', '2021-04-30 17:00:10'),
(44991, '52033l664d7349b4d71e273adbd19e2197745f', '6670d311-edd1-8957-235f-13f8d82e435d', 117079, NULL, '6.32', '2021-04-30 17:00:11'),
(44992, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 117079, NULL, '788.70999999999', '2021-04-30 17:00:11'),
(44993, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 117079, NULL, '79.1', '2021-04-30 17:00:11'),
(44994, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, NULL, '141.07', '2021-04-30 17:00:11'),
(44995, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, NULL, '251.77', '2021-04-30 17:00:11'),
(44996, '52033l664d7349b4d71e273adbd19e2197745f', '9be83445-c11c-8a41-b663-6c6269a5f70a', 117079, NULL, '6.95', '2021-04-30 17:00:11'),
(44997, '52033l664d7349b4d71e273adbd19e2197745f', '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 117079, NULL, '11.78', '2021-04-30 17:00:11'),
(44998, '52033l664d7349b4d71e273adbd19e2197745f', '45a7af6e-ce75-e8e7-70b5-8cec1a664544', 117079, NULL, '9.99', '2021-04-30 17:00:11'),
(44999, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 117079, NULL, '26.2', '2021-04-30 17:00:11'),
(45000, '52033l664d7349b4d71e273adbd19e2197745f', '0a008290-97ea-d118-dfc8-87ea494e0726', 117079, NULL, '33.85', '2021-04-30 17:00:11'),
(45001, '52033l664d7349b4d71e273adbd19e2197745f', 'f1a3b0fa-5861-469b-05d9-2e8ac171a991', 117079, NULL, '2.08', '2021-04-30 17:00:11'),
(45002, '52033l664d7349b4d71e273adbd19e2197745f', '33f24970-77d3-3860-f805-ea07d54d2e73', 117079, NULL, '31.91', '2021-04-30 17:00:11'),
(45003, '52033l664d7349b4d71e273adbd19e2197745f', '4fcbc177-1c71-b6e4-23a1-9c5c6bc6d997', 117079, NULL, '10.99', '2021-04-30 17:00:11'),
(45004, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, NULL, '76.43', '2021-04-30 17:00:11'),
(45005, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 117079, NULL, '4.61', '2021-04-30 17:00:11'),
(45006, '52033l664d7349b4d71e273adbd19e2197745f', 'ef2d3724-f62a-20f3-6d40-6bf2cfdc7d15', 117079, NULL, '26.78', '2021-04-30 17:00:11'),
(45007, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 117079, NULL, '6.76', '2021-04-30 17:00:11'),
(45008, '52033l664d7349b4d71e273adbd19e2197745f', 'b78ad6ad-30d8-2f28-f153-1891b807febb', 117079, NULL, '4.63', '2021-04-30 17:00:11'),
(45009, '52033l664d7349b4d71e273adbd19e2197745f', '91913915-16b8-b403-f35a-c19d7d44252f', 117079, NULL, '17.76', '2021-04-30 17:00:11'),
(45010, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 117079, NULL, '0.29', '2021-04-30 17:00:11'),
(45011, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 117079, NULL, '4.58', '2021-04-30 17:00:11'),
(45012, '52033l664d7349b4d71e273adbd19e2197745f', '66396a22-1708-3e19-822a-4cea505ebcc7', 117079, NULL, '7.87', '2021-04-30 17:00:11'),
(45013, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, NULL, '52.05', '2021-04-30 17:00:11'),
(45014, '52033l664d7349b4d71e273adbd19e2197745f', '7eaded4d-ff01-e612-1ef5-4da55dc09dc9', 117079, NULL, '3.4', '2021-04-30 17:00:11'),
(45015, '52033l664d7349b4d71e273adbd19e2197745f', '6355892c-ed7e-de30-cd6d-0fa8387d2b38', 117079, NULL, '0.97', '2021-04-30 17:00:11'),
(45016, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 117079, NULL, '38.29', '2021-04-30 17:00:11'),
(45017, '52033l664d7349b4d71e273adbd19e2197745f', 'ff154844-279e-a8e3-1e45-5a014cea9670', 117079, NULL, '0.31', '2021-04-30 17:00:11'),
(45018, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 117079, NULL, '5.79', '2021-04-30 17:00:11'),
(45019, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 117079, NULL, '17.45', '2021-04-30 17:00:11'),
(45020, '52033l664d7349b4d71e273adbd19e2197745f', '9c38979a-adc5-38b5-b734-493015c8a021', 117079, NULL, '11.28', '2021-04-30 17:00:11'),
(45021, '52033l664d7349b4d71e273adbd19e2197745f', '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 117079, NULL, '0.55', '2021-04-30 17:00:11'),
(45022, '52033l664d7349b4d71e273adbd19e2197745f', '5c1aa8f6-55e1-26d8-a74d-ebb7444f0ce7', 117079, NULL, '0.57', '2021-04-30 17:00:11'),
(45023, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 117079, NULL, '1.2', '2021-04-30 17:00:11'),
(45024, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 117079, NULL, '5.43', '2021-04-30 17:00:11'),
(45025, '52033l664d7349b4d71e273adbd19e2197745f', 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 117079, NULL, '0.74', '2021-04-30 17:00:11'),
(45026, '52033l664d7349b4d71e273adbd19e2197745f', 'e5602784-dcb7-baa4-d427-eb153f6db514', 117079, NULL, '1.8', '2021-04-30 17:00:11'),
(45027, '52033l664d7349b4d71e273adbd19e2197745f', '4ef60fd3-bf2b-fefa-37a8-6e023fad3382', 117079, NULL, '0.62', '2021-04-30 17:00:11'),
(45028, '52033l664d7349b4d71e273adbd19e2197745f', '', 117079, NULL, '4.23', '2021-04-30 17:00:11'),
(45029, '52033l664d7349b4d71e273adbd19e2197745f', '8f38059e-e5bc-acf7-0117-ac3198d12143', 117079, NULL, '0.44', '2021-04-30 17:00:12'),
(45030, '52033l664d7349b4d71e273adbd19e2197745f', '9b18bb46-5b2c-21ae-ca68-7faa87f8c727', 117079, NULL, '0.13', '2021-04-30 17:00:12'),
(45031, '52033l664d7349b4d71e273adbd19e2197745f', '86bf2dc9-645d-aa0b-e0a8-4a9901b39366', 117079, NULL, '8.48', '2021-04-30 17:00:12'),
(45032, '52033l664d7349b4d71e273adbd19e2197745f', '9695c458-5448-1176-2e11-272ed69b7383', 117079, NULL, '1.2', '2021-04-30 17:00:12'),
(45033, '52033l664d7349b4d71e273adbd19e2197745f', '42aa6549-66d9-dcea-7afe-58877063b993', 117079, NULL, '0.53', '2021-04-30 17:00:12'),
(45034, '52033l664d7349b4d71e273adbd19e2197745f', '442979ed-58be-b629-7770-f62d362e9c84', 117079, NULL, '0.94', '2021-04-30 17:00:12'),
(45035, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 117079, NULL, '1.08', '2021-04-30 17:00:12'),
(45036, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 117079, NULL, '1', '2021-04-30 17:00:12'),
(45037, '52033l664d7349b4d71e273adbd19e2197745f', '30e84e35-8285-73e7-72c3-f44620440981', 117079, NULL, '1.96', '2021-04-30 17:00:12'),
(45038, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, NULL, '7.08', '2021-04-30 17:00:12'),
(45039, '52033l664d7349b4d71e273adbd19e2197745f', '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 117079, NULL, '1.63', '2021-04-30 17:00:12'),
(45040, '52033l664d7349b4d71e273adbd19e2197745f', '68aad3ab-aa32-1d29-108c-84b5428a9c10', 117079, NULL, '0.97', '2021-04-30 17:00:12'),
(45041, '52033l664d7349b4d71e273adbd19e2197745f', '1427fc82-fda1-0e0c-468e-789980d2e786', 117079, NULL, '1.38', '2021-04-30 17:00:12'),
(45042, '52033l664d7349b4d71e273adbd19e2197745f', '91d55ac5-3eda-2124-8b38-20d438bf8c5b', 117079, NULL, '0.12', '2021-04-30 17:00:12'),
(45043, '52033l664d7349b4d71e273adbd19e2197745f', '850c8dea-79f3-3401-b2ae-9f1a6be39c79', 117079, NULL, '0.25', '2021-04-30 17:00:12'),
(45044, '52033l664d7349b4d71e273adbd19e2197745f', 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 117079, NULL, '0.2', '2021-04-30 17:00:12'),
(45045, '52033l664d7349b4d71e273adbd19e2197745f', '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 117079, NULL, '0.23', '2021-04-30 17:00:12');
INSERT INTO `project_total_work` (`id`, `ssm_id`, `project_id`, `emplId`, `total_limit`, `total_work_hours`, `update_time`) VALUES
(45046, '52033l664d7349b4d71e273adbd19e2197745f', '110bafd6-865f-6c6f-07cb-e75025b4beaf', 117079, NULL, '0.08', '2021-04-30 17:00:12'),
(45047, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 117079, NULL, '0.38', '2021-04-30 17:00:12'),
(45048, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 117079, NULL, '22.88', '2021-04-30 17:00:12'),
(45049, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 117079, NULL, '0.91', '2021-04-30 17:00:12'),
(45050, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, NULL, '0.78', '2021-04-30 17:00:12'),
(45051, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, NULL, '5.34', '2021-04-30 17:00:12'),
(45052, '52033l664d7349b4d71e273adbd19e2197745f', '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 117079, NULL, '1.55', '2021-04-30 17:00:12'),
(45053, '52033l664d7349b4d71e273adbd19e2197745f', '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 117079, NULL, '4.55', '2021-04-30 17:00:12'),
(45054, '52033l664d7349b4d71e273adbd19e2197745f', '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 117079, NULL, '2.26', '2021-04-30 17:00:12'),
(45055, '52033l664d7349b4d71e273adbd19e2197745f', '77dc4640-0141-c90b-994e-c68e228ddddb', 117079, NULL, '0.17', '2021-04-30 17:00:12'),
(45056, '52033l664d7349b4d71e273adbd19e2197745f', 'fa461119-c21f-177c-0fde-a8543d67d6af', 117079, NULL, '0.82', '2021-04-30 17:00:12'),
(45057, '52033l664d7349b4d71e273adbd19e2197745f', '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 117079, NULL, '0.07', '2021-04-30 17:00:12'),
(45058, '52033l664d7349b4d71e273adbd19e2197745f', '9498028c-654e-51aa-96a5-a7ba14ae49a3', 117079, NULL, '0.02', '2021-04-30 17:00:12'),
(45059, '52033l664d7349b4d71e273adbd19e2197745f', '421b1b6d-882c-0649-3a81-a5a581f694fa', 117079, NULL, '0.07', '2021-04-30 17:00:12'),
(45060, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 117079, NULL, '0.3', '2021-04-30 17:00:12'),
(45061, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 117079, NULL, '0.25', '2021-04-30 17:00:12'),
(45062, '52033l664d7349b4d71e273adbd19e2197745f', 'e19b9a68-f737-e6c0-1904-1f4e387998a9', 117080, NULL, '5', '2021-04-30 17:00:13'),
(45063, '52033l664d7349b4d71e273adbd19e2197745f', '', 117080, NULL, '1', '2021-04-30 17:00:13'),
(45064, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 117080, NULL, '1.52', '2021-04-30 17:00:13'),
(45065, '52033l664d7349b4d71e273adbd19e2197745f', '0e3b9b57-2243-7445-d3d0-06915b7b3bee', 117080, NULL, '4', '2021-04-30 17:00:13'),
(45066, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 126042, NULL, '23.27', '2021-04-30 17:00:14'),
(45067, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 126042, NULL, '9.12', '2021-04-30 17:00:14'),
(45068, '52033l664d7349b4d71e273adbd19e2197745f', 'f1660824-5f01-5de5-2a27-ba30b2f195c5', 126042, NULL, '10.68', '2021-04-30 17:00:14'),
(45069, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 126042, NULL, '0.84', '2021-04-30 17:00:14'),
(45070, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 126042, NULL, '7.65', '2021-04-30 17:00:14'),
(45071, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 126042, NULL, '41.15', '2021-04-30 17:00:14'),
(45072, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 126042, NULL, '28.33', '2021-04-30 17:00:14'),
(45073, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 126042, NULL, '27.94', '2021-04-30 17:00:14'),
(45074, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 126042, NULL, '38.15', '2021-04-30 17:00:14'),
(45075, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 126042, NULL, '13.58', '2021-04-30 17:00:14'),
(45076, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 126042, NULL, '3.95', '2021-04-30 17:00:14'),
(45077, '52033l664d7349b4d71e273adbd19e2197745f', '0a008290-97ea-d118-dfc8-87ea494e0726', 126042, NULL, '17.84', '2021-04-30 17:00:14'),
(45078, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 126042, NULL, '38.71', '2021-04-30 17:00:14'),
(45079, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 126042, NULL, '5.95', '2021-04-30 17:00:14'),
(45080, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 126042, NULL, '13.36', '2021-04-30 17:00:14'),
(45081, '52033l664d7349b4d71e273adbd19e2197745f', '9cc1678e-bcfd-d006-1458-9c0ebf17f117', 126042, NULL, '4.6', '2021-04-30 17:00:14'),
(45082, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 126042, NULL, '2.76', '2021-04-30 17:00:14'),
(45083, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, NULL, '4.35', '2021-04-30 17:00:14'),
(45084, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 126042, NULL, '2.12', '2021-04-30 17:00:14'),
(45085, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 126042, NULL, '3.58', '2021-04-30 17:00:14'),
(45086, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 126042, NULL, '1.74', '2021-04-30 17:00:14'),
(45087, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 126042, NULL, '1.21', '2021-04-30 17:00:14'),
(45088, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 126042, NULL, '4.08', '2021-04-30 17:00:14'),
(45089, '52033l664d7349b4d71e273adbd19e2197745f', '', 126042, NULL, '2.57', '2021-04-30 17:00:14'),
(45090, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 126042, NULL, '11.23', '2021-04-30 17:00:14'),
(45091, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 126042, NULL, '1.4', '2021-04-30 17:00:14'),
(45092, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 126042, NULL, '1.4', '2021-04-30 17:00:14'),
(45093, '52033l664d7349b4d71e273adbd19e2197745f', 'e19b9a68-f737-e6c0-1904-1f4e387998a9', 126042, NULL, '4.18', '2021-04-30 17:00:14'),
(45094, '52033l664d7349b4d71e273adbd19e2197745f', '8880790e-8629-e072-bbf9-c9ee740032b5', 126042, NULL, '0.8', '2021-04-30 17:00:14'),
(45095, '52033l664d7349b4d71e273adbd19e2197745f', '33f24970-77d3-3860-f805-ea07d54d2e73', 126042, NULL, '0.12', '2021-04-30 17:00:14'),
(45096, '52033l664d7349b4d71e273adbd19e2197745f', '277b161e-35f3-df8c-146f-bb80cadea902', 126042, NULL, '0.53', '2021-04-30 17:00:14'),
(45097, '52033l664d7349b4d71e273adbd19e2197745f', '9498028c-654e-51aa-96a5-a7ba14ae49a3', 126042, NULL, '1.5', '2021-04-30 17:00:14'),
(45098, '52033l664d7349b4d71e273adbd19e2197745f', '3294d0e8-2eef-abc7-8e19-4a9e6c2ca550', 126042, NULL, '1', '2021-04-30 17:00:14'),
(45099, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 126042, NULL, '2.22', '2021-04-30 17:00:14'),
(45100, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 127835, NULL, '64.73', '2021-04-30 17:00:16'),
(45101, '52033l664d7349b4d71e273adbd19e2197745f', 'e19b9a68-f737-e6c0-1904-1f4e387998a9', 127835, NULL, '4.08', '2021-04-30 17:00:16'),
(45102, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 127835, NULL, '0.72', '2021-04-30 17:00:16'),
(45103, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 127835, NULL, '2.95', '2021-04-30 17:00:16'),
(45104, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 127835, NULL, '1.68', '2021-04-30 17:00:16'),
(45105, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 127835, NULL, '6.62', '2021-04-30 17:00:16'),
(45106, '52033l664d7349b4d71e273adbd19e2197745f', '1020afac-5d9d-ac89-6afb-821207022338', 128167, NULL, '13.92', '2021-04-30 17:00:17'),
(45107, '52033l664d7349b4d71e273adbd19e2197745f', '277b161e-35f3-df8c-146f-bb80cadea902', 128167, NULL, '16.74', '2021-04-30 17:00:17'),
(45108, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 128167, NULL, '46.84', '2021-04-30 17:00:17'),
(45109, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 128167, NULL, '38.05', '2021-04-30 17:00:17'),
(45110, '52033l664d7349b4d71e273adbd19e2197745f', '0a008290-97ea-d118-dfc8-87ea494e0726', 128167, NULL, '3.41', '2021-04-30 17:00:17'),
(45111, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 128171, NULL, '2.15', '2021-04-30 17:00:18'),
(45112, '52033l664d7349b4d71e273adbd19e2197745f', '935e8ba5-5c43-e319-df1f-8d104136ac08', 128171, NULL, '4.03', '2021-04-30 17:00:18'),
(45113, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 128171, NULL, '5.77', '2021-04-30 17:00:18'),
(45114, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 128171, NULL, '1.57', '2021-04-30 17:00:18'),
(45115, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 142280, NULL, '22.63', '2021-04-30 17:00:20'),
(45116, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 142280, NULL, '235.44', '2021-04-30 17:00:20'),
(45117, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 142280, NULL, '56.21', '2021-04-30 17:00:20'),
(45118, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 142280, NULL, '60.5', '2021-04-30 17:00:20'),
(45119, '52033l664d7349b4d71e273adbd19e2197745f', '18b1be16-241b-b377-662f-5f875fcffb9e', 142280, NULL, '36.85', '2021-04-30 17:00:20'),
(45120, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 142280, NULL, '23.8', '2021-04-30 17:00:20'),
(45121, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 142280, NULL, '2.56', '2021-04-30 17:00:20'),
(45122, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 142280, NULL, '4.97', '2021-04-30 17:00:20'),
(45123, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 142280, NULL, '9.45', '2021-04-30 17:00:20'),
(45124, '52033l664d7349b4d71e273adbd19e2197745f', '28df5f0b-dc46-0291-be49-d30d50a37e83', 142280, NULL, '5.43', '2021-04-30 17:00:20'),
(45125, '52033l664d7349b4d71e273adbd19e2197745f', '96c36ec9-aecf-427a-7975-78c5b7ed9870', 142280, NULL, '2.74', '2021-04-30 17:00:20'),
(45126, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 142280, NULL, '3.91', '2021-04-30 17:00:20'),
(45127, '52033l664d7349b4d71e273adbd19e2197745f', '7e82b784-433f-57bd-284b-ef6e1b275f37', 142280, NULL, '2.17', '2021-04-30 17:00:20'),
(45128, '52033l664d7349b4d71e273adbd19e2197745f', '45b538f7-d6a2-42aa-eced-3c48729911cb', 142280, NULL, '1.31', '2021-04-30 17:00:20'),
(45129, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 142280, NULL, '22.37', '2021-04-30 17:00:20'),
(45130, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 142280, NULL, '2', '2021-04-30 17:00:20'),
(45131, '52033l664d7349b4d71e273adbd19e2197745f', '77dc4640-0141-c90b-994e-c68e228ddddb', 142280, NULL, '1.43', '2021-04-30 17:00:20'),
(45132, '52033l664d7349b4d71e273adbd19e2197745f', 'a489870f-b474-0bc6-c33f-e9df15d25fee', 142280, NULL, '2.37', '2021-04-30 17:00:20'),
(45133, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 142280, NULL, '2.37', '2021-04-30 17:00:20'),
(45134, '52033l664d7349b4d71e273adbd19e2197745f', 'e5602784-dcb7-baa4-d427-eb153f6db514', 142280, NULL, '1.6', '2021-04-30 17:00:20'),
(45135, '52033l664d7349b4d71e273adbd19e2197745f', 'a0369873-3af4-063d-b868-446628c040f4', 142280, NULL, '0.17', '2021-04-30 17:00:20'),
(45136, '52033l664d7349b4d71e273adbd19e2197745f', '', 142280, NULL, '1', '2021-04-30 17:00:20'),
(45137, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 142280, NULL, '4.55', '2021-04-30 17:00:20'),
(45138, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 142280, NULL, '0.42', '2021-04-30 17:00:20'),
(45139, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 142280, NULL, '0.55', '2021-04-30 17:00:20'),
(45140, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 147056, NULL, '21.77', '2021-04-30 17:00:21'),
(45141, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 147071, NULL, '71.11', '2021-04-30 17:00:23'),
(45142, '52033l664d7349b4d71e273adbd19e2197745f', '', 147071, NULL, '28.48', '2021-04-30 17:00:23'),
(45143, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 147071, NULL, '20.94', '2021-04-30 17:00:23'),
(45144, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 147071, NULL, '5.25', '2021-04-30 17:00:23'),
(45145, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 147071, NULL, '88.64', '2021-04-30 17:00:23'),
(45146, '52033l664d7349b4d71e273adbd19e2197745f', '0e99d886-3f44-6e35-2bbd-42e0a4a01ec2', 147071, NULL, '29.34', '2021-04-30 17:00:23'),
(45147, '52033l664d7349b4d71e273adbd19e2197745f', 'f36bab6e-955f-5019-a6c0-f2987ec959cc', 147071, NULL, '14.55', '2021-04-30 17:00:23'),
(45148, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 147071, NULL, '5.67', '2021-04-30 17:00:23'),
(45149, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 147071, NULL, '30.16', '2021-04-30 17:00:23'),
(45150, '52033l664d7349b4d71e273adbd19e2197745f', '642c90ce-f298-5ea8-0d57-d002132f8b34', 147071, NULL, '6.11', '2021-04-30 17:00:23'),
(45151, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 147071, NULL, '2.18', '2021-04-30 17:00:23'),
(45152, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 147971, NULL, '71.18', '2021-04-30 17:00:24'),
(45153, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 147971, NULL, '107.34', '2021-04-30 17:00:24'),
(45154, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 147971, NULL, '168.58', '2021-04-30 17:00:24'),
(45155, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 147971, NULL, '30.52', '2021-04-30 17:00:24'),
(45156, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 147971, NULL, '97.6', '2021-04-30 17:00:24'),
(45157, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 147971, NULL, '0.38', '2021-04-30 17:00:24'),
(45158, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 147971, NULL, '6.47', '2021-04-30 17:00:24'),
(45159, '52033l664d7349b4d71e273adbd19e2197745f', 'a8531e3f-d1be-1d46-4b0d-250a4db4c4d9', 147971, NULL, '4.32', '2021-04-30 17:00:24'),
(45160, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 148355, NULL, '393.5', '2021-04-30 17:00:26'),
(45161, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 148355, NULL, '174.98', '2021-04-30 17:00:26'),
(45162, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 148355, NULL, '113.97', '2021-04-30 17:00:26'),
(45163, '52033l664d7349b4d71e273adbd19e2197745f', '0175e884-b89d-4086-7427-660e17808504', 148355, NULL, '219', '2021-04-30 17:00:26'),
(45164, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 148355, NULL, '6.51', '2021-04-30 17:00:26'),
(45165, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 148355, NULL, '219.69', '2021-04-30 17:00:26'),
(45166, '52033l664d7349b4d71e273adbd19e2197745f', '8332e41b-e57c-4f03-3019-7e1f4c53d6a2', 148355, NULL, '84.15', '2021-04-30 17:00:26'),
(45167, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 148355, NULL, '19.88', '2021-04-30 17:00:26'),
(45168, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 148355, NULL, '9.64', '2021-04-30 17:00:26'),
(45169, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 148355, NULL, '24.25', '2021-04-30 17:00:26'),
(45170, '52033l664d7349b4d71e273adbd19e2197745f', '096f8c44-fe7c-d52e-8aa2-35ebe1f68728', 148355, NULL, '13.06', '2021-04-30 17:00:26'),
(45171, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 148355, NULL, '71.26', '2021-04-30 17:00:26'),
(45172, '52033l664d7349b4d71e273adbd19e2197745f', 'a2560716-d6d8-ea4e-a3b8-c59ec504dfe6', 148355, NULL, '3.26', '2021-04-30 17:00:26'),
(45173, '52033l664d7349b4d71e273adbd19e2197745f', 'd517e4ef-a7bc-44b0-b510-954e3f0e931b', 148355, NULL, '2.5', '2021-04-30 17:00:26'),
(45174, '52033l664d7349b4d71e273adbd19e2197745f', '98c68cd4-e837-61ab-e1d6-8a136a79957a', 148355, NULL, '3.43', '2021-04-30 17:00:26'),
(45175, '52033l664d7349b4d71e273adbd19e2197745f', 'a3dd9993-a2c0-298d-3eff-2ad3e02f2262', 148355, NULL, '12.56', '2021-04-30 17:00:26'),
(45176, '52033l664d7349b4d71e273adbd19e2197745f', '2c5dd7e3-2efd-2df5-45c6-24e7e84bbd5d', 148355, NULL, '3.77', '2021-04-30 17:00:26'),
(45177, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 148355, NULL, '10.34', '2021-04-30 17:00:26'),
(45178, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 148355, NULL, '2.38', '2021-04-30 17:00:26'),
(45179, '52033l664d7349b4d71e273adbd19e2197745f', '37a6cf40-b60d-98e3-d26f-3e660e8c343f', 148355, NULL, '0.92', '2021-04-30 17:00:26'),
(45180, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 148355, NULL, '13.84', '2021-04-30 17:00:26'),
(45181, '52033l664d7349b4d71e273adbd19e2197745f', '39b89d97-43a9-3e3e-5b0d-9417ca5b5675', 148355, NULL, '2.16', '2021-04-30 17:00:26'),
(45182, '52033l664d7349b4d71e273adbd19e2197745f', '', 148355, NULL, '0.02', '2021-04-30 17:00:26'),
(45183, '52033l664d7349b4d71e273adbd19e2197745f', 'a8531e3f-d1be-1d46-4b0d-250a4db4c4d9', 148355, NULL, '0.52', '2021-04-30 17:00:26'),
(45184, '52033l664d7349b4d71e273adbd19e2197745f', '18b1be16-241b-b377-662f-5f875fcffb9e', 148355, NULL, '96.52', '2021-04-30 17:00:26'),
(45185, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 148355, NULL, '2.1', '2021-04-30 17:00:26'),
(45186, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 148355, NULL, '23.84', '2021-04-30 17:00:26'),
(45187, '52033l664d7349b4d71e273adbd19e2197745f', '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 148355, NULL, '3.1', '2021-04-30 17:00:26'),
(45188, '52033l664d7349b4d71e273adbd19e2197745f', '72cdba18-7016-8c99-63f9-c85daf582395', 148355, NULL, '1.27', '2021-04-30 17:00:26'),
(45189, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 148355, NULL, '3.57', '2021-04-30 17:00:26'),
(45190, '52033l664d7349b4d71e273adbd19e2197745f', '77dc4640-0141-c90b-994e-c68e228ddddb', 148355, NULL, '7.12', '2021-04-30 17:00:26'),
(45191, '52033l664d7349b4d71e273adbd19e2197745f', '96c36ec9-aecf-427a-7975-78c5b7ed9870', 148355, NULL, '0.87', '2021-04-30 17:00:26'),
(45192, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 148355, NULL, '7.07', '2021-04-30 17:00:26'),
(45193, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 148355, NULL, '5.72', '2021-04-30 17:00:26'),
(45194, '52033l664d7349b4d71e273adbd19e2197745f', '28df5f0b-dc46-0291-be49-d30d50a37e83', 148355, NULL, '14.07', '2021-04-30 17:00:26'),
(45195, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 148355, NULL, '1.68', '2021-04-30 17:00:26'),
(45196, '52033l664d7349b4d71e273adbd19e2197745f', '0bf8e91c-ffc9-6ef2-3b96-614286e52e80', 148355, NULL, '2.88', '2021-04-30 17:00:26'),
(45197, '52033l664d7349b4d71e273adbd19e2197745f', '7e82b784-433f-57bd-284b-ef6e1b275f37', 148355, NULL, '4.58', '2021-04-30 17:00:26'),
(45198, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 148355, NULL, '1.14', '2021-04-30 17:00:26'),
(45199, '52033l664d7349b4d71e273adbd19e2197745f', '45b538f7-d6a2-42aa-eced-3c48729911cb', 148355, NULL, '6.98', '2021-04-30 17:00:26'),
(45200, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 148355, NULL, '1.46', '2021-04-30 17:00:26'),
(45201, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 148355, NULL, '0.48', '2021-04-30 17:00:26'),
(45202, '52033l664d7349b4d71e273adbd19e2197745f', '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 148355, NULL, '0.4', '2021-04-30 17:00:26'),
(45203, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 148355, NULL, '5.81', '2021-04-30 17:00:26'),
(45204, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 148355, NULL, '0.85', '2021-04-30 17:00:26'),
(45205, '52033l664d7349b4d71e273adbd19e2197745f', 'a0369873-3af4-063d-b868-446628c040f4', 148355, NULL, '0.57', '2021-04-30 17:00:26'),
(45206, '52033l664d7349b4d71e273adbd19e2197745f', '66396a22-1708-3e19-822a-4cea505ebcc7', 148355, NULL, '2.42', '2021-04-30 17:00:26'),
(45207, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 148355, NULL, '1.65', '2021-04-30 17:00:26'),
(45208, '52033l664d7349b4d71e273adbd19e2197745f', 'a489870f-b474-0bc6-c33f-e9df15d25fee', 148355, NULL, '2.25', '2021-04-30 17:00:26'),
(45209, '52033l664d7349b4d71e273adbd19e2197745f', '9fce2b8f-c046-6834-d227-4be7ad887200', 148355, NULL, '1.41', '2021-04-30 17:00:26'),
(45210, '52033l664d7349b4d71e273adbd19e2197745f', 'ea280cd9-5eb0-80af-2d45-b97ee71f313f', 148355, NULL, '1.58', '2021-04-30 17:00:26'),
(45211, '52033l664d7349b4d71e273adbd19e2197745f', '421b1b6d-882c-0649-3a81-a5a581f694fa', 148355, NULL, '0.59', '2021-04-30 17:00:26'),
(45212, '52033l664d7349b4d71e273adbd19e2197745f', '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 148355, NULL, '1.33', '2021-04-30 17:00:26'),
(45213, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 162422, NULL, '12.54', '2021-04-30 17:00:27'),
(45214, '52033l664d7349b4d71e273adbd19e2197745f', '0175e884-b89d-4086-7427-660e17808504', 162422, NULL, '6.23', '2021-04-30 17:00:27'),
(45215, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 162422, NULL, '2.6', '2021-04-30 17:00:27'),
(45216, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 162422, NULL, '8.71', '2021-04-30 17:00:27'),
(45217, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 162422, NULL, '2.49', '2021-04-30 17:00:27'),
(45218, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 162422, NULL, '0.67', '2021-04-30 17:00:27'),
(45219, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 162732, NULL, '569.76', '2021-04-30 17:00:29'),
(45220, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 162732, NULL, '9.7', '2021-04-30 17:00:29'),
(45221, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 162732, NULL, '49.1', '2021-04-30 17:00:29'),
(45222, '52033l664d7349b4d71e273adbd19e2197745f', '1cb22b0e-68bc-c7fb-0762-1745ffdb6864', 162732, NULL, '13.97', '2021-04-30 17:00:29'),
(45223, '52033l664d7349b4d71e273adbd19e2197745f', '642c90ce-f298-5ea8-0d57-d002132f8b34', 162732, NULL, '45.11', '2021-04-30 17:00:29'),
(45224, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 162732, NULL, '8.01', '2021-04-30 17:00:29'),
(45225, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 162732, NULL, '44.21', '2021-04-30 17:00:29'),
(45226, '52033l664d7349b4d71e273adbd19e2197745f', '96c36ec9-aecf-427a-7975-78c5b7ed9870', 162732, NULL, '12.98', '2021-04-30 17:00:29'),
(45227, '52033l664d7349b4d71e273adbd19e2197745f', '1ee4f05f-3598-9d8d-5390-3f96af3db2f1', 162732, NULL, '22.26', '2021-04-30 17:00:29'),
(45228, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 162732, NULL, '16.49', '2021-04-30 17:00:29'),
(45229, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 162732, NULL, '18.29', '2021-04-30 17:00:29'),
(45230, '52033l664d7349b4d71e273adbd19e2197745f', '77dc4640-0141-c90b-994e-c68e228ddddb', 162732, NULL, '1.37', '2021-04-30 17:00:29'),
(45231, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 162732, NULL, '31.76', '2021-04-30 17:00:29'),
(45232, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 162732, NULL, '21.44', '2021-04-30 17:00:29'),
(45233, '52033l664d7349b4d71e273adbd19e2197745f', 'e7cfbb44-c584-d75c-94f7-f09fb884c2d7', 162732, NULL, '36.36', '2021-04-30 17:00:29'),
(45234, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 162732, NULL, '1.65', '2021-04-30 17:00:29'),
(45235, '52033l664d7349b4d71e273adbd19e2197745f', '2d1e5a9e-46f5-ce68-6d24-0d4d82be870b', 162732, NULL, '0.66', '2021-04-30 17:00:29'),
(45236, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 162732, NULL, '0.43', '2021-04-30 17:00:29'),
(45237, '52033l664d7349b4d71e273adbd19e2197745f', '9e56fcac-e970-4177-5aa2-cbab7412d9e6', 162732, NULL, '0.9', '2021-04-30 17:00:29'),
(45238, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 172662, NULL, '9.43', '2021-04-30 17:00:31'),
(45239, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 172662, NULL, '144.11', '2021-04-30 17:00:31'),
(45240, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 172662, NULL, '124.06', '2021-04-30 17:00:31'),
(45241, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 172662, NULL, '30.27', '2021-04-30 17:00:31'),
(45242, '52033l664d7349b4d71e273adbd19e2197745f', '85a8bca0-56c4-87eb-1531-f96f4d83fdb8', 172662, NULL, '5.53', '2021-04-30 17:00:31'),
(45243, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 172662, NULL, '10.8', '2021-04-30 17:00:31'),
(45244, '52033l664d7349b4d71e273adbd19e2197745f', '98c68cd4-e837-61ab-e1d6-8a136a79957a', 172662, NULL, '29.6', '2021-04-30 17:00:31'),
(45245, '52033l664d7349b4d71e273adbd19e2197745f', 'ecef0716-344a-73be-a6d9-1cb785211872', 172662, NULL, '4.2', '2021-04-30 17:00:31'),
(45246, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 172662, NULL, '8.75', '2021-04-30 17:00:31'),
(45247, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 172662, NULL, '0.92', '2021-04-30 17:00:31'),
(45248, '52033l664d7349b4d71e273adbd19e2197745f', '7943dc6b-e582-6542-809d-2129e11a4831', 172662, NULL, '6.62', '2021-04-30 17:00:31'),
(45249, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 172662, NULL, '4.72', '2021-04-30 17:00:31'),
(45250, '52033l664d7349b4d71e273adbd19e2197745f', '6da266df-c737-bca2-4aed-5dd58fd42bf9', 172662, NULL, '0.38', '2021-04-30 17:00:31'),
(45251, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 172662, NULL, '0.25', '2021-04-30 17:00:31'),
(45252, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 172662, NULL, '0.48', '2021-04-30 17:00:31'),
(45253, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 172662, NULL, '0.83', '2021-04-30 17:00:31'),
(45254, '52033l664d7349b4d71e273adbd19e2197745f', '18b1be16-241b-b377-662f-5f875fcffb9e', 172662, NULL, '0.75', '2021-04-30 17:00:31'),
(45255, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 172662, NULL, '1.18', '2021-04-30 17:00:31'),
(45256, '52033l664d7349b4d71e273adbd19e2197745f', '51a1b30c-da63-9f4d-ad3a-6aea206efcef', 175931, NULL, '170.74', '2021-04-30 17:00:32'),
(45257, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 175931, NULL, '41.73', '2021-04-30 17:00:32'),
(45258, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 175931, NULL, '66.58', '2021-04-30 17:00:32'),
(45259, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 175931, NULL, '122.99', '2021-04-30 17:00:32'),
(45260, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 175931, NULL, '21.4', '2021-04-30 17:00:32'),
(45261, '52033l664d7349b4d71e273adbd19e2197745f', '54d852f3-4d8d-ffa7-695e-5dc4c7117413', 175931, NULL, '42.3', '2021-04-30 17:00:32'),
(45262, '52033l664d7349b4d71e273adbd19e2197745f', 'd8d928a3-1d2e-0292-cbaa-077389160922', 175931, NULL, '98.31', '2021-04-30 17:00:32'),
(45263, '52033l664d7349b4d71e273adbd19e2197745f', '', 175931, NULL, '6.35', '2021-04-30 17:00:32'),
(45264, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 175931, NULL, '0.18', '2021-04-30 17:00:32'),
(45265, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 177614, NULL, '163.09', '2021-04-30 17:00:33'),
(45266, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 177614, NULL, '383.92', '2021-04-30 17:00:33'),
(45267, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 177614, NULL, '7.49', '2021-04-30 17:00:33'),
(45268, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 185014, NULL, '192.1', '2021-04-30 17:00:35'),
(45269, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 187456, NULL, '148.08', '2021-04-30 17:00:37'),
(45270, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 190892, NULL, '14.59', '2021-04-30 17:00:39'),
(45271, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 190892, NULL, '17.83', '2021-04-30 17:00:39'),
(45272, '52033l664d7349b4d71e273adbd19e2197745f', '', 190892, NULL, '4.9', '2021-04-30 17:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `ssm_tokens`
--

CREATE TABLE `ssm_tokens` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(250) NOT NULL,
  `ssm_status` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `company_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ssm_tokens`
--

INSERT INTO `ssm_tokens` (`id`, `ssm_id`, `ssm_status`, `company_email`) VALUES
(1, '52033l664d7349b4d71e273adbd19e2197745f', 'active', 'support@foundersapproach.com'),
(2, '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c', 'inactive', 'dave@foundersapproach.com');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `cron_run` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `cron_run`) VALUES
(46, '2021-03-08 06:00:01'),
(47, '2021-03-09 06:00:01'),
(48, '2021-03-09 06:00:01'),
(49, '2021-03-10 06:00:01'),
(50, '2021-03-10 06:00:01'),
(51, '2021-03-11 06:00:01'),
(52, '2021-03-11 06:00:01'),
(53, '2021-03-12 06:00:01'),
(54, '2021-03-12 06:00:01'),
(55, '2021-03-13 06:00:01'),
(56, '2021-03-13 06:00:01'),
(57, '2021-03-14 06:00:01'),
(58, '2021-03-14 05:00:01'),
(59, '2021-03-15 05:00:01'),
(60, '2021-03-15 05:00:02'),
(61, '2021-03-16 05:00:01'),
(62, '2021-03-16 05:00:01'),
(63, '2021-03-17 05:00:01'),
(64, '2021-03-17 05:00:02'),
(65, '2021-03-18 05:00:01'),
(66, '2021-03-18 05:00:01'),
(67, '2021-03-19 05:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `week_limit`
--

CREATE TABLE `week_limit` (
  `id` int(11) NOT NULL,
  `ssm_id` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) NOT NULL,
  `emplId` int(11) NOT NULL,
  `total_limit` varchar(100) DEFAULT NULL,
  `total_work_hours` varchar(50) DEFAULT NULL,
  `notifi_email` varchar(255) DEFAULT NULL,
  `flag100` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag75` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag50` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `flag25` enum('active','inactive','','') NOT NULL DEFAULT 'inactive',
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `week_limit`
--

INSERT INTO `week_limit` (`id`, `ssm_id`, `project_id`, `emplId`, `total_limit`, `total_work_hours`, `notifi_email`, `flag100`, `flag75`, `flag50`, `flag25`, `update_time`) VALUES
(6708, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 103565, NULL, '20.09', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:04'),
(6709, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103565, NULL, '17.08', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:04'),
(6710, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103565, NULL, '3.51', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:04'),
(6711, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103566, NULL, '1.23', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6712, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103566, NULL, '0.45', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6713, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103566, NULL, '5.47', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6714, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103566, NULL, '6.18', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6715, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 103566, NULL, '10.57', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6716, '52033l664d7349b4d71e273adbd19e2197745f', 'f8753495-b546-ae32-6b13-b0b00ccf037b', 103566, NULL, '3.8', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6717, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103566, NULL, '2.98', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6718, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 103566, NULL, '1.75', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6719, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 103566, NULL, '5.06', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6720, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103566, NULL, '1.28', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6721, '52033l664d7349b4d71e273adbd19e2197745f', '9dfaecda-20b2-7dcb-a8dd-9ab7f0e90b63', 103566, NULL, '1.12', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6722, '52033l664d7349b4d71e273adbd19e2197745f', '', 103566, NULL, '0.78', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6723, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103566, NULL, '0.77', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6724, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 103566, NULL, '0.08', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:05'),
(6725, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 103567, NULL, '0.76', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6726, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 103567, NULL, '3.41', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6727, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 103567, NULL, '0.23', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6728, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 103567, NULL, '0.35', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6729, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 103567, NULL, '0.44', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6730, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 103567, NULL, '0.03', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6731, '52033l664d7349b4d71e273adbd19e2197745f', 'b586a6b2-2a78-aa25-36eb-2138e0d00405', 103567, NULL, '0.28', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6732, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 103567, NULL, '0.2', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6733, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 103567, NULL, '0.2', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6734, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 103567, NULL, '0.22', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6735, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 103567, NULL, '0.19', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6736, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 103567, NULL, '0.23', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:07'),
(6737, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 113574, NULL, '26.74', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6738, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 113574, NULL, '4.24', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6739, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 113574, NULL, '4.86', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6740, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 113574, NULL, '1.91', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6741, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 113574, NULL, '2.1', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6742, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 113574, NULL, '0.92', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6743, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 113574, NULL, '0.54', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:09'),
(6744, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 117079, NULL, '14.95', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6745, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 117079, NULL, '1.18', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6746, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 117079, NULL, '3.33', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6747, '52033l664d7349b4d71e273adbd19e2197745f', '5886cc3f-3f57-eac3-45f1-d56fda9f588c', 117079, NULL, '0.08', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6748, '52033l664d7349b4d71e273adbd19e2197745f', '91913915-16b8-b403-f35a-c19d7d44252f', 117079, NULL, '2.62', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6749, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 117079, NULL, '2.93', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6750, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 117079, NULL, '3.63', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6751, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 117079, NULL, '0.92', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6752, '52033l664d7349b4d71e273adbd19e2197745f', 'abdf6f6e-76f8-1020-9f16-68ad38bd5368', 117079, NULL, '1.25', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6753, '52033l664d7349b4d71e273adbd19e2197745f', '88bc7788-4ee9-3c1e-3a5e-1aea93797fa0', 117079, NULL, '1', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6754, '52033l664d7349b4d71e273adbd19e2197745f', 'f0411b54-003a-12dd-0c9a-30b8439f66c6', 117079, NULL, '0.35', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6755, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 117079, NULL, '1.09', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6756, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 117079, NULL, '0.17', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6757, '52033l664d7349b4d71e273adbd19e2197745f', '04b1ed69-dca7-9b29-c129-9fbaad0ab19a', 117079, NULL, '0.3', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:11'),
(6758, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 126042, NULL, '9.51', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6759, '52033l664d7349b4d71e273adbd19e2197745f', '5be088c4-b30c-ab9b-29ae-df3c3b4c7947', 126042, NULL, '1.03', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6760, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 126042, NULL, '4.35', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6761, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 126042, NULL, '0.23', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6762, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 126042, NULL, '8.56', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6763, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 126042, NULL, '3.11', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6764, '52033l664d7349b4d71e273adbd19e2197745f', 'a41cae05-da51-443f-8262-11dccd670a19', 126042, NULL, '0.5', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6765, '52033l664d7349b4d71e273adbd19e2197745f', 'f1660824-5f01-5de5-2a27-ba30b2f195c5', 126042, NULL, '2.75', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:14'),
(6766, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 142280, NULL, '5.05', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:19'),
(6767, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 142280, NULL, '4.94', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:19'),
(6768, '52033l664d7349b4d71e273adbd19e2197745f', '8005e28c-798b-1426-ec81-30a4b0d13189', 142280, NULL, '1.47', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:19'),
(6769, '52033l664d7349b4d71e273adbd19e2197745f', '9d6ad43f-5363-dba3-2050-3afd115ff19e', 142280, NULL, '0.11', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:19'),
(6770, '52033l664d7349b4d71e273adbd19e2197745f', '6c347464-f931-44b7-72c9-f991286296fe', 142280, NULL, '0.48', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:19'),
(6771, '52033l664d7349b4d71e273adbd19e2197745f', 'c0a7fea1-c77e-6033-2480-3278555e1f51', 148355, NULL, '1.76', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6772, '52033l664d7349b4d71e273adbd19e2197745f', '57a7cdd7-4b7e-4c74-c842-fbda49cbcf54', 148355, NULL, '4.66', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6773, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 148355, NULL, '0.88', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6774, '52033l664d7349b4d71e273adbd19e2197745f', '065e9587-61c5-750c-4ab1-e6de534971a3', 148355, NULL, '1.22', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6775, '52033l664d7349b4d71e273adbd19e2197745f', 'c04794f5-9835-6784-5f98-35e750a4a007', 148355, NULL, '3.32', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6776, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 148355, NULL, '1.14', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6777, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 148355, NULL, '0.48', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6778, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 148355, NULL, '0.96', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6779, '52033l664d7349b4d71e273adbd19e2197745f', '59500d9d-3432-271d-06f2-8a8c371b3924', 148355, NULL, '0.49', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6780, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 148355, NULL, '2.34', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6781, '52033l664d7349b4d71e273adbd19e2197745f', 'b33a22d6-2843-a13e-7f53-c5790105d620', 148355, NULL, '2.56', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6782, '52033l664d7349b4d71e273adbd19e2197745f', 'e782c1ae-fb2f-5d61-85a7-a847680489c7', 148355, NULL, '0.85', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:25'),
(6783, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 172662, NULL, '7.4', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:30'),
(6784, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 172662, NULL, '8.07', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:30'),
(6785, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 172662, NULL, '4.72', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:30'),
(6786, '52033l664d7349b4d71e273adbd19e2197745f', 'b9e5a33c-a793-e7a3-c8dd-6c28447de969', 175931, NULL, '1.75', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:31'),
(6787, '52033l664d7349b4d71e273adbd19e2197745f', '7c893222-bdfb-a504-de44-6aaf358dac03', 175931, NULL, '9.71', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:31'),
(6788, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 175931, NULL, '21.4', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:31'),
(6789, '52033l664d7349b4d71e273adbd19e2197745f', 'd6c79194-9161-d34d-4854-3a6483f2bec7', 175931, NULL, '5.66', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:31'),
(6790, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 177614, NULL, '26.34', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:33'),
(6791, '52033l664d7349b4d71e273adbd19e2197745f', '32bec526-358e-0702-566c-de4d72a7de6e', 177614, NULL, '16.53', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:33'),
(6792, '52033l664d7349b4d71e273adbd19e2197745f', '73f56710-f5f9-b44e-732f-40c6182a8bbc', 185014, NULL, '12.67', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:34'),
(6793, '52033l664d7349b4d71e273adbd19e2197745f', '80070947-82ff-fa95-8205-08361372714b', 187456, NULL, '37.61', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:37'),
(6794, '52033l664d7349b4d71e273adbd19e2197745f', '154ce68b-b6b7-9f6b-4f85-8026dcd0e739', 190892, NULL, '8.56', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:38'),
(6795, '52033l664d7349b4d71e273adbd19e2197745f', '', 190892, NULL, '4.9', NULL, 'inactive', 'inactive', 'inactive', 'inactive', '2021-04-30 17:00:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjob`
--
ALTER TABLE `cronjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom-range`
--
ALTER TABLE `custom-range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_limit`
--
ALTER TABLE `month_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`notes_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_config`
--
ALTER TABLE `projects_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_history`
--
ALTER TABLE `projects_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_total_work`
--
ALTER TABLE `project_total_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssm_tokens`
--
ALTER TABLE `ssm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_limit`
--
ALTER TABLE `week_limit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cronjob`
--
ALTER TABLE `cronjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom-range`
--
ALTER TABLE `custom-range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2928;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `month_limit`
--
ALTER TABLE `month_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11289;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `projects_config`
--
ALTER TABLE `projects_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_history`
--
ALTER TABLE `projects_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT for table `project_total_work`
--
ALTER TABLE `project_total_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45273;

--
-- AUTO_INCREMENT for table `ssm_tokens`
--
ALTER TABLE `ssm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `week_limit`
--
ALTER TABLE `week_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6796;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
