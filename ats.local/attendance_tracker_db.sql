-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 10:21 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_tracker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `subject_id`, `date`, `status`) VALUES
(1, 1, 1, '2025-02-01', 'present'),
(2, 1, 2, '2025-02-02', 'present'),
(3, 1, 5, '2025-02-03', 'present'),
(4, 2, 1, '2025-02-01', 'present'),
(5, 2, 3, '2025-02-02', 'present'),
(6, 2, 4, '2025-02-03', 'present'),
(7, 3, 2, '2025-02-01', 'present'),
(8, 3, 4, '2025-02-02', 'present'),
(9, 3, 5, '2025-02-03', 'present'),
(10, 4, 1, '2025-02-01', 'present'),
(11, 4, 5, '2025-02-02', 'present'),
(12, 4, 6, '2025-02-03', 'present'),
(13, 5, 3, '2025-02-01', 'present'),
(14, 5, 4, '2025-02-02', 'present'),
(15, 5, 5, '2025-02-03', 'present'),
(16, 6, 7, '2025-02-01', 'present'),
(17, 6, 9, '2025-02-02', 'present'),
(18, 6, 5, '2025-02-03', 'present'),
(19, 7, 2, '2025-02-01', 'present'),
(20, 7, 3, '2025-02-02', 'present'),
(21, 7, 8, '2025-02-03', 'present'),
(22, 8, 1, '2025-02-01', 'present'),
(23, 8, 5, '2025-02-02', 'present'),
(24, 8, 9, '2025-02-03', 'present'),
(25, 9, 4, '2025-02-01', 'present'),
(26, 9, 6, '2025-02-02', 'present'),
(27, 9, 7, '2025-02-03', 'present'),
(28, 10, 1, '2025-02-01', 'present'),
(29, 10, 2, '2025-02-02', 'present'),
(30, 10, 6, '2025-02-03', 'present'),
(31, 11, 3, '2025-02-01', 'present'),
(32, 11, 8, '2025-02-02', 'present'),
(33, 11, 7, '2025-02-03', 'present'),
(34, 12, 9, '2025-02-01', 'present'),
(35, 12, 4, '2025-02-02', 'present'),
(36, 12, 1, '2025-02-03', 'present'),
(37, 13, 5, '2025-02-01', 'present'),
(38, 13, 8, '2025-02-02', 'present'),
(39, 13, 2, '2025-02-03', 'present'),
(40, 14, 3, '2025-02-01', 'present'),
(41, 14, 4, '2025-02-02', 'present'),
(42, 14, 1, '2025-02-03', 'present'),
(43, 15, 7, '2025-02-01', 'present'),
(44, 15, 8, '2025-02-02', 'present'),
(45, 15, 5, '2025-02-03', 'present'),
(46, 16, 1, '2025-02-01', 'present'),
(47, 16, 6, '2025-02-02', 'present'),
(48, 16, 7, '2025-02-03', 'present'),
(49, 17, 2, '2025-02-01', 'present'),
(50, 17, 5, '2025-02-02', 'present'),
(51, 17, 3, '2025-02-03', 'present'),
(52, 18, 8, '2025-02-01', 'present'),
(53, 18, 6, '2025-02-02', 'present'),
(54, 18, 4, '2025-02-03', 'present'),
(55, 19, 1, '2025-02-01', 'present'),
(56, 19, 2, '2025-02-02', 'present'),
(57, 19, 9, '2025-02-03', 'present'),
(58, 20, 3, '2025-02-01', 'present'),
(59, 20, 7, '2025-02-02', 'present'),
(60, 20, 5, '2025-02-03', 'present'),
(61, 21, 8, '2025-02-01', 'present'),
(62, 21, 4, '2025-02-02', 'present'),
(63, 21, 1, '2025-02-03', 'present'),
(64, 22, 5, '2025-02-01', 'present'),
(65, 22, 7, '2025-02-02', 'present'),
(66, 22, 9, '2025-02-03', 'present'),
(67, 23, 6, '2025-02-01', 'present'),
(68, 23, 2, '2025-02-02', 'present'),
(69, 23, 1, '2025-02-03', 'present'),
(70, 24, 3, '2025-02-01', 'present'),
(71, 24, 8, '2025-02-02', 'present'),
(72, 24, 7, '2025-02-03', 'present'),
(73, 25, 4, '2025-02-01', 'present'),
(74, 25, 1, '2025-02-02', 'present'),
(75, 25, 9, '2025-02-03', 'present'),
(76, 26, 2, '2025-02-01', 'present'),
(77, 26, 5, '2025-02-02', 'present'),
(78, 26, 6, '2025-02-03', 'present'),
(79, 27, 1, '2025-02-01', 'present'),
(80, 27, 8, '2025-02-02', 'present'),
(81, 27, 3, '2025-02-03', 'present'),
(82, 28, 7, '2025-02-01', 'present'),
(83, 28, 5, '2025-02-02', 'present'),
(84, 28, 6, '2025-02-03', 'present'),
(85, 29, 4, '2025-02-01', 'present'),
(86, 29, 9, '2025-02-02', 'present'),
(87, 29, 2, '2025-02-03', 'present'),
(88, 30, 1, '2025-02-01', 'present'),
(89, 30, 3, '2025-02-02', 'present'),
(90, 30, 8, '2025-02-03', 'present'),
(91, 31, 2, '2025-02-01', 'present'),
(92, 31, 4, '2025-02-02', 'present'),
(93, 31, 6, '2025-02-03', 'present'),
(94, 32, 7, '2025-02-01', 'present'),
(95, 32, 8, '2025-02-02', 'present'),
(96, 32, 5, '2025-02-03', 'present'),
(97, 33, 3, '2025-02-01', 'present'),
(98, 33, 5, '2025-02-02', 'present'),
(99, 33, 1, '2025-02-03', 'present'),
(100, 34, 9, '2025-02-01', 'present'),
(101, 34, 2, '2025-02-02', 'present'),
(102, 34, 6, '2025-02-03', 'present'),
(103, 35, 4, '2025-02-01', 'present'),
(104, 35, 7, '2025-02-02', 'present'),
(105, 35, 3, '2025-02-03', 'present'),
(106, 36, 1, '2025-02-01', 'present'),
(107, 36, 8, '2025-02-02', 'present'),
(108, 36, 5, '2025-02-03', 'present'),
(109, 37, 2, '2025-02-01', 'present'),
(110, 37, 6, '2025-02-02', 'present'),
(111, 37, 4, '2025-02-03', 'present'),
(112, 38, 7, '2025-02-01', 'present'),
(113, 38, 1, '2025-02-02', 'present'),
(114, 38, 9, '2025-02-03', 'present'),
(115, 39, 5, '2025-02-01', 'present'),
(116, 39, 8, '2025-02-02', 'present'),
(117, 39, 3, '2025-02-03', 'present'),
(118, 40, 1, '2025-02-01', 'present'),
(119, 40, 7, '2025-02-02', 'present'),
(120, 40, 2, '2025-02-03', 'present'),
(121, 1, 2, '2025-02-20', 'present'),
(122, 3, 2, '2025-02-20', 'present'),
(123, 7, 2, '2025-02-20', 'present'),
(124, 10, 2, '2025-02-20', 'present'),
(125, 13, 2, '2025-02-20', 'present'),
(126, 17, 2, '2025-02-20', 'present'),
(127, 19, 2, '2025-02-20', 'present'),
(128, 23, 2, '2025-02-20', 'present'),
(129, 26, 2, '2025-02-20', 'present'),
(130, 29, 2, '2025-02-20', 'present'),
(131, 31, 2, '2025-02-20', 'present'),
(132, 34, 2, '2025-02-20', 'present'),
(133, 37, 2, '2025-02-20', 'present'),
(134, 40, 2, '2025-02-20', 'present'),
(135, 42, 2, '2025-02-20', 'present'),
(136, 46, 2, '2025-02-20', 'present'),
(137, 48, 2, '2025-02-20', 'present'),
(138, 50, 2, '2025-02-20', 'present'),
(139, 52, 2, '2025-02-20', 'absent'),
(140, 56, 2, '2025-02-20', 'absent'),
(141, 58, 2, '2025-02-20', 'absent'),
(142, 64, 2, '2025-02-20', 'present'),
(143, 66, 2, '2025-02-20', 'present'),
(144, 68, 2, '2025-02-20', 'present'),
(145, 72, 2, '2025-02-20', 'absent'),
(146, 75, 2, '2025-02-20', 'absent'),
(147, 78, 2, '2025-02-20', 'absent'),
(148, 82, 2, '2025-02-20', 'absent'),
(149, 84, 2, '2025-02-20', 'present'),
(150, 89, 2, '2025-02-20', 'present'),
(151, 91, 2, '2025-02-20', 'present'),
(152, 94, 2, '2025-02-20', 'present'),
(153, 97, 2, '2025-02-20', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 3),
(6, 2, 4),
(7, 3, 2),
(8, 3, 4),
(9, 3, 5),
(10, 4, 1),
(11, 4, 5),
(12, 4, 6),
(13, 5, 3),
(14, 5, 4),
(15, 5, 5),
(16, 6, 7),
(17, 6, 9),
(18, 6, 5),
(19, 7, 2),
(20, 7, 3),
(21, 7, 8),
(22, 8, 1),
(23, 8, 5),
(24, 8, 9),
(25, 9, 4),
(26, 9, 6),
(27, 9, 7),
(28, 10, 1),
(29, 10, 2),
(30, 10, 6),
(31, 11, 3),
(32, 11, 8),
(33, 11, 7),
(34, 12, 9),
(35, 12, 4),
(36, 12, 1),
(37, 13, 5),
(38, 13, 8),
(39, 13, 2),
(40, 14, 3),
(41, 14, 4),
(42, 14, 1),
(43, 15, 7),
(44, 15, 8),
(45, 15, 5),
(46, 16, 1),
(47, 16, 6),
(48, 16, 7),
(49, 17, 2),
(50, 17, 5),
(51, 17, 3),
(52, 18, 8),
(53, 18, 6),
(54, 18, 4),
(55, 19, 1),
(56, 19, 2),
(57, 19, 9),
(58, 20, 3),
(59, 20, 7),
(60, 20, 5),
(61, 21, 8),
(62, 21, 4),
(63, 21, 1),
(64, 22, 5),
(65, 22, 7),
(66, 22, 9),
(67, 23, 6),
(68, 23, 2),
(69, 23, 1),
(70, 24, 3),
(71, 24, 8),
(72, 24, 7),
(73, 25, 4),
(74, 25, 1),
(75, 25, 9),
(76, 26, 2),
(77, 26, 5),
(78, 26, 6),
(79, 27, 1),
(80, 27, 8),
(81, 27, 3),
(82, 28, 7),
(83, 28, 5),
(84, 28, 6),
(85, 29, 4),
(86, 29, 9),
(87, 29, 2),
(88, 30, 1),
(89, 30, 3),
(90, 30, 8),
(91, 31, 2),
(92, 31, 4),
(93, 31, 6),
(94, 32, 7),
(95, 32, 8),
(96, 32, 5),
(97, 33, 3),
(98, 33, 5),
(99, 33, 1),
(100, 34, 9),
(101, 34, 2),
(102, 34, 6),
(103, 35, 4),
(104, 35, 7),
(105, 35, 3),
(106, 36, 1),
(107, 36, 8),
(108, 36, 5),
(109, 37, 2),
(110, 37, 6),
(111, 37, 4),
(112, 38, 7),
(113, 38, 1),
(114, 38, 9),
(115, 39, 5),
(116, 39, 8),
(117, 39, 3),
(118, 40, 1),
(119, 40, 7),
(120, 40, 2),
(121, 41, 8),
(122, 41, 9),
(123, 41, 6),
(124, 42, 2),
(125, 42, 4),
(126, 42, 5),
(127, 43, 1),
(128, 43, 3),
(129, 43, 7),
(130, 44, 5),
(131, 44, 9),
(132, 44, 8),
(133, 45, 3),
(134, 45, 1),
(135, 45, 4),
(136, 46, 7),
(137, 46, 2),
(138, 46, 6),
(139, 47, 4),
(140, 47, 9),
(141, 47, 5),
(142, 48, 8),
(143, 48, 2),
(144, 48, 6),
(145, 49, 3),
(146, 49, 7),
(147, 49, 9),
(148, 50, 1),
(149, 50, 2),
(150, 50, 5),
(151, 51, 6),
(152, 51, 8),
(153, 51, 4),
(154, 52, 2),
(155, 52, 5),
(156, 52, 7),
(157, 53, 4),
(158, 53, 1),
(159, 53, 6),
(160, 54, 8),
(161, 54, 3),
(162, 54, 9),
(163, 55, 1),
(164, 55, 7),
(165, 55, 6),
(166, 56, 3),
(167, 56, 2),
(168, 56, 5),
(169, 57, 9),
(170, 57, 4),
(171, 57, 8),
(172, 58, 1),
(173, 58, 2),
(174, 58, 7),
(175, 59, 5),
(176, 59, 6),
(177, 59, 9),
(178, 60, 3),
(179, 60, 4),
(180, 60, 1),
(181, 61, 8),
(182, 61, 9),
(183, 61, 7),
(184, 62, 4),
(185, 62, 6),
(186, 62, 5),
(187, 63, 7),
(188, 63, 1),
(189, 63, 8),
(190, 64, 3),
(191, 64, 2),
(192, 64, 4),
(193, 65, 6),
(194, 65, 9),
(195, 65, 5),
(196, 66, 8),
(197, 66, 7),
(198, 66, 2),
(199, 67, 4),
(200, 67, 5),
(201, 67, 3),
(202, 68, 2),
(203, 68, 6),
(204, 68, 7),
(205, 69, 1),
(206, 69, 4),
(207, 69, 5),
(208, 70, 3),
(209, 70, 8),
(210, 70, 9),
(211, 71, 7),
(212, 71, 4),
(213, 71, 6),
(214, 72, 2),
(215, 72, 5),
(216, 72, 8),
(217, 73, 3),
(218, 73, 7),
(219, 73, 9),
(220, 74, 1),
(221, 74, 6),
(222, 74, 8),
(223, 75, 5),
(224, 75, 2),
(225, 75, 4),
(226, 76, 7),
(227, 76, 1),
(228, 76, 3),
(229, 77, 8),
(230, 77, 9),
(231, 77, 5),
(232, 78, 4),
(233, 78, 6),
(234, 78, 2),
(235, 79, 3),
(236, 79, 7),
(237, 79, 8),
(238, 80, 1),
(239, 80, 6),
(240, 80, 9),
(241, 81, 7),
(242, 81, 4),
(243, 81, 5),
(244, 82, 2),
(245, 82, 8),
(246, 82, 9),
(247, 83, 3),
(248, 83, 7),
(249, 83, 1),
(250, 84, 4),
(251, 84, 2),
(252, 84, 6),
(253, 85, 5),
(254, 85, 7),
(255, 85, 9),
(256, 86, 8),
(257, 86, 6),
(258, 86, 1),
(259, 87, 4),
(260, 87, 3),
(261, 87, 9),
(262, 88, 5),
(263, 88, 1),
(264, 88, 6),
(265, 89, 2),
(266, 89, 3),
(267, 89, 7),
(268, 90, 8),
(269, 90, 4),
(270, 90, 5),
(271, 91, 9),
(272, 91, 2),
(273, 91, 6),
(274, 92, 3),
(275, 92, 5),
(276, 92, 1),
(277, 93, 4),
(278, 93, 9),
(279, 93, 7),
(280, 94, 5),
(281, 94, 2),
(282, 94, 8),
(283, 95, 6),
(284, 95, 3),
(285, 95, 4),
(286, 96, 8),
(287, 96, 9),
(288, 96, 7),
(289, 97, 1),
(290, 97, 5),
(291, 97, 2),
(292, 98, 6),
(293, 98, 4),
(294, 98, 9),
(295, 99, 7),
(296, 99, 3),
(297, 99, 8),
(298, 100, 5),
(299, 100, 1),
(300, 100, 6);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `registration_number`, `name`) VALUES
(1, 'REG2024001', 'John Doe'),
(2, 'REG2024002', 'Jane Smith'),
(3, 'REG2024003', 'Michael Johnson'),
(4, 'REG2024004', 'Emily Davis'),
(5, 'REG2024005', 'David Wilson'),
(6, 'REG2024006', 'Sarah Lee'),
(7, 'REG2024007', 'Matthew Brown'),
(8, 'REG2024008', 'Olivia Clark'),
(9, 'REG2024009', 'James Lewis'),
(10, 'REG2024010', 'Lily Hall'),
(11, 'REG2024011', 'Benjamin Walker'),
(12, 'REG2024012', 'Sophia Allen'),
(13, 'REG2024013', 'Ethan Young'),
(14, 'REG2024014', 'Isabella Hernandez'),
(15, 'REG2024015', 'Lucas King'),
(16, 'REG2024016', 'Charlotte Martinez'),
(17, 'REG2024017', 'Aiden Moore'),
(18, 'REG2024018', 'Amelia Taylor'),
(19, 'REG2024019', 'Elijah White'),
(20, 'REG2024020', 'Mia Adams'),
(21, 'REG2024021', 'Jacob Nelson'),
(22, 'REG2024022', 'Harper Carter'),
(23, 'REG2024023', 'Michael Scott'),
(24, 'REG2024024', 'Aria Davis'),
(25, 'REG2024025', 'Daniel Evans'),
(26, 'REG2024026', 'Liam Miller'),
(27, 'REG2024027', 'Ella Roberts'),
(28, 'REG2024028', 'David Garcia'),
(29, 'REG2024029', 'Emily Collins'),
(30, 'REG2024030', 'Landon Jackson'),
(31, 'REG2024031', 'Charlotte Perez'),
(32, 'REG2024032', 'Wyatt Bennett'),
(33, 'REG2024033', 'Grace Stewart'),
(34, 'REG2024034', 'Ethan Morris'),
(35, 'REG2024035', 'Ella Ward'),
(36, 'REG2024036', 'Oliver Green'),
(37, 'REG2024037', 'Sophia Carter'),
(38, 'REG2024038', 'Henry Scott'),
(39, 'REG2024039', 'Chloe Cooper'),
(40, 'REG2024040', 'Leo Murphy'),
(41, 'REG2024041', 'Charlotte Hill'),
(42, 'REG2024042', 'Jack Mitchell'),
(43, 'REG2024043', 'Scarlett White'),
(44, 'REG2024044', 'Mason Wood'),
(45, 'REG2024045', 'Avery Hall'),
(46, 'REG2024046', 'Daniel Clark'),
(47, 'REG2024047', 'Oliver Turner'),
(48, 'REG2024048', 'Isla Foster'),
(49, 'REG2024049', 'Madison Gonzalez'),
(50, 'REG2024050', 'Jackson Perez'),
(51, 'REG2024051', 'Leo Gray'),
(52, 'REG2024052', 'Ava King'),
(53, 'REG2024053', 'Samuel Lee'),
(54, 'REG2024054', 'Amelia Hall'),
(55, 'REG2024055', 'Mason Clark'),
(56, 'REG2024056', 'Harper Collins'),
(57, 'REG2024057', 'Ethan Walker'),
(58, 'REG2024058', 'Ella Harris'),
(59, 'REG2024059', 'Lucas Mitchell'),
(60, 'REG2024060', 'Charlotte Perez'),
(61, 'REG2024061', 'Benjamin Evans'),
(62, 'REG2024062', 'Sophie Wilson'),
(63, 'REG2024063', 'Carter Martinez'),
(64, 'REG2024064', 'Adeline Davis'),
(65, 'REG2024065', 'Michael King'),
(66, 'REG2024066', 'Jack White'),
(67, 'REG2024067', 'Ella Martin'),
(68, 'REG2024068', 'Noah Hall'),
(69, 'REG2024069', 'Scarlett Johnson'),
(70, 'REG2024070', 'Daniel White'),
(71, 'REG2024071', 'Avery Brown'),
(72, 'REG2024072', 'Benjamin Harris'),
(73, 'REG2024073', 'Megan Young'),
(74, 'REG2024074', 'Matthew Evans'),
(75, 'REG2024075', 'Oliver Lewis'),
(76, 'REG2024076', 'Amelia Thomas'),
(77, 'REG2024077', 'John Taylor'),
(78, 'REG2024078', 'Sophia Walker'),
(79, 'REG2024079', 'Ethan Adams'),
(80, 'REG2024080', 'Benjamin Thomas'),
(81, 'REG2024081', 'Chloe Allen'),
(82, 'REG2024082', 'Landon Hill'),
(83, 'REG2024083', 'Lila Nelson'),
(84, 'REG2024084', 'Sophia Moore'),
(85, 'REG2024085', 'William Miller'),
(86, 'REG2024086', 'Charlotte Jackson'),
(87, 'REG2024087', 'Lucas Hall'),
(88, 'REG2024088', 'Oliver Young'),
(89, 'REG2024089', 'Isabella Turner'),
(90, 'REG2024090', 'Jacob Davis'),
(91, 'REG2024091', 'Amelia Green'),
(92, 'REG2024092', 'William King'),
(93, 'REG2024093', 'Ava White'),
(94, 'REG2024094', 'Charlotte Walker'),
(95, 'REG2024095', 'Jack Turner'),
(96, 'REG2024096', 'Emily Martin'),
(97, 'REG2024097', 'Megan Roberts'),
(98, 'REG2024098', 'David Harris'),
(99, 'REG2024099', 'Daniel Green'),
(100, 'REG2024100', 'Sophia Wood');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`) VALUES
(1, 'Mathematics'),
(2, 'Physics'),
(3, 'Chemistry'),
(4, 'Biology'),
(5, 'Computer Science'),
(6, 'History'),
(7, 'Geography'),
(8, 'English'),
(9, 'Economics'),
(10, 'Art');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD UNIQUE KEY `unique_attendance` (`student_id`,`subject_id`,`date`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `idx_date` (`date`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
