-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql300.infinityfree.com
-- Generation Time: Sep 26, 2025 at 01:26 PM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39858511_treasure_hunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `room_code` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `avatar_url` text NOT NULL,
  `role` enum('teacher','student') NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `room_code`, `username`, `avatar_url`, `role`, `joined_at`) VALUES
(1, '90D7E4', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:37:37'),
(2, '574CAA', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:37:43'),
(3, 'C705F4', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:40:43'),
(4, 'FED92F', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:41:16'),
(5, '5A1AE3', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:42:51'),
(6, 'EF987D', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:45:01'),
(7, '6E6240', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:45:22'),
(8, 'C650F8', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-03 18:46:24'),
(9, 'C650F8', 'hi', '', 'teacher', '2025-09-03 18:46:31'),
(10, '1C04F9', 'hi', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar4', 'teacher', '2025-09-03 18:48:41'),
(11, '1C04F9', 'hi', '', 'student', '2025-09-03 18:48:50'),
(12, '90F75E', 'nandu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar44', 'teacher', '2025-09-03 19:06:59'),
(13, '90F75E', 'nandu', '', 'student', '2025-09-03 19:07:09'),
(14, 'A6AC1C', 'u', '', 'student', '2025-09-03 19:19:00'),
(15, 'A6AC1C', 'u', '', 'student', '2025-09-03 19:19:13'),
(16, 'A6AC1C', 'u', '', 'student', '2025-09-03 19:19:20'),
(17, '2BA896', 'nanditha', '', 'student', '2025-09-03 20:11:16'),
(18, '2BA896', 'Venu', '', 'teacher', '2025-09-03 20:12:32'),
(19, '2EBEB2', 'Jaanu', '', 'student', '2025-09-03 20:13:17'),
(20, '87EF70', 'Nandu', '', 'student', '2025-09-04 02:52:13'),
(21, '87EF70', 'Hello', '', 'teacher', '2025-09-04 03:24:16'),
(22, '87EF70', 'Hello', '', 'teacher', '2025-09-04 03:24:19'),
(23, 'BD814D', 'Heheh', '', 'student', '2025-09-04 03:26:16'),
(24, '7F35E4', 'sss', '', 'teacher', '2025-09-04 03:43:46'),
(25, 'D9CEE1', 'sss', '', 'teacher', '2025-09-04 04:10:25'),
(26, 'FE353D', 'jkj', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar4', 'teacher', '2025-09-04 04:25:24'),
(27, '4BEA0E', 'jn', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar2', 'student', '2025-09-04 04:28:59'),
(28, '7592DA', 'Bunny', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 04:32:02'),
(29, '7592DA', 'Bunny', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 04:32:02'),
(30, '2CBBE3', 'Bunny', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 04:32:02'),
(31, '7592DA', 'Bunny', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 04:32:02'),
(32, '7592DA', 'Bunny', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 04:32:04'),
(33, '5587F3', 'jn', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar2', 'student', '2025-09-04 04:32:27'),
(34, '6C23E3', 'Neha', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar2', 'student', '2025-09-04 04:35:42'),
(35, 'BCECA5', 'lmbj', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-04 04:35:50'),
(36, '6C23E3', 'Hhh', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'student', '2025-09-04 04:36:31'),
(37, '7B9B59', 'lmbj', '', 'teacher', '2025-09-04 04:40:38'),
(38, '7B9B59', 'lmbj', '', 'teacher', '2025-09-04 04:40:39'),
(39, '7B9B59', 'lmbj', '', 'teacher', '2025-09-04 04:40:41'),
(40, '4FD695', 'Jjkonainsisndodn', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar2', 'student', '2025-09-04 04:42:09'),
(41, '4FD695', 'Nokaoaniabsbs', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'student', '2025-09-04 04:42:39'),
(42, 'B008E5', 'lkk', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar11', 'teacher', '2025-09-04 04:43:05'),
(43, '368F64', 'ascds', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'student', '2025-09-04 04:44:14'),
(44, '368F64', 'Jaanu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar5', 'student', '2025-09-04 04:44:20'),
(45, '9477AC', 'sd', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-04 05:11:02'),
(46, '5C652A', 'dfd', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar11', 'teacher', '2025-09-04 05:21:21'),
(47, 'BF2CA4', 'Jaanu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar16', 'student', '2025-09-04 05:44:15'),
(48, 'BF2CA4', 'Muneer', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar4', 'student', '2025-09-04 05:44:23'),
(49, 'BF2CA4', 'Nanditha', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar15', 'teacher', '2025-09-04 05:44:30'),
(50, '473F5D', 'Mayank raj ðŸ˜', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'student', '2025-09-04 05:55:20'),
(51, 'CFBFF9', 'nandu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'student', '2025-09-04 06:06:45'),
(52, 'FAE309', 'Luffy', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'teacher', '2025-09-04 06:15:11'),
(53, 'FAE309', 'Luffy', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'teacher', '2025-09-04 06:15:12'),
(54, '473F5D', 'Mayank raj', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'teacher', '2025-09-04 06:21:21'),
(55, '95471E', 'manoj', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar7', 'teacher', '2025-09-04 07:10:50'),
(56, '27FDD4', 'sdfsvf', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar1', 'teacher', '2025-09-04 07:18:54'),
(57, '6EB621', 'Jaanu', '', 'student', '2025-09-04 08:24:02'),
(58, '4C53AD', 'Krupa', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'teacher', '2025-09-04 08:27:13'),
(59, '87325F', 'Gsuaba', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar5', 'teacher', '2025-09-04 08:39:22'),
(60, '2E9D7F', 'Hshue', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar8', 'teacher', '2025-09-04 08:42:06'),
(61, 'E9CA05', 'Gghhh', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar27', 'teacher', '2025-09-04 08:47:26'),
(62, '4C53AD', 'Krupa', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar3', 'teacher', '2025-09-04 09:13:18'),
(63, '07EAE5', 'Hdnd', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar6', 'student', '2025-09-04 11:29:07'),
(64, '07EAE5', 'Hdnd', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar6', 'student', '2025-09-04 11:29:09'),
(65, 'AA6A26', 'Hhh', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar11', 'student', '2025-09-04 11:34:25'),
(66, 'D8DFBA', 'manoj', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar7', 'student', '2025-09-04 12:14:58'),
(67, 'D8DFBA', 'Yashwanth', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar38', 'student', '2025-09-04 12:14:59'),
(68, 'E2967B', 'jaanu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar48', 'teacher', '2025-09-04 16:14:12'),
(69, 'BA2AB3', 'aashu', 'https://api.dicebear.com/8.x/adventurer/svg?seed=Avatar6', 'student', '2025-09-04 17:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `player_picks`
--

CREATE TABLE `player_picks` (
  `id` int(11) NOT NULL,
  `room_code` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `box_number` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `picked_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_picks`
--

INSERT INTO `player_picks` (`id`, `room_code`, `username`, `box_number`, `category`, `picked_at`) VALUES
(1, 'B008E5', 'lkk', 19, 'Joker', '2025-09-04 04:43:23'),
(2, 'B008E5', 'lkk', 38, 'Task', '2025-09-04 04:43:30'),
(3, '368F64', 'ascds', 26, 'Money', '2025-09-04 04:44:31'),
(4, '368F64', 'Jaanu', 48, 'Task', '2025-09-04 04:44:39'),
(5, '368F64', 'Jaanu', 76, 'Joker', '2025-09-04 04:44:46'),
(6, '368F64', 'ascds', 35, 'Joker', '2025-09-04 04:44:51'),
(7, '368F64', 'ascds', 28, 'Gift', '2025-09-04 04:44:56'),
(8, '368F64', 'Jaanu', 63, 'Joker', '2025-09-04 04:45:00'),
(9, '368F64', 'ascds', 44, 'Joker', '2025-09-04 04:45:25'),
(10, '9477AC', 'sd', 45, 'Money', '2025-09-04 05:11:10'),
(11, '9477AC', 'sd', 48, 'Task', '2025-09-04 05:11:13'),
(12, '9477AC', 'sd', 25, 'Joker', '2025-09-04 05:11:16'),
(13, '9477AC', 'sd', 62, 'Gift', '2025-09-04 05:11:19'),
(14, '9477AC', 'sd', 43, 'Joker', '2025-09-04 05:11:21'),
(15, '9477AC', 'sd', 22, 'Gift', '2025-09-04 05:11:24'),
(16, '9477AC', 'sd', 85, 'Task', '2025-09-04 05:11:27'),
(17, '9477AC', 'sd', 58, 'Money', '2025-09-04 05:11:30'),
(18, '9477AC', 'sd', 64, 'Money', '2025-09-04 05:11:33'),
(19, '9477AC', 'sd', 1, 'Money', '2025-09-04 05:11:38'),
(20, '9477AC', 'sd', 2, 'Gift', '2025-09-04 05:11:41'),
(21, '9477AC', 'sd', 3, 'Gift', '2025-09-04 05:11:44'),
(22, '9477AC', 'sd', 4, 'Gift', '2025-09-04 05:11:46'),
(23, '9477AC', 'sd', 5, 'Task', '2025-09-04 05:11:49'),
(24, '9477AC', 'sd', 6, 'Money', '2025-09-04 05:11:52'),
(25, '9477AC', 'sd', 7, 'Task', '2025-09-04 05:11:54'),
(26, '9477AC', 'sd', 8, 'Joker', '2025-09-04 05:11:58'),
(27, '9477AC', 'sd', 9, 'Joker', '2025-09-04 05:12:01'),
(28, '9477AC', 'sd', 10, 'Task', '2025-09-04 05:12:03'),
(29, '9477AC', 'sd', 11, 'Gift', '2025-09-04 05:12:07'),
(30, '9477AC', 'sd', 12, 'Money', '2025-09-04 05:12:09'),
(31, '9477AC', 'sd', 13, 'Task', '2025-09-04 05:12:11'),
(32, '9477AC', 'sd', 14, 'Joker', '2025-09-04 05:12:14'),
(33, '9477AC', 'sd', 15, 'Task', '2025-09-04 05:12:16'),
(34, '9477AC', 'sd', 16, 'Gift', '2025-09-04 05:12:19'),
(35, '9477AC', 'sd', 17, 'Task', '2025-09-04 05:12:21'),
(36, '9477AC', 'sd', 18, 'Gift', '2025-09-04 05:12:23'),
(37, '9477AC', 'sd', 19, 'Money', '2025-09-04 05:12:25'),
(38, '9477AC', 'sd', 20, 'Task', '2025-09-04 05:12:28'),
(39, '9477AC', 'sd', 21, 'Task', '2025-09-04 05:12:31'),
(40, '9477AC', 'sd', 23, 'Money', '2025-09-04 05:12:34'),
(41, '9477AC', 'sd', 24, 'Task', '2025-09-04 05:12:42'),
(42, '9477AC', 'sd', 27, 'Task', '2025-09-04 05:12:53'),
(43, '9477AC', 'sd', 29, 'Joker', '2025-09-04 05:12:59'),
(44, '9477AC', 'sd', 69, 'Gift', '2025-09-04 05:13:07'),
(45, '9477AC', 'sd', 78, 'Money', '2025-09-04 05:13:13'),
(46, '9477AC', 'sd', 60, 'Joker', '2025-09-04 05:13:19'),
(47, '9477AC', 'sd', 39, 'Gift', '2025-09-04 05:13:26'),
(48, '9477AC', 'sd', 76, 'Task', '2025-09-04 05:13:31'),
(49, '9477AC', 'sd', 77, 'Joker', '2025-09-04 05:13:36'),
(50, '9477AC', 'sd', 63, 'Joker', '2025-09-04 05:13:42'),
(51, '9477AC', 'sd', 53, 'Gift', '2025-09-04 05:13:49'),
(52, '9477AC', 'sd', 68, 'Gift', '2025-09-04 05:13:58'),
(53, '9477AC', 'sd', 67, 'Task', '2025-09-04 05:14:03'),
(54, '9477AC', 'sd', 28, 'Task', '2025-09-04 05:14:32'),
(55, '9477AC', 'sd', 30, 'Joker', '2025-09-04 05:14:38'),
(56, '9477AC', 'sd', 40, 'Gift', '2025-09-04 05:14:44'),
(57, '9477AC', 'sd', 49, 'Gift', '2025-09-04 05:14:51'),
(58, '9477AC', 'sd', 50, 'Task', '2025-09-04 05:14:56'),
(59, '9477AC', 'sd', 59, 'Gift', '2025-09-04 05:15:04'),
(60, '9477AC', 'sd', 79, 'Task', '2025-09-04 05:15:08'),
(61, '9477AC', 'sd', 80, 'Joker', '2025-09-04 05:15:14'),
(62, '9477AC', 'sd', 70, 'Joker', '2025-09-04 05:15:18'),
(63, '9477AC', 'sd', 86, 'Gift', '2025-09-04 05:15:25'),
(64, '9477AC', 'sd', 74, 'Task', '2025-09-04 05:15:30'),
(65, '9477AC', 'sd', 75, 'Gift', '2025-09-04 05:15:36'),
(66, '9477AC', 'sd', 73, 'Task', '2025-09-04 05:15:39'),
(67, '9477AC', 'sd', 42, 'Joker', '2025-09-04 05:15:47'),
(68, '9477AC', 'sd', 52, 'Gift', '2025-09-04 05:15:54'),
(69, '9477AC', 'sd', 41, 'Task', '2025-09-04 05:16:00'),
(70, '9477AC', 'sd', 47, 'Task', '2025-09-04 05:20:47'),
(71, '9477AC', 'sd', 37, 'Task', '2025-09-04 05:20:49'),
(72, '5C652A', 'dfd', 34, 'Task', '2025-09-04 05:21:30'),
(73, '5C652A', 'dfd', 18, 'Task', '2025-09-04 05:21:33'),
(74, '5C652A', 'dfd', 15, 'Task', '2025-09-04 05:21:35'),
(75, '5C652A', 'dfd', 12, 'Task', '2025-09-04 05:21:38'),
(76, '5C652A', 'dfd', 66, 'Task', '2025-09-04 05:21:42'),
(77, '5C652A', 'dfd', 60, 'Task', '2025-09-04 05:21:45'),
(78, '5C652A', 'dfd', 30, 'Gift', '2025-09-04 05:21:48'),
(79, '5C652A', 'dfd', 49, 'Task', '2025-09-04 05:21:51'),
(80, '5C652A', 'dfd', 52, 'Money', '2025-09-04 05:21:54'),
(81, '5C652A', 'dfd', 32, 'Joker', '2025-09-04 05:21:57'),
(82, '5C652A', 'dfd', 43, 'Task', '2025-09-04 05:22:00'),
(83, '5C652A', 'dfd', 74, 'Task', '2025-09-04 05:22:02'),
(84, '5C652A', 'dfd', 79, 'Joker', '2025-09-04 05:22:05'),
(85, '5C652A', 'dfd', 69, 'Task', '2025-09-04 05:22:09'),
(86, '5C652A', 'dfd', 58, 'Task', '2025-09-04 05:22:12'),
(87, '5C652A', 'dfd', 28, 'Gift', '2025-09-04 05:22:15'),
(88, '5C652A', 'dfd', 35, 'Task', '2025-09-04 05:22:18'),
(89, '5C652A', 'dfd', 16, 'Task', '2025-09-04 05:22:21'),
(90, 'BF2CA4', 'Jaanu', 54, 'Money', '2025-09-04 05:44:52'),
(91, 'BF2CA4', 'Nanditha', 9, 'Joker', '2025-09-04 05:45:05'),
(92, 'BF2CA4', 'Muneer', 3, 'Task', '2025-09-04 05:45:17'),
(93, 'BF2CA4', 'Nanditha', 28, 'Gift', '2025-09-04 05:45:28'),
(94, 'BF2CA4', 'Jaanu', 65, 'Task', '2025-09-04 05:45:33'),
(95, 'BF2CA4', 'Muneer', 18, 'Task', '2025-09-04 05:45:41'),
(96, 'BF2CA4', 'Muneer', 93, 'Task', '2025-09-04 05:45:51'),
(97, 'FAE309', 'Luffy', 55, 'Task', '2025-09-04 06:15:24'),
(98, 'CFBFF9', 'nandu', 99, 'Task', '2025-09-04 06:25:23'),
(99, 'CFBFF9', 'nandu', 39, 'Task', '2025-09-04 06:26:41'),
(100, 'CFBFF9', 'nandu', 23, 'Money', '2025-09-04 06:28:09'),
(101, 'CFBFF9', 'nandu', 13, 'Task', '2025-09-04 06:28:37'),
(102, '95471E', 'manoj', 1, 'Task', '2025-09-04 07:12:17'),
(103, '95471E', 'manoj', 26, 'Task', '2025-09-04 07:12:28'),
(104, '95471E', 'manoj', 69, 'Task', '2025-09-04 07:12:35'),
(105, '95471E', 'manoj', 49, 'Task', '2025-09-04 07:18:14'),
(106, '95471E', 'manoj', 53, 'Task', '2025-09-04 07:18:17'),
(107, '95471E', 'manoj', 31, 'Money', '2025-09-04 07:18:21'),
(108, '27FDD4', 'sdfsvf', 15, 'Task', '2025-09-04 07:19:09'),
(109, 'BF2CA4', 'Nanditha', 57, 'Task', '2025-09-04 07:31:16'),
(110, '4C53AD', 'Krupa', 7, 'Joker', '2025-09-04 08:28:04'),
(111, '4C53AD', 'Krupa', 10, 'Task', '2025-09-04 08:28:12'),
(112, '87325F', 'Gsuaba', 95, 'Task', '2025-09-04 08:39:27'),
(113, '87325F', 'Gsuaba', 1, 'Task', '2025-09-04 08:39:34'),
(114, '2E9D7F', 'Hshue', 6, 'Gift', '2025-09-04 08:42:20'),
(115, '2E9D7F', 'Hshue', 8, 'Task', '2025-09-04 08:42:26'),
(116, '2E9D7F', 'Hshue', 26, 'Task', '2025-09-04 08:43:04'),
(117, '2E9D7F', 'Hshue', 85, 'Task', '2025-09-04 08:46:34'),
(118, 'E9CA05', 'Gghhh', 3, 'Task', '2025-09-04 08:51:00'),
(119, 'E9CA05', 'Gghhh', 9, 'Task', '2025-09-04 08:52:09'),
(120, 'E9CA05', 'Gghhh', 99, 'Joker', '2025-09-04 08:53:23'),
(121, 'E9CA05', 'Gghhh', 69, 'Task', '2025-09-04 08:53:33'),
(122, 'E9CA05', 'Gghhh', 15, 'Joker', '2025-09-04 09:13:07'),
(123, 'E9CA05', 'Gghhh', 17, 'Task', '2025-09-04 09:13:16'),
(124, 'E9CA05', 'Gghhh', 27, 'Task', '2025-09-04 09:13:19'),
(125, '07EAE5', 'Hdnd', 34, 'Joker', '2025-09-04 11:29:25'),
(126, 'AA6A26', 'Hhh', 58, 'Money', '2025-09-04 11:34:49'),
(127, 'AA6A26', 'Hhh', 39, 'Task', '2025-09-04 11:34:52'),
(128, 'AA6A26', 'Hhh', 20, 'Task', '2025-09-04 11:34:58'),
(129, 'D8DFBA', 'manoj', 24, 'Money', '2025-09-04 12:16:23'),
(130, 'D8DFBA', 'Yashwanth', 78, 'Money', '2025-09-04 12:16:32'),
(131, 'D8DFBA', 'manoj', 48, 'Task', '2025-09-04 12:16:40'),
(132, 'D8DFBA', 'Yashwanth', 61, 'Task', '2025-09-04 12:16:49'),
(133, 'D8DFBA', 'manoj', 29, 'Task', '2025-09-04 12:16:59'),
(134, 'D8DFBA', 'Yashwanth', 37, 'Task', '2025-09-04 12:17:29'),
(135, 'D8DFBA', 'manoj', 13, 'Task', '2025-09-04 12:17:43'),
(136, 'D8DFBA', 'Yashwanth', 9, 'Task', '2025-09-04 12:18:05'),
(137, 'D8DFBA', 'manoj', 30, 'Task', '2025-09-04 12:18:14'),
(138, 'D8DFBA', 'Yashwanth', 94, 'Task', '2025-09-04 12:18:17'),
(139, 'D8DFBA', 'manoj', 45, 'Gift', '2025-09-04 12:18:37'),
(140, 'D8DFBA', 'Yashwanth', 49, 'Gift', '2025-09-04 12:18:39'),
(141, 'D8DFBA', 'Yashwanth', 50, 'Task', '2025-09-04 12:18:42'),
(142, 'D8DFBA', 'manoj', 68, 'Joker', '2025-09-04 12:18:44'),
(143, 'D8DFBA', 'Yashwanth', 60, 'Task', '2025-09-04 12:18:46'),
(144, 'D8DFBA', 'manoj', 44, 'Gift', '2025-09-04 12:18:57'),
(145, 'D8DFBA', 'Yashwanth', 1, 'Task', '2025-09-04 12:19:07'),
(146, 'D8DFBA', 'manoj', 7, 'Task', '2025-09-04 12:20:47'),
(147, 'D8DFBA', 'manoj', 6, 'Gift', '2025-09-04 12:20:48'),
(148, 'D8DFBA', 'Yashwanth', 64, 'Gift', '2025-09-04 12:20:53'),
(149, 'D8DFBA', 'Yashwanth', 76, 'Task', '2025-09-04 12:20:56'),
(150, 'D8DFBA', 'manoj', 55, 'Task', '2025-09-04 12:20:56'),
(151, 'D8DFBA', 'Yashwanth', 100, 'Joker', '2025-09-04 12:20:58'),
(152, 'E2967B', 'jaanu', 1, 'Task', '2025-09-04 16:14:26'),
(153, 'E2967B', 'jaanu', 2, 'Task', '2025-09-04 16:14:35'),
(154, 'E2967B', 'jaanu', 3, 'Task', '2025-09-04 16:14:38'),
(155, 'E2967B', 'jaanu', 4, 'Money', '2025-09-04 16:14:43'),
(156, 'E2967B', 'jaanu', 5, 'Task', '2025-09-04 16:14:58'),
(157, 'E2967B', 'jaanu', 6, 'Gift', '2025-09-04 16:15:01'),
(158, 'E2967B', 'jaanu', 7, 'Task', '2025-09-04 16:15:04'),
(159, 'E2967B', 'jaanu', 8, 'Task', '2025-09-04 16:15:07'),
(160, 'E2967B', 'jaanu', 9, 'Joker', '2025-09-04 16:15:17'),
(161, 'E2967B', 'jaanu', 10, 'Task', '2025-09-04 16:15:21'),
(162, 'E2967B', 'jaanu', 11, 'Money', '2025-09-04 16:15:26'),
(163, 'E2967B', 'jaanu', 12, 'Task', '2025-09-04 16:15:28'),
(164, 'E2967B', 'jaanu', 21, 'Task', '2025-09-04 16:15:32'),
(165, 'E2967B', 'jaanu', 31, 'Task', '2025-09-04 16:15:35'),
(166, 'E2967B', 'jaanu', 41, 'Task', '2025-09-04 16:15:40'),
(167, 'E2967B', 'jaanu', 51, 'Joker', '2025-09-04 16:15:43'),
(168, 'E2967B', 'jaanu', 61, 'Task', '2025-09-04 16:15:46'),
(169, 'E2967B', 'jaanu', 71, 'Task', '2025-09-04 16:15:49'),
(170, 'E2967B', 'jaanu', 81, 'Task', '2025-09-04 16:15:52'),
(171, 'E2967B', 'jaanu', 91, 'Task', '2025-09-04 16:16:04'),
(172, 'E2967B', 'jaanu', 92, 'Task', '2025-09-04 16:16:07'),
(173, 'E2967B', 'jaanu', 93, 'Joker', '2025-09-04 16:16:10'),
(174, 'E2967B', 'jaanu', 94, 'Task', '2025-09-04 16:16:14'),
(175, 'E2967B', 'jaanu', 95, 'Task', '2025-09-04 16:16:24'),
(176, 'E2967B', 'jaanu', 96, 'Task', '2025-09-04 16:16:27'),
(177, 'E2967B', 'jaanu', 97, 'Task', '2025-09-04 16:16:31'),
(178, 'E2967B', 'jaanu', 98, 'Task', '2025-09-04 16:16:36'),
(179, 'E2967B', 'jaanu', 99, 'Money', '2025-09-04 16:16:46'),
(180, 'E2967B', 'jaanu', 100, 'Task', '2025-09-04 16:17:46'),
(181, 'E2967B', 'jaanu', 90, 'Task', '2025-09-04 16:17:49'),
(182, 'E2967B', 'jaanu', 80, 'Task', '2025-09-04 16:17:55'),
(183, 'E2967B', 'jaanu', 70, 'Task', '2025-09-04 16:17:59'),
(184, 'E2967B', 'jaanu', 60, 'Task', '2025-09-04 16:18:02'),
(185, 'E2967B', 'jaanu', 50, 'Money', '2025-09-04 16:18:05'),
(186, 'E2967B', 'jaanu', 40, 'Task', '2025-09-04 16:18:09'),
(187, 'E2967B', 'jaanu', 30, 'Money', '2025-09-04 16:18:21'),
(188, 'E2967B', 'jaanu', 20, 'Joker', '2025-09-04 16:18:25'),
(189, 'E2967B', 'jaanu', 19, 'Task', '2025-09-04 16:18:29'),
(190, 'E2967B', 'jaanu', 29, 'Gift', '2025-09-04 16:18:32'),
(191, 'E2967B', 'jaanu', 39, 'Money', '2025-09-04 16:18:35'),
(192, 'E2967B', 'jaanu', 49, 'Task', '2025-09-04 16:18:40'),
(193, 'E2967B', 'jaanu', 59, 'Task', '2025-09-04 16:18:43'),
(194, 'E2967B', 'jaanu', 69, 'Task', '2025-09-04 16:18:52'),
(195, 'E2967B', 'jaanu', 79, 'Task', '2025-09-04 16:18:55'),
(196, 'E2967B', 'jaanu', 89, 'Task', '2025-09-04 16:19:05'),
(197, 'E2967B', 'jaanu', 88, 'Task', '2025-09-04 16:19:08'),
(198, 'E2967B', 'jaanu', 78, 'Task', '2025-09-04 16:19:12'),
(199, 'E2967B', 'jaanu', 68, 'Task', '2025-09-04 16:19:25'),
(200, 'E2967B', 'jaanu', 58, 'Task', '2025-09-04 16:19:29'),
(201, 'E2967B', 'jaanu', 48, 'Task', '2025-09-04 16:19:32'),
(202, 'E2967B', 'jaanu', 38, 'Task', '2025-09-04 16:19:38'),
(203, 'E2967B', 'jaanu', 28, 'Task', '2025-09-04 16:19:43'),
(204, 'E2967B', 'jaanu', 18, 'Task', '2025-09-04 16:19:53'),
(205, 'E2967B', 'jaanu', 17, 'Gift', '2025-09-04 16:19:58'),
(206, 'E2967B', 'jaanu', 16, 'Gift', '2025-09-04 16:20:17'),
(207, 'E2967B', 'jaanu', 15, 'Task', '2025-09-04 16:20:21'),
(208, 'E2967B', 'jaanu', 14, 'Task', '2025-09-04 16:20:25'),
(209, 'E2967B', 'jaanu', 13, 'Task', '2025-09-04 16:20:28'),
(210, 'E2967B', 'jaanu', 22, 'Task', '2025-09-04 16:20:34'),
(211, 'E2967B', 'jaanu', 32, 'Task', '2025-09-04 16:20:46'),
(212, 'E2967B', 'jaanu', 23, 'Gift', '2025-09-04 16:21:02'),
(213, 'E2967B', 'jaanu', 42, 'Task', '2025-09-04 16:21:06'),
(214, 'E2967B', 'jaanu', 52, 'Task', '2025-09-04 16:22:07'),
(215, 'E2967B', 'jaanu', 62, 'Task', '2025-09-04 16:22:10'),
(216, 'E2967B', 'jaanu', 72, 'Task', '2025-09-04 16:22:13'),
(217, 'E2967B', 'jaanu', 82, 'Task', '2025-09-04 16:22:23'),
(218, 'E2967B', 'jaanu', 83, 'Gift', '2025-09-04 16:22:28'),
(219, 'E2967B', 'jaanu', 84, 'Joker', '2025-09-04 16:22:32'),
(220, 'E2967B', 'jaanu', 85, 'Gift', '2025-09-04 16:22:35'),
(221, 'E2967B', 'jaanu', 86, 'Task', '2025-09-04 16:22:38'),
(222, 'E2967B', 'jaanu', 87, 'Task', '2025-09-04 16:22:41'),
(223, 'E2967B', 'jaanu', 24, 'Task', '2025-09-04 16:22:50'),
(224, 'E2967B', 'jaanu', 33, 'Task', '2025-09-04 16:22:54'),
(225, 'E2967B', 'jaanu', 43, 'Task', '2025-09-04 16:22:58'),
(226, 'E2967B', 'jaanu', 53, 'Money', '2025-09-04 16:23:01'),
(227, 'E2967B', 'jaanu', 63, 'Joker', '2025-09-04 16:23:04'),
(228, 'E2967B', 'jaanu', 73, 'Gift', '2025-09-04 16:23:07'),
(229, 'E2967B', 'jaanu', 25, 'Task', '2025-09-04 16:23:10'),
(230, 'E2967B', 'jaanu', 26, 'Joker', '2025-09-04 16:23:13'),
(231, 'E2967B', 'jaanu', 27, 'Joker', '2025-09-04 16:23:17'),
(232, 'E2967B', 'jaanu', 34, 'Money', '2025-09-04 16:23:43'),
(233, 'E2967B', 'jaanu', 37, 'Task', '2025-09-04 16:23:50'),
(234, 'E2967B', 'jaanu', 36, 'Task', '2025-09-04 16:24:18'),
(235, 'E2967B', 'jaanu', 35, 'Task', '2025-09-04 16:24:36'),
(236, 'E2967B', 'jaanu', 44, 'Gift', '2025-09-04 16:24:39'),
(237, 'E2967B', 'jaanu', 54, 'Task', '2025-09-04 16:24:42'),
(238, 'E2967B', 'jaanu', 64, 'Task', '2025-09-04 16:24:45'),
(239, 'E2967B', 'jaanu', 74, 'Gift', '2025-09-04 16:24:47'),
(240, 'E2967B', 'jaanu', 75, 'Task', '2025-09-04 16:24:50'),
(241, 'E2967B', 'jaanu', 76, 'Task', '2025-09-04 16:24:59'),
(242, 'E2967B', 'jaanu', 77, 'Task', '2025-09-04 16:25:01'),
(243, 'E2967B', 'jaanu', 45, 'Joker', '2025-09-04 16:25:05'),
(244, 'E2967B', 'jaanu', 47, 'Money', '2025-09-04 16:25:08'),
(245, 'E2967B', 'jaanu', 46, 'Money', '2025-09-04 16:25:11'),
(246, 'E2967B', 'jaanu', 57, 'Task', '2025-09-04 16:25:15'),
(247, 'E2967B', 'jaanu', 67, 'Task', '2025-09-04 16:25:25'),
(248, 'E2967B', 'jaanu', 56, 'Task', '2025-09-04 16:25:28'),
(249, 'E2967B', 'jaanu', 66, 'Joker', '2025-09-04 16:25:36'),
(250, 'E2967B', 'jaanu', 55, 'Task', '2025-09-04 16:25:39'),
(251, 'E2967B', 'jaanu', 65, 'Task', '2025-09-04 16:25:43'),
(252, 'BA2AB3', 'aashu', 16, 'Task', '2025-09-04 17:38:34'),
(253, 'BA2AB3', 'aashu', 4, 'Gift', '2025-09-04 17:40:14'),
(254, 'BA2AB3', 'aashu', 50, 'Task', '2025-09-04 17:41:56'),
(255, 'BA2AB3', 'aashu', 78, 'Task', '2025-09-04 17:44:51'),
(256, 'BA2AB3', 'aashu', 8, 'Money', '2025-09-04 17:48:03'),
(257, 'BA2AB3', 'aashu', 10, 'Money', '2025-09-04 17:48:37'),
(258, 'BA2AB3', 'aashu', 93, 'Task', '2025-09-04 17:49:06'),
(259, 'BA2AB3', 'aashu', 41, 'Task', '2025-09-04 17:54:56'),
(260, 'BA2AB3', 'aashu', 84, 'Task', '2025-09-04 17:56:05'),
(261, 'BA2AB3', 'aashu', 80, 'Joker', '2025-09-04 17:59:41'),
(262, 'BA2AB3', 'aashu', 5, 'Gift', '2025-09-04 18:00:03'),
(263, 'BA2AB3', 'aashu', 85, 'Money', '2025-09-04 18:01:06'),
(264, 'BA2AB3', 'aashu', 88, 'Task', '2025-09-04 18:01:24'),
(265, 'BA2AB3', 'aashu', 66, 'Task', '2025-09-04 18:03:09'),
(266, 'BA2AB3', 'aashu', 29, 'Task', '2025-09-04 18:06:15'),
(267, 'BA2AB3', 'aashu', 9, 'Money', '2025-09-04 18:11:56'),
(268, 'BA2AB3', 'aashu', 45, 'Task', '2025-09-04 18:12:14'),
(269, 'BA2AB3', 'aashu', 53, 'Task', '2025-09-04 18:13:05'),
(270, 'BA2AB3', 'aashu', 49, 'Task', '2025-09-04 18:18:48'),
(271, 'BA2AB3', 'aashu', 33, 'Gift', '2025-09-04 18:20:11'),
(272, 'BA2AB3', 'aashu', 44, 'Gift', '2025-09-04 18:21:21'),
(273, 'BA2AB3', 'aashu', 14, 'Task', '2025-09-04 18:24:31'),
(274, 'BA2AB3', 'aashu', 25, 'Task', '2025-09-04 18:27:10'),
(275, 'BA2AB3', 'aashu', 2, 'Task', '2025-09-04 18:31:39'),
(276, 'BA2AB3', 'aashu', 23, 'Joker', '2025-09-04 18:36:01'),
(277, 'BA2AB3', 'aashu', 99, 'Task', '2025-09-04 18:36:18'),
(278, 'BA2AB3', 'aashu', 100, 'Joker', '2025-09-04 18:40:14'),
(279, 'BA2AB3', 'aashu', 1, 'Joker', '2025-09-04 18:40:25'),
(280, 'BA2AB3', 'aashu', 35, 'Task', '2025-09-04 18:40:40'),
(281, 'BA2AB3', 'aashu', 59, 'Joker', '2025-09-04 18:44:11'),
(282, 'BA2AB3', 'aashu', 7, 'Task', '2025-09-04 18:44:38'),
(283, 'BA2AB3', 'aashu', 27, 'Task', '2025-09-04 18:49:42'),
(284, 'BA2AB3', 'aashu', 20, 'Task', '2025-09-04 18:50:39'),
(285, 'BA2AB3', 'aashu', 47, 'Task', '2025-09-04 18:57:38'),
(286, 'BA2AB3', 'aashu', 70, 'Task', '2025-09-04 19:01:39'),
(287, 'BA2AB3', 'aashu', 38, 'Task', '2025-09-04 19:03:23'),
(288, 'BA2AB3', 'aashu', 6, 'Task', '2025-09-04 19:05:55'),
(289, 'BA2AB3', 'aashu', 3, 'Task', '2025-09-04 19:12:43'),
(290, 'BA2AB3', 'aashu', 75, 'Task', '2025-09-04 19:12:50'),
(291, 'BA2AB3', 'aashu', 15, 'Task', '2025-09-04 19:13:00'),
(292, 'BA2AB3', 'aashu', 30, 'Money', '2025-09-04 19:13:06'),
(293, 'BA2AB3', 'aashu', 31, 'Task', '2025-09-04 19:13:12'),
(294, 'BA2AB3', 'aashu', 60, 'Task', '2025-09-04 19:13:20'),
(295, 'BA2AB3', 'aashu', 40, 'Task', '2025-09-04 19:13:23'),
(296, 'BA2AB3', 'aashu', 96, 'Task', '2025-09-04 19:13:32'),
(297, 'AA6A26', 'Hhh', 54, 'Money', '2025-09-05 06:28:27'),
(298, 'AA6A26', 'Hhh', 23, 'Money', '2025-09-05 06:28:40'),
(299, 'AA6A26', 'Hhh', 95, 'Task', '2025-09-05 06:28:45'),
(300, 'AA6A26', 'Hhh', 5, 'Joker', '2025-09-05 06:28:56'),
(301, 'AA6A26', 'Hhh', 100, 'Task', '2025-09-05 06:29:04'),
(302, 'AA6A26', 'Hhh', 18, 'Task', '2025-09-05 06:29:25'),
(303, 'AA6A26', 'Hhh', 51, 'Gift', '2025-09-05 06:29:33'),
(304, 'AA6A26', 'Hhh', 21, 'Task', '2025-09-05 06:29:44'),
(305, 'AA6A26', 'Hhh', 1, 'Task', '2025-09-05 06:29:59'),
(306, 'AA6A26', 'Hhh', 69, 'Joker', '2025-09-05 06:30:15'),
(307, 'AA6A26', 'Hhh', 82, 'Task', '2025-09-05 06:30:23'),
(308, 'AA6A26', 'Hhh', 17, 'Task', '2025-09-05 06:30:31'),
(309, 'AA6A26', 'Hhh', 47, 'Task', '2025-09-05 06:31:09'),
(310, 'AA6A26', 'Hhh', 77, 'Money', '2025-09-05 06:31:13'),
(311, 'AA6A26', 'Hhh', 6, 'Task', '2025-09-05 06:31:23'),
(312, 'AA6A26', 'Hhh', 99, 'Task', '2025-09-05 06:31:28'),
(313, 'AA6A26', 'Hhh', 80, 'Task', '2025-09-05 06:31:44'),
(314, 'AA6A26', 'Hhh', 63, 'Gift', '2025-09-05 06:31:54'),
(315, 'AA6A26', 'Hhh', 25, 'Task', '2025-09-05 06:31:58'),
(316, 'AA6A26', 'Hhh', 71, 'Task', '2025-09-05 06:32:07'),
(317, 'AA6A26', 'Hhh', 33, 'Gift', '2025-09-05 06:32:12'),
(318, 'AA6A26', 'Hhh', 65, 'Task', '2025-09-05 06:32:21'),
(319, 'AA6A26', 'Hhh', 26, 'Task', '2025-09-05 06:32:29'),
(320, 'AA6A26', 'Hhh', 97, 'Task', '2025-09-05 06:32:41'),
(321, 'AA6A26', 'Hhh', 50, 'Task', '2025-09-05 06:32:50'),
(322, 'AA6A26', 'Hhh', 13, 'Task', '2025-09-05 06:32:57'),
(323, 'AA6A26', 'Hhh', 45, 'Task', '2025-09-05 06:33:02'),
(324, 'AA6A26', 'Hhh', 93, 'Task', '2025-09-05 06:33:08'),
(325, 'AA6A26', 'Hhh', 89, 'Task', '2025-09-05 06:33:13'),
(326, 'AA6A26', 'Hhh', 37, 'Gift', '2025-09-05 06:33:19'),
(327, 'AA6A26', 'Hhh', 90, 'Task', '2025-09-05 06:33:27'),
(328, 'AA6A26', 'Hhh', 7, 'Money', '2025-09-05 06:33:33'),
(329, 'AA6A26', 'Hhh', 84, 'Task', '2025-09-05 06:33:39'),
(330, 'AA6A26', 'Hhh', 61, 'Task', '2025-09-05 06:33:45'),
(331, 'AA6A26', 'Hhh', 88, 'Task', '2025-09-05 06:33:51'),
(332, 'AA6A26', 'Hhh', 81, 'Task', '2025-09-05 06:33:58'),
(333, 'AA6A26', 'Hhh', 31, 'Task', '2025-09-05 06:34:03'),
(334, 'AA6A26', 'Hhh', 91, 'Task', '2025-09-05 06:34:08'),
(335, 'AA6A26', 'Hhh', 46, 'Task', '2025-09-05 06:34:12'),
(336, 'AA6A26', 'Hhh', 35, 'Task', '2025-09-05 06:34:24'),
(337, 'AA6A26', 'Hhh', 57, 'Task', '2025-09-05 06:34:27'),
(338, 'AA6A26', 'Hhh', 3, 'Gift', '2025-09-05 06:34:31'),
(339, 'AA6A26', 'Hhh', 10, 'Task', '2025-09-05 06:34:39'),
(340, 'AA6A26', 'Hhh', 86, 'Task', '2025-09-05 06:34:47'),
(341, 'AA6A26', 'Hhh', 8, 'Task', '2025-09-05 06:34:53'),
(342, 'AA6A26', 'Hhh', 74, 'Task', '2025-09-05 06:35:02'),
(343, 'AA6A26', 'Hhh', 4, 'Task', '2025-09-05 06:35:08'),
(344, 'AA6A26', 'Hhh', 78, 'Joker', '2025-09-05 06:35:23'),
(345, 'AA6A26', 'Hhh', 9, 'Money', '2025-09-05 06:35:26'),
(346, 'AA6A26', 'Hhh', 43, 'Task', '2025-09-05 06:35:31'),
(347, 'AA6A26', 'Hhh', 12, 'Gift', '2025-09-05 06:35:35'),
(348, 'AA6A26', 'Hhh', 53, 'Gift', '2025-09-05 06:35:45'),
(349, 'AA6A26', 'Hhh', 42, 'Money', '2025-09-05 06:35:55'),
(350, 'AA6A26', 'Hhh', 38, 'Joker', '2025-09-05 06:36:08'),
(351, 'AA6A26', 'Hhh', 92, 'Joker', '2025-09-05 06:36:14'),
(352, 'AA6A26', 'Hhh', 41, 'Task', '2025-09-05 06:36:17'),
(353, 'AA6A26', 'Hhh', 44, 'Joker', '2025-09-05 06:36:20'),
(354, 'AA6A26', 'Hhh', 22, 'Task', '2025-09-05 06:36:24'),
(355, 'AA6A26', 'Hhh', 15, 'Task', '2025-09-05 06:36:28'),
(356, 'AA6A26', 'Hhh', 14, 'Task', '2025-09-05 06:36:45'),
(357, 'AA6A26', 'Hhh', 87, 'Task', '2025-09-05 06:36:54'),
(358, 'AA6A26', 'Hhh', 2, 'Gift', '2025-09-05 06:36:58'),
(359, 'AA6A26', 'Hhh', 72, 'Task', '2025-09-05 06:37:04'),
(360, 'AA6A26', 'Hhh', 24, 'Task', '2025-09-05 06:37:10'),
(361, 'AA6A26', 'Hhh', 56, 'Task', '2025-09-05 06:37:18'),
(362, 'AA6A26', 'Hhh', 11, 'Task', '2025-09-05 06:37:22'),
(363, 'AA6A26', 'Hhh', 16, 'Task', '2025-09-05 06:37:42'),
(364, 'AA6A26', 'Hhh', 76, 'Task', '2025-09-05 06:37:49'),
(365, 'AA6A26', 'Hhh', 55, 'Task', '2025-09-05 06:37:54'),
(366, 'AA6A26', 'Hhh', 19, 'Task', '2025-09-05 06:38:02'),
(367, 'AA6A26', 'Hhh', 52, 'Joker', '2025-09-05 06:38:06'),
(368, 'AA6A26', 'Hhh', 73, 'Task', '2025-09-05 06:38:09'),
(369, 'AA6A26', 'Hhh', 75, 'Task', '2025-09-05 06:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_code` varchar(10) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_code`, `created_by`, `created_at`) VALUES
('067F88', 'Krupa', '2025-09-04 09:13:14'),
('06DF7C', 'Krupa', '2025-09-04 09:12:12'),
('07EAE5', 'Hdnd', '2025-09-04 11:28:59'),
('080905', 'Jaanu', '2025-09-04 04:44:00'),
('168128', 'Krupa', '2025-09-04 09:12:25'),
('1732CE', 'Krupa', '2025-09-04 09:12:14'),
('1C04F9', 'hi', '2025-09-03 18:48:41'),
('1F4103', 'lmbj', '2025-09-04 04:41:17'),
('27FDD4', 'sdfsvf', '2025-09-04 07:18:48'),
('2BA896', 'nanditha', '2025-09-03 20:11:00'),
('2CBBE3', 'Bunny', '2025-09-04 04:19:35'),
('2E9D7F', 'Hshue', '2025-09-04 08:41:44'),
('2EBEB2', 'Jaanu', '2025-09-03 20:11:31'),
('368F64', 'Jaanu', '2025-09-04 04:44:02'),
('393158', 'lkk', '2025-09-04 04:42:53'),
('403CF3', 'Krupa', '2025-09-04 09:13:17'),
('419CB3', 'Heheh', '2025-09-04 03:26:21'),
('473F5D', 'Mayank raj ðŸ˜', '2025-09-04 05:55:12'),
('4BEA0E', 'jn', '2025-09-04 04:28:50'),
('4C53AD', 'Krupa', '2025-09-04 08:27:00'),
('4DD6FD', 'Hello', '2025-09-04 03:24:07'),
('4DE363', 'Bunny', '2025-09-04 04:19:33'),
('4FD695', 'Jjkonainsisndodn', '2025-09-04 04:41:51'),
('5167D9', 'nanditha', '2025-09-03 20:07:33'),
('5587F3', 'jn', '2025-09-04 04:32:20'),
('574CAA', 'hi', '2025-09-03 18:37:43'),
('5A1AE3', 'hi', '2025-09-03 18:42:51'),
('5C652A', 'dfd', '2025-09-04 05:21:14'),
('62BB42', 'Jaanu', '2025-09-04 04:43:59'),
('687A59', 'Krupa', '2025-09-04 09:12:24'),
('6C23E3', 'Neha', '2025-09-04 04:35:27'),
('6D12CC', 'Jaanu', '2025-09-04 04:44:00'),
('6E6240', 'hi', '2025-09-03 18:45:22'),
('6EB621', 'Jaanu', '2025-09-04 08:23:13'),
('7592DA', 'Bunny', '2025-09-04 04:20:06'),
('79317A', 'Jaanu', '2025-09-04 04:44:00'),
('7B9B59', 'lmbj', '2025-09-04 04:39:58'),
('7F35E4', 'sss', '2025-09-04 03:43:34'),
('852867', 'Krupa', '2025-09-04 09:12:25'),
('87325F', 'Gsuaba', '2025-09-04 08:39:15'),
('87EF70', 'Nandu', '2025-09-04 02:52:01'),
('888D9F', 'hhghng', '2025-09-04 04:20:38'),
('8ACB92', 'u', '2025-09-03 19:12:52'),
('90D7E4', 'hi', '2025-09-03 18:37:37'),
('90F75E', 'nandu', '2025-09-03 19:06:59'),
('93A6AB', 'u', '2025-09-03 19:13:32'),
('93E51E', 'Jaanu', '2025-09-04 04:44:00'),
('9477AC', 'sd', '2025-09-04 05:10:55'),
('95471E', 'manoj', '2025-09-04 07:10:44'),
('9DAFCF', 'u', '2025-09-03 19:16:10'),
('A6AC1C', 'u', '2025-09-03 19:18:49'),
('A9A172', 'u', '2025-09-03 19:15:04'),
('AA6A26', 'Hhh', '2025-09-04 11:34:16'),
('B008E5', 'lkk', '2025-09-04 04:42:54'),
('B00CD3', 'Krupa', '2025-09-04 09:13:13'),
('B26BF1', 'jn', '2025-09-04 04:28:09'),
('B34184', 'Krupa', '2025-09-04 09:12:22'),
('B7696D', 'lmbj', '2025-09-04 04:39:57'),
('BA2AB3', 'aashu', '2025-09-04 17:35:13'),
('BA846D', 'Krupa', '2025-09-04 09:12:12'),
('BCECA5', 'lmbj', '2025-09-04 04:35:41'),
('BD814D', 'Heheh', '2025-09-04 03:26:03'),
('BF27C2', 'Heheh', '2025-09-04 03:26:40'),
('BF2CA4', 'Nanditha', '2025-09-04 05:43:25'),
('C07390', 'Gsuaba', '2025-09-04 08:39:14'),
('C1CA78', 'Mayank raj', '2025-09-04 06:18:14'),
('C650F8', 'hi', '2025-09-03 18:46:24'),
('C705F4', 'hi', '2025-09-03 18:40:43'),
('CFBFF9', 'nandu', '2025-09-04 06:06:32'),
('D8DFBA', 'manoj', '2025-09-04 12:14:05'),
('D9CEE1', 'sss', '2025-09-04 04:10:18'),
('DCBC36', 'mm', '2025-09-03 19:54:20'),
('DF0BE4', 'u', '2025-09-03 19:17:08'),
('E2315C', 'lmbj', '2025-09-04 04:35:40'),
('E2967B', 'jaanu', '2025-09-04 16:13:23'),
('E9CA05', 'Gghhh', '2025-09-04 08:47:00'),
('EB0316', 'Krupa', '2025-09-04 09:12:23'),
('EF987D', 'hi', '2025-09-03 18:45:01'),
('FAE309', 'Luffy', '2025-09-04 06:14:50'),
('FE353D', 'jkj', '2025-09-04 04:25:15'),
('FED92F', 'hi', '2025-09-03 18:41:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_code` (`room_code`);

--
-- Indexes for table `player_picks`
--
ALTER TABLE `player_picks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_code` (`room_code`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `player_picks`
--
ALTER TABLE `player_picks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`room_code`) REFERENCES `rooms` (`room_code`) ON DELETE CASCADE;

--
-- Constraints for table `player_picks`
--
ALTER TABLE `player_picks`
  ADD CONSTRAINT `player_picks_ibfk_1` FOREIGN KEY (`room_code`) REFERENCES `rooms` (`room_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
