-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2024 lúc 12:34 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanap_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `gender` varchar(10) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `fname`, `lname`, `birthday`, `address`, `email`, `phone`, `department`, `password`, `role`, `avatar`, `gender`, `salary`) VALUES
(1, 'staff', 'Two', '3/1/2002', 'Hà Nam', 'staff@1.com', '01700000000', 'Khoa CNTT', '123456', 2, 'avatar.png', 'Nam', 100),
(2, 'staff', 'Three', '3/1/2002', 'Hà Nam', 'staff@2.com', '0170000000', 'Khoa Nội', '123456', 2, 'avatar.png', 'Nam', 1000),
(3, 'staff', 'Four', '3/1/2002', 'Hà Nam', 'staff@3.com', '01700000000', 'Khoa Nội', '123456', 2, 'avatar.png', 'Nam', 10000),
(4, 'staff', 'Five', '3/1/2002', 'Hà Nam', 'staff@4.com', '01700000000', 'Khoa Nội', '123456', 2, 'avatar.png', 'Nam', 100),
(5, 'staff', 'Two', '3/1/2002', 'Hà Nam', 'staff@5.com', '01700000000', 'Khoa Ngoại', '123456', 2, 'avatar.png', 'Nam', 100),
(6, 'staff', 'Three', '3/1/2002', 'Hà Nam', 'staff@6.com', '0170000000', 'Khoa Ngoại', '123456', 2, 'avatar.png', 'Nam', 100),
(7, 'staff', 'Four', '3/1/2002', 'Hà Nam', 'staff@7.com', '01700000000', 'Khoa Ngoại', '123456', 2, 'avatar.png', 'Nam', 100),
(8, 'staff', 'Five', '3/1/2002', 'Hà Nam', 'staff@8.com', '01700000000', 'Khoa Ngoại', '123456', 2, 'avatar.png', 'Nam', 100),
(9, 'John', 'Sina', '1/1/2002', 'Hà Nội', 'john@sina.com', '01700000000', 'Khoa Nội', '123456', 1, 'avatar.png', 'Nam', 10000000),
(10, 'Brock', 'Lesnar', '3/1/2002', 'Hà Nam', 'brock@lesnar.com', '01700000000', 'Khoa Ngoại', '123456', 1, 'avatar.png', 'Nữ', 15000000),
(99, 'Admin', 'admin', '3/1/2002', 'Hà Nam', 'admin@admin.com', '01700000000', 'CNTT', '123456', 0, 'images.png', 'Nữ', 100);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
