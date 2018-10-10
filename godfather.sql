/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : godfather

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-10-10 10:21:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dailyincome
-- ----------------------------
DROP TABLE IF EXISTS `dailyincome`;
CREATE TABLE `dailyincome` (
  `id` int(255) NOT NULL,
  `date` date DEFAULT NULL,
  `income` double DEFAULT NULL,
  `spending` double DEFAULT NULL,
  `profits` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dailyincome
-- ----------------------------

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `id` int(255) NOT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `purPrice` int(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `repertory` int(255) DEFAULT NULL,
  `isHot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dish
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `joinTime` date DEFAULT NULL,
  `integral` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `ordergoods`;
CREATE TABLE `ordergoods` (
  `id` int(255) NOT NULL,
  `rid` int(255) DEFAULT NULL,
  `orderNumber` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordergoods
-- ----------------------------

-- ----------------------------
-- Table structure for repertory
-- ----------------------------
DROP TABLE IF EXISTS `repertory`;
CREATE TABLE `repertory` (
  `id` int(255) NOT NULL,
  `did` int(255) DEFAULT NULL,
  `inventory` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repertory
-- ----------------------------

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(255) NOT NULL,
  `position` varbinary(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salary` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for tableinfo
-- ----------------------------
DROP TABLE IF EXISTS `tableinfo`;
CREATE TABLE `tableinfo` (
  `id` int(255) NOT NULL,
  `tableNumber` int(255) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  `personAvail` int(10) DEFAULT NULL,
  `isUse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tableinfo
-- ----------------------------

-- ----------------------------
-- Table structure for userorder
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `id` int(255) NOT NULL,
  `time` date DEFAULT NULL,
  `dinTable` int(10) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `isPay` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userorder
-- ----------------------------
