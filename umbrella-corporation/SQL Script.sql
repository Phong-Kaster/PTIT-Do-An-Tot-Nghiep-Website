-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 04:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `tn_appointments`
--

CREATE TABLE `tn_appointments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `patient_birthday` varchar(10) DEFAULT NULL,
  `patient_reason` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(15) DEFAULT NULL,
  `numerical_order` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `appointment_time` varchar(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_appointments`
--

INSERT INTO `tn_appointments` (`id`, `booking_id`, `doctor_id`, `patient_id`, `patient_name`, `patient_birthday`, `patient_reason`, `patient_phone`, `numerical_order`, `position`, `appointment_time`, `date`, `status`, `create_at`, `update_at`) VALUES
(354, 0, 7, 1, 'Tiểu Long Nữ', '2022-05-01', 'abc', '0123456789', 1, 1, '', '2023-02-15', 'processing', '2023-02-15 20:19:03', '2023-02-15 20:19:03'),
(355, 0, 3, 2, 'Doãn Đại hiệp', '2022-12-05', 'abc', '0366253623', 2, 1, '', '2023-02-15', 'processing', '2023-02-15 20:19:11', '2023-02-15 20:19:11'),
(356, 0, 1, 3, 'Dương Quá', '1986-11-14', 'abc', '0979580835', 3, 1, '', '2023-02-15', 'processing', '2023-02-15 20:19:20', '2023-02-15 20:19:20'),
(357, 0, 7, 4, 'Kiều Phong', '2022-12-06', 'abc', '0794104124', 4, 2, '', '2023-02-15', 'processing', '2023-02-15 20:19:27', '2023-02-15 20:19:27'),
(358, 0, 3, 30, 'Diệu Tư Đình', '1983-06-13', 'bar liar', '0979835580', 5, 2, '', '2023-02-15', 'processing', '2023-02-15 20:19:48', '2023-02-15 20:19:48'),
(359, 0, 1, 31, 'Pepsi', '2023-02-14', 'abc', '09799999988', 6, 2, '', '2023-02-15', 'processing', '2023-02-15 20:20:20', '2023-02-15 20:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `tn_appointment_records`
--

CREATE TABLE `tn_appointment_records` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_before` varchar(255) DEFAULT NULL,
  `status_after` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tn_booking`
--

CREATE TABLE `tn_booking` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `booking_name` varchar(50) DEFAULT NULL,
  `booking_phone` varchar(15) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `appointment_date` varchar(10) DEFAULT NULL,
  `appointment_time` varchar(5) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_booking`
--

INSERT INTO `tn_booking` (`id`, `service_id`, `doctor_id`, `patient_id`, `booking_name`, `booking_phone`, `name`, `gender`, `birthday`, `address`, `reason`, `appointment_date`, `appointment_time`, `status`, `create_at`, `update_at`) VALUES
(88, 1, 3, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '09:00', 'verified', '2022-12-19 17:09:14', '2022-12-19 17:09:14'),
(89, 1, 0, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '09:00', 'verified', '2022-12-19 17:13:58', '2022-12-19 17:13:58'),
(90, 1, 7, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '09:00', 'verified', '2022-12-19 20:36:43', '2022-12-19 20:36:43'),
(91, 1, 8, 2, 'PhongKaster', '0366253623', 'PhongKaster', 1, '2022-12-05', 'Việt Nam', '', '2023-02-15', '09:00', 'verified', '2022-12-19 22:55:08', '2022-12-19 22:55:08'),
(92, 8, 0, 2, 'PhongKaster', '0366253623', 'PhongKaster', 1, '2022-12-05', 'Việt Nam', '', '2023-02-15', '09:00', 'cancelled', '2022-12-22 15:54:37', '2022-12-22 15:54:37'),
(93, 10, 0, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '09:00', 'verified', '2022-12-22 19:51:53', '2022-12-22 19:51:53'),
(94, 22, 0, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '09:00', 'verified', '2022-12-26 07:16:14', '2022-12-26 07:16:14'),
(95, 1, 1, 4, 'PhongKaster', '0794104124', 'PhongKaster', 1, '2022-12-06', 'Vietnam', '', '2023-02-15', '10:00', 'verified', '2022-12-26 09:34:59', '2022-12-26 09:34:59'),
(96, 21, 0, 2, 'PhongKaster', '0366253623', 'PhongKaster', 1, '2022-12-05', 'Việt Nam', '', '2023-02-15', '16:00', 'cancelled', '2022-12-31 15:54:11', '2022-12-31 15:54:58'),
(97, 24, 0, 2, 'PhongKaster', '0366253623', 'PhongKaster', 1, '2022-12-05', 'Việt Nam', '', '2023-02-15', '16:00', 'verified', '2022-12-31 15:55:18', '2022-12-31 15:55:18'),
(98, 1, 1, 2, 'PhongKaster', '0366253623', 'PhongKaster', 1, '2022-12-05', 'Việt Nam', '', '2023-02-15', '10:00', 'verified', '2023-01-24 09:24:59', '2023-01-24 09:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `tn_booking_photo`
--

CREATE TABLE `tn_booking_photo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_booking_photo`
--

INSERT INTO `tn_booking_photo` (`id`, `url`, `booking_id`) VALUES
(27, 'booking_91_1671494600.jpg', 91),
(28, 'booking_91_1671494606.jpg', 91),
(29, 'booking_94_1672013792.jpg', 94),
(30, 'booking_94_1672013800.jpg', 94),
(31, 'booking_95_1672022110.jpeg', 95),
(32, 'booking_95_1672022119.jpg', 95),
(33, 'booking_96_1672476863.jpg', 96),
(34, 'booking_96_1672476889.jpg', 96),
(35, 'booking_97_1672476926.jpg', 97),
(36, 'booking_97_1672476936.jpg', 97),
(37, 'booking_98_1674527131.jpg', 98),
(38, 'booking_98_1674527140.jpg', 98);

-- --------------------------------------------------------

--
-- Table structure for table `tn_doctors`
--

CREATE TABLE `tn_doctors` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `recovery_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_doctors`
--

INSERT INTO `tn_doctors` (`id`, `email`, `phone`, `password`, `name`, `description`, `price`, `role`, `active`, `avatar`, `create_at`, `update_at`, `speciality_id`, `room_id`, `recovery_token`) VALUES
(1, 'phongkaster@gmail.com', '0123456789', '$2y$10$Iw2AHjFdIBAaE14ELax1BOtzMaOS7SZUVU3AhVOKzQ2bWcThaMq3m', 'Nguyễn Thị Thu Trang', '<h2>B&aacute;c sĩ Nguyễn Thị Thu Trang</h2>\n\n<ul>\n	<li>Nguy&ecirc;n Trưởng khoa l&acirc;m s&agrave;ng, Bệnh t&acirc;m thần Th&agrave;nh phố Hồ Ch&iacute; Minh</li>\n	<li>Tốt nghiệp T&acirc;m l&yacute; trị liệu, trường T&acirc;m l&yacute; Thực h&agrave;nh Paris (Psychology practique de Paris)</li>\n	<li>B&aacute;c sĩ nhận kh&aacute;m từ 16 tuổi trở l&ecirc;n</li>\n</ul>\n\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\n\n<ul>\n	<li>Tốt nghiệp B&aacute;c sĩ Đa khoa, Trường Đại học y dược th&agrave;nh phố Hồ Ch&iacute; Minh</li>\n	<li>Học chuy&ecirc;n khoa cấp I v&agrave; chuy&ecirc;n khoa cấp II Chuy&ecirc;n ng&agrave;nh T&acirc;m thần, Đại học Y khoa Huế</li>\n	<li>Tốt nghiệp T&acirc;m l&yacute; trị liệu, trường T&acirc;m l&yacute; thực H&agrave;nh Paris (Psychology practique de Paris)</li>\n</ul>\n\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\n\n<ul>\n	<li>Nguy&ecirc;n Trưởng ph&ograve;ng Kế hoạch Nghiệp vụ, Trưởng ph&ograve;ng kh&aacute;m T&acirc;m thần Quận 3, th&agrave;nh phố Hồ Ch&iacute; Minh</li>\n	<li>Nguy&ecirc;n Trưởng khoa l&acirc;m s&agrave;ng Bệnh t&acirc;m thần th&agrave;nh phố Hồ Ch&iacute; Minh</li>\n	<li>Gi&aacute;m định vi&ecirc;n tư ph&aacute;p chuy&ecirc;n ng&agrave;nh T&acirc;m thần gi&aacute;m định c&aacute;c trường hợp trọng &aacute;n, c&aacute;c trường hợp c&oacute; li&ecirc;n quan ph&aacute;p l&yacute; do cảnh s&aacute;t điều tra, t&ograve;a &aacute;n c&aacute;c cấp trưng cầu.</li>\n</ul>\n\n<div class=\"ddict_btn\" style=\"top: 19px; left: 374.365px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 159000, 'admin', 1, 'avatar_doctor_1_1669026326.jpg', '2022-11-02 21:12:20', '2022-12-14 09:10:32', 14, 1, '330485791271359'),
(2, 'phongkaster1@gmail.com', '0978246246', '$2y$10$nODDRAA4Y8OhAnrVoWtkuuTepjjGMAjsCUQWsX4zHU1JiGrguVdoK', 'Phạm Xuân Hậu', '<h2>B&aacute;c sĩ Chuy&ecirc;n khoa II Phạm Xu&acirc;n Hậu</h2>\n\n<ul>\n	<li>Hiện l&agrave; Trưởng Đơn vị Tim mạch,&nbsp;Bệnh viện Ung bướu Th&agrave;nh phố Hồ Ch&iacute; Minh</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa II Chuy&ecirc;n ng&agrave;nh Nội khoa,&nbsp;Ph&acirc;n viện ph&iacute;a Nam &ndash; Học viện Qu&acirc;n Y</li>\n</ul>\n\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\n\n<ul>\n	<li>Trưởng Đơn vị Tim mạch,&nbsp;Bệnh viện Ung bướu Th&agrave;nh phố Hồ Ch&iacute; Minh (11/2017 đến nay)</li>\n	<li>Gi&aacute;m đốc chuy&ecirc;n m&ocirc;n,&nbsp;Ph&ograve;ng kh&aacute;m đa khoa Xuy&ecirc;n Việt (2016 &ndash; 2017)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Ph&ograve;ng kh&aacute;m đa khoa Bắc S&agrave;i G&ograve;n (2014 &ndash; 2016)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Bệnh viện An Sinh (2010 &ndash; 2014)</li>\n	<li>B&aacute;c sĩ nội tim mạch,&nbsp;Ph&ograve;ng kh&aacute;m &amp; Bệnh viện Tim T&acirc;m Đức (2003 &ndash; 2009)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Khoa dịch vụ, Bệnh viện 175 (2000 - 2001)</li>\n</ul>\n\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\n\n<ul>\n	<li>B&aacute;c sĩ Đa khoa,&nbsp;Đại học Y Huế (1993 - 1999)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa I Chuy&ecirc;n ng&agrave;nh Nội khoa, Đại học Y dược Th&agrave;nh phố Hồ Ch&iacute; Minh (2001 - 2003)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n ng&agrave;nh nội tim mạch, Viện Tim Tp. Hồ Ch&iacute; Minh (2003 - 2006)</li>\n	<li>Chứng chỉ cắt đốt điện sinh l&yacute; tim,&nbsp;Bệnh viện Anzhen, Bắc Kinh, Trung quốc (2009)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa II Chuy&ecirc;n ng&agrave;nh Nội khoa,&nbsp;Ph&acirc;n viện ph&iacute;a Nam &ndash; Học viện Qu&acirc;n Y (2016 &ndash; 2018)</li>\n</ul>\n\n<h3>Chứng chỉ trong nước hoặc nước ngo&agrave;i</h3>\n\n<ul>\n	<li>Chứng chỉ si&ecirc;u &acirc;m tim v&agrave; bệnh l&yacute; tim mạch, Trung t&acirc;m&nbsp;Bổi dưỡng v&agrave; Đ&agrave;o tạo C&aacute;n bộ Y tế Tp. Hồ Ch&iacute; Minh (nay l&agrave; ĐH Y Khoa Phạm Ngọc Thạch) (08/2000 &ndash; 12/2000)</li>\n	<li>Chứng chỉ chuy&ecirc;n ng&agrave;nh Nội tim mạch,&nbsp;Hiệp hội Alain Carpentier v&agrave; Viện Tim Tp. Hồ Ch&iacute; Minh (09/2003 &ndash; 02/2005)</li>\n</ul>\n\n<h3>S&aacute;ch v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, b&aacute;o c&aacute;o khoa học</h3>\n\n<ul>\n	<li>Khảo s&aacute;t đặc điểm l&acirc;m s&agrave;ng, cận l&acirc;m s&agrave;ng tim mạch của bệnh nh&acirc;n ung thư v&uacute; điều trị bằng Doxorubicin (2016 - 2018)</li>\n	<li>B&aacute;o c&aacute;o tại Hội nghị Tim mạch To&agrave;n quốc: Điều trị thuy&ecirc;n tắc khoosi tĩnh mạch tr&ecirc;n bệnh nh&acirc;n ung thư (10/2018)</li>\n</ul>\n\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\n\n<p>B&aacute;c sĩ kh&aacute;m v&agrave; điều trị chuy&ecirc;n s&acirc;u về nội tim mạch: tăng huyết &aacute;p, suy tim, điện l&yacute; sinh tim, điều trị v&agrave; ph&ograve;ng ngừa biến chứng tim mạch ở bệnh nh&acirc;n điều trị ung thư.</p>\n\n<ul>\n	<li>Tăng huyết &aacute;p:&nbsp;Nhức đầu, hồi hộp, lo lắng, cao huyết &aacute;p</li>\n	<li>Suy tim:&nbsp;Mệt, kh&oacute; thở, ch&aacute;n ăn, ph&ugrave;</li>\n	<li>Bệnh động mạch v&agrave;nh:&nbsp;Đau ngực tr&aacute;i, biến đổi điện t&acirc;m đồ</li>\n	<li>Rối loạn nhịp tim:&nbsp;Hồi hộp, lo lắng, ch&oacute;ng mặt, ngất xỉu, ngoại t&acirc;m thu</li>\n	<li>Rung nhĩ:&nbsp;Hồi hộp, lo lắng, ch&oacute;ng mặt, ngất xỉu, ngoại t&acirc;m thu</li>\n	<li>Bệnh van tim (hẹp hở van tim):&nbsp;Mệt, kh&oacute; thở, suy tim</li>\n	<li>Suy tim ở bệnh ung thư:&nbsp;Đang v&agrave; sau khi truyền h&oacute;a chất</li>\n	<li>Thuy&ecirc;n tắc tĩnh mạch:&nbsp;Đau ch&acirc;n, ph&ugrave; ch&acirc;n</li>\n</ul>\n\n<p>Một số bệnh v&agrave; triệu chứng kh&aacute;c m&agrave; b&aacute;c sĩ điều trị</p>\n\n<ul>\n	<li>Cường gi&aacute;p:&nbsp;Run tay, sụt c&acirc;n</li>\n	<li>Suy gi&aacute;p:&nbsp;Mệt mỏi, tăng c&acirc;n</li>\n	<li>Vi&ecirc;m dạ d&agrave;y:&nbsp;Đau thượng vị</li>\n	<li>Điều trị HP dạ d&agrave;y:&nbsp;Đau dạ d&agrave;y c&oacute; nội soi HP(+)</li>\n	<li>Bệnh phổi tắc nghẽn mạn t&iacute;nh:&nbsp;Kh&oacute; thở, khạt đ&agrave;m k&eacute;o d&agrave;i</li>\n	<li>Suy thận mạn:&nbsp;Suy thận do biến chứng tiểu đường, huyết &aacute;p</li>\n</ul>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', 259000, 'supporter', 1, 'avatar_doctor_2_1669450281.jpg', '2022-11-02 21:12:20', '2022-12-19 11:26:22', 1, 4, ''),
(3, 'phongkaster2@gmail.com', '0766335563', '$2y$10$nODDRAA4Y8OhAnrVoWtkuuTepjjGMAjsCUQWsX4zHU1JiGrguVdoK', 'Maus', 'Bác sĩ Maus', 150000, 'member', 1, 'avatar_doctor_3_1668005935.jpg', '2022-11-02 21:12:20', '2022-12-22 15:59:44', 14, 2, ''),
(7, 'example@gmail.com', '0366253623', '$2y$10$Iw2AHjFdIBAaE14ELax1BOtzMaOS7SZUVU3AhVOKzQ2bWcThaMq3m', 'Nguyễn Thành Phong', '<p>Hiện l&agrave; Trưởng Đơn vị Tim mạch,&nbsp;Bệnh viện Ung bướu Th&agrave;nh phố Hồ Ch&iacute; Minh</p>\n\n<p>B&aacute;c sĩ Chuy&ecirc;n khoa II Chuy&ecirc;n ng&agrave;nh Nội khoa,&nbsp;Ph&acirc;n viện ph&iacute;a Nam &ndash; Học viện Qu&acirc;n Y</p>\n\n<h3>Qu&aacute; tr&igrave;nh c&ocirc;ng t&aacute;c</h3>\n\n<ul>\n	<li>Trưởng Đơn vị Tim mạch,&nbsp;Bệnh viện Ung bướu Th&agrave;nh phố Hồ Ch&iacute; Minh (11/2017 đến nay)</li>\n	<li>Gi&aacute;m đốc chuy&ecirc;n m&ocirc;n,&nbsp;Ph&ograve;ng kh&aacute;m đa khoa Xuy&ecirc;n Việt (2016 &ndash; 2017)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Ph&ograve;ng kh&aacute;m đa khoa Bắc S&agrave;i G&ograve;n (2014 &ndash; 2016)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Bệnh viện An Sinh (2010 &ndash; 2014)</li>\n	<li>B&aacute;c sĩ nội tim mạch,&nbsp;Ph&ograve;ng kh&aacute;m &amp; Bệnh viện Tim T&acirc;m Đức (2003 &ndash; 2009)</li>\n	<li>B&aacute;c sĩ nội khoa,&nbsp;Khoa dịch vụ, Bệnh viện 175 (2000 - 2001)</li>\n</ul>\n\n<h3>Qu&aacute; tr&igrave;nh đ&agrave;o tạo</h3>\n\n<ul>\n	<li>B&aacute;c sĩ Đa khoa,&nbsp;Đại học Y Huế (1993 - 1999)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa I Chuy&ecirc;n ng&agrave;nh Nội khoa, Đại học Y dược Th&agrave;nh phố Hồ Ch&iacute; Minh (2001 - 2003)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n ng&agrave;nh nội tim mạch, Viện Tim Tp. Hồ Ch&iacute; Minh (2003 - 2006)</li>\n	<li>Chứng chỉ cắt đốt điện sinh l&yacute; tim,&nbsp;Bệnh viện Anzhen, Bắc Kinh, Trung quốc (2009)</li>\n	<li>B&aacute;c sĩ Chuy&ecirc;n khoa II Chuy&ecirc;n ng&agrave;nh Nội khoa,&nbsp;Ph&acirc;n viện ph&iacute;a Nam &ndash; Học viện Qu&acirc;n Y (2016 &ndash; 2018)</li>\n</ul>\n\n<h3>Chứng chỉ trong nước hoặc nước ngo&agrave;i</h3>\n\n<ul>\n	<li>Chứng chỉ si&ecirc;u &acirc;m tim v&agrave; bệnh l&yacute; tim mạch, Trung t&acirc;m&nbsp;Bổi dưỡng v&agrave; Đ&agrave;o tạo C&aacute;n bộ Y tế Tp. Hồ Ch&iacute; Minh (nay l&agrave; ĐH Y Khoa Phạm Ngọc Thạch) (08/2000 &ndash; 12/2000)</li>\n	<li>Chứng chỉ chuy&ecirc;n ng&agrave;nh Nội tim mạch,&nbsp;Hiệp hội Alain Carpentier v&agrave; Viện Tim Tp. Hồ Ch&iacute; Minh (09/2003 &ndash; 02/2005)</li>\n</ul>\n\n<h3>S&aacute;ch v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, b&aacute;o c&aacute;o khoa học</h3>\n\n<ul>\n	<li>Khảo s&aacute;t đặc điểm l&acirc;m s&agrave;ng, cận l&acirc;m s&agrave;ng tim mạch của bệnh nh&acirc;n ung thư v&uacute; điều trị bằng Doxorubicin (2016 - 2018)</li>\n	<li>B&aacute;o c&aacute;o tại Hội nghị Tim mạch To&agrave;n quốc: Điều trị thuy&ecirc;n tắc khoosi tĩnh mạch tr&ecirc;n bệnh nh&acirc;n ung thư (10/2018)</li>\n</ul>\n\n<h2>Kh&aacute;m v&agrave; điều trị</h2>\n\n<p>B&aacute;c sĩ kh&aacute;m v&agrave; điều trị chuy&ecirc;n s&acirc;u về nội tim mạch: tăng huyết &aacute;p, suy tim, điện l&yacute; sinh tim, điều trị v&agrave; ph&ograve;ng ngừa biến chứng tim mạch ở bệnh nh&acirc;n điều trị ung thư.</p>\n\n<ul>\n	<li>Tăng huyết &aacute;p:&nbsp;Nhức đầu, hồi hộp, lo lắng, cao huyết &aacute;p</li>\n	<li>Suy tim:&nbsp;Mệt, kh&oacute; thở, ch&aacute;n ăn, ph&ugrave;</li>\n	<li>Bệnh động mạch v&agrave;nh:&nbsp;Đau ngực tr&aacute;i, biến đổi điện t&acirc;m đồ</li>\n	<li>Rối loạn nhịp tim:&nbsp;Hồi hộp, lo lắng, ch&oacute;ng mặt, ngất xỉu, ngoại t&acirc;m thu</li>\n	<li>Rung nhĩ:&nbsp;Hồi hộp, lo lắng, ch&oacute;ng mặt, ngất xỉu, ngoại t&acirc;m thu</li>\n	<li>Bệnh van tim (hẹp hở van tim):&nbsp;Mệt, kh&oacute; thở, suy tim</li>\n	<li>Suy tim ở bệnh ung thư:&nbsp;Đang v&agrave; sau khi truyền h&oacute;a chất</li>\n	<li>Thuy&ecirc;n tắc tĩnh mạch:&nbsp;Đau ch&acirc;n, ph&ugrave; ch&acirc;n</li>\n</ul>\n\n<p>Một số bệnh v&agrave; triệu chứng kh&aacute;c m&agrave; b&aacute;c sĩ điều trị</p>\n\n<ul>\n	<li>Cường gi&aacute;p:&nbsp;Run tay, sụt c&acirc;n</li>\n	<li>Suy gi&aacute;p:&nbsp;Mệt mỏi, tăng c&acirc;n</li>\n	<li>Vi&ecirc;m dạ d&agrave;y:&nbsp;Đau thượng vị</li>\n	<li>Điều trị HP dạ d&agrave;y:&nbsp;Đau dạ d&agrave;y c&oacute; nội soi HP(+)</li>\n	<li>Bệnh phổi tắc nghẽn mạn t&iacute;nh:&nbsp;Kh&oacute; thở, khạt đ&agrave;m k&eacute;o d&agrave;i</li>\n	<li>Suy thận mạn:&nbsp;Suy thận do biến chứng tiểu đường, huyết &aacute;p</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', 159000, 'admin', 1, 'avatar_doctor_7_1669450160.jpg', '2022-11-09 21:46:18', '2022-12-22 15:58:54', 14, 5, ''),
(8, 'example2@gmail.com', '0988454643', '$2y$10$Iw2AHjFdIBAaE14ELax1BOtzMaOS7SZUVU3AhVOKzQ2bWcThaMq3m', 'Nguyễn Duy Hưng', '<h2>Ph&oacute; Gi&aacute;o sư, Tiến sĩ, B&aacute;c sĩ Cao cấp Nguyễn Duy Hưng</h2>\n\n<ul>\n	<li>Ph&oacute; gi&aacute;o sư, Tiến sĩ, B&aacute;c sĩ cao cấp chuy&ecirc;n khoa Da liễu</li>\n	<li>B&aacute;c sĩ từng c&ocirc;ng t&aacute;c tại Bệnh viện Da liễu Trung ương</li>\n	<li>Nguy&ecirc;n Trưởng ph&ograve;ng chỉ đạo tuyến tại&nbsp;Bệnh viện Da liễu Trung ương</li>\n	<li>Đạt chứng chỉ Diploma về Da liễu tại Viện da liễu Băng Cốc - Th&aacute;i Lan</li>\n	<li>B&aacute;c sĩ thường xuy&ecirc;n tham gia c&aacute;c Hội thảo, Hội nghị Quốc tế về Da liễu</li>\n	<li>Hội vi&ecirc;n của Hội Da liễu Đ&ocirc;ng Nam &Aacute;, Ch&acirc;u &Aacute; v&agrave; Thế giới</li>\n	<li>Giảng vi&ecirc;n bộ m&ocirc;n Da liễu tại Đại Học Y H&agrave; Nội</li>\n	<li>Trưởng Bộ m&ocirc;n Da liễu, Trường Đại học Kinh doanh v&agrave; C&ocirc;ng nghệ</li>\n	<li>Tốt nghiệp Đại học Y H&agrave; Nội (1977)</li>\n	<li>Nguy&ecirc;n Tổng Thư k&yacute; Hiệp hội Da liễu Việt Nam</li>\n</ul>\n\n<h2>Ph&oacute; Gi&aacute;o sư kh&aacute;m v&agrave; điều trị</h2>\n\n<p>C&aacute;c bệnh l&yacute; về chuy&ecirc;n s&acirc;u về da liễu người lớn v&agrave; trẻ em</p>\n\n<ul>\n	<li>Trứng c&aacute; th&ocirc;ng thường thanh thiếu ni&ecirc;n, người lớn, trứng c&aacute; do thuốc, mỹ phẩm, do b&ocirc;i corticord, c&aacute;c thể bệnh trứng c&aacute; nặng, trứng c&aacute; đỏ (rosacea)</li>\n	<li>Điều trị da phục hồi da tổn hại do trứng c&aacute;, sẹo trứng c&aacute;</li>\n	<li>C&aacute;c bệnh l&yacute; da mặt: vi&ecirc;m da dị ứng, tổn hại da do sử dụng mỹ phẩm, do corticord, l&atilde;o h&oacute;a da</li>\n	<li>N&aacute;m da, t&agrave;n nhang, sạm da, c&aacute;c bệnh da tăng sắc tố sau vi&ecirc;m, sau trứng c&aacute;, do mỹ phẩm</li>\n	<li>Vi&ecirc;m da cơ địa trẻ em v&agrave; người lớn</li>\n	<li>Vi&ecirc;m da dị ứng, vi&ecirc;m da tiếp x&uacute;c, vi&ecirc;m da dầu</li>\n	<li>Tổ đỉa</li>\n	<li>M&agrave;y đay</li>\n	<li>Bạch biến</li>\n	<li>Vảy nến</li>\n	<li>Rụng t&oacute;c</li>\n	<li>C&aacute;c bệnh da do nhiễm khuẩn: Vi&ecirc;m nang l&ocirc;ng, chốc, nhọt, vi&ecirc;m da mủ</li>\n	<li>Zona, Thủy đậu, Herpes</li>\n	<li>Ghẻ</li>\n	<li>C&aacute;c b&ecirc;nh da do nấm: Nấm n&ocirc;ng da, nấm da đầu, nấm m&oacute;ng tay, m&oacute;ng ch&acirc;n, lang ben, nấm men ni&ecirc;m mạc</li>\n	<li>Vi&ecirc;m mao mạch dị ứng</li>\n	<li>c&aacute;c bệnh da: C&oacute; bọng nước, bệnh vẩy phấn hồng, &aacute; vẩy nến, liken phẳng, c&aacute;c bệnh da dị ứng thuốc</li>\n	<li>U l&agrave;nh t&iacute;nh của da: Đồi mồi, u cổ tuyến mồ h&ocirc;i, u mềm l&acirc;y, u mềm treo, u tuyến b&atilde;</li>\n	<li>Một số bệnh l&ocirc;ng - t&oacute;c - m&oacute;ng</li>\n	<li>Chăm s&oacute;c da (skincare)&nbsp; cho vi&ecirc;m da mặt, trứng c&aacute;, liệu tr&igrave;nh trị n&aacute;m, lăn kim, huyết tương gi&agrave;u tiểu cầu, trị sẹo trứng c&aacute;, laser, plasma trị u l&agrave;nh da, n&aacute;m, đồi mồi</li>\n	<li>Ti&ecirc;m t&aacute;i sinh nang t&oacute;c</li>\n</ul>\n\n<p><strong>V&agrave; c&aacute;c bệnh l&yacute; chuy&ecirc;n s&acirc;u kh&aacute;c về chuy&ecirc;n khoa Da liễu</strong></p>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', 159000, 'supporter', 1, 'avatar_doctor_8_1669025697.jpg', '2022-11-09 22:01:30', '2022-12-19 11:27:52', 9, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tn_doctor_and_service`
--

CREATE TABLE `tn_doctor_and_service` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_doctor_and_service`
--

INSERT INTO `tn_doctor_and_service` (`id`, `service_id`, `doctor_id`) VALUES
(3, 6, 1),
(4, 6, 3),
(5, 7, 1),
(6, 7, 3),
(10, 1, 1),
(12, 1, 7),
(13, 1, 3),
(14, 5, 7),
(15, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tn_drugs`
--

CREATE TABLE `tn_drugs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_drugs`
--

INSERT INTO `tn_drugs` (`id`, `name`) VALUES
(1, 'Vitamin B1'),
(2, 'Penicillin'),
(3, 'Vitamin B2'),
(4, 'Insulin'),
(5, 'Morphin'),
(6, 'Aspirin'),
(7, 'Chlorpromazin'),
(8, 'Ether'),
(9, 'Cephalexin'),
(10, 'Erythromycin'),
(11, 'Azithromycin'),
(12, 'Thuốc kháng sinh Clarithromycin'),
(13, 'Thuốc kháng sinh liều thấp Amoxicillin'),
(14, 'Paracetamol');

-- --------------------------------------------------------

--
-- Table structure for table `tn_notifications`
--

CREATE TABLE `tn_notifications` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `record_type` varchar(20) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_notifications`
--

INSERT INTO `tn_notifications` (`id`, `message`, `record_id`, `record_type`, `patient_id`, `is_read`, `create_at`, `update_at`) VALUES
(192, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 333, 'appointment', 1, 0, '2022-12-26 07:14:54', '2022-12-26 07:14:54'),
(193, 'Phong Mobifone ơi! Hãy chuẩn bị, sắp đến lượt khám của bạn với Bác sĩ Nguyễn Thị Thu Trang rồi', 336, 'appointment', 4, 1, '2022-12-26 07:15:27', '2022-12-26 08:02:19'),
(194, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 334, 'appointment', 2, 1, '2022-12-26 07:15:44', '2022-12-26 08:55:24'),
(195, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 335, 'appointment', 3, 0, '2022-12-26 07:15:47', '2022-12-26 07:15:47'),
(196, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 336, 'appointment', 4, 1, '2022-12-26 07:15:51', '2022-12-26 08:02:19'),
(197, 'Chúc mừng bạn! Lịch hẹn khám Xét nghiệm PCR COVID-19 lúc 09:00 ngày 2022-12-26 đã được tạo thành công!', 94, 'booking', 4, 1, '2022-12-26 07:16:14', '2022-12-26 08:02:19'),
(198, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 342, 'appointment', 4, 0, '2022-12-26 09:34:29', '2022-12-26 09:34:29'),
(199, 'Chúc mừng bạn! Lịch hẹn khám Khám sức khỏe tổng quát lúc 10:00 ngày 2022-12-26 đã được tạo thành công!', 95, 'booking', 4, 0, '2022-12-26 09:34:59', '2022-12-26 09:34:59'),
(200, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 339, 'appointment', 1, 0, '2022-12-26 09:36:50', '2022-12-26 09:36:50'),
(201, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 340, 'appointment', 2, 1, '2022-12-26 09:36:53', '2022-12-31 16:06:55'),
(202, 'Kiều Phong ơi! Hãy chuẩn bị, sắp đến lượt khám của bạn với Bác sĩ Nguyễn Thị Thu Trang rồi', 343, 'appointment', 4, 0, '2022-12-26 09:37:15', '2022-12-26 09:37:15'),
(203, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 341, 'appointment', 3, 0, '2022-12-26 09:37:31', '2022-12-26 09:37:31'),
(204, 'Chúc mừng bạn! Lượt khám của bạn với bác sĩ Nguyễn Thị Thu Trang đã hoàn thành. Bạn có thể xem lại kết luận của bác sĩ trong phần lịch sử khám bệnh', 343, 'appointment', 4, 0, '2022-12-26 09:39:43', '2022-12-26 09:39:43'),
(205, 'Chúc mừng bạn! Lịch hẹn khám Tầm soát STD lúc 16:00 ngày 2022-12-31 đã được tạo thành công!', 96, 'booking', 2, 1, '2022-12-31 15:54:11', '2022-12-31 16:06:55'),
(206, 'Lịch hẹn khám Tầm soát STD lúc 16:00 ngày 2022-12-31 đã được hủy bỏ thành công!', 96, 'booking', 2, 1, '2022-12-31 15:54:58', '2022-12-31 16:06:55'),
(207, 'Chúc mừng bạn! Lịch hẹn khám Xét nghiệm máu lúc 16:00 ngày 2022-12-31 đã được tạo thành công!', 97, 'booking', 2, 1, '2022-12-31 15:55:18', '2022-12-31 16:06:55'),
(208, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 344, 'appointment', 1, 0, '2022-12-31 16:09:14', '2022-12-31 16:09:14'),
(209, 'Doãn Đại hiệp ơi! Hãy chuẩn bị, sắp đến lượt khám của bạn với Bác sĩ Nguyễn Thị Thu Trang rồi', 347, 'appointment', 2, 1, '2022-12-31 16:09:39', '2022-12-31 16:25:57'),
(210, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 345, 'appointment', 3, 0, '2022-12-31 16:10:06', '2022-12-31 16:10:06'),
(211, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 346, 'appointment', 4, 0, '2022-12-31 16:10:09', '2022-12-31 16:10:09'),
(212, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 347, 'appointment', 2, 1, '2022-12-31 16:10:10', '2022-12-31 16:25:57'),
(213, 'Chúc mừng bạn! Lịch hẹn khám Khám sức khỏe tổng quát lúc 10:00 ngày 2023-01-24 đã được tạo thành công!', 98, 'booking', 2, 1, '2023-01-24 09:24:59', '2023-03-22 09:06:22'),
(214, 'Chúc mừng bạn! Lượt khám của bạn với bác sĩ Nguyễn Thị Thu Trang đã hoàn thành. Bạn có thể xem lại kết luận của bác sĩ trong phần lịch sử khám bệnh', 349, 'appointment', 1, 0, '2023-01-24 09:30:42', '2023-01-24 09:30:42'),
(215, 'Chúc mừng bạn! Lượt khám của bạn với bác sĩ Nguyễn Thị Thu Trang đã hoàn thành. Bạn có thể xem lại kết luận của bác sĩ trong phần lịch sử khám bệnh', 350, 'appointment', 3, 0, '2023-01-24 09:30:50', '2023-01-24 09:30:50'),
(216, 'Doãn Đại hiệp ơi! Hãy chuẩn bị, sắp đến lượt khám của bạn với Bác sĩ Nguyễn Thị Thu Trang rồi', 352, 'appointment', 2, 1, '2023-01-24 09:31:15', '2023-01-24 09:31:41'),
(217, 'Chúc mừng bạn! Lượt khám của bạn với bác sĩ Nguyễn Thị Thu Trang đã hoàn thành. Bạn có thể xem lại kết luận của bác sĩ trong phần lịch sử khám bệnh', 352, 'appointment', 2, 1, '2023-01-24 09:33:07', '2023-03-22 09:06:22'),
(218, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 339, 'appointment', 1, 0, '2023-02-15 20:16:42', '2023-02-15 20:16:42'),
(219, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 344, 'appointment', 1, 0, '2023-02-15 20:16:44', '2023-02-15 20:16:44'),
(220, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 340, 'appointment', 2, 1, '2023-02-15 20:16:46', '2023-03-22 09:06:22'),
(221, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 345, 'appointment', 3, 0, '2023-02-15 20:16:48', '2023-02-15 20:16:48'),
(222, 'Lượt khám của bạn đã bị hủy do bạn không có mặt đúng thời gian!', 349, 'appointment', 1, 0, '2023-02-15 20:16:50', '2023-02-15 20:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `tn_patients`
--

CREATE TABLE `tn_patients` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_patients`
--

INSERT INTO `tn_patients` (`id`, `email`, `phone`, `password`, `name`, `gender`, `birthday`, `address`, `avatar`, `create_at`, `update_at`) VALUES
(1, 'guest@gmail.com', '0123456789', '$2y$10$nODDRAA4Y8OhAnrVoWtkuuTepjjGMAjsCUQWsX4zHU1JiGrguVdoK', 'Tiểu Long Nữ', 0, '2022-05-01', 'Vietnam', '', '2022-11-04 16:37:27', '2022-12-22 17:04:31'),
(2, '', '0366253623', '$2y$10$VSJqA8hEY4O0ts0dnnyZNuyZLZpzzPnxbV2O2XmwQxvLa76nw6R0q', 'Doãn Đại hiệp', 0, '2022-12-05', 'Việt Nam', 'avatar_2_1670820370.jpg', '2022-12-02 02:29:15', '2022-12-22 16:47:29'),
(3, '', '0979580835', '$2y$10$5xhE0sk0GORMsQ29np0OTO8W/yKWXhSdBwOUZZTKMgAhdtotAsd7u', 'Dương Quá', 1, '1986-11-14', 'Việt Nam', '', '2022-11-28 04:26:25', '2022-12-22 17:04:50'),
(4, '', '0794104124', '$2y$10$r972EMSQCfqaTKge9dHXGeOIl7s.7wSbuIuE3x4KLSeAvjEFPtia.', 'Kiều Phong', 0, '2022-12-06', 'Vietnam', 'avatar_4_1671937540.jpeg', '2022-12-05 02:49:12', '2022-12-26 08:52:12'),
(30, 'phongkaster100@gmail.com', '0979835580', '$2y$10$ZBdBCnqwr2kAjMx5ugrer.t49gAhgSr7hVsypqIwcjdi9JjCM0mg2', 'Diệu Tư Đình', 0, '1983-06-13', 'Trung Quốc', 'default_avatar.jpg', '2022-12-08 15:36:42', '2022-12-22 16:06:19'),
(31, 'n18dccn147@student.ptithcm.edu.vn', '', '$2y$10$K8FQy27D/GbI3ZrH1J9/0u6xN3.Ce9PqW5ysNoXT4vvlHPCCWNnpe', 'n18dccn147@student.ptithcm.edu.vn', 1, '', '', 'default_avatar.jpg', '2022-12-18 08:10:24', '2022-12-18 08:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `tn_rooms`
--

CREATE TABLE `tn_rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_rooms`
--

INSERT INTO `tn_rooms` (`id`, `name`, `location`) VALUES
(1, 'Phòng 104', 'Khu A, tầng 1'),
(2, 'Phòng 102', 'Khu A, tầng 1'),
(4, 'Phòng 246', 'Khu C, Tầng 4'),
(5, 'Phòng 103', 'Khu A, tầng 1');

-- --------------------------------------------------------

--
-- Table structure for table `tn_services`
--

CREATE TABLE `tn_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_services`
--

INSERT INTO `tn_services` (`id`, `name`, `image`, `description`) VALUES
(1, 'Khám sức khỏe tổng quát', 'service_1_1671700943.jpg', '<p>Kh&aacute;m sức khỏe tổng qu&aacute;t nhằm đ&aacute;nh gi&aacute; t&igrave;nh trạng sức khỏe to&agrave;n diện của cơ thể, bao gồm: tim, phổi, ti&ecirc;u h&oacute;a v&agrave; thần kinh&hellip; Việc thăm kh&aacute;m n&agrave;y được thực hiện bởi b&aacute;c sĩ đa khoa. Dựa v&agrave;o kết quả, b&aacute;c sĩ sẽ chẩn đo&aacute;n, ph&aacute;t hiện sớm v&agrave; điều trị bệnh kịp thời. Kết quả n&agrave;y c&ograve;n gi&uacute;p bạn chủ động trong việc điều chỉnh lối sống, hạn chế c&aacute;c rủi ro bệnh tật trong tương lai. Do đ&oacute;, kh&aacute;m tổng qu&aacute;t cần được thực hiện với mọi giới v&agrave; mọi lứa tuổi. Thời gian thực hiện 6 th&aacute;ng/lần hoặc 1 năm/lần.</p>\n\n<div class=\"ddict_btn\" style=\"top: 13px; left: 1184.43px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>'),
(5, 'Phục hồi chấn thương', 'service_5_1670830629.jpg', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(6, 'Khám tim mạch', 'service_6_1671700859.jpg', '<h3>C&oacute; được phương ph&aacute;p điều trị chất lượng từ đội ngũ đ&ocirc;ng đảo nhất gồm c&aacute;c b&aacute;c sĩ chuy&ecirc;n khoa tim mạch h&agrave;ng đầu ch&acirc;u &Aacute;.</h3>'),
(7, 'Chủng ngừa', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(8, 'Khám sản', 'service_8_1671701275.jpg', '<p>Thực tế, kh&aacute;m sản khoa hoặc kh&aacute;m sức khỏe sinh sản<strong>&nbsp;</strong>c&oacute; thể &aacute;p dụng từ l&uacute;c một người bắt đầu c&oacute; khả năng sinh sản cho đến khi kết h&ocirc;n. Theo khuyến c&aacute;o, người trẻ n&ecirc;n đi kh&aacute;m tối thiểu 3 - 6 th&aacute;ng trước khi c&oacute; &yacute; định sinh em b&eacute;. Kiểm tra sức khỏe tiền h&ocirc;n nh&acirc;n gi&uacute;p cho c&aacute;c bạn trẻ chuẩn bị c&oacute; con hiểu r&otilde; về t&igrave;nh trạng của m&igrave;nh, để c&oacute; sự chuẩn bị tốt nhất. Tr&ecirc;n thực tế, hiện nay, nhiều người vẫn c&ograve;n t&acirc;m l&yacute; e ngại kh&aacute;m sức khỏe sinh sản, sức khỏe tiền h&ocirc;n nh&acirc;n do t&acirc;m l&yacute; e ngại nếu ph&aacute;t hiện bệnh sẽ ảnh hưởng đến hạnh ph&uacute;c lứa đ&ocirc;i, thậm ch&iacute;, c&oacute; những người c&ograve;n cho l&agrave; nghi ngờ nhau mới đi kh&aacute;m, điều n&agrave;y cũng một phần ảnh hưởng đến t&acirc;m l&yacute;, t&igrave;nh cảm của c&aacute;c cặp đ&ocirc;i.</p>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>'),
(9, 'Sức khỏe phụ nữ', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(10, 'Nha khoa', 'service_10_1671701604.jpg', '<p>L&agrave;m sạch răng chuy&ecirc;n nghiệp&nbsp;l&agrave; một trong những phương ph&aacute;p điều trị nha khoa cơ bản nhưng quan trọng nhất mọi thời đại. Quy tr&igrave;nh n&agrave;y sử dụng c&aacute;c c&ocirc;ng cụ chuy&ecirc;n dụng kh&aacute;c nhau nhằm l&agrave;m sạch s&acirc;u bề mặt răng v&agrave; nướu của bạn. Đ&aacute;nh răng v&agrave; d&ugrave;ng chỉ nha khoa gi&uacute;p l&agrave;m sạch mảng b&aacute;m tr&ecirc;n răng, nhưng bạn kh&ocirc;ng thể loại bỏ cao răng tại nh&agrave;. Lợi &iacute;ch của việc l&agrave;m sạch răng chuy&ecirc;n nghiệp đơn giản nhưng lại v&ocirc; c&ugrave;ng lớn, đ&acirc;y l&agrave; l&yacute; do h&agrave;ng đầu bạn n&ecirc;n đến nha sĩ thường xuy&ecirc;n.</p>'),
(11, 'Nhãn khoa', 'service_11_1671701702.jpg', '<p>Kh&aacute;m mắt, kiểm tra mắt định kỳ lu&ocirc;n l&agrave; việc l&agrave;m cần thiết trong &ldquo;quy tr&igrave;nh&rdquo; chăm s&oacute;c mắt thường ng&agrave;y, gi&uacute;p bạn bảo vệ thị lực cho ch&iacute;nh m&igrave;nh.</p>\n\n<p>Đ&ocirc;i mắt s&aacute;ng khỏe, thị lực ổn định sẽ lu&ocirc;n l&agrave; nền tảng tuyệt vời gi&uacute;p bạn cảm thấy tự tin trong c&ocirc;ng việc, h&ograve;a nhập với cộng đồng. Bởi vậy, kh&aacute;m mắt lu&ocirc;n l&agrave; một trong những điều hết sức quan trọng để đảm bảo sức khỏe cho đ&ocirc;i mắt cũng như ph&aacute;t hiện sớm những vấn đề về thị lực. Việc can thiệp v&agrave; điều trị những vấn đề về mắt một c&aacute;ch kịp thời, đ&uacute;ng c&aacute;ch l&agrave; &ldquo;ch&igrave;a kh&oacute;a&rdquo; gi&uacute;p bạn ổn định thị lực.</p>'),
(16, 'Tiêu hóa', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(17, 'Hô hấp', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(18, 'Thần kinh', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(19, 'Nội khớp', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(20, 'Da liễu', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(21, 'Tầm soát STD', '', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>'),
(22, 'Xét nghiệm PCR COVID-19', 'service_22_1671702122.jpg', '<p>X&eacute;t nghiệm Covid-19 l&agrave; phương ph&aacute;p gi&uacute;p ph&aacute;t hiện sự tồn tại của virus SARS-CoV-2 trong cơ thể. Th&ocirc;ng qua c&aacute;c x&eacute;t nghiệm n&agrave;y, c&aacute;c b&aacute;c sĩ, nh&acirc;n vi&ecirc;n y tế c&oacute; thể biết được bạn c&oacute; đang bị nhiễm hay c&oacute; tiền sử&nbsp; mắc Covid hay kh&ocirc;ng. Đối với x&eacute;t nghiệm RT-PCR, test nhanh kh&aacute;ng nguy&ecirc;n mẫu bệnh phẩm l&agrave; dịch tỵ hầu được lấy từ v&ugrave;ng họng, c&ograve;n nếu l&agrave;&nbsp;<a href=\"https://medlatec.vn/tin-tuc/giai-dap-nhung-thac-mac-ve-xet-nghiem-khang-the-igg-s159-n18050\">x&eacute;t nghiệm kh&aacute;ng thể</a>, mẫu bệnh phẩm l&agrave; m&aacute;u được lấy từ đầu ng&oacute;n tay.&nbsp;</p>'),
(23, 'Xét nghiệm ADN', 'service_23_1669086352.jpg', '<p>X&eacute;t nghiệm ADN&nbsp;l&agrave; x&eacute;t nghiệm d&ugrave;ng ADN c&oacute; trong c&aacute;c tế b&agrave;o của cơ thể để x&aacute;c định quan hệ huyết thống giữa hai c&aacute; thể&nbsp;v&igrave; ADN của một cơ thể thừa hưởng từ cả cha lẫn mẹ v&agrave; quy định đặc điểm ri&ecirc;ng biệt của từng c&aacute; thể. Đ&acirc;y ch&iacute;nh l&agrave; c&aacute;ch ch&iacute;nh x&aacute;c nhất để kiểm tra quan hệ huyết thống.</p>\n\n<div class=\"ddict_btn\" style=\"top: 9px; left: 1165.14px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>'),
(24, 'Xét nghiệm máu', 'service_24_1671701981.jpg', '<p>X&eacute;t nghiệm m&aacute;u l&agrave; c&aacute;c loại x&eacute;t nghiệm được thực hiện tr&ecirc;n c&aacute;c mẫu m&aacute;u được lấy v&agrave;o c&aacute;c ống chống đ&ocirc;ng kh&aacute;c nhau t&ugrave;y mục đ&iacute;ch x&eacute;t nghiệm, nhằm đo h&agrave;m lượng một số chất nhất định trong m&aacute;u hoặc đếm c&aacute;c loại tế b&agrave;o m&aacute;u kh&aacute;c nhau.&nbsp;<a href=\"https://www.vinmec.com/tin-tuc/thong-tin-suc-khoe/an-roi-co-xet-nghiem-mau-chinh-xac-nua-hay-khong/\"><strong>X&eacute;t nghiệm m&aacute;u</strong></a>&nbsp;c&oacute; thể được thực hiện để kiểm tra sức khỏe định kỳ, hỗ trợ chẩn đo&aacute;n bệnh hoặc t&igrave;m kiếm c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh, kiểm tra kh&aacute;ng thể hoặc s&agrave;ng lọc ung thư sớm nhờ c&aacute;c dấu hiệu của khối u (tumor marker) hoặc để đ&aacute;nh gi&aacute; hiệu quả của c&aacute;c phương ph&aacute;p điều trị.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tn_specialities`
--

CREATE TABLE `tn_specialities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tn_specialities`
--

INSERT INTO `tn_specialities` (`id`, `name`, `description`, `image`) VALUES
(1, 'Hỗ trợ viên', '<p><img alt=\"LOGO\" src=\"https://www.giantbomb.com/a/uploads/scale_medium/0/118/544727-umbrellacorporation3.png\" style=\"height:360px; width:480px\" /></p>\n\n<p>Logo tập đo&agrave;n Umbrella Corporaton</p>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', 'speciality_1_1668691813.jpg'),
(3, 'Nhi khoa', '<p>Phục hồi khả năng vận động nhờ đội ngũ b&aacute;c sĩ chuy&ecirc;n khoa chỉnh h&igrave;nh (xương v&agrave; cơ) gi&agrave;u kinh nghiệm của ch&uacute;ng t&ocirc;i.</p>', 'speciality_3_1668692066.jpg'),
(6, 'Châm cứu', '<p>Chuy&ecirc;n khoa răng - h&agrave;m - mặt</p>', 'speciality_6_1668691608.jpg'),
(7, 'Sức khỏe tâm lý', '<p>Chuy&ecirc;n khoa răng - h&agrave;m - mặt</p>', 'speciality_7_1668691588.jpg'),
(8, 'Nhãn khoa', 'Chuyên khoa răng - hàm - mặt', 'speciality_8_1668691572.jpg'),
(9, 'Tim mạch', '<p>Chuy&ecirc;n khoa răng - h&agrave;m - mặt</p>', 'speciality_9_1668691736.jpg'),
(10, 'Tiêu hóa', '<h1>Ti&ecirc;u ho&aacute;</h1>\n\n<h2><strong>B&aacute;c sĩ Chuy&ecirc;n khoa Ti&ecirc;u h&oacute;a</strong></h2>\n\n<p>Danh s&aacute;ch c&aacute;c b&aacute;c sĩ Ti&ecirc;u h&oacute;a uy t&iacute;n đầu ng&agrave;nh tại Việt Nam:</p>\n\n<ul>\n	<li>C&aacute;c chuy&ecirc;n gia c&oacute; qu&aacute; tr&igrave;nh đ&agrave;o tạo b&agrave;i bản, kinh nghiệm c&ocirc;ng t&aacute;c tại c&aacute;c bệnh viện lớn về chuy&ecirc;n ng&agrave;nh Ti&ecirc;u h&oacute;a tại H&agrave; Nội</li>\n	<li>C&aacute;c gi&aacute;o sư, ph&oacute; gi&aacute;o sư l&agrave; giảng vi&ecirc;n Đại học Y khoa H&agrave; Nội</li>\n	<li>C&aacute;c b&aacute;c sĩ đ&atilde;, đang c&ocirc;ng t&aacute;c tại c&aacute;c bệnh viện h&agrave;ng đầu như Bệnh viện Bạch Mai, Bệnh Viện Việt Đức, Bệnh Viện Nhi Trung ương, Bệnh viện Y học Cổ truyền Việt Nam...</li>\n	<li>Được nh&agrave; nước c&ocirc;ng nhận c&aacute;c danh hiệu Thầy thuốc nh&acirc;n d&acirc;n, thầy thuốc ưu t&uacute;, b&aacute;c sĩ cao cấp,...</li>\n</ul>\n\n<p><strong>Tư vấn, kh&aacute;m v&agrave; điều trị c&aacute;c Bệnh Ti&ecirc;u h&oacute;a</strong></p>\n\n<ul>\n	<li>Ăn uống k&eacute;m, kh&ocirc;ng ngon</li>\n	<li>Rối loạn ti&ecirc;u h&oacute;a, táo bón, trĩ</li>\n	<li>Nhi&ecirc;̃m vi khuẩn HP (Helicobacter pylori)</li>\n	<li>N&ocirc;̣i soi dạ dày, đại tr&agrave;ng, ti&ecirc;u hóa</li>\n	<li>Bu&ocirc;̀n n&ocirc;n, chướng bụng, đ&acirc;̀y bụng ợ chua, đ&acirc;̀y hơi</li>\n	<li>Co thắt thực quản,&nbsp;H&ocirc;̣i chứng ru&ocirc;̣t kích thích</li>\n	<li>Đau bụng,&nbsp;dạ dày, đại tr&agrave;ng, thượng vị</li>\n	<li>Vi&ecirc;m đại tràng, dạ dày,&nbsp;tá tràng</li>\n	<li>Ung thư dạ dày, U nang tuy&ecirc;́n tụy</li>\n	<li>Bệnh l&yacute; về gan, mật</li>\n	<li>...</li>\n</ul>\n\n<div class=\"ddict_btn\" style=\"top: -11px; left: 428.322px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\n\n<div class=\"ddict_btn\" style=\"top: -90px; left: 958.471px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 'speciality_10_1668691712.jpg'),
(14, 'Nội tổng hợp', '<h1>B&aacute;c sĩ nội tổng hợp giỏi</h1>\n\n<div class=\"ddict_btn\" style=\"top: 36px; left: 958.471px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 'speciality_14_1668691646.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tn_treatments`
--

CREATE TABLE `tn_treatments` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `repeat_days` varchar(255) NOT NULL,
  `repeat_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tn_appointments`
--
ALTER TABLE `tn_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `tn_appointment_records`
--
ALTER TABLE `tn_appointment_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `tn_booking`
--
ALTER TABLE `tn_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `tn_booking_photo`
--
ALTER TABLE `tn_booking_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `tn_doctors`
--
ALTER TABLE `tn_doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speciality_id` (`speciality_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `tn_doctor_and_service`
--
ALTER TABLE `tn_doctor_and_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `tn_drugs`
--
ALTER TABLE `tn_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tn_notifications`
--
ALTER TABLE `tn_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `tn_patients`
--
ALTER TABLE `tn_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tn_rooms`
--
ALTER TABLE `tn_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tn_services`
--
ALTER TABLE `tn_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tn_specialities`
--
ALTER TABLE `tn_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tn_treatments`
--
ALTER TABLE `tn_treatments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tn_appointments`
--
ALTER TABLE `tn_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `tn_appointment_records`
--
ALTER TABLE `tn_appointment_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tn_booking`
--
ALTER TABLE `tn_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tn_booking_photo`
--
ALTER TABLE `tn_booking_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tn_doctors`
--
ALTER TABLE `tn_doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tn_doctor_and_service`
--
ALTER TABLE `tn_doctor_and_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tn_drugs`
--
ALTER TABLE `tn_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tn_notifications`
--
ALTER TABLE `tn_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tn_patients`
--
ALTER TABLE `tn_patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tn_rooms`
--
ALTER TABLE `tn_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tn_services`
--
ALTER TABLE `tn_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tn_specialities`
--
ALTER TABLE `tn_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tn_treatments`
--
ALTER TABLE `tn_treatments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tn_appointments`
--
ALTER TABLE `tn_appointments`
  ADD CONSTRAINT `tn_appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `tn_doctors` (`id`),
  ADD CONSTRAINT `tn_appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `tn_patients` (`id`);

--
-- Constraints for table `tn_appointment_records`
--
ALTER TABLE `tn_appointment_records`
  ADD CONSTRAINT `tn_appointment_records_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `tn_appointments` (`id`);

--
-- Constraints for table `tn_booking`
--
ALTER TABLE `tn_booking`
  ADD CONSTRAINT `tn_booking_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `tn_patients` (`id`),
  ADD CONSTRAINT `tn_booking_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `tn_services` (`id`);

--
-- Constraints for table `tn_booking_photo`
--
ALTER TABLE `tn_booking_photo`
  ADD CONSTRAINT `tn_booking_photo_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `tn_booking` (`id`);

--
-- Constraints for table `tn_doctors`
--
ALTER TABLE `tn_doctors`
  ADD CONSTRAINT `tn_doctors_ibfk_1` FOREIGN KEY (`speciality_id`) REFERENCES `tn_specialities` (`id`),
  ADD CONSTRAINT `tn_doctors_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `tn_rooms` (`id`);

--
-- Constraints for table `tn_doctor_and_service`
--
ALTER TABLE `tn_doctor_and_service`
  ADD CONSTRAINT `tn_doctor_and_service_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `tn_doctors` (`id`),
  ADD CONSTRAINT `tn_doctor_and_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `tn_services` (`id`);

--
-- Constraints for table `tn_notifications`
--
ALTER TABLE `tn_notifications`
  ADD CONSTRAINT `tn_notifications_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `tn_patients` (`id`);

--
-- Constraints for table `tn_treatments`
--
ALTER TABLE `tn_treatments`
  ADD CONSTRAINT `tn_treatments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `tn_appointments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
