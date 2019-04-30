/*
Navicat MySQL Data Transfer

Source Server         : ROOT@127.0.0.1
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : tas

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-04-30 14:37:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` char(6) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin1', 'admin1');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `file_id` int(11) DEFAULT NULL,
  `homework_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('7', '15');
INSERT INTO `attachment` VALUES ('9', '17');
INSERT INTO `attachment` VALUES ('11', '16');

-- ----------------------------
-- Table structure for choice_question
-- ----------------------------
DROP TABLE IF EXISTS `choice_question`;
CREATE TABLE `choice_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `title` text,
  `choice_a` varchar(200) DEFAULT NULL,
  `choice_b` varchar(200) DEFAULT NULL,
  `choice_c` varchar(200) DEFAULT NULL,
  `choice_d` varchar(200) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choice_question
-- ----------------------------
INSERT INTO `choice_question` VALUES ('3', '2', '10', 'qrwqr', 'qwe', '123', '412', '123', 'b');
INSERT INTO `choice_question` VALUES ('4', '2', '20', '78jhbbh', 'hbhqwe', 'hgqw', 'gvxdj', 'gvgqwe', 'c');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `content` longtext,
  `date` datetime DEFAULT NULL,
  `status` int(255) DEFAULT '0',
  `ask` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '0000000000', '0', '3', '123123123', '2019-04-25 14:22:58', '1', '对于新版人民币的发行，央行将其归因为提升人民币整体防伪能力，保持第五套人民币系列化。');
INSERT INTO `comment` VALUES ('2', '3150103200', '1', '1', '微软研究院（Microsoft Research）在ACM CHI大会上发表了三篇关于计算系统中的人为因素（CHI）的论文，以解决这些需求，并使UX从业者能够为人工智能设计。从构思到用户感知和接受，如何更好地设计AI，雷锋网全文编译如下。', '2019-04-30 10:32:45', '1', '123123');
INSERT INTO `comment` VALUES ('3', '3150103200', '1', '1', '普雷斯蒂谈威少：不会因几个月的挣扎否认他十一年的贡献', '2019-04-30 02:16:50', '1', '对于新版人民币的发行，央行将其归因为提升人民币整体防伪能力，保持第五套人民币系列化。');
INSERT INTO `comment` VALUES ('4', '3150103200', '1', '1', '流通近20年的第五套人民币再次升级。4月29日，央行官网发布公告称，今年8月30日起发行2019年版第五套人民币50元、20元、10元、1元纸币和1元、5角、1角硬币，以上货币发行后，与同面额流通人民币等值流通。值得一提的是，因被选择进行相关新技术的应用，5元纸币暂时缺席。有分析人士认为，新版5元纸币可能将区块链等技术用作纸币防伪和流向定位跟踪，类似于数字货币的一种尝试。', '2019-04-30 02:17:06', '0', null);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `credit` decimal(2,1) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `semester` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  `like_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Ex100', '数据结构与算法分析', '2.5', '计算机科学与技术学院', '春学期', '周一3、4', '紫金港-东1-104', '', '0');
INSERT INTO `course` VALUES ('2', 'Ex110', '数据结构与算法分析', '2.5', '计算机科学与技术学院', '秋学期', '周一3、4', '紫金港-东1-204', '', '0');
INSERT INTO `course` VALUES ('3', 'Ex200', '软件需求工程', '2.0', '计算机科学与技术学院', '春学期', '周五3、4、5', '玉泉-教7-103', '', '0');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('2', 'wx_camera_1554437788121.mp4', '\\video\\1\\wx_camera_1554437788121.mp4', '2477618', '2019-04-29 11:46:34', '1', '300400');
INSERT INTO `file` VALUES ('3', 'wx_camera_1554440340208.mp4', '\\video\\1\\wx_camera_1554440340208.mp4', '2070010', '2019-04-29 11:47:08', '1', '300400');
INSERT INTO `file` VALUES ('4', 'wx_camera_1554450046322.jpg', '\\material\\1\\wx_camera_1554450046322.jpg', '282487', '2019-04-29 11:48:17', '1', '300400');
INSERT INTO `file` VALUES ('5', 'IMG_20190405_154857.jpg', '\\upload_homework\\1\\IMG_20190405_154857.jpg', '3265927', '2019-04-29 12:23:27', '1', '3150102100');
INSERT INTO `file` VALUES ('6', 'IMG_20190405_153444.jpg', '\\upload_homework\\1\\IMG_20190405_153444.jpg', '2598168', '2019-04-30 02:55:15', '1', '3150102100');
INSERT INTO `file` VALUES ('7', 'IMG_20190405_154255.jpg', 'IMG_20190405_154255.jpg', '3353496', '2019-04-30 03:24:39', '1', '300400');
INSERT INTO `file` VALUES ('9', '0e1f7e26-5a93-4eb4-89a4-970466edeb39.jpg', '0e1f7e26-5a93-4eb4-89a4-970466edeb39.jpg', '24354', '2019-04-30 03:36:11', '1', '300400');
INSERT INTO `file` VALUES ('11', '0b20a9ee-f668-40ac-8d0e-1edd32bf6741.jpg', '0b20a9ee-f668-40ac-8d0e-1edd32bf6741.jpg', '16907', '2019-04-30 04:06:24', '1', '300400');
INSERT INTO `file` VALUES ('13', '0d145eb5-4e88-4e33-b04d-e076768aab02.jpg', '0d145eb5-4e88-4e33-b04d-e076768aab02.jpg', '30617', '2019-04-30 04:30:22', '1', '300400');
INSERT INTO `file` VALUES ('15', '0e014462-8870-4dd7-ad47-75058b7576dc.jpg', '0e014462-8870-4dd7-ad47-75058b7576dc.jpg', '12496', '2019-04-30 04:40:14', '1', '300400');
INSERT INTO `file` VALUES ('18', '1def3d10-c90d-4060-ad22-82268af71be2.jpg', '1def3d10-c90d-4060-ad22-82268af71be2.jpg', '24354', '2019-04-30 05:12:17', '1', '300400');
INSERT INTO `file` VALUES ('19', '2a91aa47-8950-4ad1-a0eb-c24d9c32bfc5.jpg', '\\upload_homework\\1\\2a91aa47-8950-4ad1-a0eb-c24d9c32bfc5.jpg', '71336', '2019-04-30 05:12:59', '1', '3150103200');
INSERT INTO `file` VALUES ('22', '64d5e97f-8c4a-4b2d-9492-1cf88e142473.jpg', '\\upload_homework\\1\\64d5e97f-8c4a-4b2d-9492-1cf88e142473.jpg', '18623', '2019-04-30 05:25:28', '1', '3150103200');
INSERT INTO `file` VALUES ('24', '2a15b649-1c01-4d89-85db-9aa0695d91a6.jpg', '\\upload_homework\\1\\2a15b649-1c01-4d89-85db-9aa0695d91a6.jpg', '39119', '2019-04-30 05:54:10', '1', '3150103200');
INSERT INTO `file` VALUES ('25', '0fac68fd-bb74-4e20-bafd-f0ee3c38d3ce.jpg', '\\upload_homework\\1\\0fac68fd-bb74-4e20-bafd-f0ee3c38d3ce.jpg', '52487', '2019-04-30 06:09:27', '1', '3150103200');
INSERT INTO `file` VALUES ('26', '0d145eb5-4e88-4e33-b04d-e076768aab02.jpg', '\\upload_homework\\1\\0d145eb5-4e88-4e33-b04d-e076768aab02.jpg', '30617', '2019-04-30 06:09:41', '1', '3150103200');
INSERT INTO `file` VALUES ('27', '1def3d10-c90d-4060-ad22-82268af71be2.jpg', '\\upload_homework\\1\\1def3d10-c90d-4060-ad22-82268af71be2.jpg', '24354', '2019-04-30 06:11:35', '1', '3150103200');
INSERT INTO `file` VALUES ('28', '4c6c87d6-e0c7-4f2b-a33a-4fb50e8a759a.jpg', '\\upload_homework\\1\\4c6c87d6-e0c7-4f2b-a33a-4fb50e8a759a.jpg', '21167', '2019-04-30 06:11:44', '1', '3150103200');
INSERT INTO `file` VALUES ('29', '2a15b649-1c01-4d89-85db-9aa0695d91a6.jpg', '2a15b649-1c01-4d89-85db-9aa0695d91a6.jpg', '39119', '2019-04-30 06:12:31', '1', '300400');

-- ----------------------------
-- Table structure for fill_question
-- ----------------------------
DROP TABLE IF EXISTS `fill_question`;
CREATE TABLE `fill_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fill_question
-- ----------------------------
INSERT INTO `fill_question` VALUES ('1', '2', '30', '4123', '4343133');
INSERT INTO `fill_question` VALUES ('2', '2', '40', '12477', 'hgybyh');

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `ddl_date` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `attachment` varchar(10) DEFAULT NULL,
  `semester` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('1', '123change', '123change', '2017-12-16', '2017-12-07', '100', '4', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('2', '4774', '黄海波 v 好', '2017-12-17', '2017-12-19', '100', '', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('3', 'hbybqwe', 'hbqwyeyy', '2017-12-17', '2017-12-27', '100', '', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('5', 'test5', 'test5', '2017-12-17', '2017-12-19', '100', '', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('6', 'test6', 'taehbhb', '2017-12-21', '2018-01-17', '100', '', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('7', 'test7', 'hbqhwbegv', '2017-12-21', '2017-12-12', '100', '15', '春学期', '周一3、4', '紫金港-东1-104', '0', null);
INSERT INTO `homework` VALUES ('9', 'Homework1', '                                Finish the Task.\r\n                            ', '2019-04-29', null, '100', '17', null, null, null, '1', '29');
INSERT INTO `homework` VALUES ('11', 'Homework1', 'Assign Homework', '2019-04-29', null, '100', '', null, null, null, '2', null);
INSERT INTO `homework` VALUES ('13', '从用户体验告诉你如何更好地设计AI', '                                                                                                                                设计人工智能系统和特性对用户体验（UX）从业者提出了新的挑战。传统上，UX设计师依赖草图和低保真度、快速原型来想象和测试他们的想法。然而，常用的设计工具和技术往往不能满足人工智能系统的设计要求。并且人工智能系统经常违反众所周知的可用性原则，因此需要更新设计人机交互的指导。\r\n                            \r\n                            \r\n                            \r\n                            ', '2019-04-29', '2019-04-26', '100', '8', null, null, null, '1', '13');
INSERT INTO `homework` VALUES ('14', '课本第二单元习题', '                                课本第二单元习题\r\n                            ', '2019-04-30', '2019-04-29', '100', '4', null, null, null, '1', '14');
INSERT INTO `homework` VALUES ('15', '课本第二单元习题1', '                                央行公告指出，迄今为止，50元、20元、10元、1元纸币和1元、5角、1角硬币已发行流通近20年。在此期间，现金流通情况发生巨大变化，现金自动处理设备快速发展，假币伪造形式多样化，货币防伪技术更新换代加快，这些都对人民币的设计水平、防伪技术和印制质量提出了更高要求。\r\n                            ', '2019-04-30', null, '100', '7', null, null, null, '1', '15');
INSERT INTO `homework` VALUES ('16', '流通近20年的第五套人民币再次升级', '                                                                4月29日，央行官网发布公告称，今年8月30日起发行2019年版第五套人民币50元、20元、10元\r\n                            \r\n                            ', '2019-04-30', null, '100', '10', null, null, null, '1', '11');
INSERT INTO `homework` VALUES ('17', '2019年Q1扫地机ZDC：技术是产品的核心竞争力', '                                第一款量产扫地机器人是由瑞典的伊莱克斯于1997年引入，在这20多年的发展过程中，扫地机器人经历了从傻瓜式、随机式到现在的智能式、规划式，功能越来越强大的同时也越来越智能。\r\n                            ', '2019-04-30', null, '100', '9', null, null, null, '1', '18');
INSERT INTO `homework` VALUES ('18', '靠这款品牌的手机', '                                春天，是各大公司行业招聘的高峰期，在这个节骨眼上，我有一个刚刚毕业，想要找工作的朋友小张，来到我住的地方，向我取经：杜大师，我最近应聘一家公司，你能给我传授一下面试的经验吗？\r\n                            ', '2019-04-30', null, '100', '16', null, null, null, '1', '17');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `file_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('4');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2', '3150102100', '1', '???????????', '3', '2019-04-29 10:31:24');
INSERT INTO `notice` VALUES ('3', '3150102100', '1', '??????Homework1', '3', '2019-04-29 10:38:25');
INSERT INTO `notice` VALUES ('4', '3150102100', '1', '?????:Lesson1', '1', '2019-04-29 11:46:34');
INSERT INTO `notice` VALUES ('5', '3150102100', '1', '?????:Lesson2', '1', '2019-04-29 11:47:08');
INSERT INTO `notice` VALUES ('6', '3150102100', '1', '??????wx_camera_1554450046322.jpg', '0', '2019-04-29 11:48:17');
INSERT INTO `notice` VALUES ('7', '3150102100', '1', '????????????', '3', '2019-04-29 12:41:50');
INSERT INTO `notice` VALUES ('8', '3150103200', '2', '??????Homework1', '3', '2019-04-29 12:42:57');
INSERT INTO `notice` VALUES ('9', '3150102100', '1', '???????????', '3', '2019-04-29 12:47:06');
INSERT INTO `notice` VALUES ('10', '3150103200', '1', '???????????', '3', '2019-04-29 12:47:06');
INSERT INTO `notice` VALUES ('11', '3150102100', '1', '新作业发布：从用户体验告诉你如何更好地设计AI', '3', '2019-04-29 12:50:17');
INSERT INTO `notice` VALUES ('12', '3150103200', '1', '新作业发布：从用户体验告诉你如何更好地设计AI', '3', '2019-04-29 12:50:17');
INSERT INTO `notice` VALUES ('13', '300400', '1', '新留言:微软研究院（Microsoft Rese', '4', '2019-04-29 12:52:54');
INSERT INTO `notice` VALUES ('14', '300400', '1', '新留言:普雷斯蒂谈威少：不会因几个月的挣扎否认他', '4', '2019-04-30 02:16:50');
INSERT INTO `notice` VALUES ('15', '300400', '1', '新留言:流通近20年的第五套人民币再次升级。4月', '4', '2019-04-30 02:17:06');
INSERT INTO `notice` VALUES ('16', '3150102100', '1', '新作业发布：课本第二单元习题', '3', '2019-04-30 02:54:40');
INSERT INTO `notice` VALUES ('17', '3150103200', '1', '新作业发布：课本第二单元习题', '3', '2019-04-30 02:54:40');
INSERT INTO `notice` VALUES ('18', '3150102100', '1', '新作业发布：课本第二单元习题1', '3', '2019-04-30 03:24:39');
INSERT INTO `notice` VALUES ('19', '3150103200', '1', '新作业发布：课本第二单元习题1', '3', '2019-04-30 03:24:39');
INSERT INTO `notice` VALUES ('20', '3150102100', '1', '新作业发布：流通近20年的第五套人民币再次升级', '3', '2019-04-30 03:31:42');
INSERT INTO `notice` VALUES ('21', '3150103200', '1', '新作业发布：流通近20年的第五套人民币再次升级', '3', '2019-04-30 03:31:42');
INSERT INTO `notice` VALUES ('22', '3150102100', '1', '新作业发布：2019年Q1扫地机ZDC：技术是产品的核心竞争力', '3', '2019-04-30 03:36:32');
INSERT INTO `notice` VALUES ('23', '3150103200', '1', '新作业发布：2019年Q1扫地机ZDC：技术是产品的核心竞争力', '3', '2019-04-30 03:36:32');
INSERT INTO `notice` VALUES ('24', '3150102100', '1', '作业：流通近20年的第五套人民币再次升级 有更新！', '3', '2019-04-30 04:02:32');
INSERT INTO `notice` VALUES ('25', '3150103200', '1', '作业：流通近20年的第五套人民币再次升级 有更新！', '3', '2019-04-30 04:02:32');
INSERT INTO `notice` VALUES ('26', '3150102100', '1', '作业：流通近20年的第五套人民币再次升级 有更新！', '3', '2019-04-30 04:06:24');
INSERT INTO `notice` VALUES ('27', '3150103200', '1', '作业：流通近20年的第五套人民币再次升级 有更新！', '3', '2019-04-30 04:06:24');
INSERT INTO `notice` VALUES ('28', '3150102100', '1', '作业：从用户体验告诉你如何更好地设计AI 有更新！', '3', '2019-04-30 04:25:17');
INSERT INTO `notice` VALUES ('29', '3150103200', '1', '作业：从用户体验告诉你如何更好地设计AI 有更新！', '3', '2019-04-30 04:25:17');
INSERT INTO `notice` VALUES ('30', '3150102100', '1', '作业：从用户体验告诉你如何更好地设计AI 有更新！', '3', '2019-04-30 04:30:28');
INSERT INTO `notice` VALUES ('31', '3150103200', '1', '作业：从用户体验告诉你如何更好地设计AI 有更新！', '3', '2019-04-30 04:30:28');
INSERT INTO `notice` VALUES ('32', '3150102100', '1', '作业：课本第二单元习题 有更新！', '3', '2019-04-30 04:39:16');
INSERT INTO `notice` VALUES ('33', '3150103200', '1', '作业：课本第二单元习题 有更新！', '3', '2019-04-30 04:39:16');
INSERT INTO `notice` VALUES ('34', '3150102100', '1', '作业：课本第二单元习题1 有更新！', '3', '2019-04-30 04:40:14');
INSERT INTO `notice` VALUES ('35', '3150103200', '1', '作业：课本第二单元习题1 有更新！', '3', '2019-04-30 04:40:14');
INSERT INTO `notice` VALUES ('36', '3150102100', '1', '新作业发布：靠这款品牌的手机 我应聘上了中关村在线', '3', '2019-04-30 04:44:58');
INSERT INTO `notice` VALUES ('37', '3150103200', '1', '新作业发布：靠这款品牌的手机 我应聘上了中关村在线', '3', '2019-04-30 04:44:58');
INSERT INTO `notice` VALUES ('38', '3150102100', '1', '作业：靠这款品牌的手机 有更新！', '3', '2019-04-30 04:45:21');
INSERT INTO `notice` VALUES ('39', '3150103200', '1', '作业：靠这款品牌的手机 有更新！', '3', '2019-04-30 04:45:21');
INSERT INTO `notice` VALUES ('40', '3150102100', '1', '作业：2019年Q1扫地机ZDC：技术是产品的核心竞争力 有更新！', '3', '2019-04-30 05:12:17');
INSERT INTO `notice` VALUES ('41', '3150103200', '1', '作业：2019年Q1扫地机ZDC：技术是产品的核心竞争力 有更新！', '3', '2019-04-30 05:12:17');
INSERT INTO `notice` VALUES ('42', '3150102100', '1', '作业：Homework1 有更新！', '3', '2019-04-30 06:12:31');
INSERT INTO `notice` VALUES ('43', '3150103200', '1', '作业：Homework1 有更新！', '3', '2019-04-30 06:12:31');

-- ----------------------------
-- Table structure for online_test
-- ----------------------------
DROP TABLE IF EXISTS `online_test`;
CREATE TABLE `online_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `ddl_date` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of online_test
-- ----------------------------
INSERT INTO `online_test` VALUES ('2', '1', '2018-01-16 16:00:00', '100', 'test1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` char(10) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `image_position` varchar(60) DEFAULT NULL,
  `signature` varchar(30) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `class_number` varchar(10) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('3150101000', '123456', '张耀心', '计算机科学与技术学院', '', '', '', '', '软件工程', '3', '1502', '');
INSERT INTO `student` VALUES ('3150101100', '123456', '吴道义', '计算机科学与技术学院', '', '/image/default.jpg', '', null, '软件工程', '3', '1503', '');
INSERT INTO `student` VALUES ('3150101300', '123456', '吴佳豪', '计算机科学与技术学院', '', '', '', '', '软件工程', '3', '1503', '');
INSERT INTO `student` VALUES ('3150102100', '123456', '黄雨生', '计算机科学与技术学院', '', null, 'Hello', null, '软件工程', '3', '1501', '');
INSERT INTO `student` VALUES ('3150102210', '123456', '林世鹏', '计算机科学与技术学院', '', '', '', '', '软件工程', '3', '1502', '');
INSERT INTO `student` VALUES ('3150103200', '123456', '张智彬', '计算机科学与技术学院', '', '', '', '', '软件工程', '3', '1503', '');

-- ----------------------------
-- Table structure for take
-- ----------------------------
DROP TABLE IF EXISTS `take`;
CREATE TABLE `take` (
  `student_id` char(10) NOT NULL DEFAULT '',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of take
-- ----------------------------
INSERT INTO `take` VALUES ('3150102100', '1');
INSERT INTO `take` VALUES ('3150102100', '3');
INSERT INTO `take` VALUES ('3150103200', '1');
INSERT INTO `take` VALUES ('3150103200', '2');

-- ----------------------------
-- Table structure for teach
-- ----------------------------
DROP TABLE IF EXISTS `teach`;
CREATE TABLE `teach` (
  `teacher_id` char(6) NOT NULL DEFAULT '',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`teacher_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teach
-- ----------------------------
INSERT INTO `teach` VALUES ('300400', '1');
INSERT INTO `teach` VALUES ('300500', '2');
INSERT INTO `teach` VALUES ('300600', '3');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` char(6) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `image_position` varchar(60) DEFAULT NULL,
  `signature` varchar(30) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('300400', '123456', '邢卫', '计算机科学与技术学院', '', '', '', '', '教授', '');
INSERT INTO `teacher` VALUES ('300500', '123456', '刘玉生', '计算机科学与技术学院', '', '', '', '', '教授', '');
INSERT INTO `teacher` VALUES ('300600', '123456', '林海', '计算机科学与技术学院', '', '', '', '', '教授', '');

-- ----------------------------
-- Table structure for upload_homework
-- ----------------------------
DROP TABLE IF EXISTS `upload_homework`;
CREATE TABLE `upload_homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` char(10) DEFAULT NULL,
  `homework_id` int(11) DEFAULT NULL,
  `get_score` int(11) DEFAULT NULL,
  `handle_date` date DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `upload_homework_file` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL COMMENT '修改后作业',
  `status` int(255) DEFAULT '0' COMMENT '0初次提交，1修改后提交',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_homework
-- ----------------------------
INSERT INTO `upload_homework` VALUES ('2', '3150102100', '9', '-1', '2019-04-29', '1', '5', null, '0');
INSERT INTO `upload_homework` VALUES ('3', '3150102100', '14', '-1', '2019-04-30', '1', '6', null, '0');
INSERT INTO `upload_homework` VALUES ('4', '3150103200', '17', '-1', '2019-04-30', '1', '19', '24', '0');
INSERT INTO `upload_homework` VALUES ('5', '3150103200', '14', '-1', '2019-04-30', '1', '25', '26', '0');
INSERT INTO `upload_homework` VALUES ('6', '3150103200', '15', '-1', '2019-04-30', '1', '27', '28', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `file_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `profile` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('2', 'Lesson1', 'Lesson1');
INSERT INTO `video` VALUES ('3', 'Lesson2', 'Lesson2');
