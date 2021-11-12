-- --------------------------------------------------------
-- Host:                         sql6.freemysqlhosting.net
-- Server version:               5.5.62-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sql6444323
DROP DATABASE IF EXISTS `sql6444323`;
CREATE DATABASE IF NOT EXISTS `sql6444323` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `sql6444323`;

-- Dumping structure for table sql6444323.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(500) NOT NULL DEFAULT '',
  `admin_password` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sql6444323.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table sql6444323.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(5000) NOT NULL DEFAULT '',
  `item_quantity` int(11) DEFAULT NULL,
  `item_store_branch` varchar(50) NOT NULL DEFAULT '',
  `item_price` double DEFAULT NULL,
  `item_image` varchar(5000) NOT NULL DEFAULT '',
  `item_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table sql6444323.items: ~17 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
REPLACE INTO `items` (`item_id`, `item_name`, `item_quantity`, `item_store_branch`, `item_price`, `item_image`, `item_date`) VALUES
	(1, 'Marvel Legends Iron Man Electronic Helmet Limited', 6, 'Ha Noi', 399, 'ironman.jpg', '2021-05-03'),
	(2, 'V10 Hulk VISOR TINT DECAL', 5, 'Can Tho', 399, 'hulk.jpg', '2021-05-03'),
	(3, 'The Spiderman PVC Action Figure Collectible Model Toy', 11, 'Ha Noi', 3100, 'spiderman.jpg', '2021-05-03'),
	(4, 'Black Panther 24cm AVENGER', 33, 'Ho Chi Minh', 2500, 'baoden.jpg', '2021-05-03'),
	(5, 'Thor 9cm AVENGER', 10, 'Vinh Long', 4450, 'thor.jpg', '2021-05-03'),
	(6, 'Capital Marvel 24cm AVENGER', 11, 'Ha Noi', 3900, 'captialmavel.jpg', '2021-05-03'),
	(7, 'Thor Hammer Mjolnir 1:1', 10, 'Can Tho', 5019, 'thorhammer.jpg', '2021-05-03'),
	(8, 'Medal Ultron', 1, 'Ho Chi Minh', 150, '413642.png', '2021-05-03'),
	(9, 'Hat Capital American v.AVENGER', 2, 'Vinh Long', 249, 'hatmarvel.jpg', '2021-05-03'),
	(10, 'Balo AVENGER Limited', 6, 'Ha Noi', 599, 'balo.jpg', '2021-05-03'),
	(11, 'Poster Avenger Endgame', 33, 'Ha Noi', 99, 'POSTER.jpg', '2021-05-03'),
	(12, 'Ceramic Cup - Marvel 550ml', 12, 'Can Tho', 95, 'cup.jpg', '2021-05-03'),
	(13, 'TEST', 44, 'Can Tho', 999, '6.png', '2021-11-09'),
	(34, 'Stickers Grwww 4x8', 66, 'Ho Chi Minh', 1, '13.jpg', '2021-11-10'),
	(35, 'Seven ST Wedge', 7, 'Vinh Long', 100, 'baoden.jpg', '2021-11-11'),
	(39, 'Spiderman 1x2', 9, 'Vinh Long', 99, 'spiderman.jpg', '2021-11-11'),
	(41, 'Spiderman 1x3', 12, 'Can Tho', 100, '521421.jpg', '2021-11-11');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table sql6444323.orderdetails
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_name` varchar(1000) NOT NULL DEFAULT '',
  `order_price` double NOT NULL DEFAULT '0',
  `order_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `order_total` double NOT NULL DEFAULT '0',
  `order_status` varchar(45) NOT NULL DEFAULT '',
  `order_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`order_id`),
  KEY `FK_orderdetails_1` (`user_id`),
  CONSTRAINT `FK_orderdetails_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- Dumping data for table sql6444323.orderdetails: ~33 rows (approximately)
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
REPLACE INTO `orderdetails` (`order_id`, `user_id`, `order_name`, `order_price`, `order_quantity`, `order_total`, `order_status`, `order_date`) VALUES
	(13, 7, 'TEST', 999, 1, 999, 'Ordered_Finished', '2021-11-09'),
	(20, 4, 'Capital Marvel 24cm AVENGER', 100, 2, 200, 'Ordered_Finished', '2021-05-02'),
	(23, 4, 'Capital Marvel 24cm AVENGER', 100, 3, 300, 'Ordered_Finished', '2016-11-14'),
	(38, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered_Finished', '2021-05-03'),
	(39, 6, 'Balo AVENGER Limited', 2500, 1, 2500, 'Ordered_Finished', '2021-05-03'),
	(40, 6, 'Medal Ultron', 6000, 1, 6000, 'Ordered_Finished', '2021-05-03'),
	(41, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered_Finished', '2021-05-04'),
	(42, 6, 'Capital Marvel 24cm AVENGER', 150, 1, 150, 'Ordered_Finished', '2021-05-04'),
	(43, 6, 'Thor 9cm AVENGER', 2900, 1, 2900, 'Ordered_Finished', '2021-05-04'),
	(44, 6, 'Capital Marvel 24cm AVENGER', 150, 1, 150, 'Ordered_Finished', '2021-05-04'),
	(45, 6, 'Medal Ultron', 399, 1, 399, 'Pending', '2021-05-04'),
	(46, 7, 'Ceramic Cup - Marvel 550ml', 95, 1, 95, 'Ordered_Finished', '2021-11-09'),
	(47, 7, 'TEST', 999, 2, 1998, 'Ordered_Finished', '2021-11-09'),
	(49, 7, 'The Spiderman PVC Action Figure Collectible Model Toy', 3100, 1, 3100, 'Ordered_Finished', '2021-11-09'),
	(50, 7, 'Marvel Legends Iron Man Electronic Helmet Limited', 399, 1, 399, 'Ordered_Finished', '2021-11-09'),
	(51, 7, 'Marvel Legends Iron Man Electronic Helmet Limited', 399, 1, 399, 'Ordered_Finished', '2021-11-09'),
	(52, 7, 'Black Panther 24cm AVENGER', 2500, 5, 12500, 'Ordered_Finished', '2021-11-10'),
	(53, 7, 'Marvel Legends Iron Man Electronic Helmet Limited', 399, 1, 399, 'Ordered_Finished', '2021-11-10'),
	(54, 7, 'Ceramic Cup - Marvel 550ml', 95, 1, 95, 'Ordered_Finished', '2021-11-10'),
	(55, 7, 'Thor Hammer Mjolnir 1:1', 5019, 2, 10038, 'Ordered_Finished', '2021-11-10'),
	(56, 7, 'Marvel Legends Iron Man Electronic Helmet Limited', 399, 2, 798, 'Ordered_Finished', '2021-11-10'),
	(57, 7, 'Thor Hammer Mjolnir 1:1', 5019, 1, 5019, 'Ordered_Finished', '2021-11-10'),
	(58, 7, 'Stickers Grwww 4x8', 1, 56, 56, 'Ordered_Finished', '2021-11-10'),
	(59, 7, 'Balo AVENGER Limited', 599, 2, 1198, 'Ordered_Finished', '2021-11-10'),
	(60, 8, 'Hat Capital American v.AVENGER', 249, 2, 498, 'Ordered', '2021-11-10'),
	(61, 8, 'Black Panther 24cm AVENGER', 2500, 1, 2500, 'Ordered', '2021-11-10'),
	(62, 8, 'Thor 9cm AVENGER', 4450, 1, 4450, 'Ordered', '2021-11-10'),
	(63, 8, 'Poster Avenger Endgame', 99, 5, 495, 'Ordered', '2021-11-10'),
	(64, 1, 'Thor Hammer Mjolnir 1:1', 5019, 2, 10038, 'Ordered_Finished', '2021-11-10'),
	(65, 1, 'Medal Ultron', 150, 2, 300, 'Ordered_Finished', '2021-11-10'),
	(66, 1, 'Thor 9cm AVENGER', 4450, 1, 4450, 'Ordered_Finished', '2021-11-10'),
	(67, 1, 'Marvel Legends Iron Man Electronic Helmet Limited', 399, 1, 399, 'Ordered_Finished', '2021-11-10'),
	(68, 7, 'Black Panther 24cm AVENGER', 2500, 1, 2500, 'Ordered', '2021-11-10');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;

-- Dumping structure for table sql6444323.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  `user_firstname` varchar(1000) NOT NULL,
  `user_lastname` varchar(1000) NOT NULL,
  `user_address` varchar(1000) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table sql6444323.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_address`) VALUES
	(1, 'test1@gmail.com', 'test1', 'Hao', 'Tran', 'Can Tho'),
	(3, 'test2@gmail.com', 'test2', 'Cao', 'Thang', 'Vinh Long'),
	(4, 'test3@gmail.com', 'test3', 'Ha', 'Ho', 'Ca Mau'),
	(6, 'zolmkoz@gmail.com', 'zolmkoz', 'Nguyen', 'Trung', 'Ha Noi'),
	(7, 'tester@test.com', 'tester', 'Dev', 'Nguyen', 'Hacker Way'),
	(8, 'quanghieu@gmail.com', '12345678', 'Quang', 'Hieu', 'Ha Noi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
