-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql6.freemysqlhosting.net
-- Thời gian đã tạo: Th10 26, 2021 lúc 10:04 AM
-- Phiên bản máy phục vụ: 5.5.62-0ubuntu0.14.04.1
-- Phiên bản PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql6444323`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_username` varchar(500) NOT NULL DEFAULT '',
  `admin_password` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(5000) NOT NULL DEFAULT '',
  `item_price` double DEFAULT NULL,
  `item_image` varchar(5000) NOT NULL DEFAULT '',
  `item_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_image`, `item_date`) VALUES
(20, 'Marvel Legends Iron Man Electronic Helmet', 399, 'ironman.jpg', '2021-05-03'),
(21, 'V10 Hulk VISOR TINT DECAL', 399, 'hulk.jpg', '2021-05-03'),
(22, 'The Spiderman PVC Action Figure Collectible Model Toy', 3100, 'spiderman.jpg', '2021-05-03'),
(23, 'Black Panther 24cm AVENGER', 2500, 'baoden.jpg', '2021-05-03'),
(24, 'Thor 9cm AVENGER', 4450, 'thor.jpg', '2021-05-03'),
(25, 'Capital Marvel 24cm AVENGER', 3900, 'captialmavel.jpg', '2021-05-03'),
(26, 'Thor Hammer Mjolnir 1:1', 5019, 'thorhammer.jpg', '2021-05-03'),
(27, 'Medal Ultron', 150, '413642.png', '2021-05-03'),
(28, 'Hat Capital American v.AVENGER', 249, 'hatmarvel.jpg', '2021-05-03'),
(29, 'Balo AVENGER Limited', 599, 'balo.jpg', '2021-05-03'),
(30, 'Poster Avenger Endgame', 99, 'POSTER.jpg', '2021-05-03'),
(31, 'Ceramic Cup - Marvel 550ml', 95, 'cup.jpg', '2021-05-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_name` varchar(1000) NOT NULL DEFAULT '',
  `order_price` double NOT NULL DEFAULT '0',
  `order_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_total` double NOT NULL DEFAULT '0',
  `order_status` varchar(45) NOT NULL DEFAULT '',
  `order_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `user_id`, `order_name`, `order_price`, `order_quantity`, `order_total`, `order_status`, `order_date`) VALUES
(20, 4, 'Capital Marvel 24cm AVENGER', 100, 2, 200, 'Ordered_Finished', '2021-05-02'),
(23, 4, 'Capital Marvel 24cm AVENGER', 100, 3, 300, 'Ordered_Finished', '2016-11-14'),
(38, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered', '2021-05-03'),
(39, 6, 'Balo AVENGER Limited', 2500, 1, 2500, 'Ordered', '2021-05-03'),
(40, 6, 'Medal Ultron', 6000, 1, 6000, 'Ordered', '2021-05-03'),
(41, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered', '2021-05-04'),
(42, 6, 'Capital Marvel 24cm AVENGER', 150, 1, 150, 'Ordered', '2021-05-04'),
(43, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered', '2021-05-04'),
(44, 6, 'Capital Marvel 24cm AVENGER', 150, 1, 150, 'Ordered', '2021-05-04'),
(45, 6, 'Medal Ultron', 399, 1, 399, 'Pending', '2021-05-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_firstname` varchar(1000) NOT NULL,
  `user_lastname` varchar(1000) NOT NULL,
  `user_address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_address`) VALUES
(1, 'test1@gmail.com', 'test1', 'Hao', 'Tran', 'Can Tho'),
(3, 'test2@gmail.com', 'test2', 'Cao', 'Thang', 'Vinh Long'),
(4, 'test3@gmail.com', 'test3', 'Ha', 'Ho', 'Ca Mau'),
(6, 'zolmkoz@gmail.com', 'zolmkoz', 'Nguyen', 'Trung', 'Ha Noi'),
(7, 'tester@test.com', 'tester', 'Dev', 'Nguyen', 'Hacker Way');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_orderdetails_1` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_orderdetails_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
