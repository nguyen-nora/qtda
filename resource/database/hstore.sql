-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 10:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakura`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `username`, `password`, `email`, `phoneNumber`) VALUES
(1, '10:58:48 06/04/2023', '14:34:38 14/04/2023', NULL, 'dragondev0304', 'e10adc3949ba59abbe56e057f20f883e', 'thanhlongedu0304@gmail.com', '0353292241'),
(2, '10:58:48 06/04/2023', '10:58:48 06/04/2023', NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '0889025122');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `videoId` int(11) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `healthReward` int(11) DEFAULT 0,
  `starReward` int(11) DEFAULT 0,
  `diamondReward` int(11) DEFAULT 0,
  `occurrenceRate` int(11) NOT NULL DEFAULT 100,
  `advertisementTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `imageId`, `videoId`, `title`, `description`, `duration`, `healthReward`, `starReward`, `diamondReward`, `occurrenceRate`, `advertisementTypeId`) VALUES
(10, '15:37:46 24/04/2023', NULL, NULL, 108, 0, 'Tròn House Sneaker', '', 15, 3, 2, 0, 85, 1),
(11, '15:38:31 24/04/2023', NULL, NULL, 109, 0, 'Son lipstick abc', '', 10, 3, 3, 0, 100, 1),
(12, '15:42:40 24/04/2023', '15:44:43 24/04/2023', NULL, 0, 18, 'Stock clip ads 1', '', 13, 3, 3, 1, 60, 3),
(13, '15:44:38 24/04/2023', NULL, NULL, 0, 19, 'Stock clip ads 2', '', 28, 3, 3, 2, 70, 3);

-- --------------------------------------------------------

--
-- Table structure for table `advertisementtype`
--

CREATE TABLE `advertisementtype` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisementtype`
--

INSERT INTO `advertisementtype` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`) VALUES
(1, '14:41:14 15/04/2023', NULL, NULL, 'Hình ảnh'),
(3, '14:56:13 15/04/2023', NULL, NULL, 'Video ngắn');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `isRight` tinyint(1) NOT NULL DEFAULT 0,
  `questionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `content`, `isRight`, `questionId`) VALUES
(21, '20:43:08 14/04/2023', NULL, NULL, '24 tháng', 1, 1),
(22, '20:43:13 14/04/2023', NULL, NULL, '8 tháng', 0, 1),
(23, '20:43:19 14/04/2023', NULL, NULL, '12 tháng', 0, 1),
(24, '20:43:28 14/04/2023', NULL, NULL, '30 tháng', 0, 1),
(25, '20:44:35 14/04/2023', NULL, NULL, '3 - 5 tháng', 0, 2),
(26, '20:44:38 14/04/2023', NULL, '11:07:25 18/04/2023', '8 - 12 tháng', 1, 2),
(27, '20:44:42 14/04/2023', NULL, NULL, '15 - 17 tháng', 0, 2),
(28, '20:44:45 14/04/2023', NULL, NULL, '20 - 24 tháng', 0, 2),
(33, '20:51:20 14/04/2023', NULL, NULL, 'L’Oreal', 1, 8),
(34, '20:51:23 14/04/2023', NULL, NULL, 'Hermès', 0, 8),
(35, '20:51:27 14/04/2023', NULL, NULL, 'Guerlain', 0, 8),
(36, '20:51:30 14/04/2023', NULL, NULL, 'YSL', 0, 8),
(37, '11:06:25 18/04/2023', NULL, NULL, '24 tháng', 1, 9),
(38, '11:06:29 18/04/2023', NULL, NULL, '8 tháng', 0, 9),
(39, '11:06:34 18/04/2023', NULL, NULL, '12 tháng', 0, 9),
(40, '11:06:44 18/04/2023', NULL, NULL, '30 tháng', 0, 9),
(42, '11:08:34 18/04/2023', NULL, NULL, '1.8kg - 4kg', 1, 10),
(43, '11:08:41 18/04/2023', NULL, NULL, '4.5kg - 6kg', 0, 10),
(44, '11:08:50 18/04/2023', NULL, NULL, '6.5kg - 7.7kg', 0, 10),
(45, '11:08:56 18/04/2023', NULL, NULL, '8kg - 9kg', 0, 10),
(46, '11:09:18 18/04/2023', NULL, NULL, 'MAC', 1, 11),
(47, '11:09:21 18/04/2023', NULL, NULL, '3CE', 0, 11),
(48, '11:09:28 18/04/2023', NULL, NULL, 'DIOR', 0, 11),
(49, '11:09:34 18/04/2023', NULL, NULL, 'Burberry', 0, 11),
(50, '11:10:03 18/04/2023', NULL, NULL, '9 - 11 loại', 1, 12),
(51, '11:10:07 18/04/2023', NULL, NULL, '1 - 3 loại', 0, 12),
(52, '11:10:12 18/04/2023', NULL, NULL, '5 - 7 loại', 0, 12),
(53, '11:10:17 18/04/2023', NULL, NULL, '11 loại trở lên', 0, 12),
(54, '11:10:39 18/04/2023', NULL, NULL, 'Là dòng son truyền thống, có vỏ bên ngoài hình trụ bên trong là sáp son', 1, 13),
(55, '11:10:47 18/04/2023', NULL, NULL, 'Là loại được thiết kế với cọ tô và dạng tuyp, thông thường ở dạng gel', 0, 13),
(56, '11:10:54 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, son môi dạng lỏng giống với kem nền trang điểm', 0, 13),
(57, '11:11:01 18/04/2023', NULL, NULL, 'Là loại son trong thành phần có chứa các tinh thế mica hay silica tạo nên hiệu ứng lấp lánh trên môi', 0, 13),
(58, '11:11:26 18/04/2023', NULL, NULL, 'Là dòng son truyền thống, có vỏ bên ngoài hình trụ bên trong là sáp son', 0, 14),
(59, '11:11:31 18/04/2023', NULL, NULL, 'Là loại được thiết kế với cọ tô và dạng tuyp, thông thường ở dạng gel', 0, 14),
(60, '11:11:37 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, son môi dạng lỏng giống với kem nền trang điểm', 1, 14),
(61, '11:11:43 18/04/2023', NULL, NULL, 'Là loại son trong thành phần có chứa các tinh thế mica hay silica tạo nên hiệu ứng lấp lánh', 0, 14),
(62, '11:12:02 18/04/2023', NULL, NULL, 'Là dòng son truyền thống, có vỏ bên ngoài hình trụ bên trong là sáp son', 0, 15),
(63, '11:12:07 18/04/2023', NULL, NULL, 'Là loại được thiết kế với cọ tô và dạng tuyp, thông thường ở dạng gel', 1, 15),
(64, '11:12:13 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, son môi dạng lỏng giống với kem nền trang điểm', 0, 15),
(65, '11:12:20 18/04/2023', NULL, NULL, 'Là loại son trong thành phần có chứa các tinh thế mica hay silica tạo nên hiệu ứng lấp lánh', 0, 15),
(66, '11:13:00 18/04/2023', NULL, NULL, 'Là dòng son truyền thống, có vỏ bên ngoài hình trụ bên trong là sáp son', 0, 16),
(67, '11:13:07 18/04/2023', NULL, NULL, 'Là loại được thiết kế với cọ tô và dạng tuyp, thông thường ở dạng gel', 0, 16),
(68, '11:13:12 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, son môi dạng lỏng giống với kem nền trang điểm', 0, 16),
(69, '11:13:23 18/04/2023', NULL, NULL, 'Là loại được thiết kế dạng thỏi, dạng tuýp, dạng hũ,... có dưỡng chất để giữ ẩm', 1, 16),
(70, '11:13:42 18/04/2023', NULL, NULL, 'Là dòng son truyền thống, có vỏ bên ngoài hình trụ bên trong là sáp son', 0, 17),
(71, '11:13:48 18/04/2023', NULL, NULL, 'Là loại được thiết kế với cọ tô và dạng tuyp, thông thường ở dạng gel', 0, 17),
(72, '11:13:53 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, son môi dạng lỏng giống với kem nền trang điểm', 0, 17),
(73, '11:13:59 18/04/2023', NULL, NULL, 'Là loại thường được đựng vào lọ, kết cấu mỏng nhẹ và bám màu tốt', 1, 17),
(74, '11:14:48 18/04/2023', NULL, NULL, 'Dây giày, đế giày, mũi giày, lớp lót bên trong giày', 0, 18),
(75, '11:14:54 18/04/2023', NULL, NULL, 'Lưỡi gà, gót giày, hông giày, phần thân sau của giày', 0, 18),
(76, '11:15:00 18/04/2023', NULL, NULL, 'Cổ giày, miếng lót giày, lỗ xỏ dây giày', 0, 18),
(77, '11:15:07 18/04/2023', NULL, NULL, 'Tất cả các ý kiến trên', 1, 18),
(78, '11:15:32 18/04/2023', NULL, NULL, 'Hông giày và đế ngoài của giày', 0, 19),
(79, '11:15:38 18/04/2023', NULL, NULL, 'Hông giày và đế ngoài của giày', 0, 19),
(80, '11:15:44 18/04/2023', NULL, NULL, 'Đế giữa của giày và đế ngoài của giày', 0, 19),
(81, '11:15:49 18/04/2023', NULL, NULL, 'Thân giày, đế giữa của giày và đế ngoài của giày', 1, 19),
(82, '11:16:06 18/04/2023', NULL, NULL, 'Không vệ sinh giày thể thao', 0, 20),
(83, '11:16:15 18/04/2023', NULL, NULL, 'Phơi giày trực tiếp dưới nắng gắt hoặc những nơi có nhiệt độ cao', 0, 20),
(84, '11:16:21 18/04/2023', NULL, NULL, 'Sử dụng giày đúng mục đích, bảo quản nơi khô ráo thoáng mát', 1, 20),
(85, '11:16:28 18/04/2023', NULL, NULL, 'Để tất cả các loại chồng lên nhau nhưng không có hộp bảo vệ', 0, 20),
(86, '11:16:49 18/04/2023', NULL, NULL, 'Nike', 0, 21),
(87, '11:16:53 18/04/2023', NULL, NULL, 'Adidas', 0, 21),
(88, '11:16:57 18/04/2023', NULL, NULL, 'Louis Vuiton', 1, 21),
(89, '11:17:03 18/04/2023', NULL, NULL, 'MLB', 0, 21),
(90, '11:17:25 18/04/2023', NULL, NULL, 'Thượng Đình', 0, 22),
(91, '11:17:30 18/04/2023', NULL, NULL, 'Juno', 0, 22),
(92, '11:17:35 18/04/2023', NULL, NULL, 'MWC Shop', 0, 22),
(93, '11:17:41 18/04/2023', NULL, NULL, 'Biti’s', 1, 22),
(94, '11:19:01 18/04/2023', NULL, NULL, 'Mục đích sử dụng, chất liệu, kích thước, mẫu mã', 1, 23),
(95, '11:19:10 18/04/2023', NULL, NULL, 'Mục đích sử dụng, chất liệu', 0, 23),
(96, '11:19:15 18/04/2023', NULL, NULL, 'Kích thước, mẫu mã', 0, 23),
(97, '11:19:20 18/04/2023', NULL, NULL, 'Theo xu thế, càng đắt càng tốt', 0, 23),
(98, '11:19:38 18/04/2023', NULL, NULL, 'Giày thể thao (Bata, Sneaker, ...)', 1, 24),
(99, '11:19:44 18/04/2023', NULL, NULL, 'Giày thể thao (Bata, Sneaker, ...)', 0, 24),
(100, '11:19:54 18/04/2023', NULL, NULL, 'Boots (Bôt cao ngang đùi, bốt Chelsea, …)', 0, 24),
(101, '11:20:16 18/04/2023', NULL, NULL, 'Là giày có độ cao không qua mắt cá chân', 1, 25),
(102, '11:20:21 18/04/2023', NULL, NULL, 'Là loại giày này giúp hỗ trợ phần mắt cá chân', 0, 25),
(103, '11:20:26 18/04/2023', NULL, NULL, 'Là loại giày thể thao cao cổ có độ cao che đi phần mắt cá chân', 0, 25),
(104, '11:20:32 18/04/2023', NULL, NULL, 'Là loại giày thể thao phổ biến và kinh điển nhất, thường có đế khá thấp', 0, 25),
(105, '11:20:55 18/04/2023', NULL, '11:21:15 18/04/2023', 'Là giày có độ cao không qua mắt cá chân', 1, 26),
(106, '11:21:02 18/04/2023', NULL, NULL, 'Là loại giày này giúp hỗ trợ phần mắt cá chân', 0, 26),
(107, '11:21:05 18/04/2023', NULL, NULL, 'Là giày có độ cao không qua mắt cá chân', 0, 26),
(108, '11:21:11 18/04/2023', NULL, NULL, 'Là loại giày thể thao cao cổ có độ cao che đi phần mắt cá chân', 0, 26),
(109, '11:21:20 18/04/2023', NULL, NULL, 'Là loại giày thể thao phổ biến và kinh điển nhất, thường có đế khá thấp', 1, 26),
(110, '11:21:37 18/04/2023', NULL, NULL, 'Là giày có độ cao không qua mắt cá chân', 0, 27),
(111, '11:21:41 18/04/2023', NULL, NULL, 'Là loại giày này giúp hỗ trợ phần mắt cá chân', 1, 27),
(112, '11:21:47 18/04/2023', NULL, NULL, 'Là loại giày thể thao cao cổ có độ cao che đi phần mắt cá chân', 0, 27),
(113, '11:21:53 18/04/2023', NULL, NULL, 'Là loại giày thể thao phổ biến và kinh điển nhất, thường có đế khá thấp', 0, 27),
(114, '11:22:06 18/04/2023', NULL, NULL, 'Là giày có độ cao không qua mắt cá chân', 0, 28),
(115, '11:22:11 18/04/2023', NULL, NULL, 'Là loại giày này giúp hỗ trợ phần mắt cá chân', 0, 28),
(116, '11:22:16 18/04/2023', NULL, NULL, 'Là loại giày thể thao cao cổ có độ cao che đi phần mắt cá chân', 1, 28),
(117, '11:22:21 18/04/2023', NULL, NULL, 'Là loại giày thể thao phổ biến và kinh điển nhất, thường có đế khá thấp', 0, 28);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `healthReward` int(11) DEFAULT 0,
  `starReward` int(11) DEFAULT 0,
  `diamondReward` int(11) DEFAULT 0,
  `occurrenceRate` int(11) NOT NULL DEFAULT 100,
  `topicId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `imageId`, `title`, `brand`, `healthReward`, `starReward`, `diamondReward`, `occurrenceRate`, `topicId`) VALUES
(1, '09:59:46 13/04/2023', '15:27:27 18/04/2023', NULL, 16, 'Sức khỏe', '', 3, 0, 0, 25, 1),
(3, '10:13:28 13/04/2023', '15:27:15 18/04/2023', NULL, 24, 'Sao', '', 0, 3, 0, 30, 1),
(5, '14:09:42 13/04/2023', '15:27:09 18/04/2023', NULL, 25, 'Kim cương', '', 0, 0, 3, 10, 1),
(13, '13:55:03 18/04/2023', NULL, '10:35:12 25/11/2024', 73, 'Son YSL Tatouage Couture Matte Stain 08 – Đỏ rượu', 'YSL', 0, 0, 0, 100, 3),
(14, '13:55:44 18/04/2023', NULL, '10:35:12 25/11/2024', 74, 'Son Dior Addict Lip Glow Matte màu Raspberry 102 – Hồng dâu', 'Dior', 0, 0, 0, 100, 3),
(15, '13:56:27 18/04/2023', NULL, '10:35:12 25/11/2024', 75, 'Son Dior Rouge Dior Satin 339 Grège New – Màu Cam Đất', 'Dior', 0, 0, 0, 100, 3),
(16, '13:56:56 18/04/2023', NULL, '10:35:12 25/11/2024', 76, 'Son Kem MAC Lisa Swoon For Blooms (Phiên Bản Giới Hạn) – Màu Đỏ Hồng', 'MAC', 0, 0, 0, 100, 3),
(17, '13:57:26 18/04/2023', NULL, '10:35:12 25/11/2024', 77, 'Son Tom Ford Lip Color Satin Matte 28 Shanghai Lily –  Đỏ Hồng tươi', 'Tom Ford', 0, 0, 0, 100, 3),
(18, '13:58:50 18/04/2023', NULL, '10:35:12 25/11/2024', 78, 'Son Lì Gucci Rouge À Lèvres Voile Mat 217 Valeria Rose – Màu Hồng Cam Đất', 'Gucci', 0, 0, 0, 100, 3),
(19, '13:59:24 18/04/2023', NULL, '10:35:12 25/11/2024', 79, 'Son Gucci Rouge De Beauté Brillant 516 Margaret Ruby – Màu Đỏ Tươi Ánh Cam', 'Gucci', 0, 0, 0, 100, 3),
(20, '13:59:51 18/04/2023', NULL, '10:35:12 25/11/2024', 80, 'Son Ysl Slim 08 – Hồng Cánh Sen', 'YSL', 0, 0, 0, 100, 3),
(21, '14:00:40 18/04/2023', NULL, '10:35:12 25/11/2024', 82, 'Son Charlotte Tilbury Matte Revolution màu Love liberty – Đỏ tím', 'Charlotte Tilbury Matte Revolution', 0, 0, 0, 100, 3),
(22, '15:14:27 18/04/2023', NULL, '10:35:12 25/11/2024', 83, 'Son 3CE Red Recipe Lip Color 215 – Đỏ Trầm', '3CE', 0, 0, 0, 100, 3),
(23, '15:15:02 18/04/2023', NULL, '10:35:12 25/11/2024', 84, 'Son Hermès Ebloui Satin Limited Edition Màu 17 Beige – Cam nâu nude', 'Hermès', 0, 0, 0, 100, 3),
(24, '15:15:30 18/04/2023', NULL, '10:35:12 25/11/2024', 85, 'YSL Rouge volupte Shine Collector I LOVE YOU Light Me Red 119 (Bản giới hạn) – Đỏ Cherry', 'YSL', 0, 0, 0, 100, 3),
(25, '15:16:57 18/04/2023', '15:17:49 18/04/2023', NULL, 86, 'Giày Jordan 1 Low (GS) (Pale Raspberry)', 'Jordan', 0, 0, 0, 100, 4),
(26, '15:17:42 18/04/2023', NULL, NULL, 87, 'Giày adidas Superstar (White)', 'Adidas', 0, 0, 0, 100, 4),
(27, '15:18:51 18/04/2023', NULL, NULL, 88, 'Giày Nike AIR MAX 90 G NRG (Smoke Purple)', 'Nike', 0, 0, 0, 100, 4),
(28, '15:19:42 18/04/2023', NULL, NULL, 89, 'Giày Converse Run Star Hike Low (Black Gum)', 'Converse', 0, 0, 0, 100, 4),
(29, '15:21:20 18/04/2023', NULL, NULL, 90, 'Giày Nike Air Max Scorpion FK (Heather White)', 'Nike', 0, 0, 0, 100, 4),
(30, '15:22:35 18/04/2023', NULL, NULL, 91, 'Giày ‎Gucci Lovelight Screener (Pale Pink)', 'Gucci', 0, 0, 0, 100, 4),
(31, '15:23:09 18/04/2023', NULL, NULL, 93, 'Giày FILA Oakment TR (Green)', 'Fila', 0, 0, 0, 100, 4),
(32, '15:23:42 18/04/2023', NULL, NULL, 94, 'Giày New Balance 530 Retro (Running Navy)', 'New Balance', 0, 0, 0, 100, 4),
(33, '15:24:03 18/04/2023', NULL, NULL, 95, 'Giày MLB BigBall Chunky Monotive Boston Red Sox Brown', 'MLB', 0, 0, 0, 100, 4),
(34, '15:24:29 18/04/2023', NULL, NULL, 96, 'Giày Puma Hedra (Dark Dreams)', 'Puma', 0, 0, 0, 100, 4),
(35, '15:24:59 18/04/2023', NULL, NULL, 97, 'Giày Vans OG Old Skool LX Aztec/Black', 'Vans', 0, 0, 0, 100, 4),
(36, '15:25:49 18/04/2023', NULL, NULL, 98, 'Giày Nike PEGASUS 40 (Black)', 'Nike', 0, 0, 0, 100, 4),
(37, '10:39:25 25/11/2024', NULL, NULL, 112, 'Giày Adidas AdiFOM Superstar ‘Core White’ HQ8750', 'Adidas', 0, 0, 0, 100, 4),
(38, '10:39:46 25/11/2024', NULL, NULL, 113, 'Giày Adidas BAPE x Superstar 80s ‘ABC Camo’ GZ8981', 'Adidas', 0, 0, 0, 100, 4),
(39, '10:40:46 25/11/2024', NULL, NULL, 114, 'Giày Adidas Campus 00s ‘Black Cloud White’ HQ8708', 'Adidas', 0, 0, 0, 100, 4),
(40, '10:41:06 25/11/2024', NULL, NULL, 115, 'Giày Adidas Samba OG ‘White Black Gum’ B75806', 'Adidas', 0, 0, 0, 100, 4),
(41, '10:41:41 25/11/2024', NULL, NULL, 116, 'Giày New Balance 530 Retro ‘Running Navy’ MR530SG', 'New Balance', 0, 0, 0, 100, 4),
(42, '10:42:02 25/11/2024', NULL, NULL, 117, 'Giày Nike Air Force 1 07 Triple White CW2288-111', 'Nike Air Force', 0, 0, 0, 100, 4),
(43, '10:42:17 25/11/2024', NULL, NULL, 118, 'Giày Nike Air Force 1 Low Supreme “White” CU9225-100', 'Nike Air Force', 0, 0, 0, 100, 4),
(44, '10:42:34 25/11/2024', NULL, NULL, 119, 'Giày Nike Air Jordan 1 Low ‘Aluminum’ DC0774-141', 'Nike Air Jordan', 0, 0, 0, 100, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gameconvention`
--

CREATE TABLE `gameconvention` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gameconvention`
--

INSERT INTO `gameconvention` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`, `value`) VALUES
(1, '16:05:43 20/04/2023', '10:43:36 25/11/2024', NULL, 'Cấp độ yêu cầu để mở khóa chế độ chơi tùy chọn', '1'),
(2, '16:06:51 20/04/2023', '10:16:18 21/04/2023', NULL, 'Công thức tính điểm kinh nghiệm sau mỗi ván chơi', 'Math.ceil(Tổng số thẻ bài / Thời gian hoàn thành x 100)'),
(3, '10:12:49 21/04/2023', NULL, NULL, 'Số thẻ bài cấp độ dễ', '12'),
(4, '10:12:58 21/04/2023', NULL, NULL, 'Số thẻ bài cấp độ trung bình', '16'),
(5, '10:13:15 21/04/2023', NULL, NULL, 'Số thẻ bài cấp độ khó', '20');

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE `gift` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `starCost` int(11) DEFAULT 0,
  `diamondCost` int(11) DEFAULT 0,
  `allowToReceiveOnline` tinyint(1) DEFAULT 0,
  `isSpecial` tinyint(1) NOT NULL DEFAULT 0,
  `isShow` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gift`
--

INSERT INTO `gift` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `imageId`, `name`, `brand`, `description`, `starCost`, `diamondCost`, `allowToReceiveOnline`, `isSpecial`, `isShow`) VALUES
(11, '09:39:43 20/04/2023', '09:39:52 20/04/2023', '10:56:33 25/11/2024', 99, 'Bộ Giftset Lancome 4 Chai - The Best Of Lancome Fragrances', NULL, 'Nếu Ai yêu thích các dòng nước hoa của Lancome thì chắc chắn sẽ thích set 4 mùi hương kinh điển nằm top bán chạy nhất và được nhiều người say mê. Còn ai chưa thử qua các dòng Lancome thì set nước hoa Lancome này sẽ giúp ta trải nghiệm đủ các mùi hương kinh điển để dễ dàng chọn ra mùi hương “tri kỉ”. Ngoài ra bộ sản phẩm rất phù hợp là món quà trong dịp sinh nhật, hay hẹn hò hay đi chơi đều được.', 1399, 0, 0, 1, 1),
(12, '09:41:18 20/04/2023', NULL, '10:56:36 25/11/2024', 100, 'Bộ Qùa Tặng 8/3 Victoria’s Secret Very Sexy & Lotion', '', 'Bộ quà tặng Victoria’s Secret Very Sexy 2023 là sự kết hợp hoàn hảo giữa kem dưỡng da và nước hoa, giúp giữ được hương thơm quyến rũ suốt cả ngày. Chỉ cần thoa một lớp kem dưỡng sau khi tắm làn da của bạn sẽ trở nên mềm mại, mịn màng. Thích hợp tặng cho những người yêu thương hoặc tặng vào những dịp lễ, tết và sinh nhật.', 649, 0, 0, 1, 1),
(13, '09:42:46 20/04/2023', NULL, '10:56:38 25/11/2024', 101, 'Bộ Quà Tặng Nước Hoa Carolina Herrera Very Good Girl EDP (80ML + 100ML+7ML)', '', 'Carolina Herrera Very Good Girl mang đến sự bùng nổ từ vẻ ngoài với hình dáng chiếc giày cao gót đỏ rực, toát lên khí chất kiêu hãnh, tự tin của những cô nàng thành đạt, quyến rũ, với hương thơm nồng nàn từ hoa hồng, vani, Very Good Girl hứa hẹn sẽ là phiên bản được săn lùng nhất trong năm nay.', 0, 599, 0, 1, 1),
(14, '09:44:01 20/04/2023', NULL, '10:56:41 25/11/2024', 102, 'Bộ Quà Tặng Nước Hoa Giorgio Armani Sì Passione EDP ( 100ML + 15ML + 75ML)', '', 'Nước hoa Giorgio Armani Sì Passione EDP phiên bản đỏ rực rỡ, không chỉ mê hoặc mọi cô nàng bởi thiết kế sang trọng đầy quyến rũ mà còn khiến nàng say đắm với những tầng hương độc đáo dành cho những cô nàng tự tin, tràn đầy đam mê và nhiệt huyết. Bộ sản phấm Nước Hoa Giorgio Armani sẽ làm xao xuyến mọi con tim ngay từ lần đầu gặp gỡ đầu tiên.Thích hợp tặng cho những người yêu thương hoặc tặng vào những dịp lễ, tết và sinh nhật.', 0, 999, 0, 1, 1),
(15, '09:45:52 20/04/2023', NULL, '10:56:44 25/11/2024', 103, 'Set Quà Tặng Cao Cấp Dior Rouge 3 Món ( Son + Sơn Móng + Gương)', '', 'Set Quà Tặng Cao Cấp Dior Rouge như Món quà mà Dior thân gửi đến nàng chứ một lời cảm ơn thật xinh đẹp. Set Dior Rouge Gồm 3 món quà cực kì đặt biệc : Son Dior 999 Satin, Sơn Móng Màu 999 Rouge Và 1 Tag Vali kèm gương phiên bản giới hạn, set gồm nhưng dòng sản phẩm  được hầu hết phái đẹp trên thế giới ưa chuộng. Tất cả được đặt trong trọng trong hộp quà sang trọng thích hợp làm quà tặng trong các dịp lễ đặc biệt cho các Nàng lắm luôn ạ.', 899, 0, 0, 1, 1),
(16, '09:47:25 20/04/2023', NULL, '10:56:46 25/11/2024', 104, 'Set Nước Hoa Kilian Moonlight In heaven - Món Quà Đến Từ Thiên Đường', '', 'Sau chuyến đi về vùng biển nhiệt đới Thái Lan, trót say lòng trước sự hấp dẫn của món tráng miệng độc đáo tại đây, Kilian Hennessy đã nhanh chóng gửi gắm nhà chế tác Calice Becker tạo nên một mùi hương không những mô phỏng món ngon này, mà còn vẽ ra chuyến hành trình đến với một thiên đường bí mật - nơi chỉ có tình yêu.', 0, 820, 0, 1, 1),
(17, '09:49:12 20/04/2023', '10:56:28 25/11/2024', NULL, 105, 'Giày Nike Air Force 1 Carabiner “Habanero Red” DH7579-100', '', '', 1200, 0, 1, 1, 1),
(18, '09:50:14 20/04/2023', '09:52:42 20/04/2023', NULL, 106, 'Giày Nike Air Force 1 Low VD Valentines Day 2022 DQ9320-100', '', '', 749, 0, 1, 0, 1),
(19, '09:52:11 20/04/2023', '09:52:36 20/04/2023', NULL, 107, 'Giày Adidas Drop Step Low GW9735 (White Tech Emerald)', '', '', 0, 200, 1, 0, 1),
(20, '10:58:28 25/11/2024', '11:01:53 25/11/2024', NULL, 120, 'Giày Nike Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006', 'Nike', 'Giày Nike Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006 là một phiên bản đặc biệt của dòng sản phẩm Air Jordan, được thiết kế để tôn vinh và tái hiện lại phiên bản kinh điển “Bred” (Black and Red) của dòng Air Jordan 4. Dưới đây là mô tả chi tiết về sản phẩm này:\nThiết kế:\nGiày có thiết kế cơ bản của Air Jordan 4 với phần upper chia thành các mảnh và một đế trung lập.\nMàu sắc chính của giày là đen (Black) kết hợp với đỏ (Red), đặc trưng của phiên bản “Bred”.\nChất liệu:\nUpper (phần trên): Sử dụng chất liệu da và vải cao cấp, đảm bảo độ bền và thoải mái.\nĐế: Sử dụng công nghệ đế Air-Sole của Nike, mang lại sự êm ái và đàn hồi khi sử dụng.\nCác chi tiết đặc biệt:\nLogo Jumpman: Logo của Jumpman được đặt ở vị trí tiêu biểu trên gót giày và ngón chân, tôn vinh dấu ấn của Michael Jordan – người sáng lập dòng giày này.\nThanh đế: Thanh đế có các đường chỉ đỏ nổi bật, tạo điểm nhấn cho thiết kế tổng thể của giày.\nPhong cách:\nPhong cách thể thao: Air Jordan 4 là một biểu tượng của văn hóa thể thao và sneaker, thích hợp cho cả hoạt động thể dục và sử dụng hàng ngày.\nPhối màu kinh điển: Màu sắc đen và đỏ kinh điển tạo nên phong cách mạnh mẽ và đầy cá tính.\nSự thoải mái và độ bền:\nNike luôn chú trọng đến sự thoải mái và độ bền của sản phẩm, do đó, giày Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006 được thiết kế để mang lại sự thoải mái tối đa cho người mang và đảm bảo độ bền theo thời gian.', 599, 0, 0, 1, 1),
(21, '10:58:41 25/11/2024', NULL, '11:01:44 25/11/2024', 121, 'Giày Nike Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006', 'Nike', 'Giày Nike Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006 là một phiên bản đặc biệt của dòng sản phẩm Air Jordan, được thiết kế để tôn vinh và tái hiện lại phiên bản kinh điển “Bred” (Black and Red) của dòng Air Jordan 4. Dưới đây là mô tả chi tiết về sản phẩm này:\nThiết kế:\nGiày có thiết kế cơ bản của Air Jordan 4 với phần upper chia thành các mảnh và một đế trung lập.\nMàu sắc chính của giày là đen (Black) kết hợp với đỏ (Red), đặc trưng của phiên bản “Bred”.\nChất liệu:\nUpper (phần trên): Sử dụng chất liệu da và vải cao cấp, đảm bảo độ bền và thoải mái.\nĐế: Sử dụng công nghệ đế Air-Sole của Nike, mang lại sự êm ái và đàn hồi khi sử dụng.\nCác chi tiết đặc biệt:\nLogo Jumpman: Logo của Jumpman được đặt ở vị trí tiêu biểu trên gót giày và ngón chân, tôn vinh dấu ấn của Michael Jordan – người sáng lập dòng giày này.\nThanh đế: Thanh đế có các đường chỉ đỏ nổi bật, tạo điểm nhấn cho thiết kế tổng thể của giày.\nPhong cách:\nPhong cách thể thao: Air Jordan 4 là một biểu tượng của văn hóa thể thao và sneaker, thích hợp cho cả hoạt động thể dục và sử dụng hàng ngày.\nPhối màu kinh điển: Màu sắc đen và đỏ kinh điển tạo nên phong cách mạnh mẽ và đầy cá tính.\nSự thoải mái và độ bền:\nNike luôn chú trọng đến sự thoải mái và độ bền của sản phẩm, do đó, giày Air Jordan 4 Retro ‘Bred Reimagined’ FV5029-006 được thiết kế để mang lại sự thoải mái tối đa cho người mang và đảm bảo độ bền theo thời gian.', 0, 0, 0, 1, 1),
(22, '11:00:37 25/11/2024', '11:01:59 25/11/2024', NULL, 122, 'Giày Nike Air Jordan 1 Zoom Air ‘Paris Saint-Germain’ DB3610-105', 'Nike', 'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.\nCó bao giờ bạn tự hỏi rằng tại sao Jordan 1 lại có sức hút như vậy? Tại sao Jordan 1 luôn sold out rất nhanh và có giá resell cao ngất ngưởng?\nNgày nay, Nike Jordan không chỉ có những đôi giày bóng rổ, nhắc đến giày sneakers cổ cao cá tính người ta vẫn sẽ nhớ ngay đến Nike Air Jordan 1.', 499, 0, 0, 1, 1),
(23, '11:00:38 25/11/2024', NULL, '11:01:42 25/11/2024', 122, 'Giày Nike Air Jordan 1 Zoom Air ‘Paris Saint-Germain’ DB3610-105', 'Nike', 'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.\nCó bao giờ bạn tự hỏi rằng tại sao Jordan 1 lại có sức hút như vậy? Tại sao Jordan 1 luôn sold out rất nhanh và có giá resell cao ngất ngưởng?\nNgày nay, Nike Jordan không chỉ có những đôi giày bóng rổ, nhắc đến giày sneakers cổ cao cá tính người ta vẫn sẽ nhớ ngay đến Nike Air Jordan 1.', 0, 0, 0, 1, 1),
(24, '11:00:38 25/11/2024', NULL, '11:01:39 25/11/2024', 122, 'Giày Nike Air Jordan 1 Zoom Air ‘Paris Saint-Germain’ DB3610-105', 'Nike', 'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.\nCó bao giờ bạn tự hỏi rằng tại sao Jordan 1 lại có sức hút như vậy? Tại sao Jordan 1 luôn sold out rất nhanh và có giá resell cao ngất ngưởng?\nNgày nay, Nike Jordan không chỉ có những đôi giày bóng rổ, nhắc đến giày sneakers cổ cao cá tính người ta vẫn sẽ nhớ ngay đến Nike Air Jordan 1.', 0, 0, 0, 1, 1),
(25, '11:00:38 25/11/2024', NULL, '11:01:40 25/11/2024', 122, 'Giày Nike Air Jordan 1 Zoom Air ‘Paris Saint-Germain’ DB3610-105', 'Nike', 'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.\nCó bao giờ bạn tự hỏi rằng tại sao Jordan 1 lại có sức hút như vậy? Tại sao Jordan 1 luôn sold out rất nhanh và có giá resell cao ngất ngưởng?\nNgày nay, Nike Jordan không chỉ có những đôi giày bóng rổ, nhắc đến giày sneakers cổ cao cá tính người ta vẫn sẽ nhớ ngay đến Nike Air Jordan 1.', 0, 0, 0, 1, 1),
(26, '11:00:38 25/11/2024', NULL, '11:01:37 25/11/2024', 122, 'Giày Nike Air Jordan 1 Zoom Air ‘Paris Saint-Germain’ DB3610-105', 'Nike', 'Nike Air Jordan 1 với lịch sử hơn 30 năm luôn được nhìn nhận như một trong những dòng sản phẩm thành công nhất của Nike. Nike Jordan 1 luôn bán hết một cách nhanh chóng ngay từ khi ra mắt đến nay, luôn là sản phẩm được các tín đồ thời trang chú ý hàng đầu. Air Jordan được đặt dựa theo ngôi sao bóng rổ lừng danh Michael Jordan – huyền thoại của NBA.\nCó bao giờ bạn tự hỏi rằng tại sao Jordan 1 lại có sức hút như vậy? Tại sao Jordan 1 luôn sold out rất nhanh và có giá resell cao ngất ngưởng?\nNgày nay, Nike Jordan không chỉ có những đôi giày bóng rổ, nhắc đến giày sneakers cổ cao cá tính người ta vẫn sẽ nhớ ngay đến Nike Air Jordan 1.', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `link`, `filename`, `size`) VALUES
(16, '09:57:35 13/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile64376f9fd3d24.png', 'imagefile64376f9fd3d24.png', 9660),
(18, '10:07:41 13/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643771fdc31f7.png', 'imagefile643771fdc31f7.png', 38968),
(24, '14:49:40 13/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6437b41407f43.png', 'imagefile6437b41407f43.png', 11548),
(25, '14:50:01 13/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6437b42942b39.png', 'imagefile6437b42942b39.png', 11492),
(71, '18:22:52 15/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643a890c2a733.png', 'imagefile643a890c2a733.png', 31831),
(86, '15:16:25 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e51d9244e8.png', 'imagefile643e51d9244e8.png', 95674),
(87, '15:17:40 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e5224103db.png', 'imagefile643e5224103db.png', 83307),
(88, '15:18:50 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e526a66faa.png', 'imagefile643e526a66faa.png', 108964),
(89, '15:19:41 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e529d6fb6d.png', 'imagefile643e529d6fb6d.png', 107047),
(90, '15:21:13 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e52f91b13a.png', 'imagefile643e52f91b13a.png', 120280),
(91, '15:22:33 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e5349dcc52.png', 'imagefile643e5349dcc52.png', 109567),
(93, '15:23:08 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e536c7fbb6.png', 'imagefile643e536c7fbb6.png', 126107),
(94, '15:23:41 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e538d4df62.png', 'imagefile643e538d4df62.png', 113413),
(95, '15:24:00 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e53a03d238.png', 'imagefile643e53a03d238.png', 154867),
(96, '15:24:28 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e53bcc9db9.png', 'imagefile643e53bcc9db9.png', 94424),
(97, '15:24:59 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e53db044a4.png', 'imagefile643e53db044a4.png', 95090),
(98, '15:25:48 18/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile643e540cc88c7.png', 'imagefile643e540cc88c7.png', 82380),
(105, '09:49:11 20/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6440a827f3577.png', 'imagefile6440a827f3577.png', 185220),
(106, '09:50:11 20/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6440a863637fe.png', 'imagefile6440a863637fe.png', 271643),
(107, '09:51:47 20/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6440a8c382b98.png', 'imagefile6440a8c382b98.png', 382981),
(108, '15:37:45 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile64463fd91ea00.jpg', 'imagefile64463fd91ea00.jpg', 272772),
(109, '15:38:30 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6446400631b46.jpg', 'imagefile6446400631b46.jpg', 157721),
(110, '15:42:09 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile644640e1c6451.jpg', 'imagefile644640e1c6451.jpg', 92058),
(111, '10:35:43 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f08f13576.png', 'imagefile6743f08f13576.png', 316488),
(112, '10:39:23 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f16ba0fbc.png', 'imagefile6743f16ba0fbc.png', 362931),
(113, '10:39:41 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f17d21fcd.png', 'imagefile6743f17d21fcd.png', 1212516),
(114, '10:40:45 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f1bda020f.png', 'imagefile6743f1bda020f.png', 310611),
(115, '10:41:06 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f1d21bc32.png', 'imagefile6743f1d21bc32.png', 101605),
(116, '10:41:41 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f1f523676.png', 'imagefile6743f1f523676.png', 695780),
(117, '10:42:01 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f2095da9f.png', 'imagefile6743f2095da9f.png', 400801),
(118, '10:42:16 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f218c7238.png', 'imagefile6743f218c7238.png', 1013790),
(119, '10:42:33 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f229e2147.png', 'imagefile6743f229e2147.png', 53467),
(120, '10:58:27 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f5e337e57.png', 'imagefile6743f5e337e57.png', 627199),
(122, '11:00:36 25/11/2024', NULL, NULL, 'http://localhost/projects/sakura/upload/images/imagefile6743f6641eb2e.png', 'imagefile6743f6641eb2e.png', 53487);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `rewardCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `phoneNumber`, `rewardCode`) VALUES
(7, '09:31:23 24/04/2023', NULL, NULL, '0353292241', 'HDAL17TE78'),
(11, '11:36:20 23/04/2023', NULL, NULL, '0336010147', 'HDAOM848YS'),
(12, '11:45:22 24/04/2023', NULL, NULL, '0336010147', 'HDAOVLEQKO'),
(13, '21:34:28 25/04/2023', NULL, NULL, '0353292241', 'HDCBIUUOYY'),
(14, '09:47:05 26/04/2023', NULL, NULL, '0353292241', 'HDCWP69A2I');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `levelNumber` int(11) NOT NULL,
  `experienceRequired` int(11) NOT NULL,
  `healthReward` int(11) NOT NULL DEFAULT 0,
  `starReward` int(11) DEFAULT 0,
  `diamondReward` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `levelNumber`, `experienceRequired`, `healthReward`, `starReward`, `diamondReward`) VALUES
(17, '10:53:48 18/04/2023', NULL, NULL, 2, 120, 1, 1, 0),
(18, '10:58:19 18/04/2023', '11:00:06 18/04/2023', NULL, 3, 480, 1, 1, 0),
(19, '11:00:21 18/04/2023', NULL, NULL, 4, 960, 1, 1, 0),
(20, '11:00:49 18/04/2023', '11:03:26 18/04/2023', NULL, 5, 1560, 2, 1, 1),
(21, '11:01:05 18/04/2023', NULL, NULL, 6, 2280, 2, 1, 0),
(22, '11:01:28 18/04/2023', NULL, NULL, 7, 3120, 2, 2, 0),
(23, '11:02:06 18/04/2023', NULL, NULL, 8, 4080, 3, 2, 0),
(24, '11:02:42 18/04/2023', NULL, NULL, 9, 5160, 3, 3, 0),
(25, '11:03:13 18/04/2023', NULL, NULL, 10, 6360, 3, 3, 1),
(26, '14:10:50 23/04/2023', NULL, NULL, 11, 7680, 3, 3, 1),
(27, '14:11:10 23/04/2023', NULL, NULL, 12, 9120, 3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `limitednumbers`
--

CREATE TABLE `limitednumbers` (
  `id` int(11) NOT NULL,
  `playerId` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `loggedAt` varchar(255) DEFAULT NULL,
  `remainingQuestions` int(11) NOT NULL,
  `remainingAdvertisements` int(11) NOT NULL,
  `deletedAt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `limitednumbers`
--

INSERT INTO `limitednumbers` (`id`, `playerId`, `createdAt`, `updatedAt`, `loggedAt`, `remainingQuestions`, `remainingAdvertisements`, `deletedAt`) VALUES
(1, '32', '04:58:59 22/11/2024', '10:38:01 25/11/2024', '10:36:51 25/11/2024', 2, 3, NULL),
(2, '31', '05:06:21 22/11/2024', '05:07:01 22/11/2024', '05:06:21 22/11/2024', 2, 1, NULL),
(3, '24', '10:46:55 25/11/2024', NULL, '10:46:55 25/11/2024', 3, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `lockedAt` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `health` int(11) DEFAULT 3,
  `star` int(11) DEFAULT 0,
  `diamond` int(11) DEFAULT 0,
  `experience` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `lockedAt`, `phoneNumber`, `password`, `email`, `nickname`, `health`, `star`, `diamond`, `experience`, `level`) VALUES
(24, '10:39:35 18/04/2023', '11:02:27 25/11/2024', NULL, NULL, '0889025122', 'e10adc3949ba59abbe56e057f20f883e', 'thanhlongedu0304@gmail.com', 'AdminTest', 100, 26055, 49, 6865, 10),
(25, '10:50:26 18/04/2023', '17:31:23 24/04/2023', NULL, NULL, '0336010147', '4c79273eed3d095e55d1224f6524ae92', 'nguyenlong0304tester1@gmail.com', 'playertester01', 0, 3211, 0, 269, 2),
(26, '10:50:50 18/04/2023', '11:34:15 26/04/2023', NULL, NULL, '0336010149', '4c79273eed3d095e55d1224f6524ae92', 'nguyenlong0304tester2@gmail.com', 'playertester02', 2, 31, 8, 776, 3),
(31, '04:30:10 22/11/2024', '05:07:16 22/11/2024', NULL, NULL, '0889025120', 'e10adc3949ba59abbe56e057f20f883e', '2115209@dlu.edu.vn', 'player_TgthMQ', 9, 5, 1, 0, 1),
(32, '04:58:59 22/11/2024', '10:38:10 25/11/2024', NULL, NULL, '0889025121', 'e10adc3949ba59abbe56e057f20f883e', '2115287@dlu.edu.vn', 'player_qyJHoN', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `healthReward` int(11) DEFAULT 0,
  `starReward` int(11) DEFAULT 0,
  `diamondReward` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `content`, `healthReward`, `starReward`, `diamondReward`) VALUES
(1, '13:45:10 14/04/2023', '11:04:07 18/04/2023', NULL, 'Sau khi mở nắp thì son dạng thỏi có thể sử dụng an toàn trong khoảng thời gian bao lâu?', 1, 0, 0),
(2, '13:46:07 14/04/2023', '11:07:14 18/04/2023', NULL, 'Thời gian sử dụng của son dạng kem, dạng nước sau khi mở nắp là bao lâu?', 1, 0, 0),
(8, '20:50:53 14/04/2023', '11:04:32 18/04/2023', NULL, 'Đố bạn biết, thỏi son đắt nhất thế giới hiện tại đến từ thương hiệu nào?', 1, 0, 0),
(9, '11:06:15 18/04/2023', NULL, NULL, 'Thời gian sử dụng tốt nhất của son dạng thỏi sau khi mở nắp là bao lâu?', 1, 0, 0),
(10, '11:08:03 18/04/2023', NULL, NULL, 'Ước tính trong cuộc đời của mỗi người phụ nữ có thoa son nuốt trung bình khoảng bao nhiêu KILOGAM son môi?', 2, 0, 0),
(11, '11:09:10 18/04/2023', NULL, NULL, 'Hãng son nổi tiếng và được sử dụng nhiều nhất tính đến năm 2023?', 1, 0, 0),
(12, '11:09:44 18/04/2023', '11:09:48 18/04/2023', NULL, 'Có bao nhiêu loại son môi trên thế giới?', 3, 0, 0),
(13, '11:10:27 18/04/2023', NULL, NULL, 'Thế nào là Son thỏi/ Son sáp?', 2, 0, 0),
(14, '11:11:16 18/04/2023', NULL, NULL, 'Thế nào là Son kem?', 2, 0, 0),
(15, '11:11:52 18/04/2023', NULL, NULL, 'Thế nào là Son bóng?', 2, 0, 0),
(16, '11:12:46 18/04/2023', NULL, NULL, 'Thế nào là Son dưỡng môi?', 2, 0, 0),
(17, '11:13:33 18/04/2023', NULL, NULL, 'Thế nào là Son Tint/ Son nước?', 3, 0, 0),
(18, '11:14:32 18/04/2023', NULL, NULL, 'Một chiếc giày hoàn chỉnh cần có các thành phần nào sau đây?', 2, 0, 0),
(19, '11:15:21 18/04/2023', NULL, NULL, 'Thành phần chính cấu tạo nên một chiếc giày là?', 2, 0, 0),
(20, '11:15:58 18/04/2023', NULL, NULL, 'Cách sử dụng và bảo quản giày tốt nhất?', 2, 0, 0),
(21, '11:16:40 18/04/2023', NULL, NULL, 'Thương hiệu giày đắt giá nhất tính đến năm 2023?', 3, 1, 0),
(22, '11:17:13 18/04/2023', NULL, NULL, 'Thương hiệu giày của Việt Nam được yêu thích nhất tính đến 2023?', 1, 1, 1),
(23, '11:18:06 18/04/2023', NULL, NULL, 'Khi lựa chọn mua một đôi giày mọi người thường lưu ý và chú trọng đến điều gì?', 2, 1, 0),
(24, '11:19:30 18/04/2023', NULL, NULL, 'Loại giày được các bạn trẻ ưa chuộng nhất tính đến năm 2023 là?', 2, 1, 0),
(25, '11:20:08 18/04/2023', NULL, NULL, 'Giày Low-top là?', 1, 1, 0),
(26, '11:20:40 18/04/2023', NULL, NULL, 'Giày Slip-on là?', 1, 1, 0),
(27, '11:21:30 18/04/2023', NULL, NULL, 'Giày Mid-top là?', 1, 1, 0),
(28, '11:21:59 18/04/2023', NULL, NULL, 'Giày High-top là?', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `giftId` int(11) DEFAULT NULL,
  `playerId` int(11) DEFAULT NULL,
  `starCost` int(11) NOT NULL,
  `diamondCost` int(11) NOT NULL,
  `invoiceRewardCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `giftId`, `playerId`, `starCost`, `diamondCost`, `invoiceRewardCode`) VALUES
(39, '11:27:17 24/04/2023', NULL, NULL, 13, 24, 0, 599, 'HDAL17TE78'),
(40, '11:28:58 24/04/2023', NULL, NULL, 13, 24, 0, 599, 'HDAL17TE78'),
(50, '11:36:34 23/04/2023', NULL, NULL, 11, 25, 1399, 0, 'HDAOM848YS'),
(53, '11:45:32 24/04/2023', NULL, NULL, 11, 25, 1399, 0, 'HDAOVLEQKO'),
(54, '17:30:50 24/04/2023', NULL, NULL, 12, 25, 649, 0, 'HDAOVLEQKO'),
(56, '18:37:37 24/04/2023', NULL, NULL, 12, 25, 649, 0, 'HDAOVLEQKO'),
(57, '21:34:41 25/04/2023', NULL, NULL, 12, 24, 649, 0, 'HDCBIUUOYY'),
(58, '21:34:49 25/04/2023', NULL, NULL, 11, 24, 1399, 0, 'HDCBIUUOYY'),
(59, '09:47:13 26/04/2023', NULL, NULL, 11, 24, 1399, 0, 'HDCWP69A2I'),
(60, '09:47:16 26/04/2023', NULL, NULL, 11, 24, 1399, 0, 'HDCWP69A2I'),
(61, '09:47:21 26/04/2023', NULL, NULL, 17, 24, 1200, 0, 'HDCWP69A2I');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `imageId`, `name`) VALUES
(1, '10:07:42 13/04/2023', NULL, NULL, 18, 'Phần thưởng trong lượt chơi'),
(3, '10:52:40 11/04/2023', NULL, '10:35:12 25/11/2024', 1, 'Son môi'),
(4, '10:53:33 11/04/2023', '10:37:47 25/11/2024', NULL, 111, 'Giày Sneaker');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `deletedAt` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `link`, `filename`, `size`) VALUES
(16, '18:24:41 15/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/videos/videofile643a897992417.mp4', 'videofile643a897992417.mp4', 1542713),
(17, '15:43:20 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/videos/videofile6446412882992.mp4', 'videofile6446412882992.mp4', 1542713),
(18, '15:43:50 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/videos/videofile644641467f9f0.mp4', 'videofile644641467f9f0.mp4', 1542713),
(19, '15:44:37 24/04/2023', NULL, NULL, 'http://localhost/projects/sakura/upload/videos/videofile6446417502a16.mp4', 'videofile6446417502a16.mp4', 2361284);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisementTypeId` (`advertisementTypeId`);

--
-- Indexes for table `advertisementtype`
--
ALTER TABLE `advertisementtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionId` (`questionId`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicId` (`topicId`);

--
-- Indexes for table `gameconvention`
--
ALTER TABLE `gameconvention`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field` (`name`);

--
-- Indexes for table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `levelNumber` (`levelNumber`);

--
-- Indexes for table `limitednumbers`
--
ALTER TABLE `limitednumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phoneNumber`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giftId` (`giftId`),
  ADD KEY `playerId` (`playerId`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `advertisementtype`
--
ALTER TABLE `advertisementtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `gameconvention`
--
ALTER TABLE `gameconvention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `limitednumbers`
--
ALTER TABLE `limitednumbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`advertisementTypeId`) REFERENCES `advertisementtype` (`id`);

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`topicId`) REFERENCES `topic` (`id`);

--
-- Constraints for table `reward`
--
ALTER TABLE `reward`
  ADD CONSTRAINT `reward_ibfk_1` FOREIGN KEY (`giftId`) REFERENCES `gift` (`id`),
  ADD CONSTRAINT `reward_ibfk_2` FOREIGN KEY (`playerId`) REFERENCES `player` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
