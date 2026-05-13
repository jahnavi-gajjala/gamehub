-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 09:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(16, 'A6AC1C', 'u', '', 'student', '2025-09-03 19:19:20');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`room_code`) REFERENCES `rooms` (`room_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
