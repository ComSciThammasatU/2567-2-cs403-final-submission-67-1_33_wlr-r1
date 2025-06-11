-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.0.35

--
-- Table structure for table `dorm_room`
--

DROP TABLE IF EXISTS `dorm_room`;

CREATE TABLE `dorm_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dormID` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;

CREATE TABLE `dormitory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inviteCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pathToPicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;

CREATE TABLE `package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipientName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientRoomNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientID` int NOT NULL,
  `dormID` int NOT NULL,
  `trackingNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pathToPicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerTime` datetime NOT NULL,
  `deliverBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliverTime` datetime DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_accept',
  `dormID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `user_dorm`
--

DROP TABLE IF EXISTS `user_dorm`;

CREATE TABLE `user_dorm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomID` int NOT NULL,
  `userID` int NOT NULL,
  `dormID` int NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

