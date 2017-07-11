/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : ggp

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-07-01 12:42:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acer_member`
-- ----------------------------
DROP TABLE IF EXISTS `acer_member`;
CREATE TABLE `acer_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(16) NOT NULL DEFAULT '',
  `paypassword` varchar(16) NOT NULL DEFAULT '' COMMENT '交易密码',
  `uname` varchar(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `realname` varchar(16) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `certificates_type` varchar(16) NOT NULL COMMENT '证件类型',
  `certificates` varchar(32) NOT NULL COMMENT '证件号',
  `tel` int(16) NOT NULL,
  `register_time` int(10) NOT NULL COMMENT '注册时间',
  `log_time` int(10) NOT NULL COMMENT '登录时间',
  `vip` tinyint(2) NOT NULL,
  `vip_end` int(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `cny` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '人民币',
  `cny_cold` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '冻结rmb',
  `headpic` varchar(32) NOT NULL DEFAULT '' COMMENT '头像',
  `content` varchar(256) NOT NULL DEFAULT '' COMMENT '个人简介',
  `city` varchar(32) NOT NULL DEFAULT '',
  `region` varchar(128) NOT NULL DEFAULT '' COMMENT '区域',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acer_member
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yang_admin`;
CREATE TABLE `yang_admin` (
  `admin_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(32) NOT NULL COMMENT '管理员登陆账号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `nav` varchar(255) NOT NULL COMMENT '权限',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `currency_id` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_admin
-- ----------------------------
INSERT INTO `yang_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1,2,3,4,6,7,8,15,9,71,11,12,17,16,27,28,29,30,18,44,41,52,45,46,47,49,50,51,56,64,72,104,105', '0', '25,26,33,34,32');

-- ----------------------------
-- Table structure for `yang_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `yang_admin_log`;
CREATE TABLE `yang_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `add_time` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_admin_log
-- ----------------------------
INSERT INTO `yang_admin_log` VALUES ('1', 'Dawei222', '2017-03-24 18:52:06', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('2', 'Dawei222', '2017-03-24 18:58:29', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('3', 'limin', '2017-03-24 19:11:58', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('4', 'Dawei222', '2017-03-24 19:33:09', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('5', 'Dawei222', '2017-03-24 19:45:17', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('6', 'starry', '2017-03-24 19:48:52', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('7', 'Dawei222', '2017-03-24 19:57:22', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('8', 'limin', '2017-03-24 21:52:34', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('9', 'limin', '2017-03-24 21:53:57', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('10', 'limin', '2017-03-24 21:54:21', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('11', 'limin', '2017-03-24 21:54:21', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('12', 'Dawei222', '2017-03-24 22:28:24', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('13', 'Dawei222', '2017-03-24 23:50:07', '117.176.255.155', '0');
INSERT INTO `yang_admin_log` VALUES ('14', 'Dawei222', '2017-03-24 23:57:08', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('15', 'Dawei222', '2017-03-25 00:20:44', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('16', 'Dawei222', '2017-03-25 07:53:35', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('17', 'Dawei222', '2017-03-25 09:12:29', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('18', 'heqiuxia', '2017-03-25 09:42:44', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('19', 'liumin', '2017-03-25 09:44:14', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('20', 'Dawei222', '2017-03-25 10:29:27', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('21', 'limin', '2017-03-25 10:36:25', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('22', 'Dawei222', '2017-03-25 11:32:12', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('23', 'limin', '2017-03-25 11:58:29', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('24', 'heqiuxia', '2017-03-25 12:27:10', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('25', 'starry', '2017-03-25 14:24:41', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('26', 'starry', '2017-03-25 15:30:01', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('27', 'Dawei222', '2017-03-25 15:39:25', '182.150.137.196', '0');
INSERT INTO `yang_admin_log` VALUES ('28', 'heqiuxia', '2017-03-25 16:06:32', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('29', 'starry', '2017-03-25 16:44:42', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('30', 'Dawei222', '2017-03-25 17:04:12', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('31', 'heqiuxia', '2017-03-25 17:57:08', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('32', 'liumin', '2017-03-25 18:12:49', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('33', 'Dawei222', '2017-03-25 18:16:43', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('34', 'starry', '2017-03-25 18:40:05', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('35', 'starry', '2017-03-25 19:19:41', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('36', 'Dawei222', '2017-03-25 19:27:07', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('37', 'starry', '2017-03-25 20:30:09', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('38', 'Dawei222', '2017-03-25 22:12:38', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('39', 'Dawei222', '2017-03-25 23:53:56', '117.136.63.185', '0');
INSERT INTO `yang_admin_log` VALUES ('40', 'Dawei222', '2017-03-26 07:22:22', '117.136.63.185', '0');
INSERT INTO `yang_admin_log` VALUES ('41', 'Dawei222', '2017-03-26 08:57:02', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('42', 'liumin', '2017-03-26 08:59:03', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('43', 'starry', '2017-03-26 09:03:44', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('44', 'Dawei222', '2017-03-26 09:13:34', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('45', 'Dawei222', '2017-03-26 09:28:24', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('46', 'Dawei222', '2017-03-26 09:29:41', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('47', 'liumin', '2017-03-26 09:49:04', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('48', 'liumin', '2017-03-26 10:15:50', '110.184.22.234', '0');
INSERT INTO `yang_admin_log` VALUES ('49', 'Dawei222', '2017-03-26 11:03:10', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('50', 'starry', '2017-03-26 11:10:06', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('51', 'liumin', '2017-03-26 11:23:41', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('52', 'Dawei222', '2017-03-26 12:53:37', '175.167.130.5', '0');
INSERT INTO `yang_admin_log` VALUES ('53', 'liumin', '2017-03-26 13:10:35', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('54', 'starry', '2017-03-26 13:42:26', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('55', 'Dawei222', '2017-03-26 15:26:12', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('56', 'Dawei222', '2017-03-26 16:38:06', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('57', 'Dawei222', '2017-03-26 17:41:09', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('58', 'starry', '2017-03-26 18:49:40', '117.136.64.88', '0');
INSERT INTO `yang_admin_log` VALUES ('59', 'Dawei222', '2017-03-26 20:27:59', '221.200.214.79', '0');
INSERT INTO `yang_admin_log` VALUES ('60', 'Dawei222', '2017-03-26 20:45:10', '117.172.25.131', '0');
INSERT INTO `yang_admin_log` VALUES ('61', 'liumin', '2017-03-27 08:44:23', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('62', 'heqiuxia', '2017-03-27 08:58:50', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('63', 'starry', '2017-03-27 09:07:59', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('64', 'Dawei222', '2017-03-27 09:12:58', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('65', 'Dawei222', '2017-03-27 09:30:31', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('66', 'liumin', '2017-03-27 09:50:02', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('67', 'Dawei222', '2017-03-27 10:21:09', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('68', 'starry', '2017-03-27 10:28:05', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('69', 'starry', '2017-03-27 10:52:40', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('70', 'starry', '2017-03-27 11:14:48', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('71', 'Dawei222', '2017-03-27 11:37:31', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('72', 'heqiuxia', '2017-03-27 12:09:43', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('73', 'Dawei222', '2017-03-27 12:55:41', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('74', 'heqiuxia', '2017-03-27 13:06:25', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('75', 'starry', '2017-03-27 13:12:16', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('76', 'Dawei222', '2017-03-27 13:28:21', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('77', 'heqiuxia', '2017-03-27 13:54:46', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('78', 'Dawei222', '2017-03-27 14:40:35', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('79', 'Dawei222', '2017-03-27 15:24:51', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('80', 'liumin', '2017-03-27 15:31:11', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('81', 'Dawei222', '2017-03-27 16:48:54', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('82', 'liumin', '2017-03-27 18:30:18', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('83', 'Dawei222', '2017-03-27 18:34:12', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('84', 'heqiuxia', '2017-03-27 18:34:37', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('85', 'starry', '2017-03-27 18:36:00', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('86', 'Dawei222', '2017-03-27 18:50:34', '182.150.141.142', '0');
INSERT INTO `yang_admin_log` VALUES ('87', 'admin', '2017-04-01 10:33:35', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('88', 'admin', '2017-04-05 18:10:53', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('89', 'admin', '2017-04-05 19:03:48', '221.200.213.48', '0');
INSERT INTO `yang_admin_log` VALUES ('90', 'admin', '2017-04-05 19:06:20', '221.200.213.48', '0');
INSERT INTO `yang_admin_log` VALUES ('91', 'admin', '2017-04-05 20:26:16', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('92', 'admin', '2017-04-05 21:17:45', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('93', 'admin', '2017-04-06 09:33:47', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('94', 'admin', '2017-04-06 09:45:04', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('95', 'admin', '2017-04-06 16:39:36', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('96', 'admin', '2017-04-06 16:39:45', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('97', 'admin', '2017-04-06 17:16:56', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('98', 'admin', '2017-04-06 17:26:55', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('99', 'admin', '2017-04-06 22:01:28', '117.139.14.201', '0');
INSERT INTO `yang_admin_log` VALUES ('100', 'admin', '2017-04-07 10:18:58', '101.47.186.255', '0');
INSERT INTO `yang_admin_log` VALUES ('101', 'admin', '2017-04-07 15:43:42', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('102', 'ceshi', '2017-04-07 16:11:06', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('103', 'admin', '2017-04-07 16:33:21', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('104', 'admin', '2017-04-07 16:36:27', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('105', 'admin', '2017-04-07 17:32:13', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('106', 'admin', '2017-04-07 17:42:37', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('107', 'admin', '2017-04-07 17:44:14', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('108', 'admin', '2017-04-07 18:37:11', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('109', 'ceshi', '2017-04-07 18:53:33', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('110', 'admin', '2017-04-07 19:05:55', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('111', 'admin', '2017-04-07 20:18:04', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('112', 'admin', '2017-04-08 09:17:27', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('113', 'admin', '2017-04-08 10:11:42', '221.200.213.48', '0');
INSERT INTO `yang_admin_log` VALUES ('114', 'admin', '2017-04-08 10:29:44', '221.200.213.48', '0');
INSERT INTO `yang_admin_log` VALUES ('115', 'admin', '2017-04-08 11:01:09', '182.150.138.198', '0');
INSERT INTO `yang_admin_log` VALUES ('116', 'admin', '2017-04-08 13:36:45', '221.200.213.48', '0');
INSERT INTO `yang_admin_log` VALUES ('117', 'admin', '2017-04-08 15:48:19', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('118', 'admin', '2017-04-08 18:13:50', '117.176.255.147', '0');
INSERT INTO `yang_admin_log` VALUES ('119', 'admin', '2017-04-08 18:14:30', '117.176.255.147', '0');
INSERT INTO `yang_admin_log` VALUES ('120', 'admin', '2017-04-08 18:18:11', '117.176.255.147', '0');
INSERT INTO `yang_admin_log` VALUES ('121', 'admin', '2017-04-10 14:56:03', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('122', 'admin', '2017-04-10 14:56:28', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('123', 'admin', '2017-04-10 15:01:09', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('124', 'ceshi', '2017-04-10 14:59:46', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('125', 'admin', '2017-04-10 15:00:32', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('126', 'admin', '2017-04-10 15:01:43', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('127', 'admin', '2017-04-10 15:02:03', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('128', 'ceshi', '2017-04-10 15:02:11', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('129', 'admin', '2017-04-10 15:04:57', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('130', 'ceshi', '2017-04-10 15:16:19', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('131', 'admin', '2017-04-10 15:18:19', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('132', 'ceshi', '2017-04-10 15:18:39', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('133', 'ceshi', '2017-04-10 15:29:30', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('134', 'admin', '2017-04-10 15:29:43', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('135', 'ceshi', '2017-04-10 15:30:13', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('136', 'admin', '2017-04-10 15:48:02', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('137', 'admin', '2017-04-10 15:53:57', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('138', 'ceshi', '2017-04-10 16:01:14', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('139', 'admin', '2017-04-10 16:03:24', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('140', 'ceshi', '2017-04-10 16:04:09', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('141', 'admin', '2017-04-10 16:08:20', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('142', 'admin', '2017-04-10 18:16:44', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('143', 'admin', '2017-04-11 09:33:13', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('144', 'admin', '2017-04-11 09:41:41', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('145', 'admin', '2017-04-11 10:55:06', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('146', 'admin', '2017-04-11 11:45:22', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('147', 'admin', '2017-04-11 11:53:45', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('148', 'admin', '2017-04-11 12:50:20', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('149', 'admin', '2017-04-11 13:34:41', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('150', 'admin', '2017-04-11 14:24:26', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('151', 'admin', '2017-04-11 14:44:17', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('152', 'admin', '2017-04-11 16:32:05', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('153', 'admin', '2017-04-12 09:50:18', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('154', 'admin', '2017-04-12 09:51:24', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('155', 'admin', '2017-04-12 09:51:24', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('156', 'admin', '2017-04-12 10:32:28', '101.47.186.250', '0');
INSERT INTO `yang_admin_log` VALUES ('157', 'admin', '2017-04-12 17:06:56', '101.47.186.245', '0');
INSERT INTO `yang_admin_log` VALUES ('158', 'admin', '2017-04-13 10:05:55', '101.47.186.240', '0');
INSERT INTO `yang_admin_log` VALUES ('159', 'admin', '2017-04-13 10:26:32', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('160', 'admin', '2017-04-13 11:13:01', '101.47.186.240', '0');
INSERT INTO `yang_admin_log` VALUES ('161', 'admin', '2017-04-13 11:34:00', '139.214.37.167', '0');
INSERT INTO `yang_admin_log` VALUES ('162', 'admin', '2017-04-13 14:17:59', '101.47.186.240', '0');
INSERT INTO `yang_admin_log` VALUES ('163', 'admin', '2017-04-13 14:47:23', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('164', 'admin', '2017-04-13 14:47:36', '110.184.23.244', '0');
INSERT INTO `yang_admin_log` VALUES ('165', 'admin', '2017-04-13 17:06:30', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('166', 'admin', '2017-04-13 20:48:17', '139.214.37.167', '0');
INSERT INTO `yang_admin_log` VALUES ('167', 'admin', '2017-04-14 09:16:04', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('168', 'admin', '2017-04-14 09:46:52', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('169', 'admin', '2017-04-14 10:15:30', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('170', 'admin', '2017-04-14 10:15:51', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('171', 'admin', '2017-04-14 10:24:43', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('172', 'admin', '2017-04-14 10:26:58', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('173', 'admin', '2017-04-14 10:33:11', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('174', 'admin', '2017-04-14 10:33:12', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('175', 'admin', '2017-04-14 13:50:11', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('176', 'admin', '2017-04-14 14:07:52', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('177', 'admin', '2017-04-14 15:12:48', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('178', 'admin', '2017-04-14 15:35:29', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('179', 'admin', '2017-04-14 16:09:10', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('180', 'admin', '2017-04-14 16:13:49', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('181', 'admin', '2017-04-14 16:46:04', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('182', 'admin', '2017-04-14 18:41:17', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('183', 'admin', '2017-04-15 09:12:41', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('184', 'admin', '2017-04-15 10:06:51', '221.200.218.221', '0');
INSERT INTO `yang_admin_log` VALUES ('185', 'admin', '2017-04-15 10:08:11', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('186', 'admin', '2017-04-15 11:23:28', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('187', 'admin', '2017-04-15 15:50:03', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('188', 'admin', '2017-04-15 17:27:32', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('189', 'admin', '2017-04-15 17:36:36', '221.200.218.221', '0');
INSERT INTO `yang_admin_log` VALUES ('190', 'admin', '2017-04-17 09:53:26', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('191', 'ceshi', '2017-04-17 09:54:16', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('192', 'admin', '2017-04-17 09:54:34', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('193', 'admin', '2017-04-17 10:44:57', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('194', 'admin', '2017-04-17 17:25:58', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('195', 'admin', '2017-04-17 18:02:54', '171.217.95.14', '0');
INSERT INTO `yang_admin_log` VALUES ('196', 'admin', '2017-04-17 19:33:47', '123.245.98.57', '0');
INSERT INTO `yang_admin_log` VALUES ('197', 'admin', '2017-04-17 19:35:12', '123.245.98.57', '0');
INSERT INTO `yang_admin_log` VALUES ('198', 'admin', '2017-04-18 09:17:07', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('199', 'admin', '2017-04-18 10:41:09', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('200', 'admin', '2017-04-18 13:19:26', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('201', 'admin', '2017-04-18 15:48:39', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('202', 'admin', '2017-04-18 15:53:31', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('203', 'admin', '2017-04-18 15:54:44', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('204', 'admin', '2017-04-18 16:48:43', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('205', 'admin', '2017-04-18 16:48:44', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('206', 'admin', '2017-04-18 17:33:01', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('207', 'admin', '2017-04-18 17:59:17', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('208', 'admin', '2017-04-19 09:00:11', '221.200.220.199', '0');
INSERT INTO `yang_admin_log` VALUES ('209', 'admin', '2017-04-19 09:28:21', '221.200.220.199', '0');
INSERT INTO `yang_admin_log` VALUES ('210', 'admin', '2017-04-19 09:53:46', '221.200.220.199', '0');
INSERT INTO `yang_admin_log` VALUES ('211', 'admin', '2017-04-19 10:54:39', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('212', 'admin', '2017-04-19 11:05:14', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('213', 'admin', '2017-04-19 11:11:03', '182.150.138.21', '0');
INSERT INTO `yang_admin_log` VALUES ('214', 'admin', '2017-04-19 12:29:54', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('215', 'admin', '2017-04-20 18:01:54', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('216', 'admin', '2017-04-21 10:41:04', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('217', 'admin', '2017-04-21 21:29:35', '101.246.183.165', '0');
INSERT INTO `yang_admin_log` VALUES ('218', 'admin', '2017-04-25 11:38:50', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('219', 'admin', '2017-04-25 13:36:28', '101.47.186.242', '0');
INSERT INTO `yang_admin_log` VALUES ('220', 'admin', '2017-04-27 16:59:47', '101.246.183.59', '0');
INSERT INTO `yang_admin_log` VALUES ('221', 'admin', '2017-04-27 17:17:07', '101.246.183.59', '0');
INSERT INTO `yang_admin_log` VALUES ('222', 'admin', '2017-04-27 17:19:36', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('223', 'admin', '2017-04-27 17:48:24', '112.41.5.231', '0');
INSERT INTO `yang_admin_log` VALUES ('224', 'admin', '2017-04-27 18:29:58', '112.41.5.231', '0');
INSERT INTO `yang_admin_log` VALUES ('225', 'admin', '2017-04-27 19:20:07', '112.41.5.231', '0');
INSERT INTO `yang_admin_log` VALUES ('226', 'admin', '2017-04-27 22:23:09', '112.41.5.231', '0');
INSERT INTO `yang_admin_log` VALUES ('227', 'admin', '2017-04-28 11:43:11', '112.41.4.186', '0');
INSERT INTO `yang_admin_log` VALUES ('228', 'admin', '2017-04-28 16:08:46', '112.41.4.186', '0');
INSERT INTO `yang_admin_log` VALUES ('229', 'admin', '2017-04-29 14:47:11', '112.41.5.21', '0');
INSERT INTO `yang_admin_log` VALUES ('230', 'admin', '2017-04-29 15:29:32', '112.41.5.21', '0');
INSERT INTO `yang_admin_log` VALUES ('231', 'admin', '2017-04-29 15:37:09', '112.41.5.21', '0');
INSERT INTO `yang_admin_log` VALUES ('232', 'admin', '2017-04-29 23:27:24', '112.41.5.21', '0');
INSERT INTO `yang_admin_log` VALUES ('233', 'admin', '2017-05-03 11:08:06', '101.246.183.59', '0');
INSERT INTO `yang_admin_log` VALUES ('234', 'admin', '2017-05-03 15:57:58', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('235', 'admin', '2017-05-05 19:14:52', '113.224.234.102', '0');
INSERT INTO `yang_admin_log` VALUES ('236', 'admin', '2017-05-06 10:22:59', '112.41.7.2', '0');
INSERT INTO `yang_admin_log` VALUES ('237', 'admin', '2017-05-08 15:28:24', '112.41.4.3', '0');
INSERT INTO `yang_admin_log` VALUES ('238', 'admin', '2017-05-08 17:06:09', '127.0.0.1', '0');
INSERT INTO `yang_admin_log` VALUES ('239', 'admin', '2017-07-01 12:34:41', '127.0.0.1', '0');

-- ----------------------------
-- Table structure for `yang_areas`
-- ----------------------------
DROP TABLE IF EXISTS `yang_areas`;
CREATE TABLE `yang_areas` (
  `area_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `parent_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '地区父id',
  `area_name` varchar(120) NOT NULL DEFAULT '' COMMENT '地区名称',
  `area_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '地区类型 0:country,1:province,2:city,3:district',
  PRIMARY KEY (`area_id`),
  KEY `parent_id` (`parent_id`),
  KEY `area_type` (`area_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3438 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_areas
-- ----------------------------
INSERT INTO `yang_areas` VALUES ('1', '0', '中国', '0');
INSERT INTO `yang_areas` VALUES ('2', '1', '北京', '1');
INSERT INTO `yang_areas` VALUES ('3', '1', '安徽', '1');
INSERT INTO `yang_areas` VALUES ('4', '1', '福建', '1');
INSERT INTO `yang_areas` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `yang_areas` VALUES ('6', '1', '广东', '1');
INSERT INTO `yang_areas` VALUES ('7', '1', '广西', '1');
INSERT INTO `yang_areas` VALUES ('8', '1', '贵州', '1');
INSERT INTO `yang_areas` VALUES ('9', '1', '海南', '1');
INSERT INTO `yang_areas` VALUES ('10', '1', '河北', '1');
INSERT INTO `yang_areas` VALUES ('11', '1', '河南', '1');
INSERT INTO `yang_areas` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `yang_areas` VALUES ('13', '1', '湖北', '1');
INSERT INTO `yang_areas` VALUES ('14', '1', '湖南', '1');
INSERT INTO `yang_areas` VALUES ('15', '1', '吉林', '1');
INSERT INTO `yang_areas` VALUES ('16', '1', '江苏', '1');
INSERT INTO `yang_areas` VALUES ('17', '1', '江西', '1');
INSERT INTO `yang_areas` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `yang_areas` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `yang_areas` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `yang_areas` VALUES ('21', '1', '青海', '1');
INSERT INTO `yang_areas` VALUES ('22', '1', '山东', '1');
INSERT INTO `yang_areas` VALUES ('23', '1', '山西', '1');
INSERT INTO `yang_areas` VALUES ('24', '1', '陕西', '1');
INSERT INTO `yang_areas` VALUES ('25', '1', '上海', '1');
INSERT INTO `yang_areas` VALUES ('26', '1', '四川', '1');
INSERT INTO `yang_areas` VALUES ('27', '1', '天津', '1');
INSERT INTO `yang_areas` VALUES ('28', '1', '西藏', '1');
INSERT INTO `yang_areas` VALUES ('29', '1', '新疆', '1');
INSERT INTO `yang_areas` VALUES ('30', '1', '云南', '1');
INSERT INTO `yang_areas` VALUES ('31', '1', '浙江', '1');
INSERT INTO `yang_areas` VALUES ('32', '1', '重庆', '1');
INSERT INTO `yang_areas` VALUES ('33', '1', '香港', '1');
INSERT INTO `yang_areas` VALUES ('34', '1', '澳门', '1');
INSERT INTO `yang_areas` VALUES ('35', '1', '台湾', '1');
INSERT INTO `yang_areas` VALUES ('36', '3', '安庆', '2');
INSERT INTO `yang_areas` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `yang_areas` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `yang_areas` VALUES ('39', '3', '池州', '2');
INSERT INTO `yang_areas` VALUES ('40', '3', '滁州', '2');
INSERT INTO `yang_areas` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `yang_areas` VALUES ('42', '3', '淮北', '2');
INSERT INTO `yang_areas` VALUES ('43', '3', '淮南', '2');
INSERT INTO `yang_areas` VALUES ('44', '3', '黄山', '2');
INSERT INTO `yang_areas` VALUES ('45', '3', '六安', '2');
INSERT INTO `yang_areas` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `yang_areas` VALUES ('47', '3', '宿州', '2');
INSERT INTO `yang_areas` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `yang_areas` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `yang_areas` VALUES ('50', '3', '宣城', '2');
INSERT INTO `yang_areas` VALUES ('51', '3', '亳州', '2');
INSERT INTO `yang_areas` VALUES ('52', '2', '北京', '2');
INSERT INTO `yang_areas` VALUES ('53', '4', '福州', '2');
INSERT INTO `yang_areas` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `yang_areas` VALUES ('55', '4', '南平', '2');
INSERT INTO `yang_areas` VALUES ('56', '4', '宁德', '2');
INSERT INTO `yang_areas` VALUES ('57', '4', '莆田', '2');
INSERT INTO `yang_areas` VALUES ('58', '4', '泉州', '2');
INSERT INTO `yang_areas` VALUES ('59', '4', '三明', '2');
INSERT INTO `yang_areas` VALUES ('60', '4', '厦门', '2');
INSERT INTO `yang_areas` VALUES ('61', '4', '漳州', '2');
INSERT INTO `yang_areas` VALUES ('62', '5', '兰州', '2');
INSERT INTO `yang_areas` VALUES ('63', '5', '白银', '2');
INSERT INTO `yang_areas` VALUES ('64', '5', '定西', '2');
INSERT INTO `yang_areas` VALUES ('65', '5', '甘南', '2');
INSERT INTO `yang_areas` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `yang_areas` VALUES ('67', '5', '金昌', '2');
INSERT INTO `yang_areas` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `yang_areas` VALUES ('69', '5', '临夏', '2');
INSERT INTO `yang_areas` VALUES ('70', '5', '陇南', '2');
INSERT INTO `yang_areas` VALUES ('71', '5', '平凉', '2');
INSERT INTO `yang_areas` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `yang_areas` VALUES ('73', '5', '天水', '2');
INSERT INTO `yang_areas` VALUES ('74', '5', '武威', '2');
INSERT INTO `yang_areas` VALUES ('75', '5', '张掖', '2');
INSERT INTO `yang_areas` VALUES ('76', '6', '广州', '2');
INSERT INTO `yang_areas` VALUES ('77', '6', '深圳', '2');
INSERT INTO `yang_areas` VALUES ('78', '6', '潮州', '2');
INSERT INTO `yang_areas` VALUES ('79', '6', '东莞', '2');
INSERT INTO `yang_areas` VALUES ('80', '6', '佛山', '2');
INSERT INTO `yang_areas` VALUES ('81', '6', '河源', '2');
INSERT INTO `yang_areas` VALUES ('82', '6', '惠州', '2');
INSERT INTO `yang_areas` VALUES ('83', '6', '江门', '2');
INSERT INTO `yang_areas` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `yang_areas` VALUES ('85', '6', '茂名', '2');
INSERT INTO `yang_areas` VALUES ('86', '6', '梅州', '2');
INSERT INTO `yang_areas` VALUES ('87', '6', '清远', '2');
INSERT INTO `yang_areas` VALUES ('88', '6', '汕头', '2');
INSERT INTO `yang_areas` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `yang_areas` VALUES ('90', '6', '韶关', '2');
INSERT INTO `yang_areas` VALUES ('91', '6', '阳江', '2');
INSERT INTO `yang_areas` VALUES ('92', '6', '云浮', '2');
INSERT INTO `yang_areas` VALUES ('93', '6', '湛江', '2');
INSERT INTO `yang_areas` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `yang_areas` VALUES ('95', '6', '中山', '2');
INSERT INTO `yang_areas` VALUES ('96', '6', '珠海', '2');
INSERT INTO `yang_areas` VALUES ('97', '7', '南宁', '2');
INSERT INTO `yang_areas` VALUES ('98', '7', '桂林', '2');
INSERT INTO `yang_areas` VALUES ('99', '7', '百色', '2');
INSERT INTO `yang_areas` VALUES ('100', '7', '北海', '2');
INSERT INTO `yang_areas` VALUES ('101', '7', '崇左', '2');
INSERT INTO `yang_areas` VALUES ('102', '7', '防城港', '2');
INSERT INTO `yang_areas` VALUES ('103', '7', '贵港', '2');
INSERT INTO `yang_areas` VALUES ('104', '7', '河池', '2');
INSERT INTO `yang_areas` VALUES ('105', '7', '贺州', '2');
INSERT INTO `yang_areas` VALUES ('106', '7', '来宾', '2');
INSERT INTO `yang_areas` VALUES ('107', '7', '柳州', '2');
INSERT INTO `yang_areas` VALUES ('108', '7', '钦州', '2');
INSERT INTO `yang_areas` VALUES ('109', '7', '梧州', '2');
INSERT INTO `yang_areas` VALUES ('110', '7', '玉林', '2');
INSERT INTO `yang_areas` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `yang_areas` VALUES ('112', '8', '安顺', '2');
INSERT INTO `yang_areas` VALUES ('113', '8', '毕节', '2');
INSERT INTO `yang_areas` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `yang_areas` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `yang_areas` VALUES ('116', '8', '黔南', '2');
INSERT INTO `yang_areas` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `yang_areas` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `yang_areas` VALUES ('119', '8', '遵义', '2');
INSERT INTO `yang_areas` VALUES ('120', '9', '海口', '2');
INSERT INTO `yang_areas` VALUES ('121', '9', '三亚', '2');
INSERT INTO `yang_areas` VALUES ('122', '9', '白沙', '2');
INSERT INTO `yang_areas` VALUES ('123', '9', '保亭', '2');
INSERT INTO `yang_areas` VALUES ('124', '9', '昌江', '2');
INSERT INTO `yang_areas` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `yang_areas` VALUES ('126', '9', '定安县', '2');
INSERT INTO `yang_areas` VALUES ('127', '9', '东方', '2');
INSERT INTO `yang_areas` VALUES ('128', '9', '乐东', '2');
INSERT INTO `yang_areas` VALUES ('129', '9', '临高县', '2');
INSERT INTO `yang_areas` VALUES ('130', '9', '陵水', '2');
INSERT INTO `yang_areas` VALUES ('131', '9', '琼海', '2');
INSERT INTO `yang_areas` VALUES ('132', '9', '琼中', '2');
INSERT INTO `yang_areas` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `yang_areas` VALUES ('134', '9', '万宁', '2');
INSERT INTO `yang_areas` VALUES ('135', '9', '文昌', '2');
INSERT INTO `yang_areas` VALUES ('136', '9', '五指山', '2');
INSERT INTO `yang_areas` VALUES ('137', '9', '儋州', '2');
INSERT INTO `yang_areas` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `yang_areas` VALUES ('139', '10', '保定', '2');
INSERT INTO `yang_areas` VALUES ('140', '10', '沧州', '2');
INSERT INTO `yang_areas` VALUES ('141', '10', '承德', '2');
INSERT INTO `yang_areas` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `yang_areas` VALUES ('143', '10', '衡水', '2');
INSERT INTO `yang_areas` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `yang_areas` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `yang_areas` VALUES ('146', '10', '唐山', '2');
INSERT INTO `yang_areas` VALUES ('147', '10', '邢台', '2');
INSERT INTO `yang_areas` VALUES ('148', '10', '张家口', '2');
INSERT INTO `yang_areas` VALUES ('149', '11', '郑州', '2');
INSERT INTO `yang_areas` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `yang_areas` VALUES ('151', '11', '开封', '2');
INSERT INTO `yang_areas` VALUES ('152', '11', '安阳', '2');
INSERT INTO `yang_areas` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `yang_areas` VALUES ('154', '11', '济源', '2');
INSERT INTO `yang_areas` VALUES ('155', '11', '焦作', '2');
INSERT INTO `yang_areas` VALUES ('156', '11', '南阳', '2');
INSERT INTO `yang_areas` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `yang_areas` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `yang_areas` VALUES ('159', '11', '商丘', '2');
INSERT INTO `yang_areas` VALUES ('160', '11', '新乡', '2');
INSERT INTO `yang_areas` VALUES ('161', '11', '信阳', '2');
INSERT INTO `yang_areas` VALUES ('162', '11', '许昌', '2');
INSERT INTO `yang_areas` VALUES ('163', '11', '周口', '2');
INSERT INTO `yang_areas` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `yang_areas` VALUES ('165', '11', '漯河', '2');
INSERT INTO `yang_areas` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `yang_areas` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `yang_areas` VALUES ('168', '12', '大庆', '2');
INSERT INTO `yang_areas` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `yang_areas` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `yang_areas` VALUES ('171', '12', '黑河', '2');
INSERT INTO `yang_areas` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `yang_areas` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `yang_areas` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `yang_areas` VALUES ('175', '12', '七台河', '2');
INSERT INTO `yang_areas` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `yang_areas` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `yang_areas` VALUES ('178', '12', '绥化', '2');
INSERT INTO `yang_areas` VALUES ('179', '12', '伊春', '2');
INSERT INTO `yang_areas` VALUES ('180', '13', '武汉', '2');
INSERT INTO `yang_areas` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `yang_areas` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `yang_areas` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `yang_areas` VALUES ('184', '13', '黄石', '2');
INSERT INTO `yang_areas` VALUES ('185', '13', '荆门', '2');
INSERT INTO `yang_areas` VALUES ('186', '13', '荆州', '2');
INSERT INTO `yang_areas` VALUES ('187', '13', '潜江', '2');
INSERT INTO `yang_areas` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `yang_areas` VALUES ('189', '13', '十堰', '2');
INSERT INTO `yang_areas` VALUES ('190', '13', '随州', '2');
INSERT INTO `yang_areas` VALUES ('191', '13', '天门', '2');
INSERT INTO `yang_areas` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `yang_areas` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `yang_areas` VALUES ('194', '13', '孝感', '2');
INSERT INTO `yang_areas` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `yang_areas` VALUES ('196', '13', '恩施', '2');
INSERT INTO `yang_areas` VALUES ('197', '14', '长沙', '2');
INSERT INTO `yang_areas` VALUES ('198', '14', '张家界', '2');
INSERT INTO `yang_areas` VALUES ('199', '14', '常德', '2');
INSERT INTO `yang_areas` VALUES ('200', '14', '郴州', '2');
INSERT INTO `yang_areas` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `yang_areas` VALUES ('202', '14', '怀化', '2');
INSERT INTO `yang_areas` VALUES ('203', '14', '娄底', '2');
INSERT INTO `yang_areas` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `yang_areas` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `yang_areas` VALUES ('206', '14', '湘西', '2');
INSERT INTO `yang_areas` VALUES ('207', '14', '益阳', '2');
INSERT INTO `yang_areas` VALUES ('208', '14', '永州', '2');
INSERT INTO `yang_areas` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `yang_areas` VALUES ('210', '14', '株洲', '2');
INSERT INTO `yang_areas` VALUES ('211', '15', '长春', '2');
INSERT INTO `yang_areas` VALUES ('212', '15', '吉林', '2');
INSERT INTO `yang_areas` VALUES ('213', '15', '白城', '2');
INSERT INTO `yang_areas` VALUES ('214', '15', '白山', '2');
INSERT INTO `yang_areas` VALUES ('215', '15', '辽源', '2');
INSERT INTO `yang_areas` VALUES ('216', '15', '四平', '2');
INSERT INTO `yang_areas` VALUES ('217', '15', '松原', '2');
INSERT INTO `yang_areas` VALUES ('218', '15', '通化', '2');
INSERT INTO `yang_areas` VALUES ('219', '15', '延边', '2');
INSERT INTO `yang_areas` VALUES ('220', '16', '南京', '2');
INSERT INTO `yang_areas` VALUES ('221', '16', '苏州', '2');
INSERT INTO `yang_areas` VALUES ('222', '16', '无锡', '2');
INSERT INTO `yang_areas` VALUES ('223', '16', '常州', '2');
INSERT INTO `yang_areas` VALUES ('224', '16', '淮安', '2');
INSERT INTO `yang_areas` VALUES ('225', '16', '连云港', '2');
INSERT INTO `yang_areas` VALUES ('226', '16', '南通', '2');
INSERT INTO `yang_areas` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `yang_areas` VALUES ('228', '16', '泰州', '2');
INSERT INTO `yang_areas` VALUES ('229', '16', '徐州', '2');
INSERT INTO `yang_areas` VALUES ('230', '16', '盐城', '2');
INSERT INTO `yang_areas` VALUES ('231', '16', '扬州', '2');
INSERT INTO `yang_areas` VALUES ('232', '16', '镇江', '2');
INSERT INTO `yang_areas` VALUES ('233', '17', '南昌', '2');
INSERT INTO `yang_areas` VALUES ('234', '17', '抚州', '2');
INSERT INTO `yang_areas` VALUES ('235', '17', '赣州', '2');
INSERT INTO `yang_areas` VALUES ('236', '17', '吉安', '2');
INSERT INTO `yang_areas` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `yang_areas` VALUES ('238', '17', '九江', '2');
INSERT INTO `yang_areas` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `yang_areas` VALUES ('240', '17', '上饶', '2');
INSERT INTO `yang_areas` VALUES ('241', '17', '新余', '2');
INSERT INTO `yang_areas` VALUES ('242', '17', '宜春', '2');
INSERT INTO `yang_areas` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `yang_areas` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `yang_areas` VALUES ('245', '18', '大连', '2');
INSERT INTO `yang_areas` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `yang_areas` VALUES ('247', '18', '本溪', '2');
INSERT INTO `yang_areas` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `yang_areas` VALUES ('249', '18', '丹东', '2');
INSERT INTO `yang_areas` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `yang_areas` VALUES ('251', '18', '阜新', '2');
INSERT INTO `yang_areas` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `yang_areas` VALUES ('253', '18', '锦州', '2');
INSERT INTO `yang_areas` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `yang_areas` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `yang_areas` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `yang_areas` VALUES ('257', '18', '营口', '2');
INSERT INTO `yang_areas` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `yang_areas` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `yang_areas` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `yang_areas` VALUES ('261', '19', '包头', '2');
INSERT INTO `yang_areas` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `yang_areas` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `yang_areas` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `yang_areas` VALUES ('265', '19', '通辽', '2');
INSERT INTO `yang_areas` VALUES ('266', '19', '乌海', '2');
INSERT INTO `yang_areas` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `yang_areas` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `yang_areas` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `yang_areas` VALUES ('270', '20', '银川', '2');
INSERT INTO `yang_areas` VALUES ('271', '20', '固原', '2');
INSERT INTO `yang_areas` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `yang_areas` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `yang_areas` VALUES ('274', '20', '中卫', '2');
INSERT INTO `yang_areas` VALUES ('275', '21', '西宁', '2');
INSERT INTO `yang_areas` VALUES ('276', '21', '果洛', '2');
INSERT INTO `yang_areas` VALUES ('277', '21', '海北', '2');
INSERT INTO `yang_areas` VALUES ('278', '21', '海东', '2');
INSERT INTO `yang_areas` VALUES ('279', '21', '海南', '2');
INSERT INTO `yang_areas` VALUES ('280', '21', '海西', '2');
INSERT INTO `yang_areas` VALUES ('281', '21', '黄南', '2');
INSERT INTO `yang_areas` VALUES ('282', '21', '玉树', '2');
INSERT INTO `yang_areas` VALUES ('283', '22', '济南', '2');
INSERT INTO `yang_areas` VALUES ('284', '22', '青岛', '2');
INSERT INTO `yang_areas` VALUES ('285', '22', '滨州', '2');
INSERT INTO `yang_areas` VALUES ('286', '22', '德州', '2');
INSERT INTO `yang_areas` VALUES ('287', '22', '东营', '2');
INSERT INTO `yang_areas` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `yang_areas` VALUES ('289', '22', '济宁', '2');
INSERT INTO `yang_areas` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `yang_areas` VALUES ('291', '22', '聊城', '2');
INSERT INTO `yang_areas` VALUES ('292', '22', '临沂', '2');
INSERT INTO `yang_areas` VALUES ('293', '22', '日照', '2');
INSERT INTO `yang_areas` VALUES ('294', '22', '泰安', '2');
INSERT INTO `yang_areas` VALUES ('295', '22', '威海', '2');
INSERT INTO `yang_areas` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `yang_areas` VALUES ('297', '22', '烟台', '2');
INSERT INTO `yang_areas` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `yang_areas` VALUES ('299', '22', '淄博', '2');
INSERT INTO `yang_areas` VALUES ('300', '23', '太原', '2');
INSERT INTO `yang_areas` VALUES ('301', '23', '长治', '2');
INSERT INTO `yang_areas` VALUES ('302', '23', '大同', '2');
INSERT INTO `yang_areas` VALUES ('303', '23', '晋城', '2');
INSERT INTO `yang_areas` VALUES ('304', '23', '晋中', '2');
INSERT INTO `yang_areas` VALUES ('305', '23', '临汾', '2');
INSERT INTO `yang_areas` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `yang_areas` VALUES ('307', '23', '朔州', '2');
INSERT INTO `yang_areas` VALUES ('308', '23', '忻州', '2');
INSERT INTO `yang_areas` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `yang_areas` VALUES ('310', '23', '运城', '2');
INSERT INTO `yang_areas` VALUES ('311', '24', '西安', '2');
INSERT INTO `yang_areas` VALUES ('312', '24', '安康', '2');
INSERT INTO `yang_areas` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `yang_areas` VALUES ('314', '24', '汉中', '2');
INSERT INTO `yang_areas` VALUES ('315', '24', '商洛', '2');
INSERT INTO `yang_areas` VALUES ('316', '24', '铜川', '2');
INSERT INTO `yang_areas` VALUES ('317', '24', '渭南', '2');
INSERT INTO `yang_areas` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `yang_areas` VALUES ('319', '24', '延安', '2');
INSERT INTO `yang_areas` VALUES ('320', '24', '榆林', '2');
INSERT INTO `yang_areas` VALUES ('321', '25', '上海', '2');
INSERT INTO `yang_areas` VALUES ('322', '26', '成都', '2');
INSERT INTO `yang_areas` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `yang_areas` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `yang_areas` VALUES ('325', '26', '巴中', '2');
INSERT INTO `yang_areas` VALUES ('326', '26', '达州', '2');
INSERT INTO `yang_areas` VALUES ('327', '26', '德阳', '2');
INSERT INTO `yang_areas` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `yang_areas` VALUES ('329', '26', '广安', '2');
INSERT INTO `yang_areas` VALUES ('330', '26', '广元', '2');
INSERT INTO `yang_areas` VALUES ('331', '26', '乐山', '2');
INSERT INTO `yang_areas` VALUES ('332', '26', '凉山', '2');
INSERT INTO `yang_areas` VALUES ('333', '26', '眉山', '2');
INSERT INTO `yang_areas` VALUES ('334', '26', '南充', '2');
INSERT INTO `yang_areas` VALUES ('335', '26', '内江', '2');
INSERT INTO `yang_areas` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `yang_areas` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `yang_areas` VALUES ('338', '26', '雅安', '2');
INSERT INTO `yang_areas` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `yang_areas` VALUES ('340', '26', '资阳', '2');
INSERT INTO `yang_areas` VALUES ('341', '26', '自贡', '2');
INSERT INTO `yang_areas` VALUES ('342', '26', '泸州', '2');
INSERT INTO `yang_areas` VALUES ('343', '27', '天津', '2');
INSERT INTO `yang_areas` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `yang_areas` VALUES ('345', '28', '阿里', '2');
INSERT INTO `yang_areas` VALUES ('346', '28', '昌都', '2');
INSERT INTO `yang_areas` VALUES ('347', '28', '林芝', '2');
INSERT INTO `yang_areas` VALUES ('348', '28', '那曲', '2');
INSERT INTO `yang_areas` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `yang_areas` VALUES ('350', '28', '山南', '2');
INSERT INTO `yang_areas` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `yang_areas` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `yang_areas` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `yang_areas` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `yang_areas` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `yang_areas` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `yang_areas` VALUES ('357', '29', '哈密', '2');
INSERT INTO `yang_areas` VALUES ('358', '29', '和田', '2');
INSERT INTO `yang_areas` VALUES ('359', '29', '喀什', '2');
INSERT INTO `yang_areas` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `yang_areas` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `yang_areas` VALUES ('362', '29', '石河子', '2');
INSERT INTO `yang_areas` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `yang_areas` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `yang_areas` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `yang_areas` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `yang_areas` VALUES ('367', '30', '昆明', '2');
INSERT INTO `yang_areas` VALUES ('368', '30', '怒江', '2');
INSERT INTO `yang_areas` VALUES ('369', '30', '普洱', '2');
INSERT INTO `yang_areas` VALUES ('370', '30', '丽江', '2');
INSERT INTO `yang_areas` VALUES ('371', '30', '保山', '2');
INSERT INTO `yang_areas` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `yang_areas` VALUES ('373', '30', '大理', '2');
INSERT INTO `yang_areas` VALUES ('374', '30', '德宏', '2');
INSERT INTO `yang_areas` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `yang_areas` VALUES ('376', '30', '红河', '2');
INSERT INTO `yang_areas` VALUES ('377', '30', '临沧', '2');
INSERT INTO `yang_areas` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `yang_areas` VALUES ('379', '30', '文山', '2');
INSERT INTO `yang_areas` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `yang_areas` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `yang_areas` VALUES ('382', '30', '昭通', '2');
INSERT INTO `yang_areas` VALUES ('383', '31', '杭州', '2');
INSERT INTO `yang_areas` VALUES ('384', '31', '湖州', '2');
INSERT INTO `yang_areas` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `yang_areas` VALUES ('386', '31', '金华', '2');
INSERT INTO `yang_areas` VALUES ('387', '31', '丽水', '2');
INSERT INTO `yang_areas` VALUES ('388', '31', '宁波', '2');
INSERT INTO `yang_areas` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `yang_areas` VALUES ('390', '31', '台州', '2');
INSERT INTO `yang_areas` VALUES ('391', '31', '温州', '2');
INSERT INTO `yang_areas` VALUES ('392', '31', '舟山', '2');
INSERT INTO `yang_areas` VALUES ('393', '31', '衢州', '2');
INSERT INTO `yang_areas` VALUES ('394', '32', '重庆', '2');
INSERT INTO `yang_areas` VALUES ('395', '33', '香港', '2');
INSERT INTO `yang_areas` VALUES ('396', '34', '澳门', '2');
INSERT INTO `yang_areas` VALUES ('397', '35', '台湾', '2');
INSERT INTO `yang_areas` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `yang_areas` VALUES ('399', '36', '大观区', '3');
INSERT INTO `yang_areas` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `yang_areas` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `yang_areas` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `yang_areas` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `yang_areas` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `yang_areas` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `yang_areas` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `yang_areas` VALUES ('407', '36', '望江县', '3');
INSERT INTO `yang_areas` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `yang_areas` VALUES ('409', '37', '中市区', '3');
INSERT INTO `yang_areas` VALUES ('410', '37', '东市区', '3');
INSERT INTO `yang_areas` VALUES ('411', '37', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('412', '37', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `yang_areas` VALUES ('414', '37', '五河县', '3');
INSERT INTO `yang_areas` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `yang_areas` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `yang_areas` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `yang_areas` VALUES ('418', '38', '无为县', '3');
INSERT INTO `yang_areas` VALUES ('419', '38', '含山县', '3');
INSERT INTO `yang_areas` VALUES ('420', '38', '和县', '3');
INSERT INTO `yang_areas` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `yang_areas` VALUES ('422', '39', '东至县', '3');
INSERT INTO `yang_areas` VALUES ('423', '39', '石台县', '3');
INSERT INTO `yang_areas` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `yang_areas` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `yang_areas` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `yang_areas` VALUES ('427', '40', '天长市', '3');
INSERT INTO `yang_areas` VALUES ('428', '40', '明光市', '3');
INSERT INTO `yang_areas` VALUES ('429', '40', '来安县', '3');
INSERT INTO `yang_areas` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `yang_areas` VALUES ('431', '40', '定远县', '3');
INSERT INTO `yang_areas` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `yang_areas` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `yang_areas` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `yang_areas` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `yang_areas` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `yang_areas` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `yang_areas` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `yang_areas` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `yang_areas` VALUES ('440', '41', '界首市', '3');
INSERT INTO `yang_areas` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `yang_areas` VALUES ('442', '41', '太和县', '3');
INSERT INTO `yang_areas` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `yang_areas` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `yang_areas` VALUES ('445', '42', '相山区', '3');
INSERT INTO `yang_areas` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `yang_areas` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `yang_areas` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `yang_areas` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `yang_areas` VALUES ('450', '43', '大通区', '3');
INSERT INTO `yang_areas` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `yang_areas` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `yang_areas` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `yang_areas` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `yang_areas` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `yang_areas` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `yang_areas` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `yang_areas` VALUES ('458', '44', '歙县', '3');
INSERT INTO `yang_areas` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `yang_areas` VALUES ('460', '44', '黟县', '3');
INSERT INTO `yang_areas` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `yang_areas` VALUES ('462', '45', '金安区', '3');
INSERT INTO `yang_areas` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `yang_areas` VALUES ('464', '45', '寿县', '3');
INSERT INTO `yang_areas` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `yang_areas` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `yang_areas` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `yang_areas` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `yang_areas` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `yang_areas` VALUES ('470', '46', '花山区', '3');
INSERT INTO `yang_areas` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `yang_areas` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `yang_areas` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `yang_areas` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `yang_areas` VALUES ('475', '47', '萧县', '3');
INSERT INTO `yang_areas` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `yang_areas` VALUES ('477', '47', '泗县', '3');
INSERT INTO `yang_areas` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `yang_areas` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `yang_areas` VALUES ('480', '48', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `yang_areas` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `yang_areas` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `yang_areas` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `yang_areas` VALUES ('485', '49', '三山区', '3');
INSERT INTO `yang_areas` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `yang_areas` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `yang_areas` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `yang_areas` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `yang_areas` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `yang_areas` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `yang_areas` VALUES ('492', '50', '广德县', '3');
INSERT INTO `yang_areas` VALUES ('493', '50', '泾县', '3');
INSERT INTO `yang_areas` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `yang_areas` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `yang_areas` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `yang_areas` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `yang_areas` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `yang_areas` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `yang_areas` VALUES ('500', '52', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('501', '52', '西城区', '3');
INSERT INTO `yang_areas` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `yang_areas` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `yang_areas` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `yang_areas` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `yang_areas` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `yang_areas` VALUES ('508', '52', '房山区', '3');
INSERT INTO `yang_areas` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `yang_areas` VALUES ('510', '52', '通州区', '3');
INSERT INTO `yang_areas` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `yang_areas` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `yang_areas` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `yang_areas` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `yang_areas` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `yang_areas` VALUES ('516', '52', '密云县', '3');
INSERT INTO `yang_areas` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `yang_areas` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('519', '53', '台江区', '3');
INSERT INTO `yang_areas` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `yang_areas` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `yang_areas` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `yang_areas` VALUES ('523', '53', '福清市', '3');
INSERT INTO `yang_areas` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `yang_areas` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `yang_areas` VALUES ('526', '53', '连江县', '3');
INSERT INTO `yang_areas` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `yang_areas` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `yang_areas` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `yang_areas` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `yang_areas` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `yang_areas` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `yang_areas` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `yang_areas` VALUES ('534', '54', '永定县', '3');
INSERT INTO `yang_areas` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `yang_areas` VALUES ('536', '54', '武平县', '3');
INSERT INTO `yang_areas` VALUES ('537', '54', '连城县', '3');
INSERT INTO `yang_areas` VALUES ('538', '55', '延平区', '3');
INSERT INTO `yang_areas` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `yang_areas` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `yang_areas` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `yang_areas` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `yang_areas` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `yang_areas` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `yang_areas` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `yang_areas` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `yang_areas` VALUES ('547', '55', '政和县', '3');
INSERT INTO `yang_areas` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `yang_areas` VALUES ('549', '56', '福安市', '3');
INSERT INTO `yang_areas` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `yang_areas` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `yang_areas` VALUES ('552', '56', '古田县', '3');
INSERT INTO `yang_areas` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `yang_areas` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `yang_areas` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `yang_areas` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `yang_areas` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `yang_areas` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `yang_areas` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `yang_areas` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `yang_areas` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `yang_areas` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `yang_areas` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `yang_areas` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `yang_areas` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `yang_areas` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `yang_areas` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `yang_areas` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `yang_areas` VALUES ('569', '58', '南安市', '3');
INSERT INTO `yang_areas` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `yang_areas` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `yang_areas` VALUES ('572', '58', '永春县', '3');
INSERT INTO `yang_areas` VALUES ('573', '58', '德化县', '3');
INSERT INTO `yang_areas` VALUES ('574', '58', '金门县', '3');
INSERT INTO `yang_areas` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `yang_areas` VALUES ('576', '59', '三元区', '3');
INSERT INTO `yang_areas` VALUES ('577', '59', '永安市', '3');
INSERT INTO `yang_areas` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `yang_areas` VALUES ('579', '59', '清流县', '3');
INSERT INTO `yang_areas` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `yang_areas` VALUES ('581', '59', '大田县', '3');
INSERT INTO `yang_areas` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `yang_areas` VALUES ('583', '59', '沙县', '3');
INSERT INTO `yang_areas` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `yang_areas` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `yang_areas` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `yang_areas` VALUES ('587', '60', '思明区', '3');
INSERT INTO `yang_areas` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `yang_areas` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `yang_areas` VALUES ('590', '60', '集美区', '3');
INSERT INTO `yang_areas` VALUES ('591', '60', '同安区', '3');
INSERT INTO `yang_areas` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `yang_areas` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `yang_areas` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `yang_areas` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `yang_areas` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `yang_areas` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `yang_areas` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `yang_areas` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `yang_areas` VALUES ('600', '61', '东山县', '3');
INSERT INTO `yang_areas` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `yang_areas` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `yang_areas` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `yang_areas` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `yang_areas` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `yang_areas` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `yang_areas` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `yang_areas` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `yang_areas` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `yang_areas` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `yang_areas` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `yang_areas` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `yang_areas` VALUES ('1034', '118', '印江', '3');
INSERT INTO `yang_areas` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `yang_areas` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `yang_areas` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `yang_areas` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `yang_areas` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `yang_areas` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `yang_areas` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `yang_areas` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `yang_areas` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `yang_areas` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `yang_areas` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `yang_areas` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `yang_areas` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `yang_areas` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `yang_areas` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `yang_areas` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `yang_areas` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `yang_areas` VALUES ('1052', '119', '道真', '3');
INSERT INTO `yang_areas` VALUES ('1053', '119', '务川', '3');
INSERT INTO `yang_areas` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `yang_areas` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `yang_areas` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `yang_areas` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `yang_areas` VALUES ('1058', '137', '市区', '3');
INSERT INTO `yang_areas` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `yang_areas` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `yang_areas` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `yang_areas` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `yang_areas` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `yang_areas` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `yang_areas` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `yang_areas` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `yang_areas` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `yang_areas` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `yang_areas` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `yang_areas` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `yang_areas` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `yang_areas` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `yang_areas` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `yang_areas` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `yang_areas` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `yang_areas` VALUES ('1077', '137', '其他', '3');
INSERT INTO `yang_areas` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `yang_areas` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `yang_areas` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `yang_areas` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `yang_areas` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `yang_areas` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `yang_areas` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `yang_areas` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `yang_areas` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `yang_areas` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `yang_areas` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `yang_areas` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `yang_areas` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `yang_areas` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `yang_areas` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `yang_areas` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `yang_areas` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `yang_areas` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `yang_areas` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `yang_areas` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `yang_areas` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `yang_areas` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `yang_areas` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `yang_areas` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `yang_areas` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `yang_areas` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `yang_areas` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `yang_areas` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `yang_areas` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `yang_areas` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `yang_areas` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `yang_areas` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `yang_areas` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `yang_areas` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `yang_areas` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `yang_areas` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `yang_areas` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `yang_areas` VALUES ('1121', '139', '易县', '3');
INSERT INTO `yang_areas` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `yang_areas` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `yang_areas` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `yang_areas` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `yang_areas` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `yang_areas` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `yang_areas` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `yang_areas` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `yang_areas` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `yang_areas` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `yang_areas` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `yang_areas` VALUES ('1134', '140', '青县', '3');
INSERT INTO `yang_areas` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `yang_areas` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `yang_areas` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `yang_areas` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `yang_areas` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `yang_areas` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `yang_areas` VALUES ('1141', '140', '献县', '3');
INSERT INTO `yang_areas` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `yang_areas` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `yang_areas` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `yang_areas` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `yang_areas` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `yang_areas` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `yang_areas` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `yang_areas` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `yang_areas` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `yang_areas` VALUES ('1153', '141', '围场', '3');
INSERT INTO `yang_areas` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `yang_areas` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `yang_areas` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `yang_areas` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `yang_areas` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `yang_areas` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `yang_areas` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `yang_areas` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `yang_areas` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `yang_areas` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `yang_areas` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `yang_areas` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `yang_areas` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `yang_areas` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `yang_areas` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `yang_areas` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `yang_areas` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `yang_areas` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `yang_areas` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `yang_areas` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `yang_areas` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `yang_areas` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `yang_areas` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `yang_areas` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `yang_areas` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `yang_areas` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `yang_areas` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `yang_areas` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `yang_areas` VALUES ('1182', '143', '景县', '3');
INSERT INTO `yang_areas` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `yang_areas` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `yang_areas` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `yang_areas` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `yang_areas` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `yang_areas` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `yang_areas` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `yang_areas` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `yang_areas` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `yang_areas` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `yang_areas` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `yang_areas` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `yang_areas` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `yang_areas` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `yang_areas` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `yang_areas` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `yang_areas` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `yang_areas` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `yang_areas` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `yang_areas` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `yang_areas` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `yang_areas` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `yang_areas` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `yang_areas` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `yang_areas` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `yang_areas` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `yang_areas` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `yang_areas` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `yang_areas` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `yang_areas` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `yang_areas` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `yang_areas` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `yang_areas` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `yang_areas` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `yang_areas` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `yang_areas` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `yang_areas` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `yang_areas` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `yang_areas` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `yang_areas` VALUES ('1224', '147', '任县', '3');
INSERT INTO `yang_areas` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `yang_areas` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `yang_areas` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `yang_areas` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `yang_areas` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `yang_areas` VALUES ('1231', '147', '威县', '3');
INSERT INTO `yang_areas` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `yang_areas` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `yang_areas` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `yang_areas` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `yang_areas` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `yang_areas` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `yang_areas` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `yang_areas` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `yang_areas` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `yang_areas` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `yang_areas` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `yang_areas` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `yang_areas` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `yang_areas` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `yang_areas` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `yang_areas` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `yang_areas` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `yang_areas` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `yang_areas` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `yang_areas` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `yang_areas` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `yang_areas` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `yang_areas` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `yang_areas` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `yang_areas` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `yang_areas` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `yang_areas` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `yang_areas` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `yang_areas` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `yang_areas` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `yang_areas` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `yang_areas` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `yang_areas` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `yang_areas` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `yang_areas` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `yang_areas` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `yang_areas` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `yang_areas` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `yang_areas` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `yang_areas` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `yang_areas` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `yang_areas` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `yang_areas` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `yang_areas` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `yang_areas` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `yang_areas` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `yang_areas` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `yang_areas` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `yang_areas` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `yang_areas` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `yang_areas` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `yang_areas` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `yang_areas` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `yang_areas` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `yang_areas` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `yang_areas` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `yang_areas` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `yang_areas` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `yang_areas` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `yang_areas` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `yang_areas` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `yang_areas` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `yang_areas` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `yang_areas` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `yang_areas` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `yang_areas` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `yang_areas` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `yang_areas` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `yang_areas` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `yang_areas` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `yang_areas` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `yang_areas` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `yang_areas` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `yang_areas` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `yang_areas` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `yang_areas` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `yang_areas` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `yang_areas` VALUES ('1317', '155', '温县', '3');
INSERT INTO `yang_areas` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `yang_areas` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `yang_areas` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `yang_areas` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `yang_areas` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `yang_areas` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `yang_areas` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `yang_areas` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `yang_areas` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `yang_areas` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `yang_areas` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `yang_areas` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `yang_areas` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `yang_areas` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `yang_areas` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `yang_areas` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `yang_areas` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `yang_areas` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `yang_areas` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `yang_areas` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `yang_areas` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `yang_areas` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `yang_areas` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `yang_areas` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `yang_areas` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `yang_areas` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `yang_areas` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `yang_areas` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `yang_areas` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `yang_areas` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `yang_areas` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `yang_areas` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `yang_areas` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `yang_areas` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `yang_areas` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `yang_areas` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `yang_areas` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `yang_areas` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `yang_areas` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `yang_areas` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `yang_areas` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `yang_areas` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `yang_areas` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `yang_areas` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `yang_areas` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `yang_areas` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `yang_areas` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `yang_areas` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `yang_areas` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `yang_areas` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `yang_areas` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `yang_areas` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `yang_areas` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `yang_areas` VALUES ('1372', '161', '新县', '3');
INSERT INTO `yang_areas` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `yang_areas` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `yang_areas` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `yang_areas` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `yang_areas` VALUES ('1377', '161', '息县', '3');
INSERT INTO `yang_areas` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `yang_areas` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `yang_areas` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `yang_areas` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `yang_areas` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `yang_areas` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `yang_areas` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `yang_areas` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `yang_areas` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `yang_areas` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `yang_areas` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `yang_areas` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `yang_areas` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `yang_areas` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `yang_areas` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `yang_areas` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `yang_areas` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `yang_areas` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `yang_areas` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `yang_areas` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `yang_areas` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `yang_areas` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `yang_areas` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `yang_areas` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `yang_areas` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `yang_areas` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `yang_areas` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `yang_areas` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `yang_areas` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `yang_areas` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `yang_areas` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `yang_areas` VALUES ('1412', '166', '范县', '3');
INSERT INTO `yang_areas` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `yang_areas` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `yang_areas` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `yang_areas` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `yang_areas` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `yang_areas` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `yang_areas` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `yang_areas` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `yang_areas` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `yang_areas` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `yang_areas` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `yang_areas` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `yang_areas` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `yang_areas` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `yang_areas` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `yang_areas` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `yang_areas` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `yang_areas` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `yang_areas` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `yang_areas` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `yang_areas` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `yang_areas` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `yang_areas` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `yang_areas` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `yang_areas` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `yang_areas` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `yang_areas` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `yang_areas` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `yang_areas` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `yang_areas` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `yang_areas` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `yang_areas` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `yang_areas` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `yang_areas` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `yang_areas` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `yang_areas` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `yang_areas` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `yang_areas` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `yang_areas` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `yang_areas` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `yang_areas` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `yang_areas` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `yang_areas` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `yang_areas` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `yang_areas` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `yang_areas` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `yang_areas` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `yang_areas` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `yang_areas` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `yang_areas` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `yang_areas` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `yang_areas` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `yang_areas` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `yang_areas` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `yang_areas` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `yang_areas` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `yang_areas` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `yang_areas` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `yang_areas` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `yang_areas` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `yang_areas` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `yang_areas` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `yang_areas` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `yang_areas` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `yang_areas` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `yang_areas` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `yang_areas` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `yang_areas` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `yang_areas` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `yang_areas` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `yang_areas` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `yang_areas` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `yang_areas` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `yang_areas` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `yang_areas` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `yang_areas` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `yang_areas` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `yang_areas` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `yang_areas` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `yang_areas` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `yang_areas` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `yang_areas` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `yang_areas` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `yang_areas` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `yang_areas` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `yang_areas` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `yang_areas` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `yang_areas` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `yang_areas` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `yang_areas` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `yang_areas` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `yang_areas` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `yang_areas` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `yang_areas` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `yang_areas` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `yang_areas` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `yang_areas` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `yang_areas` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `yang_areas` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `yang_areas` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `yang_areas` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `yang_areas` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `yang_areas` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `yang_areas` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `yang_areas` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `yang_areas` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `yang_areas` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `yang_areas` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `yang_areas` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `yang_areas` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `yang_areas` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `yang_areas` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `yang_areas` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `yang_areas` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `yang_areas` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `yang_areas` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `yang_areas` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `yang_areas` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `yang_areas` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `yang_areas` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `yang_areas` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `yang_areas` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `yang_areas` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `yang_areas` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `yang_areas` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `yang_areas` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `yang_areas` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `yang_areas` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `yang_areas` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `yang_areas` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `yang_areas` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `yang_areas` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `yang_areas` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `yang_areas` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `yang_areas` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `yang_areas` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `yang_areas` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `yang_areas` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `yang_areas` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `yang_areas` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `yang_areas` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `yang_areas` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `yang_areas` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `yang_areas` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `yang_areas` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `yang_areas` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `yang_areas` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `yang_areas` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `yang_areas` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `yang_areas` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `yang_areas` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `yang_areas` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `yang_areas` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `yang_areas` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `yang_areas` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `yang_areas` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `yang_areas` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `yang_areas` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `yang_areas` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `yang_areas` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `yang_areas` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `yang_areas` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `yang_areas` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `yang_areas` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `yang_areas` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `yang_areas` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `yang_areas` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `yang_areas` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `yang_areas` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `yang_areas` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `yang_areas` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `yang_areas` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `yang_areas` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `yang_areas` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `yang_areas` VALUES ('1600', '189', '房县', '3');
INSERT INTO `yang_areas` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `yang_areas` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `yang_areas` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `yang_areas` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `yang_areas` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `yang_areas` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `yang_areas` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `yang_areas` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `yang_areas` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `yang_areas` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `yang_areas` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `yang_areas` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `yang_areas` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `yang_areas` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `yang_areas` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `yang_areas` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `yang_areas` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `yang_areas` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `yang_areas` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `yang_areas` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `yang_areas` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `yang_areas` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `yang_areas` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `yang_areas` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `yang_areas` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `yang_areas` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `yang_areas` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `yang_areas` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `yang_areas` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `yang_areas` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `yang_areas` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `yang_areas` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `yang_areas` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `yang_areas` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `yang_areas` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `yang_areas` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `yang_areas` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `yang_areas` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `yang_areas` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `yang_areas` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `yang_areas` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `yang_areas` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `yang_areas` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `yang_areas` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `yang_areas` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `yang_areas` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `yang_areas` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `yang_areas` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `yang_areas` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `yang_areas` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `yang_areas` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `yang_areas` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `yang_areas` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `yang_areas` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `yang_areas` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `yang_areas` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `yang_areas` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `yang_areas` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `yang_areas` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `yang_areas` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `yang_areas` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `yang_areas` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `yang_areas` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `yang_areas` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `yang_areas` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `yang_areas` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `yang_areas` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `yang_areas` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `yang_areas` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `yang_areas` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `yang_areas` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `yang_areas` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `yang_areas` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `yang_areas` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `yang_areas` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `yang_areas` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `yang_areas` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `yang_areas` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `yang_areas` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `yang_areas` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `yang_areas` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `yang_areas` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `yang_areas` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `yang_areas` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `yang_areas` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `yang_areas` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `yang_areas` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `yang_areas` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `yang_areas` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `yang_areas` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `yang_areas` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `yang_areas` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `yang_areas` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `yang_areas` VALUES ('1696', '202', '通道', '3');
INSERT INTO `yang_areas` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `yang_areas` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `yang_areas` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `yang_areas` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `yang_areas` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `yang_areas` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `yang_areas` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `yang_areas` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `yang_areas` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `yang_areas` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `yang_areas` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `yang_areas` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `yang_areas` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `yang_areas` VALUES ('1710', '204', '城步', '3');
INSERT INTO `yang_areas` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `yang_areas` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `yang_areas` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `yang_areas` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `yang_areas` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `yang_areas` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `yang_areas` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `yang_areas` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `yang_areas` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `yang_areas` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `yang_areas` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `yang_areas` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `yang_areas` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `yang_areas` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `yang_areas` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `yang_areas` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `yang_areas` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `yang_areas` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `yang_areas` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `yang_areas` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `yang_areas` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `yang_areas` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `yang_areas` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `yang_areas` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `yang_areas` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `yang_areas` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `yang_areas` VALUES ('1738', '207', '南县', '3');
INSERT INTO `yang_areas` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `yang_areas` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `yang_areas` VALUES ('1741', '208', '江华', '3');
INSERT INTO `yang_areas` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `yang_areas` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `yang_areas` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `yang_areas` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `yang_areas` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `yang_areas` VALUES ('1747', '208', '道县', '3');
INSERT INTO `yang_areas` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `yang_areas` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `yang_areas` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `yang_areas` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `yang_areas` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `yang_areas` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `yang_areas` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `yang_areas` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `yang_areas` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `yang_areas` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `yang_areas` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `yang_areas` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `yang_areas` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `yang_areas` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `yang_areas` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `yang_areas` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `yang_areas` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `yang_areas` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `yang_areas` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `yang_areas` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `yang_areas` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `yang_areas` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `yang_areas` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `yang_areas` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `yang_areas` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `yang_areas` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `yang_areas` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `yang_areas` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `yang_areas` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `yang_areas` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `yang_areas` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `yang_areas` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `yang_areas` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `yang_areas` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `yang_areas` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `yang_areas` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `yang_areas` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `yang_areas` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `yang_areas` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `yang_areas` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `yang_areas` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `yang_areas` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `yang_areas` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `yang_areas` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `yang_areas` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `yang_areas` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `yang_areas` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `yang_areas` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `yang_areas` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `yang_areas` VALUES ('1800', '214', '长白', '3');
INSERT INTO `yang_areas` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `yang_areas` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `yang_areas` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `yang_areas` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `yang_areas` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `yang_areas` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `yang_areas` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `yang_areas` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `yang_areas` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `yang_areas` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `yang_areas` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `yang_areas` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `yang_areas` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `yang_areas` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `yang_areas` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `yang_areas` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `yang_areas` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `yang_areas` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `yang_areas` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `yang_areas` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `yang_areas` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `yang_areas` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `yang_areas` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `yang_areas` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `yang_areas` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `yang_areas` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `yang_areas` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `yang_areas` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `yang_areas` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `yang_areas` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `yang_areas` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `yang_areas` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `yang_areas` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `yang_areas` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `yang_areas` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `yang_areas` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `yang_areas` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `yang_areas` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `yang_areas` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `yang_areas` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `yang_areas` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `yang_areas` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `yang_areas` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `yang_areas` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `yang_areas` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `yang_areas` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `yang_areas` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `yang_areas` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `yang_areas` VALUES ('1853', '221', '园区', '3');
INSERT INTO `yang_areas` VALUES ('1854', '221', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `yang_areas` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `yang_areas` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `yang_areas` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `yang_areas` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `yang_areas` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `yang_areas` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `yang_areas` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `yang_areas` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `yang_areas` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `yang_areas` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `yang_areas` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `yang_areas` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `yang_areas` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `yang_areas` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `yang_areas` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `yang_areas` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `yang_areas` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `yang_areas` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1876', '222', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `yang_areas` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `yang_areas` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `yang_areas` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `yang_areas` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `yang_areas` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `yang_areas` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `yang_areas` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `yang_areas` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `yang_areas` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `yang_areas` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `yang_areas` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `yang_areas` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `yang_areas` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `yang_areas` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `yang_areas` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `yang_areas` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `yang_areas` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `yang_areas` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `yang_areas` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `yang_areas` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `yang_areas` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `yang_areas` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `yang_areas` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `yang_areas` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `yang_areas` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `yang_areas` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `yang_areas` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `yang_areas` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `yang_areas` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `yang_areas` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `yang_areas` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `yang_areas` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `yang_areas` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `yang_areas` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `yang_areas` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `yang_areas` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `yang_areas` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `yang_areas` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `yang_areas` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `yang_areas` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `yang_areas` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `yang_areas` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `yang_areas` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `yang_areas` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `yang_areas` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `yang_areas` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `yang_areas` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `yang_areas` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `yang_areas` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `yang_areas` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `yang_areas` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `yang_areas` VALUES ('1934', '230', '城区', '3');
INSERT INTO `yang_areas` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `yang_areas` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `yang_areas` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `yang_areas` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `yang_areas` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `yang_areas` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `yang_areas` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `yang_areas` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `yang_areas` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `yang_areas` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `yang_areas` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `yang_areas` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `yang_areas` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `yang_areas` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `yang_areas` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `yang_areas` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `yang_areas` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `yang_areas` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `yang_areas` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `yang_areas` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `yang_areas` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `yang_areas` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `yang_areas` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `yang_areas` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `yang_areas` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `yang_areas` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `yang_areas` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `yang_areas` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `yang_areas` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `yang_areas` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `yang_areas` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `yang_areas` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `yang_areas` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `yang_areas` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `yang_areas` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `yang_areas` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `yang_areas` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `yang_areas` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `yang_areas` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `yang_areas` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `yang_areas` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `yang_areas` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `yang_areas` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `yang_areas` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `yang_areas` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `yang_areas` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `yang_areas` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `yang_areas` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `yang_areas` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `yang_areas` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `yang_areas` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `yang_areas` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `yang_areas` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `yang_areas` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `yang_areas` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `yang_areas` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `yang_areas` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `yang_areas` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `yang_areas` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `yang_areas` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `yang_areas` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `yang_areas` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `yang_areas` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `yang_areas` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `yang_areas` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `yang_areas` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `yang_areas` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `yang_areas` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `yang_areas` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `yang_areas` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `yang_areas` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `yang_areas` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `yang_areas` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `yang_areas` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `yang_areas` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `yang_areas` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `yang_areas` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `yang_areas` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `yang_areas` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `yang_areas` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `yang_areas` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `yang_areas` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `yang_areas` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `yang_areas` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `yang_areas` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `yang_areas` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `yang_areas` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `yang_areas` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `yang_areas` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `yang_areas` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `yang_areas` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `yang_areas` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `yang_areas` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `yang_areas` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `yang_areas` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `yang_areas` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `yang_areas` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `yang_areas` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `yang_areas` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `yang_areas` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `yang_areas` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `yang_areas` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `yang_areas` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `yang_areas` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `yang_areas` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `yang_areas` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `yang_areas` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `yang_areas` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `yang_areas` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `yang_areas` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `yang_areas` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `yang_areas` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `yang_areas` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `yang_areas` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `yang_areas` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `yang_areas` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `yang_areas` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `yang_areas` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `yang_areas` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `yang_areas` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `yang_areas` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `yang_areas` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `yang_areas` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `yang_areas` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `yang_areas` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `yang_areas` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `yang_areas` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `yang_areas` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `yang_areas` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `yang_areas` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `yang_areas` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `yang_areas` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `yang_areas` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `yang_areas` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `yang_areas` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `yang_areas` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `yang_areas` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `yang_areas` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `yang_areas` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `yang_areas` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `yang_areas` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `yang_areas` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `yang_areas` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `yang_areas` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `yang_areas` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `yang_areas` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `yang_areas` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `yang_areas` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `yang_areas` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `yang_areas` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `yang_areas` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `yang_areas` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `yang_areas` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `yang_areas` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `yang_areas` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `yang_areas` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `yang_areas` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `yang_areas` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `yang_areas` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `yang_areas` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `yang_areas` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `yang_areas` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `yang_areas` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `yang_areas` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `yang_areas` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `yang_areas` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `yang_areas` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `yang_areas` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `yang_areas` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `yang_areas` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `yang_areas` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `yang_areas` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `yang_areas` VALUES ('2115', '250', '清原', '3');
INSERT INTO `yang_areas` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `yang_areas` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `yang_areas` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `yang_areas` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `yang_areas` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `yang_areas` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `yang_areas` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `yang_areas` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `yang_areas` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `yang_areas` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `yang_areas` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `yang_areas` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `yang_areas` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `yang_areas` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `yang_areas` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `yang_areas` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `yang_areas` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `yang_areas` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `yang_areas` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `yang_areas` VALUES ('2137', '253', '义县', '3');
INSERT INTO `yang_areas` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `yang_areas` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `yang_areas` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `yang_areas` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `yang_areas` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `yang_areas` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `yang_areas` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `yang_areas` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `yang_areas` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `yang_areas` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `yang_areas` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `yang_areas` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `yang_areas` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `yang_areas` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `yang_areas` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `yang_areas` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `yang_areas` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `yang_areas` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `yang_areas` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `yang_areas` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `yang_areas` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `yang_areas` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `yang_areas` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `yang_areas` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `yang_areas` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `yang_areas` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `yang_areas` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `yang_areas` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `yang_areas` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `yang_areas` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `yang_areas` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `yang_areas` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `yang_areas` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `yang_areas` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `yang_areas` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `yang_areas` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `yang_areas` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `yang_areas` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `yang_areas` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `yang_areas` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `yang_areas` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `yang_areas` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `yang_areas` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `yang_areas` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `yang_areas` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `yang_areas` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `yang_areas` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `yang_areas` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `yang_areas` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `yang_areas` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `yang_areas` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `yang_areas` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `yang_areas` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `yang_areas` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `yang_areas` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `yang_areas` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `yang_areas` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `yang_areas` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `yang_areas` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `yang_areas` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `yang_areas` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `yang_areas` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `yang_areas` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `yang_areas` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `yang_areas` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `yang_areas` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `yang_areas` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `yang_areas` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `yang_areas` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `yang_areas` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `yang_areas` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `yang_areas` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `yang_areas` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `yang_areas` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `yang_areas` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `yang_areas` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `yang_areas` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `yang_areas` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `yang_areas` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `yang_areas` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `yang_areas` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `yang_areas` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `yang_areas` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `yang_areas` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `yang_areas` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `yang_areas` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `yang_areas` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `yang_areas` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `yang_areas` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `yang_areas` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `yang_areas` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `yang_areas` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `yang_areas` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `yang_areas` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `yang_areas` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `yang_areas` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `yang_areas` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `yang_areas` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `yang_areas` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `yang_areas` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `yang_areas` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `yang_areas` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `yang_areas` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `yang_areas` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `yang_areas` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `yang_areas` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `yang_areas` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `yang_areas` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `yang_areas` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `yang_areas` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `yang_areas` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `yang_areas` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `yang_areas` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `yang_areas` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `yang_areas` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `yang_areas` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `yang_areas` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `yang_areas` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `yang_areas` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `yang_areas` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `yang_areas` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `yang_areas` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `yang_areas` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `yang_areas` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `yang_areas` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `yang_areas` VALUES ('2295', '275', '大通', '3');
INSERT INTO `yang_areas` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `yang_areas` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `yang_areas` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `yang_areas` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `yang_areas` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `yang_areas` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `yang_areas` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `yang_areas` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `yang_areas` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `yang_areas` VALUES ('2305', '277', '门源', '3');
INSERT INTO `yang_areas` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `yang_areas` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `yang_areas` VALUES ('2308', '278', '民和', '3');
INSERT INTO `yang_areas` VALUES ('2309', '278', '互助', '3');
INSERT INTO `yang_areas` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `yang_areas` VALUES ('2311', '278', '循化', '3');
INSERT INTO `yang_areas` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `yang_areas` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `yang_areas` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `yang_areas` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `yang_areas` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `yang_areas` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `yang_areas` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `yang_areas` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `yang_areas` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `yang_areas` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `yang_areas` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `yang_areas` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `yang_areas` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `yang_areas` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `yang_areas` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `yang_areas` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `yang_areas` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `yang_areas` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `yang_areas` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `yang_areas` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `yang_areas` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `yang_areas` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `yang_areas` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `yang_areas` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `yang_areas` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `yang_areas` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `yang_areas` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `yang_areas` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `yang_areas` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `yang_areas` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `yang_areas` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `yang_areas` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `yang_areas` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `yang_areas` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `yang_areas` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `yang_areas` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `yang_areas` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `yang_areas` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `yang_areas` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `yang_areas` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `yang_areas` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `yang_areas` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `yang_areas` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `yang_areas` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `yang_areas` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `yang_areas` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `yang_areas` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `yang_areas` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `yang_areas` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `yang_areas` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `yang_areas` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `yang_areas` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `yang_areas` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `yang_areas` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `yang_areas` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `yang_areas` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `yang_areas` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `yang_areas` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `yang_areas` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `yang_areas` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `yang_areas` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `yang_areas` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `yang_areas` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `yang_areas` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `yang_areas` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `yang_areas` VALUES ('2379', '288', '单县', '3');
INSERT INTO `yang_areas` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `yang_areas` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `yang_areas` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `yang_areas` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `yang_areas` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `yang_areas` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `yang_areas` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `yang_areas` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `yang_areas` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `yang_areas` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `yang_areas` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `yang_areas` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `yang_areas` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `yang_areas` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `yang_areas` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `yang_areas` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `yang_areas` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `yang_areas` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `yang_areas` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `yang_areas` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `yang_areas` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `yang_areas` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `yang_areas` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `yang_areas` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `yang_areas` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `yang_areas` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `yang_areas` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `yang_areas` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `yang_areas` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `yang_areas` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `yang_areas` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `yang_areas` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `yang_areas` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `yang_areas` VALUES ('2415', '292', '费县', '3');
INSERT INTO `yang_areas` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `yang_areas` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `yang_areas` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `yang_areas` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `yang_areas` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `yang_areas` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `yang_areas` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `yang_areas` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `yang_areas` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `yang_areas` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `yang_areas` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `yang_areas` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `yang_areas` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `yang_areas` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `yang_areas` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `yang_areas` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `yang_areas` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `yang_areas` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `yang_areas` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `yang_areas` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `yang_areas` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `yang_areas` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `yang_areas` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `yang_areas` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `yang_areas` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `yang_areas` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `yang_areas` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `yang_areas` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `yang_areas` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `yang_areas` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `yang_areas` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `yang_areas` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `yang_areas` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `yang_areas` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `yang_areas` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `yang_areas` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `yang_areas` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `yang_areas` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `yang_areas` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `yang_areas` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `yang_areas` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `yang_areas` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `yang_areas` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `yang_areas` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `yang_areas` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `yang_areas` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `yang_areas` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `yang_areas` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `yang_areas` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `yang_areas` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `yang_areas` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `yang_areas` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `yang_areas` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `yang_areas` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `yang_areas` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `yang_areas` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `yang_areas` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `yang_areas` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `yang_areas` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `yang_areas` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `yang_areas` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `yang_areas` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `yang_areas` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `yang_areas` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `yang_areas` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `yang_areas` VALUES ('2486', '301', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `yang_areas` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `yang_areas` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `yang_areas` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `yang_areas` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `yang_areas` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `yang_areas` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `yang_areas` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `yang_areas` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `yang_areas` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `yang_areas` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `yang_areas` VALUES ('2499', '302', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `yang_areas` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `yang_areas` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `yang_areas` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `yang_areas` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `yang_areas` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `yang_areas` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `yang_areas` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `yang_areas` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `yang_areas` VALUES ('2510', '303', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `yang_areas` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `yang_areas` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `yang_areas` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `yang_areas` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `yang_areas` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `yang_areas` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `yang_areas` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `yang_areas` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `yang_areas` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `yang_areas` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `yang_areas` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `yang_areas` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `yang_areas` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `yang_areas` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `yang_areas` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `yang_areas` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `yang_areas` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `yang_areas` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `yang_areas` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `yang_areas` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `yang_areas` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `yang_areas` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `yang_areas` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `yang_areas` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `yang_areas` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `yang_areas` VALUES ('2537', '305', '古县', '3');
INSERT INTO `yang_areas` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `yang_areas` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `yang_areas` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `yang_areas` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `yang_areas` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `yang_areas` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `yang_areas` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `yang_areas` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `yang_areas` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `yang_areas` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `yang_areas` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `yang_areas` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `yang_areas` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `yang_areas` VALUES ('2551', '306', '临县', '3');
INSERT INTO `yang_areas` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `yang_areas` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `yang_areas` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `yang_areas` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `yang_areas` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `yang_areas` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `yang_areas` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `yang_areas` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `yang_areas` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `yang_areas` VALUES ('2561', '307', '应县', '3');
INSERT INTO `yang_areas` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `yang_areas` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `yang_areas` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `yang_areas` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `yang_areas` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `yang_areas` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `yang_areas` VALUES ('2568', '308', '代县', '3');
INSERT INTO `yang_areas` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `yang_areas` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `yang_areas` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `yang_areas` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `yang_areas` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `yang_areas` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `yang_areas` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `yang_areas` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `yang_areas` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `yang_areas` VALUES ('2578', '309', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `yang_areas` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `yang_areas` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `yang_areas` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `yang_areas` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `yang_areas` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `yang_areas` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `yang_areas` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `yang_areas` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `yang_areas` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `yang_areas` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `yang_areas` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `yang_areas` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `yang_areas` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `yang_areas` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `yang_areas` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `yang_areas` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `yang_areas` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `yang_areas` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `yang_areas` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `yang_areas` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `yang_areas` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `yang_areas` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `yang_areas` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `yang_areas` VALUES ('2607', '311', '户县', '3');
INSERT INTO `yang_areas` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `yang_areas` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `yang_areas` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `yang_areas` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `yang_areas` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `yang_areas` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `yang_areas` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `yang_areas` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `yang_areas` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `yang_areas` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `yang_areas` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `yang_areas` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `yang_areas` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `yang_areas` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `yang_areas` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `yang_areas` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `yang_areas` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `yang_areas` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `yang_areas` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `yang_areas` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `yang_areas` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `yang_areas` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `yang_areas` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `yang_areas` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `yang_areas` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `yang_areas` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `yang_areas` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `yang_areas` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `yang_areas` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `yang_areas` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `yang_areas` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `yang_areas` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `yang_areas` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `yang_areas` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `yang_areas` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `yang_areas` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `yang_areas` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `yang_areas` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `yang_areas` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `yang_areas` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `yang_areas` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `yang_areas` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `yang_areas` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `yang_areas` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `yang_areas` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `yang_areas` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `yang_areas` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `yang_areas` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `yang_areas` VALUES ('2656', '317', '华县', '3');
INSERT INTO `yang_areas` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `yang_areas` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `yang_areas` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `yang_areas` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `yang_areas` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `yang_areas` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `yang_areas` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `yang_areas` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `yang_areas` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `yang_areas` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `yang_areas` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `yang_areas` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `yang_areas` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `yang_areas` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `yang_areas` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `yang_areas` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `yang_areas` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `yang_areas` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `yang_areas` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `yang_areas` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `yang_areas` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `yang_areas` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `yang_areas` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `yang_areas` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `yang_areas` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `yang_areas` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `yang_areas` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `yang_areas` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `yang_areas` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `yang_areas` VALUES ('2686', '319', '富县', '3');
INSERT INTO `yang_areas` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `yang_areas` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `yang_areas` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `yang_areas` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `yang_areas` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `yang_areas` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `yang_areas` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `yang_areas` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `yang_areas` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `yang_areas` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `yang_areas` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `yang_areas` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `yang_areas` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `yang_areas` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `yang_areas` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `yang_areas` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `yang_areas` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `yang_areas` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `yang_areas` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `yang_areas` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `yang_areas` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `yang_areas` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `yang_areas` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `yang_areas` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `yang_areas` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `yang_areas` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `yang_areas` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `yang_areas` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `yang_areas` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `yang_areas` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `yang_areas` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `yang_areas` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `yang_areas` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `yang_areas` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `yang_areas` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `yang_areas` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `yang_areas` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `yang_areas` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `yang_areas` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `yang_areas` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `yang_areas` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `yang_areas` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `yang_areas` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `yang_areas` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `yang_areas` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `yang_areas` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `yang_areas` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `yang_areas` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `yang_areas` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `yang_areas` VALUES ('2759', '323', '安县', '3');
INSERT INTO `yang_areas` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `yang_areas` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `yang_areas` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `yang_areas` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `yang_areas` VALUES ('2764', '324', '理县', '3');
INSERT INTO `yang_areas` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `yang_areas` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `yang_areas` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `yang_areas` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `yang_areas` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `yang_areas` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `yang_areas` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `yang_areas` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `yang_areas` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `yang_areas` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `yang_areas` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `yang_areas` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `yang_areas` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `yang_areas` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `yang_areas` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `yang_areas` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `yang_areas` VALUES ('2781', '326', '达县', '3');
INSERT INTO `yang_areas` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `yang_areas` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `yang_areas` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `yang_areas` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `yang_areas` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `yang_areas` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `yang_areas` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `yang_areas` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `yang_areas` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `yang_areas` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `yang_areas` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `yang_areas` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `yang_areas` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `yang_areas` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `yang_areas` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `yang_areas` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `yang_areas` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `yang_areas` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `yang_areas` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `yang_areas` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `yang_areas` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `yang_areas` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `yang_areas` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `yang_areas` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `yang_areas` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `yang_areas` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `yang_areas` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `yang_areas` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `yang_areas` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `yang_areas` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `yang_areas` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `yang_areas` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `yang_areas` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `yang_areas` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `yang_areas` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `yang_areas` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `yang_areas` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `yang_areas` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `yang_areas` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `yang_areas` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `yang_areas` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `yang_areas` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `yang_areas` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `yang_areas` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `yang_areas` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `yang_areas` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `yang_areas` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `yang_areas` VALUES ('2829', '331', '马边', '3');
INSERT INTO `yang_areas` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `yang_areas` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `yang_areas` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `yang_areas` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `yang_areas` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `yang_areas` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `yang_areas` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `yang_areas` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `yang_areas` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `yang_areas` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `yang_areas` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `yang_areas` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `yang_areas` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `yang_areas` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `yang_areas` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `yang_areas` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `yang_areas` VALUES ('2846', '332', '木里', '3');
INSERT INTO `yang_areas` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `yang_areas` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `yang_areas` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `yang_areas` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `yang_areas` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `yang_areas` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `yang_areas` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `yang_areas` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `yang_areas` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `yang_areas` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `yang_areas` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `yang_areas` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `yang_areas` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `yang_areas` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `yang_areas` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `yang_areas` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `yang_areas` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `yang_areas` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `yang_areas` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `yang_areas` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `yang_areas` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `yang_areas` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `yang_areas` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `yang_areas` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `yang_areas` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `yang_areas` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `yang_areas` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `yang_areas` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `yang_areas` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `yang_areas` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `yang_areas` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `yang_areas` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `yang_areas` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `yang_areas` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `yang_areas` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `yang_areas` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `yang_areas` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `yang_areas` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `yang_areas` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `yang_areas` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `yang_areas` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `yang_areas` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `yang_areas` VALUES ('2890', '339', '高县', '3');
INSERT INTO `yang_areas` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `yang_areas` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `yang_areas` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `yang_areas` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `yang_areas` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `yang_areas` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `yang_areas` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `yang_areas` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `yang_areas` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `yang_areas` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `yang_areas` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `yang_areas` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `yang_areas` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `yang_areas` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `yang_areas` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `yang_areas` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `yang_areas` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `yang_areas` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `yang_areas` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `yang_areas` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `yang_areas` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `yang_areas` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `yang_areas` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `yang_areas` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `yang_areas` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `yang_areas` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `yang_areas` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `yang_areas` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `yang_areas` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `yang_areas` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `yang_areas` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `yang_areas` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `yang_areas` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `yang_areas` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `yang_areas` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `yang_areas` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `yang_areas` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `yang_areas` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `yang_areas` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `yang_areas` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `yang_areas` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `yang_areas` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `yang_areas` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `yang_areas` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `yang_areas` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `yang_areas` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `yang_areas` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `yang_areas` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `yang_areas` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `yang_areas` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `yang_areas` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `yang_areas` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `yang_areas` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `yang_areas` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `yang_areas` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `yang_areas` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `yang_areas` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `yang_areas` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `yang_areas` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `yang_areas` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `yang_areas` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `yang_areas` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `yang_areas` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `yang_areas` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `yang_areas` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `yang_areas` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `yang_areas` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `yang_areas` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `yang_areas` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `yang_areas` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `yang_areas` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `yang_areas` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `yang_areas` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `yang_areas` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `yang_areas` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `yang_areas` VALUES ('2970', '348', '索县', '3');
INSERT INTO `yang_areas` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `yang_areas` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `yang_areas` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `yang_areas` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `yang_areas` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `yang_areas` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `yang_areas` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `yang_areas` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `yang_areas` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `yang_areas` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `yang_areas` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `yang_areas` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `yang_areas` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `yang_areas` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `yang_areas` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `yang_areas` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `yang_areas` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `yang_areas` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `yang_areas` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `yang_areas` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `yang_areas` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `yang_areas` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `yang_areas` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `yang_areas` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `yang_areas` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `yang_areas` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `yang_areas` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `yang_areas` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `yang_areas` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `yang_areas` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `yang_areas` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `yang_areas` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `yang_areas` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `yang_areas` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `yang_areas` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `yang_areas` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `yang_areas` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `yang_areas` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `yang_areas` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `yang_areas` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `yang_areas` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `yang_areas` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `yang_areas` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `yang_areas` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `yang_areas` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `yang_areas` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `yang_areas` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `yang_areas` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `yang_areas` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `yang_areas` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `yang_areas` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `yang_areas` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `yang_areas` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `yang_areas` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `yang_areas` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `yang_areas` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `yang_areas` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `yang_areas` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `yang_areas` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `yang_areas` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `yang_areas` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `yang_areas` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `yang_areas` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `yang_areas` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `yang_areas` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `yang_areas` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `yang_areas` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `yang_areas` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `yang_areas` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `yang_areas` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `yang_areas` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `yang_areas` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `yang_areas` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `yang_areas` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `yang_areas` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `yang_areas` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `yang_areas` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `yang_areas` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `yang_areas` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `yang_areas` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `yang_areas` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `yang_areas` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `yang_areas` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `yang_areas` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `yang_areas` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `yang_areas` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `yang_areas` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `yang_areas` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `yang_areas` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `yang_areas` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `yang_areas` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `yang_areas` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `yang_areas` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `yang_areas` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `yang_areas` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `yang_areas` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `yang_areas` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `yang_areas` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `yang_areas` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `yang_areas` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `yang_areas` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `yang_areas` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `yang_areas` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `yang_areas` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `yang_areas` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `yang_areas` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `yang_areas` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `yang_areas` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `yang_areas` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `yang_areas` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `yang_areas` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `yang_areas` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `yang_areas` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `yang_areas` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `yang_areas` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `yang_areas` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `yang_areas` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `yang_areas` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `yang_areas` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `yang_areas` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `yang_areas` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `yang_areas` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `yang_areas` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `yang_areas` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `yang_areas` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `yang_areas` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `yang_areas` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `yang_areas` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `yang_areas` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `yang_areas` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `yang_areas` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `yang_areas` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `yang_areas` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `yang_areas` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `yang_areas` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `yang_areas` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `yang_areas` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `yang_areas` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `yang_areas` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `yang_areas` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `yang_areas` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `yang_areas` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `yang_areas` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `yang_areas` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `yang_areas` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `yang_areas` VALUES ('3121', '369', '景东', '3');
INSERT INTO `yang_areas` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `yang_areas` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `yang_areas` VALUES ('3124', '369', '江城', '3');
INSERT INTO `yang_areas` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `yang_areas` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `yang_areas` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `yang_areas` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `yang_areas` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `yang_areas` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `yang_areas` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `yang_areas` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `yang_areas` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `yang_areas` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `yang_areas` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `yang_areas` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `yang_areas` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `yang_areas` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `yang_areas` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `yang_areas` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `yang_areas` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `yang_areas` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `yang_areas` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `yang_areas` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `yang_areas` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `yang_areas` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `yang_areas` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `yang_areas` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `yang_areas` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `yang_areas` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `yang_areas` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `yang_areas` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `yang_areas` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `yang_areas` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `yang_areas` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `yang_areas` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `yang_areas` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `yang_areas` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `yang_areas` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `yang_areas` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `yang_areas` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `yang_areas` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `yang_areas` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `yang_areas` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `yang_areas` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `yang_areas` VALUES ('3167', '375', '维西', '3');
INSERT INTO `yang_areas` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `yang_areas` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `yang_areas` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `yang_areas` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `yang_areas` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `yang_areas` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `yang_areas` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `yang_areas` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `yang_areas` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `yang_areas` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `yang_areas` VALUES ('3178', '376', '金平', '3');
INSERT INTO `yang_areas` VALUES ('3179', '376', '河口', '3');
INSERT INTO `yang_areas` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `yang_areas` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `yang_areas` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3183', '377', '云县', '3');
INSERT INTO `yang_areas` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `yang_areas` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `yang_areas` VALUES ('3186', '377', '双江', '3');
INSERT INTO `yang_areas` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `yang_areas` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `yang_areas` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `yang_areas` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `yang_areas` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `yang_areas` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `yang_areas` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `yang_areas` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `yang_areas` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `yang_areas` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `yang_areas` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `yang_areas` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `yang_areas` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `yang_areas` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `yang_areas` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `yang_areas` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `yang_areas` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `yang_areas` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `yang_areas` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `yang_areas` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `yang_areas` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `yang_areas` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `yang_areas` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `yang_areas` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `yang_areas` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `yang_areas` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `yang_areas` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `yang_areas` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `yang_areas` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `yang_areas` VALUES ('3216', '381', '新平', '3');
INSERT INTO `yang_areas` VALUES ('3217', '381', '元江', '3');
INSERT INTO `yang_areas` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `yang_areas` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `yang_areas` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `yang_areas` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `yang_areas` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `yang_areas` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `yang_areas` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `yang_areas` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `yang_areas` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `yang_areas` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `yang_areas` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `yang_areas` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `yang_areas` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `yang_areas` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `yang_areas` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `yang_areas` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `yang_areas` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `yang_areas` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `yang_areas` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `yang_areas` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `yang_areas` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `yang_areas` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `yang_areas` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `yang_areas` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `yang_areas` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `yang_areas` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `yang_areas` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `yang_areas` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `yang_areas` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `yang_areas` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `yang_areas` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `yang_areas` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `yang_areas` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `yang_areas` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `yang_areas` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `yang_areas` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `yang_areas` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `yang_areas` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `yang_areas` VALUES ('3258', '386', '市区', '3');
INSERT INTO `yang_areas` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `yang_areas` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `yang_areas` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `yang_areas` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `yang_areas` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `yang_areas` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `yang_areas` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `yang_areas` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `yang_areas` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `yang_areas` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `yang_areas` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `yang_areas` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `yang_areas` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `yang_areas` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `yang_areas` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `yang_areas` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `yang_areas` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `yang_areas` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `yang_areas` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `yang_areas` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `yang_areas` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `yang_areas` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `yang_areas` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `yang_areas` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `yang_areas` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `yang_areas` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `yang_areas` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `yang_areas` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `yang_areas` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `yang_areas` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `yang_areas` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `yang_areas` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `yang_areas` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `yang_areas` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `yang_areas` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `yang_areas` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `yang_areas` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `yang_areas` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `yang_areas` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `yang_areas` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `yang_areas` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `yang_areas` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `yang_areas` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `yang_areas` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `yang_areas` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `yang_areas` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `yang_areas` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `yang_areas` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `yang_areas` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `yang_areas` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `yang_areas` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `yang_areas` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `yang_areas` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `yang_areas` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `yang_areas` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `yang_areas` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `yang_areas` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `yang_areas` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `yang_areas` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `yang_areas` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `yang_areas` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `yang_areas` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `yang_areas` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `yang_areas` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `yang_areas` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `yang_areas` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `yang_areas` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `yang_areas` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `yang_areas` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `yang_areas` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `yang_areas` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `yang_areas` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `yang_areas` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `yang_areas` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `yang_areas` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `yang_areas` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `yang_areas` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `yang_areas` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `yang_areas` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `yang_areas` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `yang_areas` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `yang_areas` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `yang_areas` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `yang_areas` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `yang_areas` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `yang_areas` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `yang_areas` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `yang_areas` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `yang_areas` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `yang_areas` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `yang_areas` VALUES ('3355', '394', '开县', '3');
INSERT INTO `yang_areas` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `yang_areas` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `yang_areas` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `yang_areas` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `yang_areas` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `yang_areas` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `yang_areas` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `yang_areas` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `yang_areas` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `yang_areas` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `yang_areas` VALUES ('3366', '395', '东区', '3');
INSERT INTO `yang_areas` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `yang_areas` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `yang_areas` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `yang_areas` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `yang_areas` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `yang_areas` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `yang_areas` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `yang_areas` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `yang_areas` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `yang_areas` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `yang_areas` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `yang_areas` VALUES ('3378', '395', '北区', '3');
INSERT INTO `yang_areas` VALUES ('3379', '395', '南区', '3');
INSERT INTO `yang_areas` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `yang_areas` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `yang_areas` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `yang_areas` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `yang_areas` VALUES ('3384', '397', '台北', '3');
INSERT INTO `yang_areas` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `yang_areas` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `yang_areas` VALUES ('3387', '397', '台中', '3');
INSERT INTO `yang_areas` VALUES ('3388', '397', '台南', '3');
INSERT INTO `yang_areas` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `yang_areas` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `yang_areas` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `yang_areas` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `yang_areas` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `yang_areas` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `yang_areas` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `yang_areas` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `yang_areas` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `yang_areas` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `yang_areas` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `yang_areas` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `yang_areas` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `yang_areas` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `yang_areas` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `yang_areas` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `yang_areas` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `yang_areas` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `yang_areas` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `yang_areas` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `yang_areas` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `yang_areas` VALUES ('602', '61', '平和县', '3');
INSERT INTO `yang_areas` VALUES ('603', '61', '华安县', '3');
INSERT INTO `yang_areas` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `yang_areas` VALUES ('605', '62', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `yang_areas` VALUES ('607', '62', '西固区', '3');
INSERT INTO `yang_areas` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `yang_areas` VALUES ('609', '62', '红古区', '3');
INSERT INTO `yang_areas` VALUES ('610', '62', '永登县', '3');
INSERT INTO `yang_areas` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `yang_areas` VALUES ('612', '63', '白银区', '3');
INSERT INTO `yang_areas` VALUES ('613', '63', '平川区', '3');
INSERT INTO `yang_areas` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `yang_areas` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `yang_areas` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `yang_areas` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `yang_areas` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `yang_areas` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `yang_areas` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `yang_areas` VALUES ('621', '64', '漳县', '3');
INSERT INTO `yang_areas` VALUES ('622', '64', '岷县', '3');
INSERT INTO `yang_areas` VALUES ('623', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('624', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('625', '65', '合作市', '3');
INSERT INTO `yang_areas` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `yang_areas` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `yang_areas` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `yang_areas` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `yang_areas` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `yang_areas` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `yang_areas` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `yang_areas` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `yang_areas` VALUES ('634', '67', '金川区', '3');
INSERT INTO `yang_areas` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `yang_areas` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `yang_areas` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `yang_areas` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `yang_areas` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `yang_areas` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `yang_areas` VALUES ('641', '68', '肃北', '3');
INSERT INTO `yang_areas` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `yang_areas` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `yang_areas` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `yang_areas` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `yang_areas` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `yang_areas` VALUES ('647', '69', '广河县', '3');
INSERT INTO `yang_areas` VALUES ('648', '69', '和政县', '3');
INSERT INTO `yang_areas` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `yang_areas` VALUES ('650', '69', '积石山', '3');
INSERT INTO `yang_areas` VALUES ('651', '70', '成县', '3');
INSERT INTO `yang_areas` VALUES ('652', '70', '徽县', '3');
INSERT INTO `yang_areas` VALUES ('653', '70', '康县', '3');
INSERT INTO `yang_areas` VALUES ('654', '70', '礼县', '3');
INSERT INTO `yang_areas` VALUES ('655', '70', '两当县', '3');
INSERT INTO `yang_areas` VALUES ('656', '70', '文县', '3');
INSERT INTO `yang_areas` VALUES ('657', '70', '西和县', '3');
INSERT INTO `yang_areas` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `yang_areas` VALUES ('659', '70', '武都区', '3');
INSERT INTO `yang_areas` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `yang_areas` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `yang_areas` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `yang_areas` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `yang_areas` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `yang_areas` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `yang_areas` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `yang_areas` VALUES ('667', '72', '合水县', '3');
INSERT INTO `yang_areas` VALUES ('668', '72', '华池县', '3');
INSERT INTO `yang_areas` VALUES ('669', '72', '环县', '3');
INSERT INTO `yang_areas` VALUES ('670', '72', '宁县', '3');
INSERT INTO `yang_areas` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `yang_areas` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `yang_areas` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `yang_areas` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `yang_areas` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `yang_areas` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `yang_areas` VALUES ('677', '73', '清水县', '3');
INSERT INTO `yang_areas` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `yang_areas` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `yang_areas` VALUES ('680', '73', '武山县', '3');
INSERT INTO `yang_areas` VALUES ('681', '73', '张家川', '3');
INSERT INTO `yang_areas` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `yang_areas` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `yang_areas` VALUES ('684', '74', '天祝', '3');
INSERT INTO `yang_areas` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `yang_areas` VALUES ('686', '75', '高台县', '3');
INSERT INTO `yang_areas` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `yang_areas` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `yang_areas` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `yang_areas` VALUES ('690', '75', '肃南', '3');
INSERT INTO `yang_areas` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `yang_areas` VALUES ('692', '76', '从化市', '3');
INSERT INTO `yang_areas` VALUES ('693', '76', '天河区', '3');
INSERT INTO `yang_areas` VALUES ('694', '76', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('695', '76', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `yang_areas` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `yang_areas` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `yang_areas` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `yang_areas` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `yang_areas` VALUES ('701', '76', '花都区', '3');
INSERT INTO `yang_areas` VALUES ('702', '76', '增城区', '3');
INSERT INTO `yang_areas` VALUES ('703', '76', '从化区', '3');
INSERT INTO `yang_areas` VALUES ('704', '76', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('705', '77', '福田区', '3');
INSERT INTO `yang_areas` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `yang_areas` VALUES ('707', '77', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `yang_areas` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `yang_areas` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `yang_areas` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `yang_areas` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `yang_areas` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `yang_areas` VALUES ('714', '79', '南城区', '3');
INSERT INTO `yang_areas` VALUES ('715', '79', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('716', '79', '万江区', '3');
INSERT INTO `yang_areas` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `yang_areas` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `yang_areas` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `yang_areas` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `yang_areas` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `yang_areas` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `yang_areas` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `yang_areas` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `yang_areas` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `yang_areas` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `yang_areas` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `yang_areas` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `yang_areas` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `yang_areas` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `yang_areas` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `yang_areas` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `yang_areas` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `yang_areas` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `yang_areas` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `yang_areas` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `yang_areas` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `yang_areas` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `yang_areas` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `yang_areas` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `yang_areas` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `yang_areas` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `yang_areas` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `yang_areas` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `yang_areas` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `yang_areas` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `yang_areas` VALUES ('747', '80', '南海区', '3');
INSERT INTO `yang_areas` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `yang_areas` VALUES ('749', '80', '三水区', '3');
INSERT INTO `yang_areas` VALUES ('750', '80', '高明区', '3');
INSERT INTO `yang_areas` VALUES ('751', '81', '东源县', '3');
INSERT INTO `yang_areas` VALUES ('752', '81', '和平县', '3');
INSERT INTO `yang_areas` VALUES ('753', '81', '源城区', '3');
INSERT INTO `yang_areas` VALUES ('754', '81', '连平县', '3');
INSERT INTO `yang_areas` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `yang_areas` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `yang_areas` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `yang_areas` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `yang_areas` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `yang_areas` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `yang_areas` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `yang_areas` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `yang_areas` VALUES ('763', '83', '江海区', '3');
INSERT INTO `yang_areas` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `yang_areas` VALUES ('765', '83', '新会区', '3');
INSERT INTO `yang_areas` VALUES ('766', '83', '台山市', '3');
INSERT INTO `yang_areas` VALUES ('767', '83', '开平市', '3');
INSERT INTO `yang_areas` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `yang_areas` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `yang_areas` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `yang_areas` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `yang_areas` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `yang_areas` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `yang_areas` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `yang_areas` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `yang_areas` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `yang_areas` VALUES ('777', '85', '高州市', '3');
INSERT INTO `yang_areas` VALUES ('778', '85', '化州市', '3');
INSERT INTO `yang_areas` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `yang_areas` VALUES ('780', '85', '电白县', '3');
INSERT INTO `yang_areas` VALUES ('781', '86', '梅县', '3');
INSERT INTO `yang_areas` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `yang_areas` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `yang_areas` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `yang_areas` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `yang_areas` VALUES ('786', '86', '五华县', '3');
INSERT INTO `yang_areas` VALUES ('787', '86', '平远县', '3');
INSERT INTO `yang_areas` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `yang_areas` VALUES ('789', '87', '清城区', '3');
INSERT INTO `yang_areas` VALUES ('790', '87', '英德市', '3');
INSERT INTO `yang_areas` VALUES ('791', '87', '连州市', '3');
INSERT INTO `yang_areas` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `yang_areas` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `yang_areas` VALUES ('794', '87', '清新县', '3');
INSERT INTO `yang_areas` VALUES ('795', '87', '连山', '3');
INSERT INTO `yang_areas` VALUES ('796', '87', '连南', '3');
INSERT INTO `yang_areas` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `yang_areas` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `yang_areas` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `yang_areas` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `yang_areas` VALUES ('801', '88', '金平区', '3');
INSERT INTO `yang_areas` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `yang_areas` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `yang_areas` VALUES ('804', '89', '城区', '3');
INSERT INTO `yang_areas` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `yang_areas` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `yang_areas` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `yang_areas` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `yang_areas` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `yang_areas` VALUES ('810', '90', '武江区', '3');
INSERT INTO `yang_areas` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `yang_areas` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `yang_areas` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `yang_areas` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `yang_areas` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `yang_areas` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `yang_areas` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `yang_areas` VALUES ('818', '90', '乳源', '3');
INSERT INTO `yang_areas` VALUES ('819', '91', '江城区', '3');
INSERT INTO `yang_areas` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `yang_areas` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `yang_areas` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `yang_areas` VALUES ('823', '92', '云城区', '3');
INSERT INTO `yang_areas` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `yang_areas` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `yang_areas` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `yang_areas` VALUES ('827', '92', '云安县', '3');
INSERT INTO `yang_areas` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `yang_areas` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `yang_areas` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `yang_areas` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `yang_areas` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `yang_areas` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `yang_areas` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `yang_areas` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `yang_areas` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `yang_areas` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `yang_areas` VALUES ('838', '94', '高要市', '3');
INSERT INTO `yang_areas` VALUES ('839', '94', '四会市', '3');
INSERT INTO `yang_areas` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `yang_areas` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `yang_areas` VALUES ('842', '94', '封开县', '3');
INSERT INTO `yang_areas` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `yang_areas` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `yang_areas` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `yang_areas` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `yang_areas` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `yang_areas` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `yang_areas` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `yang_areas` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `yang_areas` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `yang_areas` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `yang_areas` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `yang_areas` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `yang_areas` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `yang_areas` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `yang_areas` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `yang_areas` VALUES ('858', '97', '江南区', '3');
INSERT INTO `yang_areas` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `yang_areas` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `yang_areas` VALUES ('861', '97', '马山县', '3');
INSERT INTO `yang_areas` VALUES ('862', '97', '上林县', '3');
INSERT INTO `yang_areas` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `yang_areas` VALUES ('864', '97', '横县', '3');
INSERT INTO `yang_areas` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `yang_areas` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `yang_areas` VALUES ('867', '98', '象山区', '3');
INSERT INTO `yang_areas` VALUES ('868', '98', '七星区', '3');
INSERT INTO `yang_areas` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `yang_areas` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `yang_areas` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `yang_areas` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `yang_areas` VALUES ('873', '98', '全州县', '3');
INSERT INTO `yang_areas` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `yang_areas` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `yang_areas` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `yang_areas` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `yang_areas` VALUES ('878', '98', '资源县', '3');
INSERT INTO `yang_areas` VALUES ('879', '98', '永福县', '3');
INSERT INTO `yang_areas` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `yang_areas` VALUES ('881', '98', '恭城', '3');
INSERT INTO `yang_areas` VALUES ('882', '99', '右江区', '3');
INSERT INTO `yang_areas` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `yang_areas` VALUES ('884', '99', '平果县', '3');
INSERT INTO `yang_areas` VALUES ('885', '99', '西林县', '3');
INSERT INTO `yang_areas` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `yang_areas` VALUES ('887', '99', '德保县', '3');
INSERT INTO `yang_areas` VALUES ('888', '99', '田林县', '3');
INSERT INTO `yang_areas` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `yang_areas` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `yang_areas` VALUES ('891', '99', '田东县', '3');
INSERT INTO `yang_areas` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `yang_areas` VALUES ('893', '99', '隆林', '3');
INSERT INTO `yang_areas` VALUES ('894', '100', '海城区', '3');
INSERT INTO `yang_areas` VALUES ('895', '100', '银海区', '3');
INSERT INTO `yang_areas` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `yang_areas` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `yang_areas` VALUES ('898', '101', '江州区', '3');
INSERT INTO `yang_areas` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `yang_areas` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `yang_areas` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `yang_areas` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `yang_areas` VALUES ('903', '101', '大新县', '3');
INSERT INTO `yang_areas` VALUES ('904', '101', '天等县', '3');
INSERT INTO `yang_areas` VALUES ('905', '102', '港口区', '3');
INSERT INTO `yang_areas` VALUES ('906', '102', '防城区', '3');
INSERT INTO `yang_areas` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `yang_areas` VALUES ('908', '102', '上思县', '3');
INSERT INTO `yang_areas` VALUES ('909', '103', '港北区', '3');
INSERT INTO `yang_areas` VALUES ('910', '103', '港南区', '3');
INSERT INTO `yang_areas` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `yang_areas` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `yang_areas` VALUES ('913', '103', '平南县', '3');
INSERT INTO `yang_areas` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `yang_areas` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `yang_areas` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `yang_areas` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `yang_areas` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `yang_areas` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `yang_areas` VALUES ('920', '104', '都安', '3');
INSERT INTO `yang_areas` VALUES ('921', '104', '罗城', '3');
INSERT INTO `yang_areas` VALUES ('922', '104', '巴马', '3');
INSERT INTO `yang_areas` VALUES ('923', '104', '环江', '3');
INSERT INTO `yang_areas` VALUES ('924', '104', '大化', '3');
INSERT INTO `yang_areas` VALUES ('925', '105', '八步区', '3');
INSERT INTO `yang_areas` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `yang_areas` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `yang_areas` VALUES ('928', '105', '富川', '3');
INSERT INTO `yang_areas` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `yang_areas` VALUES ('930', '106', '合山市', '3');
INSERT INTO `yang_areas` VALUES ('931', '106', '象州县', '3');
INSERT INTO `yang_areas` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `yang_areas` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `yang_areas` VALUES ('934', '106', '金秀', '3');
INSERT INTO `yang_areas` VALUES ('935', '107', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `yang_areas` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `yang_areas` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `yang_areas` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `yang_areas` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `yang_areas` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `yang_areas` VALUES ('942', '107', '融安县', '3');
INSERT INTO `yang_areas` VALUES ('943', '107', '融水', '3');
INSERT INTO `yang_areas` VALUES ('944', '107', '三江', '3');
INSERT INTO `yang_areas` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `yang_areas` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `yang_areas` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `yang_areas` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `yang_areas` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `yang_areas` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `yang_areas` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `yang_areas` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `yang_areas` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `yang_areas` VALUES ('954', '109', '藤县', '3');
INSERT INTO `yang_areas` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `yang_areas` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `yang_areas` VALUES ('957', '110', '北流市', '3');
INSERT INTO `yang_areas` VALUES ('958', '110', '容县', '3');
INSERT INTO `yang_areas` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `yang_areas` VALUES ('960', '110', '博白县', '3');
INSERT INTO `yang_areas` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `yang_areas` VALUES ('962', '111', '南明区', '3');
INSERT INTO `yang_areas` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `yang_areas` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `yang_areas` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `yang_areas` VALUES ('966', '111', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('967', '111', '小河区', '3');
INSERT INTO `yang_areas` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `yang_areas` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `yang_areas` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `yang_areas` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `yang_areas` VALUES ('972', '111', '修文县', '3');
INSERT INTO `yang_areas` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `yang_areas` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `yang_areas` VALUES ('975', '112', '关岭', '3');
INSERT INTO `yang_areas` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `yang_areas` VALUES ('977', '112', '紫云', '3');
INSERT INTO `yang_areas` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `yang_areas` VALUES ('979', '112', '普定县', '3');
INSERT INTO `yang_areas` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `yang_areas` VALUES ('981', '113', '大方县', '3');
INSERT INTO `yang_areas` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `yang_areas` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `yang_areas` VALUES ('984', '113', '织金县', '3');
INSERT INTO `yang_areas` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `yang_areas` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `yang_areas` VALUES ('987', '113', '威宁', '3');
INSERT INTO `yang_areas` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `yang_areas` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `yang_areas` VALUES ('990', '114', '水城县', '3');
INSERT INTO `yang_areas` VALUES ('991', '114', '盘县', '3');
INSERT INTO `yang_areas` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `yang_areas` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `yang_areas` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `yang_areas` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `yang_areas` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `yang_areas` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `yang_areas` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `yang_areas` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `yang_areas` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `yang_areas` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `yang_areas` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `yang_areas` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `yang_areas` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `yang_areas` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `yang_areas` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `yang_areas` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `yang_areas` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `yang_areas` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `yang_areas` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `yang_areas` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `yang_areas` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `yang_areas` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `yang_areas` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `yang_areas` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `yang_areas` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `yang_areas` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `yang_areas` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `yang_areas` VALUES ('1019', '116', '三都', '3');
INSERT INTO `yang_areas` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `yang_areas` VALUES ('3437', '1', '其他', '1');

-- ----------------------------
-- Table structure for `yang_article`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article`;
CREATE TABLE `yang_article` (
  `article_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_id` int(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` mediumtext NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sign` int(4) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=381 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article
-- ----------------------------
INSERT INTO `yang_article` VALUES ('27', '1', '禅班清香（生茶）,龙雀一味（生茶）中签公告', '<p>\r\n	<span style=\"font-size:14px;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n		禅班清香（生茶）,龙雀一味（生茶）中签公告\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n		发布日期：2017-12-22   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:80px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:80px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">关于《禅班清香（生茶）》,《龙雀一味（生茶）》普洱茶</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:80px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">的申购中签公告</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心于2017年12月19日对挂牌藏品，《禅班清香（生茶）》,《龙雀一味（生茶）》普洱茶进行定价发行申购。现将中签结果公告如下：</span> \r\n</p>\r\n<h1>\r\n</h1>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\">一、中签分配统计表</span> \r\n</h1>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680007</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">禅班清香（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">2856</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">238010</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span> \r\n</p>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680008</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">龙雀一味（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">17136</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">1623082</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"></span> \r\n</h1>\r\n<h1>\r\n</h1>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\">二、出金时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span> \r\n</p>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"><br />\r\n三、挂牌交易时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">上述藏品将于2017年12月23日挂牌上市交易。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">特此公告<br />\r\n<br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span></span><span style=\"font-size:medium;\">商品交易中心</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">2017年12月22日<br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<br />\r\n</p>\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"> </span><span style=\"font-size:14px;\"> </span> \r\n	</p>', '1493482467', '0', '', '0');
INSERT INTO `yang_article` VALUES ('340', '3', '比特币的末日？如果谣言可信，那么比特币已死过N次', '货币。根据作者所言，针对攻击比特币网络的一系列的“全球自动化测试”已经启动，它们将会给世界证明，数字资产“不能被存储财富。”<br />\r\n<br />\r\n“是时候采取方式设计一个更好的，更易控制的，更安全的系统来作为全球数字货币了，”所谓的作者Forcecoin解释。<br />\r\n<br />\r\n然而12号对比特币网络的攻击并没有出现，根据 Godaddy提供数据，该团队的网站URL也是一个不知所属的域名。此外，虽然这个问题文章已被删除，但是通过存档还是保存了下来。认真看这个帖子就会发现，作者要么是故意在戏耍比特币社区，要么就是根本不懂比特币协议。<br />\r\n<br />\r\n例如，该文章邀请全世界的黑客去偷盗Forcecoin代码，就像Mt Gox代码被泄漏一样。然而这个以前的交易所代码泄漏和比特币网络本身没有任何关系，这无可争议。该文章陈述，如果黑客成功侵入了Salesforce，并偷盗了ForceCoin 代码，他们作为Salesforce麻省理工学院的ForceCoin非营利组织团队，他们将承认失败，承认比特币获胜。<br />\r\n<br />\r\n根据主流媒体和怀疑论者，比特币已经死过N次<br />\r\n<br />\r\n根据比特币比特币讣告，以及主流媒体的报道，数字资产已经死117次了。Linkedin文章的题目为“比特币是泡沫。它会在2016年12月12日周一崩盘。”它是最近有记录的宣称比特币末日的事件。其他过于夸张宣称比特币死亡的报道也在彭博社，新闻周刊，华尔街日报等媒体上出现过。自从Mt Gox倒闭，Mike Hearn离开，Bitfinex被黑客攻击后，比特币末日的负面消息就接二连三的出现。<br />\r\n<br />\r\n大部分的加密爱好者很容易忽略这种比特币失败的标题新闻。Linkedin的文章/骗局和以往的这些新闻没有什么不同，观点十分不合逻辑。然而主流媒体和那些不懂比特币的人很容易被这种标题的新闻左右。想想你有多少朋友在说，“哦，我认为比特币失败了。”<br />\r\n<br />\r\nForcecoin背后的所谓团队看起来根本就不存在，12月12日比特币网络没有崩溃，也没有“压力测试”出现。事实上，比特币的价格在12日涨到了779美元，达到了今年的最高价格。<br />', '1484962141', '0', '', '0');
INSERT INTO `yang_article` VALUES ('380', '2', '2017上海国资改革划重点：2-3家企业上市，10家员工持股试点', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	2017上海国资改革划重点：2-3家企业上市，10家员工持股试点\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-02-17   来源：21世纪经济报道\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		21世纪经济报道特约撰稿张赛男上海报道\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上海国改路线\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		编者按：2月16日，作为国企改革排头兵的上海召开了国资国企年度工作会议，对2017年的工作进行部署，明确“深化国企改革发展混合所有制经济为首位”。上海国企改革市场化程度较高，被列为国企改革排头兵。改革伊始便多路径大尺度创新，从上海国资委联手央企为三爱富量身定做“三元并购”重组新模式，再到上周华鑫股份打破此前市场关于注入集团地产业务预期，选择注入证券类资产，这些密集浮现的案例都折射出上海国资改革已打破常规套路，以更市场化的重组方式盘活旗下资产。进入国企改革“施工期”，上海的动作被全国广泛关注，是继续求变还是选择求稳？正在等待上海给出答案。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上海明确2017年要积极推进2-3家科研院所深化改革建立多元化投资、市场化经营机制，2-3家企业集团整体上市或核心业务资产上市，稳妥推进10家符合条件的混合所有制企业试点员工持股。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上海新一轮深化国企改革的大幕已经开启。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2月16日下午，备受关注的2017年上海国资大会召开，会议部署了新一年的上海国资改革工作重点，在包括发展混合所有制经济、完善国资运营平台运作机制以及健全激励机制等方面都有重要部署。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在混改方面，上海明确2017年要积极推进2-3家科研院所深化改革建立多元化投资、市场化经营机制，2-3家企业集团整体上市或核心业务资产上市，稳妥推进10家符合条件的混合所有制企业试点员工持股等。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中国企业改革研究院研究员、国资专家李锦在接受21世纪经济报道记者采访时表示，上海作为地方国资改革重镇，无论是在力度还是前瞻性上，都远远走在全国前列，但在传统产业的结构调整、上市公司壳资源利用、打造具有国际竞争力的企业上，还需要加大力度。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		深化混合所有制改革\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		深化国企改革发展混合所有制经济在2017年上海国资工作任务中排在首位。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上述会议提出，2017年上海将积极推进2-3家科研院所深化改革建立多元化投资、市场化经营机制，2-3家企业集团整体上市或核心业务资产上市。功能类、公共服务类企业中的竞争性业务资产，利用现有上市平台引入各类资本，提高资源配置效率和公共服务能力。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		还要稳妥推进10家符合条件的混合所有制企业试点员工持股。完成建科院集团增资扩股，引入战略投资者。以国家油气改革为契机，推进上海市燃气行业企业改革，适时实施混合所有制改革。指导集团公司推进所属企业的公司制改制。积极推进上海市供销社系统综合改革工作，完成联交所事转企改制，研究推进科研院所多元化改革。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		要放大资本市场正向效应，推动境内外优质资源主动对接资本市场，支持国有股东和上市公司通过证券市场进行股权运作、债券市场直接融资、产权市场盘活存量等方式提高资产收益。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		复旦大学企业研究所所长张晖明在接受21世纪经济报道记者采访时表示，从深化混改的角度出发，上海可以做好以下三方面的工作。一是“层次”，如根据分类特点，允许一些市属层次的企业可以整体上市；二是“对象”，择优选择战略投资者；三是优化股权结构，因为股权结构的科学安排是一个企业改制成长的重要起点，决定了后续的治理结构。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在优化国资布局方面，上海曾提出，到“十三五”末将国资委系统85%以上的国资集中在战略性新兴产业、先进制造业与现代服务业、基础设施与民生保障等关键领域和优势产业。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		此次会议提到的改革思路也与该目标相一致：2017年上海将有序调整国资结构，新增投资4000亿元左右，主要投向战略性新兴产业等四大领域，国资集中度力争达到80%。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2017年的改革还更加注重科技创新的推动作用。上述会议提出，将健全激发企业创新活力和动力的考核、激励和评价制度体系，发挥国资国企在科创中心建设中的主力军作用。具体包括完善鼓励创新机制、开展创新转型专项评价、组建百亿元级的产业股权投资基金、加强关键技术研发项目攻关、营造氛围构建人才高地、细化鼓励创新宽容失败的容错机制等内容。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		优化治理结构\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上海国企改革未来面临着“二次混改”的任务。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		李锦认为，在公司完成混合所有制改革之后，还要发挥国有企业各类人才积极性、主动性和创造性，激发各类要素活力。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		张晖明表示，在国有体系内，企业家的角色、定位发生了一定改变。“科学市场化给予了他新的责任，包括遴选机制、评价机制、奖惩机制、薪酬机制等，都需要对经营管理团队做出重新考量。除此以外，还需要考虑如何调动员工积极性，即员工持股的问题。”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		如何优化治理结构？此次上海国资大会指出，将“着力强化法人治理建设，健全选人用人机制”。具体而言，将实施国有企业领导人员分类分层管理，建立健全权责对等、运转协调、有效制衡的决策执行监督机制、健全“双向进入、交叉任职”企业领导体制；强化董事会建设，落实重大决策、选人用人、业绩考核、薪酬分配等权利；完善监事会建设；稳妥推进职业经理人薪酬制度；改革制定市管企业任期综合考核办法；加快人才队伍建设等。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		李锦对上海的职业经理人改革表现出期待：“因为从市场征集职业经理人，需要政府放权，由董事会聘用，各地对此比较慎重，有望在上海取得突破。”上海国资委表示将“一司一策制定方案，成熟一家推进一家，探索研究法定代表人政府奖励办法”。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		而针对员工持股计划，2017年1月发布的《关于本市地方国有控股混合所有制企业员工持股首批试点工作实施方案》，就曾明确指出将推进上海地方国有企业员工首批试点工作，选取5-10家企业开展首批试点，并对企业分类、股权结构、管理制度、营收来源等条件作出了限制。此次会议则进一步明确要“稳妥推进10家符合条件的混合所有制企业试点员工持股”。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		总体而言，李锦预计，2017年上海国企“二次混改”、引入社会资本、员工持股、核心资产或优良资产上市的步伐将明显加快。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		 \r\n	</p>\r\n</div>', '1493483331', '0', '', '0');
INSERT INTO `yang_article` VALUES ('2', '1', '普洱云雾（生茶）、芷汀（生茶）、咏誌（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n	普洱云雾（生茶）、芷汀（生茶）、咏誌（生茶）中签公告\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n	发布日期：2017-12-29   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">关于《普洱云雾（生茶）》,《芷汀（生茶）》</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">《咏誌（生茶）》普洱茶</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">的申购中签公告</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心于2017年12月27日对挂牌藏品，《普洱云雾（生茶）》,《芷汀（生茶）》《咏誌（生茶）》普洱茶进行定价发行申购。现将中签结果公告如下：</span> \r\n</p>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\">一、中签分配统计表</span> \r\n</h1>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">200100</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">普洱云雾（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">2285</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">139065</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span> \r\n</p>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">200100</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">芷汀（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">2856</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">152627</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span> \r\n</p>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680012</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">咏誌（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">5140</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">267837</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:12pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"><br />\r\n二、出金时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span> \r\n</p>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"><br />\r\n三、挂牌交易时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">上述藏品将于2017年12月30日挂牌上市交易。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">特此公告</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <br />\r\n<span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心<br />\r\n2017年12月29日</span> \r\n</p>\r\n	</div>', '1493482312', '0', '', '0');
INSERT INTO `yang_article` VALUES ('334', '3', '2016区块链国际峰会聚焦区块链落地应用', '<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	6月22日至24日，2016区块链国际峰会在北京召开。峰会聚焦区块链与金融科技新趋势。与会业内嘉宾围绕区块链原理与应用场景探析，区块链技术在金融领域的创新应用，区块链加密数字资产，区块链技术标准、合规及安全性等议题进行了主题分享。圆桌讨论环节深入探讨了央行数字货币，区块链在金融行业的应用前景，区块链与人工智能、物联网等创新应用的结合等话题。峰会由中关村区块链产业联盟和亚洲区块链DACA（Digital Assets Coalition Asia）协会主办。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	中钞北京智能卡技术研究院副院长张一峰、工行总行金融创新处长周永林博士、中国社会科学院金融研究所产业金融研究基地主任杨涛、IBM区块链专家董宁、普华永道风险及控制服务合伙人季瑞华、联邦银行（澳洲）区块链咨询专家张韡武等与会并发言。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	目前区块链投资主要集中在西方发达国家，美国占据着区块链投资的主导地位。在国际上，银行、投资机构、保险公司等传统金融机构是探索区块链应用可能性的先驱，它们希望在未来的金融变革中能够最先掌握这个战略性的优势武器。2015年9月R3CEV联盟成立，引导各成员银行在涉及区块链和分布式账本技术的工程、实验以及研究项目的协作。目前在国外已经有40多家金融机构加入R3区块链项目，其中包括摩根大通、高盛、美国银行、花旗银行、汇丰银行等。另外，由网络商业巨头亚马逊提供一种云计算商业平台，目前正与投资公司数字资产集团（DAH）合作，为企业提供区块链实验环境。IBM也表示正在尝试用Watson人工智能来驱动区块链技术。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	区块链在中国关注度迅速提高，但仍处于早期接触和探索阶段，同时也逐渐出现一些实际应用案例。国内纷纷建立了自己的区块链联盟，如中关村区块链产业联盟、中国区块链应用研究中心、China Ledger联盟、金融区块链合作联盟等。随着国内区块链创新企业的成长，区块链应用层方面也开始出现很多实际应用案例，太一云科技（简称太一）作为IBM中国实验室在区块链领域全行业战略合作伙伴，已在诸多领域实现落地应用。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	太一云科技董事长邓迪介绍，该公司的第一个区块产生于2014年11月，是中国自主研发的多资产区块链系统。太一云与IBM中国实验室在中国区块链领域建立全行业合作伙伴关系，现已在供应链金融领域成立区块链联合开发小组，太一在区块链方面的自主核心技术也将被引入IBM的全球项目。目前太一在资产数字化领域已推出具体的落地应用，其中金信商品交易中心和北方工业股权交易中心就是两个最典型的区块链现实应用，利用区块链公开、透明和防伪溯源的特性实现可信商品、可信企业认证和可信交易。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	在区块链商品登记的应用方面，太一云科技联合沈阳金信商品交易中心，建立了全球第一个区块链商品交易中心，通过区块链进行商品登记，提高周转效率，实现防伪溯源。太一区块链系统在商品交易领域提供区块链征信、区块链资产登记、数字资产无损交易服务、区块链安全、智能合约等技术基础设施，可以为各类商品交易所、电商、物流等大型平台提供多种交易解决方案，同时已经构建的数字资产登记平台和数字资产交易平台, 将为数字资产的流通提供有力的流动性保障。\r\n</p>\r\n<p style=\"font-size:16px;color:#393939;font-family:宋体;background-color:#FFFFFF;\">\r\n	在区块链股权登记的应用方面，太一为北方工业股权交易中心搭建了基于太一金融云开发的区块链股权登记系统TERS系统。北方工业股权交易中心在国家工商部门注册，是中国证监会备案的混合所有制股权交易所，为企业和一级市场投资者提供丰富多样的金融产品和综合服务。目前北股交TERS系统已经开始内测，10家创业企业已经在区块链上完成了股权登记和持股凭证发放，登记企业总注册资本达到3亿元。作为国内首家运用区块链技术的股权交易所，北股交将通过TERS系统提升企业股权登记管理的效率，增加企业信息披露的准确性和透明性，为中小企业提供更为便利和高效的金融服务。\r\n</p>', '1484962151', '0', '', '0');
INSERT INTO `yang_article` VALUES ('5', '118', '关于我们', '&lt;div class=&quot;main_content&quot;&gt;\r\n	&lt;div class=&quot;page&quot;&gt;\r\n		&lt;div class=&quot;main-content&quot;&gt;\r\n			&lt;div&gt;\r\n				本站是一个统计收录虚拟币山寨币的专业网站，对新手玩币族提供一个选币的导航平台。本站坚持以最公正的态度对待每一个币种。同时提供大家评论讨论的机会，让我们一起去发现新币，热币。一起去摒弃黑币平台。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				1、所有收录币种最新虚拟币、山寨币网均没有经过评测，请网友自行分析投资与挖矿风险。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				2、对于已收录虚拟币、山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				3、炒币有风险，投资需谨慎。选好平台是关键。山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;br /&gt;', '1458797434', '0', '', '0');
INSERT INTO `yang_article` VALUES ('6', '120', '提现人民币说明', '1. 提现手续费0.3%，请仔细确认后再操作。&lt;br /&gt;\r\n&lt;p&gt;\r\n	2. 单笔提现限额100元——5万元；单日累计最大提现限额50万元。&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;span style=&quot;color:#E53333;&quot;&gt;3. 由于近期充值提现业务量暴增，提现到账时间临时延长到24小时，敬请谅解!&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;', '1458808275', '0', '', '0');
INSERT INTO `yang_article` VALUES ('51', '61', '交易指南', '<p>\r\n	<span style=\"font-size:16px;\"> </span> \r\n</p>\r\n<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n		入市须知\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n		发布日期：2017-05-18   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<h1>\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">尊敬的交易商：</span></span></span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">欢迎您参加茶叶实物交易！为了让您充分了解交易风险，<span>众泰财富</span>商品交易中心 （以下简称“交易中心”）特提供本风险提示书。若您选择参与交易中心茶叶实物交易，则视为您已仔细阅读本风险提示书并自愿承担茶叶实物交易带来的风险。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">鉴于交易商进行茶叶交易存在风险并可能导致交易商亏损，请您慎重考虑自身情况是否适合进行此类交易，并确定可以自行承担风险及亏损，同时客观理性地认识到茶叶交易的风险包括但不限于：<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">一、宏观经济风险：由于我国宏观经济形势的变化以及茶叶价值取向的变化，存在可能影响茶叶价格上下波动的情形；国际宏观经济形势变化也会对茶叶交易市场产生影响，存在导致茶叶交易价格上下波动的情形。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">二、政策法规及市场风险：茶叶交易作为一种创新的实物交易模式，自身的交易规则还需要在实践中不断完善，国家法律、法规及政策的变化以及影响价格波动的其他因素出现，都可能影响茶叶交易价格；或者由于本交易中心根据国家法律、法规及政策变化等原因而对交易市场相关规则进行修订，可能影响交易主体资格、交易规则等各个方面的变化。上述法律法规、政策及本所规则的风险，均可能导致交易中心交易的茶叶价格异常波动。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">三、鉴定评估风险：由于国内目前尚没有权威的鉴定评估机构和统一的鉴定估值程序及完备的鉴定估值方法，茶叶鉴定估值意见书仅供交易商参考，不作为交易商主张其他权益的依据。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">四、技术风险：由于交易的进行、信息的显示及资金的划付均是运用电子通讯技术和电脑技术并通过互联网传输来实现的，这些技术存在被网络黑客和计算机病毒攻击的可能，或者通讯技术、电脑技术和相关软件具有存在缺陷的可能，互联网传输故障也可能造成您的交易指令无法及时传输，这些风险均可导致您的交易申报无法成交或者无法全部成交，或者转账资金不能及时到账、交易延迟、中止甚至无法完成交易等。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">五、不可抗力风险：诸如地震、台风、火灾、水灾、战争、瘟疫、社会动乱等不可抗力因素可能导致茶叶交易系统的瘫痪；交易中心无法控制和不可预测的系统故障、设备故障、通讯故障、电力故障等也可能导致茶叶交易系统非正常运行甚至瘫痪；银行无法控制和不可预测的系统故障、设备故障、通讯故障、电力故障等也可能导致资金转账系统非正常运行甚至瘫痪，这些风险可能导致您的交易申报无法成交或者无法全部成交，或者转账资金不能及时到账等。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">六、账号密码泄露风险：由于交易商使用计算机被病毒侵入、黑客攻击等导致的密码泄露、账号泄露或交易商的身份被冒用，可能导致无法正确下达申报指令、恶意虚假申报或申报失败、延迟、错误等。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">七、交易商软硬件系统风险：交易商的电脑设备及软件系统与所提供的网上交易系统不相匹配，导致无法下达申报指令或申报失败、延迟等。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">八、其他风险：密码失密、操作不当、投资决策失误等原因可能会使交易商发生资金亏损；网上申报、热键操作完毕后未及时退出，他人进行恶意操作而造成的损失；网上交易未及时退出还可能导致遭遇黑客攻击，从而造成损失。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">上述风险都将可能会导致交易商发生亏损，该等亏损均由交易商自行承担。在交易商参与普洱茶交易时，他人给予的保证获利或不会发生亏损的任何承诺都是没有根据的，类似的承诺不会减少发生亏损的可能。<br />\r\n</span></span></span><span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">本《风险提示书》提示事项仅为列举，并不能详细列明从事茶叶交易的全部风险和可能影响茶叶市场异常波动的所有情形，其他不可预见的风险因素也可能会给交易商带来损失。交易商在进行茶叶交易前，应确保自己已经做好足够的风险评估和财务安排，避免因参与交易而遭受难以承受的损失。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">特别提示：交易中心敬告交易商，应当根据自身的经济条件和心理承受能力认真制定交易策略，尤其是交易商决定购买有较大潜在风险的品种时，更应当清醒地认识到该类实物藏品蕴含的风险。茶叶网上实物交易是一种创新的交易模式。交易商在进行交易时存在盈利的可能，也存在亏损的风险。在您参与茶叶实物交易时，我们郑重地提醒您，认真阅读并谨记以下劝导：<br />\r\n1、请合理配置个人资产，不要以个人全部资产投入茶叶交易市场。<br />\r\n2、请理性管理个人财富，不要拿生活必须资金、自用住房抵押贷款或其他借、贷款投入茶叶市场。<br />\r\n3、请客观评估自己投资抗风险能力，选择恰当的交易品种。<br />\r\n4、请正确运用投资策略，留有适当资金以备不时之需。<br />\r\n5、请认真了解所交易的藏品，不能仅凭市场传言盲目操作。<br />\r\n6、请认真了解并掌握茶叶交易所需的必要知识和相关法规，提高自我保护的能力。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">交易中心没有授权任何个人或组织进行茶叶委托投资理财业务，为保护投资人的合法权益，请不要与任何人签订茶叶交易委托代理协议，否则由此引起的一切后果将由您自行承担。<br />\r\n交易中心郑重提醒交易商，请分清投资与投机、风险和收益之间的关系，树立正确的投资理念，谨慎入市，理性操作，注意身心健康与资金安全。<br />\r\n</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;font-size:medium;\"=\"\">本风险提示书并不能提示从事茶叶交易的全部风险及茶叶市场的全部情形。您务必对此有清醒的认识。</span></span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:22px;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span> \r\n</p>\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>', '1493480234', '0', '', '0');
INSERT INTO `yang_article` VALUES ('353', '1', '地佑布朗（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	地佑布朗（生茶）中签公告\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-10-25   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"font-family:宋体;line-height:48px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span></strong></span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"font-family:宋体;line-height:48px;\">关于《</span><span style=\"font-family:宋体;line-height:28px;\">地佑布朗（生茶）</span><span style=\"font-family:宋体;line-height:48px;\">》普洱茶</span></strong></span></span><span style=\"font-family:宋体;line-height:48px;color:red;font-size:18pt;\"><span style=\"font-family:\"line-height:28px;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"font-family:宋体;line-height:48px;\">的申购中签公告</span></strong></span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">21</span>日对挂牌藏品，《</span><span><span style=\"font-family:宋体;line-height:28px;\">地佑布朗（生茶）</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">》普洱茶进行定价发行申购。现将中签结果公告如下：</span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">一、中签分配统计表</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680004</span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">地佑布朗（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">57120</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">961800</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">二、出金时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		 \r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">三、挂牌交易时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">上述藏品将于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">26</span>日挂牌上市交易。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">特此公告</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">2017</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">25</span>日</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;\"><span> </span></span>\r\n	</p>\r\n</div>', '1493482838', '0', '', '0');
INSERT INTO `yang_article` VALUES ('50', '63', '转出指南', '<p>\r\n	<span style=\"font-size:18px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;font-size:16px;\">首先，进入百币网首页（www.100bi.com或www.100bi.cn），登录已有账号，进入【用户中心】，点击【账户资产】，如图：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313015749_66859.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<span style=\"font-size:16px;\"><strong>充币（以明星币为例）</strong></span> \r\n<p>\r\n	<span style=\"font-size:16px;\">1.进入账户资产，页面跳转到币种页面，选择明星币，点击【充币】。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313015822_70427.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2.页面显示明星币在百币网上的钱包地址，将虚拟币转入该钱包即可。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313020005_89271.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;color:#e53333;font-size:16px;\">注：转入虚拟币是自动的，各个币种需要达到不同的确认数后将自动充值到百币网账户中。请了解转入币种的网络确认数。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3.请确认已达到确认数后，刷新页面，点击【账户资产】查看资产变化。</span><br />\r\n<span style=\"font-size:16px;\">可在转入记录中查询转入具体情况，如图：</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313020151_87588.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">如遇转入未到账等问题，可咨询在线客服400-9665-100。</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;font-size:16px;\"><strong>提币 (以明星币为例)</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;font-size:16px;\">1. 进入账户资产，选择明星币，点击【提币】。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313020626_32115.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2.页面跳转到明星币提币页面，如果还没有钱包地址，可点击添加一个新的钱包地址。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313021039_26158.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、输入【新地址标签】，【提币地址】，点击【确认】。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313021301_45818.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4、添加新地址后即可选择新地址，填写【提币数量】，【交易密码】，【手机验证码】，确认填写信息无误后点击【确认提币】。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313021521_43774.png\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">5.请等待客服人员确认转出。转出后，可通过明星币的区块链接查询当前的网络确认数。达到网络确认数后将自动转入到接收方的账户中 。</span><br />\r\n<span style=\"font-size:16px;\">如有其他问题，请咨询在线客服400-9665-100。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1489371336', '0', '', '0');
INSERT INTO `yang_article` VALUES ('363', '2', '英媒称中国将是比特币主战场？洗钱并非主要用途', '<p style=\"text-indent:2em;\">\r\n	<img src=\"/Public/kindeditor/attached/image/20170314/20170314011713_78063.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">英媒称，互联网时代，一种电子加密货币把中国视为了“主战场”。英国《金融时报》引用bitcoinity.org的数据称，2016年，比特币在中国的价格上涨145%。2016下半年，人民币交易占全球比特币交易量的98%。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">据英国广播公司网站3月10日报道，每枚比特币的价格在2月28日暴涨至1265美元，超过了当日每盎司黄金1233美元的价格，分析称比特币此轮价格暴涨源于来自中国的需求快速增加。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">比特币行情起伏不定</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">2013年，中国央行发布通知，禁止金融机构开展比特币与人民币及外币兑换等服务，此举曾引发比特币市场暴跌。中国央行2017年1月初约见了中国三大比特币交易平台主要负责人，要求他们对照相关法律法规严格开展自查并进行相应清理整顿，但这次严厉的监管行动只在短期内导致比特币价格下跌，随后在今年1月达到了历史高点，此后价格持续攀升。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">来自英国北林肯郡的卢埃林称，从2011年至今，他购买一枚比特币的价格最高达到1100美元，最低降至18美元，2013年比特币价格大跌导致自己损失惨重。卢埃林的遭遇和中国比特币市场行情基本一致。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">P2P网站LocalBitcoins统计显示，过去三年里，以人民币结算的比特币每周交易量从未超过600万元。但从春节之后2月11日开始的这一周，比特币的人民币交易突然疯涨，3月第一周交易额已经突破了6000万元。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“主战场”为什么在中国？</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">报道称，中国财经作家习惯将各国基于自身经济利益的竞争性货币政策描述为“货币战争”。“货币战争”的主体往往是各国政府和央行，那么比特币神秘帝国里的“交战方”是谁呢？</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">香港比特币协会主席莱昂哈德称（Leonhard Weese），虽然近几个月来人民币交易占比特币交易总量的比例不再像过去那么高，但中国市场仍然对比特币影响很大。其原因是，比特币的“挖矿”过程要求配置大量电脑主机，用电量巨大，还需要大量技术人员，这些条件在中国都很容易得到满足。在供电一项上，中国的云南、西藏以及四川等地都可以提供低价的水电资源。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">《纽约时报》在一篇调查报道中也透露，很多中国人从交易比特币转向为挖比特币而积聚计算能力。他们在中国各地成立数据中心，这些数据中心全都摆满了放着服务器的架子、相互缠绕的电线和给机器散热的电扇，一些数据中心里的比特币挖掘机耗电量足以供应一座小城市。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">除此之外，莱昂哈德认为，比特币不受个人和公司控制，可以在全球自由流动，这一特性和黄金非常相似。对于90%的比特币交易发生在中国的说法，莱昂哈德认为这种情况如今已不再是现实，但可以在全球自由流动和使用的比特币仍然受到受到中国投资者的追捧。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">比特币在华使用方式分四类</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">莱昂哈德认为，从供给方面看中国境内使用比特币的方式大致分为几类：</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">第一种是玩游戏，把比特币当作一种赌博式的游戏，大概有一半左右的“挖矿”行为发生在中国。与之相对应，莱昂哈德注意到，中国的活跃的“矿工”会出售比特币，换取人民币支付电费，购买电脑设备以及雇用软件及硬件工程师，这在某种程度上扩大了比特币的支付规模。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">第二种是投资套利。一些人在购买了比特币一段时间后判断币值上升乏力或者是找到了其他更有吸引力的投资渠道，于是便将比特币卖出。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">第三种是用于支付，比如在淘宝上购买商品，在线支付酒店等旅游费用，这种用户很多是在中国生活的外国人。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">最后一种是用于境外支付。一些人担心人民币贬值，或是想持有不受通胀和印钞威胁的国际通行货币，所以投资并在境外使用比特币。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">莱昂哈德称，正是这些用途让比特币在中国寻找到了市场和用户。他质疑通过比特币洗钱的说法，“我通过溢价来进行判断，大部分时间里比特币在中国的价格比境外高5%左右，所以目前应该是流入中国的比特币比流出中国的更多。”（参考消息网）</span>\r\n</p>', '1489454327', '0', '', '0');
INSERT INTO `yang_article` VALUES ('361', '2', '并购重组事后监管走向常态化 上市公司万亿商誉遭严管', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	并购重组事后监管走向常态化 上市公司万亿商誉遭严管\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-02-17   来源：21世纪经济报道\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:\"font-size:14px;text-align:center;color:#000000;\">\r\n		<img border=\"0\" src=\"http://img6.caijing.com.cn/2017/0217/1487291553681.jpg\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		21世纪经济报道记者何晓晴广州报道\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		并购重组后遗症开始显现，截至2016年三季度末，A股累计达到的商誉已超过9000亿元规模。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“我们昨天收到地方证监局的通知了，针对投行并购等业务要进行自查自纠工作。”2月16日，沪上一家券商有关部门负责人告诉21世纪经济报道记者。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		据其介绍，此次自查的项目时间范围从2015年到2016年，即两年完成的并购重组财务顾问等在内的全部项目，包括取得核准批文、审核未通过和终止审核的项目。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“其实自去年下半年以来，监管层就部署了并购重组回头看大检查。我们预计今年以来这一检查将会持续下去。从目前的监管态势来看，对于并购重组项目的事后监管亦会同IPO核查一样，步入常态化。”沪上大型会计师事务所合伙人2月16日告诉21世纪经济报道记者。“上述检查由证监会上市部统一部署，对于并购重组业绩达不到要求的上市公司都会有一个具体名册，主要由地方证监局负责稽查、落实。”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“目前监管层对于并购重组事后审核确实在进一步从严。现在并购市场有些乱，主要是前些年并购市场太过火爆，如今，问题关注点相继暴露出来了。”前述合伙人对21世纪经济报道记者表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		此前，证监会曾公开表示，针对并购重组将重点关注上市公司相关会计处理是否符合企业会计准则规定，是否存在滥用会计政策、会计差错更正或会计估值变更等情形，尤其关注应收账款、存货、商誉大幅计提减值准备的情形等，并要求中介机构对业绩真实性和会计处理合规性进行专项核查。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		其中，监管层尤为关注的是上市公司的商誉。近年来，上市公司向其控股股东、实际控制人或者其控制的关联人之外的特定对象购买资产的并购行为日益增多，标的资产的估值增值率也逐年攀升，导致上市公司商誉不断提高。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		据WIND数据表明，截至2016年三季度末，A股累计达到的商誉已超过9000亿元规模，为9260.10亿元，而同期营业利润仅为27657.39亿元，占比超过三成，高达33.48%。相比之下，2015年全年商誉确认额为6487.10亿元，同期营业利润为33572.32亿元，占比为19.32%。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		另据21世纪经济报道记者调查，截至当天，在已发布2016年全年业绩预告的上市公司中，二六三（002467.SZ）以近4亿元商誉减值额居首。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		商誉近万亿\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“目前上市公司商誉确认会计处理是否得当是监管部门关注的重点。”前述合伙人称。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		该负责人表示，原来商誉可以分十年摊销，但新的会计准则出来后，商誉不会每年进行摊销。此外，在新准则体系下，只有对非同一控制下的企业合并采用购买法，才涉及商誉的会计处理，确认商誉。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“只要上市公司并购标的实现持续盈利并达到业绩目标的，就不需进行商誉减值。”该负责人指出。“相比之下，一旦并购标的没有达到业绩预期，包括亏损或业绩大幅下降的，就需要全额计提商誉减值。就我们所而言，2016年也有个别项目需要计提商誉减值。”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		对此，水杉投资管理合伙人刘盛宇也称，商誉减值准备一旦计提，不得转回。因此，商誉减值在冲减资产的同时，也抵减净利润。对此，监管层亦充分认识到，大额商誉减值将直接吞噬企业经营利润，拖累上市公司当期业绩。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		当天，深圳一家券商投行保荐代表亦表示，截至目前，上市公司收购轻资产中大多采用收益法估值，而在以收益法为评估基础的企业并购中，积累了巨额商誉。其收购标的大多为影视、传媒、TMT等行业标的。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“尽管按照新的会计准则，商誉确认后持有期间不再摊销，但要进行减值测试，若并购标的最终业绩不达预期，商誉减值确认就可能引爆上市公司业绩‘地雷’。”2月16日刘盛宇如是说。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		刘盛宇称，实际上，自2013年起A股市场进入重组狂潮以来，伴随着上市公司高估值、高溢价收购，商誉规模更是以千亿级别的惊人速度在激速增长。按照2016年三季报数据，全部A股报表累积的商誉总额已接近万亿元，占上市当期经营利润的三分之一以上，由此带来潜在的减值风险不可小视。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		业绩“变脸”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		从2016年业绩预告情况来看，已有多家公司因为商誉减值而大幅拖累全年业绩。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2月9日，濮耐股份（002225.SZ）的一纸预亏公告让市场哗然，其去年预告盈利4231-6770万，但最新修正为亏损1.6-2亿元，原因是之前收购的子公司商誉减值2.3亿元，此前其收购价为4.4亿。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		此前颇受关注的山东墨龙（002490.SZ）业绩大“变脸”，也受商誉的影响。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2月16日，山东墨龙在回复深交所关注函表示，在资产减值这一块，根据公司最新公告的统计，所计提的各类资产减值对净利润的影响金额约为2亿元。其中，应收款项计提坏账准备7323.37万元，存货计提跌价准备4742.80万元，固定资产、商誉分别计提减值准备3500万元、4764万元。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		而有些公司甚至在去年三季度业绩实现增长的情况下，全年亦因巨额商誉减值致业绩大幅“变脸”，出现巨额亏损。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		据二六三公开披露，公司预计2016年度净利润为-40359万元至-37413万元。就在去年三季度，公司实现净利润为9525.65万元，同比增长14.10%。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		对此，公司表示主要原因为，预计“翰平事业部”和iTalkGlobal旗下“VoIP业务及IPTV业务”两项商誉将发生商誉减值合计约4亿元。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		截至2016年三季度末，二六三累计商誉高达11.14亿元，较公司同期营业利润1.04亿元相比，占比高达10.7倍。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上述公司并非个案。WIND数据显示，截至去年三季度末，商誉与营业利润占比超过十倍以上的上市公司数量多达162家。其中，位居前三位的公司分别为长城动漫（000835.SZ）、安控科技（300370.SZ）、胜利股份（000407.SZ），其占比分别高达259704.17%、244472.22%、127985.71%。除了安控科技以外，长城动漫和胜利股份2016年全年双双报出巨额亏损。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		 \r\n	</p>\r\n</div>', '1493483492', '0', '', '0');
INSERT INTO `yang_article` VALUES ('58', '60', '注册指南', '<h3>\r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">1.打开众泰财富网首页（www.sha333.com)，点击右上角【注册】,进入注册页面。</span> \r\n</p>\r\n<h3>\r\n	<br />\r\n</h3>\r\n<h3>\r\n	<img src=\"/Public/kindeditor/attached/image/20170307/20170307082043_47946.png\" alt=\"\" /><br />\r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2.填写用户名（用于登录）、登录密码（需设置6位以上）、邀请码（非必填），并仔细阅读《服务条款》，点击【下一步】。</span> \r\n</p>\r\n<h3>\r\n	<br />\r\n</h3>\r\n<h3>\r\n	<img src=\"/Public/kindeditor/attached/image/20170307/20170307082435_61240.png\" alt=\"\" /><br />\r\n</h3>\r\n<h3>\r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3.填写交易密码（填写6位以上，且与登录密码不同），确认后点击【下一步】。</span> \r\n</p>\r\n<h3>\r\n	<br />\r\n</h3>\r\n<h3>\r\n	<img src=\"/Public/kindeditor/attached/image/20170307/20170307082507_91570.png\" alt=\"\" /><br />\r\n</h3>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4.根据国家相关规定，众泰财富网需对注册用户进行实名登记。</span><br />\r\n<span style=\"font-size:16px;\"> 请选择证件类型（系统默认身份证，可选择护照/军官证等），输入用户本人真实的证件信息后（证件信息注册后不可修改），</span><br />\r\n<span style=\"font-size:16px;\"> 填写您自己使用的手机号码（用于您以后登录和找回密码），点击【点击发送】，填写手机收到的短信验证码然后点击【提交】。</span><br />\r\n<span style=\"font-size:16px;\"> 注：提现时银行卡信息须与填写的身份信息一致，请填写真实身份信息，以免带来不便。</span> \r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170307/20170307082603_50308.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">5. 注册成功。重新登录账户后即可直接进行充值并交易。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><img src=\"/Public/kindeditor/attached/image/20170321/20170321013550_81114.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1493448655', '0', '', '0');
INSERT INTO `yang_article` VALUES ('59', '62', '充值指南', '<p>\r\n	<span style=\"font-size:18px;\"> </span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">首先，进入众泰财富网首页（www.sha333.com），登录已有账号，点击【用户中心】，如图：</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170307/20170307083017_57573.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#FFFFFF;background-color:#E53333;\">然后点击左侧人民币充值，如图：</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311072137_37051.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;color:#000000;\">人民币充值有三种：<strong>银行卡充值和网银充值</strong>。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311073002_27446.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span><span style=\"line-height:24px;\"><br />\r\n</span></span> \r\n</p>\r\n<p>\r\n	<span><span style=\"line-height:24px;\">2、按照提交金额（含小数点）向指定银行账户汇款。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><img src=\"/Public/kindeditor/attached/image/20170311/20170311074141_55834.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">3、提交订单后在页面下方会有充值记录显示。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><img src=\"/Public/kindeditor/attached/image/20170311/20170311074321_44807.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;color:#000000;\"><strong>银行卡充值方式与支付宝充值方式相同（填写银行卡账号，汇款至招商银行账户）</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;color:#000000;\"><strong><img src=\"/Public/kindeditor/attached/image/20170311/20170311074545_77837.png\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;color:#000000;\"><strong><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;color:#000000;\"><strong>网银充值：</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">1、点击人民币充值进入充值页面，选择网银充值。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><img src=\"/Public/kindeditor/attached/image/20170311/20170311075523_97272.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">2、填写充值金额，选择银行，点击【马上充值】。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><img src=\"/Public/kindeditor/attached/image/20170311/20170311075720_55623.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">2、根据银行提示完成网上支付。完成充值。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#000000;\">注：Chrome浏览器可能不支持部分银行的网银控件，建议使用IE内核浏览器进行充值。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">（充值钱请仔细阅读注意事项，以免造成充值不到账。）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1493480267', '0', '', '0');
INSERT INTO `yang_article` VALUES ('60', '64', '提现指南', '<p>\r\n	<span style=\"font-size:16px;\">1.进入众泰财富网首页（</span><span style=\"font-size:16px;\">www.100bi.com</span><span style=\"font-size:16px;\">），登录已有账号，在导航栏点击【用户中心】如图：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"></span> \r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311080023_96396.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">然后点击左侧【人民币提现】，如图：</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311080138_47526.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2.人民币提现操作需绑定用户本人的银行卡，在页面左侧菜单选择【人民币提现】，点击【绑定银行卡】。若已绑定可直接申请提现。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311080848_23524.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3.进入银行卡绑定页面，填写用户本人的银行卡信息（储蓄卡/借记卡）后，点击【确认添加】。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311081041_99656.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#E53333;\">注：开户姓名栏，系统默认为实名认证姓名。</span><br />\r\n<span style=\"font-size:16px;\"> 若此处的姓名与本人真实姓名不符，请联系在线客服QQ1639201288。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4.银行卡添加成功后，返回【人民币提现】页面，填写提现申请。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">选择提现银行卡，输入提款金额，交易密码，点击【发送】。<span style=\"font-size:16px;line-height:24px;\">输入手机收到的验证码，点击【确认提交】。</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311081454_65195.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;color:#E53333;\">注：提现金额</span><span style=\"font-size:16px;line-height:1.5;color:#E53333;\">单笔提现限额1</span><span style=\"font-size:16px;line-height:1.5;color:#E53333;\">00元——5万元;体现没有任何手续费</span><span style=\"font-size:16px;line-height:1.5;color:#E53333;\">。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">6、申请提现后，提现记录会显示你的提现状态，财务会在24小时之内处理提现。请耐心等待并随时关注银行账户资金变动。若超过24小时仍未到账，请联系在线客服QQ1639201288。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>', '1493449046', '0', '', '0');
INSERT INTO `yang_article` VALUES ('61', '110', '转入币', '<b>转入虚拟币<span style=\"font-weight:normal;\">（以狗狗币为例）</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig2.png\" />\r\n</p>\r\n<p>\r\n	1.进入财务中心，点击【转入虚拟币】，页面跳转到转入币种页面，选择狗狗币。\r\n</p>\r\n<p>\r\n	2.页面显示狗狗币在聚币网上的钱包地址，将虚拟币转入该钱包即可。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig3.png\" />\r\n</p>\r\n<p>\r\n	也可通过手机扫描右侧的【狗币钱包地址】二维码，获取钱包地址。 <br />\r\n<span class=\"impo\">注：转入虚拟币是自动的，各个币种需要达到不同的确认数后将自动充值到聚币网账户中。请了解转入币种的网络确认数。</span>\r\n</p>\r\n<p>\r\n	3.请确认已达到确认数后，刷新页面，点击【财务中心】查看资产变化。 <br />\r\n可在转入记录中查询转入具体情况，如图：\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig4.png\" />\r\n</p>\r\n<p>\r\n	如遇转入未到账等问题，可咨询在线客服400-657-8880。\r\n</p>', '1458718009', '0', '', '1');
INSERT INTO `yang_article` VALUES ('124', '124', '卖出指南', '<img src=\"http://www.jubi.com/images/jubi/help/trade6.png\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在卖出栏中填入【卖出价格】【卖出数量】【交易密码】，点击【卖出】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade7.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：卖出数量应小于等于【最大可买】。\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2. 挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade8.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade9.png\" />\r\n</p>\r\n<p>\r\n	4. 挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960091', '0', '', '0');
INSERT INTO `yang_article` VALUES ('62', '111', '转出币', '<b>转出虚拟币 <span>(以转出狗狗币为例)</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig5.png\" />\r\n</p>\r\n<p>\r\n	1. 进入财务中心，点击【转出虚拟币】，页面跳转到转出币种页面，选择狗狗币 <br />\r\n2. 在狗狗币转出页面，输入转出信息，包括钱包地址（将狗狗币转入的钱包地址）、转出数量（应少于等于可用狗狗币数量）、交易密码、GA码及手机验证码。确认无误后，点击【确认转出】。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig6.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若短信验证码无法正常接收，请换用语音验证码。</span><br />\r\n3.请等待客服人员确认转出。转出后，可通过狗狗币的区块链接查询当前的网络确认数。达到网络确认数后将自动转入到接收方的账户中 。 <br />\r\n如有其他问题，请咨询在线客服400-657-8880。\r\n</p>', '1458718034', '0', '', '1');
INSERT INTO `yang_article` VALUES ('119', '119', '加入我们', '我要开始招聘啦，你来不来！！！！！', '1458800420', '0', '', '0');
INSERT INTO `yang_article` VALUES ('120', '121', '邀请规则', '1.被邀请的用户在元宝网成功注册账户、完善资料并充值CNY，邀请人可在活动期内每天最高获得被推荐人45%太一股配送收益。<br />\r\n2.如果同一用户被多名元宝网用户邀请，元宝网将认定第一位确定的邀请人为该用户邀请人。<br />\r\n3.禁止通过作弊手段进行虚假邀请注册骗取返利，一经发现将取消奖励并酌情处理。<br />\r\n<p>\r\n	<br />\r\n</p>', '1458973500', '0', '', '0');
INSERT INTO `yang_article` VALUES ('126', '125', '银行转账充值', '<img src=\"http://www.jubi.com/images/jubi/help/chongzhi8.png\" alt=\"充值流程8\" /> \r\n<p>\r\n	<span class=\"impo\">注：汇款人姓名默认为实名认证的姓名，仅允许使用本人的银行卡或支付宝进行转账充值。</span>\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi9.png\" alt=\"充值流程9\" /> \r\n<p>\r\n	2. 页面弹出平台的收款账号及汇款信息，请根据“银行转账汇款”信息通过网银、去银行柜台或使用支付宝进行转账汇款。 <br />\r\n1）使用招商银行网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi10.png\" alt=\"充值流程10\" /> \r\n<p>\r\n	2）使用招商银行手机网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi11.png\" alt=\"充值流程11\" /> \r\n<p>\r\n	3）使用支付宝转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi12.png\" alt=\"充值流程12\" /> \r\n<p>\r\n	3. 银行转账成功后，聚币会在收到汇款后30分钟内入账。请及时刷新页面，并查看资产。\r\n                            若转账后超过30分钟仍未入账，请联系在线客服400-657-8880。\r\n</p>', '1458976342', '0', '', '0');
INSERT INTO `yang_article` VALUES ('121', '122', '邀请好友', '&lt;span&gt;邀请好友注册，可在活动期内每天获得被推荐人10%太一股配送收益。&lt;/span&gt;', '1458824052', '0', '', '0');
INSERT INTO `yang_article` VALUES ('123', '123', '买入指南', '<b><span style=\"font-weight:normal;\"></span></b><img src=\"http://www.jubi.com/images/jubi/help/trade2.png\" height=\"158\" width=\"1158\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在买入栏中填入【买入价格】【买入数量】【交易密码】，点击【买入】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade3.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：买入数量应小于等于【最大可买】。<br />\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。<br />\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2.挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade4.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade5.png\" />\r\n</p>\r\n<p>\r\n	4.挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960048', '0', '', '0');
INSERT INTO `yang_article` VALUES ('125', '2', '虚拟货币技术将彻底颠覆这三大行业', '<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span>金融服务巨头瑞士信贷银行（Credit Suisse）发布了一篇全新的报告报告中分析了虚拟货币区块链对14个市场参与者的影响以及他们公司的股价表现。</span><span>报告中涉及的公司类型有大型交易所（澳大利亚证券交易所和纳斯达克）、辅助型企业（Computershare和Equiniti）以及金融服务商（Experian和摩根大通）。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<img width=\"auto\" src=\"http://img.mp.itc.cn/upload/20160907/e02847a302cf44c2ba55a2f46c3e5e90_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span>报告共135页，详细描述了虚拟货币能颠覆的三个主要领域，分别是支付行业、资本市场、金融服务业。</span><span>虚拟货币的区块链技术的可塑性很高，可以适应不同的发展目标。虚拟货币区块链技术有3个主要特点——去中介、记录不可更改以及智能合约。这3大特点使虚拟货币区块链技术在传统系统面前更有优势。报告指出，受区虚拟货币块链技术影响最大的领域是金融服务业、交易所以及交易后处理。大部分受访企业并未因虚拟货币区块链的出现而产生危机感，反之，他们认为这项技术能带来长期的发展机遇。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:16px;\">支付领域</span></strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span><span>瑞士信贷银行承认自己并不清楚虚拟货币区块链最终会用于哪一方面，但他们很确定虚拟货币区块链带来的改革是不可避免的。</span><span>支付行业参与者包括商业收单机构、发卡机构、金融支付处理器。虽然发展比较成熟，但虚拟货币和区块链必定能改革这一行业。</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<img width=\"525px\" src=\"http://img.mp.itc.cn/upload/20160907/b955882b40264e88a217a8a41eb6816a_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:16px;\">资本市场</span></strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span><span>虚拟货币区块链对于资本市场参与者来说也是机遇大于风险。</span><span>报告详述了虚拟货币区块链对托管人、交易所、信托公司的影响，并指出其能创造全新的数据管理模式。最终，虚拟货币区块链能重塑资本市场架构，使其更加灵活、成本也更低。</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<img width=\"670px\" src=\"http://img.mp.itc.cn/upload/20160907/e98627169074413eaa752b5d92a4daa6_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:16px;\">金融服务业</span></strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span><span>对于银行和金融服务业，分布式账簿或者多重的分布式账簿的影响力比较大。</span><span>报告介绍了金融服务业面临的两种市场机遇。第一，分布式账簿有利于降级证券交易和跨境支付的成本；第二，分布式账簿能提供更全面的客户信息，有利于提高客户服务。报告说，至少部分虚拟货币区块链用例在金融服务业是可行的。包括高盛集团、摩根大通、西班牙桑坦德银行等在内的多家企业都从不同角度分析了对虚拟货币区块链的兴趣。但其实际用例可能要到3年到5年之后才能成熟。</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<img width=\"auto\" src=\"http://img.mp.itc.cn/upload/20160907/01f16c5861d34340970e22d3922b086e_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<img width=\"auto\" src=\"http://img.mp.itc.cn/upload/20160907/66aaba670c364135abff522380620694_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:微软雅黑, 宋体;background-color:#FFFFFF;\">\r\n	<span>至少虚拟货币区块链技术的发展或多或少激发了银行对其潜在的IT架构的兴趣。这就意味着银行业的架构和利润分配将彻底改变。报告认为，大型银行或者金融机构更容易从虚拟货币区块链技术中获利。</span> \r\n</p>', '1484962118', '0', '', '0');
INSERT INTO `yang_article` VALUES ('332', '2', '数字货币行业不容忽视的热点事件', '<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	英国脱欧引起比特币暴涨\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	6月25日，英国成功脱欧。受此消息影响，火币网比特币价格从3480元人民币飙升至4748元人民币，暴涨36%。民众对欧洲经济的担忧可谓是最有影响力的因素。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.mp.itc.cn/upload/20161013/b12084bf904c4ec998d82d9eb668ee43_th.png\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>自称中本聪的赖特申请数百种比特币专利</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	克雷格·赖特（Craig Wright）虽然未能提供最终的证据来证实自己就是中本聪，但是他目前正在努力建立一个大型的比特币和区块链专利组合，正在申请一些价值数十亿美元的区块链专利。比特币社区则表示强烈的反对。随着区块链技术越来越受到重视，这种技术能够带来的潜在价值快速上升，自然就有人盯上了这个数十亿美元的专利产业。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<strong>蚂蚁金服：区块链技术将应用于支付宝</strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	7月9日下午，在杭州举办的首届全球XIN公益大会上，蚂蚁金服在“互联网公益”分论坛上表示区块链技术即将上线，并会首先应用于支付宝的爱心捐赠平台，目的是让每一笔款项的生命周期都记录在区块链上。由于区块链技术自身的优势特点，因此区块链技术被认为有助于解决整个中国社会的公益透明度和信任度问题。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.mp.itc.cn/upload/20161013/81becedee12c4b5a9144f4cf69d402b0_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>Bitfinex被盗12万比特币引发币价下跌25%</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	8月3日凌晨，最大的美元比特币交易平台Bitfinex发出公告，由于网站出现安全漏洞，导致用户多达119,756BTC被盗，总价值约为7500万美元，随即暂时关闭比特币交易以及提现业务，从而引发全球市场的恐慌抛售。据国内最大的比特币交易平台火币网的数据显示，受此事件影响，当日比特币价格下跌25%，比特币价格最低点3005元人民币。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<img src=\"http://img.mp.itc.cn/upload/20161013/e0d2f0a1f0224ab28517c9e67b4e51b7_th.jpeg\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>四大聚首！会计业区块链标准来了？</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	德勤、安永、毕马威、普华永道“四大”会计事务所的区块链代表于8月11日上午会师美国注册会计师协会，以讨论建立一个分布式账本联盟。本次会议，是由以太坊创业公司Consensys负责主持，但参与者可考虑各种可能的区块链解决方案。据Consensys的负责人格里芬安德森（Griffin Anderson）表示，本次会议的圆桌讨论将重点讨论会计行业问题，如何共同开发出一个新的区块链标准。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>工信部曝光中国区块链技术产业发展两年规划时间表</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	今年7月，工信部信软司印发了《关于组织开展区块链技术和应用发展趋势研究的函》（工信软函[2016]840号），并委托工信部电子标准院联合蚂蚁金服、万向控股、微众银行和平安保险等国内重点企业开展区块链技术和应用发展趋势研究工作。8月5号，为有效落实工信软函[2016]840号文的要求，工信部电子标准院在北京组织召开了区块链技术和产业发展论坛筹备会暨白皮书编写启动会，讨论并制定了中国区块链技术与产业发展论坛的未来两年规划。该规划指出，将以制定区块链技术的标准、编写相关区块链技术发展的白皮书为现阶段目标。同时，也提供了具体实施方案，如区块链技术的试点示范及相关市场培育、区块链技术专业人才的培养与认证、建设相关实验室、与区块链技术的相关的解决方案推广和开展区块链产业的投融资等具体实施的几大方面。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	俄罗斯迎来首家比特币交易所\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	自从俄罗斯官方爆出有意取消对比特币用户实施刑事处罚的消息之后，莫斯科迎来了本国首家数字货币交易所。目前，该交易所仅提供“单向”交易服务，即用户可以出售比特币，由交易所私下操作。而购买比特币的服务仍不可用。8月初，LocalBitcoins.com上的比特币购买量达到了历史新高。俄罗斯政府也表示将来会使用比特币区块链技术进行清算。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>全球四大银行共同推出结算币，将成区块链与数字货币里程碑</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	瑞银、德银、桑坦德和纽约梅隆四大银行已经联手开发新的电子货币，希望未来能够通过区块链技术来清算交易，并成为全球银行业通用的标准。四家银行还将与英国券商ICAP携手共同向各国央行推销该方案，并计划在2018年初进行首次商业应用。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	<span><strong>中国法定数字货币：数字货币必须由央行发行 其本身就是货币</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	央行也正在筹备中国人民银行数字货币研究所，姚前担任筹备组组长。筹备组将对中国法定数字货币有了一些研究成果，在《中国金融》上刊发。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	姚前对现行的数字货币理念进行梳理，提出了我国法定数字货币的7个系统设计理念。其中表达了对区块链技术的期待。区块链技术是下一代云计算的雏形，备受各方瞩目，但作为成熟的企业级应用案例尚不多见。“私有云+高性能数据库+移动终端”与“私有云+区块链+移动终端”，有可能是两个既关联又有区别的思路。让中央更强大，让数据更安全，使终端更智能，让个人的支付行为更能动，一定是未来央行数字货币追求的目标。如果将区块链技术应用于央行数字货币的研发，是否可以对其进行必要的改造?面对大规模交易的速度和效率问题，区块链技术自身如何实现实质性突破?\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	万达金融布局区块链核心技术，加快实施飞凡科技“实体＋互联网”战略\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	9月8日，万达金融集团正式宣布加入Linux基金会的超级账本（Hyperledger）项目，成为该项目第一个来自中国的核心董事会成员，这也标志着中国的金融科技企业已经全面加快区块链领域的布局。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	IOS10可在iMessage中转账比特币\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	iOS 10更新中，包括了一个全新设计的iMessage服务，开发者可以在这一平台上植入第三方app。目前已经添加了不少app，还附带音乐和GIF图片分享功能。某些第三方平台已经确认入驻，包括Square Cash、Lyft和Circle Pay，这就意味着iPhone用户可以直接在iMessage中转账比特币。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	对于如何使用iMessage转账比特币，火币网微信订阅号（huobicom）发表了一篇简单详细的教程。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	外媒：中国社保基金投资管理将采用区块链技术\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	据《中国日报欧洲版》报道，中国政府正考虑将区块链技术应用于社会保障金，如失业救济以及养老金。截至2015年年底，在全国社会保障基金理事会旗下管理的资金达到了2845亿美元，这与去年同期相比增长了24.6％。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	《中国日报欧洲版》的作者提到：“据全国社会保障基金理事会副理事长王忠民表示，毫无疑问区块链技术将应用于社会保障金系统，因其在社会保证金投资和管理当中具有价值应用。”\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	区块链创业公司R3CEV估值达2亿美元\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	纽约区块链创业公司R3CEV目前正磋商A轮融资。根据安永会计师事务所发布的一份独立报告显示，目前R3这家公司的预估值为2亿美元。截至目前，除了在纽约的总部，R3还在旧金山、伦敦、日本、苏黎世、新加坡、首尔和悉尼都设立了办事处。R3的联盟成员已扩至全球各地，该公司需要雇佣更多的人在特定的地方进行办公。而这种分布式的工作方式，意味着该集团无需在服务器、建筑或设施上进行大量的投资，也就是说该公司并不需要花费巨额的资金。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	区块链将驱动万向的2000亿元智慧城市计划\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	汽车零部件巨头万向集团9月27日宣布，该集团将使用区块链技术作为其新公布的智慧城市计划的一部分。在万向主办的全球区块链峰会上，该集团透露拟在未来7年内在这一项目中投入2000亿元（300亿美元），在杭州萧山毗邻钱塘江南岸购置83000000平方英尺的土地，用于建立一个新的创新基地。为了更好地支持这项工作，万向还寻求资助可能与其目标保持一致的区块链企业家。\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	美国司法机关再发力，纽约联邦法官裁定比特币是货币\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:宋体;background-color:#FFFFFF;\">\r\n	佛罗里达州一家比特币交易所Coin.mx（现已关闭）和其前任运营者安东尼?穆尔吉（Anthony Murgio）于去年7月被指控多项洗钱罪名。近期他提出上诉，申请撤销其中两项指控，因为美国法律规定，比特币不属于“资金”。据路透社报道，纽约南部法院的艾莉森?南森（Alison Nathan）法官驳回了他的上诉请求，并写道，根据其用途，比特币的确属于货币范畴。\r\n</p>', '1484962110', '0', '', '0');
INSERT INTO `yang_article` VALUES ('32', '126', '新币上线申请', '<span>   若您是加密数字货币开发者或者官方团队成员，有意向将您开发的币种上线聚币网，欢迎您通过以下方式和流程递交申请。</span> \r\n<p>\r\n	申请流程：\r\n</p>\r\n<ol>\r\n	<li>\r\n		下载 <a href=\"http://www.jubi.com/newcoin-sheet.docx\" target=\"_blank\">“新币上线申请表”</a>，按要求填写并发送至邮箱market@jubi.com。\r\n	</li>\r\n	<li>\r\n		若申请资料填写齐全并符合聚币上线条件，我们将和申请人或官方团队联系并确定币种上线可行性。\r\n	</li>\r\n	<li>\r\n		确定上线币种后，聚币会安排技术进行钱包、交易相关开发，我们将至少提前1天通知上线新币 。\r\n	</li>\r\n</ol>\r\n<p>\r\n	另：若在聚币已上线的币种出现下列情况之一，聚币将考虑下线该币种。\r\n</p>\r\n<ol>\r\n	<li>\r\n		官方团队解散或者不再有正常维护更新，导致该币种不能进行正常挖矿、转币、区块查询等；\r\n	</li>\r\n	<li>\r\n		该币种已经没有用户进行交易或者使用、持有；\r\n	</li>\r\n	<li>\r\n		该币种出现重大技术故障，影响到区块查询、挖矿转币等正常功能；\r\n	</li>\r\n	<li>\r\n		官方团队涉嫌恶意预挖、传销诈骗、坐庄圈钱等欺诈行为。\r\n	</li>\r\n</ol>\r\n<p>\r\n	<a>为了维护广大用户的财产安全我们将尽量避免币种下线。</a>\r\n</p>', '1459152106', '0', '', '0');
INSERT INTO `yang_article` VALUES ('128', '63', '客服电话', '<a href=\"mailto:bncwlkj@163.com\"><span style=\"font-size:24px;color:#333333;\">400-9665-100</span></a>', '1484036226', '0', '', '0');
INSERT INTO `yang_article` VALUES ('129', '62', '客服电话', '<span><span style=\"font-size:24px;\"> QQ 1639201288</span></span>', '1493480253', '0', '', '0');
INSERT INTO `yang_article` VALUES ('339', '3', '韩国将发行首个基于区块链技术的数字货币“BOScoin”', '韩国区块链初创公司BlockchainOS已经宣布，即将正式发布数字货币BOScoin，据描述，它将成为现有如比特币和以太币等加密货币的升级版本。<br />\r\n<br />\r\nBOScoin将在2017年2月发布，它将成为韩国的第一个基于区块链系统的数字货币。<br />\r\n<br />\r\nBlockchainOS表示他已经修复了现有数字货币的局限之处。它宣称可以加速交易速度，达到跟信用卡业务流程一样的水平，让BOScoin可以每秒处理1000的交易量。<br />\r\n<br />\r\n据报道，BOScoin如今即将面对国内投资者进行预售，而且将会于2017年在全球市场进行测试。另外，该初创公司将会发布应用，以促进BOScoin作为实际货币的使用。<br />\r\n<br />\r\n<br />\r\n<br />\r\nBlockchain OS的CEO Park Chang-ki讲到：“随着BOScoin的发布，韩国将可以挑战世界的加密货币市场，并得到认可。韩国国内的区块链技术也已经达到了相当的水平。”<br />\r\n<div>\r\n	<br />\r\n</div>', '1484962146', '0', '', '0');
INSERT INTO `yang_article` VALUES ('342', '5', '明星币资料', '<p>\r\n	<span style=\"font-size:16px;\">一、明星币参数</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 中文名：明星币</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 英文名：MXCOIN</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 英文简称：MXI</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 开发团队：明星币开发团队</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 钱包发布日期：2016年5月8日</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 货币总量：10亿</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> P2P端口：51938 RPC端口：51937</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 核心算法：scrypt</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 成熟：100 交易确认：3</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 超级节点：120.26.76.127</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 区块查询：http://121.42.33.6</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">二、明星币特点介绍</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 1、有管理的货币“去中心化、去信任化”为标志</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 2、交易速度快,确认时间平均为1-3分钟</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 3、超快链接节点，支付转账速度更快，更新区块更加时及时</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 4、采用6位哈希算法，使用生日攻击寻找groestl哈希碰撞 </span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 5、源于区块链技术发展的去中心化数字货币</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 6、区块链技术是“自由、开放、合作、共享”</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 7、采用“分布式记账”对交易结果进行数字签名<br />\r\n</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-size:16px;\">三、明星币（MXI）总量分配</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 1、总量10亿</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 2、按定价0.01元/个(认购30%)</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 3、10%用于钱包维护</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 4、10%用于数字货币群推广活动等各大活动赞助项目基金</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 5、10%用于市场与公关</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 6、10%计划用于元宝网用户众筹</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 7、剩余30%的币，承诺冻结1年 冻结地址：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> mZXvcN7bW2GmBoxNJWbsU7jR4joQKVFxAX（22.5%）</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> mP6SzWBHT9h3LmX3LTR62VthzRk52ciweT （7.5%）</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">四、明星币详细参数</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 官网：</span><a href=\"http://www.mingxingcoin.com\" target=\"_blank\"><span style=\"font-size:16px;\">www.mingxingcoin.com</span></a> \r\n</p>\r\n<br />\r\n<br />\r\n<span style=\"font-size:16px;\"> 明星币QQ群：</span><br />\r\n<p>\r\n	<span style=\"font-size:16px;\"> 明星币中国总群：540394822</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 明星币中国一群：540570706</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 明星币中国二群：518363583</span> \r\n</p>', '1484816428', '0', '', '0');
INSERT INTO `yang_article` VALUES ('336', '2', '国务院：区块链列入国务院“十三五”国家信息化规划', '经李克强总理签批，国务院日前印发了《“十三五”国家信息化规划》，《规划》中提到，到2020年，“数字中国”建设取得显著成效，信息化能力跻身国际前列，其中区块链技术首次被列入了《国家信息化规划》。<br />\r\n<br />\r\n<br />\r\n<br />\r\n《规划》中写道：<br />\r\n<br />\r\n“十三五”时期，全球信息化发展面临的环境、条件和内涵正发生深刻变化。从国际看，世界经济在深度调整中曲折复苏、增长乏力，全球贸易持续低迷，劳动人口数量增长放缓，资源环境约束日益趋紧，局部地区地缘博弈更加激烈，全球性问题和挑战不断增加，人类社会对信息化发展的迫切需求达到前所未有的程度。同时，全球信息化进入全面渗透、跨界融合、加速创新、引领发展的新阶段。信息技术创新代际周期大幅缩短，创新活力、集聚效应和应用潜能裂变式释放，更快速度、更广范围、更深程度地引发新一轮科技革命和产业变革。物联网、云计算、大数据、人工智能、机器深度学习、区块链、生物基因工程等新技术驱动网络空间从人人互联向万物互联演进，数字化、网络化、智能化服务将无处不在。现实世界和数字世界日益交汇融合，全球治理体系面临深刻变革。全球经济体普遍把加快信息技术创新、最大程度释放数字红利，作为应对“后金融危机”时代增长不稳定性和不确定性、深化结构性改革和推动可持续发展的关键引擎。<br />\r\n<br />\r\n从国内看，我国经济发展进入新常态，正处于速度换挡、结构优化、动力转换的关键节点，面临传统要素优势减弱和国际竞争加剧双重压力，面临稳增长、促改革、调结构、惠民生、防风险等多重挑战，面临全球新一轮科技产业革命与我国经济转型、产业升级的历史交汇，亟需发挥信息化覆盖面广、渗透性强、带动作用明显的优势，推进供给侧结构性改革，培育发展新动能，构筑国际竞争新优势。从供给侧看，推动信息化与实体经济深度融合，有利于提高全要素生产率，提高供给质量和效率，更好地满足人民群众日益增长、不断升级和个性化的需求；从需求侧看，推动互联网与经济社会深度融合，创新数据驱动型的生产和消费模式，有利于促进消费者深度参与，不断激发新的需求。<br />\r\n<br />\r\n同时，我国信息化发展还存在一些突出短板，主要是：技术产业生态系统不完善，自主创新能力不强，核心技术受制于人成为最大软肋和隐患；互联网普及速度放缓，贫困地区和农村地区信息基础设施建设滞后，针对留守儿童、残障人士等特殊人群的信息服务供给薄弱，数字鸿沟有扩大风险；信息资源开发利用和公共数据开放共享水平不高，政务服务创新不能满足国家治理体系和治理能力现代化的需求；制约数字红利释放的体制机制障碍仍然存在，与先进信息生产力相适应的法律法规和监管制度还不健全；网络安全技术、产业发展滞后，网络安全制度有待进一步完善，一些地方和部门网络安全风险意识淡薄，网络空间安全面临严峻挑战。<br />\r\n<br />\r\n综合研判，“十三五”时期是信息化引领全面创新、构筑国家竞争新优势的重要战略机遇期，是我国从网络大国迈向网络强国、成长为全球互联网引领者的关键窗口期，是信息技术从跟跑并跑到并跑领跑、抢占战略制高点的激烈竞逐期，也是信息化与经济社会深度融合、新旧动能充分释放的协同迸发期。必须认清形势，树立全球视野，保持战略定力，增强忧患意识，加强统筹谋划，着力补齐短板，主动顺应和引领新一轮信息革命浪潮，务求在未来五到十年取得重大突破、重大进展和重大成果，在新的历史起点上开创信息化发展新局面。<br />\r\n<br />\r\n……<br />\r\n<br />\r\n（一）构建现代信息技术和产业生态体系。<br />\r\n<br />\r\n打造自主先进的技术体系。制定网络强国战略工程实施纲要，以系统思维构建新一代网络技术体系、云计算体系、安全技术体系以及高端制造装备技术体系，协同攻关高端芯片、核心器件、光通信器件、操作系统、数据库系统、关键网络设备、高端服务器、安全防护产品等关键软硬件设备，建设战略清晰、技术先进、产业领先、安全可靠的网络强国。统筹经济、政治、文化、社会、生态文明等领域网络安全和信息化发展，增强自主创新能力。<br />\r\n<br />\r\n强化战略性前沿技术超前布局。立足国情，面向世界科技前沿、国家重大需求和国民经济主要领域，坚持战略导向、前沿导向和安全导向，重点突破信息化领域基础技术、通用技术以及非对称技术，超前布局前沿技术、颠覆性技术。加强量子通信、未来网络、类脑计算、人工智能、全息显示、虚拟现实、大数据认知分析、新型非易失性存储、无人驾驶交通工具、区块链、基因编辑等新技术基础研发和前沿布局，构筑新赛场先发主导优势。加快构建智能穿戴设备、高级机器人、智能汽车等新兴智能终端产业体系和政策环境。鼓励企业开展基础性前沿性创新研究。<br />\r\n<div>\r\n	<br />\r\n</div>', '1484962104', '0', '', '0');
INSERT INTO `yang_article` VALUES ('337', '2', '外媒：印度斥资5000万美元鼓励民众使用数字货币', '北京时间12月16日晚间消息，据CNNMoney网站报道，印度正陷入自己制造的现金危机。在此背景下印度政府计划拿出5000万美元鼓励人们使用数字货币的表态再次引发关注。<br />\r\n200万名印度人将从这一新的临时彩票活动中获益，而参与的条件是将自己的ID与政府的电子支付系统联接起来。<br />\r\n<br />\r\n使用该系统的人将获得一个数字，而该数字将会被输入抽奖系统，每天会抽取1.5万名幸运者，他们每人将获得1000卢比（约合15美元）。每周还会抽取7000多名幸运者，他们将获得5000至10万卢比。<br />\r\n<br />\r\n使用该电子支付系统的零售商也也有机会获得奖励，每周将抽取7000名零售商，他们将获得2500卢比到5万卢比的奖励。<br />\r\n<br />\r\n该彩票活动是印度政府给予民众的一份圣诞节礼物，将于12月25日起开始举行，持续至2017年4月14日。 在活动的最后一天，印度政府还将抽取6份大奖，奖金从1.7万美元至头奖150万美元。<br />\r\n<br />\r\n印度总理莫迪11月8日突然废除了印度当前面额最大的两种货币，设法解决腐败和逃税问题。<br />\r\n<br />\r\n但废除现有500卢比和1000卢比，并将其替换为新的500卢比和2000卢比的举措，已经使印度86%的货币（按金额计）突然变得没有价值，并引发了经济混乱。<br />\r\n<br />\r\n现金在印度的经济运行中发挥着重要作用，新纸币的分放工作并不顺利，印度百姓因此在日常采购中面临着诸多麻烦。汽车和钻石等使用大额纸币的交易规模大幅下降。<br />\r\n<br />\r\n负责管理印度政府智库的Amitabh Kant表示：“目前在印度只有5%的个人消费支出使用数字货币。我们的目标是数字支付在印度得到迅速普及。”<br />\r\n<br />\r\n自从印度宣布废除大额货币以来，无现金支付公司和手机钱包获得了蓬勃发展，印度政府也正试图鼓励人们使用自己的电子支付系统。（翊海）<br />\r\n<div>\r\n	<br />\r\n</div>', '1484962098', '0', '', '0');
INSERT INTO `yang_article` VALUES ('338', '2', '金融技术大爆炸：中国正进入无现金时代，消费者弃银行', '年收入超过250亿美元的“全球审计四巨头之一”毕马威（KPMG）最近发布了Fintech100强榜名单，列出了全球金融技术市场中最大最赚钱的企业。<br />\r\n<br />\r\n中国蚂蚁金服和趣店分别榜上有名，分别位居第一和第二。而陆金所、众安保险和京东金融也都位居前十，中国企业在fintech100前十中占据了一半。<br />\r\n<br />\r\n数亿中国用户正在放弃银行系统<br />\r\n<br />\r\n正如各种研究调查结果显示的那样，如KPMG的Fintech 100和ITA的全球金融技术报告，中国正在引领全球金融技术行业的发展。数亿中国用户正在抛弃受到限制且有限的银行系统，并转向非银行服务和金融技术平台。<br />\r\n<br />\r\n事实上，根据《亚洲时报》记者Johan Nylander和深圳星巴克经理Lily Li所说，大量的中国消费者都是使用手机来结算日常费用和支出。很少有人使用现金甚至信用卡，因为那样会很不方便且手续费高。<br />\r\n<br />\r\n当购买一些简单的商品时，如从星巴克购买一杯拿铁，中国消费者只需要把手机靠近商店的NFC感应器就可以使用手机金融技术应用来进行交易。据报道，蚂蚁金服旗下的支付宝目前在中国整个在线支付行业占据的份额达到58%。<br />\r\n<br />\r\n快速发展的金融技术行业<br />\r\n<br />\r\n蚂蚁金服目前估值达到600亿美元，比全球数字货币比特币的市值还要高。<br />\r\n<br />\r\nMoney Bazaar创始人兼CEO Mofei Chen在采访中表示外国的投资者和用户几乎没有意识到中国金融服务行业的快速发展。Chen解释说，中国金融技术已经发展到人们甚至记不起上次是啥时候用的钱包。<br />\r\n<br />\r\n他说：“我几乎已经忘记上次使用钱包是什么时候的事了。外国人几乎没有意识到新的支付功能和手机金融服务在中国发展的是多么的迅速和先进。”<br />\r\n<br />\r\n选股服务ＭJL运营者Allen Yu的观点与Chen相似，他认为中国民众很少使用银行账户。有些公司甚至薪水都是通过支付宝来发放的。<br />\r\n<br />\r\n“我几乎已经不经常用银行账户了。我的薪水是通过支付宝发放，而大多数支付也使用支付宝来完成。并且支付宝的利率也要比普通的银行要好。”<br />\r\n<br />\r\n区块链迎上中国金融技术发展良机<br />\r\n<br />\r\n金融技术在中国的爆发式发展，正在推动中国支付行业模式的转变。新的金融技术正在不断涌现，而一直被认为会颠覆整个金融行业的区块链技术正在推动金融技术和支付领域的发展，如蚂蚁金服就已经表示他们的区块链技术即将上线，并且首先用于支付宝。京东金融也正与IBM和斯坦福大学合作探索区块链技术。毫无疑问，中国金融技术的蓬勃发展为区块链带来了发展良机。<br />', '1484962089', '0', '', '0');
INSERT INTO `yang_article` VALUES ('325', '7', '公司简介', '<p>\r\n	<span style=\"font-size:18px;\"> </span> \r\n</p>\r\n<p style=\"color:#72777D;font-family:\" font-size:15px;background-color:#ffffff;\"=\"\"><br />\r\n	</p>\r\n<div class=\"title\" style=\"margin:0px 0px 10px;padding:0px;border:0px;font-family:\" text-align:center;font-size:16px;font-weight:bold;background-color:#d20001;color:#ffffff;\"=\"\">\r\n	关于我们\r\n		</div>\r\n<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n	<span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心的简介\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n	来源：<span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>茶叶交易中心\r\n		</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心是经国家工商总局核准，贵州省政府金融办、省证监局、省人民银行等部门联合验收合格，由商务厅批准运营的综合性大宗商品电子交易市场。</span></span></span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;\"=\"\">作为贵州省平台经济载体的一部分，交易中心落户于国家级经济开发区<span style=\"line-height:28px;\">--</span>贵安新区，注册资本金一亿元人民币。</span></span></span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心是由贵州省政府主导，结合全国要素市场的发展需要和国家监管的要求，按照市场化、资本化的运作方式，依托贵州地区资源优势和交易中心的现货基础，倾力打造出的专业化的大宗商品交易平台。</span></span></span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心拥有标准化的交易大厅和商品展示大厅、现代化物流体系、大型标准化仓储基地，配备了国际一流的软硬件系统、网络和安全设施，为会员提供全方位的电子化交易、交收、结算和信息资讯服务。</span></span></span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;color:black;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心拥有从事金融、互联网、物联网、信息技术、供应链、现货贸易等行业的专业运营团队；拥有以国内权威的经济学专家和能源化工、有色金属、生态农业、环保建材等学科带头人组成的顾问团队；拥有由主流媒体、国家及地方政府主管部门为主组成的监管自律机构，努力实现集公平、公正、公开、严谨、高效于一体的现代化的大宗商品交易新模式。</span></span></span><span style=\"font-family:宋体;line-height:28px;color:black;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;color:black;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心紧紧聚焦于大宗商品产业链各要素资源，秉承先进的理念和专业化的运作，完善 “大宗商品的现货贸易体系”“ 大宗商品的网络分销体系”、“ 大宗商品的供应链物流体系” “大宗商品的结算融资体系”。</span></span></span><span style=\"font-family:宋体;line-height:28px;color:black;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:24pt;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;color:black;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心将立足现货，服务实体；立足贵州，辐射全国。创造产业共赢模式，惠及行业上下游的利益相关者，谋求中国能源化工、有色金属、生态农业和环保建材在全球产业链分工体系中的话语权与定价权。</span></span></span><span style=\"font-family:宋体;line-height:28px;color:black;font-size:12pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n		</p>\r\n		<p style=\"font-size:14px;text-indent:2em;\">\r\n			<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\" line-height:28px;color:black;\"=\"\"><span style=\"color:#333333;font-family:\" font-size:16px;font-weight:bold;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心将以完善我国多层次商品市场体系、确立大宗商品电子交易的价值和地位为己任，实现对相关大宗商品产业的全方位服务；以规范、专业、完善求得基业长青；以开放、合作、共赢促进企业品牌提升，演绎行业的新典范。</span></span></span> \r\n		</p>\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<br />\r\n	</p>', '1493483936', '0', '', '0');
INSERT INTO `yang_article` VALUES ('326', '7', '法律政策', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n	商品现货市场交易特别规定（试行）\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n	发布日期：2017-5-27   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第一章　总　则</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第一条为规范商品现货市场交易活动，维护市场秩序，防范市场风险，保护交易各方的合法权益，促进商品现货市场健康发展，加快推行现代流通方式，根据国家有关法律法规以及《国务院关于清理整顿各类交易场所切实防范金融风险的决定》（国发〔2011〕38号），制定本规定。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二条中华人民共和国境内的商品现货市场交易活动，应当遵守本规定。国家另有规定的，依照其规定。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第三条本规定所称商品现货市场，是指依法设立的，由买卖双方进行公开的、经常性的或定期性的商品现货交易活动，具有信息、物流等配套服务功能的场所或互联网交易平台。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 本规定所称商品现货市场经营者（以下简称市场经营者），是指依法设立商品现货市场，制定市场相关业务规则和规章制度，并为商品现货交易活动提供场所及相关配套服务的法人、其他经济组织和个人。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第四条从事商品现货市场交易活动，应当遵循公开、公平、公正和诚实信用的原则。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第五条商务部负责全国商品现货市场的规划、信息、统计等行业管理工作，促进商品现货市场健康发展。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 中国人民银行依据职责负责商品现货市场交易涉及的金融监管以及非金融机构支付业务的监管工作。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第六条商品现货市场行业协会应当制定行业规范和行业标准，加强行业自律，组织业务培训，建立高管诚信档案，受理投诉和调解纠纷等。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第二章　交易对象和交易方式</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第七条商品现货市场交易对象包括：</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （一）实物商品；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （二）以实物商品为标的的仓单、可转让提单等提货凭证；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （三）省级人民政府依法规定的其他交易对象。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第八条商品现货市场交易的实物商品，应当执行国家有关质量担保责任的法律法规，并符合现行有效的质量标准。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第九条商品现货市场交易可以采用下列方式：</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （一）协议交易；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （二）单向竞价交易；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （三）省级人民政府依法规定的其他交易方式。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 本规定所称协议交易，是指买卖双方以实物商品交收为目的，采用协商等方式达成一致，约定立即交收或者在一定期限内交收的交易方式。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 本规定所称单向竞价交易，是指一个买方（卖方）向市场提出申请，市场预先公告交易对象，多个卖方（买方）按照规定加价或者减价，在约定交易时间内达成一致并成交的交易方式。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十条  市场经营者不得开展法律法规以及《国务院关于清理整顿各类交易场所切实防范金融风险的决定》禁止的交易活动，不得以集中交易方式进行标准化合约交易。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 现货合同的转让、变更，应当按照法律法规的相关规定办理。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第三章　商品现货市场经营规范</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十一条  市场经营者应当履行下列职责：</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （一）提供交易的场所、设施及相关服务；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （二）按照本规定确定的交易方式和交易对象，建立健全交易、交收、结算、仓储、信息发布、风险控制、市场管理等业务规则与各项规章制度；</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> （三）法律法规规定的其他职责。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十二条  市场经营者应当公开业务规则和规章制度。制定、修改和变更业务规则和规章制度，应当在合理时间内提前公示。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十三条  商品现货市场应当制定应急预案。出现异常情况时，应当及时采取有效措施，防止出现市场风险。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十四条  市场经营者应当采取合同约束、系统控制、强化内部管理等措施，加强资金管理力度。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 市场经营者不得以任何形式侵占或挪用交易者的资金。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十五条  鼓励商品现货市场创新流通方式，降低交易成本；建设节能环保、绿色低碳市场。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十六条  鼓励商品现货市场采用现代信息化技术，建立互联网交易平台，开展电子商务。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十七条  市场经营者应当建立完善商品信息发布制度，公布交易商品的名称、数量、质量、规格、产地等相关信息，保证信息的真实、准确，不得发布虚假信息。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十八条采用现代信息化技术开展交易活动的，市场经营者应当实时记录商品仓储、交易、交收、结算、支付等相关信息，采取措施保证相关信息的完整和安全，并保存五年以上。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第十九条市场经营者不得擅自篡改、销毁相关信息和资料。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第四章　监督管理</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十条县级以上人民政府商务主管部门负责本行政区域内的商品现货市场的行业管理，并按照要求及时报送行业发展规划和其他具体措施。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 中国人民银行分支机构依据职责负责辖区内商品现货市场交易涉及的金融机构和支付机构的监督管理工作。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 国务院期货监督管理机构派出机构负责商品现货市场非法期货交易活动的认定等工作。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十一条市场经营者应当根据相关部门的要求报送有关经营信息与资料。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十二条县级以上人民政府商务主管部门应当根据本地实际情况，建立完善各项工作制度。必要时应及时将有关情况报告上级商务主管部门和本级人民政府。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第五章　法律责任</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十三条市场经营者违反第十一条、第十二条、第十三条、第十四条、第十七条、第十八条、第十九条、第二十一条规定，由县级以上商务主管部门会同有关部门责令改正。逾期不改的，处一万元以上三万元以下罚款。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十四条市场经营者违反第八条、第十条规定和《期货交易管理条例》的，依法予以处理。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十五条有关行政管理部门工作人员在市场监督管理工作中，玩忽职守、滥用职权、徇私舞弊的，依法给予行政处分；构成犯罪的，依法追究刑事责任。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> <strong>第六章　附　则</strong></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"> 第二十六条本规定自2014年1月1日起施行。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<br />\r\n</p>\r\n	</div>', '1493481382', '0', '', '0');
INSERT INTO `yang_article` VALUES ('327', '7', '隐私政策声明', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	关于用户的《隐私政策》\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2016-09-09   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心尊重并保护所有使用服务用户的个人隐私权。为了给您提供更准确、更有个性化的服务，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心会按照本隐私权政策的规定使用和披露您的个人信息。但<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心将以高度的勤勉、审慎义务对待这些信息。除本隐私权政策另有规定外，在未征得您事先许可的情况下，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心不会将这些信息对外披露或向第三方提供。<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心会不时更新本隐私权政策。 您在同意<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心服务使用协议之时，即视为您已经同意本隐私权政策全部内容。本隐私权政策属于<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心服务使用协议不可分割的一部分。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">1. 适用范围</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) 在您注册<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心帐号时，您根据<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心要求提供的个人注册信息；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) 在您使用<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心网络服务，或访问<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心平台网页时，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心自动接收并记录的您的浏览器和计算机上的信息，包括但不限于您的IP地址、浏览器的类型、使用的语言、访问日期和时间、软硬件特征信息及您需求的网页记录等数据；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">c) <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心通过合法途径从商业伙伴处取得的用户个人数据。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">您了解并同意，以下信息不适用本隐私权政策：</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) 您在使用<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心平台提供的搜索服务时输入的关键字信息；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心收集到的您在<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心发布的有关信息数据，包括但不限于参与活动、成交信息及评价详情；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">c) 违反法律规定或违反<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心规则行为及青岛九州已对您采取的措施。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">2. 信息使用</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心不会向任何无关第三方提供、出售、出租、分享或交易您的个人信息，除非事先得到您的许可，或该第三方和<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心单独或共同为您提供服务，且在该服务结束后，其将被禁止访问包括其以前能够访问的所有这些资料。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播您的个人信息。任何<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心平台用户如从事上述活动，一经发现，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心有权立即终止与该用户的服务协议。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">c) 为服务用户的目的，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心可能通过使用您的个人信息，向您提供您感兴趣的信息，包括但不限于向您发出产品和服务信息，或者与<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心合作伙伴共享信息以便他们向您发送有关其产品和服务的信息（后者需要您的事先同意）。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">3. 信息披露</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">在如下情况下，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心将依据您的个人意愿或法律的规定全部或部分的披露您的个人信息：</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) 经您事先同意，向第三方披露；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) 为提供您所要求的产品和服务，而必须和第三方分享您的个人信息；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">c) 根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">d) 如您出现违反中国有关法律、法规或者青岛九州服务协议或相关规则的情况，需要向第三方披露；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">e) 如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷；</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">f) 在<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心平台上创建的某一交易中，如交易任何一方履行或部分履行了交易义务并提出信息披露请求的，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心有权决定向该用户提供其交易对方的联络方式等必要信息，以促成交易的完成或纠纷的解决。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">g) 其它<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心根据法律、法规或者网站政策认为合适的披露。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">4. 信息存储和交换</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心收集的有关您的信息和资料将保存在<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心及（或）其关联公司的服务器上，这些信息和资料可能传送至您所在国家、地区或<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心收集信息和资料所在地的境外并在境外被访问、存储和展示。</span></span>\r\n	</p>\r\n	<h1>\r\n		 \r\n	</h1>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">5. Cookie的使用</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) 在您未拒绝接受cookies的情况下，<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心会在您的计算机上设定或取用cookies，以便您能登录或使用依赖于cookies的<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心平台服务或功能。<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心使用cookies可为您提供更加周到的个性化服务，包括推广服务。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) 您有权选择接受或拒绝接受cookies。您可以通过修改浏览器设置的方式拒绝接受cookies。但如果您选择拒绝接受cookies，则您可能无法登录或使用依赖于cookies的中金物联茶叶交易中心网络服务或功能。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">c) 通过<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心所设cookies所取得的有关信息，将适用本政策。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\"> </span></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">6. 信息安全</span></span>\r\n	</h1>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">a) <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心帐号均有安全保护功能，请妥善保管您的用户名及密码信息。<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心将通过对用户密码进行加密等安全措施确保您的信息不丢失，不被滥用和变造。尽管有前述安全措施，但同时也请您注意在信息网络上不存在“完善的安全措施”。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		<span style=\"font-family:\"line-height:28px;font-size:medium;\"><span style=\"font-family:Arial;line-height:28px;\">b) 在使用<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心进行网上交易时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或者邮政地址。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心用户名及密码发生泄露，请您立即联络<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心客服，以便<span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>茶叶交易中心采取相应措施。</span></span>\r\n	</p>\r\n	<p style=\"font-family:\"text-indent:2em;color:#000000;\">\r\n		 \r\n	</p>\r\n</div>', '1493481742', '0', '', '0');
INSERT INTO `yang_article` VALUES ('328', '7', '注册协议', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1. 用户点击众泰财富<span>网注册页面的同意注册按钮并完成注册程序、获得众泰财富</span><span>网账号和密码时，视为用户与众泰财富</span><span>网已达成《用户协议》，就用户进入众泰财富</span><span>网使用众泰财富</span><span>网相应的交易服务达成本协议的全部约定。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2. 众泰财富<span>网及用户均已认真阅读本《用户协议》中全部条款及众泰财富</span><span>网发布的法律声明和操作规则的内容，对本协议及前述服务条款、法律声明和操作规则均已知晓、理解并接受，同意将其作为确定双方权利义务的依据。众泰财富</span><span>网《法律声明》为本协议的必要组成部分，本协议内容包括本协议正文以及众泰财富</span><span>网已经发布的或将来可能发布的各类规则、声明、说明。所有规则、声明、说明为协议不可分割的一部分，与协议正文具有同等法律效力。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3. 本协议不涉及众泰财富<span>网用户与其他用户之间虚拟品类因交易而产生的法律关系及法律纠纷。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>一、定义条款</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.“虚拟品类”指高科技中代替实体货流通的信息流或数据流（包括但不局限于BTC、LTC、YBC等)。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.“众泰财富<span>网</span>”<span>成都百年春网络</span><span>科技</span><span>股份</span><span>有限公司运营和管理的虚拟品类交易平台，域名为</span>www.sha333.com, <span>成都百年春网络</span><span>科技</span><span>股份</span><span>有限公司</span><span>通过该网络交易平台为虚拟品类玩家提供进行虚拟品类的网络交易服务。本协议下文中</span>“众泰财富<span>网</span>”既指网络交易平台<span>。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3.“用户”接受并同意本协议全部条款及众泰财富<span>网不时发布和更新的法律条款和操作规则、通过众泰财富</span><span>网进行虚拟品类交易的众泰财富</span><span>网注册会员。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4.“用户注册”用户注册是指用户登录众泰财富<span>网，并按要求填写相关信息并确认同意履行相关用户协议的过程。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	5.“虚拟品类交易”用户通过众泰财富<span>网进行的虚拟品类交易活动。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	6.“充值款”用户为购买虚拟品类/出售虚拟品类而向众泰财富<span>网平台预充入的法品类</span>/虚拟品类的款项。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	7.“手续费”用户在众泰财富<span>网达成虚拟品类交易而向众泰财富</span><span>网支付的交易服务费用。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>二、用户注册</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>1.注册资格</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户承诺：用户具有完全民事权利能力和行为能力，或虽不具有完全民事权利能力和行为能力</span>,但点击同意注册按钮，本网即视为经其法定代理人同意并由其法定代理人代理注册及应用众泰财富<span>网服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>2.注册目的</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户承诺：用户进行用户注册并非出于违反法律法规或破坏众泰财富</span><span>网虚拟品类交易秩序的目的。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>3.注册流程</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3.1.用户同意根据众泰财富<span>网用户注册页面的要求提供有效电子邮箱等信息，设置众泰财富</span><span>网账号及密码，用户应确保所提供全部信息的真实性、完整性和准确性。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3.2.用户合法、完整并有效提供注册所需信息的，有权获得众泰财富<span>网账号和密码，众泰财富</span><span>网账号和密码用于用户在众泰财富</span><span>网进行会员登录。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3.3.用户获得众泰财富<span>网账号及密码时视为用户注册成功，用户同意接收众泰财富</span><span>网发送的与众泰财富</span><span>网网站管理、运营相关的电子邮件和</span>/或短消息。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3.4 用户注册成功后进行虚拟品类交易，应当提供本人的真实身份证号码，进行实名认证。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>三、用户服务</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>众泰财富网为用户通过众泰财富</span><span>网进行虚拟品类交易活动提供网络交易平台服务。众泰财富</span><span>网不作为买家或是卖家参与买卖虚拟品类行为本身。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>1.服务内容</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.1.用户有权在众泰财富<span>网浏览虚拟品类实时行情及交易信息、有权通过<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网提交虚拟品类交易指令并完成虚拟品类交易。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.2.用户有权在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网查看其<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网会员账号下的信息，有权应用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网提供的功能进行操作。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.3.用户有权按照<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网发布的活动规则参与<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网组织的网站活动。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.4.<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网承诺为用户提供的其他服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>2.服务规则</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户承诺遵守下列<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务规则：</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.1.用户应当遵守法律法规、规章、规范性文件及政策要求的规定，保证账户中所有资金和虚拟品类来源的合法性，不得在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网或利用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务从事非法或其他损害<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网或第三方权益的活动，如发送或接收任何违法、违规、违反公序良俗、侵犯他人权益的信息，发送或接收传销材料或存在其他危害的信息或言论，未经<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网授权使用或伪造<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网电子邮件题头信息等。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.2.用户应当遵守法律法规应当妥善使用和保管其<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网账号及密码、资金密码、和其注册时绑定的手机号码、以及手机接收的手机验证码的安全。用户对使用其<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号和密码、资金密码、手机验证码进行的任何操作和后果承担全部责任。当用户发现<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号、密码、或资金密码、验证码被未经其授权的第三方使用，或存在其他账号安全问题时，应立即有效通知<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网，要求<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网暂停该<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号的服务。<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有权在合理时间内对用户的该等请求采取行动，但对<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网采取行动前用户已经遭受的损失不承担任何责任。用户在未经<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网同意的情况下不得将聚<span style=\"background-color:#FFFFFF;\">众泰财富</span>网账号以赠与、借用、租用、转让或其他方式处分给他人。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.3.用户应当遵守<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网不时发布和更新的用户协议以及其他服务条款和操作规则。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>四、虚拟币交易规则</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户承诺在其进入<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网交易，通过<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网与其他用户进行虚拟品类交易的过程中良好遵守如下<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网虚拟品类交易规则。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>1.浏览交易信息</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户在<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>浏览虚拟品类交易信息时，应当仔细阅读交易信息中包含的全部内容，包括但不限于虚拟品类价格、委托量、手续费、买入或卖出方向，用户完全接受交易信息中包含的全部内容后方可点击按钮进行交易。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>2.提交委托</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>在浏览完交易信息确认无误之后用户可以提交交易委托。用户提交交易委托后，即用户授权<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>代理用户进行相应的交易撮合，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>在有满足用户委托价格的交易时将会自动完成撮合交易而无需提前通知用户。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>3 查看交易明细</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户可以通过管理中心的交易明细中查看相应的成交记录，确认自己的详情交易记录。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>4 撤销/修改委托</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>在委托未达成交易之前，用户有权随时撤销或修改委托。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>五、用户的权利和义务</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1用户有权按照本协议约定接受<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>提供的虚拟品类交易平台服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2 用户有权随时终止使用<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3 用户有权随时提取在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>的资金余额，包括人民币以及虚拟品类，但需向<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>支付相应的提现手续费用。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4 用户对注册时提供的个人资料的真实性、有效性及安全性负责。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	5用户在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>进行虚拟品类交易时不得恶意干扰虚拟品类交易的正常进行、破坏交易秩序。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	6用户不得以任何技术手段或其他方式干扰<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>的正常运行或干扰其他用户对<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>服务的使用。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	7如用户因网上交易与其他用户产生诉讼的，不得通过司法或行政以外的途径要求<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>提供相关资料。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	8 用户不得以虚构事实等方式恶意诋毁<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网的商誉。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>六、<span style=\"background-color:#FFFFFF;\">众泰财富</span></span></b><b><span>网</span></b><b><span>的权利和义务</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1如用户不具备本协议约定的注册资格，则<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>有权拒绝用户进行注册，对已注册的用户有权注销其<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>会员账号，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>因此而遭受损失的有权向前述用户或其法定代理人主张赔偿。同时，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>保留其他任何情况下决定是否接受用户注册的权利。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>发现账户使用者并非账户初始注册人时，有权中止该账户的使用。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>通过技术检测、人工抽检等检测方式合理怀疑用户提供的信息错误、不实、失效或不完整时，有权通知用户更正、更新信息或中止、终止为其提供<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>有权在发现<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>上显示的任何信息存在明显错误时，对信息予以更正。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	5<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>保留随时修改、中止或终止<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>服务的权利，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>行使修改或中止服务的权利不需事先告知用户，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网终止<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>一项或多项服务的，终止自<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>在网站上发布终止公告之日生效。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	6<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>应当采取必要的技术手段和管理措施保障<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>的正常运行，并提供必要、可靠的交易环境和交易服务，维护虚拟品类交易秩序。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	7如用户连续一年未使用<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>会员账号和密码登录<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>，则<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>有权注销用户的<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>账号。账号注销后，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>有权将相应的会员名开放给其他用户注册使用。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	8<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>通过加强技术投入、提升安全防范等措施保障用户的人民币资金及虚拟品类托管安全，有义务在用户资金出现可以预见的安全风险时提前通知用户。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	9<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>有权在本协议履行期间及本协议终止后保留用户的注册信息及用户应用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>服务期间的全部交易信息，但不得非法使用该等信息。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>七、特别声明</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>在法律允许的范围内，不论在何种情况下，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>对由于信息网络设备维护、信息网络连接故障、电脑、通讯或其他系统的故障、电力故障、罢工、劳动争议、暴乱、起义、骚乱、生产力或生产资料不足、火灾、洪水、风暴、爆炸、战争、政府行为、司法行政机关的命令、其他不可抗力或第三方的不作为而造成的不能服务或延迟服务，以及用户因此而遭受的损失不承担责任。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>八、知识产权</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>所包含的全部智力成果包括但不限于网站标志、数据库、网站设计、文字和图表、软件、照片、录像、音乐、声音及其前述组合，软件编译、相关源代码和软件</span> (包括小应用程序和脚本) 的知识产权权利均归<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网所有。用户不得为商业目的复制、更改、拷贝、发送或使用前述任何材料或内容。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>名称中包含的所有权利</span> (包括但不限于商誉和商标、标志) 均归<span>成都百年春网络</span><span>科技</span><span>股份</span><span>有限公司所有。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3用户接受本协议即视为用户主动将其在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>发表的任何形式的信息的著作权，包括但不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利无偿独家转让给<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>所有，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>有权利就任何主体侵权单独提起诉讼并获得全部赔偿。本协议属于《中华人民共和国著作权法》第二十五条规定的书面协议，其效力及于用户在<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>发布的任何受著作权法保护的作品内容，无论该内容形成于本协议签订前还是本协议签订后。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4 用户在使用<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>服务过程中不得非法使用或处分<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>或他人的知识产权权利。用户不得将已发表于<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>的信息以任何形式发布或授权其它网站（及媒体）使用。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>九、客户服务</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span><span style=\"background-color:#FFFFFF;\">众泰财富</span>网</span><span>建立专业的客服团队，并建立完善的客户服务制度，从技术、人员和制度上保障用户提问及投诉渠道的畅通，为用户提供及时的疑难解答与投诉反馈。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十、协议的变更和终止</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.协议的变更：<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网</span><span>有权随时对本协议内容或<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>发布的其他服务条款及操作规则的内容进行变更，变更时<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>将在<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>站内显著位置发布公告，变更自公告发布之时生效，如用户继续使用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>提供的服务即视为用户同意该等内容变更，如用户不同意变更后的内容则用户有权注销<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账户、停止使用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>网服务。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>2.协议的终止</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.1<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网有权依据本协议约定注销用户的<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号，本协议于账号注销之日终止。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.2<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网有权依据本协议约定终止全部<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务，本协议于<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网全部服务终止之日终止。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.3.本协议终止后，用户无权要求<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网继续向其提供任何服务或履行任何其他义务，包括但不限于要求<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网为用户保留或向用户披露其原<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号中的任何信息，向用户或第三方转发任何其未曾阅读或发送过的信息等。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.4.本协议的终止不影响守约方向违约方追究违约责任。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	十一、<b><span>隐私权政策</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"background:#FFFFFF;\">\r\n	<b>1.适用范围</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.1.在用户注册<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网账号或者支付账户时，用户根据<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网要求提供的个人注册信息，包括但不限于身份证信息；</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.2.在用户使用<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网服务时，或访问<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网网页时，聚币网自动接收并记录的用户浏览器上的服务器数值，包括但不限于</span>IP地址等数据及用户要求取用的网页记录；\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.3.<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网收集到的用户在或许<span style=\"background-color:#FFFFFF;\">众泰财富</span>网进行交易的有关数据，包括但不限于出价、购买等记录；</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.4.<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网通过合法途径取得的其他用户个人信息。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b>11.2.信息使用</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1.<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网不会向任何人出售或出借用户的个人信息，除非事先得到用户的许可。聚<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网</span><span>也不允许任何第三方以任何手段收集、编辑、出售或者无偿传播用户的个人信息。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2.<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网对所获得的客户身份资料和交易信息进行保密，不得向任何单位和个人提供客户身份资料和交易信息，法律法规另有规定的除外。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十二、反洗钱</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网遵守和执行《中华人民共和国反洗钱法》的规定，对用户进行身份识别、客户身份资料和交易记录保存制度，以及大额的和可疑交易报告的制度。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2用户注册、挂失交易密码或者资金密码时，应当提供并上传身份证复印件，<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网对用户提供的身份证信息进行识别和比对。<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有合理的理由怀疑用户使用虚假身份注册时，有权拒绝注册或者注销已经注册的账户。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网参照《金融机构大额交易和可疑交易报告管理办法》的规定，保存大额交易和有洗钱嫌疑的交易记录，在监管机构要求提供大额交易和可疑交易的记录时，向监管机构提供。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网对用户身份信息以及大额交易、可疑交易记录进行保存，依法协助、配合司法机关和行政执法机关打击洗钱活动，依照法律法规的规定协助司法机关、海关、税务等部门查询、冻结和扣划客户存款。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十三、风险提示</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>虚拟品类交易有极高的风险。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1虚拟品类市场是全新的、未经确认的，而且可能不会增长。目前，虚拟品类主要由投机者大量使用，零售和商业市场使用相对较少，因此虚拟品类价格易产生波动，并进而对虚拟品类投资产生不利影响。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2虚拟品类市场没有像中国股市那样的涨跌停限制，同时交易是24小时开放的。虚拟品类由于筹码较少，价格易受到庄家控制，有可能出现一天价格涨几倍的情况，同时也可能出现一天内价格跌去一半的情况。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3<span>参与虚拟品类交易，用户应当自行控制风险，评估虚拟品类投资价值和投资风险，承担损失全部投资的经济风险。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4<span>因国家法律、法规和规范性文件的制定或者修改，导致虚拟品类的交易被暂停、或者禁止的，因此造成的经济损失全部由用户自行承担。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十四、违约责任</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网或用户违反本协议的约定即构成违约，违约方应当向守约方承担违约责任。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2如因用户提供的信息不真实、不完整或不准确给<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网造成损失的，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有权要求用户对<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网进行损失的赔偿。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	3如因用户违反法律法规规定或本协议约定，在<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网或利用<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务从事非法活动的，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有权立即终止继续对其提供<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务，注销其账号，并要求其赔偿由此给<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网造成的损失。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	4如用户以技术手段干扰<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网的运行或干扰其他用户对<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网使用的，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有权立即注销其<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号，并有权要求其赔偿由此给<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网造成的损失。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	5如用户以虚构事实等方式恶意诋毁<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网的商誉，<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网有权要求用户向<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网公开道歉，赔偿其给<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网造成的损失，并有权终止对其提供<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网服务。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十五、争议解决</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span>用户与<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网因本协议的履行发生争议的应通过友好协商解决，协商解决不成的，任一方有权将争议提交</span><span>成都</span><span>仲裁委员会依据该会仲裁规则进行仲裁。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<b><span>十六、生效和解释</span></b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	1本协议于用户点击<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网注册页面的同意注册并完成注册程序、获得<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网账号和密码时生效，对<span style=\"background-color:#FFFFFF;\">众泰财富</span></span><span>网和用户均具有约束力。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	2本协议的最终解释权归<span style=\"background-color:#FFFFFF;\">众泰财富</span><span>网所有。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>', '1493481402', '0', '', '0');
INSERT INTO `yang_article` VALUES ('343', '5', '百年通宝币资料', '<p>\r\n	一、百年通宝币参数\r\n</p>\r\n<p>\r\n	中文名：百年通宝币\r\n</p>\r\n<p>\r\n	英文名：BNTB\r\n</p>\r\n<p>\r\n	英文简称：BNTB\r\n</p>\r\n<p>\r\n	开发团队：百年通宝币开发团队\r\n</p>\r\n<p>\r\n	钱包发布日期：2016年10月9日\r\n</p>\r\n<p>\r\n	货币总量：5亿\r\n</p>\r\n<p>\r\n	认购价0.01元/个(认购6%)，开盘价 0.02元/个\r\n</p>\r\n<p>\r\n	P2P端口：41612 RPC端口：41614\r\n</p>\r\n<p>\r\n	核心算法：scrypt+pos\r\n</p>\r\n<p>\r\n	成熟：10 交易确认：8\r\n</p>\r\n<p>\r\n	二、百年通宝币特点\r\n</p>\r\n<p>\r\n	1、以“去中心化、去信任化”为标志\r\n</p>\r\n<p>\r\n	2、交易速度快,确认时间平均为1-3分钟\r\n</p>\r\n<p>\r\n	3、超快链接节点，支付转账速度更快，更新区块更加及时\r\n</p>\r\n<p>\r\n	4、采用6位哈希算法，使用生日攻击寻找groestl哈希碰撞\r\n</p>\r\n<p>\r\n	5、源于区块链技术发展的去中心化数字资产\r\n</p>\r\n<p>\r\n	6、区块链技术是“自由、开放、合作、共享”\r\n</p>\r\n<p>\r\n	7、采用“分布式记账”对交易结果进行数字签名\r\n</p>\r\n<p>\r\n	三、百年通宝币（BNTB）介绍：\r\n</p>\r\n<p>\r\n	百年通宝币基于scrypt+pos算法，采用POW+POS挖矿。百年通宝币不依靠特定机构发行，它通过特定算法的大量计算产生，P2P的去中心化特性与算法本身可以确保无法通过大量制造币来人为操控，可在全网自由流通，百年通宝币采用最新的区块链技术构建的密码学数字资产，相较于比特币更具流通优势，弥补了比特币在商业流通、促进商业运转、文化传播等领域的短板。按照央行等五部委的定义，百年通宝属于虚拟商品的范畴。\r\n</p>\r\n<p>\r\n	五、百年通宝币网站：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	官网：<a href=\"http://www.bntbcoin.org/\">http://www.bntbcoin.org</a> \r\n</p>\r\n<p>\r\n	区块查询：<a href=\"http://121.41.82.118:3001/\">http://121.41.82.118:3001/</a> \r\n</p>\r\n<p>\r\n	百年通宝1群：536505464\r\n</p>\r\n<p>\r\n	百年通宝2群：580361556\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '1484816369', '0', '', '0');
INSERT INTO `yang_article` VALUES ('344', '5', '云商币资料', '<p>\r\n	<span style=\"font-size:16px;\">一、云商币参数</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      中文名：云商币</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      英文名：Yscoin</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      英文简称：YSC</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      开发团队：云商币开发团队</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      钱包发布日期：2016年7月31日</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      货币总量：10亿</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      核心算法：scrypt+pos</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">二、云商币特点介绍</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      1、基于scrypt+pos算法，采用POW+POS挖矿。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      2、YSC不依靠特定货币机构发行，它通过特定算法的大量计算产生。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      3、P2P的去中心化特性与算法本身可以确保无法通过大量制造币来人为操控。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      4、可在全网自由流通，云商币采用最新的区块链技术构建的密码学数字货币。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      5、相较于比特币更具流通优势。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      6、弥补了比特币在商业流通、促进商业运转、文化传播等领域的短板。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">三、云商币（YSC）总量分配</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      1、总量10亿</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      2、按定价0.01元/个(认购6%流通)</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      3、14%用于数字货币群推广活动等各大活动赞助项目基金</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      4、10%用于市场与公关</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      5、10%用于钱包维护</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      6、⑴.冻结：对于发币计划中的百分之60%的云商币，分别转入2个公开的锁仓地址中。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">           锁仓地址：XzQ5D4fBr3HSovsh6aa9VD7De67xQ3AxPbYB7MqBJaTG2MnFHRdc7QDdsGUo2tnHv6x9</span> \r\n</p>\r\n<span style=\"font-size:16px;\">           ⑵.解冻：云商币冻结1年，1年后，分期解冻。</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\"> 四、云商币详细参数</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      官网：</span><a href=\"http://www.ysbi.org/\" target=\"_blank\"><span style=\"font-size:16px;\">http://www.ysbi.org/</span></a> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">      区块查询：</span><a href=\"http://114.55.107.100/\" target=\"_blank\"><span style=\"font-size:16px;\">http://114.55.107.100/</span></a> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h4>\r\n	<br />\r\n</h4>', '1484796262', '0', '', '0');
INSERT INTO `yang_article` VALUES ('346', '1', '天福一号（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	天福一号（生茶）中签公告\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-11-16   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:64px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span></span></span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:64px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">关于《天福一号（生茶）》普洱茶</span></span> </span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:64px;\"><span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">的申购中签公告</span></span></span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心于2017年11月14日对挂牌藏品，《天福一号（生茶）》普洱茶进行定价发行申购。现将中签结果公告如下：</span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\">一、中签分配统计表</span>\r\n	</h1>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680006</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">天福一号（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">24990</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">695240</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><br />\r\n二、出金时间</span>\r\n	</h1>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;font-size:medium;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"line-height:28px;font-size:medium;\"><br />\r\n三、挂牌交易时间</span>\r\n	</h1>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;font-size:medium;\">上述藏品将于2017年11月17日挂牌上市交易。</span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;font-size:medium;\">特此公告<br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;font-size:medium;\"><br />\r\n                                                                                                    <span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心<br />\r\n                                                                                                             2017年11月16日</span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		 \r\n	</p>\r\n</div>\r\n<br />', '1493482554', '0', '', '0');
INSERT INTO `yang_article` VALUES ('347', '1', '龙吟东方（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	龙吟东方（生茶）中签公告\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-10-27   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\">关于《</span><span style=\"font-family:宋体;line-height:28px;\">龙吟东方（生茶）</span><span style=\"font-family:宋体;line-height:48px;\">》普洱茶</span></span></strong></span><span style=\"font-family:宋体;line-height:48px;color:red;font-size:18pt;\"><span style=\"font-family:\"line-height:28px;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\">的申购中签公告</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">25</span>日对挂牌藏品，《</span><span><span style=\"font-family:宋体;line-height:28px;\">龙吟东方（生茶）</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">》普洱茶进行定价发行申购。现将中签结果公告如下：</span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">一、中签分配统计表</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680005</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">龙吟东方（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">11424</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">1452360</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">二、出金时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		 \r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">三、挂牌交易时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">上述藏品将于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">28</span>日挂牌上市交易。</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">特此公告</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">2017</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">27</span>日</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;\"><span> </span></span>\r\n	</p>\r\n</div>', '1493482675', '0', '', '0');
INSERT INTO `yang_article` VALUES ('348', '1', '八角亭勐宋（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	八角亭勐宋（生茶）中签公告\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-10-26   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\">关于《</span><span style=\"font-family:宋体;line-height:28px;\">八角亭勐宋（生茶）</span><span style=\"font-family:宋体;line-height:48px;\">》普洱茶</span></span></strong></span><span style=\"font-family:宋体;line-height:48px;color:red;font-size:18pt;\"><span style=\"font-family:\"line-height:28px;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;color:#FF0000;\"><strong><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:宋体;line-height:48px;\">的申购中签公告</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">24</span>日对挂牌藏品，《</span><span><span style=\"font-family:宋体;line-height:28px;\">八角亭勐宋（生茶）</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">》普洱茶进行定价发行申购。现将中签结果公告如下：</span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">一、中签分配统计表</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680009</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">八角亭勐宋（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">71400</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">9311525</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">二、出金时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		 \r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">三、挂牌交易时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">上述藏品将于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">27</span>日挂牌上市交易。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">特此公告</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">2017</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">26</span>日</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"line-height:28px;\"><span> </span></span>\r\n	</p>\r\n	<p style=\"font-size:14px;text-indent:2em;\">\r\n		 \r\n	</p>\r\n</div>\r\n<br />', '1493482750', '0', '', '0');
INSERT INTO `yang_article` VALUES ('349', '3', '国内监管趋严 日本超越中国成比特币第一大交易市场', '<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    整顿背景下，中国的比特币交易量出现大幅度萎缩。2月，币行和火币网的单日交易体量从原来的百万级降至几万。</span><br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    与此形成冰火两重天的是，日本的比特币交易日渐活跃。2月13日全世界交易量前三名的交易所中，日本的bitFlyer单日交易量为6.9万个比特币，比第二、三名——新加坡的Quoine和中国的币行(OKCoin)交易量总和还要多。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\"><img src=\"/Public/kindeditor/attached/image/20170215/20170215013911_23559.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    第一名的交易量超过其后两名交易量之和</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    其实日本发生过比特币“黑天鹅”事件。2014年2月，总部位于东京的交易所Mt. Gox在承认丢失价值约5亿美元的比特币之后，迅速倒闭。MtGox巅峰时期，曾经处理大约80%的全球比特币交易，2013年下半年被中国交易所——比特币中国超越。</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    Mt. Gox破产后，日本的比特币行业一直处于低谷，但事情在2016年发生了转折。据日本比特币行业信息网站jpbitcoin数据显示，2016年日本比特币交易量增加了5倍，目前的日均交易量大约在12万个到15万个BTC之间。</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    当然这与中国比特币交易的“巅峰行情时刻”的交易量相去甚远。在1月5日比特币价格创历史新高，达到8888元（币行报价）时，币行一家交易所当天的交易量就达到了530万个。</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    币行研究员对澎湃新闻表示，这是因为日本政府对比特币的态度发生了改变，“自比特币诞生以来，其在日本的法律地位始终不清晰。像很多国家一样，日本政府在比特币发展早期采取了观望策略。2016年3月，日本上书国会的新法案首次对比特币等虚拟货币做出了规定，修改了现有的《支付服务法》和《防犯罪收益转移法》，正式承认比特币作为‘一种新型的支付手段’，比特币有了清晰的合法身份。”</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    作为“新型的支付方式”，比特币在日本的实际应用场景越来越丰富，这使得比特币在日本不仅有投资、投机的价值，还具备流通交换的价值。美国《华尔街日报》1月的报道称，目前在日本有5270个商家及网站接受比特币作为付款方式，1月比特币的支付额较去年12月大幅增加8900%，而且月支付额还将继续保持高增速。</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\"> 去年，日本还通过了一项比特币法案，授权由日本金融服务管理局(FSA)来监管比特币和其他虚拟货币交易所。币行研究员认为，这一清晰的监管制度增强了日本民众及全球比特币投资者对于比特币行业在日本的发展前景的正面预期。</span><br />\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    除此之外，日本的交易量也有一部分是从中国转移过来的。有从业者指出，有一些全球比特币交易者碍于中国的监管压力，和比特币交易收费的措施，转移到零佣金的日本交易所投资。</span><br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">    虽然在严监管之下，中国交易所的单日交易量相较于最高峰大幅度下跌了99%，但是价格趋于稳定——2月14日下午5点，币行报价为6850元。2013年12月央行等五部委联合发布了《关于防范比特币风险的通知》，明确不承认比特币货币地位，比特币价格曾经“一夜腰斩”，但是这次央行再次收紧监管，并没有出现类似程度的暴跌情景。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\"><img src=\"/Public/kindeditor/attached/image/20170215/20170215013929_82572.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<span style=\"font-family:Simsun;font-size:16px;line-height:28px;\">   比特币去年12月以来的价格走势（截图自币行OKCoin网页）</span>', '1487122868', '0', '', '0');
INSERT INTO `yang_article` VALUES ('350', '3', '虚拟货币未来可能代替纸币，是不是真的？？？', '<div style=\"text-align:left;\">\r\n	<span style=\"font-size:18px;\">      </span><span style=\"font-size:18px;\">我们正在进入一个全新互联网世界，智能手机带来通信与互联网的融合，移动互联时代的交融和交互，虚拟世界不再是现实世界的克隆，接下来，可能上演的是数字货币将颠覆全球的央行体系，这里有一个热词叫互联网金融。当互联网消费狂飙突进成为全球第一的时候，背后是人流、物流和资金流的聚集。可以说，互联网消费左右了资金的流向。支付宝和余额宝仅仅是加速了货币网络化和数字化的过程，这已经让商业银行感到紧张，存款的加速流失和资金争夺仅仅是一个开始，接下来诞生的将是阿里、腾讯和百度的数字银行；如果他们被允许发行数字货币，甚至可能颠覆现有银行体系。一旦全球数字货币形成联盟，成为价值衡量的媒介，实现交换的功能，全球可能出现继黄金之后的通用货币。比特币的出现已经让全球央行变得紧张，这只是一个开头。数字货币首先颠覆的是美元体系，全球其他国家尤其是中国和金砖国家的财富都是与美元挂钩的，金砖国家同时持有大量的黄金，以备美元和黄金之间双向切换，但是，美元掌握着黄金定价权。未来数字货币而不是国际货币基金的特别提款权可能实现全球货币的统一，这可能是和平与繁荣之路，取决于全球央行如何面向一个数字化生存的未来。</span>\r\n</div>', '1488337092', '0', '', '0');
INSERT INTO `yang_article` VALUES ('351', '3', '无视央行打压，比特币又疯了，两大原因助推外盘价格创新高', '<p>\r\n	<span style=\"font-size:18px;\">近日比特币又出现疯涨行情，国内价格一度超过8000元，美元计价的更是创下历史新高，为什么在中国央行多次约谈国内比特币平台，比特币的价格在经历的几次暴跌之后依然上涨呢？</span><img src=\"/Public/kindeditor/attached/image/20170303/20170303032350_80857.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">比特币最近为何走高？两个可能的原因。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">首先，美国参议院上週通过南卡州众议院议员Mick Mulvaney接掌白宫预算管理局(OMB)局长任命案。Mick是第一个接受比特币捐款的美国国会议员、协助发起研拟加密货币相关政策的区块链(Blockchain)党团会议。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">其次，市场预期「Winklevoss比特币ETF(交易代号暂定为：COIN)」有望在3月11日获准成为美国第一支比特币ETF、因此提前进场卡位。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">2月16日Mulvaney人事任命案的通过对比特币来说是一大鼓舞。Mulvaney曾在2014年4月说，比特币最终可能影响美元与美国货币政策。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">彼得提尔(Peter Thiel)是去年美国大选期间唯一公开力挺川普(Donald Trump)的硅谷创业家，他所投资的创投公司(Founders Fund)就是比特币支付新创公司BitPay, Inc.背后的金主。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">提尔上个月在接受纽约时报专访时表示不会成为川普政府行政团队的一员、未来将继续以企业家身分待在硅谷协助川普。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">川普去年底宣布提名Mulvaney接掌白宫预算管理局局长时说，美国国债逼近20万亿美元，在Mulvaney的领导下、美国纳税人将对国家财政重拾信心。Mulvaney为2013年财政悬崖(当时导致联邦政府暂时关门)的主要支持者。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">比特币上周最高报价来到1,220美元。美国2016年总统大选前一天、比特币以702.5美元收盘。换言之，川普胜选以来美元计价的比特币涨幅超过70%。同时最近由于利好来自美国，比特币内外价差出现倒挂</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">此外，黄金现货价上周上涨1.62%至1255美元/盎司、周内一度创2016年11月11日以来盘中新高，比特币大（蓝线）有再度赶超黄金（红线）的势头：</span>\r\n</p>\r\n<img src=\"/Public/kindeditor/attached/image/20170303/20170303032527_82270.png\" alt=\"\" /> \r\n<p>\r\n	<span style=\"font-size:18px;\">2016年2月15日出刊的《财新周刊》报导，中国人民银行行长周小川在受访时表示，纸币终将被取代，央行发行的数位货币不会影响现有的货币供给、创造机制和货币政策传导，其防伪性和安全性则有赖于多种信息技术手段的保障。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">获《经济学人(The Economist)》点名为2014年全球最具影响力经济学家之一的英国央行(BOE)首席经济学家安德鲁霍丹(Andrew Haldane)2015年曾说，如果景气进一步恶化的话、光是推出负利率政策(NIRP)也可能无法刺激消费，因为人们会把现金自银行提领出来；要让负利率真正发挥刺激功能就是用类似比特币技术的电子钱包来取代纸钞，如此一来民众若不想看到存款平白缩水、就会乖乖用力消费。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">去年4月指出，霍丹曾表示，当量化宽松也失去效力，或许是该认真思考比特币、区块链的时候。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1488511641', '0', '', '0');
INSERT INTO `yang_article` VALUES ('352', '2', '经济学人：区块链专利战一触即发', '<img src=\"/Public/kindeditor/attached/image/20170303/20170303033025_78101.png\" alt=\"\" /><span style=\"font-size:18px;\">对数字货币比特币的追捧者来说，今年的开局波动剧烈。1月5日，比特币交易价格接近1150美元，几乎达到三年前的历史高位，而那之后已下跌33%。比特币作为区块链目前最大的应用，为数字货币的发展打开了思路。然而，在数字货币的其他领域，变化没那么剧烈，问题也正在酝酿：一场针对区块链（一种分布式分类账，用以认证并记录每一次比特币交易）的专利战即将来临。</span>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">新兴技术市场上就知识产权的激战并非什么新鲜事。但区块链有望颠覆诸多领域的操作方式——从珍贵钻石的保护到股票的交易方式，因此相关的法律争端可能尤为激烈。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">表面上看，区块链是一种难以申请知识产权保护的技术。比特币的创造者（只知其化名为中本聪）曾就这项发明发表了一篇论文，并编写了首个比特币程序，而后便销声匿迹。这就意味着这一技术的核心如今属于公共数据，只有重大补充和改良才可以获得专利。区块链的构成广为人知。在美国，相关法院裁决以及新的专利授予法令都令人难以对这类金融创新宣称所有权。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">但美富律师事务所（Morrison & Foerster）的科莱特·莱纳·迈耶（Colette Reiner Mayer）表示，这并未阻止企业就自己对区块链的重大改良争取专利保护，包括安全及加密技术。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">现在这些专利申请已经逐渐公开，因为美国专利局必须在申请提交18个月后发布信息。在全球数据库Espacenet上可以搜索到36项相关申请，据说还有几百个这类申请正在处理中。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">金融公司位居最积极的申请人之列，例如万事达正在申请四项支付方面的专利，高盛也在就一项用于处理外汇交易的分布式分类账技术提交专利申请。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">迄今为止，只有极少数专利获批。已公开的申请人都说自己只是想“防御性”地使用专利，意思是要保护自己以免惹上官司。然而似乎难免会爆发诉讼战：传统银行可能会阻击新来者，而“非专利实施实体”（即专利囤积商）则可能勒索其他公司。多个区块链项目的协作组织超级账本（Hyperledger）的布莱恩·贝伦多夫（Brian Behlendorf）警告说，这会拖慢创新的速度。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">为限制这类争端，一些创业公司正在开放自己的知识产权。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">区块链创业公司Chain、数字资产控股（Digital Asset Holdings）以及超级账本已把各自的软件开源，让人们能随意获取底层代码，这也吸引了更多的用户和开发者。部分程序甚至附有许可证，因而无法向使用相关代码的人追究专利侵权。另一家创业公司Blockstream也已签署了一份“专利保证书”，承诺只要他人不恶意使用其专利，就不会起诉他们。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">此外还有关于成立专利联盟的讨论，类似开源发明网络（Open Invention Network，以下简称OIN）。OIN创建于2005年，目的是保护成员公司免于因使用Linux这一广受欢迎的开源操作系统而遭到诉讼。OIN获取专利，然后授予其成员免费使用许可，成员则同意不主张自己的专利。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">这种相互按兵束甲的战略是否足以避免又一场专利战？只有当区块链成长为价值数十亿美元的业务时，答案才会明朗。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">上月，清算及结算服务提供商美国证券托管结算公司（DTCC）宣布将采用区块链技术构建其下一代交易信息系统，而支付网络环球银行金融电信协会（SWIFT）也表示正在研究该技术。这可能会催生更多的专利申请。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">来源：经济学人</span>\r\n</p>', '1488511906', '0', '', '0');
INSERT INTO `yang_article` VALUES ('354', '2', '两会期间人大代表为何频繁提及比特币？', '<p style=\"text-indent:2em;\">\r\n	<a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币</span></a><span style=\"font-size:16px;\">是 一种以P2P形式存在的</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">数字货币</span></a><span style=\"font-size:16px;\">，通过</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">技术实现了分布式记账。2010年</span><a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币</span></a><span style=\"font-size:16px;\">的概率在国内兴起，由于比特币拥有与黄金投资品类型的属性：总量固定且稀缺，所以比特币又被誉为电子黄金。比特币的发行总量是2100万枚，但全球只有一千多万人知道并且使用比特币。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">任何创新和新技术的崛起都必须要符合正规合法的规章制度，比特币作为一种伟大创新的技术，国外对比特币的发展是包容且有明确的监管机制。在美国，比特币在加州等部分州已经取得合法地位，纽约金融服务部门（DFS）发布了一份关于企业购买及出售</span><a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">虚拟货币</span></a><span style=\"font-size:16px;\">的规范、规则和条例提案。2016年日本金融厅（FSA）正式承认比特币和数字货币的货币地位。同年，俄罗斯中央银行正式废除对比特币和虚拟币的禁令。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">中国作为经济大国，对于比特币行业也是极其重视。2013年中国人民银行等五部委联合发布《关于防范比特帀风险的通知》，通知规定了比特币为虚拟商品，公民可自由买卖，但需要自己承担风险。2017年1月，央行成立工作小组入驻国内三大</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币交易平台</span></a><span style=\"font-size:16px;\">，了解</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币交易平台</span></a><span style=\"font-size:16px;\">运营情况，并围绕支付结算、反洗钱、外汇管理、信息及资金安全等方面情况开展检查。检查组提示投资者应当关注比特币平台交易的法律合规、市场波动、资金安全等风险，审慎参与比特币投资活动。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">在央行的指导工作后，国内比特币交易平台价格回归理性。据OKCoin币行网的一月份行情数据显示，比特币从三年来最高价格8888元缩水至最低价格4885元。虽然</span><a href=\"http://www.bitcoin86.com/hq/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币行情</span></a><span style=\"font-size:16px;\">一直如过上车一般，但监管的介入让市场回归理性。</span>\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170309/20170309073958_94125.jpg\" alt=\"\" /><span style=\"font-size:16px;\"></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">OKCoin币行从2013年至今成立近四年的时间，在行业的地位不言而喻。央行小组入驻比特币交易平台，徐明星在积极配合相关部门的同时，也主动倡议行业自律，并提出九条自律公约。九条行业自律公约包括设置合规部门，系统可信可控，遵守金融秩序，企业自觉备案，加强用户教育，反洗钱及反电信诈骗，反传销，反市场操纵、反资金挪用，同业信息共享等。同时积极配合监管，一同引导行业在中国的积极、健康发展。最后徐明星强调OKCoin币行将积极配合人民银行等相关部门监管，一同规范比特币区块链行业。徐明星表示“行业需要正视处理风险，所有从业公司应该积极制订措施，把行业引向阳光。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">随着国内交易平台严格遵守法律法规，积极配合监管部门。形成行业自律联盟共同制定比特币行业反洗钱规范，全面升级平台反洗钱系统，国内比特币交易市场的用户也回归理性。不过市场对于比特币的关注度依旧高涨，一年一度的两会期间，比特币也成为讨论的话题之一。</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\"> 央行周学东：对境内比特币交易平台应当包容、暂不取缔</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">3月6日，全国人大代表、中国人民银行营业管理部主任周学东提出建议，对境内比特币交易平台应当包容、暂不取缔，留下一段观察期，但在短期内必须明确比特币交易平台监管红线，严格监管。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“长期看有必要研究探索长效监管机制。”周学东说，需要研究比特币等虚拟货币的金融属性和商品属性，研究比特币交易平台的性质，探索出台国家层面的比特币交易平台管理试点政策，对少数合格交易平台进行许可或备案试点。同时，强化监管合作机制，加强行业自律，构建比特币交易所诚信体系。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">人大代表沃伟东：建议合理监管比特币、促其良性发展</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">3月7日下午，上海汇银（集团）有限公司董事长沃伟东在发言中建言，应该将比特币置于法律框架下，以促进其良性发展。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">沃伟东表示，近期央行出手加大对比特币交易平台的监管力度之后，取得了多方面的效果，明确了比特币性质，抑制了市场的泡沫，同时对社会资金的风险，也得到了初步控制。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">不过，沃伟东认为，在取得上述成效的同时，也要观察到相关的问题。“目前中国比特币的交易量大幅减少，中国主要交易平台的交易量跌至不到原来的1%。”而与此相对应的是，在此之前，全球超过90%的交易量都发生在中国。正由于此前中国占据着交易量的高地，因此“毫无疑问拥有比特币的全球定价权，对比特币乃至区块链行业，具有足够的话语权和影响力。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">沃伟东表示，对于比特币以及区块链这样的新生事物，世界大国都在积极探索，因此不可以简单地否定和抛弃。他建议将比特币纳入互联网金融监管，制定合适的监管策略。“合适的监管策略能够在控制风险的同时，真正地激励创新、推动创新、引领创新。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">比特币相比黄金、股票其市值微乎其微，但是比特币的底层应用技术区块链吸引到了诸多关注目光。由于区块链技术得到官方认可，全球各市场都在研究区块链技术和数字货币的可行性，中国央行也在公开招聘相关人才、实践数字货币，在这样一个背景下，相信各国会抱着更加宽容的心态来对待比特币行业。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1489045538', '0', '', '0');
INSERT INTO `yang_article` VALUES ('355', '3', '俄罗斯对区块链态度持续升温：梅德韦杰夫命令有关部门研究区块链在公共领域的应用', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170309/20170309075119_55054.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">俄</span><span style=\"font-size:16px;\">罗斯总理米特里·梅德维杰夫（Dmitry Medvedev）要求两个政府部门及俄罗斯国有发展银行研究区块链在公共部门的应用。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">今年3月6日，梅德韦杰夫曾与俄罗斯政府官员共同讨论了区块链等其他内容。梅德韦杰夫在简单了解过该技术之后，表示他已经要求通信部和经济发展部研究这项技术在公共部门的应用，另外，国有金融服务公司俄罗斯发展银行也被要求参与此次研究任务。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">梅德韦杰夫还表示：</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“我已经向有关部门下达了指令，要求通信部和经济发展部考虑这些技术在‘数字经济’项目当中的应用。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\">上述命令与评论都表示了有关部门应该探索如何将区块链技术用于“俄</span><span style=\"font-size:16px;\">罗斯联邦的公共行政和经济系统中”。根据该命令，相关部门至少要在5月11日前采取初步的动作。</span></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">就在一周前，梅德韦杰夫曾在索契投资者大会上宣称区块链“可能果断地改变我们的生活。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">该新闻标志着俄罗斯政府正在努力跟上国家私营领域及俄罗斯央行的步伐。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">俄罗斯央行为区块链公司Qiwi领导的新金融科技团体扫清了路障。俄罗斯银行本身也在致力于数字货币等领域的研究，并开发了一个名为“Masterchain”的分布式账本平台。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Masterchain是基于分布式账本技术的工具，可保证银行与其他金融机构的通讯安全，迅速确认客户数据或交易信息的真实性，提高信息交换速度，同时保证最高的金融交易安全性和隐秘性。俄罗斯很多大型银行和金融机构参与了Masterchain原型开发，包括Sberbank、Alfa Bank、Bank Otkritie、Tinkoff Bank和Qiwi。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">近来，俄罗斯对待区块链的态度可谓是持续升温。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">事实上，俄罗斯政府已经在谨慎地使用区块链技术对国家支付系统客户进行识别。今年1月份，俄罗斯杜马联邦议会，财政部以及被称为Rosfinmonitoring的联邦金融监测局审查了金融创新协会（AFI）起草的关于改进国家支付系统监管的提案。该提案主要规定了之后的发展路线，即利用区块链技术创建一个不可变的透明客户识别系统。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">俄罗斯联邦储蓄银行行长Herman Gref表示，将于2019年年底之前在俄罗斯部署全产业规模的区块链。Gref还表示，总理梅德韦杰夫已经批准设立工作组，以研究区块链应用。他说：“俄罗斯联邦总理签署设立了一个特别工作组，由第一副总理Igor Shuvalov牵头，重点关注如何吸收区块链技术。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">另外，俄罗斯计划于2017年3月10日在公民会议厅举办区块链圆桌会议。届时，来自俄罗斯和国外的杰出专家都将参与贡献他们在这方面的专业知识。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">上个月，一位俄罗斯业界专家甚至表示，区块链是未来核战争最有效的防御方式。来自机构工程实验室的Sergey Chernyshev认为，区块链智能合约能够对抗未来潜在的威胁，并拯救人类。据悉，这不是核防御领域首次提到区块链。去年10月，美国五角大楼宣布，他们计划采用区块链技术进行核武器防御和信息加密。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">由此可见，区块链在全球的发展趋势将会逐步加快。此前，凯捷咨询预测，区块链技术应用在2018年初具规模，2020年将成为主流。我们拭目以待。</span>\r\n</p>', '1489045983', '0', '', '0');
INSERT INTO `yang_article` VALUES ('356', '1', '禅宗一品（生茶）中签公告', '<p>\r\n	<br />\r\n</p>\r\n<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n		禅宗一品（生茶）中签公告\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n		发布日期：2017-05-27   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">关于《禅宗一品（生茶）》普洱茶</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;color:#FF0000;\"><span style=\"line-height:28px;font-size:x-large;\">的申购中签公告</span></span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心于2017年2月29日对挂牌藏品，《禅宗一品（生茶）》普洱茶进行定价发行申购。现将中签结果公告如下：</span> \r\n</p>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\">一、中签分配统计表</span> \r\n</h1>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680013</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">禅宗一品</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">3684</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">590763</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"><br />\r\n二、出金时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span> \r\n</p>\r\n<h1>\r\n	<span style=\"line-height:28px;font-size:medium;\"><br />\r\n三、挂牌交易时间</span> \r\n</h1>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">上述藏品将于2017年01月04日挂牌上市交易。</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;font-size:medium;\">特此公告<br />\r\n<br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"line-height:28px;font-size:medium;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心<br />\r\n2017年01月03日</span> \r\n</p>\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>', '1493482340', '0', '', '0');
INSERT INTO `yang_article` VALUES ('357', '2', '《哈佛商业评论》：区块链将会像互联网改变媒体一样，改变银行和法律界', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170310/20170310023404_59114.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">尽管互联网已出现多年，仍有不少人认为这只是一时流行的狂热。当然，互联网已经极大地影响了我们的生活，从我们如何购买货物和服务，到我们如何与朋友交往，到美国总统大选。然而，在20世纪90年代的时候，主流媒体曾对尼古拉斯·尼葛洛庞帝（Nicholas Negroponte）的预言嗤之以鼻，这位互联网先驱曾预言过未来大部分人群都会在线阅读新闻，而不是用报纸来了解时事。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">假如时光快进二十年，我们是否会从加密货币和区块链身上看到类似的影响呢？当然现实中也有许多平行线。跟互联网一样，像比特币这样的加密货币，其驱动因素都是先进的核心技术及新型的开放架构——比特币区块链。就像互联网那样，区块链技术的目标就是实现去中心化，每一层都由一个具有互操作性的开放协议定义，在此基础之上，公司与个人都可以搭建产品和服务。区块链与互联网一样，在早期的发展阶段也面临众多的竞争技术，所以要详细说明你所讨论的区块链是哪一种。而且，正如互联网那样，只有所有人都使用同一网络的时候，区块链技术才是最强大的，所以在未来我们可能讨论的都是“那个”区块链。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">区块链的杀手级应用</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">但是互联网与区块链有一个重要区别：早期的互联网都不是商用的，最初的应用是用于研究机构和大学之间的沟通。它一开始的设计目的并不是为了挣钱，而是为了寻找最稳健且有效的方法来搭建网络。最初没有商业玩家和商业利益渗透其中，这是至关重要的——它促成了共享资源的网络架构的形成，这种共享方式在以市场为导向的系统中是不可想象的。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">早期互联网的“杀手级应用”是电子邮件，这也是推动互联网普及与强化的驱动因素。比特币是区块链的杀手级应用。比特币推动了其底层技术区块链的普及，其强大的技术社区和代码评审过程造就了各种最安全最可靠的区块链。跟电子邮件一样，比特币的某种形式极有可能持续下去。但是区块链也会支撑起各种其他应用，包括智能合约、资产注册和众多新型交易，这些将会超越金融和法律的使用案例。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">我们可能最好把比特币理解为一个小宇宙，其中运转着一种去中心化的、可自动执行的新型金融系统。尽管其当前的能力仍有一定的局限（如跟传统支付系统相比交易量较低），但其可能的未来却格外引人注目，因为它的代码描绘了一个可监管的经济系统。例如，交易必须要满足一定条件才能得到比特币区块链的认可。跟当前金融系统通过书写规则和任命监管者来监测违规行为不同，比特币的代码自行设定规则，网络自动检查是否合规。如果有交易违反了规则，就会被网络拒绝。比特币的“货币政策”也被写入代码：新币每隔10分钟发行，供应量有限，一共只会有2100万个比特币，这条硬性规则与金本位十分相似。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">并不是说当前比特币所有的一切都已经十分完美。事实上，许多经济学家都不认可比特币的硬性货币规则，而且律师界认为只通过代码进行监管有失灵活性，不能保证所有的规则都考虑周到。但无可争议的是，比特币是真实的，其规则也是凑效的。人们将经济价值赋予比特币。维护着比特币区块链的“矿工”和制作比特币交易软件的“钱包供应商”都无一例外地遵循着规则。区块链一直保持着对于攻击的弹性，而且它也支持着稳健的基础支付系统。此次扩展区块链应用的机遇将会重塑金融系统。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">太多太快？</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">不幸的是，FinTech投资者们的热情远远超过了该技术的发展水平。我们现在经常看到一些所谓的区块链事实上并没有实现创新，它们不过是一些数据库而已，但却为了赶上这趟时髦的潮流而自称区块链。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">之前曾有过一些“前互联网时代”玩家，如电信运营商和有线电视公司都试图打造交互式多媒体，但显然都并没有什么吸引力，以至于人们很快便忘记了它们的名字。我们可能正在见证区块链技术经历着相似的趋势。当前，现有的金融机构正在努力一点点做出改变，而新的创业公司也正在迅速变化的基础设施上搭建场景，并期望在一切成为定局之前占得一席之地。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">就加密货币而言，我们看到比起互联网的早期发展阶段，区块链的初级阶段已经拥有了过多风投资本的投资。投资者们和企业的过度兴趣让加密货币从基础上就有别于互联网，因为它们不会跟互联网一样有数十年默默无闻的时间供非商业的研究人员来摆弄、试验、反复检验和思考其架构。这也是为何说当前麻省理工媒体实验室所做的数字货币项目十分重要的原因：这是能撇开金融利益和动机的，潜心对该技术和架构投入大量努力的为数不多的项目之一。这是至关重要的。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">当前现有的金融机构都十分复杂，而这复杂性也带来了风险。使用加密货币的新型去中心化金融系统由于去除了中介而更加简单。它会有助于防范风险，并通过各种不同的转账方式开放了不同类型金融产品的可能性。加密货币可以将金融系统向当前无法享受金融服务的人群开放，降低他们的准入门槛。监管者可以重新思考如何才能更好地达到政治目标，并以此来重塑金融体系，而无需稀释标准。我们也有机会降低系统性风险。研究表明系统更加透明能减少中介机构，并降低金融系统用户的成本。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">技术快餐？</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">随着新技术的成熟，其主要用途，甚至人们利用新技术和基础设施的价值都会发生重大变化。对于区块链技术来说，当然也是如此。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">比特币的首次出现是为了应对2008年的金融危机。创始社区坚定地拥护自由主义，且反对正统主义，而这与免费软件文化十分相似，拥有强烈的反商业化价值。但是，正如免费开源的Linux操作系统如今几乎内嵌在各种商业应用或服务当中一样，区块链的绝大多数使用案例都会成为现有大玩家（如大公司、政府和央行）的快餐。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">同样，许多人认为区块链技术和FinTech都仅仅只是一种过渡的新技术——或许与电脑光盘驱动器十分近似。事实上，区块链对于金融系统和监管所做的一切，与互联网当初对媒体公司和广告公司所做的行为十分相似。这样对于经济核心部分的基础性重构对于当前靠旧体系谋生的大公司来说是一个巨大的挑战。为这些变革做好准备需要进行大量的研究和试验。那些已经在行动的群体将会在新兴经济体系中继续茁壮成长。</span>\r\n</p>', '1489113412', '0', '', '0');
INSERT INTO `yang_article` VALUES ('358', '3', '交易所与银行巨头开展合作，致力于开放比特币投资', '<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">合作伙伴的目标是通过以数字货币的形式提供可替代的资金方法，来增加向新投资基金的资本流入。基金发起人与CACEIS一起作为转账代理，可以在2017年第二季度开始接受将比特币用于基金认购。</span><br />\r\n<span style=\"font-size:16px;\"> Bitstamp首席执行官NejcKodrič认为，合作关系是比特币的立足点，提供了主流且合法的投资机会。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“Bitstamp与市场上领先的资产服务银行CACEIS的首次合作，意味着如今可以在授权和监管完备的框架内进行比特币投资，”他说。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n<span style=\"font-size:16px;\"> 随着比特币日益受瞩，不难窥探一些投资者正被其强烈吸引的原因。在有资本管制的司法管辖区，使用比特币有效缓解了监管所带来的头痛，简化了跨境支付的流程。</span><br />\r\n<span style=\"font-size:16px;\"> CACEIS副首席执行官Joe Saliba说：</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n<span style=\"font-size:16px;\"> “基金发起人不断寻求新的投资资本源，通过将其与受监管的比特币交易所相对接，我们得以支持他们的业务发展目标。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Bitstamp一直处于欧洲数字货币合规性的前沿。去年7月，交易所收到了监管机构的绿灯，成为卢森堡第一个完全授权的支付机构。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">来源：雷盈金融科技</span>\r\n</p>', '1489113584', '0', '', '0');
INSERT INTO `yang_article` VALUES ('359', '2', '周小川：数字货币、区块链等技术会产生不容易预测到的影响，需要进行规范。', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311011331_41022.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">今日，中国央行行长周小川、副行长易纲、副行长兼国家外管局局长潘功胜、副行长范一飞举行记者会，就“金融改革与发展”的相关问题回答提问。对于加息、统一资管、稳定汇率等问题，周小川都一一做了回应。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">在此次央行发布会中，中国证券报记者提问范一飞副行长：近年来，第三方支付产业发展非常迅速，人民银行也采取了一系列监管措施，包括收紧牌照发放、备付金集中存管等，这些举措是否限制了这个行业的发展？目前第三方支付产业的整体状况怎样？下一步人行还会采取哪些监管措施？</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">期间，周小川行长特别提到数字货币、区块链相关问题：<strong>“</strong><strong>央行认为科技的发展可能对未来支付业务造成巨大改变，央行高度鼓励金融科技发展。数字货币、区块链等技术会产生不容易预测到的影响。在发展过程中出现的问题，需要进行规范。”</strong></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">以下为周小川行长回应部分文字实录：</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">我补充两句。<strong>一是人民银行认为科技的发展可能会对未来的支付业造成一些巨大的改变，这个改变是进步，因为带来很多新的手段</strong><strong>。人民银行高度鼓励，同时也和各种业界共同合作，把金融科技的发展搞上去</strong>。特别强调一点是网络科技的发展，还有就是<strong>数字货币的发展，其中也包括区块链等新技术，这些新技术会在未来产生一些当前人们不容易完全想象或者预测到的影响。</strong></span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">但同时，像范一飞副行长所讲的，既要鼓励发展，同时也要防范风险，健康发展。其中不健康的行为要不断规范。当然，也不是说从一开始就去束缚人家的手脚，但是在发展过程中，大家已经看到一些问题，必须进行规范，包括无证经营问题、侵犯隐私问题、支付产品安全性不够问题。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">此外，还有一个问题，就是有一部分支付机构的动机和心思并不是想用新的网络科技手段把支付搞好，而是眼睛盯着客户的备付金，觉得那个资金可以拿来赚利差，甚至有的打自己的主意，缺钱的时候从那里挪用一些，这就是动机不纯。我们支持支付业真正把心思都扑在通过科技手段提高支付系统的效率、安全和为客户服务上，而不是瞄着人家的资金，在那个资金上打主意。我们的有关政策和激励机制也要实现这样一点，这对于将来的健康发展也是很重要的。谢谢。</span>\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1489195151', '0', '', '0');
INSERT INTO `yang_article` VALUES ('360', '3', '区块链加速落地，苏宁金融将成立专项实验室', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170311/20170311013034_44414.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:justify;text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">去中心化、可追溯性、不可篡改……这些让“</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">”成为当下金融科技领域最为时髦的词。目前，欧美已经有创业企业、大型金融机构、互联网巨头，甚至政府等加入到</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">的研究和实际应用中来。而在中国，央行、商业银行和金融科技机构纷纷跑步入场，苏宁金融也是其中一个。据悉，苏宁金融研究院将在今年设立</span><a href=\"http://www.bitcoin86.com/plus/search.php?q=%E5%8C%BA%E5%9D%9\" target=\"_blank\"><span style=\"font-size:16px;\">区块链实验室</span></a><span style=\"font-size:16px;\">。</span>\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">区块链在国内快速落地</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n<span style=\"font-size:16px;\"> 综合各个专家的解释，“区块链”可以定义为：“区块链是一种新型去中心化协议，能安全地存储各类交易数据，信息不可伪造和篡改，可以自动执行智能合约，无需任何中心化机构的审核。”去中心化、不可篡改、可追溯性、去信用中介等特点，让这项技术备受期待。</span>\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">在国外，诸多机构和联盟从事区块链的研发。例如，较为著名的R3联盟成立于2015年，旨在运用区块链技术帮助金融机构变革基础设施，它一度发展至70多家国际金融机构会员，包括花旗银行、美国银行、德银等国际巨头，也有招行、中国平安等内地大型金融机构。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">“在欧美早已有区块链实际应用的案例。”苏宁金融研究院研究员何广锋介绍，Overstock于2015年8月发布t 区块链平台，并获得美国证券交易委员会SEC的批准在区块链中发行数字股票；2015年12月，纳斯达克首次利用区块链技术完成私人证券交易；而爱沙尼亚基于国家级公钥基础设施（PKI），早在2013年就使用区块链技术管理公民身份信息和企业信息。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">就国内而言，从2016年下半年开始，中国的区块链研究和开发、应用开始逐渐占上 “风口”。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">2016年6月24日央行调查统计司司长盛松成称，央行</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">数字货币</span></a><span style=\"font-size:16px;\">与现有电子形式的本位币不同，可能将基于区块链技术，不借助第三方中心化机构就实现“点对点”支付结算，并实现资金流向追踪、交易数据采集、提高资金流动性。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">此后，传统金融机构在区块链的探索上成果显著：招商银行自主创新研发、实施了“招行直联支付区块链平台”，通过POC验证测试并推动项目正式商用；兴业银行与荷兰ING成功完成实时区块链石油交易试验；平安集团曾宣布已有团队在7、8个场景探索区块链技术应用，其中资产交易和征信2个场景已上线并开始了真正的交易。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">兴业银行行长陶以平此前表示，事实上，在本轮金融科技浪潮中，传统金融机构依托多年的金融电子化、信息化建设基础，坚守金融的基本规律，积极拥抱移动互联网、大数据、云计算、人工智能、区块链等新科技手段，大大推进了整个金融业资源配置效率的提升和成本的下降，不仅没有被颠覆，且大有后来居上的趋势。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">苏宁金融成立区块链实验室</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">相比之下，互联网巨头或者金融科技机构的“动作”似乎慢了一些，未见明显的成果。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">2016年7月31日，蚂蚁金服首席技术官程立在2016互联网金融外滩峰会上宣布，蚂蚁金服尝试将区块链应用于公益场景；</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">时至2017年3月，点融网和富士康集团旗下金融平台富金通今日宣布，双方共同推出了一个名为“Chained Finance”的区块链金融平台，在业内首次借助区块链技术破解供应链金融和中小企业融资难题。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">“从国际的经验来看，率先参与到区块链研究并取得成果的，是一些大型的传统金融巨头。去中心化、去信用中介的区块链技术对他们 威胁 巨大，需要尽快掌握这项技术，再加上自身雄厚的资金与技术实力，让他们占得先机。”业内人士分析。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">除了BAT这些巨头之外，一些大型金融科技机构也跑步进场，苏宁金融正是其中一家。据了解，2017年3月起，苏宁金融在旗下苏宁金融研究院中设立区块链实验室，并安排专人负责相关研究、开发工作。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">苏宁金融研究院研究员何广锋对记者表示，区块链主要分为公有链、联盟链、私有链，在当前监管制度和法律环境下，联盟链、私有链更能符合监管要求，并能推进工业标准形成，是今后研发的主要方向。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">苏宁金融研究院是苏宁金融旗下的大型专业研究机构，于2015年11月在南京成立，致力于成为在O2O零售金融、互联网金融、金融科技、消费金融、供应链金融、宏观经济、区域经济和产业发展等领域的一流智库。（山西新闻网-三晋都市报）</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1489196228', '0', '', '0');
INSERT INTO `yang_article` VALUES ('362', '3', '周小川行长再提区块链和数字货币', '<p style=\"text-indent:2em;\">\r\n	<img src=\"/Public/kindeditor/attached/image/20170313/20170313020549_53934.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">3月11日，十二届全国人大五次会议新闻中心举行记者会，中国人民银行行长周小川、副行长易纲、副行长兼国家外汇管理局局长潘功胜、副行长范一飞受邀就“金融改革与发展”的相关问题回答中外记者的提问。</span>\r\n</p>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">值得注意的是，在这次发布会上，周小川行长还谈及了</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">数字货币</span></a><span style=\"font-size:16px;\">及</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">，他表示：</span>\r\n</div>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<div>\r\n		<span style=\"font-size:16px;\">“ 央行认为科技的发展可能对未来支付业务造成巨大改变，央行高度鼓励金融科技发展。数字货币、区块链等技术会产生不容易预测到的影响。在发展过程中出现的问题，需要进行规范。”</span>\r\n	</div>\r\n</blockquote>\r\n<div>\r\n	<span style=\"font-size:16px;\">在之前，周小川就央行要发行的数字货币回答过一系列问题。根据周小川行长的描述，央行发行的数字货币应该有这些特性：</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">一是提供便利性和安全性。</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">二是做到保护隐私与维护社会秩序、打击违法犯罪行为的平衡，尤其针对洗钱、恐怖主义等犯罪行为要保留必要的遏制手段。</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">三是要有利于货币政策的有效运行和传导。</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">四是要保留货币主权的控制力，数字货币是自由可兑换的，同时也是可控的可兑换。</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">同时值得一提的是，前几天的两会期间人大代表就频繁提及</span><a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币</span></a><span style=\"font-size:16px;\">及其底层技术。</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<div>\r\n		<span style=\"font-size:16px;\">央行周学东：对境内</span><a href=\"http://www.bitcoin86.com/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币交易平台</span></a><span style=\"font-size:16px;\">应当包容、暂不取缔</span>\r\n	</div>\r\n<br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">3月6日，全国人大代表、中国人民银行营业管理部主任周学东提出建议，对境内比特币交易平台应当包容、暂不取缔，留下一段观察期，但在短期内必须明确比特币交易平台监管红线，严格监管。</span>\r\n</div>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<div>\r\n		<span style=\"font-size:16px;\">“长期看有必要研究探索长效监管机制。”周学东说，需要研究比特币等</span><a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">虚拟货币</span></a><span style=\"font-size:16px;\">的金融属性和商品属性，研究比特币交易平台的性质，探索出台国家层面的比特币交易平台管理试点政策，对少数合格交易平台进行许可或备案试点。同时，强化监管合作机制，加强行业自律，构建比特币交易所诚信体系。</span>\r\n	</div>\r\n</blockquote>\r\n<div>\r\n	<span style=\"font-size:16px;\">政协委员沃伟东：建议合理监管比特币、促其良性发展</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">3月7日下午，上海汇银（集团）有限公司董事长沃伟东在发言中建言，应该将比特币置于法律框架下，以促进其良性发展。沃伟东表示，近期央行出手加大对比特币交易平台的监管力度之后，取得了多方面的效果，明确了比特币性质，抑制了市场的泡沫，同时对社会资金的风险，也得到了初步控制。</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">不过，沃伟东认为，在取得上述成效的同时，也要观察到相关的问题。“目前中国比特币的交易量大幅减少，中国主要交易平台的交易量跌至不到原来的1%。”而与此相对应的是，在此之前，全球超过90%的交易量都发生在中国。正由于此前中国占据着交易量的高地，因此“毫无疑问拥有比特币的全球定价权，对比特币乃至区块链行业，具有足够的话语权和影响力。”</span>\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">沃伟东表示，对于比特币以及区块链这样的新生事物，世界大国都在积极探索，因此不可以简单地否定和抛弃。他建议将比特币纳入互联网金融监管，制定合适的监管策略。</span>\r\n</div>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<div>\r\n		<span style=\"font-size:16px;\">“合适的监管策略能够在控制风险的同时，真正地激励创新、推动创新、引领创新。”</span>\r\n	</div>\r\n</blockquote>\r\n<div>\r\n	<span style=\"font-size:16px;\">比特币相比黄金、股票其市值微乎其微，但是比特币的底层应用技术区块链吸引到了诸多关注目光。由于区块链技术得到官方认可，全球各市场都在研究区块链技术和数字货币的可行性，中国央行也在公开招聘相关人才、实践数字货币，在这样一个背景下，相信各国会抱着更加宽容的心态来对待比特币行业。</span>\r\n</div>', '1489370971', '0', '', '0');
INSERT INTO `yang_article` VALUES ('365', '2', '曹锋博士：中国区块链应用市场可达百万亿规模', '<p style=\"text-indent:2em;\">\r\n	<img src=\"/Public/kindeditor/attached/image/20170315/20170315014120_21167.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">美国当地时间3月6日、7日，第五届2017朗迪纽约峰会在纽约贾维茨会展中心正式拉开序幕。深圳</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">金融服务有限公司副董事长兼首席科学家——曹锋博士分享了中国首个</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">金融的应用与实践，引起广泛关注。曹锋博士对比了中美两国区块链行业的发展概况，中国企业领跑区块链应用创新，美国企业则在区块链底层技术具有相对优势。由于应用创新更贴近大众生活，更加容易被大众所了解。以区块链领域的智能合约技术为例，欧美主要还停留在概念，POC原型系统和监管分析的层面，而中国企业在金融、供应链等领域已经开始了很多探索和实践。 </span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\"> </span>\r\n</p>\r\n<div style=\"text-align:justify;\">\r\n	<span style=\"font-size:16px;line-height:1.5;\"></span><span style=\"font-size:16px;line-height:1.5;\">本届峰会吸引了全球5000多位嘉宾莅临现场，成为了朗迪峰会历史上规模最大的一次行业盛会。而今年峰会的议题涵盖了金融科技监管、大数据带来的信用审核革新、资产证券化与网贷、智能投顾的未来发展、区块链技术、保险科技、数字财富等过去一年来全球金融科技行业的焦点领域。</span>\r\n</div>\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<div style=\"text-align:justify;\">\r\n	<span style=\"font-size:16px;\">曹锋博士参与的“企业级智能合约（Enterprise Grade Smart Contracts）”区块链圆桌讨论是该区块链论坛的第一项圆桌讨论。参与该圆桌讨论的还有著名区块链创业公司</span><a href=\"http://www.bitcoin86.com/plus/search.php?q=R3\" target=\"_blank\"><span style=\"font-size:16px;\">R3CEV</span></a><span style=\"font-size:16px;\">、美国福布斯Forbes、智能合约平台Symbiont、国际律师事务所Hogan Lovells等企业创始人和高管，大家围绕着企业级区块链应用，智能合约的现状、未来与挑战，联盟链与公有链的关系等话题，展开了热烈讨论。</span>\r\n</div>\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<div style=\"text-align:justify;\">\r\n	<span style=\"font-size:16px;line-height:1.5;\"></span><span style=\"font-size:16px;line-height:1.5;\">曹锋博士分享了区块链金服在区块链金融领域的研究成果：2016年5月发布了全球第一个票据区块链系统。对于中国百万亿级的票据市场来说，该系统对于传统票据模式是一次质的提升，也是区块链技术首次在金融大类业务场景的真实应用，具有可观的经济效应和广阔的应用空间。2016年9月完成全球第一笔区块链资产收益转让这也是中国第一笔区块链金融真实交易，金融区块以秒级速度生成，在中国区块链金融史上具有划时代的意义。</span>\r\n</div>\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<div style=\"text-align:justify;\">\r\n	<span style=\"font-size:16px;line-height:1.5;\"></span><span style=\"font-size:16px;line-height:1.5;\">区块链作为一个去中心化的分布式数据库，其可追溯、不可篡改等特性受到了各个行业的青睐，尤其得到金融行业前所未有的重视。深圳区块链金融服务有限公司作为国内首家致力于金融领域区块链技术创新研发及应用的企业，聚集了国际一流金融、区块链、咨询相关领域的专家及核心研发团队，拥有深厚的金融业务和IT技术背景，专注于基于区块链技术的前沿金融科技的研发，打造企业级区块链金融服务及应用产品，并为国内外金融行业客户提供具有前瞻性的一站式金融创新解决方案，旨在打造新一代价值流通网络和智能化金融世界。</span>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>', '1489542156', '0', '', '0');
INSERT INTO `yang_article` VALUES ('366', '3', '区块链技术在供应链行业实现从流行词到现实的转变', '<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">暴走时评：区块链这一术语由来虽浅，但已渐成声势。随着IBM与航运巨头马士基达成合作，计划利用区块链技术实现全球跨境供应链数字化。这一技术已从一个流行词，迅速在全球电子供应链行业发展并成为现实。同时，点融网与富金通宣布推出Chained Finance，利用区块链技术满足中国供应链金融需求。这一技术所蕴藏的益处正渐渐崭露头角。</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">IBM已与航运巨头马士基达成合作，计划利用区块链技术实现全球跨境供应链数字化。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">区块链技术从一个流行词，迅速在全球电子供应链行业发展并成为现实。这之中蕴藏的益处各式各样、数不胜数，包括减少错误的发生、节省时间、改善库存管理，以及减少浪费和成本。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Brigid McDermott</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">IBM区块链业务开发及生态系统副总裁Brigid McDermott告诉EBN：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“区块链技术为我们提供了以行业一直在寻觅的方式进行转型的能力，如果你与供应链专家交谈，你会发现他们的三个主要关注点在于供应链的可见性、过程优化和需求管理。而区块链恰恰提供了能够解决这三个问题的可信赖记录系统。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">近日，美国科技巨头IBM宣布其正与航运巨头马士基（物流及运输领域专家）合作创建新的解决方案，以使用区块链技术实现全球跨境供应链的数字化。与此同时，中国点融网和富金通（富士康子公司）宣布推出Chained Finance，并声称该平台为首个为供应链金融行业提供的区块链平台。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Ibrahim Gokcen</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">马士基航运公司首席数字官Ibrahim Gokcen在一份书面声明中这样说道：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“作为致力于对全球贸易进行数字化的全球集装箱物流整合者，此次合作能够为全球供应链带来的巨大效率及生产力的提升，同时减少欺诈并增加安全性，对此我们感到激动不已。我们与IBM合作的项目旨在探索颠覆性技术——如区块链，以切实解决客户问题，并为整个行业创造全新的创新业务模式。我们期望我们着手研究的解决方案不仅会为消费者降低商品成本，而且还会使更多来自新兴国家和发达国家的参与者更容易参与全球贸易。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">IBM与马士基的合作将会以提供服务的形式开展，并集中于减少，甚至根除产品转运或运输过程中的欺诈及错误，同时最大程度地减少托运人、货运代理、海运承运人、港口及海关当局之间进行交易管理所需的时间。目前，每年90％的货物由海运业承运。传统上，这些货物要经过几十个人员和组织的参与，并且需要200次以上的交流和通信。这一解决方案旨在向所有各方提供数据的单一共享视图，以期降低数据共享的复杂性，同时使数据安全、准确且高效的共享。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">该解决方案基于超级账本结构，将对供应链流程进行数字化处理，以创建端到端的透明度并确保协作功能。此外，由于文件处理和管理通常占实际运输总成本的20％，而该解决方案简化了文件处理流程，因此能够降低成本。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">这种区块链解决方案为供应链中的所有参与者提供端到端的可见性，并仅为每个组织提供实现目标所需的权限级别。参与者可以在线查看货物运输的进度、海关文件的状态、提单及其他材料，而无需打电话或发送电子邮件。此外，若没有整个网络达成共识，任何记录均不可被修改、删除或附加到另一个记录中。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">McDermott说：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“区块链使你能够把所有的信息都发送给所有的参与者，这样每个人都可以利用这些信息做一些有用的事情，同时又能够保证真实单一的数据源。区块链技术确实推动了人们一直谈论了几十年的变革。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">IBM和马士基与各合作伙伴（包括政府当局、贸易伙伴和物流公司）合作，对其提出的解决方案进行了试点运行。例如，根据欧盟研究项目与荷兰海关署进行的试点运行中，将施耐德电气的货物通过马士基航运集装箱船从鹿特丹港运到纽瓦克港。McDermott说：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“每个人都非常高兴能够看到他们之前无法看到的信息，或者他们以前无法获得的信息。每个人都能从状态的角度更好地了解运输过程的进度。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">同时，点融网与富金通宣布推出Chained Finance，这是利用区块链技术满足中国供应链金融需求的平台。使用该平台，小型供应商可以更加无缝地管理其付款和供应链活动，并提高可见性。中国有超过4000万中小型企业，当今供应链金融解决方案服务的企业却只占很小一部分，据点融网估计仅占约15％。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Chained Finance最初锁定三大行业：电子、汽车和服装制造业。该公司在新闻稿中表示，公司预计Chained Finance可以帮助供应链金融运营商将中国能够获得融资的中小企业供应链运营商的数量增至三倍。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">苏海德</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">点融网创始人兼CEO苏海德表示：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“区块链正在变革金融业，为所有运营并资助着复杂供应链的公司提供无缝的解决方案。供应链金融的复杂性和规模给确保充足的资金和高效运营带来了重大挑战。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Chained Finance总部设在上海，目前有40名员工。据该公司报告称，公司预计在2017年扩充其员工队伍。</span>\r\n</p>', '1489542373', '0', '', '0');
INSERT INTO `yang_article` VALUES ('367', '5', '猴币资料', '<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">一、猴币参数</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">中文名：</span><span style=\"font-size:16px;\">猴</span><span style=\"font-size:16px;\">币</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">英文名：</span><span style=\"font-size:16px;\">monkeycoin</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">英文简称：</span><span style=\"font-size:16px;\">MC</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">开发团队：</span><span style=\"font-size:16px;\">猴币</span><span style=\"font-size:16px;\">开发团队</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">钱包发布日期：</span><span style=\"font-size:16px;\">2015</span><span style=\"font-size:16px;\">年</span><span style=\"font-size:16px;\">10月15</span><span style=\"font-size:16px;\">日</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">货币总量：</span><span style=\"font-size:16px;\">10</span><span style=\"font-size:16px;\">亿</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">认购价</span><span style=\"font-size:16px;\">0.001元/个</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">二、</span><span style=\"font-size:16px;\">猴币</span><span style=\"font-size:16px;\">特点</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">1、</span><span style=\"font-size:16px;\">自定义备份钱包，安全更胜一筹</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">2、交易速度快,确认时间平均为1.5-3分钟</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">3、超快链接节点，支付转账速度更快，更新区块更加及时</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">4、采用6位哈希算法，使用生日攻击寻找groestl哈希碰撞</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">5、</span><span style=\"font-size:16px;\">网络监视器，查看最新区块信息</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">三、</span><span style=\"font-size:16px;\">猴币</span><span style=\"font-size:16px;\">（</span><span style=\"font-size:16px;\">MC</span><span style=\"font-size:16px;\">）介绍：</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"> 2016</span><span style=\"font-size:16px;\">年猴币提前发布，</span><span style=\"font-size:16px;\">monkeycoin</span><span style=\"font-size:16px;\">猴币（</span><span style=\"font-size:16px;\">MC)</span><span style=\"font-size:16px;\">是由猴币开发团队开发，各大交易平台鼎力支持，总量</span><span style=\"font-size:16px;\">10</span><span style=\"font-size:16px;\">亿（</span><span style=\"font-size:16px;\">POW9.5</span><span style=\"font-size:16px;\">亿</span><span style=\"font-size:16px;\">+POS5000</span><span style=\"font-size:16px;\">万利息 年利率</span><span style=\"font-size:16px;\">5% </span><span style=\"font-size:16px;\">每年递减）</span><span style=\"font-size:16px;\">monkey</span><span style=\"font-size:16px;\">（</span><span style=\"font-size:16px;\">MC)</span><span style=\"font-size:16px;\">。猴币不受到任何中央机构的管理 钱包采用</span><span style=\"font-size:16px;\">6</span><span style=\"font-size:16px;\">位超级哈希算法，安全有保证。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">五、</span><span style=\"font-size:16px;\">猴币</span><span style=\"font-size:16px;\">网站：</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"> </span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">官网：</span><a href=\"http://houcoin.com\" target=\"_blank\"><span style=\"font-size:16px;\">http://www.h</span><span style=\"font-size:16px;\">oucoin.com</span></a> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">区块查询：</span><a href=\"http://120.26.78.101:8080/chain/MonkeyCoin\" target=\"_blank\"><span style=\"font-size:16px;\">http://120.26.78.101:8080/</span><span style=\"font-size:16px;\">chain/MonkeyCoin</span></a> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">公平</span><span style=\"font-size:16px;\"> </span><span style=\"font-size:16px;\">公正</span> <span style=\"font-size:16px;\">公开</span> <span style=\"font-size:16px;\">是我们猴币开发团队一直以来秉持的！</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">猴币国内</span><span style=\"font-size:16px;\">2</span><span style=\"font-size:16px;\">群：</span><span style=\"font-size:14px;\"><span style=\"font-size:16px;\">537388363</span><span style=\"font-size:16px;\"></span></span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">猴币国内</span><span style=\"font-size:16px;\">3</span><span style=\"font-size:16px;\">群：</span><span style=\"font-size:16px;\">307685748</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">猴币国内</span><span style=\"font-size:16px;\">4</span><span style=\"font-size:16px;\">群：</span><span style=\"font-size:16px;\">537396922</span> \r\n</p>', '1489546322', '0', '', '0');
INSERT INTO `yang_article` VALUES ('368', '2', 'IPO清库存发行铺路注册制 再融资收紧传闻再起', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	IPO清库存发行铺路注册制 再融资收紧传闻再起\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-02-17   来源：21世纪经济报道\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“现在预审员催的比较紧，周期压的很短。”16日，南方一家券商的投行保代告诉记者，“现在IPO过会都挺快，尤其是创业板。之前报上去一般都是大半年以后才开始准备反馈，现在报上去两三个月就可以了。”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		尽管市场反应颇为强烈，但IPO发行的高频率似乎已成为一种常态化。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2月份以来的10个工作日内，IPO发行数量就已达到24家，日均发行2.4家。而1月份的发行高峰，日均发行数量更是达到2.8家。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		不仅如此，这样的快节奏还正在向IPO发审环节的前端传导。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		南方一家券商的投行保荐代表人就向21世纪经济报道记者表示，发审会预审员现在催得很紧，周期压得很短。“之前上报是半年后开始准备反馈，现在周期缩短至两三个月就可以了，创业板更快。”该保代表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		北方一家大型券商的投行部高管则告诉记者，目前公司相关人员都在积极开拓IPO项目。而在多位投行人士看来，快速发行去库存的举措不排除是为了注册制所做的准备。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		证监会主席刘士余在近期的公开表态中也提及注册制，他认为注册制是监管的方法论的要求，和行政核准制并不对立。核心是做好上市公司发行股票的质量审查，资本市场运行要稳定。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		一边是IPO发行继续保持高速，另一边再融资收紧再出传闻。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		2月16日，关于再融资的8点传闻在业内流传，尽管消息没有得到最终确认，但在多位投行人士看来，可能性很大。“我个人觉得比较靠谱，这也和刘主席最近的表态相一致。”一家中型券商的投行保代向记者表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		实际上，从去年下半年开始，证监会就多次提及要规范上市公司再融资行为，市场上也曾流传出再融资收紧的传闻。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在业内人士看来，再融资政策未来一定会改变。在农历新年后的首个证监会发布会上，证监会新闻发言人就表示，要抓住市场实际，推动新股发行常态化，扩大直接融资规模。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		<strong>IPO发行保持高速</strong>\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		IPO发行的高频率仍在持续。“现在预审员催得比较紧，周期压得很短。”16日，南方一家券商的投行保代告诉记者。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“现在IPO过会都挺快，尤其是创业板。之前报上去一般都是大半年以后才开始准备反馈，现在报上去两三个月就可以了。”上述投行保代表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		该投行保代告诉记者，“会里预审员的意思是尽快消化掉会里的排队企业，所以现在发行节奏很快。我们的项目报了不久就要开始准备反馈了。”而尽快消化IPO的目的则可能是为推出注册制做准备。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		上述投行人士告诉记者，现在上报项目后四五个月就要开始进行反馈，而此前则需要排队一年以上。“现在我们业务重点就是IPO，新三板也不好做了，稍微靠谱的企业我们都会优先建议IPO。”其向记者表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		实际上，近日多名券商人士向记者表示，新三板项目已不如之前好做了。“一方面优质的新三板项目基本都挂牌了。另一方面，新三板标准也提高了，很多差的企业上不去，好一些的都要去IPO。而我们收费还是很低，性价比太低。现在IPO快，所以我们现在重点都在IPO上。”一家中型券商投行人士向记者表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		这与证监会主席刘士余最近的言论也比较一致。在刚刚召开的全国证券期货监管工作会议上，刘士余即提及，用2-3年的时间解决IPO堰塞湖。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		事实上，IPO发行的大提速从去年底就已经开始。“我这几天有个项目在封卷，封完后马上就会给批文，然后发行。”去年底，一位投行保代告诉21世纪经济报道记者。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在IPO发行大提速之下，IPO已成为券商最为重视的业务。IPO储备丰富的券商受益，而项目不够多的也正在积极开拓。“现在IPO发行速度很快，存量不够，大家都在开拓新的IPO项目，加大储备。”2月16日，一家大型券商投行高管告诉记者。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“现在很多企业也都看好当前的时机想申请上市，我们也签了不少，但是很多都不规范。”上述投行保代向记者表示。实际上，即便IPO提速，但审核标准并没有放松。2月16日，就有多位投行人士向记者确认，“审核还是比较严格。”\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		<strong>再融资政策或生变</strong>\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在IPO保持高压发行的同时，2月16日，关于再融资政策的传闻一度刷爆微信朋友圈。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		该传闻指出了再融资的八项政策导向，包括再融资的定价方式、融资频率、再融资规模、募集资金使用限制等。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		当日，21世纪经济报道记者就此向多位投行保代人士求证，尽管受访人士均无法肯定消息的准确性，但基本上认为，消息“靠谱的可能性比较大”。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		“我个人觉得比较靠谱。二级市场的弊病，资本大鳄操作市场很多都是通过定价定增。”南方一家中型券商的投行保代向记者表示。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		而这些改革思路也比较符合刘士余在近期的一系列表态。例如，在刚刚举办的全国证券期货监管工作会议上，刘士余就直接将矛头指向“资本大鳄”，表示资本市场不允许大鳄呼风唤雨，要有计划地把一批资本大鳄逮回来。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在刘士余上任之后，资本市场的各种政策也在发生着改变。IPO提速、为注册制铺路预期明朗之下，再融资也一直被认为是其改革的下一个重点。此前就有北京的一位投行人士向记者透露，监管层很快会出台一定的再融资新政策。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在1月20日的证监会例行新闻发布会上，证监会相关负责人就表示，部分上市公司存在过度融资，融资结构不合理等问题，下一步将采取措施限制上市公司频繁融资或单次融资金额过大，总体考虑严格再融资审核标准和条件。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		在农历年后的首个证监会新闻发布日，证监会新闻发言人也表示，规范上市公司再融资行为，禁止募集资金用于类金融业务，限制募集资金用于偿还银行贷款和补充流动资金，对上市公司忽悠式融资、跟风式融资严格监管。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		事实上，关于再融资政策之变早已传出过多种说法。例如，在2016年年底，就有传闻称，再融资政策将被修订，会设六大门槛，包括融资间隔时间、净资产收益率、净资产、项目收益、主业关联度等。此外，还包括了提倡配股、公开发行等模式，以及控价控量控节奏，即鼓励按照市价发行、限制融资规模与发行速度。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		而与上述传闻相对应的是，再融资审核也早已放慢了速度。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		21世纪经济报道记者获悉，在去年底的一次保代培训会上，证监会发审委员就明确提出，非公开发行现在已经脱离了当时设置这种融资方式的初衷。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		若再融资新政传闻为真，必然对资本市场产生影响。“那样的话上市公司再融资将更加市场化，操纵市场的利润空间会低很多。”一家券商的投行保代向记者表示。另一位上海投行人士认为，在再融资收紧的背景下，可以加大并购重组，这样反而利于市场的发展。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		 \r\n	</p>\r\n</div>', '1493483424', '0', '', '0');
INSERT INTO `yang_article` VALUES ('369', '3', '区块链VR进入全新测试阶段', '<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">摘要：</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">和VR都是如今最为热门的技术，目前一些开发团队已经开始创造性地将这两种技术结合起来，其中Decentraland这一项目已得到一定的关注。通过对</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">的应用，它允许玩家在虚拟世界中获得土地所有权并进行交易，且最终将由玩家自由地构建环境和脚本，丰富其游戏体验。相信该项目会吸引众多虚拟游戏爱好者。</span>\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170317/20170317011807_13106.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">一个致力于发展区块链虚拟现实的项目正在稳步进行，即将构建新的测试网络。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n<span style=\"font-size:16px;\"> 该项目名为Decentraland，于昨天启动了测试区块链，开始了被其成为“青铜时代”的发展新阶段。支持这个开源项目的开发者还包括Manuel Aráoz，这位因创建</span><a href=\"http://www.bitcoin86.com/bitcoin/\" target=\"_blank\"><span style=\"font-size:16px;\">比特币</span></a><span style=\"font-size:16px;\">“存在证明”文件所有权工具而享有一定知名度。</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\"> Decentraland采用的正是那种理念——用区块链数据证明在某个特定时间点对某物的所有权，并使用了自己的区块链网络。</span>\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">从根本上来说，区块链在Decentraland中的角色就是土地登记表，每一个新的交易区块代表着一个新情节。如果玩家挖到那个区块，他们就拥有了那块土地份额的所有权，接下来可以卖给其他玩家。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n<span style=\"font-size:16px;\"> 该理念还支撑着其他一些以游戏为主题的项目，包括Huntercoin和BitQuest。</span>\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">Aráoz表示，测试网的发布使准玩家能够开始构建他们的环境，并且还会为虚拟世界的用户陆续增加其他功能。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<img src=\"/Public/kindeditor/attached/image/20170317/20170317011936_47699.jpg\" alt=\"\" /> \r\n	<p>\r\n		<span style=\"font-size:16px;\">他告诉CoinDesk：</span>\r\n	</p>\r\n	<blockquote>\r\n		<p>\r\n			<span style=\"font-size:16px;\">“我们当前所发布的版本……允许用户使用简单原始的材料构建框架，如方块、球体和平面，但是我们正计划允许他们使用更复杂的东西，创建更复杂的脚本。最终将由用户自己决定他们会在Decentraland上建出怎样酷炫的东西来。”</span>\r\n		</p>\r\n	</blockquote>\r\n	<p>\r\n		<span style=\"font-size:16px;\">从项目的网站来看，其发展计划还包括支持Oculus Rift这样的VR头戴显示器的使用。</span>\r\n	</p>\r\n<span style=\"font-size:16px;\">转自：http://chainb.com/?P=Cont&id=3835</span><br />\r\n</div>', '1489713718', '0', '', '0');
INSERT INTO `yang_article` VALUES ('370', '1', '国安普洱（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\" font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#ffffff;\"=\"\">\r\n	国安普洱（生茶）中签公告\r\n	</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\" text-align:center;color:#999999;background-color:#ffffff;\"=\"\">\r\n	发布日期：2017-09-30   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\" color:#666666;background-color:#ffffff;\"=\"\">\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"font-family:宋体;line-height:48px;color:red;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心</span></strong></span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"font-family:宋体;line-height:48px;color:red;\">关于《国安普洱茶（生茶）》普洱茶</span></strong></span><span style=\"font-family:宋体;line-height:48px;color:red;font-size:18pt;\"><span style=\"font-family:\" line-height:28px;\"=\"\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n	<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"font-family:宋体;line-height:48px;color:red;\">的申购中签公告</span></strong></span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心于<span style=\"font-family:\" line-height:28px;\"=\"\">2017</span>年<span style=\"font-family:\" line-height:28px;\"=\"\">09</span>月<span style=\"font-family:\" line-height:28px;\"=\"\">28</span>日对挂牌藏品，《国安普洱茶（生茶）》普洱茶进行定价发行申购。现将中签结果公告如下：</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<h1>\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">一、中签分配统计表</span><span style=\"font-family:\" line-height:48px;color:#444444;\"=\"\"></span> \r\n</h1>\r\n<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n	<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt inset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680001</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">国安普洱茶（生茶）</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n				<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n					<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">54945</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n				</p>\r\n					</td>\r\n<td style=\"border:1pt outset black;font-family:\" background-color:transparent;\"=\"\">\r\n					<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n						<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">1052710</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\" line-height:28px;color:#444444;font-size:9pt;\"=\"\"></span> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<h1>\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">二、出金时间</span><span style=\"font-family:\" line-height:48px;color:#444444;\"=\"\"></span> \r\n</h1>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<br />\r\n</p>\r\n<h1>\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">三、挂牌交易时间</span><span style=\"font-family:\" line-height:48px;color:#444444;\"=\"\"></span> \r\n</h1>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">上述藏品将于<span style=\"font-family:\" line-height:28px;\"=\"\">2017</span>年<span style=\"font-family:\" line-height:28px;\"=\"\">10</span>月<span style=\"font-family:\" line-height:28px;\"=\"\">10</span>日挂牌上市交易。</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">特此公告</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"><span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"><span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\" color:#999999;background-color:#ffffff;\"=\"\">众泰财富</span>商品交易中心</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n	<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">2017</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">年<span style=\"font-family:\" line-height:28px;\"=\"\">9</span>月<span style=\"font-family:\" line-height:28px;\"=\"\">30</span>日</span><span style=\"font-family:\" line-height:28px;color:#444444;\"=\"\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:14px;text-indent:2em;\">\r\n	<span style=\"line-height:28px;\"><span> </span></span> \r\n</p>\r\n	</div>', '1493483058', '0', '', '0');
INSERT INTO `yang_article` VALUES ('371', '2', '德国央行行长：区块链技术可以使金融市场更便捷', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170318/20170318012659_46647.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">据德国央行负责人表示，</span><a href=\"https://www.btctrade.com/bitcoin/\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">技术有助于推动金融业实现更广泛的数字化。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">德国央行德意志联邦银行（Bundesbank）行长JensWeidmann昨日在德国柏林举行的G20峰会上发表演讲。讲话中，他强调了区块链技术的潜力，能够使金融市场和服务更为迅速、便捷，且更便宜，同时还指出了在AI咨询服务和众筹中的技术进步所带来的转变。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">他告诉与会人员说：</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“在我看来，数字化是否会如一些评论家所说的那样为金融服务和基础设施带来变革，答案还暂时不得而知。然而，我们不可否认区块链、机器人顾问或众筹等新技术，可能具有使金融市场和服务变得更迅速、更加高效、更加方便和更加低廉的潜力。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">这次讲话前不久，Weidmann刚刚在出席在一次公开露面中谈到了区块链技术。今年1月下旬，Weidmann将这种技术称为一种“多用途工具”，并强调了他们最近在区块链方面的研究。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">具体而言，德国央行已与德国证券交易所合作开发了一个区块链证券交易平台原型。早在去年12月份，央行官员即称该项目极具发展前景，虽然他们也意识到项目在实施方面“仍面临着许多挑战”。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Weidmann在讲话中特别强调他们需要针对金融技术（FinTech）制定新的监管规定。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">“这就要求至少在一定程度上对金融技术进行监管。有太多正在使用这一技术所支持的金融创新的企业要么正在全球范围内开展业务，要么正在进行了大量的跨境交易。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1489800542', '0', '', '0');
INSERT INTO `yang_article` VALUES ('372', '3', '金融机构竞逐布局区块链 切入票据市场', '<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170320/20170320012413_62517.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<div>\r\n	<span style=\"font-size:16px;\">3月15日，深圳</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">金融服务有限公司发布其“票链”产品，之所以引起市场关注，不仅在于其将</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">技术应用于票据市场这一具体场景，还在于从微众银行出走的曹彤担纲区块链金服的董事长。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">相较半年前停留在理论探索阶段，区块链技术在金融领域或场景的应用正逐步丰富和落地。此前，招商银行宣称其实现将区块链技术应用于全球现金管理领域的跨境直联清算、全球账户统一视图以及跨境资金归集这三大场景；银联与IBM联合创建基于区块链技术的交易积分系统；微众银行携手合作银行把区块链技术应用到联合贷款对账场景；众安保险旗下子公司众安信息技术服务有限公司推出基于区块链、人工智能、大数据的云服务系列产品。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">切入票据市场</span>\r\n</div>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<div>\r\n		<span style=\"font-size:16px;\">“搭建票链产品平台是希望以区块链技术为基础连接中小银行，构建一个银行联盟的信用生态体系，用互联网的方式解决中小微票据融资的服务。”区块链金服总经理蒋宁说。</span>\r\n	</div>\r\n</blockquote>\r\n<div>\r\n	<span style=\"font-size:16px;\">曹彤表示，当前票据市场存在市场长尾的“三小票据”（小企业、小金额、小银行开具的票据）被边缘化，中小企业常用的票据在市场中难以发挥作用的痛点，其核心问题在于信任、信息，对风险识别。而通过区块链的机制、节点行的共同参与，共同的价值判断、共同的信用机制，从而对于小票、小企业、小金额的票据信息进行判断，以一种高效的方式来解决它们的融资和票据的二次流转。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">曹彤说道：“从2015年5月份，区块链金服开始启动这样一个项目，去年9月份是跟深圳农商行发布了第一个原型产品。去年四季度，我们跟若干个节点行进行了沟通，到今年1季度整个产品的测试和上线，再到今天我们认为初步找到了问题的解决方案。”</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">区块链是一种分布式可共享的、通过共识机制的公开账本。在众安技术发布的《安链云链网络白皮书》中提到，区块链的诞生本身带有互联网的前瞻性，在不依赖中心化服务的情况下，节点之间通过P2P（点对点）通信，共识、备份数据，创立彼此之间的信任。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">曹彤认为，区块链基于共识机制构建分布式共享数据解决方案，其分中心化、去中介化、无须信任、集中维护、不可篡改、安全透明、匿名可追溯和交易留痕等优点，能有效地以集体方式运转，绕开诸多中介，降低交易、时间成本、提高交易效率，快速为交易双方建立信任关系，实现交易双方的信息对称。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">据蒋宁介绍，票链产品的基本模式是，通过平台，将诸多中小微客户手里的票据，变成标准化可交易的金融资产，这个过程通过区块链平台和银行联盟实现；在当天的发布会上，包括赣州银行、贵阳银行、苏州银行、石嘴山银行、九台农商银行与区块链金服签订了联盟协议。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">参与联盟的一家银行人士向记者表示，关于票链产品本身了解还不是太多，近期他们要组织开一场落地会议，把相关的事情明确下来。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">曹彤谈到，以往做小票是基于承兑行单一判断，而区块链技术的运用基于票据的节点和网络能够形成共识判断，节点行的共识判断一定会优于单一银行的判断，尤其在信息不对称的情况下，跨省小票流转要更多参考所在省份的意见；同时，效率会大幅提高；而节点行网络的形成，为未来各项区块链的应用预留了广阔空间。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">应用多样化面临的难题</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">票据市场和跨境支付是国内区块链技术最先实现落地推广、商业化变现的场景。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">据悉，招行将区块链技术运用于银行核心系统中，在总行、香港分行和永隆银行两岸三地间，通过区块链技术改造跨境直联清算业务。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">记者了解到，招行的跨境直联清算系统在改造前存在例如只支持总行与海外分行之间的交换，海外分行之间没有办法直接进行交换；手工审批环节多，系统操作复杂；新的海外机构加入困难，实施周期很长等等问题。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">而通过改造，招行实现了六个海外机构加总行，大家都连在区块链上，任何两个机构之间都可以发起清算的请求，任何两个机构都可以进行清算。由此带来，去中心后报文传递时间由6分钟减少至秒级；同时，私有链封闭的网络环境中报文难篡改、难伪造；而分布式的架构部署，任何一个节点出故障并不会影响整个系统的运作，新的参与者可以快速便捷地部署和加入至系统中。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">招行方面表示，通过区块链技术改造跨境直联清算摸索出基本成熟可用的区块链底层架构，可支持后续其他区块链应用项目例如在票据与供应链金融领域进行区块链的应用。并且可以简单扩展到同业间、银企间、企业间等各种业务场景。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">一位股份制银行研发条线人士这样阐释其对区块链的看法，“区块链做不可信环境下大家的信任关系，对于对公业务特别是同业业务，银行与银行之间、银行与保险之间，保险与其他资产管理机构之间，区块链会起很大的作用。”他还谈到，区块链技术落地比较积极的是保险公司，因为其要跟很多资产管理公司，金融同业进行数据交换。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">众安财险旗下子公司众安技术开发的安链产品，既能提供底层区块链的基础服务存储、同步，也能实现模块化的功能扩展比如负责链上交易的授权与监管、证书发放、权限管理；提供加密合约交易、不同场景的隐私解决方案；提供交易与智能合约的解释与执行，交易管理、提供外部数据服务等等。</span><br />\r\n<span style=\"font-size:16px;\">  </span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">尽管各界对区块链技术充满了憧憬，但在曹彤为《区块链金融》所做的序言中谈到，区块链尚未确立成熟的技术平台方案，净额结算、事后追索、容量可扩展和隐私保护等技术难题还有待解决，并且大规模的区块链金融基础设施的建设需要重新构建IT架构和再造金融业务流程；而监管机制和金融机构本体对区块链技术所带来的金融创新和接受态度同等重要。</span>\r\n</div>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1489973144', '0', '', '0');
INSERT INTO `yang_article` VALUES ('373', '2', '多重“紧箍咒”上身 中国房企资金链或遭重压', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	多重“紧箍咒”上身 中国房企资金链或遭重压\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-02-17   来源：中国新闻网\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中新社记者 庞无忌\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		依然热衷于在土地市场“拼杀”抢地的不少中国房地产企业可能还没意识到，一轮资金趋紧的寒潮已经袭来。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		16城私募资管收紧\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中国证券投资基金业协会日前叫停了在北京、上海、广州、深圳、厦门、合肥等16个热点城市投资普通住宅地产项目的私募资产管理计划，明确将暂不予备案。此外，该机构还禁止私募产品向房企提供融资用于支付土地出让价款，以及直接或间接为各类机构发放首付贷等提供便利。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		此前，中国证监会已明令禁止房企通过再融资的途径拿地，南京、广州等地也提出房企必须使用自有资金拿地。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中原地产首席分析师张大伟告诉记者，此次私募资管领域的收紧，传递出房地产资金再收紧的明确信号。这16个热点城市占据了全国房地产成交额的20%以上，也是过去两年高单价、高溢价“地王”数量最集中的区域，此番政策将明显提升房地产企业在当地的融资难度。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		地方调控升级\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		重庆近期发布新政称，抵押房地产不得用于预售，预售商品房不得用于抵押，并规范在建建筑物抵押登记。有专家对中新社记者分析称，这实际上是一记“杀招”，彻底堵死了开发商以抵押房地产融资、以预售回款的传统模式，将对房地产企业的资金链形成巨大考验。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		此外，继北京拍出由开发商100%自持的土地之后，天津也推出土地出让新机制，即报价到达上限后，不再接受更高报价，企业竞报“自持面积”。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		由开发商自持项目用于租赁能够培育租赁市场，解决部分民众的住房问题。不过，租房收益率较低，而且回款周期长，对于高价拿地的开发商来说，短期必定将面对更大的资金压力。为此，北京万科去年底抛出众筹的开发方案，试图解决自持地块的盈利难题。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		企业转向海外融资\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		与去年房企融资回归境内的趋势相反，今年以来，由于国内流动性收紧，融资难度加大，不少房企转而寻求境外融资。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中原地产研究中心发布的数据显示，延续去年四季度以来的低迷态势，2017年1月份，中国房企包括私募债、公司债、中期票据等境内融资金额，合计为133.08亿元(人民币，下同)，相比去年同期，下调幅度高达92%。而且企业在境内的融资成本也出现了明显的上涨。今年1月份，不少企业发债利率高于6%，而去年9月前，这一水平大致在4%左右。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		不少企业“转战”海外。光大证券稍早时候发布的一份报告称，从2016年四季度起，中国房企发行美元债加速。首创、首开、万科、融信、碧桂园、龙光地产、中国奥园、合景泰富、旭辉控股等企业均发行了美元债。不过，张大伟指出，鉴于人民币贬值等压力，企业的海外融资成本也不低。记者查阅企业融资数据发现，不少企业发债的年化利率超过6%，加之汇率损失，融资成本可能达到10%左右。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		房企拿地热情不减\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		尽管近4个月来，20多个城市出台了近70次或大或小的调控收紧政策，但不少房企仍然热衷于土地市场的拼抢。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		中原地产研究中心发布的数据显示，截至2月15日，今年25家中国房企拿地总金额已超过1600亿元。从企业看，包括中海、保利、碧桂园、万科等在内的11家房企拿地金额超过50亿元。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		张大伟认为，目前各地房地产调控已经开始影响房企销售，而不断收紧的政策则会进一步加剧房企的资金链紧张。同时，伴随美元走强和热钱流出中国市场的趋势，可能会在今年下半年为房地产企业带来“钱荒”窘境。\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		同策咨询的一位分析师认为，过去一年里，随着市场行情的一路飙升，房企实际上通过各种渠道“加杠杆”，其自筹资金与表外融资增长幅度都远高于国内贷款增长。但今年在重重“紧箍咒”下，“加杠杆”较多的民营房企以及大量的中小房企将面临资金面紧张的问题，不排除下半年出现中小房企被收购或破产的现象。(完)\r\n	</p>\r\n	<p style=\"font-family:\"font-size:14px;text-indent:2em;color:#000000;\">\r\n		 \r\n	</p>\r\n</div>', '1493483380', '0', '', '0');
INSERT INTO `yang_article` VALUES ('374', '1', '天赐易武（生茶）,布朗山古树茶（生茶）中签公告', '<div class=\"n_title\" style=\"margin:0px;padding:0px;border:0px;font-family:\"font-size:16px;text-align:center;font-weight:bold;color:#333333;background-color:#FFFFFF;\">\r\n	天赐易武（生茶）,布朗山古树茶（生茶）中签公告\r\n</div>\r\n<div class=\"n_time\" style=\"margin:0px 0px 20px;padding:0px;font-family:\"text-align:center;color:#999999;background-color:#FFFFFF;\">\r\n	发布日期：2017-10-13   来源：众泰财富商品交易中心\r\n</div>\r\n<div class=\"n_news\" style=\"margin:0px auto;padding:0px;border:0px;font-family:\"color:#666666;background-color:#FFFFFF;\">\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"line-height:28px;color:#FF0000;\"><span style=\"font-family:宋体;line-height:48px;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"line-height:28px;color:#FF0000;\"><span style=\"font-family:宋体;line-height:48px;\">关于</span><span style=\"font-family:宋体;line-height:28px;\">《天赐易武（生茶）》</span><span style=\"line-height:28px;\"><span>,</span></span><span style=\"font-family:宋体;line-height:28px;\">《布朗山古树茶（生茶）》</span></span></strong></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n		<span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"line-height:28px;color:#FF0000;\"><span style=\"font-family:宋体;line-height:28px;\"><span style=\"line-height:48px;\">普洱茶</span><span style=\"line-height:48px;font-size:18pt;\"><span style=\"font-family:\"line-height:28px;\"></span></span></span></span></strong></span><span style=\"line-height:28px;font-size:x-large;\"><strong><span style=\"line-height:28px;color:#FF0000;\"><span style=\"font-family:宋体;line-height:48px;\">的申购中签公告</span></span></strong></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">11</span>日对挂牌藏品，</span><span><span style=\"font-family:宋体;line-height:28px;\">《天赐易武（生茶）》</span><span style=\"line-height:28px;\"><span>,</span></span><span style=\"font-family:宋体;line-height:28px;\">《布朗山古树茶（生茶）》</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">普洱茶进行定价发行申购。现将中签结果公告如下：</span></span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">一、中签分配统计表</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680002</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">天赐易武（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">53190</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">912800</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span>\r\n	</p>\r\n	<div align=\"center\" style=\"margin:0px;padding:0px;border:0px;\">\r\n		<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"409\" style=\"margin:0px;padding:0px;border:0px;width:306.55pt;\">\r\n			<tbody>\r\n				<tr>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易代码</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">交易名称</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">供申购数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt inset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">申购总数量</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">680003</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span><span style=\"font-family:宋体;line-height:28px;\">布朗山古树茶（生茶）</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">71400</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n					<td style=\"border:1pt outset black;font-family:\"background-color:transparent;\">\r\n						<p class=\"MsoNormal\" align=\"center\" style=\"font-size:14px;text-indent:2em;text-align:center;\">\r\n							<span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">1052680</span><span style=\"font-family:宋体;line-height:28px;font-size:12pt;\">手</span><span style=\"font-family:\"line-height:28px;color:#444444;font-size:9pt;\"></span>\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span>\r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">二、出金时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">藏品申购资金解冻出金时间为公布中签结果日的次日（周日及法定节假日顺延）。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		 \r\n	</p>\r\n	<h1>\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">三、挂牌交易时间</span><span style=\"font-family:\"line-height:48px;color:#444444;\"></span>\r\n	</h1>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">上述藏品将于<span style=\"font-family:\"line-height:28px;\">2017</span>年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">17</span>日挂牌上市交易。</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"> </span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:24pt;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">特此公告</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"left\" style=\"font-size:14px;text-indent:2em;\">\r\n		<span style=\"font-family:\"line-height:28px;color:#444444;\"><span> </span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\"><span style=\"font-family:\"color:#999999;background-color:#FFFFFF;\">众泰财富</span>商品交易中心</span><span style=\"font-family:\"line-height:28px;color:#444444;\"></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" align=\"right\" style=\"font-size:14px;text-indent:2em;text-align:right;\">\r\n		<span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">2017</span><span style=\"font-family:宋体;line-height:32px;color:black;font-size:12pt;\">年<span style=\"font-family:\"line-height:28px;\">10</span>月<span style=\"font-family:\"line-height:28px;\">13</span>日</span>\r\n	</p>\r\n</div>', '1493482917', '0', '', '0');
INSERT INTO `yang_article` VALUES ('375', '3', '特朗普政府支持区块链技术', '<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">摘要：在近日的华盛顿</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">峰会上，美国政府的高级官员已表示支持</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">技术的发展，并尝试扩大该技术在政府部门的应用。如今，从各方代表的反应来看，美国政府各部门对区块链技术基本都持欢迎态度，准备对其进行积极研究和应用。这将为该技术的发展减少阻力，促进公共事业和私有领域的共同进步。</span>\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170321/20170321012601_14954.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">暴走时评：在近日的华盛顿区块链峰会上，美国政府的高级官员已表示支持区块链技术的发展，并尝试扩大该技术在政府部门的应用。如今，从各方代表的反应来看，美国政府各部门对区块链技术基本都持欢迎态度，准备对其进行积极研究和应用。这将为该技术的发展减少阻力，促进公共事业和私有领域的共同进步。</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">翻译：Ina</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">在本周于华盛顿举行的区块链峰会上，美国监管高层和高级官员公开表示将扩大区块链技术在政府和私营部门的应用。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">会上，特朗普政府、国会及行政机构代表们认可了区块链的潜力，呼吁该技术与公共政策的进一步结合。他们还专门强调了该技术在提高当局效率、赋予消费者更多权力和推动经济增长方面的潜力。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">并且，副总统Mike Pence的首席经济专家Mark Calabria还在周三做了一次计划外的讲座，告诉听众总统政府深受区块链技术发展的鼓舞。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">他表示高层有兴趣了解该技术在政府、金融和其他方面的应用，特别是财政部还要对金融系统进行全面检查。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Calabria告诉听众：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“我们在用一种开放的心态了解该技术。我们认识到自己不一定是创新者，但至少可以为技术让路，并搞清楚政府在哪里阻碍了创新。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Calabria还表示总统团队希望倾听区块链社区的声音并向其学习，伸出援手为技术的进一步发展打好基础。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">公民福利</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">国会区块链核心小组的联合主席们也在会议上发了言，声称他们希望能更好地掌握如何在公共部门部署这项技术。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">联合主席Jared Polis，这位来自科罗拉多州的民主党人士说：“我们非常愿意帮助促进区块链技术在联邦机构和政府中的部署。”</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">他补充道：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“我们的作用是激励政府机构寻找更有效的工作方式。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">联合主席David Schweikert是位来自亚利桑那州的共和党人士，他强调，核心小组的主要目标之一是让决策者了解该技术的变革潜力，并担任政府、行业和学术界之间的使者。</span>\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170321/20170321012647_24584.jpeg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;line-height:1.5;\">David Schweikert</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Schweikert说：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“为什么我们这些决策者不但没有进步反而会搞砸新事物的发展呢？因为有时候我们的当选者是自负的。”</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">“我们该如何帮助国会的同僚们理解这个技术不仅仅是数字货币那么简单？它还有着更为广阔更加奇妙的天地。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">统一问题</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Polis补充说，就算没有国会两党派对区块链的热情，他也乐观地认为该技术可以超越党派分歧。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">他说：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“人们能够控制自己的信息这一理想优势对左右两派都有着广泛的吸引力。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">卫生与公众服务部IT架构师Debbie Bucci也谈到了她在部门内推动区块链探索的努力。去年，她的部门首次表示需要一份说明如何在医疗保健环境中应用区块链技术的白皮书，本月初它举办了一场区块链黑客马拉松。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Bucci认为她的团队对区块链的兴趣为该技术在部门其他方面谋求了一个有利的位置。</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“我们共同努力，以真正更好地理解什么是区块链。”她说， “因为我们对区块链的定义进行了一些等级设置，即使在我自己的机构里，他们也都知道这个名词，知道区块链这个术语。”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">公共与私营</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">然而，人们承认私营部门在政府对技术的应用中可以发挥作用。</span>\r\n</p>\r\n<p>\r\n	<img src=\"/Public/kindeditor/attached/image/20170321/20170321012741_56310.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">David Treat</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">埃森哲金融服务部总经理David Treat认为，公共部门对区块链的开放态度并不只是政治上的哗众取宠，反而证明了那些传统保守且抗拒风险的单位正在发生转变。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">Treat说：</span>\r\n</p>\r\n<blockquote style=\"text-indent:2em;\">\r\n	<p>\r\n		<span style=\"font-size:16px;\">“有没有得到政府的回应是完全不同的状态，现在的情况并不是 ‘告诉我你在我做什么，我们来看看这是否可行’，而是 ‘我们看到了它的潜力，也了解它与其它方面的关联——你能教教我们吗？’”</span>\r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">区块链倡导者说，政府采用该技术将有助于规范它在其他行业的应用，有证据表明这项工作已在进行中。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">据会议组织者透露，华盛顿区块链峰会今年是第二次召开，吸引了来自20个国家的450多名开发商、代理人和顾问。</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '1490059779', '0', '', '0');
INSERT INTO `yang_article` VALUES ('376', '5', 'G积分简介', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span> <span style=\"font-size:16px;\"> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分原名</span><span style=\"font-size:16px;\">Gcoin</span><span style=\"font-size:16px;\">加密数字货币。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分的应用：生活化</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分消费商城，全部使用</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分消费，商城预计</span><span style=\"font-size:16px;\">4</span><span style=\"font-size:16px;\">月</span><span style=\"font-size:16px;\">18</span><span style=\"font-size:16px;\">号开通上线，商城涵盖，健康保健，家居生活、日用百货、奢侈品消费、绿色环保、手机专区、汽车专区、积分专区，消费券专区等诸多应用领域</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分同时具备金融属性，富乐敦投资基金管理有限公司接受</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分充值，开通外汇交易账户</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分同时可以采用兑换等方式购买房产、汽车、等</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分拥有专业运营管理团队，国际金融操作团队，市场开发建设团队。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分拥有很多战略合作方，金融集团，产业集团，外汇交易平台，实体生物科技园区等</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;\">      G</span><span style=\"font-size:16px;\">积分国内系统运营方以宽阔的胸怀对接战略合作方，实体企业、地产金融、高科技产品等都可以成为</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分的战略合作单位</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分官方网站：</span><a href=\"http://www.goldcoin.biz/\"><u><span style=\"font-size:16px;\">http://www.goldcoin.biz/</span></u></a> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分视频网站： https://m.v.qq.com/x/page/c/r/q/c0333d2bvrq.html?coverid=&from=groupmessage&isappinstalled=0</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<img src=\"/Public/kindeditor/attached/image/20170321/20170321072917_51871.png\" alt=\"\" /> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">2016年10月25号G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">赞助了国际性体育项目亚洲射击锦标赛，马来西亚射击队身穿印有</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">标准的文化衫，使用印有</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">标志的枪支，在亚洲射击锦标赛上夺得团体冠军，自此</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">打开了国际市场的大门。</span><span style=\"font-size:16px;\">2016年11月18日G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">面对亚洲市场全部开放</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分全球推广，亚洲市场率先启动，百度搜索关键词：鑫元世纪G积分 ，国内230家媒体和网站同步推广</span> \r\n</p>\r\n<p class=\"p\" style=\"background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"> G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">在商业领域的应用将逐渐展开，在中国境内</span><span style=\"font-size:16px;\">即将建立</span><span style=\"font-size:16px;\">G积分消费</span><span style=\"font-size:16px;\">商城，</span><span style=\"font-size:16px;\">使用</span><span style=\"font-size:16px;\">G积分即可在商城消费打折商品（商城涵盖奢饰品专区。健康，家具、日用、生活、电器等几千款产品）</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">对接国内、国际实体企业，投资矿产资源和商业地产，</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分与富乐敦外汇交易平台的紧密战略合作，可以让G积分直接进入到外汇交易平台买卖黄金与外汇。</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分未来的战略发展：重点打造G积分在金融领域的应用范围和商业领域的使用价值，</span> \r\n</p>\r\n<img src=\"/Public/kindeditor/attached/image/20170321/20170321073033_53821.png\" alt=\"\" /> \r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">作为具备金融属性的</span><span style=\"font-size:16px;\">数字资产</span><span style=\"font-size:16px;\">，未来在金融领域的应用极其广泛。</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">拥有一批国际化专业的金融操作团队，他们将会为</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">注入灵魂、赋予</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分</span><span style=\"font-size:16px;\">顽强的生命</span><span style=\"font-size:16px;\">，</span><span style=\"font-size:16px;\">让</span><span style=\"font-size:16px;\">G积分具有无限的增值空间和升值潜力</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:21.0000pt;background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">G积分平台拥有自己强大的运营管理团队，在国内拥有自己豪华的运营职场</span> \r\n</p>\r\n<p class=\"p\" style=\"background:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">北京瑞普瑞森生物科技产业园区：</span><a href=\"http://v.youku.com/v_show/id_XMjIxODg1MTM2NA==.html\"><b><u><span style=\"font-size:16px;\">http://v.youku.com/v_show/id_XMjIxODg1MTM2NA==.html</span></u></b></a><b></b> \r\n</p>\r\n<p class=\"p\" style=\"background:#FFFFFF;\">\r\n	<b><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分应用范围会越来越广，预计全球会有</span><span style=\"font-size:16px;\">8000</span><span style=\"font-size:16px;\">万会员拥有和使用</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分。</span><span style=\"font-size:16px;\">2017</span><span style=\"font-size:16px;\">年，中国将会有</span><span style=\"font-size:16px;\">200</span><span style=\"font-size:16px;\">万会员成为</span><span style=\"font-size:16px;\">G</span><span style=\"font-size:16px;\">积分的受益者。</span></b><b></b> \r\n</p>\r\n<span style=\"font-size:16px;\"></span> \r\n<p>\r\n	<br />\r\n</p>', '1490084860', '0', '', '0');
INSERT INTO `yang_article` VALUES ('378', '2', '阿里巴巴、中兴、中国联通将联合工信部打造物联网区块链框架', '<h1 style=\"text-indent:2em;\">\r\n	<img src=\"http://www.bitcoin86.com/uploads/allimg/170322/1-1F322145345.jpg\" /><br />\r\n</h1>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">据Bitcoins Channel报道，中国电商巨头阿里巴巴集团、跨国电信公司中兴、中国联通以及中国工业和信息化部即将联合起来共同打造一个物联网</span><a href=\"http://www.bitcoin86.com/block/\" target=\"_blank\"><span style=\"font-size:16px;\">区块链</span></a><span style=\"font-size:16px;\">框架。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> 这些公司已经接触了联合国负责国际电信事务的专门机构——国际电信联盟。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> 据报道，这些公司已经确认了当前物联网发展当中面临的障碍。其中包括连接成本过高且过于集中，扩展性较低，网络存在漏洞等等。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> 这些公司认为，区块链与物联网的结合可以解决上述问题，二者的结合带来的最大益处包括提升信任、安全加密、成本降低，以及提升操作速度。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> CircleID上个月曾报道过，这些公司呼吁搭建多边技术及操作的“物联网框架”。电信标准化部门（ITU-T）是一个物联网（IoT）和可持续智慧城市利益攸关方交流知识、确定政策和标准需求的平台。ITU-T第20研究组（SG20）负责制定国际标准，促进物联网技术的协调发展，最初以智慧城市和社区（SC&C）的IoT应用为重点。近日，在迪拜举行的ITU-T第20研究组会议上，有一份长达23页的文件SG20-C.008提交给了会议的物联网研究小组。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> 文件来源显示为中国联通、埃及国家电信管理局、中兴通讯、中国工信部电信研究院、中国电子科技集团公司信息科学研究院、阿里巴巴。文件标题为：“去中心化服务平台物联链（blockchain of things，BoT）框架”新工作项目提案。</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> 该文件介绍了物联链（blockchain of things，BoT）的概念，并分析了它的普通特点，以及它作为物联网去中心化服务平台的高要求，文中还引入了BoT的总体框架以及相关的常见功能等。</span>\r\n</p>\r\n<p>\r\n	<img src=\"http://www.bitcoin86.com/uploads/allimg/170322/1-1F322145349.jpg\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span style=\"font-size:16px;\">文件中讲到：</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> “区块链为IoT/SC&C（物联网/智慧城市和社区）提供了自动执行商业流程的新方法，而且无需设置复杂昂贵的集中式IT基础设施。区块链的数据保护促进了更加坚定的合作关系，并提升了效率。”</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> “区块链与IoT/SC&C（物联网/智慧城市和社区）的结合可以让物联网设备参与到区块链交易当中。具体来说，物联网设备可以向公链/私链/联盟的账簿发送数据以加入共享交易，这些交易采用分布式存储，由共识算法和加密法共同维护。区块链这种分布式复制方式让业务方无需通过集中式管控中介就可以访问或提供IoT/SC&C数据。”</span><br />\r\n<span style=\"font-size:16px;\">  </span><br />\r\n<span style=\"font-size:16px;\"> “区块链与IoT/SC&C（物联网/智慧城市和社区）的结合极有可能成为‘游戏规则改变者’，创造数字交互的新方式，让区块链交易融入物联网设备，并降低操作和维护业务的成本和复杂度。”</span>\r\n</p>', '1490237189', '0', '', '0');

-- ----------------------------
-- Table structure for `yang_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article_category`;
CREATE TABLE `yang_article_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `keywords` varchar(128) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article_category
-- ----------------------------
INSERT INTO `yang_article_category` VALUES ('1', '官方公告', '0', '11', '111', '1');
INSERT INTO `yang_article_category` VALUES ('2', '市场动态', '0', '首页文章', '2', '1');
INSERT INTO `yang_article_category` VALUES ('123', '买入指南', '61', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('3', '媒体报道', '0', '媒体报道', '1', '1');
INSERT INTO `yang_article_category` VALUES ('32', '系统公告', '0', '系统公告', '10', '1');
INSERT INTO `yang_article_category` VALUES ('6', '帮助中心', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('60', '注册指南', '6', '注册指南', '60', '1');
INSERT INTO `yang_article_category` VALUES ('61', '交易指南', '6', '交易指南', '61', '1');
INSERT INTO `yang_article_category` VALUES ('62', '充值指南', '6', '充值指南', '62', '1');
INSERT INTO `yang_article_category` VALUES ('64', '提现指南', '6', '提现指南', '64', '1');
INSERT INTO `yang_article_category` VALUES ('4', '风险提示', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('125', '银行转账充值', '62', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('110', '转入币', '63', '转入币', '110', '1');
INSERT INTO `yang_article_category` VALUES ('111', '转出币', '63', '转出币', '111', '1');
INSERT INTO `yang_article_category` VALUES ('7', '团队信息', '0', '团队信息', '0', '1');
INSERT INTO `yang_article_category` VALUES ('118', '关于我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('119', '加入我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('120', '提现提示', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('121', '邀请规则', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('122', '邀请好友', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('126', '新币上线申请', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('5', '货币详情', '0', '货币详情', '127', '1');

-- ----------------------------
-- Table structure for `yang_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_bank`;
CREATE TABLE `yang_bank` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(32) NOT NULL COMMENT '银行',
  `uid` int(32) NOT NULL,
  `cardname` varchar(32) NOT NULL COMMENT '用户名',
  `address` varchar(128) NOT NULL COMMENT '开户地',
  `cardnum` varchar(128) NOT NULL COMMENT '卡号',
  `bname` varchar(32) NOT NULL COMMENT '标签',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `bank_branch` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_bank
-- ----------------------------
INSERT INTO `yang_bank` VALUES ('1', '工商银行', '0', '', '252', '234', '1234', '0', '');
INSERT INTO `yang_bank` VALUES ('4', '中信银行', '60', '456', '9127', '756756756765', '7657657', '0', '');
INSERT INTO `yang_bank` VALUES ('5', '华夏银行', '60', '456', '15213', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('6', '华夏银行', '60', '456', '18245', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('7', '华夏银行', '60', '456', '广东0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('8', '华夏银行', '60', '456', '福建0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('9', '华夏银行', '60', '456', '福建0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('10', '华夏银行', '60', '456', '271', '2345', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('16', '交通银行', '60', '456', '122', '666666', '6666', '0', '');
INSERT INTO `yang_bank` VALUES ('17', '兴业银行', '59', '姜鹏', '159', '666666', 'kk', '0', '');
INSERT INTO `yang_bank` VALUES ('18', '农业银行', '62', '打的', '55', '444444', '体系那', '0', '');
INSERT INTO `yang_bank` VALUES ('20', '工商银行', '62', '打的', '176', '4545665', '阿萨德', '0', '');
INSERT INTO `yang_bank` VALUES ('22', '招商银行', '62', '打的', '239', '5', '+6', '0', '');
INSERT INTO `yang_bank` VALUES ('25', '中国银行', '59', '我我14141', '236', '65885477855547884', 'asdf', '0', '');
INSERT INTO `yang_bank` VALUES ('26', '建设银行', '78', '周成微', '322', '6236683810000751545', '周成微', '0', '');
INSERT INTO `yang_bank` VALUES ('27', '工商银行', '82', '张三', '244', '6222023301028765676', '工商银行', '0', '');
INSERT INTO `yang_bank` VALUES ('28', '建设银行', '100', '周成微', '322', '6236683810000751545', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('29', '农业银行', '163', '李敏', '322', '6228480468368436977', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('30', '建设银行', '169', '周成微', '322', '6236683810000751545', '小周', '-1', '');
INSERT INTO `yang_bank` VALUES ('31', '建设银行', '175', '王团', '220', '6236681370000140209', '王团', '0', '');
INSERT INTO `yang_bank` VALUES ('32', '农业银行', '176', '欧阳琼', '220', '6228480398543096372', '欧阳琼', '0', '');
INSERT INTO `yang_bank` VALUES ('33', '工商银行', '270', '张奕文', '82', '6222002008104115311', '008', '0', '');
INSERT INTO `yang_bank` VALUES ('34', '工商银行', '273', '宋春丽', '244', '6222023301026933977', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('35', '中国邮政储蓄银行', '250', '李锋', '256', '6221882330007740764', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('36', '建设银行', '1112', '刘祖权', '222', '6217001240003323024', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('37', '工商银行', '2025', '张海东', '229', '6222021106020098202', '张海东', '0', '');
INSERT INTO `yang_bank` VALUES ('38', '建设银行', '2766', '冷皓', '82', '6217003170019619297', '建设', '0', '');
INSERT INTO `yang_bank` VALUES ('39', '农业银行', '6735', '付剑兵', '151', '6228480720849748119', '体现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('40', '农业银行', '529', '刘荣洁', '146', '6228480659130755179', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('42', '建设银行', '227', '金莉', '256', '4367420661210453536', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('43', '中国银行', '7427', '徐华英', '55', '6216606400001521935', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('44', '建设银行', '1115', '滕玉娇', '262', '6217000450000985425', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('45', '广发银行', '6843', '许春龙', '197', '6215624121000242587', '我', '0', '');
INSERT INTO `yang_bank` VALUES ('46', '建设银行', '7476', '蔡东深', '77', '6217007200020422963', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('47', '农业银行', '7448', '赖红丽', '256', '6228482188217030478', 'ID7448', '0', '');
INSERT INTO `yang_bank` VALUES ('48', '建设银行', '664', '石剑军', '244', '6227000735010089211', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('49', '农业银行', '565', '柳会山', '244', '6228480048620452671', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('50', '建设银行', '7751', '田爽', '244', '6236680730000610009', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('51', '建设银行', '198', '李子军', '285', '6227002260020510971', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('52', '农业银行', '621', '于满泉', '146', '6228480652367880315', '0315', '0', '');
INSERT INTO `yang_bank` VALUES ('53', '建设银行', '182', '谢自君', '322', '6217003810062192110', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('54', '农业银行', '991', '陈玉海', '256', '6228482188146389979', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('55', '建设银行', '7834', '黎杰', '383', '6217001540003998356', '建行', '0', '');
INSERT INTO `yang_bank` VALUES ('56', '招商银行', '319', '陈鹏', '391', '6214855770515167', '体现1', '0', '');
INSERT INTO `yang_bank` VALUES ('57', '农业银行', '194', '刘影', '256', '6228452188004199078', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('58', '建设银行', '7916', '庞少峰', '79', '6227003230690350205', '建行1', '0', '');
INSERT INTO `yang_bank` VALUES ('59', '建设银行', '213', '黄凯', '37', '6217001640000419784', '提现-01', '0', '');
INSERT INTO `yang_bank` VALUES ('60', '工商银行', '8003', '李来凤', '195', '6215581807003197434', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('61', '工商银行', '8004', '方晓宇', '195', '6215581807003599894', '回款01', '0', '');
INSERT INTO `yang_bank` VALUES ('62', '工商银行', '8008', '邓玲', '195', '6215581807003600890', '提现000001', '0', '');
INSERT INTO `yang_bank` VALUES ('63', '工商银行', '7985', '李飞虎', '195', '6215581807004167675', '提现银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('64', '工商银行', '8010', '王飞', '195', '6215581807003599290', '回款银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('65', '工商银行', '8012', '吴时', '195', '6217231807002024142', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('66', '工商银行', '8013', '郑陈', '195', '6217231807002036112', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('67', '工商银行', '8016', '屈秋燕', '195', '6215581807004293919', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('68', '工商银行', '8006', '王天昊', '211', '6222024200022924429', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('69', '建设银行', '169', '周成微', '322', '6236683810000751545', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('70', '工商银行', '8159', '肖正娇', '52', '6215590200009475989', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('71', '建设银行', '8185', '韩铁强', '167', '6217001140030742388', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('72', '工商银行', '546', '王爱军', '146', '6228480658999884773', '01', '-1', '');
INSERT INTO `yang_bank` VALUES ('73', '农业银行', '546', '王爱军', '146', '6228480658999884773', '提现1', '0', '');
INSERT INTO `yang_bank` VALUES ('74', '中国邮政储蓄银行', '8257', '巫晨阳', '149', '6217994910053989630', '巫晨阳', '0', '');
INSERT INTO `yang_bank` VALUES ('75', '农业银行', '8560', '赵富余', '297', '6228480262349892717', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('76', '工商银行', '8579', '王新芳', '285', '6217231613000901897', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('77', '建设银行', '9407', '沈友良', '197', '6217002920138062840', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('78', '建设银行', '9407', '沈友良', '197', '6217002920138062840', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('79', '工商银行', '9400', '叶昶', '138', '6212260402018766301', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('80', '工商银行', '9416', '崔皓朔', '138', '6215580402000157440', '提现卡2', '0', '');
INSERT INTO `yang_bank` VALUES ('81', '建设银行', '9607', '马侃', '138', '6236680130003796949', '提现卡2', '0', '');
INSERT INTO `yang_bank` VALUES ('82', '工商银行', '9632', '宋玉', '138', '6212260402018389153', '提现卡3', '0', '');
INSERT INTO `yang_bank` VALUES ('83', '建设银行', '9654', '潘士芳', '138', '6236680130003851942', '提现卡3', '0', '');
INSERT INTO `yang_bank` VALUES ('84', '建设银行', '9667', '李宁', '138', '6217000130039861207', '提现卡3', '0', '');
INSERT INTO `yang_bank` VALUES ('85', '建设银行', '9926', '钟明浩', '81', '6236683190000248515', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('86', '工商银行', '9976', '曹韵昕', '163', '6222022308008803210', '艾尔', '0', '');
INSERT INTO `yang_bank` VALUES ('87', '建设银行', '8899', '郝志荣', '340', '6217003830000060088', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('88', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('89', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('90', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('91', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('92', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('93', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('94', '光大银行', '9653', '彭国行', '138', '6226632800945490', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('95', '农业银行', '10232', '熊飞', '220', '6228480392953662310', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('96', '农业银行', '10233', '蒋永龙', '220', '6228480395803953177', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('97', '农业银行', '10234', '史秀英', '220', '6228480395803953078', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('98', '农业银行', '10235', '熊金龙', '220', '6228480395816329571', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('99', '农业银行', '10236', '张路', '220', '6228480395816232379', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('100', '中国邮政储蓄银行', '10237', '熊友林', '220', '6217993000174137789', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('101', '中国邮政储蓄银行', '10238', '熊雪', '220', '6217993000288910014', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('102', '中国邮政储蓄银行', '10239', '蒋从娟', '220', '6217993000173861132', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('103', '农业银行', '9556', '曾茄庆', '57', '6228480698747124775', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('104', '农业银行', '10277', '苏阳', '322', '6228480469800095777', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('105', '工商银行', '10275', '魏锦', '322', '6212264402044688160', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('106', '农业银行', '10283', '邵明星', '322', '6228480469800077577', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('107', '建设银行', '10289', '张桂华', '322', '6217003570003806844', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('108', '平安银行', '10299', '杨晓琴', '322', '6230580000098794469', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('109', '建设银行', '10301', '杨开军', '322', '6236683810004234209', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('110', '招商银行', '10302', '叶晓庆', '343', '6225881224713932', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('111', '平安银行', '10303', '龙行学', '322', '6230580000105905181', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('112', '农业银行', '10304', '张素荣', '343', '6228480028370774177', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('113', '农业银行', '10305', '邵笑', '322', '6228480469800092576', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('114', '工商银行', '10308', '何治鑫', '322', '6212264402050203581', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('115', '平安银行', '10309', '何敏', '322', '6230582000063456498', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('116', '建设银行', '10317', '杨波', '322', '6217003810057593348', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('117', '平安银行', '10319', '颜定芬', '322', '6230580000101426364', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('118', '平安银行', '10316', '赵启进', '322', '6230580000096111765', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('119', '农业银行', '10321', '刘欣', '322', '6228480468013432371', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('120', '农业银行', '10321', '刘欣', '322', '6228480468013432371', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('121', '平安银行', '10322', '文国明', '322', '62305800000105904671', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('122', '农业银行', '10323', '黄彤凤', '322', '6228480469800085075', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('123', '平安银行', '10324', '肖兰', '322', '6230580000082666244', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('124', '平安银行', '10329', '杨淑芝', '323', '6230580000096111559', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('125', '建设银行', '10330', '雷潇', '322', '6217003810023026084', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('126', '工商银行', '9603', '陈燕萍', '109', '9558822104001218860', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('127', '工商银行', '9603', '陈燕萍', '109', '9558822104001218860', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('128', '平安银行', '10231', '曾蓬勃', '322', '6230580000096097055', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('129', '建设银行', '164', '罗霞', '322', '6217003810052926311', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('130', '招商银行', '155', '罗毅', '322', '6214830280455048', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('131', '工商银行', '10540', '方照', '391', '6222021203009541516', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('132', '建设银行', '7930', '何秋霞', '322', '6217003810014801776', '建设', '-1', '');
INSERT INTO `yang_bank` VALUES ('133', '工商银行', '10939', '黄财伟', '53', '6212264100026153019', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('134', '工商银行', '10941', '陈发银', '53', '6212261407005616285', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('135', '工商银行', '10940', '彭璐君', '53', '6212264100027221369', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('136', '工商银行', '10942', '曾棠棣', '53', '6222084100002455112', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('137', '民生银行', '10943', '朱要磊', '256', '6226227001134331', '11111', '0', '');
INSERT INTO `yang_bank` VALUES ('138', '建设银行', '10944', '陈美霞', '53', '6217001890005004293', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('139', '建设银行', '10948', '梁建忠', '53', '6236680110002663423', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('140', '招商银行', '10952', '黄旭丽', '53', '6214855914291121', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('141', '招商银行', '10947', '陈喜成', '53', '6214855924892199', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('142', '工商银行', '10949', '杨恕', '64', '6212261407005669821', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('143', '工商银行', '10950', '林铖', '53', '6212264100024522785', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('144', '中国邮政储蓄银行', '10951', '黄燎原', '53', '6217993930015129738', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('145', '招商银行', '10955', '方远祥', '56', '6214833803113433', '11', '0', '');
INSERT INTO `yang_bank` VALUES ('146', '招商银行', '10954', '雷团英', '53', '6214855914291188', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('147', '农业银行', '10956', '唐彪', '38', '6228480068853340179', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('148', '中国邮政储蓄银行', '10958', '罗维化', '54', '6217993910004978428', '11111', '0', '');
INSERT INTO `yang_bank` VALUES ('149', '工商银行', '10959', '吴武兵', '52', '6212262402027978994', '1111', '0', '');
INSERT INTO `yang_bank` VALUES ('150', '中国邮政储蓄银行', '10962', '罗维魁', '37', '6217993900026294359', '111', '0', '');
INSERT INTO `yang_bank` VALUES ('151', '工商银行', '10961', '陈增松', '53', '6212264100025791041', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('152', '工商银行', '10963', '许嘉豪', '53', '6212264100025790944', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('153', '招商银行', '10964', '陈炜炜', '53', '6214855951187505', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('154', '农业银行', '10965', '卢美莲', '52', '6228481548820687074', '111', '0', '');
INSERT INTO `yang_bank` VALUES ('155', '招商银行', '10966', '程碧云', '54', '6214855913956856', '111', '0', '');
INSERT INTO `yang_bank` VALUES ('156', '工商银行', '10967', '黄瑞得', '53', '6222084100002534312', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('157', '工商银行', '10970', '陈雪婷', '53', '6212264100026018915', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('158', '工商银行', '10969', '黄嘉纯', '53', '6212264100020850339', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('159', '招商银行', '10957', '兰木祥', '53', '6214855914291196', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('160', '工商银行', '10973', '江宗申', '38', '6212261407005402306', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('161', '招商银行', '10972', '潘志春', '53', '6214855914290966', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('162', '工商银行', '10976', '林万和', '52', '6222021402004397599', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('163', '工商银行', '10974', '郭宏达', '53', '6212264100017997622', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('164', '中国邮政储蓄银行', '10975', '汪军', '53', '6217993930015582001', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('165', '招商银行', '10977', '彭明良', '53', '6214835922439482', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('166', '招商银行', '10979', '吴后全', '37', '6214855914292962', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('167', '招商银行', '10980', '林章德', '53', '6214855914291022', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('168', '兴业银行', '10982', '黄成健', '53', '622908133003793448', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('169', '农业银行', '10983', '肖雄', '53', '6228482038812945374', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('170', '招商银行', '10984', '包双喜', '53', '6214855914291162', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('171', '招商银行', '10985', '陈章光', '53', '6214855914290545', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('172', '招商银行', '10986', '张春华', '53', '6214855914290503', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('173', '农业银行', '10988', '林通', '53', '6228481548824126673', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('174', '工商银行', '10989', '雷晓辉', '53', '6212261407005616970', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('175', '工商银行', '10990', '杨奶玉', '53', '6212261407005620691', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('176', '招商银行', '10987', '林永辉', '53', '6214855914291089', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('177', '招商银行', '10991', '吴玉瑞', '53', '6214855914291055', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('178', '工商银行', '10994', '孙立营', '53', '6212261407005621749', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('179', '工商银行', '10992', '许道巡', '53', '6212261407005620709', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('180', '招商银行', '10993', '苏江华', '53', '6214855913957169', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('181', '招商银行', '10995', '陈善文', '53', '6214855914291113', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('182', '招商银行', '10996', '杨铃华', '53', '6214855914291048', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('183', '招商银行', '10997', '兰木全', '53', '6214855914291071', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('184', '招商银行', '10999', '李景', '53', '6214855914291261', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('185', '招商银行', '11001', '王树丽', '53', '6214855914291279', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('186', '招商银行', '11002', '阮水旺', '53', '6214855914291139', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('187', '招商银行', '11003', '吴李陈', '53', '6214855914291238', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('188', '招商银行', '11004', '苏泳华', '53', '6214855914291097', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('189', '兴业银行', '11005', '李琼兰', '53', '622908133003596478', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('190', '中国银行', '10242', '何容', '322', '6217903100026474361', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('191', '工商银行', '10935', '许毕峰', '60', '6212264100018231161', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('192', '农业银行', '150', '李万彬', '339', '6228482469496273371', '卡1', '-1', '');
INSERT INTO `yang_bank` VALUES ('193', '农业银行', '150', '李万彬', '333', '6228482469496283373', '卡1', '-1', '');
INSERT INTO `yang_bank` VALUES ('194', '建设银行', '8213', '黄红真', '79', '6227003231600223821', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('195', '工商银行', '11590', '刘文龙', '142', '6212260405007908610', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('196', '中国邮政储蓄银行', '11589', '张强雄', '85', '6221555921003242016', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('197', '建设银行', '11592', '王晓蕾', '77', '6227000130624421259', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('198', '招商银行', '975', '陈鹏', '391', '6214855770515167', '体现1', '0', '');
INSERT INTO `yang_bank` VALUES ('199', '工商银行', '11635', '肖征东', '77', '6212264000008463958', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('200', '农业银行', '11645', '贺雷', '142', '6228451720032923219', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('201', '民生银行', '11645', '贺雷', '142', '6216913600205190', '02', '0', '');
INSERT INTO `yang_bank` VALUES ('202', '招商银行', '11651', '谢东浩', '77', '6214856550251403', '招行', '0', '');
INSERT INTO `yang_bank` VALUES ('203', '工商银行', '11653', '姜汜凯', '89', '6212262009003890927', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('204', '工商银行', '11653', '姜汜凯', '89', '6212262009003890927', '01', '-1', '');
INSERT INTO `yang_bank` VALUES ('205', '建设银行', '11684', '黄九月', '42', '6227000063644228737', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('206', '建设银行', '11685', '邵金荣', '62', '6227000063644250863', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('207', '工商银行', '11692', '薛吉棠', '53', '6212261402029627921', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('208', '建设银行', '11694', '李开铭', '145', '6217000190003597930', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('209', '建设银行', '168', '李汉', '322', '6217003810079280478', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('210', '招商银行', '11741', '李文军', '245', '6214834111891454', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('211', '中国银行', '10523', '付玉和', '52', '6217860100003056836', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('212', '农业银行', '11771', '李华', '76', '62280088612978473', '农行', '-1', '');
INSERT INTO `yang_bank` VALUES ('213', '农业银行', '11772', '黄杰飞', '76', '6228480084787065014', '农行', '0', '');
INSERT INTO `yang_bank` VALUES ('214', '工商银行', '11774', '胡丰', '321', '6222081001026151005', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('215', '平安银行', '11740', '陈乡景', '58', '6230582000036135088', 'ka1', '0', '');
INSERT INTO `yang_bank` VALUES ('216', '交通银行', '11782', '刘强', '220', '6222620210008479627', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('217', '中国银行', '11789', '张继东', '162', '6217858000062446577', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('218', '农业银行', '11793', '黄小卫', '76', '6228270081237303775', '农业卡', '-1', '');
INSERT INTO `yang_bank` VALUES ('219', '建设银行', '11792', '谢实俊', '385', '6217001430004981157', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('220', '工商银行', '11780', '穆国瑞', '52', '6222020200115041671', '工商银行1', '0', '');
INSERT INTO `yang_bank` VALUES ('221', '建设银行', '11802', '刘小军', '196', '6217002750005921111', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('222', '建设银行', '11788', '顾则洲', '230', '4340621320049558', '提现1', '0', '');
INSERT INTO `yang_bank` VALUES ('223', '农业银行', '11788', '顾则洲', '230', '6228481988070505875', '提现2', '0', '');
INSERT INTO `yang_bank` VALUES ('224', '农业银行', '11788', '顾则洲', '230', '6228481988070505875', '提现2', '-1', '');
INSERT INTO `yang_bank` VALUES ('225', '农业银行', '11788', '顾则洲', '230', '6228481988070505875', '提现2', '-1', '');
INSERT INTO `yang_bank` VALUES ('226', '光大银行', '11804', '李雪军', '77', '6226660400648263', '光大卡', '0', '');
INSERT INTO `yang_bank` VALUES ('227', '建设银行', '11816', '向昌松', '196', '4340612750555602', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('228', '交通银行', '11809', '文郭军', '52', '6222620510004871721', '提款卡', '-1', '');
INSERT INTO `yang_bank` VALUES ('229', '农业银行', '11713', '王祖发', '79', '6228230605713879368', '农业银行提现', '0', '');
INSERT INTO `yang_bank` VALUES ('230', '招商银行', '11827', '童浩', '228', '6225885230249617', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('231', '农业银行', '11793', '黄小卫', '76', '6228270081237303775', '农业卡', '0', '');
INSERT INTO `yang_bank` VALUES ('232', '中国银行', '11832', '付帅', '261', '6217858400016765041', 'fs1679', '0', '');
INSERT INTO `yang_bank` VALUES ('233', '建设银行', '11892', '何志华', '245', '6217000780021378808', '建行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('234', '工商银行', '171', '方蕾', '146', '6222080403002569427', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('235', '工商银行', '11894', '陈静', '196', '6215581817001053273', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('236', '农业银行', '11901', '毛琴娣', '220', '6228480398627774472', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('237', '建设银行', '11886', '李华', '76', '6227003322610246652', '建行', '0', '');
INSERT INTO `yang_bank` VALUES ('238', '农业银行', '11915', '吴煜南', '233', '6228480928181420177', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('239', '工商银行', '11917', '李虹', '159', '6222081716001076691', '工行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('240', '农业银行', '11794', '高应', '322', '6228480469795417275', '农业', '0', '');
INSERT INTO `yang_bank` VALUES ('241', '工商银行', '11770', '刘广品', '289', '6212261608006085434', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('242', '农业银行', '11924', '卢春成', '61', '6228480708439018779', '成', '0', '');
INSERT INTO `yang_bank` VALUES ('243', '中国银行', '11939', '付玉和', '52', '6217860100003056836', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('244', '中国银行', '11746', '付玉和', '52', '6217860100003056836', '提现2', '0', '');
INSERT INTO `yang_bank` VALUES ('245', '中国银行', '11928', '付玉和', '52', '6217860100003056836', '提现3', '0', '');
INSERT INTO `yang_bank` VALUES ('246', '建设银行', '11943', '付玉和', '167', '6227001141811396914', '提现4', '0', '');
INSERT INTO `yang_bank` VALUES ('247', '建设银行', '11944', '付玉和', '167', '6227001141811396914', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('248', '建设银行', '11954', '付玉和', '167', '6217860100003056836', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('249', '建设银行', '11955', '付玉和', '167', '6227001141811396914', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('250', '工商银行', '11874', '秦明录', '116', '6212262405005421481', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('251', '建设银行', '11938', '陈小江', '77', '6217007200026748908', '建设卡', '0', '');
INSERT INTO `yang_bank` VALUES ('252', '工商银行', '11957', '赵俊生', '140', '6212260408008422748', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('253', '建设银行', '11844', '陈伟超', '170', '6217001050002206462', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('254', '建设银行', '11990', '潘玉生', '284', '6217002390012927668', '建行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('255', '中国邮政储蓄银行', '11967', '袁霞', '284', '6217974520000846660', '邮储6660', '0', '');
INSERT INTO `yang_bank` VALUES ('256', '招商银行', '11856', '杨艳灵', '220', '6214832501283597', '招商银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('257', '建设银行', '11858', '赵娟芳', '73', '6217004310004625086', '8', '0', '');
INSERT INTO `yang_bank` VALUES ('258', '工商银行', '12062', '陈子涛', '352', '6212263014001837705', '工商', '0', '');
INSERT INTO `yang_bank` VALUES ('259', '农业银行', '12030', '王文胜', '284', '6228480246087060363', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('260', '工商银行', '12035', '周耕', '284', '6222023803018923601', '工行01', '0', '');
INSERT INTO `yang_bank` VALUES ('261', '建设银行', '12080', '覃晶', '220', '6222801375261063177', '建设银行', '0', '');
INSERT INTO `yang_bank` VALUES ('262', '中国银行', '12106', '蓝良平', '79', '6217907000007845868', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('263', '农业银行', '12096', '钱俊', '220', '6228480391753755019', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('264', '建设银行', '11853', '李慧艳', '245', '6227000785060144358', '建行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('265', '农业银行', '12119', '纪善平', '288', '6228481838465146670', '农行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('266', '中国银行', '12134', '吕越', '258', '6216618401002368025', '中国银行', '0', '');
INSERT INTO `yang_bank` VALUES ('267', '工商银行', '12134', '吕越', '258', '6215590602004183171', '中国工商银行', '0', '');
INSERT INTO `yang_bank` VALUES ('268', '农业银行', '12141', '刘艳蓉', '260', '6228481918210767077', '中国农业银行', '0', '');
INSERT INTO `yang_bank` VALUES ('269', '农业银行', '12071', '陈晓桥', '197', '6228481099391392371', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('270', '农业银行', '12161', '周太平', '394', '6228480478503621078', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('271', '农业银行', '12149', '饶洪运', '86', '6228481423040186911', '农行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('272', '中国银行', '12173', '韩春艳', '254', '6217850500007678414', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('273', '工商银行', '12148', '牛庆龙', '52', '6222080200006443413', '工商银行', '0', '');
INSERT INTO `yang_bank` VALUES ('274', '工商银行', '12243', '裴时宁', '136', '6212262201000698383', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('275', '建设银行', '12261', '颜真良', '197', '6236682920007156969', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('276', '建设银行', '8473', '闫子絮', '244', '6236680730003533489', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('277', '招商银行', '12274', '陈小平', '386', '6214835791150632', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('278', '交通银行', '12293', '王桂华', '219', '6222603320000269925', '交通银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('279', '工商银行', '12314', '袁碧梅', '79', '6212262010030363847', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('280', '农业银行', '12317', '王凤国', '288', '6228481838486922679', '农业银行', '0', '');
INSERT INTO `yang_bank` VALUES ('281', '农业银行', '12044', '潘惠民', '321', '6228450038012828873', ' 农行借记卡', '0', '');
INSERT INTO `yang_bank` VALUES ('282', '建设银行', '11839', '朱萍', '196', '6217002750005538550', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('283', '农业银行', '12332', '张卫祥', '389', '6228480379216154474', '01', '-1', '');
INSERT INTO `yang_bank` VALUES ('284', '农业银行', '12332', '张卫祥', '389', '6228480379216154474', '01', '-1', '');
INSERT INTO `yang_bank` VALUES ('285', '农业银行', '12332', '张卫祥', '389', '6228480379216154474', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('286', '建设银行', '12338', '', '196', '6217002750006469011', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('287', '工商银行', '11922', '孙泉湘', '209', '6222081907000077794', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('288', '建设银行', '11968', '鲁秀艳', '284', '6217002390006233958', '鲁秀艳01', '0', '');
INSERT INTO `yang_bank` VALUES ('289', '中国银行', '12365', '钱友', '223', '6217856100057412246', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('290', '工商银行', '12349', '池军', '232', '6222021104001466274', '001', '0', '');
INSERT INTO `yang_bank` VALUES ('291', '工商银行', '11753', '于贺', '216', '6222020804006139849', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('292', '农业银行', '12372', '裴建国', '143', '6228482136301047767', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('293', '农业银行', '12360', '文中辉', '209', '6228481378427029177', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('294', '平安银行', '12369', '冉崇辉', '77', '6230580000051887557', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('295', '中国银行', '12310', '寇福勋', '284', '6217906000010232980', '中国银行', '0', '');
INSERT INTO `yang_bank` VALUES ('296', '农业银行', '12310', '寇福勋', '284', '6228480240143865816', '农业银行', '0', '');
INSERT INTO `yang_bank` VALUES ('297', '兴业银行', '12076', '吴惠玲', '56', '622909133333785816', '银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('298', '工商银行', '11850', '何胜东', '275', '6222022806003964044', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('299', '平安银行', '12401', '游华光', '77', '6230580000102065914', '游华光', '0', '');
INSERT INTO `yang_bank` VALUES ('300', '招商银行', '12407', '江勇', '183', '6214837130444445', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('301', '招商银行', '12422', '杨宇', '389', '6214835751044007', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('302', '招商银行', '12303', '熊细春', '235', '6214857971932472', 'x', '0', '');
INSERT INTO `yang_bank` VALUES ('303', '工商银行', '12315', ' 张仲辉', '82', '6222022008003974467', '张仲辉', '0', '');
INSERT INTO `yang_bank` VALUES ('304', '中国农业发展银行', '12444', '谢广涛', '143', '6228482132263203514', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('305', '农业银行', '12454', '金华', '238', '6228480938528825376', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('306', '建设银行', '12439', '金雅珠', '385', '6222801432071087431', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('307', '建设银行', '12439', '金雅珠', '385', '6222801432071087431', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('308', '民生银行', '12461', '王绍群', '3401', '6226193400596522', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('309', '平安银行', '12486', '于红萍', '284', '6230580000105649540', '平安银行提现', '0', '');
INSERT INTO `yang_bank` VALUES ('310', '兴业银行', '12487', '朱合伟', '284', '622908523265888516', '兴业银行', '0', '');
INSERT INTO `yang_bank` VALUES ('311', '建设银行', '12497', '任日军', '284', '6227002396590037191', '建设银行提现', '0', '');
INSERT INTO `yang_bank` VALUES ('312', '农业银行', '12500', '张健', '296', '6228480293078631216', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('313', '农业银行', '12294', '李秀莲', '339', '6228482463089729410', '中国农业银行', '0', '');
INSERT INTO `yang_bank` VALUES ('314', '交通银行', '11842', '周其才', '220', '6222620210016635384', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('315', '农业银行', '12510', '王亚琴', '296', '6228480298302582879', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('316', '交通银行', '12513', '王鑫', '220', '6222600210004721596', '交通银行', '0', '');
INSERT INTO `yang_bank` VALUES ('317', '农业银行', '12239', '郭艳菲', '289', '6228481330850811811', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('318', '农业银行', '12478', '肖开发', '222', '6228480435786486074', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('319', '建设银行', '12519', '刘洪贵', '254', '4367420650010729989', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('320', '平安银行', '12524', '赵雪光', '180', '6230582000064775532', '平安', '0', '');
INSERT INTO `yang_bank` VALUES ('321', '工商银行', '11769', '王阳阳', '310', '6212260511000456794', '工商', '0', '');
INSERT INTO `yang_bank` VALUES ('322', '招商银行', '12537', '董玉兰', '235', '6214857970335388', '招商', '0', '');
INSERT INTO `yang_bank` VALUES ('323', '建设银行', '12555', '时军', '255', '6227000681010311892', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('324', '平安银行', '12083', '张健安', '77', '6230583000005566072', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('325', '农业银行', '11904', '贺捷', '320', '6228482941094085415', '提现卡a', '0', '');
INSERT INTO `yang_bank` VALUES ('326', '农业银行', '11904', '贺捷', '320', '6228482941170392719', '提现卡b', '0', '');
INSERT INTO `yang_bank` VALUES ('327', '工商银行', '12579', '王霞', '260', '6222020613005768932', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('328', '工商银行', '12180', '王强', '299', '6217211603008259772', '王强', '0', '');
INSERT INTO `yang_bank` VALUES ('329', '建设银行', '12595', '姜新枫', '220', '4340611370387487', '建行01', '0', '');
INSERT INTO `yang_bank` VALUES ('330', '建设银行', '11771', '李华', '76', '6227003322610246652', '建行', '0', '');
INSERT INTO `yang_bank` VALUES ('331', '建设银行', '12599', '郑家飞', '58', '6217001830017938344', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('332', '农业银行', '11771', '李华', '76', '6228480088612978473', '农行', '0', '');
INSERT INTO `yang_bank` VALUES ('333', '中国银行', '12511', '陈玲艳', '97', '6217852600009183443', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('334', '工商银行', '12511', '陈玲艳', '97', '9558802102116906886', '提现卡02', '0', '');
INSERT INTO `yang_bank` VALUES ('335', '建设银行', '12657', '刘玉美', '284', '6227002397600050745', '建设银行', '0', '');
INSERT INTO `yang_bank` VALUES ('336', '建设银行', '12665', '叶贻谦', '60', '6227001935561621847', '建设银行卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('337', '农业银行', '12164', '杨燕芳', '389', '6228480372270138418', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('338', '农业银行', '12673', '唐尚武', '52', '622848018305084271', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('339', '农业银行', '12677', '梁呼和', '267', '6228483068211154673', '农行提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('340', '中国银行', '11845', '沙海燕', '46', '6217906300006921533', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('341', '建设银行', '12685', '李晓燕', '252', '6236680690000832906', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('342', '建设银行', '11935', '胡耀进', '383', '6236681540006826940', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('343', '建设银行', '11935', '胡耀进', '383', '6236681540006826940', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('344', '建设银行', '12706', '胡江鱼', '267', '6236680490000080659', '建行提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('345', '建设银行', '12711', '毕玉岩', '52', '6217000010077222118', '1', '0', '');
INSERT INTO `yang_bank` VALUES ('346', '招商银行', '12716', '于炳松', '97', '6214837710098298', '心舞', '0', '');
INSERT INTO `yang_bank` VALUES ('347', '招商银行', '12205', '李洪泉', '284', '6214835322805225', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('348', '中国银行', '12734', '刘宏', '267', '6217868400001110557', '中国银行提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('349', '农业银行', '11837', '宋亮', '257', '6228480570677598213', '农业', '0', '');
INSERT INTO `yang_bank` VALUES ('350', '工商银行', '12759', '吴鹏飞', '138', '6222080402005156513', '我的', '0', '');
INSERT INTO `yang_bank` VALUES ('351', '农业银行', '12782', '汪群英', '385', '6228480341413190016', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('352', '光大银行', '11799', '任合意', '149', '6226622210754855', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('353', '交通银行', '11799', '任合意', '149', '6222600620007465100', '提现卡2', '0', '');
INSERT INTO `yang_bank` VALUES ('354', '招商银行', '12400', '海成帮', '149', '6214853712675223', '招商卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('355', '建设银行', '12768', '陈柳东', '86', '6236683200000403372', '金库', '0', '');
INSERT INTO `yang_bank` VALUES ('356', '平安银行', '12686', '陈福财', '79', '6230584000002165042', '平安银行', '0', '');
INSERT INTO `yang_bank` VALUES ('357', '农业银行', '12515', '王德伟', '288', '6228481836012856767', '体现', '0', '');
INSERT INTO `yang_bank` VALUES ('358', '工商银行', '12825', '马建松', '162', '6222021708008431303', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('359', '工商银行', '11870', '王平', '220', '6212264301008672931', '提现01', '0', '');
INSERT INTO `yang_bank` VALUES ('360', '建设银行', '11981', '崔利兰', '160', '6227002502410150433', '中国建设银行', '0', '');
INSERT INTO `yang_bank` VALUES ('361', '工商银行', '12849', '鲁建华', '162', '6212261708005008666', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('362', '农业银行', '12863', '李明', '267', '6228483068025958574', '农行提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('363', '招商银行', '11848', '刘海珍', '295', '6214836310815309', '招商', '0', '');
INSERT INTO `yang_bank` VALUES ('364', '建设银行', '12875', '耿全胜', '267', '6217000490000225984', '建行提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('365', '农业银行', '12451', '陈湛波', '52', '6228480010691123011', '农行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('366', '农业银行', '12528', '于洋', '52', '6228480018520841877', '提现卡', '0', '');
INSERT INTO `yang_bank` VALUES ('367', '工商银行', '12157', '郭云姝', '284', '6222083803006962220', '美丽天使', '0', '');
INSERT INTO `yang_bank` VALUES ('368', '招商银行', '11820', '钟毅雄', '76', '6226090202854689', '卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('369', '招商银行', '12127', '李东扬', '293', '6214856330398086', '提现卡1', '0', '');
INSERT INTO `yang_bank` VALUES ('370', '工商银行', '12908', '蔡晓东', '79', '6212262010016685833', '工商', '0', '');
INSERT INTO `yang_bank` VALUES ('371', '建设银行', '12013', '滕乐艳', '284', '4340622390161158', '-1', '0', '');
INSERT INTO `yang_bank` VALUES ('372', '建设银行', '12900', '陆波', '229', '6217001250000573208', '陆波建行', '0', '');
INSERT INTO `yang_bank` VALUES ('373', '工商银行', '11989', '乔静', '284', '6212253803001408810', '乔静工商银行卡', '0', '');
INSERT INTO `yang_bank` VALUES ('374', '农业银行', '12924', '池旭东', '84', '6228481398276944474', '农行', '0', '');
INSERT INTO `yang_bank` VALUES ('375', '农业银行', '12924', '池旭东', '84', '6228481398276944474', '农行', '0', '');
INSERT INTO `yang_bank` VALUES ('376', '招商银行', '11936', '赵秀娟', '220', '6214851250735987', '招行', '0', '');
INSERT INTO `yang_bank` VALUES ('377', '农业银行', '12930', '窦莉君', '167', '6228480170537431711', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('378', '工商银行', '12594', '朱华君', '223', '6212261105002832109', '工行', '0', '');
INSERT INTO `yang_bank` VALUES ('379', '工商银行', '11962', '蒋苗', '79', '6217232010003146530', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('380', '建设银行', '12963', '帅子泉', '291', '6217002280008192429', '提现卡01', '0', '');
INSERT INTO `yang_bank` VALUES ('381', '农业银行', '11838', '李强', '227', '6228483465316078874', '01', '0', '');
INSERT INTO `yang_bank` VALUES ('382', '工商银行', '11903', '汪蕾', '284', '6222083803007020671', '提现', '0', '');
INSERT INTO `yang_bank` VALUES ('383', '华夏银行', '12980', '李林骏', '213', '4562356542356587', '5598654253', '0', '');
INSERT INTO `yang_bank` VALUES ('384', '招商银行', '141', '百年春二', '203', '8456321569854523698', '呵呵呵', '0', '');
INSERT INTO `yang_bank` VALUES ('385', '建设银行', '12991', '何秋霞', '322', '6217003810014801776', '1', '-1', '');
INSERT INTO `yang_bank` VALUES ('386', '建设银行', '13003', '何秋霞', '322', '6217003810014801776', '1', '0', '');

-- ----------------------------
-- Table structure for `yang_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_config`;
CREATE TABLE `yang_config` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_config
-- ----------------------------
INSERT INTO `yang_config` VALUES ('title', ' 众泰财富快速交易平台');
INSERT INTO `yang_config` VALUES ('keywords', '众泰财富');
INSERT INTO `yang_config` VALUES ('desc', '众泰财富网友情提示：请控制风险，不要投入超过您风险承受能力的资金，不要投资您所不了解的数字币，拒绝传销组织，警惕虚假宣传。');
INSERT INTO `yang_config` VALUES ('logo', '/Uploads/Public/Uploads/2017-04-21/58f97175857a4.png');
INSERT INTO `yang_config` VALUES ('copyright', 'Copyright 2016-2017 数据库 All Rights Reserved. Powered by 成都百年春网络科技股份有限公司');
INSERT INTO `yang_config` VALUES ('record', '蜀ICP备16021370号-4');
INSERT INTO `yang_config` VALUES ('tel', '123123');
INSERT INTO `yang_config` VALUES ('email', '1639201288');
INSERT INTO `yang_config` VALUES ('qqcode', '2522');
INSERT INTO `yang_config` VALUES ('business_email', '1639201288');
INSERT INTO `yang_config` VALUES ('name', '众泰财富');
INSERT INTO `yang_config` VALUES ('address', '123');
INSERT INTO `yang_config` VALUES ('qq', '4008367667');
INSERT INTO `yang_config` VALUES ('qqqun2', '623059308');
INSERT INTO `yang_config` VALUES ('qqqun3', '623059308');
INSERT INTO `yang_config` VALUES ('qqqun1', '623059308');
INSERT INTO `yang_config` VALUES ('pay_min_money', '300');
INSERT INTO `yang_config` VALUES ('pay_max_money', '1000000');
INSERT INTO `yang_config` VALUES ('pay_fee', '0');
INSERT INTO `yang_config` VALUES ('pay_get_name', '北京亚投科技有限责任公司');
INSERT INTO `yang_config` VALUES ('pay_get_card', '1100 1042 1000 5302 8052');
INSERT INTO `yang_config` VALUES ('pay_get_bank', '中国建设银行北京电子城科技园区支行');
INSERT INTO `yang_config` VALUES ('xnb', 'JMBd');
INSERT INTO `yang_config` VALUES ('xnb_name', '进盟币');
INSERT INTO `yang_config` VALUES ('bili', '0.01');
INSERT INTO `yang_config` VALUES ('weixin', '/Uploads/Public/Uploads/2017-04-19/58f72d1c4c4b4.png');
INSERT INTO `yang_config` VALUES ('weibo', '123123');
INSERT INTO `yang_config` VALUES ('time_limit', '20');
INSERT INTO `yang_config` VALUES ('localhost', 'www.100bi.com');
INSERT INTO `yang_config` VALUES ('worktime', '百币网工作日     9:00-17:00');
INSERT INTO `yang_config` VALUES ('qqqun_url', '<a target=\"_blank\" href=\"//shang.qq.com/wpa/qunwpa?idkey=16bd1976ea5a653b0bbc731e412158bf990e2fffe3a0364ff22a59291fc98a5b\"><img border=\"0\" src=\"//pub.idqqimg.com/wpa/images/group.png\" alt=\"百币网交流群（3群）\" title=\"百币网交流群（3群）\"></a>');
INSERT INTO `yang_config` VALUES ('fee', '');
INSERT INTO `yang_config` VALUES ('CODE_USER_NAME', 'bncwlkj@163.com');
INSERT INTO `yang_config` VALUES ('CODE_USER_PASS', 'bncwlkj888888');
INSERT INTO `yang_config` VALUES ('CODE_NAME', '11');
INSERT INTO `yang_config` VALUES ('', 'friendship_tips');
INSERT INTO `yang_config` VALUES ('', 'risk_warning');
INSERT INTO `yang_config` VALUES ('friendship_tips', '股票交易');
INSERT INTO `yang_config` VALUES ('risk_warning', '<span>股票交易</span>交易具有极高的风险（预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），据国家五部委，众泰<span>股票交易</span>仅为<span>股票交易</span>的爱好者提供一个自由的网上交换平台，对币的投资价值不承担任何审查、担保、赔偿的责任，如果您不能接受，请不要进行交易！谢谢合作！');
INSERT INTO `yang_config` VALUES ('biaoge_url', '/Uploads/Public/Uploads/2016-03-31/新币申请表');
INSERT INTO `yang_config` VALUES ('jiedong_bili', '100');
INSERT INTO `yang_config` VALUES ('withdraw_warning', '<p>\r\n	1. 单笔提现限额100元——5万元；单日累计最大提现限额50万元.\r\n</p>\r\n<p>\r\n	2. 人民币提现处理时间：工作日9：00-16:00，到账时间取决于银行间的处理速度，一般为1-24小时。\r\n</p>');
INSERT INTO `yang_config` VALUES ('invite_rule', '<p>\r\n	邀请规则\r\n</p>');
INSERT INTO `yang_config` VALUES ('tcoin_fee', '0');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_hour', '19');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_minute', '30');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_hour', '8');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_minute', '30');
INSERT INTO `yang_config` VALUES ('zibenfen_bili', '100');
INSERT INTO `yang_config` VALUES ('VAP_rule', '众泰财富交易');
INSERT INTO `yang_config` VALUES ('transaction_false', '500000');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_CURRENCY_ID', '26');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_ONE_RATIO', '100');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_TWO_RATIO', '50');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_STATUS', '1');
INSERT INTO `yang_config` VALUES ('qq2', '2286404143');
INSERT INTO `yang_config` VALUES ('qq3', '');
INSERT INTO `yang_config` VALUES ('qq1', '1639201288');
INSERT INTO `yang_config` VALUES ('FWTK', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;background:#FFFFFF;\">\r\n	<span style=\"background-color:#FFFFFF;\">用户协议</span> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1. 用户点击众泰财财富网注册页面的同意注册按钮并完成注册程序、获得众泰财富财富网账号和密码时，视为用户与众泰财富网已达成《用户协议》，就用户进入众泰财富网使用众泰财富网相应的交易服务达成本协议的全部约定。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2. 众泰财富网及用户均已认真阅读本《用户协议》中全部条款及众泰财富网发布的法律声明和操作规则的内容，对本协议及前述服务条款、法律声明和操作规则均已知晓、理解并接受，同意将其作为确定双方权利义务的依据。众泰财富网《法律声明》为本协议的必要组成部分，本协议内容包括本协议正文以及众泰财富网已经发布的或将来可能发布的各类规则、声明、说明。所有规则、声明、说明为协议不可分割的一部分，与协议正文具有同等法律效力。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3. 本协议不涉及众泰财富网用户与其他用户之间虚拟品类因交易而产生的法律关系及法律纠纷。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>一、定义条款</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.“虚拟品类”指高科技中代替实体货流通的信息流或数据流（包括但不局限于BTC、LTC、YBC等)。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.“众泰财富网”成都百年春网络科技股份有限公司运营和管理的虚拟品类交易平台，域名为www.sha333.com, 成都百年春网络科技股份有限公司通过该网络交易平台为虚拟品类玩家提供进行虚拟品类的网络交易服务。本协议下文中“众泰财富网”既指网络交易平台。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3.“用户”接受并同意本协议全部条款及众泰财富网不时发布和更新的法律条款和操作规则、通过众泰财富网进行虚拟品类交易的众泰财富网注册会员。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4.“用户注册”用户注册是指用户登录众泰财富网，并按要求填写相关信息并确认同意履行相关用户协议的过程。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	5.“虚拟品类交易”用户通过众泰财富网进行的虚拟品类交易活动。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	6.“充值款”用户为购买虚拟品类/出售虚拟品类而向众泰财富网平台预充入的法品类/虚拟品类的款项。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	7.“手续费”用户在众泰财富网达成虚拟品类交易而向众泰财富网支付的交易服务费用。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>二、用户注册</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>1.注册资格</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户承诺：用户具有完全民事权利能力和行为能力，或虽不具有完全民事权利能力和行为能力,但点击同意注册按钮，本网即视为经其法定代理人同意并由其法定代理人代理注册及应用众泰财富网服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>2.注册目的</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户承诺：用户进行用户注册并非出于违反法律法规或破坏众泰财富网虚拟品类交易秩序的目的。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>3.注册流程</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3.1.用户同意根据众泰财富网用户注册页面的要求提供有效电子邮箱等信息，设置众泰财富网账号及密码，用户应确保所提供全部信息的真实性、完整性和准确性。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3.2.用户合法、完整并有效提供注册所需信息的，有权获得众泰财富网账号和密码，众泰财富网账号和密码用于用户在众泰财富网进行会员登录。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3.3.用户获得众泰财富网账号及密码时视为用户注册成功，用户同意接收众泰财富网发送的与众泰财富网网站管理、运营相关的电子邮件和/或短消息。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3.4 用户注册成功后进行虚拟品类交易，应当提供本人的真实身份证号码，进行实名认证。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>三、用户服务</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	众泰财富网为用户通过众泰财富网进行虚拟品类交易活动提供网络交易平台服务。众泰财富网不作为买家或是卖家参与买卖虚拟品类行为本身。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>1.服务内容</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.1.用户有权在众泰财富网浏览虚拟品类实时行情及交易信息、有权通过众泰财富网提交虚拟品类交易指令并完成虚拟品类交易。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.2.用户有权在众泰财富网查看其众泰财富网会员账号下的信息，有权应用众泰财富网提供的功能进行操作。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.3.用户有权按照众泰财富网发布的活动规则参与众泰财富网组织的网站活动。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.4.众泰财富网承诺为用户提供的其他服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>2.服务规则</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户承诺遵守下列众泰财富网服务规则：\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.1.用户应当遵守法律法规、规章、规范性文件及政策要求的规定，保证账户中所有资金和虚拟品类来源的合法性，不得在众泰财富网或利用众泰财富网服务从事非法或其他损害众泰财富网或第三方权益的活动，如发送或接收任何违法、违规、违反公序良俗、侵犯他人权益的信息，发送或接收传销材料或存在其他危害的信息或言论，未经众泰财富网授权使用或伪造众泰财富网电子邮件题头信息等。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.2.用户应当遵守法律法规应当妥善使用和保管其众泰财富网账号及密码、资金密码、和其注册时绑定的手机号码、以及手机接收的手机验证码的安全。用户对使用其众泰财富网账号和密码、资金密码、手机验证码进行的任何操作和后果承担全部责任。当用户发现众泰财富网账号、密码、或资金密码、验证码被未经其授权的第三方使用，或存在其他账号安全问题时，应立即有效通知众泰财富网，要求众泰财富网暂停该众泰财富网账号的服务。众泰财富网有权在合理时间内对用户的该等请求采取行动，但对众泰财富网采取行动前用户已经遭受的损失不承担任何责任。用户在未经众泰财富网同意的情况下不得将聚众泰财富网账号以赠与、借用、租用、转让或其他方式处分给他人。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.3.用户应当遵守众泰财富网不时发布和更新的用户协议以及其他服务条款和操作规则。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>四、虚拟币交易规则</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户承诺在其进入众泰财富网交易，通过众泰财富网与其他用户进行虚拟品类交易的过程中良好遵守如下众泰财富网虚拟品类交易规则。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>1.浏览交易信息</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户在众泰财富网浏览虚拟品类交易信息时，应当仔细阅读交易信息中包含的全部内容，包括但不限于虚拟品类价格、委托量、手续费、买入或卖出方向，用户完全接受交易信息中包含的全部内容后方可点击按钮进行交易。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>2.提交委托</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	在浏览完交易信息确认无误之后用户可以提交交易委托。用户提交交易委托后，即用户授权众泰财富网代理用户进行相应的交易撮合，众泰财富网在有满足用户委托价格的交易时将会自动完成撮合交易而无需提前通知用户。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>3 查看交易明细</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户可以通过管理中心的交易明细中查看相应的成交记录，确认自己的详情交易记录。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>4 撤销/修改委托</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	在委托未达成交易之前，用户有权随时撤销或修改委托。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>五、用户的权利和义务</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1用户有权按照本协议约定接受众泰财富网提供的虚拟品类交易平台服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2 用户有权随时终止使用众泰财富网服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3 用户有权随时提取在众泰财富网的资金余额，包括人民币以及虚拟品类，但需向众泰财富网支付相应的提现手续费用。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4 用户对注册时提供的个人资料的真实性、有效性及安全性负责。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	5用户在众泰财富网进行虚拟品类交易时不得恶意干扰虚拟品类交易的正常进行、破坏交易秩序。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	6用户不得以任何技术手段或其他方式干扰众泰财富网的正常运行或干扰其他用户对众泰财富网服务的使用。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	7如用户因网上交易与其他用户产生诉讼的，不得通过司法或行政以外的途径要求众泰财富网提供相关资料。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	8 用户不得以虚构事实等方式恶意诋毁众泰财富网的商誉。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>六、众泰财富</b><b>网</b><b>的权利和义务</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1如用户不具备本协议约定的注册资格，则众泰财富网有权拒绝用户进行注册，对已注册的用户有权注销其众泰财富网会员账号，众泰财富网因此而遭受损失的有权向前述用户或其法定代理人主张赔偿。同时，众泰财富网保留其他任何情况下决定是否接受用户注册的权利。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2众泰财富网发现账户使用者并非账户初始注册人时，有权中止该账户的使用。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3众泰财富网通过技术检测、人工抽检等检测方式合理怀疑用户提供的信息错误、不实、失效或不完整时，有权通知用户更正、更新信息或中止、终止为其提供众泰财富网服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4众泰财富网有权在发现众泰财富网上显示的任何信息存在明显错误时，对信息予以更正。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	5众泰财富网保留随时修改、中止或终止众泰财富网服务的权利，众泰财富网行使修改或中止服务的权利不需事先告知用户，众泰财富网终止众泰财富网一项或多项服务的，终止自众泰财富网在网站上发布终止公告之日生效。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	6众泰财富网应当采取必要的技术手段和管理措施保障众泰财富网的正常运行，并提供必要、可靠的交易环境和交易服务，维护虚拟品类交易秩序。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	7如用户连续一年未使用众泰财富网会员账号和密码登录众泰财富网，则众泰财富网有权注销用户的众泰财富网账号。账号注销后，众泰财富网有权将相应的会员名开放给其他用户注册使用。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	8众泰财富网通过加强技术投入、提升安全防范等措施保障用户的人民币资金及虚拟品类托管安全，有义务在用户资金出现可以预见的安全风险时提前通知用户。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	9众泰财富网有权在本协议履行期间及本协议终止后保留用户的注册信息及用户应用众泰财富网服务期间的全部交易信息，但不得非法使用该等信息。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>七、特别声明</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	在法律允许的范围内，不论在何种情况下，众泰财富网对由于信息网络设备维护、信息网络连接故障、电脑、通讯或其他系统的故障、电力故障、罢工、劳动争议、暴乱、起义、骚乱、生产力或生产资料不足、火灾、洪水、风暴、爆炸、战争、政府行为、司法行政机关的命令、其他不可抗力或第三方的不作为而造成的不能服务或延迟服务，以及用户因此而遭受的损失不承担责任。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>八、知识产权</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1众泰财富网所包含的全部智力成果包括但不限于网站标志、数据库、网站设计、文字和图表、软件、照片、录像、音乐、声音及其前述组合，软件编译、相关源代码和软件 (包括小应用程序和脚本) 的知识产权权利均归众泰财富网所有。用户不得为商业目的复制、更改、拷贝、发送或使用前述任何材料或内容。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2众泰财富网名称中包含的所有权利 (包括但不限于商誉和商标、标志) 均归成都百年春网络科技股份有限公司所有。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3用户接受本协议即视为用户主动将其在众泰财富网发表的任何形式的信息的著作权，包括但不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利无偿独家转让给众泰财富网所有，众泰财富网有权利就任何主体侵权单独提起诉讼并获得全部赔偿。本协议属于《中华人民共和国著作权法》第二十五条规定的书面协议，其效力及于用户在众泰财富网发布的任何受著作权法保护的作品内容，无论该内容形成于本协议签订前还是本协议签订后。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4 用户在使用众泰财富网服务过程中不得非法使用或处分众泰财富网或他人的知识产权权利。用户不得将已发表于众泰财富网的信息以任何形式发布或授权其它网站（及媒体）使用。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>九、客户服务</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	众泰财富网建立专业的客服团队，并建立完善的客户服务制度，从技术、人员和制度上保障用户提问及投诉渠道的畅通，为用户提供及时的疑难解答与投诉反馈。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十、协议的变更和终止</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.协议的变更：众泰财富网有权随时对本协议内容或众泰财富网发布的其他服务条款及操作规则的内容进行变更，变更时众泰财富网将在众泰财富网站内显著位置发布公告，变更自公告发布之时生效，如用户继续使用众泰财富网提供的服务即视为用户同意该等内容变更，如用户不同意变更后的内容则用户有权注销众泰财富网账户、停止使用众泰财富网网服务。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>2.协议的终止</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.1众泰财富网有权依据本协议约定注销用户的众泰财富网账号，本协议于账号注销之日终止。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.2众泰财富网有权依据本协议约定终止全部众泰财富网服务，本协议于众泰财富网全部服务终止之日终止。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.3.本协议终止后，用户无权要求众泰财富网继续向其提供任何服务或履行任何其他义务，包括但不限于要求众泰财富网为用户保留或向用户披露其原众泰财富网账号中的任何信息，向用户或第三方转发任何其未曾阅读或发送过的信息等。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.4.本协议的终止不影响守约方向违约方追究违约责任。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	十一、<b>隐私权政策</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"background:#FFFFFF;\">\r\n	<b>1.适用范围</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.1.在用户注册众泰财富网账号或者支付账户时，用户根据众泰财富网要求提供的个人注册信息，包括但不限于身份证信息；\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.2.在用户使用众泰财富网服务时，或访问众泰财富网网页时，聚币网自动接收并记录的用户浏览器上的服务器数值，包括但不限于IP地址等数据及用户要求取用的网页记录；\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.3.众泰财富网收集到的用户在或许众泰财富网进行交易的有关数据，包括但不限于出价、购买等记录；\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.4.众泰财富网通过合法途径取得的其他用户个人信息。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>11.2.信息使用</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1.众泰财富网不会向任何人出售或出借用户的个人信息，除非事先得到用户的许可。聚众泰财富网也不允许任何第三方以任何手段收集、编辑、出售或者无偿传播用户的个人信息。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2.众泰财富网对所获得的客户身份资料和交易信息进行保密，不得向任何单位和个人提供客户身份资料和交易信息，法律法规另有规定的除外。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十二、反洗钱</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1众泰财富网遵守和执行《中华人民共和国反洗钱法》的规定，对用户进行身份识别、客户身份资料和交易记录保存制度，以及大额的和可疑交易报告的制度。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2用户注册、挂失交易密码或者资金密码时，应当提供并上传身份证复印件，众泰财富网对用户提供的身份证信息进行识别和比对。众泰财富网有合理的理由怀疑用户使用虚假身份注册时，有权拒绝注册或者注销已经注册的账户。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3众泰财富网参照《金融机构大额交易和可疑交易报告管理办法》的规定，保存大额交易和有洗钱嫌疑的交易记录，在监管机构要求提供大额交易和可疑交易的记录时，向监管机构提供。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4众泰财富网对用户身份信息以及大额交易、可疑交易记录进行保存，依法协助、配合司法机关和行政执法机关打击洗钱活动，依照法律法规的规定协助司法机关、海关、税务等部门查询、冻结和扣划客户存款。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十三、风险提示</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	虚拟品类交易有极高的风险。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1虚拟品类市场是全新的、未经确认的，而且可能不会增长。目前，虚拟品类主要由投机者大量使用，零售和商业市场使用相对较少，因此虚拟品类价格易产生波动，并进而对虚拟品类投资产生不利影响。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2虚拟品类市场没有像中国股市那样的涨跌停限制，同时交易是24小时开放的。虚拟品类由于筹码较少，价格易受到庄家控制，有可能出现一天价格涨几倍的情况，同时也可能出现一天内价格跌去一半的情况。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3参与虚拟品类交易，用户应当自行控制风险，评估虚拟品类投资价值和投资风险，承担损失全部投资的经济风险。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4因国家法律、法规和规范性文件的制定或者修改，导致虚拟品类的交易被暂停、或者禁止的，因此造成的经济损失全部由用户自行承担。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十四、违约责任</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1众泰财富网或用户违反本协议的约定即构成违约，违约方应当向守约方承担违约责任。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2如因用户提供的信息不真实、不完整或不准确给众泰财富网造成损失的，众泰财富网有权要求用户对众泰财富网进行损失的赔偿。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	3如因用户违反法律法规规定或本协议约定，在众泰财富网或利用众泰财富网服务从事非法活动的，众泰财富网有权立即终止继续对其提供众泰财富网服务，注销其账号，并要求其赔偿由此给众泰财富网造成的损失。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	4如用户以技术手段干扰众泰财富网的运行或干扰其他用户对众泰财富网使用的，众泰财富网有权立即注销其众泰财富网账号，并有权要求其赔偿由此给众泰财富网造成的损失。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	5如用户以虚构事实等方式恶意诋毁众泰财富网的商誉，众泰财富网有权要求用户向众泰财富网公开道歉，赔偿其给众泰财富网造成的损失，并有权终止对其提供众泰财富网服务。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十五、争议解决</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	用户与众泰财富网因本协议的履行发生争议的应通过友好协商解决，协商解决不成的，任一方有权将争议提交成都仲裁委员会依据该会仲裁规则进行仲裁。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	<b>十六、生效和解释</b><b></b> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	1本协议于用户点击众泰财富网注册页面的同意注册并完成注册程序、获得众泰财富网账号和密码时生效，对众泰财富网和用户均具有约束力。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0pt;text-indent:0pt;background:#FFFFFF;\">\r\n	2本协议的最终解释权归众泰财富网所有。\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `yang_config` VALUES ('disclaimer', '阿德分手大师');
INSERT INTO `yang_config` VALUES ('EMAIL_USERNAME', 'mail@koumang.com');
INSERT INTO `yang_config` VALUES ('EMAIL_PASSWORD', 'xiaowei7758258');
INSERT INTO `yang_config` VALUES ('EMAIL_HOST', 'smtp.qq.com');
INSERT INTO `yang_config` VALUES ('zhuce_jiangli', '100');
INSERT INTO `yang_config` VALUES ('new_coin_up', '上线申请');
INSERT INTO `yang_config` VALUES ('list_switch', '1');
INSERT INTO `yang_config` VALUES ('reward_start_time', '1484755200');
INSERT INTO `yang_config` VALUES ('reward_end_time', '1529424000');
INSERT INTO `yang_config` VALUES ('list_reward_rule', '活动已结束<u></u>');
INSERT INTO `yang_config` VALUES ('wenxin_tishi', '<span style=\"font-size:14px;\">众泰财富：请控制风险，不要投入超过您风险承受能力的资金，拒绝传销组织，警惕虚假宣传。（买卖有风险，入市需谨慎）。</span>');
INSERT INTO `yang_config` VALUES ('index_logo_footer', '/Uploads/Public/Uploads/2017-04-21/58f9717b4434e.png');
INSERT INTO `yang_config` VALUES ('suggest_email', '400-9665-100');
INSERT INTO `yang_config` VALUES ('qqqun4', '348146971');
INSERT INTO `yang_config` VALUES ('weixin_pay', '/Uploads/Public/Uploads/2017-04-19/58f729c381b32.png');
INSERT INTO `yang_config` VALUES ('huanxun', '0');
INSERT INTO `yang_config` VALUES ('rengong', '1');
INSERT INTO `yang_config` VALUES ('huanxun_fee', '0');
INSERT INTO `yang_config` VALUES ('renmin_fill', '<p>\r\n	1.人工充值需人工处理,在工作日2小时内到账。为了你的资金实时到账，节假日期间请选择在线充值。\r\n</p>\r\n<p>\r\n	2、人工充值您需先填写汇款金额和账号并提交订单，然后向我们指定的银行账号汇款。\r\n</p>');
INSERT INTO `yang_config` VALUES ('btc_address', '');
INSERT INTO `yang_config` VALUES ('STR_PHONE1', '18482177098 ');
INSERT INTO `yang_config` VALUES ('STR_PHONE2', '95555');
INSERT INTO `yang_config` VALUES ('STR_secret', 'FillMoney');
INSERT INTO `yang_config` VALUES ('Preg_match1', '/账户(.*?)存入￥(.*?)元，(.*?)。(.*?)支付宝转账。【(.*?)】/');
INSERT INTO `yang_config` VALUES ('Preg_match2', '/您账户(.*?)人民币(.*?)，(.*?)，付方(.*?)[，|\\[](.*?)]/');
INSERT INTO `yang_config` VALUES ('bank_min_money', '100');
INSERT INTO `yang_config` VALUES ('huanxun_min_money', '100');
INSERT INTO `yang_config` VALUES ('jiaoyitishi', '1');
INSERT INTO `yang_config` VALUES ('souyexiaoxi', '<p>\r\n	<br />\r\n</p>');

-- ----------------------------
-- Table structure for `yang_currency`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency`;
CREATE TABLE `yang_currency` (
  `currency_id` int(32) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(32) NOT NULL COMMENT '货币名称',
  `currency_logo` varchar(255) NOT NULL COMMENT '货币logo',
  `currency_mark` varchar(32) NOT NULL COMMENT '英文标识',
  `currency_unit` varchar(25) DEFAULT NULL COMMENT '单位',
  `currency_content` text NOT NULL,
  `currency_all_money` decimal(40,2) NOT NULL COMMENT '总市值',
  `currency_all_num` decimal(40,2) DEFAULT '0.00' COMMENT '币总数量',
  `currency_buy_fee` float(64,2) NOT NULL COMMENT '买入手续费',
  `currency_sell_fee` float(64,4) NOT NULL COMMENT '卖出手续费',
  `currency_url` varchar(128) NOT NULL COMMENT '该币种的链接地址',
  `trade_currency_id` int(10) NOT NULL DEFAULT '1' COMMENT '可以进行交易的币种',
  `is_line` tinyint(4) NOT NULL DEFAULT '0',
  `is_lock` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否交易 0 是交易许可 1是交易不许可',
  `port_number` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rpc_url` varchar(255) NOT NULL COMMENT 'rpc路径',
  `rpc_pwd` varchar(255) NOT NULL COMMENT 'rpc密码',
  `rpc_user` varchar(255) NOT NULL COMMENT 'rpc账号（用户名）',
  `currency_all_tibi` int(10) NOT NULL DEFAULT '0' COMMENT '最大提币额',
  `detail_url` varchar(64) NOT NULL COMMENT '详情跳转链接',
  `qianbao_url` varchar(64) NOT NULL COMMENT '钱包储存路径',
  `qianbao_key` varchar(64) NOT NULL COMMENT '钱包密钥',
  `price_up` float(64,4) NOT NULL COMMENT '涨停',
  `price_down` float(64,4) NOT NULL COMMENT '跌停',
  `sort` int(10) NOT NULL DEFAULT '0',
  `currency_digit_num` int(10) NOT NULL COMMENT '限制位数',
  `guanwang_url` varchar(128) DEFAULT NULL,
  `currency_fee_reward` int(5) NOT NULL DEFAULT '0' COMMENT '给上级的奖励百分比',
  `start_time_h` tinyint(2) DEFAULT NULL,
  `start_time_m` tinyint(2) DEFAULT NULL,
  `end_time_h` tinyint(2) DEFAULT NULL,
  `end_time_m` tinyint(2) DEFAULT NULL,
  `start_time_x_h` tinyint(2) DEFAULT NULL,
  `start_time_x_m` tinyint(2) DEFAULT NULL,
  `end_time_x_m` tinyint(2) DEFAULT NULL,
  `end_time_x_h` tinyint(2) DEFAULT NULL,
  `is_lock_6` tinyint(2) DEFAULT NULL,
  `is_lock_7` tinyint(2) DEFAULT NULL,
  `currency_day_times` int(3) DEFAULT NULL,
  `currency_limit` int(11) DEFAULT NULL,
  `rpc_user1` varchar(255) NOT NULL,
  `rpc_pwd1` varchar(255) NOT NULL,
  `rpc_url1` varchar(255) NOT NULL,
  `port_number1` varchar(255) NOT NULL,
  `price` decimal(20,2) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`currency_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_mark` (`currency_mark`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency
-- ----------------------------
INSERT INTO `yang_currency` VALUES ('25', '币种1', '/Uploads/Public/Uploads/2017-04-05/58e4e434b55b8.png', '100001', 'M', '元宝币元宝币元宝币元宝币', '2147483648.00', '1000000000.00', '0.00', '0.0000', '', '0', '1', '0', '0', '1493798297', '0', '', '', '', '10001', 'https://www.100bi.com/Home/Art/details/id/342.html', '/Uploads/Public/Uploads/2017-02-27/58b3a1b85c074.rar', '', '10.0000', '10.0000', '1', '2', 'http://www.mingxingcoin.com', '0', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', '3', '5000', 'MXI123', 'MXI321', '139.196.4.27', '29992', '1.00');
INSERT INTO `yang_currency` VALUES ('26', '币种2', '/Uploads/Public/Uploads/2017-04-05/58e4e46379b26.png', '100002', 'B', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa', '5000000000.00', '500000000.00', '0.00', '0.0000', '', '0', '1', '0', '29998', '1493451522', '0', '139.196.38.250', 'bntb321', 'bntb123', '10', 'https://www.100bi.com/Home/Art/details/id/343.html', '/Uploads/Public/Uploads/2017-01-16/587c91ff6111a.rar', '', '10.0000', '10.0000', '2', '2', 'http://www.bntbcoin.org', '0', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', '3', '5', 'bntb123', 'bntb321', '139.196.4.27', '29998', '2.00');
INSERT INTO `yang_currency` VALUES ('33', '币种3', '/Uploads/Public/Uploads/2017-04-05/58e4e4810ea7a.png', '100003', 'Y', '', '0.00', '1000000000.00', '0.00', '0.0000', '', '0', '1', '0', '29993', '1493780910', '0', '139.196.38.250', 'ysc321', 'ysc123', '10', 'https://www.100bi.com/Home/Art/details/id/344.html', '/Uploads/Public/Uploads/2017-01-19/58807cbd0220d.rar', '', '10.0000', '10.0000', '3', '2', 'http://www.ysbi.org', '0', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', '4', '5', 'ysc123', 'ysc321', '139.196.4.27', '29993', '1.00');
INSERT INTO `yang_currency` VALUES ('34', '币种4', '/Uploads/Public/Uploads/2017-01-18/587f323e2b7bb.png', '100004', 'M', '', '0.00', '1000000000.00', '0.00', '0.0000', '', '0', '1', '0', '0', '1493451546', '0', '', '', '', '500000000', 'https://www.100bi.com/Home/Art/details/id/367.html', '/Uploads/Public/Uploads/2017-03-25/58d60d55166ab.rar', '', '10.0000', '10.0000', '5', '2', 'http://www.houcoin.com', '0', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', '22', '500000000', 'MC123', 'MC321', '139.196.4.17', '29994', '2.88');
INSERT INTO `yang_currency` VALUES ('28', '币种5', '/Uploads/Public/Uploads/2017-01-17/587ddb96153a6.png', '000005', '฿', '比特币比特币比特币', '0.00', '21000000.00', '0.20', '0.2000', '', '0', '0', '1', '29992', '1486986465', '0', '47.89.49.145', '123456', 'green', '3', '', '/Uploads/Public/Uploads/2017-01-16/587c91b05ff67.rar', '', '10.0000', '10.0000', '4', '2', '', '50', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', null, null, '', '', '', '', '1.00');
INSERT INTO `yang_currency` VALUES ('32', '币种6', '/Uploads/Public/Uploads/2017-03-21/58d0d3ef628df.png', '100005', 'G', '', '0.00', '680000000.00', '0.00', '0.0000', '', '0', '1', '0', '30000', '1493451569', '0', '139.196.38.250', 'gcc123456', 'gcccoin', '2', 'http://100bi.com/Home/Art/details/id/376.html', '/Uploads/Public/Uploads/2017-03-25/58d5f29ac9cfa.zip', '', '10.0000', '10.0000', '5', '2', 'http://www.goldcoin.biz/', '1000', '9', '0', '11', '0', '13', '0', '0', '20', '0', '0', '3', '1', 'gcccoin', 'gcc123456', '139.196.4.27', '30000', '1.88');

-- ----------------------------
-- Table structure for `yang_currency_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_comment`;
CREATE TABLE `yang_currency_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种评论表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_concern`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_concern`;
CREATE TABLE `yang_currency_concern` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种关注表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_concern
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_pic`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_pic`;
CREATE TABLE `yang_currency_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种详情图片',
  `currency_id` int(11) NOT NULL,
  `pic` varchar(128) NOT NULL COMMENT '图片路径',
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_pic
-- ----------------------------
INSERT INTO `yang_currency_pic` VALUES ('1', '25', '/Uploads/Public/Uploads/2016-03-29/56f9eacacdfe6.jpg', '1459219262', '0');
INSERT INTO `yang_currency_pic` VALUES ('2', '25', '/Uploads/Public/Uploads/2016-03-29/56f9ead02625a.jpg', '1459219263', '0');

-- ----------------------------
-- Table structure for `yang_currency_user`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_user`;
CREATE TABLE `yang_currency_user` (
  `cu_id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `num` decimal(40,2) NOT NULL COMMENT '数量',
  `forzen_num` decimal(40,2) NOT NULL COMMENT '冻结数量',
  `status` tinyint(4) NOT NULL,
  `chongzhi_url` varchar(128) NOT NULL COMMENT '钱包充值地址',
  PRIMARY KEY (`cu_id`),
  KEY `member_id_2` (`member_id`,`currency_id`),
  KEY `cu_id` (`cu_id`,`member_id`,`currency_id`,`num`,`forzen_num`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=41404 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_currency_user
-- ----------------------------
INSERT INTO `yang_currency_user` VALUES ('41349', '141', '25', '1000000.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41350', '141', '26', '1000000.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41351', '141', '33', '1000000.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41352', '141', '34', '1000000.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41353', '141', '32', '1000000.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41354', '142', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41355', '142', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41356', '142', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41357', '142', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41358', '142', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41359', '143', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41360', '143', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41361', '143', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41362', '143', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41363', '143', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41364', '144', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41365', '144', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41366', '144', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41367', '144', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41368', '144', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41369', '145', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41370', '145', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41371', '145', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41372', '145', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41373', '145', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41374', '146', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41375', '146', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41376', '146', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41377', '146', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41378', '146', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41379', '147', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41380', '147', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41381', '147', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41382', '147', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41383', '147', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41384', '148', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41385', '148', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41386', '148', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41387', '148', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41388', '148', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41389', '149', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41390', '149', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41391', '149', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41392', '149', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41393', '149', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41394', '150', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41395', '150', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41396', '150', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41397', '150', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41398', '150', '32', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41399', '151', '25', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41400', '151', '26', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41401', '151', '33', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41402', '151', '34', '0.00', '0.00', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41403', '151', '32', '0.00', '0.00', '0', '');

-- ----------------------------
-- Table structure for `yang_currency_voted`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_voted`;
CREATE TABLE `yang_currency_voted` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种投票表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_voted
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_dividend_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_dividend_config`;
CREATE TABLE `yang_dividend_config` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_dividend_config
-- ----------------------------
INSERT INTO `yang_dividend_config` VALUES ('dividend_id', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num1', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num2', '50', '0');
INSERT INTO `yang_dividend_config` VALUES ('num3', '100', '0');
INSERT INTO `yang_dividend_config` VALUES ('num4', '150', '0');
INSERT INTO `yang_dividend_config` VALUES ('money1', '1', '0');
INSERT INTO `yang_dividend_config` VALUES ('money2', '2000', '0');
INSERT INTO `yang_dividend_config` VALUES ('money3', '3000', '0');

-- ----------------------------
-- Table structure for `yang_entrust`
-- ----------------------------
DROP TABLE IF EXISTS `yang_entrust`;
CREATE TABLE `yang_entrust` (
  `entrust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '委托记录表（委托管理）',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `all_num` decimal(10,4) NOT NULL COMMENT '总数量',
  `surplus_num` decimal(10,4) NOT NULL COMMENT '剩余数量',
  `price` decimal(10,2) NOT NULL COMMENT '实际价格(卖出价格）',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `type` tinyint(4) NOT NULL COMMENT '类型 卖出单1 还是买入单2',
  `on_price` decimal(10,2) NOT NULL COMMENT '委托价格(挂单价格全价格 卖出价格是扣除手续费的）',
  `fee` decimal(10,2) NOT NULL COMMENT '手续费比例',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`entrust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_entrust
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_examine_pwdtrade`
-- ----------------------------
DROP TABLE IF EXISTS `yang_examine_pwdtrade`;
CREATE TABLE `yang_examine_pwdtrade` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `u_id` int(32) NOT NULL COMMENT '用户ID',
  `pwdtrade` varchar(64) NOT NULL COMMENT '修改支付密码',
  `idcard` varchar(20) NOT NULL COMMENT '身份证号',
  `idcardPositive` varchar(64) NOT NULL COMMENT '身份证正面',
  `idcardSide` varchar(64) NOT NULL COMMENT '身份证反面',
  `idcardHold` varchar(64) NOT NULL COMMENT '手持身份证',
  `add_time` int(32) NOT NULL COMMENT '添加时间',
  `examine_time` int(32) NOT NULL COMMENT '审核通过时间',
  `examine_name` varchar(32) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未审核1通过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_examine_pwdtrade
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_fill`
-- ----------------------------
DROP TABLE IF EXISTS `yang_fill`;
CREATE TABLE `yang_fill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `num` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank` int(5) NOT NULL,
  `banknum` varchar(36) NOT NULL,
  `uname` varchar(36) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `bankname` varchar(36) NOT NULL,
  `ctime` int(11) NOT NULL,
  `random` int(10) NOT NULL,
  `tradeno` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL COMMENT '1:网上支付 2：支付宝手动',
  `fee` float(30,2) NOT NULL COMMENT '充值手续费',
  `actual` decimal(20,2) NOT NULL COMMENT '实际到账',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_fill
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance`;
CREATE TABLE `yang_finance` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=157107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_0`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_0`;
CREATE TABLE `yang_finance_0` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=158963 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_0
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_1`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_1`;
CREATE TABLE `yang_finance_1` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=224844 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_1
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_2`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_2`;
CREATE TABLE `yang_finance_2` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=157142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_2
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_3`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_3`;
CREATE TABLE `yang_finance_3` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=158133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_3
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_4`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_4`;
CREATE TABLE `yang_finance_4` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=183677 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_4
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_5`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_5`;
CREATE TABLE `yang_finance_5` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=159350 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_5
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_6`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_6`;
CREATE TABLE `yang_finance_6` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_6
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_7`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_7`;
CREATE TABLE `yang_finance_7` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=157121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_7
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_8`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_8`;
CREATE TABLE `yang_finance_8` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=157103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_8
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_9`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_9`;
CREATE TABLE `yang_finance_9` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,4) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=158370 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_9
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_finance_type`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_type`;
CREATE TABLE `yang_finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_type
-- ----------------------------
INSERT INTO `yang_finance_type` VALUES ('1', '会员升级', '1');
INSERT INTO `yang_finance_type` VALUES ('3', '管理员充值', '1');
INSERT INTO `yang_finance_type` VALUES ('4', '管理员扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('5', '升级会员', '1');
INSERT INTO `yang_finance_type` VALUES ('6', '充值', '1');
INSERT INTO `yang_finance_type` VALUES ('8', '众筹扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('9', '众筹获取', '1');
INSERT INTO `yang_finance_type` VALUES ('10', '分红奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('11', '交易手续费', '1');
INSERT INTO `yang_finance_type` VALUES ('12', '推荐奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('13', '分红股奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('23', '提现', '1');
INSERT INTO `yang_finance_type` VALUES ('24', '下级交易奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('25', '推广奖励', '0');

-- ----------------------------
-- Table structure for `yang_findpwd`
-- ----------------------------
DROP TABLE IF EXISTS `yang_findpwd`;
CREATE TABLE `yang_findpwd` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL,
  `token` varchar(100) NOT NULL,
  `add_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_findpwd
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_flash`
-- ----------------------------
DROP TABLE IF EXISTS `yang_flash`;
CREATE TABLE `yang_flash` (
  `flash_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `pic` varchar(128) NOT NULL,
  `jump_url` varchar(128) NOT NULL COMMENT '跳转地址',
  `sort` int(16) NOT NULL COMMENT '排序',
  `type` varchar(16) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`flash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_flash
-- ----------------------------
INSERT INTO `yang_flash` VALUES ('10', '123', '/Uploads/Public/Uploads/2017-05-04/590a8a1fa2d70.jpg', '', '0', '', '1493862943', '0');
INSERT INTO `yang_flash` VALUES ('11', 'G积分', '/Uploads/Public/Uploads/2017-05-04/590a8a3a4fdec.jpg', 'https://www.100bi.com/Home/Orders/index/currency/G.html', '1', '', '1493862970', '0');

-- ----------------------------
-- Table structure for `yang_follow`
-- ----------------------------
DROP TABLE IF EXISTS `yang_follow`;
CREATE TABLE `yang_follow` (
  `follow_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '关注表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `uid` int(32) NOT NULL COMMENT '关注人id',
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`follow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_issue`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue`;
CREATE TABLE `yang_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '众筹表',
  `currency_id` int(11) NOT NULL,
  `num` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行数量',
  `price` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行价格',
  `deal` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '剩余数量',
  `ctime` varchar(32) NOT NULL COMMENT '添加时间',
  `money` decimal(32,2) NOT NULL COMMENT '总金额',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `min_limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '最低购买',
  `limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '限购数量',
  `limit_count` int(32) NOT NULL DEFAULT '1' COMMENT '限购次数',
  `title` varchar(32) NOT NULL,
  `info` text NOT NULL,
  `url1` varchar(64) NOT NULL,
  `url2` varchar(64) NOT NULL,
  `wenjian_url` varchar(64) NOT NULL COMMENT '上传文件路径',
  `num_nosell` decimal(64,0) NOT NULL,
  `add_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `zhongchou_success_bili` decimal(20,4) NOT NULL COMMENT '众筹成功比例',
  `buy_currency_id` int(11) NOT NULL,
  `is_forzen` tinyint(4) NOT NULL COMMENT '0冻结1是可用',
  `remove_forzen_bili` tinyint(4) NOT NULL,
  `remove_forzen_cycle` int(20) NOT NULL COMMENT 's解冻周期',
  `zc_awards_currency_id` varchar(32) NOT NULL,
  `zc_awards_one_ratio` varchar(32) NOT NULL,
  `zc_awards_two_ratio` varchar(32) NOT NULL,
  `zc_awards_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_issue
-- ----------------------------
INSERT INTO `yang_issue` VALUES ('19', '25', '1000000.000', '10.000', '999990.000', '1498884106', '0.00', '1', '10.00', '10.00', '1', 'test', '我是认购介绍', '', '', '', '10', '1498884087', '1501476089', '0.5000', '0', '0', '0', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for `yang_issue_log`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue_log`;
CREATE TABLE `yang_issue_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '认筹日志表',
  `iid` int(11) NOT NULL COMMENT '认筹表id',
  `uid` int(11) NOT NULL,
  `num` decimal(32,0) NOT NULL,
  `price` decimal(32,3) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `buy_currency_id` int(11) NOT NULL,
  `deal` decimal(32,0) NOT NULL COMMENT '冻结剩余量',
  `cid` int(32) NOT NULL,
  `remove_forzen_bili` int(8) NOT NULL,
  `remove_forzen_cycle` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_issue_log
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_link`
-- ----------------------------
DROP TABLE IF EXISTS `yang_link`;
CREATE TABLE `yang_link` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `tupian` varchar(125) NOT NULL,
  `url` varchar(125) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_link
-- ----------------------------
INSERT INTO `yang_link` VALUES ('1', '百币网', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.100bi.com', '1', '1492582823');
INSERT INTO `yang_link` VALUES ('3', '聚币网', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.jubi.com/', '1', '1484624288');
INSERT INTO `yang_link` VALUES ('6', '比特币中国', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'http://www.btcchina.com/', '1', '1484624426');
INSERT INTO `yang_link` VALUES ('7', '元宝网', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.yuanbao.com', '1', '1484624449');
INSERT INTO `yang_link` VALUES ('8', '币行', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'http://www.okcoin.cn/', '1', '1484624414');
INSERT INTO `yang_link` VALUES ('9', 'BTC100', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.btc100.com', '1', '1484624443');
INSERT INTO `yang_link` VALUES ('10', '火币', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.huobi.com', '1', '1484624435');
INSERT INTO `yang_link` VALUES ('11', '19800', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'http://19800.com/', '1', '1484618173');
INSERT INTO `yang_link` VALUES ('12', '比特币交易网', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.btctrade.com', '1', '1484624395');
INSERT INTO `yang_link` VALUES ('13', '比特币资讯网', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.bitcoin86.com', '1', '1484624400');
INSERT INTO `yang_link` VALUES ('14', '亚洲区块链基金会', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'https://asiablockchainfoundation.org//', '1', '1484624386');
INSERT INTO `yang_link` VALUES ('15', '币看', '/Uploads/Public/Uploads/2017-04-19/58f701a7e8b25.png', 'www.bitkan.com', '1', '1484624406');

-- ----------------------------
-- Table structure for `yang_member`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member`;
CREATE TABLE `yang_member` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) NOT NULL,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `pid` varchar(64) NOT NULL COMMENT '邀请人',
  `pwdtrade` varchar(64) NOT NULL COMMENT '支付密码',
  `nick` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `name` varchar(32) NOT NULL COMMENT '真实姓名',
  `cardtype` varchar(4) NOT NULL DEFAULT '1' COMMENT '1=身份证2=护照',
  `idcard` varchar(20) NOT NULL COMMENT '身份证',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `ip` varchar(64) NOT NULL COMMENT '注册IP',
  `reg_time` int(32) NOT NULL COMMENT '注册时间',
  `login_ip` varchar(64) NOT NULL COMMENT '本次登录IP',
  `login_time` int(10) NOT NULL COMMENT '登录时间',
  `vip_level` int(10) NOT NULL COMMENT 'vip等级',
  `vip_end_time` int(10) NOT NULL COMMENT 'vip到期时间',
  `rmb` decimal(20,2) NOT NULL COMMENT '人民币',
  `forzen_rmb` decimal(20,2) NOT NULL COMMENT 'forzen_rmb',
  `head` varchar(64) NOT NULL COMMENT 'head',
  `profile` text NOT NULL COMMENT '个人简介',
  `province` int(10) NOT NULL COMMENT '省市',
  `city` int(10) NOT NULL COMMENT '城市',
  `job` varchar(64) NOT NULL COMMENT '职位/头衔',
  `is_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0是正常 1是锁定',
  `status` tinyint(4) NOT NULL COMMENT '0=有效未填写个人信息1=有效并且填写完个人信息2=无效',
  `dividend_num` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `threepwd` varchar(64) DEFAULT '',
  `user_id_P` varchar(64) DEFAULT NULL COMMENT '正面照',
  `user_id_N` varchar(64) DEFAULT NULL COMMENT '反面照',
  `user_id_S` varchar(64) DEFAULT NULL COMMENT '手持照',
  PRIMARY KEY (`member_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member
-- ----------------------------
INSERT INTO `yang_member` VALUES ('141', '', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1498881870', '0', '0', '0.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('142', '', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234276', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('143', '', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234284', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('144', '', 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234291', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('145', '', 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234296', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('146', '', 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234301', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('147', '', 'admin7', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234309', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('148', '', 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234315', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('149', '', 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234325', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('150', '', 'admin10', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '158832514', '110.184.21.250', '1484897970', '', '1494234331', '0', '0', '100000.00', '0.00', '', '', '0', '0', '', '0', '1', '0.0000', '', null, null, null);
INSERT INTO `yang_member` VALUES ('151', '', 'nibeixudao', 'fa9b5ec55962c97b617ae3bc58229fe1', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '', '127.0.0.1', '1498882675', '', '0', '0', '0', '0.00', '0.00', '', '', '0', '0', '', '0', '0', '0.0000', '', null, null, null);

-- ----------------------------
-- Table structure for `yang_member_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_comment`;
CREATE TABLE `yang_member_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `comment` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_member_old`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_old`;
CREATE TABLE `yang_member_old` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `paypwd` varchar(64) NOT NULL COMMENT '邀请人',
  `nike` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `document_type` tinyint(4) NOT NULL,
  `document_num` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `reg_time` int(32) NOT NULL,
  `login_time` int(10) NOT NULL,
  `vip_level` int(10) NOT NULL,
  `vip_end_time` int(10) NOT NULL,
  `rmb` decimal(10,2) NOT NULL,
  `forzen_rmb` decimal(10,2) NOT NULL,
  `head` varchar(64) NOT NULL,
  `profile` text NOT NULL,
  `city` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_old
-- ----------------------------
INSERT INTO `yang_member_old` VALUES ('1', 'admin@qq.com', '', '', '', '', '0', '', '', '0', '0', '0', '0', '0.00', '0.00', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `yang_message`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message`;
CREATE TABLE `yang_message` (
  `message_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `member_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `message_all_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_message_all`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_all`;
CREATE TABLE `yang_message_all` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `u_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_all
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_message_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_category`;
CREATE TABLE `yang_message_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_category
-- ----------------------------
INSERT INTO `yang_message_category` VALUES ('-2', '个人信息');
INSERT INTO `yang_message_category` VALUES ('4', '系统消息');
INSERT INTO `yang_message_category` VALUES ('-1', '系统公告');

-- ----------------------------
-- Table structure for `yang_nav`
-- ----------------------------
DROP TABLE IF EXISTS `yang_nav`;
CREATE TABLE `yang_nav` (
  `nav_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '权限表',
  `nav_name` varchar(32) NOT NULL COMMENT '列表名称',
  `nav_e` varchar(32) NOT NULL COMMENT '英文标识',
  `nav_url` varchar(64) NOT NULL COMMENT 'url路径',
  `cat_id` varchar(32) NOT NULL COMMENT '类别',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_nav
-- ----------------------------
INSERT INTO `yang_nav` VALUES ('1', '系统设置', '&#xe642;', '/Config/index', 'sys');
INSERT INTO `yang_nav` VALUES ('2', '幻灯管理', '&#xf002c;', '/Flash/index', 'common');
INSERT INTO `yang_nav` VALUES ('3', '股票管理', '&#xe756;', '/Currency/index', 'wallet');
INSERT INTO `yang_nav` VALUES ('4', '官方公告管理', '&#xe6f7;', '/Art/index/article_category_id/1', 'article');
INSERT INTO `yang_nav` VALUES ('6', '友情链接', '&#xe602;', '/Link/index', 'common');
INSERT INTO `yang_nav` VALUES ('7', '会员列表', '&#x3434;', '/Member/index', 'user');
INSERT INTO `yang_nav` VALUES ('8', '添加会员', '&#xe62f;', '/Member/addMember', 'user');
INSERT INTO `yang_nav` VALUES ('15', '提现审核', '&#xe6a7;', '/Pending/index', 'finance');
INSERT INTO `yang_nav` VALUES ('9', '系统消息', '&#xe627;', '/Message/index', 'user');
INSERT INTO `yang_nav` VALUES ('71', '媒体公告', '&#xe6f7;', '/Art/index/article_category_id/3', 'article');
INSERT INTO `yang_nav` VALUES ('11', '人工充值管理', '&#xe61e;', '/Pay/payByMan', 'finance');
INSERT INTO `yang_nav` VALUES ('12', '财务日志', '&#xe659;', '/Finance/index', 'finance');
INSERT INTO `yang_nav` VALUES ('65', '推荐奖励设置', '&#xe6f7;', '/Reward/index', 'sys');
INSERT INTO `yang_nav` VALUES ('66', '推荐奖励设置', '&#xe6f7;', '/Reward/index', 'sys');
INSERT INTO `yang_nav` VALUES ('17', '委托记录', '&#xecf6;', '/Trade/orders', 'trade');
INSERT INTO `yang_nav` VALUES ('16', '交易记录', '&#xe608;', '/Trade/trade', 'trade');
INSERT INTO `yang_nav` VALUES ('27', '信息设置', '&#xe642;', '/Config/information', 'sys');
INSERT INTO `yang_nav` VALUES ('28', '财务设置', '&#xe61d;', '/Config/finance', 'sys');
INSERT INTO `yang_nav` VALUES ('29', '客服设置', '&#xe77f;', '/Config/customerService', 'sys');
INSERT INTO `yang_nav` VALUES ('30', '短信邮箱设置', '&#xe6ef;', '/Config/shortMessage', 'sys');
INSERT INTO `yang_nav` VALUES ('18', '全站统计信息', '&#xe73e;', '/Index/infoStatistics', 'common');
INSERT INTO `yang_nav` VALUES ('44', '下载管理', '&#xe601;', '/Download/index', 'wallet');
INSERT INTO `yang_nav` VALUES ('41', '管理员管理', '&#xe64d;', '/Manage/index', 'admin');
INSERT INTO `yang_nav` VALUES ('52', '财务明细', '&#xe73e;', '/Finance/count', 'finance');
INSERT INTO `yang_nav` VALUES ('67', '推荐奖励设置', '&#xe73e;', '/Reward/index', 'sys');
INSERT INTO `yang_nav` VALUES ('45', '管理员充值管理', '&#xe61e;', '/Pay/admRecharge', 'finance');
INSERT INTO `yang_nav` VALUES ('46', '后台入口配置管理', '&#xe642;', '/Fileconfigoperation/saveEntrance', 'sys');
INSERT INTO `yang_nav` VALUES ('47', '数据库配置管理', '&#xe642;', '/Fileconfigoperation/saveDb', 'sys');
INSERT INTO `yang_nav` VALUES ('49', '市场动态管理', '&#xe6f7;', '/Art/index/article_category_id/2', 'article');
INSERT INTO `yang_nav` VALUES ('50', '帮助中心管理', '&#xe6f7;', '/Art/helpindex/article_category_id/6', 'article');
INSERT INTO `yang_nav` VALUES ('51', '团队信息管理', '&#xe6f7;', '/Art/index/article_category_id/7', 'article');
INSERT INTO `yang_nav` VALUES ('56', '第三方充值记录', '&#xe6f7;', '/Pay/fill', 'huanxun');
INSERT INTO `yang_nav` VALUES ('72', '充值银行账户', '&#xe6f7;', '/Websitebank/index', 'bank');
INSERT INTO `yang_nav` VALUES ('73', '货币详情', '&#xe6f7;', '/Art/index/article_category_id/5', 'article');
INSERT INTO `yang_nav` VALUES ('104', '众筹管理', '&#xe6f7;', '/Zhongchou/index', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('105', '众筹记录', '&#xe6f7;', '/Zhongchou/log', 'zhongchou');

-- ----------------------------
-- Table structure for `yang_orders`
-- ----------------------------
DROP TABLE IF EXISTS `yang_orders`;
CREATE TABLE `yang_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `currency_id` int(10) NOT NULL COMMENT '主币种ID',
  `currency_trade_id` int(10) NOT NULL COMMENT '对应交易币种ID',
  `price` decimal(30,2) NOT NULL DEFAULT '0.00',
  `num` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '挂单数量',
  `trade_num` decimal(20,2) NOT NULL COMMENT '成交数量',
  `fee` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '记录的是比例',
  `type` char(4) NOT NULL DEFAULT '0' COMMENT 'buy sell',
  `add_time` int(10) NOT NULL,
  `trade_time` int(10) NOT NULL COMMENT '成交时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0是挂单，1是部分成交,2成交， -1撤销',
  PRIMARY KEY (`orders_id`),
  KEY `add_time` (`add_time`),
  KEY `cid` (`currency_id`),
  KEY `id` (`orders_id`),
  KEY `member_id` (`member_id`),
  KEY `trade_id` (`currency_trade_id`),
  KEY `member_id_2` (`member_id`,`currency_id`,`currency_trade_id`,`price`,`num`,`trade_num`,`type`,`status`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `currency_trade_id` (`currency_trade_id`),
  KEY `currency_id` (`currency_id`,`type`,`add_time`) USING BTREE,
  KEY `price` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_pay`
-- ----------------------------
DROP TABLE IF EXISTS `yang_pay`;
CREATE TABLE `yang_pay` (
  `pay_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '充值表',
  `member_name` varchar(32) NOT NULL COMMENT '汇款人',
  `add_time` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `account` varchar(128) NOT NULL COMMENT '汇出银行账号',
  `type` int(4) NOT NULL COMMENT '1是银行   2是支付宝 ,3管理员充值',
  `money` float(60,2) NOT NULL COMMENT '要充值钱数',
  `count` float(64,4) NOT NULL COMMENT '总量，等于充值数+手续费',
  `currency_id` int(32) DEFAULT '0',
  `member_id` varchar(32) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_pay
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_payment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_payment`;
CREATE TABLE `yang_payment` (
  `payment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `type` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pay_no` varchar(32) NOT NULL,
  `add_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_position`
-- ----------------------------
DROP TABLE IF EXISTS `yang_position`;
CREATE TABLE `yang_position` (
  `position_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(128) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_position
-- ----------------------------
INSERT INTO `yang_position` VALUES ('1', '首页左侧导航banner');

-- ----------------------------
-- Table structure for `yang_qianbao_address`
-- ----------------------------
DROP TABLE IF EXISTS `yang_qianbao_address`;
CREATE TABLE `yang_qianbao_address` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `qianbao_url` varchar(128) NOT NULL COMMENT '钱包地址',
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=536 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_qianbao_address
-- ----------------------------
INSERT INTO `yang_qianbao_address` VALUES ('17', '163', '张姐', 'bMft88L4C4iMcwQp68i71NdF9gf7c1yin1', '-3', '1485050816', '26');
INSERT INTO `yang_qianbao_address` VALUES ('18', '160', '李敏的地址', 'bXmUCTe65ueSC8S5Jiwp3RFJki8UEBbjom', '-3', '1485051786', '26');
INSERT INTO `yang_qianbao_address` VALUES ('19', '187', '翟双侠', 'bY21SckU3u6Bei5tnA1ZKvrv1Ju14TuDgA', '1', '1485091453', '26');
INSERT INTO `yang_qianbao_address` VALUES ('20', '290', '03', 'bbKFzq5Z5LfJEPgr7cQvGe1ksSuRKmJLdT', '1', '1485103966', '26');
INSERT INTO `yang_qianbao_address` VALUES ('21', '352', '1', 'bGWFy9iyooH5x5V8t7zPxJoBD1GUfJT3nQ', '1', '1485105976', '26');
INSERT INTO `yang_qianbao_address` VALUES ('22', '370', '1', 'bGWFy9iyooH5x5V8t7zPxJoBD1GUfJT3nQ', '1', '1485107189', '26');
INSERT INTO `yang_qianbao_address` VALUES ('23', '353', '1', 'bGWFy9iyooH5x5V8t7zPxJoBD1GUfJT3nQ', '1', '1485107321', '26');
INSERT INTO `yang_qianbao_address` VALUES ('24', '250', '李锋', 'bJDj76nyvixVxAqigui37UZ6ohnRneMvcA ', '1', '1485228842', '26');
INSERT INTO `yang_qianbao_address` VALUES ('25', '353', '1', 'YLm83aAmaxYfXaM5kENUDSJruEVcpbhxNe', '1', '1485323663', '33');
INSERT INTO `yang_qianbao_address` VALUES ('28', '217', 'a13303100018', 'mWiMfzZEEFWjiPDnMeuShpYRBPfBgsdk8B', '-3', '1485505867', '25');
INSERT INTO `yang_qianbao_address` VALUES ('29', '1115', '滕玉娇', 'mVMNE8PC1m3xY11h8DswhwSN2CvghEKwkD', '1', '1485609163', '25');
INSERT INTO `yang_qianbao_address` VALUES ('30', '1148', '123', 'bZmd7gcyfdsSqX7UdbepdR7a3fhN6RZF6G', '1', '1485795733', '26');
INSERT INTO `yang_qianbao_address` VALUES ('31', '1147', '122', 'bWKnJsHwEXG1fdRD7mdCoiDXiTfGeGBLFT', '1', '1485796508', '26');
INSERT INTO `yang_qianbao_address` VALUES ('32', '1145', '1101', 'bYUuy7VHCqtqzUcfEFC8ZWQKKF2A6Xi4Ka', '1', '1485948492', '26');
INSERT INTO `yang_qianbao_address` VALUES ('33', '6843', '我的地址', 'bREQ5bQzeEMtoSJbhjcJc4ZSDyEStdmdjG', '1', '1486138187', '26');
INSERT INTO `yang_qianbao_address` VALUES ('34', '6843', '我的地址', 'Y8RoVUzi5ssYSyAn8V9TuaCQ7hcxi7E51C', '1', '1486138511', '33');
INSERT INTO `yang_qianbao_address` VALUES ('36', '2332', '11', 'bJVtwfoFi8BW7SL71ueQAevJf2ibuVeDbL', '1', '1486203491', '26');
INSERT INTO `yang_qianbao_address` VALUES ('37', '209', 'cyrcen', 'bFiy6w9uXKKTcQTkXPN55Y6Ued2UsYyUiV ', '1', '1486221253', '26');
INSERT INTO `yang_qianbao_address` VALUES ('38', '418', '刘影', 'bZJiEgxHtQCofxAvzohcPUAZLpKPY3Fy1S', '1', '1486276017', '26');
INSERT INTO `yang_qianbao_address` VALUES ('39', '418', '刘影', 'Y3JpcUwkNXHWM4Vfg3H7vqmqpnF2JUu1mn', '1', '1486276270', '33');
INSERT INTO `yang_qianbao_address` VALUES ('40', '388', '刘影', 'bZJiEgxHtQCofxAvzohcPUAZLpKPY3Fy1S', '1', '1486282068', '26');
INSERT INTO `yang_qianbao_address` VALUES ('41', '388', '刘影', 'Y3JpcUwkNXHWM4Vfg3H7vqmqpnF2JUu1mn', '1', '1486282291', '33');
INSERT INTO `yang_qianbao_address` VALUES ('42', '406', 'mdJrLPuNoHw3zxCXnLV2uE7vmkBn7iCa', 'mdJrLPuNoHw3zxCXnLV2uE7vmkBn7iCaLf', '1', '1486360155', '25');
INSERT INTO `yang_qianbao_address` VALUES ('43', '167', '李', 'mbkrzXtGeELmkkNLdbap6MxMRWiwWSiQqK', '1', '1486360720', '25');
INSERT INTO `yang_qianbao_address` VALUES ('44', '150', '11', 'bKqjbf6pjTQTqgxnFqZ77h2oZyUgL1frJQ', '-3', '1486430951', '26');
INSERT INTO `yang_qianbao_address` VALUES ('45', '182', '13637368017', 'bDW1pviGgqvZFsZN7cJqdwv1N8npEzQ84G', '1', '1486557165', '26');
INSERT INTO `yang_qianbao_address` VALUES ('46', '7482', '林', 'bTu31esNScLFvtK5MzU7kRxzRyL1DCknAL', '1', '1486632599', '26');
INSERT INTO `yang_qianbao_address` VALUES ('47', '199', '，', 'bXn1dDHQdnf97NwgF8mBFGH8jCotmYbdSa', '1', '1486642647', '26');
INSERT INTO `yang_qianbao_address` VALUES ('48', '187', '刘影', 'bZJiEgxHtQCofxAvzohcPUAZLpKPY3Fy1S', '1', '1486730186', '26');
INSERT INTO `yang_qianbao_address` VALUES ('49', '187', '刘影', 'Y3JpcUwkNXHWM4Vfg3H7vqmqpnF2JUu1mn', '1', '1486730961', '33');
INSERT INTO `yang_qianbao_address` VALUES ('50', '7478', '123123', 'bTu31esNScLFvtK5MzU7kRxzRyL1DCknAL', '1', '1486830972', '26');
INSERT INTO `yang_qianbao_address` VALUES ('51', '7476', '123123', 'bTu31esNScLFvtK5MzU7kRxzRyL1DCknAL', '1', '1486831058', '26');
INSERT INTO `yang_qianbao_address` VALUES ('52', '1012', '吴莹', 'bZEYXjnpShWTkhYFVHE7q1BE1pNY8v6zSo ', '1', '1487129314', '26');
INSERT INTO `yang_qianbao_address` VALUES ('53', '529', '王爱军', 'mYiYY8WgJ1xGVSycSiZi5PZhv6FinmUHg4', '1', '1487681354', '25');
INSERT INTO `yang_qianbao_address` VALUES ('54', '529', '王爱军', 'bUE5AAhdZgw5mdvyq4v5ePPrrosfMhi7WQ', '1', '1487682444', '26');
INSERT INTO `yang_qianbao_address` VALUES ('55', '546', '刘荣洁', 'bYGL5Wdyp29TqPLnEn6VxdkQAFVb3qVUS6', '1', '1487739296', '26');
INSERT INTO `yang_qianbao_address` VALUES ('56', '162', '刘敏的地址', 'bWYYWvfPyjXFBG4B22CfwvCYDSNwdhk4jC', '1', '1487741730', '26');
INSERT INTO `yang_qianbao_address` VALUES ('57', '187', '郭春英', 'bFdv6t6M1NjBH7mNsNXVo3TmRQEW1F45wS', '1', '1487769584', '26');
INSERT INTO `yang_qianbao_address` VALUES ('58', '213', '云商1', 'Y4VWEAYUK3vc6d1C1FXbBznXpBSZ2HiNrk', '1', '1487917507', '33');
INSERT INTO `yang_qianbao_address` VALUES ('59', '171', 'DAWEI222BTC100', 'bWuQfLKs5adaGo3q8C7sUUiHx1ggPL1Rfk', '-3', '1487918043', '26');
INSERT INTO `yang_qianbao_address` VALUES ('60', '169', 'Dawei222btc100', 'bWuQfLKs5adaGo3q8C7sUUiHx1ggPL1Rfk', '-3', '1487918280', '26');
INSERT INTO `yang_qianbao_address` VALUES ('61', '187', '邓玉颖', 'bKPv7gWgDtj6sJYQ5HYeZHr2hwWxXfdwtz', '1', '1487931576', '26');
INSERT INTO `yang_qianbao_address` VALUES ('62', '187', '刘桂君', 'bF43you55TFzM5Ay5Dg89iutvcqZFuRtRW', '1', '1487943291', '26');
INSERT INTO `yang_qianbao_address` VALUES ('63', '7916', 'q', 'Y4nFRbx2whHNByu8bbB2hib746rys3xxc2', '-3', '1487978745', '33');
INSERT INTO `yang_qianbao_address` VALUES ('64', '187', '郭金英', 'bNPeeCr7TgK3nADF5XMbkdaoxSmDEHGs1o', '1', '1488076335', '26');
INSERT INTO `yang_qianbao_address` VALUES ('65', '187', '张翠', 'bCmZbR6u8t9SPd8LFwUYXUqA7345GjW3oe', '1', '1488077577', '26');
INSERT INTO `yang_qianbao_address` VALUES ('66', '187', '司立秋', 'bSJDokXhjDG3ZauWSyYAwzoRHh9QQPSdbP', '1', '1488080808', '26');
INSERT INTO `yang_qianbao_address` VALUES ('67', '187', '金莉', 'bLBHYp3m5xKJnWaKE7kR62FkUPctq2eSu2', '1', '1488092923', '26');
INSERT INTO `yang_qianbao_address` VALUES ('68', '187', '孙宇新', 'bUUqu6i1MnitAQFTC19RGvGvqW5DibUXFF', '1', '1488112580', '26');
INSERT INTO `yang_qianbao_address` VALUES ('69', '227', '贾姐提币地址', 'bDpVY9ZPKQtNZsJZrtddsN6Nybx2tCWbNQ', '1', '1488242629', '26');
INSERT INTO `yang_qianbao_address` VALUES ('70', '7956', '王磊的地址（百年通宝）', 'bLkqzhdys8RW7sL7idujt3QEEdczjwfsZM', '1', '1488247022', '26');
INSERT INTO `yang_qianbao_address` VALUES ('71', '7956', '19800云商币', 'YArbKcnKKdzoEEVorP5RfjSYk5iKm15Pdd', '1', '1488251943', '33');
INSERT INTO `yang_qianbao_address` VALUES ('72', '7956', 'BTC100百年通宝', 'bTkZdpujKTYdDxC8YaZz9NSHnK362GHexz', '1', '1488252836', '26');
INSERT INTO `yang_qianbao_address` VALUES ('73', '217', '13303100018', '  mQkxVc52XDbLXLAVocM6k6f8grrrnNHfz9', '1', '1488259727', '25');
INSERT INTO `yang_qianbao_address` VALUES ('74', '227', '司立秋', 'bSJDokXhjDG3ZauWSyYAwzoRHh9QQPSdbP', '1', '1488359867', '26');
INSERT INTO `yang_qianbao_address` VALUES ('75', '762', '黄涛', 'YMydeEJ8cqAKh2HPxgHPhTv1Ko5yHx59uF', '1', '1488612606', '33');
INSERT INTO `yang_qianbao_address` VALUES ('76', '171', '方蕾', 'bKMg6q7bouJAAACfMz9JPZk4HZfHjWFea3 ', '1', '1488696022', '26');
INSERT INTO `yang_qianbao_address` VALUES ('77', '10231', '曾', 'bQFPancCbtmXpCiAcMfR9P1kGeuR17sdZ9', '1', '1488906322', '26');
INSERT INTO `yang_qianbao_address` VALUES ('78', '10231', '曾', 'YJXD7ukYg5rk3GgwtSzJthqeWycATp9V7k', '1', '1488906585', '33');
INSERT INTO `yang_qianbao_address` VALUES ('79', '10242', 'mcnw8mwGnJjGDMo5uTY5ACu2BTRRWue1', 'mcnw8mwGnJjGDMo5uTY5ACu2BTRRWue1fP', '1', '1488937824', '25');
INSERT INTO `yang_qianbao_address` VALUES ('80', '148', '吕光亮', 'ma7XLsvKwXipBN68J6H4b1sBQ8mVniZEnX', '1', '1488938978', '25');
INSERT INTO `yang_qianbao_address` VALUES ('81', '10374', 'newbeicity账号', 'bLkqzhdys8RW7sL7idujt3QEEdczjwfsZM', '1', '1489023982', '26');
INSERT INTO `yang_qianbao_address` VALUES ('82', '10374', 'BTC100', 'bTkZdpujKTYdDxC8YaZz9NSHnK362GHexz', '1', '1489025071', '26');
INSERT INTO `yang_qianbao_address` VALUES ('83', '1091', '翟喜双', 'bDzvFf6BDq8KRQJLekkSLPtJ3QeLvF81un', '1', '1489121331', '26');
INSERT INTO `yang_qianbao_address` VALUES ('84', '7930', '杜令', 'bLtBYyzbCUe3qBfyV9vruVWsKwYfE9oa8f', '1', '1489123642', '26');
INSERT INTO `yang_qianbao_address` VALUES ('85', '7930', '杜令', 'Y75ZWhVYaRmvQ5zbtBmF9ahmzVLotKzWgF', '1', '1489126072', '33');
INSERT INTO `yang_qianbao_address` VALUES ('86', '198', 'bD8XUhqGfBu8s7JcZknxvHchMnMh2qk3', 'bD8XUhqGfBu8s7JcZknxvHchMnMh2qk3XS', '1', '1489392274', '26');
INSERT INTO `yang_qianbao_address` VALUES ('87', '163', '李', 'Y6VE2V735hHLxdFydNAYn7u1pYwK74e6aJ', '1', '1489456381', '33');
INSERT INTO `yang_qianbao_address` VALUES ('88', '160', '张志梅', 'YFJZZo7NuuaRd1gFngegEQK9LV7jWSkU9p', '1', '1489542718', '33');
INSERT INTO `yang_qianbao_address` VALUES ('89', '141', '1', 'mZW4WDY4QKZ6mVtH2u4Q3T8MzCrzC9AAun', '-3', '1489997674', '25');
INSERT INTO `yang_qianbao_address` VALUES ('90', '11736', '789', 'ba5waGsBZVqztR1kYwpTnrnsJHr9jc6Xee', '1', '1490080758', '26');
INSERT INTO `yang_qianbao_address` VALUES ('91', '11793', '邓迪', 'mL5Yg6nmF21aUtDqFJHfTNt7GJ44Sgs9vE', '1', '1490157023', '25');
INSERT INTO `yang_qianbao_address` VALUES ('92', '141', '百年春1', 'mZW4WDY4QKZ6mVtH2u4Q3T8MzCrzC9AAun', '-3', '1490161944', '25');
INSERT INTO `yang_qianbao_address` VALUES ('93', '140', '002', 'mNA5cczmpKZ2xLFMQLebxNSf7eY8e57AZb', '-3', '1490166229', '25');
INSERT INTO `yang_qianbao_address` VALUES ('94', '160', 'zhang', 'bLkCPD3NeQcLC4TALzRVqcNKR27T1ER9Vi', '1', '1490174639', '26');
INSERT INTO `yang_qianbao_address` VALUES ('95', '160', 'zhang', 'mePdLbbPTVcLitMdeVdwa6whDaSrZr22MC', '1', '1490174954', '25');
INSERT INTO `yang_qianbao_address` VALUES ('96', '169', '2', 'M8FF7zYRc8jHtykudvNEFGMNE9xDwX7i9J', '1', '1490181236', '34');
INSERT INTO `yang_qianbao_address` VALUES ('97', '11809', 'YSB', 'YDogxsWHF4HK1bTHnFG5QjHusvGwj4by1o', '-3', '1490202224', '33');
INSERT INTO `yang_qianbao_address` VALUES ('98', '140', '小周', 'YArPuFdY9D8q42efyWyfkTP5uLVNKgxze4', '-3', '1490233409', '33');
INSERT INTO `yang_qianbao_address` VALUES ('99', '140', '002', 'XzLEkjMa5wRgnu5uNsszzCYrpMyUb3iWQ4', '1', '1490234930', '33');
INSERT INTO `yang_qianbao_address` VALUES ('100', '141', 'bnc001', 'YH6GER5zhMnsNeV4CnytxpJAiwsptfRkNP', '-3', '1490241795', '33');
INSERT INTO `yang_qianbao_address` VALUES ('101', '140', '002', 'mNA5cczmpKZ2xLFMQLebxNSf7eY8e57AZb', '1', '1490242659', '25');
INSERT INTO `yang_qianbao_address` VALUES ('102', '140', '002', 'GfHQjBNnWE6396tMXP2XZTHw1UC3ZxZzKj', '-3', '1490260492', '32');
INSERT INTO `yang_qianbao_address` VALUES ('103', '141', '123', 'GYLumamCAhFcM3f7FUh9W7cQJgerAQXB7R', '-3', '1490268039', '32');
INSERT INTO `yang_qianbao_address` VALUES ('104', '11798', '123', 'MCszEjopHYYDvvxVGEKUAcvYiHQD7fyA68', '-3', '1490282302', '34');
INSERT INTO `yang_qianbao_address` VALUES ('105', '11798', '1', 'MLgizj1ubqMiwW7Au3vZ6yJ8pHcUKEqaaU', '1', '1490282501', '34');
INSERT INTO `yang_qianbao_address` VALUES ('106', '11798', '2', 'MCszEjopHYYDvvxVGEKUAcvYiHQD7fyA68', '1', '1490283087', '34');
INSERT INTO `yang_qianbao_address` VALUES ('107', '11798', '1', 'YEz5kVV1b61v51mx8kcXPrNXyCUbKSQzDM', '1', '1490283902', '33');
INSERT INTO `yang_qianbao_address` VALUES ('108', '11798', '1', 'mTJyVbkgQ4jYuKGQPmvZ8Cvdy9FFgPP48d', '1', '1490284786', '25');
INSERT INTO `yang_qianbao_address` VALUES ('109', '140', '1', 'YEz5kVV1b61v51mx8kcXPrNXyCUbKSQzDM', '1', '1490285693', '33');
INSERT INTO `yang_qianbao_address` VALUES ('110', '140', 'xx', 'mTJyVbkgQ4jYuKGQPmvZ8Cvdy9FFgPP48d', '1', '1490286291', '25');
INSERT INTO `yang_qianbao_address` VALUES ('111', '11809', '1', 'YEz5kVV1b61v51mx8kcXPrNXyCUbKSQzDM', '1', '1490287947', '33');
INSERT INTO `yang_qianbao_address` VALUES ('112', '140', '1', 'MEhJ9ZqqwzrzcZr3eyEpdyYmnsJkC7Rf8c', '1', '1490291152', '34');
INSERT INTO `yang_qianbao_address` VALUES ('113', '140', 'yb', 'mRGVp7LMdRdVKMqHN82RY5oJLyhJvWSB9c', '1', '1490291408', '25');
INSERT INTO `yang_qianbao_address` VALUES ('114', '11746', '测试', 'Ga6VSAMfu2nedZ1CkHVJQmhpXaNxL8GdFY', '1', '1490291488', '32');
INSERT INTO `yang_qianbao_address` VALUES ('115', '140', '111', 'Y9bzvKtCmtCpXuNmtBQRpWfBQXseANTmZs', '1', '1490294715', '33');
INSERT INTO `yang_qianbao_address` VALUES ('116', '140', '12111', 'Y2ws2gbzQN3dVASepiB1EeEVDfsQ6a7GWp', '1', '1490295226', '33');
INSERT INTO `yang_qianbao_address` VALUES ('117', '140', 'xxx', 'mVW6GiAz3aDMRBKVhAaoDzbgPn1NkexmGc', '1', '1490300722', '25');
INSERT INTO `yang_qianbao_address` VALUES ('118', '140', '1x', '1DNrzntkTpiKDawVtLWE8ZJH5zRXjvJVeu', '1', '1490301968', '28');
INSERT INTO `yang_qianbao_address` VALUES ('119', '11809', '2', 'Y9bzvKtCmtCpXuNmtBQRpWfBQXseANTmZs', '1', '1490304828', '33');
INSERT INTO `yang_qianbao_address` VALUES ('120', '199', '01', 'YL7ij9b45LwUCBi8U2puHYXfSaWsc9crRB', '1', '1490311875', '33');
INSERT INTO `yang_qianbao_address` VALUES ('121', '141', '123', 'mZW4WDY4QKZ6mVtH2u4Q3T8MzCrzC9AAun', '-3', '1490354149', '25');
INSERT INTO `yang_qianbao_address` VALUES ('122', '163', '小周', 'mS81nTLmuaF4ti3hudtgnU7CJWS6YU266g', '1', '1490355737', '25');
INSERT INTO `yang_qianbao_address` VALUES ('123', '141', '123', 'mZW4WDY4QKZ6mVtH2u4Q3T8MzCrzC9AAun', '1', '1490357479', '25');
INSERT INTO `yang_qianbao_address` VALUES ('124', '169', '李姐', 'mbkrzXtGeELmkkNLdbap6MxMRWiwWSiQqK', '1', '1490358471', '25');
INSERT INTO `yang_qianbao_address` VALUES ('125', '163', '小周', 'bGg9SfwV4T6upRjUnPHq2cSTYmWHqzxfBa', '1', '1490359297', '26');
INSERT INTO `yang_qianbao_address` VALUES ('126', '169', '李姐', 'bXJKacQ2PdTK1w29eRAccw7Q31hu5iY4YS', '1', '1490363113', '26');
INSERT INTO `yang_qianbao_address` VALUES ('127', '11936', '离线', 'Gej2j3UWjG7RDLM75sBPdDeJHuR4trHeZf', '1', '1490370523', '32');
INSERT INTO `yang_qianbao_address` VALUES ('128', '11933', '333', 'Gej2j3UWjG7RDLM75sBPdDeJHuR4trHeZf', '1', '1490370560', '32');
INSERT INTO `yang_qianbao_address` VALUES ('129', '12013', '滕', 'GZ1HdLGB5xBHNJ64rGWjtSYkn6Kr9wDgAi', '1', '1490402784', '32');
INSERT INTO `yang_qianbao_address` VALUES ('130', '12006', '彬彬江江', 'GWrWTJx2F4R42LzfyiduGetp1xc4tryHZw', '1', '1490404102', '32');
INSERT INTO `yang_qianbao_address` VALUES ('131', '11953', '我的前海钱包地址', 'GRfuMpT2sdHvemjbGV48tcKPprVrFaxwBp', '1', '1490404391', '32');
INSERT INTO `yang_qianbao_address` VALUES ('132', '11848', '空灵前海钱包地址', 'GKSbEjjPyiPDBNAzQJtvMbmHSMrset1ryT', '1', '1490406872', '32');
INSERT INTO `yang_qianbao_address` VALUES ('133', '11938', '我的前海地址', 'GLFJ6k7dpSAzbLBACp6Hdw1F3xDJzbrK4z', '1', '1490407471', '32');
INSERT INTO `yang_qianbao_address` VALUES ('134', '11833', 'wcy前海', 'Gebc4PBcVy2ytDXaxARQaLjx6eYzRUVh1L', '1', '1490407497', '32');
INSERT INTO `yang_qianbao_address` VALUES ('135', '12058', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490408374', '32');
INSERT INTO `yang_qianbao_address` VALUES ('136', '12058', '路彬彬', 'Gfrmo2KEw7W3dSEW2vn7sEFKnvnCipgdSZ', '1', '1490408396', '32');
INSERT INTO `yang_qianbao_address` VALUES ('137', '12058', '离线钱包', 'GP23Ze4vUmQNPpzBJPAokJpeDgMtsnLXSR', '1', '1490408418', '32');
INSERT INTO `yang_qianbao_address` VALUES ('138', '12058', '前海', 'GLev43i2n1rC2afxBcWLyTJ9d9Ga4Vntb1', '1', '1490408456', '32');
INSERT INTO `yang_qianbao_address` VALUES ('139', '12080', '自己的', 'GXXqeaFvPJh2VFV9g1ZXvmsNQcd5AXZ9kt', '1', '1490408644', '32');
INSERT INTO `yang_qianbao_address` VALUES ('140', '12102', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490409331', '32');
INSERT INTO `yang_qianbao_address` VALUES ('141', '12102', '路彬彬', 'Gfrmo2KEw7W3dSEW2vn7sEFKnvnCipgdSZ', '1', '1490409351', '32');
INSERT INTO `yang_qianbao_address` VALUES ('142', '12102', '前海', 'Gar4MCQMLQF1qiChdKVWYWFMLKUjSFGv5K', '1', '1490409388', '32');
INSERT INTO `yang_qianbao_address` VALUES ('143', '11789', '我的前海网', 'GNYPSfGAeDuGkMpmJ3af3yj2GVCjKR9dt2 ', '1', '1490409673', '32');
INSERT INTO `yang_qianbao_address` VALUES ('144', '11788', 'gzz', 'Gcbizqt6MHVLWxd9T7cLjaYwBLUVz1iMjk', '1', '1490410077', '32');
INSERT INTO `yang_qianbao_address` VALUES ('145', '12033', '春天', 'GbRowwVFx2JUB6PmmtZV3ezz7mZceUyUTR', '1', '1490410336', '32');
INSERT INTO `yang_qianbao_address` VALUES ('146', '12083', '自己电脑冷钱包地址', 'GXoJoaGQfpGRHmvytWc82AcUix3TpNZ742', '1', '1490410452', '32');
INSERT INTO `yang_qianbao_address` VALUES ('147', '12122', '前海代的冷钱包', 'GUvgs5QzSjTEDQ18BubAS5NSAHtZVc8bvf', '1', '1490410656', '32');
INSERT INTO `yang_qianbao_address` VALUES ('148', '12045', '我的前海钱包', 'GPCm7ggXQJyqvScfVj6y6T5UbpQXtP8N2S', '1', '1490410671', '32');
INSERT INTO `yang_qianbao_address` VALUES ('149', '12045', '我的冷钱包地址', 'GXRm5BFgXL4S1WRQ8voJeV6ihLCSpqVkAx', '1', '1490410892', '32');
INSERT INTO `yang_qianbao_address` VALUES ('150', '11753', 'M', 'GYcTyg5XzRikPQAqAL8rpqVkQbvbRUZ1Nf', '1', '1490410900', '32');
INSERT INTO `yang_qianbao_address` VALUES ('151', '11853', '前海', 'GZnhRr5iYE1bJNgpoAZYetMMhC8vp6MZV9', '1', '1490410911', '32');
INSERT INTO `yang_qianbao_address` VALUES ('152', '11938', '我的前海冷钱包', 'GfSXnrhFDwUxQNFcChK859WuUQWgCvPB51', '1', '1490411687', '32');
INSERT INTO `yang_qianbao_address` VALUES ('153', '12135', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490412158', '32');
INSERT INTO `yang_qianbao_address` VALUES ('154', '12135', '我的前海交易所钱包', 'GMAb9V96pbmtLE8G19JiaFGmhwsogJhUJH', '1', '1490412213', '32');
INSERT INTO `yang_qianbao_address` VALUES ('155', '12202', '会员激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490412454', '32');
INSERT INTO `yang_qianbao_address` VALUES ('156', '12202', '前海z', 'GZSEk6TeueHbdohMPootDmp2puh8iHt4AV', '1', '1490412505', '32');
INSERT INTO `yang_qianbao_address` VALUES ('157', '12190', '冷钱包', 'GMZpddPH1rLLWcLbfdY4xdCJZ6acDgJmsa', '1', '1490412885', '32');
INSERT INTO `yang_qianbao_address` VALUES ('158', '12202', 'wyf', 'Gd8rGWEYtdDUr69yYu7892rDMewAtzvdtq', '1', '1490413012', '32');
INSERT INTO `yang_qianbao_address` VALUES ('159', '12202', 'l冷钱包', 'Ga31x4PEasDYiGdCTgerQsHG7XgoDKFt7L', '1', '1490413106', '32');
INSERT INTO `yang_qianbao_address` VALUES ('160', '12239', 'G币钱包地址', 'GLhB1wLQkLGMFtGf5HoG9xUm9fXQyLpp9G', '1', '1490413670', '32');
INSERT INTO `yang_qianbao_address` VALUES ('161', '12239', '前海地址', 'GWjinjxfV94o3r56mMcC7WwskMc9tuhJ83', '1', '1490413709', '32');
INSERT INTO `yang_qianbao_address` VALUES ('162', '11984', '公司钱包地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490413908', '32');
INSERT INTO `yang_qianbao_address` VALUES ('163', '12158', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490413930', '32');
INSERT INTO `yang_qianbao_address` VALUES ('164', '12207', '陈晓忠前海G币钱包', 'GUhK6YGPDefr245nKbKxLZxKwAhg2bj5D5', '1', '1490414177', '32');
INSERT INTO `yang_qianbao_address` VALUES ('165', '12244', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490414199', '32');
INSERT INTO `yang_qianbao_address` VALUES ('166', '12243', 'MP后台', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490414645', '32');
INSERT INTO `yang_qianbao_address` VALUES ('167', '12118', '前海雪', 'GKHnG3a7h7ycQfAMXgPEHe7TUGhL4fhTr2', '-3', '1490414720', '32');
INSERT INTO `yang_qianbao_address` VALUES ('168', '12257', '公司的钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490414765', '32');
INSERT INTO `yang_qianbao_address` VALUES ('169', '12277', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490416131', '32');
INSERT INTO `yang_qianbao_address` VALUES ('170', '12294', '公司的钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490416964', '32');
INSERT INTO `yang_qianbao_address` VALUES ('171', '12045', '猫钱包地址', 'Gej2j3UWjG7RDLM75sBPdDeJHuR4trHeZf', '1', '1490417391', '32');
INSERT INTO `yang_qianbao_address` VALUES ('172', '12074', '桑国栋qh', 'GfDb8j3T934q6tEoQYg6QVCi65ZN3PuZwP', '1', '1490417983', '32');
INSERT INTO `yang_qianbao_address` VALUES ('173', '12149', '我的冷钱包地址4', 'Gbty4isEnJW2PmESVuU8A2n1wx1KS1X4Ww', '1', '1490418473', '32');
INSERT INTO `yang_qianbao_address` VALUES ('174', '12304', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490418933', '32');
INSERT INTO `yang_qianbao_address` VALUES ('175', '12035', '冷钱包', 'GQq4pEDfitCPMCmKQcKS2K6s54JJqz8U8U', '1', '1490419079', '32');
INSERT INTO `yang_qianbao_address` VALUES ('176', '12138', '冷钱包1', 'GZR2JQD8o34syMFEdST5AwMVrCruDfJp3U', '1', '1490419146', '32');
INSERT INTO `yang_qianbao_address` VALUES ('177', '12035', '石峰冷', 'GSfBLNjKYzrGp7HpcrAwC9FYBffFK3vKtN', '1', '1490419254', '32');
INSERT INTO `yang_qianbao_address` VALUES ('178', '12314', '888', 'GXxpf1Dn2gzL77x93Dbmw5gN4yMXRGLv1h', '1', '1490419307', '32');
INSERT INTO `yang_qianbao_address` VALUES ('179', '12035', '宋冠暻', 'GTu7qxcEQ9dceU72Hdkmr11D3HpCjSwPsN', '1', '1490419334', '32');
INSERT INTO `yang_qianbao_address` VALUES ('180', '12329', '公司的钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490419633', '32');
INSERT INTO `yang_qianbao_address` VALUES ('181', '11894', '陈静的离线钱包', 'GUhDMRKgDLVQX3b1UyXqEKqyUGm6WJEpbZ', '1', '1490419939', '32');
INSERT INTO `yang_qianbao_address` VALUES ('182', '12332', '张卫祥', 'GKhUxsxwGGgMT4RWsCAeWjypkDinrV2qia', '1', '1490420065', '32');
INSERT INTO `yang_qianbao_address` VALUES ('183', '12336', '公司的钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490420403', '32');
INSERT INTO `yang_qianbao_address` VALUES ('184', '11850', '我的前海交易所钱包', 'GZDTtKAibQaiA5H4dzdDQNH7nVnqumiWXq', '1', '1490420641', '32');
INSERT INTO `yang_qianbao_address` VALUES ('185', '11850', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490420693', '32');
INSERT INTO `yang_qianbao_address` VALUES ('186', '12344', 'ycl前海', 'GM55yeCQKKdyQ1CznCELnMSZK1G1bw64ed', '1', '1490421271', '32');
INSERT INTO `yang_qianbao_address` VALUES ('187', '12121', '1我的冷钱包', 'GbtbnvK8o54vZraoqEATr8omeCKgog1UBR', '1', '1490421532', '32');
INSERT INTO `yang_qianbao_address` VALUES ('188', '12359', '公司的钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490422156', '32');
INSERT INTO `yang_qianbao_address` VALUES ('189', '12208', '阿良', 'GWjYbRCUuV7ZNeWrbfY9ZDmbRrp7MifJ5c', '1', '1490422408', '32');
INSERT INTO `yang_qianbao_address` VALUES ('190', '11961', '尹兵前海', 'GTjPYP7QwKHMjYHmBjmGkUvUXw2FgKhkMp', '1', '1490423416', '32');
INSERT INTO `yang_qianbao_address` VALUES ('191', '12015', '前海', 'GRXxgUyX9Ncz8h4nj2io3pBWAKiaMbSZD1', '1', '1490424034', '32');
INSERT INTO `yang_qianbao_address` VALUES ('192', '12369', '前海网站', 'GY9t7YLubC8aKppdqGUeExbbpSvDX7q9AF', '1', '1490424338', '32');
INSERT INTO `yang_qianbao_address` VALUES ('193', '12368', '张三激活帐户', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490425377', '32');
INSERT INTO `yang_qianbao_address` VALUES ('194', '12048', '王健前海地址', 'GYckP4spaZrjzG9YDs1LTX7pSmQ9bfZnrS', '1', '1490425932', '32');
INSERT INTO `yang_qianbao_address` VALUES ('195', '12211', '商钱包', 'GcUsLVPKpsY2VfM8Gpi6WKAdnWMRyPr51E', '1', '1490426538', '32');
INSERT INTO `yang_qianbao_address` VALUES ('196', '12400', '海成帮的前海', 'GQXAMrEnZu6ByuVpz9BiebEGcVorgPVVRN', '1', '1490426693', '32');
INSERT INTO `yang_qianbao_address` VALUES ('197', '12078', '前海', 'GZixizvtV87aNVLeFWoqVzXhqk5i2KHABn', '1', '1490427891', '32');
INSERT INTO `yang_qianbao_address` VALUES ('198', '164', '罗霞', 'YMMtvJ2qU1ny3jZEV1CV3MPWSFZMWaEzrb', '1', '1490427919', '33');
INSERT INTO `yang_qianbao_address` VALUES ('199', '12197', 'qianhai', 'GhB9Sf5edkDXEjTkTtSfx4yVPeNFbHCoGN', '1', '1490428291', '32');
INSERT INTO `yang_qianbao_address` VALUES ('200', '11826', '32', ' GX2MebYfBjaxKMKsy689bH2rcpEtw8wxHc', '-3', '1490428844', '32');
INSERT INTO `yang_qianbao_address` VALUES ('201', '11826', '4968', 'GT3NUrjMn6BmwSFd4CRAKFHYAVyPdtPZqp', '-3', '1490428922', '32');
INSERT INTO `yang_qianbao_address` VALUES ('202', '12414', 'xz', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490429221', '32');
INSERT INTO `yang_qianbao_address` VALUES ('203', '12414', 'zx', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490429716', '32');
INSERT INTO `yang_qianbao_address` VALUES ('204', '12414', 'xc', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490430191', '32');
INSERT INTO `yang_qianbao_address` VALUES ('205', '11850', '安孝平', 'GMAb9V96pbmtLE8G19JiaFGmhwsogJhUJH', '1', '1490431465', '32');
INSERT INTO `yang_qianbao_address` VALUES ('206', '11931', '潘德兰', 'GULS5zQT1QeCusaPTVB8B7AbSzWXLxbUzk', '1', '1490432741', '32');
INSERT INTO `yang_qianbao_address` VALUES ('207', '11745', '前海', 'GW1tfZSwzri4iR8qriMEMTyfogg5mBYARQ', '1', '1490433183', '32');
INSERT INTO `yang_qianbao_address` VALUES ('208', '12460', '桂', 'GQL23HK5wqrxb46DVesgQ17PHHGeggHeQN', '1', '1490433752', '32');
INSERT INTO `yang_qianbao_address` VALUES ('209', '11918', '张定洲前海地址', 'GcauRzVCf4yGY11mpNHCzqp6BAoz3srxc5', '1', '1490433776', '32');
INSERT INTO `yang_qianbao_address` VALUES ('210', '12461', '王绍群（前海）', 'GV9j7SzPso7wHoNb1i2F7XXdCSNusePfjF', '1', '1490434352', '32');
INSERT INTO `yang_qianbao_address` VALUES ('211', '12444', 'xgt8619', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490434652', '32');
INSERT INTO `yang_qianbao_address` VALUES ('212', '12317', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490434846', '32');
INSERT INTO `yang_qianbao_address` VALUES ('213', '12045', '陈总平凡路钱包', 'GfSXnrhFDwUxQNFcChK859WuUQWgCvPB51', '1', '1490434973', '32');
INSERT INTO `yang_qianbao_address` VALUES ('214', '11820', '前海英雄', 'GaAvPrdF44tExX6vQb3JuvSbminPieskoU', '1', '1490435661', '32');
INSERT INTO `yang_qianbao_address` VALUES ('215', '12476', 'mp公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490436736', '32');
INSERT INTO `yang_qianbao_address` VALUES ('216', '12384', '李明', 'GWrbzXzuhL4hsRVLVscw1ErHnewNhZX68C', '1', '1490437259', '32');
INSERT INTO `yang_qianbao_address` VALUES ('217', '12450', '我的前海钱包G币', 'GJhp2EZdfRfvtK1SBhQcxGep4to4HRuFpX', '1', '1490437472', '32');
INSERT INTO `yang_qianbao_address` VALUES ('218', '11850', '白成梅', 'GRvKjQi7AW1E5owb9XzKKwF7CUj9VNp4Hp', '1', '1490437563', '32');
INSERT INTO `yang_qianbao_address` VALUES ('219', '12479', '刘金铃', 'Gep8h6Ue3GRW1yp8RpbXsALNRMT1yqXXby', '1', '1490438224', '32');
INSERT INTO `yang_qianbao_address` VALUES ('220', '11820', '前海曹智杰', 'GQZht81hQJhRjkXG1LrViEMyEGD5yY8K9d', '1', '1490438954', '32');
INSERT INTO `yang_qianbao_address` VALUES ('221', '11917', '前海', 'GVcwzyr8Dh6GCLs6QKPRZwopMY9bnE1Ymd', '1', '1490439374', '32');
INSERT INTO `yang_qianbao_address` VALUES ('222', '12427', 'MP公司激活地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490441982', '32');
INSERT INTO `yang_qianbao_address` VALUES ('223', '12427', 'MP排单币', 'Gcgxr3UhtcAdDazUGWPYeqjrTrdRcpWmVR', '1', '1490442341', '32');
INSERT INTO `yang_qianbao_address` VALUES ('224', '11993', 'hjl2016', 'GggVACoyHVbv7MeLbXWsFtVFDwA9D3cKBf', '-3', '1490442504', '32');
INSERT INTO `yang_qianbao_address` VALUES ('225', '12521', '1', 'GRk3beaQZTd8dmFvKBi8dsYeiHeN6bD2yN', '1', '1490446454', '32');
INSERT INTO `yang_qianbao_address` VALUES ('226', '12526', '刘平华的钱包', 'GgwPEWnFfMagcecAgqo67trSCaH3GaFN8x', '1', '1490447778', '32');
INSERT INTO `yang_qianbao_address` VALUES ('227', '12541', '陈清华', 'GQi5JdXRDbn2pXgyMGqziNen5amoQFRDeF', '1', '1490448630', '32');
INSERT INTO `yang_qianbao_address` VALUES ('228', '11922', '前海钱包', 'GRvemrC79mFrHQ3kyW19R4uLyPLfLZCUU4', '1', '1490449880', '32');
INSERT INTO `yang_qianbao_address` VALUES ('229', '11782', '我的冷钱包地址', 'GUrXTWE6fREriiRnKaF3gtkbJQZmpkSZVF', '1', '1490450013', '32');
INSERT INTO `yang_qianbao_address` VALUES ('230', '12065', 'qianbao', 'GJgoyEEmZg61FDDtnzHoqYKw17N6JPtiP5', '1', '1490450189', '32');
INSERT INTO `yang_qianbao_address` VALUES ('231', '12536', '李文胜冷地址', 'GgzCJGUNV73JcaZhhWVr8hgB8sELx8hewZ', '1', '1490450786', '32');
INSERT INTO `yang_qianbao_address` VALUES ('232', '12118', '夏雪前海', 'GKHnG3a7h7ycQfAMXgPEHe7TUGhL4fhTr2', '1', '1490455819', '32');
INSERT INTO `yang_qianbao_address` VALUES ('233', '12062', '钱海钱包地址', 'GVvVqpEKzQv8ZBTzVjawtDxJVbSEmRcCaU', '1', '1490457785', '32');
INSERT INTO `yang_qianbao_address` VALUES ('234', '12062', '冷钱包地址', 'GSUJKuYxu11RA8HciXA5yv3xQTXKaGzaS7', '1', '1490457839', '32');
INSERT INTO `yang_qianbao_address` VALUES ('235', '12366', 'mp', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490457985', '32');
INSERT INTO `yang_qianbao_address` VALUES ('236', '11799', '我的钱包', 'GWpK4gRiGNZYS9yVhtSa3SAoBBvGKfhbd6', '1', '1490461945', '32');
INSERT INTO `yang_qianbao_address` VALUES ('237', '11799', '前海钱包', 'GTijxw4UXb4Qbdadd4DVNRcHk5hGUqbjNS', '1', '1490462095', '32');
INSERT INTO `yang_qianbao_address` VALUES ('238', '12556', '七里渠冷钱包', 'GeALp5FTweXGTgXpK8M9n98wJBWRnQDTGp', '1', '1490482232', '32');
INSERT INTO `yang_qianbao_address` VALUES ('239', '12556', '王金巧冷钱包舒雅', 'GNWaDDd5JYKsn44XvaSD9fGUP7H8NU1XrS', '1', '1490482562', '32');
INSERT INTO `yang_qianbao_address` VALUES ('240', '12525', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490486887', '32');
INSERT INTO `yang_qianbao_address` VALUES ('241', '12584', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490488134', '32');
INSERT INTO `yang_qianbao_address` VALUES ('242', '12584', '排单币', 'GNYPSfGAeDuGkMpmJ3af3yj2GVCjKR9dt2', '1', '1490488180', '32');
INSERT INTO `yang_qianbao_address` VALUES ('243', '12584', '自己前海', 'GJA5Mr8MHD7ac2v8nV4a7i4WCUuCgxT2Ch', '1', '1490488217', '32');
INSERT INTO `yang_qianbao_address` VALUES ('244', '12012', '560', 'GfkvseBuewjozUM9crHXbKQjhRuyMGGvVV', '1', '1490488960', '32');
INSERT INTO `yang_qianbao_address` VALUES ('245', '11993', 'lcj', 'GRFeg2CuYPR5fRJmz8v9CeFqwTeiVtNh8t  ', '-3', '1490490525', '32');
INSERT INTO `yang_qianbao_address` VALUES ('246', '11984', '桂文雅百币钱包地址', 'GfqN7UELwvKjmX7skbbshzpBZoZLn6H65Z', '1', '1490490740', '32');
INSERT INTO `yang_qianbao_address` VALUES ('247', '12180', '王强前海', 'GMqNJPiAoJLcbBnsAfDLFqAqkSY1X29b7A', '1', '1490491373', '32');
INSERT INTO `yang_qianbao_address` VALUES ('248', '12316', '杨薇', 'GXQXoLLBThozQASDBJGRnRk14xskrJZ7w8', '1', '1490492050', '32');
INSERT INTO `yang_qianbao_address` VALUES ('249', '12157', '费', ' GXBvXU6WyCKGRf1muadrDPYWXmGGB6YDi2', '1', '1490492351', '32');
INSERT INTO `yang_qianbao_address` VALUES ('250', '12590', '268', 'GRDJr6TLz9jrkkJVoPySUnxtkHwHFizPAS', '1', '1490492843', '32');
INSERT INTO `yang_qianbao_address` VALUES ('251', '12041', 'xylr777', 'GT3NUrjMn6BmwSFd4CRAKFHYAVyPdtPZqp', '1', '1490493359', '32');
INSERT INTO `yang_qianbao_address` VALUES ('252', '12590', '1200', 'GeJTXDXNB7s2Y7iD6kRSzf8sgXMRuqqAv4', '1', '1490493557', '32');
INSERT INTO `yang_qianbao_address` VALUES ('253', '12041', 'lxh1688', 'GUg7WN5enxVpww9JRHuN6fXvX5hUjNdXdd', '1', '1490493763', '32');
INSERT INTO `yang_qianbao_address` VALUES ('254', '12590', '532', ' GSbM693hUJHUzYSrZ3SbJTTfk79WvHTkzb', '1', '1490493830', '32');
INSERT INTO `yang_qianbao_address` VALUES ('255', '11804', '1842', 'GZGZM9ncF6j7uoAAhaHhiBvbAGXmFyAeCo', '1', '1490494412', '32');
INSERT INTO `yang_qianbao_address` VALUES ('256', '12267', '178178', ' Gej2j3UWjG7RDLM75sBPdDeJHuR4trHeZf', '1', '1490494624', '32');
INSERT INTO `yang_qianbao_address` VALUES ('257', '12267', 'pgq3335', 'GRnfDEqZRYWtJsWjWGVGNqNfvnYathuuyU', '1', '1490494850', '32');
INSERT INTO `yang_qianbao_address` VALUES ('258', '12418', '我的冷钱包', 'GgKAqdPk6SHoejs3LAXdVgB9VZSNF2Fhwf', '1', '1490494984', '32');
INSERT INTO `yang_qianbao_address` VALUES ('259', '11993', '账户升级', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490495312', '32');
INSERT INTO `yang_qianbao_address` VALUES ('260', '12267', 'jsy789', ' GfgBpsZBjQJg6iXkXNJJc1yGooDvq295iv', '1', '1490495326', '32');
INSERT INTO `yang_qianbao_address` VALUES ('261', '12267', 'jhq888', ' GMDfwbELTGGqMH6NwAQB8S4pAKsd82VX3A', '1', '1490495468', '32');
INSERT INTO `yang_qianbao_address` VALUES ('262', '12267', 'wmf666777', ' GVXhiwk4ySxYqR7zW5tUMV9AxAsnUdFbDH', '1', '1490495622', '32');
INSERT INTO `yang_qianbao_address` VALUES ('263', '12442', '我的冷钱包', 'GLzePQNBSBMYkbGYeVaM9weahHJL9MMBw1', '1', '1490495987', '32');
INSERT INTO `yang_qianbao_address` VALUES ('264', '12041', 'cl999', 'GSHasRpYRTysjfG2G9VrFunRvDFod9kn35', '1', '1490496454', '32');
INSERT INTO `yang_qianbao_address` VALUES ('265', '11989', '乔静前海钱包地址', 'GVLVRzHzTXPdQo612Zt33ampBZXajVrcNe', '1', '1490496980', '32');
INSERT INTO `yang_qianbao_address` VALUES ('266', '12590', '高琳', 'Gc9kWCJS6qqK8sasEBXWUKANAZ1x6xiKEi', '1', '1490497998', '32');
INSERT INTO `yang_qianbao_address` VALUES ('267', '12440', '前海李军', 'GKfC2a9tN1LtujFr4cxK21YGpVBy4q2bGP', '1', '1490498438', '32');
INSERT INTO `yang_qianbao_address` VALUES ('268', '11814', '冷钱包', 'Gg5J4VBwqRcHL4Rz3M7urH7rQkcDeMW8UJ', '1', '1490499330', '32');
INSERT INTO `yang_qianbao_address` VALUES ('269', '12012', '42', 'GPg5YAfxuc2oTPWB72XwTGeNvcpxg4F6iY', '-3', '1490500864', '32');
INSERT INTO `yang_qianbao_address` VALUES ('270', '12439', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490500880', '32');
INSERT INTO `yang_qianbao_address` VALUES ('271', '11957', '1', 'GeJTXDXNB7s2Y7iD6kRSzf8sgXMRuqqAv4', '-3', '1490501261', '32');
INSERT INTO `yang_qianbao_address` VALUES ('272', '12617', '前海雷航', 'GQPXxSV24Z7m72fQksTSC8Gc9sSkSiWHLU', '1', '1490501538', '32');
INSERT INTO `yang_qianbao_address` VALUES ('273', '12429', 'wzy666', 'GenWJPow9PLWbQumq3GhowhaGkviyNP1Wg', '1', '1490501595', '32');
INSERT INTO `yang_qianbao_address` VALUES ('274', '12617', '前海卞波', 'GduCY4gzQFRowS55MZTzEY3qHxBhPAZECD', '1', '1490501751', '32');
INSERT INTO `yang_qianbao_address` VALUES ('275', '12343', '公司钱包地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490502559', '32');
INSERT INTO `yang_qianbao_address` VALUES ('276', '12579', '激活账号', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490503743', '32');
INSERT INTO `yang_qianbao_address` VALUES ('277', '12134', '吕越的前海', 'GcJbdevogquGNYni4yyqwmaunUVwL3G2S8', '1', '1490504924', '32');
INSERT INTO `yang_qianbao_address` VALUES ('278', '12166', '春雷的地址', 'GW89mnkcVgLXvP2ASh2L8MK1jWb4zPyPcr', '1', '1490506302', '32');
INSERT INTO `yang_qianbao_address` VALUES ('279', '12533', '齐国军', 'GdtuzTNEhjo5exHBqnq6SKoJEc2NajZjFc', '1', '1490507540', '32');
INSERT INTO `yang_qianbao_address` VALUES ('280', '12582', '童正妹', 'GTBUfjDhRNQBkQCyifQiKNjp48quw2qzZb', '1', '1490509150', '32');
INSERT INTO `yang_qianbao_address` VALUES ('281', '12467', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490509343', '32');
INSERT INTO `yang_qianbao_address` VALUES ('282', '12641', 'MP公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490509405', '32');
INSERT INTO `yang_qianbao_address` VALUES ('283', '11814', '小昕', 'GXTFUMhxFNphnBQn5D8PZVN5xVSDWvce2y', '1', '1490509577', '32');
INSERT INTO `yang_qianbao_address` VALUES ('284', '12261', 'MP地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490510045', '32');
INSERT INTO `yang_qianbao_address` VALUES ('285', '12646', '离线钱包', 'GP23Ze4vUmQNPpzBJPAokJpeDgMtsnLXSR', '1', '1490510063', '32');
INSERT INTO `yang_qianbao_address` VALUES ('286', '12646', '路彬彬', 'Gfrmo2KEw7W3dSEW2vn7sEFKnvnCipgdSZ', '1', '1490510113', '32');
INSERT INTO `yang_qianbao_address` VALUES ('287', '12646', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490510138', '32');
INSERT INTO `yang_qianbao_address` VALUES ('288', '12582', '吴琼', 'GWjYbRCUuV7ZNeWrbfY9ZDmbRrp7MifJ5c', '1', '1490510392', '32');
INSERT INTO `yang_qianbao_address` VALUES ('289', '12619', '激活后台', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490510854', '32');
INSERT INTO `yang_qianbao_address` VALUES ('290', '12619', 'w', ' GMd7ZAFzdKbXN6kn1pJt54m2TcjduV6u3r    ', '1', '1490511523', '32');
INSERT INTO `yang_qianbao_address` VALUES ('291', '12300', '1', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490511850', '32');
INSERT INTO `yang_qianbao_address` VALUES ('292', '11874', '111', 'GceaaJ29X4poFw9112uhH9DAhpQ89e57Ae', '-3', '1490512255', '32');
INSERT INTO `yang_qianbao_address` VALUES ('293', '11874', '手提', 'GceaaJ29X4poFw9112uhH9DAhpQ89e57Ae', '1', '1490512301', '32');
INSERT INTO `yang_qianbao_address` VALUES ('294', '11874', '前海钱包地址', 'GPmh889ztenGdwLGXqD7FZ9mmaVkCNZkg1', '1', '1490512413', '32');
INSERT INTO `yang_qianbao_address` VALUES ('295', '12261', '自由之翼', 'Gfrmo2KEw7W3dSEW2vn7sEFKnvnCipgdSZ', '1', '1490512736', '32');
INSERT INTO `yang_qianbao_address` VALUES ('296', '12511', '战神', 'GYmsp9kzpS8N5yhe6aYZ297yNsuCe89Lvm', '1', '1490513329', '32');
INSERT INTO `yang_qianbao_address` VALUES ('297', '11842', '11', 'GXSbLXX9q5sq5Zw15tHwo4r4U8uQdVzRP8', '1', '1490513474', '32');
INSERT INTO `yang_qianbao_address` VALUES ('298', '12631', '离线钱包', 'GNmRrQ2gSkKstGQoXrK1XMwjtMNjdG4NLs', '1', '1490513591', '32');
INSERT INTO `yang_qianbao_address` VALUES ('299', '12168', '111', 'GQR2niEWM3JGRYbgcicBQ7cVcCNxkveDjL', '-3', '1490513793', '32');
INSERT INTO `yang_qianbao_address` VALUES ('300', '12168', '998', 'GfhK6RWXSoefbBEyn3JuNR39BhZ1j8pQbx', '-3', '1490514002', '32');
INSERT INTO `yang_qianbao_address` VALUES ('301', '12012', '1958', 'GTQ7ZXPNzvt5ouA5vFyfWxxBRDE8i8WYYp', '-3', '1490514496', '32');
INSERT INTO `yang_qianbao_address` VALUES ('302', '12168', '陈姐冷', 'GVqxMwp9Q4GLFevBAr1KwpAiDDC7KsHvF8', '1', '1490514535', '32');
INSERT INTO `yang_qianbao_address` VALUES ('303', '12012', '100', 'GJGSsxs73WydqJeDHWbjXybqRmD9vZqEit', '-3', '1490514646', '32');
INSERT INTO `yang_qianbao_address` VALUES ('304', '12479', 'MP公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490515157', '32');
INSERT INTO `yang_qianbao_address` VALUES ('305', '12166', '系统', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490515373', '32');
INSERT INTO `yang_qianbao_address` VALUES ('306', '11826', '598', ' GWSAuV17yjtt8uNipjmM2Jha781iGs36iF', '-3', '1490515923', '32');
INSERT INTO `yang_qianbao_address` VALUES ('307', '12647', '公司账户', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490515942', '32');
INSERT INTO `yang_qianbao_address` VALUES ('308', '11826', '600', 'GPwrZxqTd8PNhNCKcgnZeaf3MP5YZcXt7V', '-3', '1490516048', '32');
INSERT INTO `yang_qianbao_address` VALUES ('309', '12648', '地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490516260', '32');
INSERT INTO `yang_qianbao_address` VALUES ('310', '11761', '朱青平前海', 'GPKMkiTKBqDvMt5e1HyNGXKmbWSTLPbcyK', '1', '1490516543', '32');
INSERT INTO `yang_qianbao_address` VALUES ('311', '11753', 'xnl188', 'GSbM693hUJHUzYSrZ3SbJTTfk79WvHTkzb', '-3', '1490516769', '32');
INSERT INTO `yang_qianbao_address` VALUES ('312', '12648', '地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490516781', '32');
INSERT INTO `yang_qianbao_address` VALUES ('313', '12097', '提币', 'GW49U6hg5prRyeLK1MKb5Zk83iHsEsM5UZ', '-3', '1490516925', '32');
INSERT INTO `yang_qianbao_address` VALUES ('314', '11753', 'h999', 'GfgBpsZBjQJg6iXkXNJJc1yGooDvq295iv', '-3', '1490516940', '32');
INSERT INTO `yang_qianbao_address` VALUES ('315', '12647', '赵健祥', 'GRjhM2HwXePNf9ksV6cWGpqs4NvzStuNkr', '1', '1490517158', '32');
INSERT INTO `yang_qianbao_address` VALUES ('316', '12667', '我的冷钱包', 'GKh637Q5CZxxgUENjQGxqRk1PCDvMCVJZ3', '1', '1490517161', '32');
INSERT INTO `yang_qianbao_address` VALUES ('317', '12677', 'MP平台钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490517365', '32');
INSERT INTO `yang_qianbao_address` VALUES ('318', '12666', '陆春定', 'GSNvTvgqHmP6B8QHj5eYrvcF4fZX8rQ1z9', '1', '1490517467', '32');
INSERT INTO `yang_qianbao_address` VALUES ('319', '12672', 'MP', 'GWcEsHrtQJL3RsmjGRN3hWjd3j6gJtV4Pp', '1', '1490517655', '32');
INSERT INTO `yang_qianbao_address` VALUES ('320', '11826', '3802', 'GbsJxc3M2vHbgkuyaw6Ut81dKmbUfYUHUb', '-3', '1490518305', '32');
INSERT INTO `yang_qianbao_address` VALUES ('321', '11761', '朱青平离线钱包', 'GPLB54PATJTEGXoB8CYz8j477aEU2YeXSh', '1', '1490518635', '32');
INSERT INTO `yang_qianbao_address` VALUES ('322', '12684', '李发', 'GUWUZmb5Dcr8peCNPvHhaHFZoQUCxi1dSK', '1', '1490519006', '32');
INSERT INTO `yang_qianbao_address` VALUES ('323', '12606', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490519660', '32');
INSERT INTO `yang_qianbao_address` VALUES ('324', '11931', '刘永和', 'GbCdMvRVw8pSKSYE65ny7NcXUJhiUrm1MA', '1', '1490519702', '32');
INSERT INTO `yang_qianbao_address` VALUES ('325', '12606', '赵健祥', 'GRjhM2HwXePNf9ksV6cWGpqs4NvzStuNkr', '1', '1490519722', '32');
INSERT INTO `yang_qianbao_address` VALUES ('326', '12110', '打款', 'Gej2j3UWjG7RDLM75sBPdDeJHuR4trHeZf', '-3', '1490519892', '32');
INSERT INTO `yang_qianbao_address` VALUES ('327', '12481', '笔记本冷钱包', 'GX9PAwVMAN5Q7NtCV56sP9RT1QJF2GXopF', '1', '1490520207', '32');
INSERT INTO `yang_qianbao_address` VALUES ('328', '12097', '提币', 'Gb49wKjaoKuQ2QGu66Tn3DYVhuD7a8QERG', '1', '1490520526', '32');
INSERT INTO `yang_qianbao_address` VALUES ('329', '12300', 'a', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490520540', '32');
INSERT INTO `yang_qianbao_address` VALUES ('330', '12682', 'g币钱包史鹏', 'GZLQhQ3Vk3L2Y7D4kqQGrGUEFKqY93ZiDC', '1', '1490520600', '32');
INSERT INTO `yang_qianbao_address` VALUES ('331', '12506', 'hyc8626激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490520605', '32');
INSERT INTO `yang_qianbao_address` VALUES ('332', '12706', 'MP平台钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490520681', '32');
INSERT INTO `yang_qianbao_address` VALUES ('333', '11826', '3802', 'GbsJxc3M2vHbgkuyaw6Ut81dKmbUfYUHUb', '-3', '1490520810', '32');
INSERT INTO `yang_qianbao_address` VALUES ('334', '12506', 'hyc8626拍单', 'Gh7PitNs2h2vu64QxZr3Y48JDWbQtaUYzZ', '1', '1490521029', '32');
INSERT INTO `yang_qianbao_address` VALUES ('335', '12110', 'ghhgj', 'Gf4UeNx9A4dZPNFPaCBvVpqXSwHXmPHFvG', '-3', '1490521218', '32');
INSERT INTO `yang_qianbao_address` VALUES ('336', '12703', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490521423', '32');
INSERT INTO `yang_qianbao_address` VALUES ('337', '12675', '激活账号', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490521656', '32');
INSERT INTO `yang_qianbao_address` VALUES ('338', '12675', 'zzz', 'GZCT22adjyWBJd1RZGKcfXuHUnaKWE34gt', '1', '1490521897', '32');
INSERT INTO `yang_qianbao_address` VALUES ('339', '12708', '11', 'GRqiBwS4GaHu9cW6pQBt8szxYuSPj5EwJL', '1', '1490523015', '32');
INSERT INTO `yang_qianbao_address` VALUES ('340', '12119', '张秀珍', 'GZixizvtV87aNVLeFWoqVzXhqk5i2KHABn', '-3', '1490523781', '32');
INSERT INTO `yang_qianbao_address` VALUES ('341', '11816', '向昌松的热钱包', 'GSs4qMjwC61Wos1UJHsqwRsiQwX2xf1GfW', '1', '1490523786', '32');
INSERT INTO `yang_qianbao_address` VALUES ('342', '12119', '张秀珍', 'Ggx7F3PUB2A7gpge5hoEHbv4mUdMCgiquM', '1', '1490523920', '32');
INSERT INTO `yang_qianbao_address` VALUES ('343', '12706', '我的前海钱包', 'GTjHh1tvpLRRfrvG1jqPAQEH7DTwm5VHVq', '1', '1490524237', '32');
INSERT INTO `yang_qianbao_address` VALUES ('344', '12252', '激活平台', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490524274', '32');
INSERT INTO `yang_qianbao_address` VALUES ('345', '12596', 'lmy888', 'Gdrw97M1CwrBoupqGgcvteY3bvPWqbqcvV', '1', '1490524618', '32');
INSERT INTO `yang_qianbao_address` VALUES ('346', '11946', '离线', 'GTFmJakg5L6TKz5QkeQbzs8kqgR83QfYuj', '1', '1490524707', '32');
INSERT INTO `yang_qianbao_address` VALUES ('347', '11805', '水春平', 'GJq8Tt8UW2rtqZrykX8WYjr9fXgqbhfwi5', '1', '1490525472', '32');
INSERT INTO `yang_qianbao_address` VALUES ('348', '12734', 'MP平台钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490525624', '32');
INSERT INTO `yang_qianbao_address` VALUES ('349', '12732', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490526178', '32');
INSERT INTO `yang_qianbao_address` VALUES ('350', '12681', '许琴前海', 'GeRHWTUykszucfszGZuBPkDDnKzETgiMrv', '1', '1490526205', '32');
INSERT INTO `yang_qianbao_address` VALUES ('351', '12749', '排单', 'GfHUMFj8wApfiXjKPsMER7FR8NFAJqrq3z', '1', '1490527329', '32');
INSERT INTO `yang_qianbao_address` VALUES ('352', '12739', '我的冷钱包', 'GgYYVSexbJEtiZG9neQrZHAVLisVDZSUHV', '1', '1490527497', '32');
INSERT INTO `yang_qianbao_address` VALUES ('353', '12501', '受益人昵称:yudong', 'GZ3TBpStVYby2eZASznZWGUJHUY2eGyvh3', '-3', '1490527878', '32');
INSERT INTO `yang_qianbao_address` VALUES ('354', '12700', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490528614', '32');
INSERT INTO `yang_qianbao_address` VALUES ('355', '11802', '1', 'GVSaAFooEYARQetGsir3BhQ4rgqDcLK9RZ', '1', '1490528626', '32');
INSERT INTO `yang_qianbao_address` VALUES ('356', '12012', '10', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '-3', '1490528762', '32');
INSERT INTO `yang_qianbao_address` VALUES ('357', '12717', '张海涛', 'GU6DLhNBeame7ZEqLYMv1ANiEShzTQbV6w', '1', '1490528890', '32');
INSERT INTO `yang_qianbao_address` VALUES ('358', '12629', '简绍芳', 'GcVntWw8yL31dr2THeNHGEg6BvvTew8qSV', '1', '1490528943', '32');
INSERT INTO `yang_qianbao_address` VALUES ('359', '12289', 'qq', 'GJpBQ5nLBWuHgc4eQP6VM64qawYZzmFTHH', '1', '1490528968', '32');
INSERT INTO `yang_qianbao_address` VALUES ('360', '12439', '沈佳芬', ' GbJFrJedvg4HMjvvZhdX33iPkqjPXKty9W', '1', '1490529163', '32');
INSERT INTO `yang_qianbao_address` VALUES ('361', '12746', '转币', 'GSo1j7SdgXQQ75q8F3qDrJjirqwCoyeyoE', '1', '1490529415', '32');
INSERT INTO `yang_qianbao_address` VALUES ('362', '12289', '111', 'GV3FAwsXrK1qfUzYTibPdrxhN4BSApPbKz', '1', '1490529419', '32');
INSERT INTO `yang_qianbao_address` VALUES ('363', '12622', '欧阳增平', 'Gf5gxuuV1dSNpMfwJvmKBXajHgVGGoxwqY', '1', '1490529453', '32');
INSERT INTO `yang_qianbao_address` VALUES ('364', '12622', '欧阳增平离线钱包', 'GWrL6iy1c2cpWwgunt2dJNd2ri9B9Lb4pg', '1', '1490529624', '32');
INSERT INTO `yang_qianbao_address` VALUES ('365', '12147', '自己前海钱包', 'GMqKNWJAvPqwtJ9Dk3SxbmQGQoDLhdSG4N', '1', '1490530926', '32');
INSERT INTO `yang_qianbao_address` VALUES ('366', '12150', '应志芳的百必亡', 'GWbcDFsPAp8eJMTRCh117LkhATW7gqTqHF', '1', '1490531800', '32');
INSERT INTO `yang_qianbao_address` VALUES ('367', '12501', '受益人昵称:syy888', 'GfyE44eNxxhqmhpBQkABx2uKbDd1MEF2zd', '1', '1490531908', '32');
INSERT INTO `yang_qianbao_address` VALUES ('368', '12150', '李惠泉的百币网', 'GQPeRT1zCzkzTHvkGMpzwcZfkQQU3W9zdK', '1', '1490532798', '32');
INSERT INTO `yang_qianbao_address` VALUES ('369', '12569', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490532808', '32');
INSERT INTO `yang_qianbao_address` VALUES ('370', '12150', '高英智', 'GcKvxBAQUG8i2nxfeVAdSTJvqvoo8sQJF1', '1', '1490533306', '32');
INSERT INTO `yang_qianbao_address` VALUES ('371', '12778', '冷钱包', 'GNuWVvDrcsvmonS3ghsZEw6rv5E9EJvANY', '1', '1490534812', '32');
INSERT INTO `yang_qianbao_address` VALUES ('372', '12110', 'gdg', ' GLFJ6k7dpSAzbLBACp6Hdw1F3xDJzbrK4z', '-3', '1490534893', '32');
INSERT INTO `yang_qianbao_address` VALUES ('373', '12110', 'hgj', ' GUB1jxk9dzWXbYqM7AUtuzzkZo3qHJzGyX', '-3', '1490535752', '32');
INSERT INTO `yang_qianbao_address` VALUES ('374', '12684', '李发（前海）', 'GKhDoWzcGg6zGQGt3LrTp8H4n5FGJz1rCN', '1', '1490536808', '32');
INSERT INTO `yang_qianbao_address` VALUES ('375', '12700', '一凡', 'GKdQEW3kDTrCVUPWGMPmqRA9S79zEA3dVo', '1', '1490536915', '32');
INSERT INTO `yang_qianbao_address` VALUES ('376', '12805', '老瓦前海钱包地址', 'GTijxw4UXb4Qbdadd4DVNRcHk5hGUqbjNS', '1', '1490540538', '32');
INSERT INTO `yang_qianbao_address` VALUES ('377', '12805', '老瓦离线钱包地址', 'GWpK4gRiGNZYS9yVhtSa3SAoBBvGKfhbd6', '1', '1490540657', '32');
INSERT INTO `yang_qianbao_address` VALUES ('378', '11799', '老瓦百币网钱包地址', 'GSZL7KoUeKNvhqFTK6Qg8ESmjvX5mCiU3f', '-3', '1490540810', '32');
INSERT INTO `yang_qianbao_address` VALUES ('379', '12332', '张卫祥钱包', 'GNKcnW1NuiMCc8bUUz85wXDpBJi2acqhCo', '1', '1490540886', '32');
INSERT INTO `yang_qianbao_address` VALUES ('380', '12768', '金库', 'GN6iTQ3oezoimDjxFWAvgcxjR7krtHoYox', '1', '1490544688', '32');
INSERT INTO `yang_qianbao_address` VALUES ('381', '11922', 'nn888', 'GgRsdnrfX84Q2gsewUQNF52nYFG4tYmVQq', '-3', '1490576008', '32');
INSERT INTO `yang_qianbao_address` VALUES ('382', '12148', '杨勇前海', 'GZ8bPNs6aWhbjore58WS41Tr5aqGPJ68hV', '1', '1490576246', '32');
INSERT INTO `yang_qianbao_address` VALUES ('383', '11922', 'ww888', 'GgRsdnrfX84Q2gsewUQNF52nYFG4tYmVQq', '-3', '1490576273', '32');
INSERT INTO `yang_qianbao_address` VALUES ('384', '11922', 'zlw1966', 'GPyW2qriwWesTfGBGuwWbhruSLStjPTaKm', '-3', '1490576964', '32');
INSERT INTO `yang_qianbao_address` VALUES ('385', '11922', 'qhm188', 'Ga5z5Tv6WpZi2cmwFF1ZLRK6pE494gmMyA', '-3', '1490577401', '32');
INSERT INTO `yang_qianbao_address` VALUES ('386', '11971', '王鑫前海线上钱包', 'GREi8PJ61aJw6EiMeh46QpZKPQ6mV68JMY', '1', '1490577506', '32');
INSERT INTO `yang_qianbao_address` VALUES ('387', '12826', '1', 'GJjvZGuPGGsmQQib6NPUR7CSvcoLWTVzuQ', '-3', '1490578751', '32');
INSERT INTO `yang_qianbao_address` VALUES ('388', '11883', '林晓红百币钱包', 'GeKLnUNtRqunnUkNZK7qMNUVjDdMdrvAGX', '1', '1490578965', '32');
INSERT INTO `yang_qianbao_address` VALUES ('389', '12606', '赵健祥百币钱包', 'GcH1WAZUUDAAsU3H3YZcTnDf3YbK7WDUwB', '1', '1490579132', '32');
INSERT INTO `yang_qianbao_address` VALUES ('390', '11922', 'lhr60761', 'GVg8tqdbJgJRBaw4aKPGm4cRoB2UurawCS', '1', '1490579132', '32');
INSERT INTO `yang_qianbao_address` VALUES ('391', '12012', '100', 'GVhVCGawmdWcUG9uCzvAxc1ofGxFMLxGKq', '-3', '1490580866', '32');
INSERT INTO `yang_qianbao_address` VALUES ('392', '12690', '我的前海钱包', 'GXBYh1dUQq4D2PyAwaZF6FR8m7pyj1qLes', '1', '1490581001', '32');
INSERT INTO `yang_qianbao_address` VALUES ('393', '11826', '2000', 'GSNvTvgqHmP6B8QHj5eYrvcF4fZX8rQ1z9', '-3', '1490581274', '32');
INSERT INTO `yang_qianbao_address` VALUES ('394', '12599', '郑家飞－前海交易所', 'GW73Vz65sq8P4qf9RXwd4v69aUMXG1dgXK', '1', '1490581646', '32');
INSERT INTO `yang_qianbao_address` VALUES ('395', '12178', '378', 'GMUo2G6WoAqDveWjgCcZknuLK5BrDwLbqb', '1', '1490582073', '32');
INSERT INTO `yang_qianbao_address` VALUES ('396', '12332', '张卫祥钱包2', 'GK4KiHmvVSjgEtaQdkG9u1Wc5Hi27pRP7S', '1', '1490582845', '32');
INSERT INTO `yang_qianbao_address` VALUES ('397', '11766', '金海', 'GNpAozmj35qh21EJip69F4BLDeMoP2SXSb', '1', '1490582956', '32');
INSERT INTO `yang_qianbao_address` VALUES ('398', '12651', '我的冷包', 'GTFs1KjV8JSJaa36VFwLjLfhD1NVQm3Q4N', '1', '1490583208', '32');
INSERT INTO `yang_qianbao_address` VALUES ('399', '12178', '1622', 'GZ659TCAVe1KooUWfaDTUG1bZd35QbRpyE', '1', '1490583316', '32');
INSERT INTO `yang_qianbao_address` VALUES ('400', '12853', '楼俊前海', 'GYDdzvBeS3zCHqxiMZoLrSRqBSKhHc9LWr', '1', '1490583652', '32');
INSERT INTO `yang_qianbao_address` VALUES ('401', '12853', '公司后台', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490584151', '32');
INSERT INTO `yang_qianbao_address` VALUES ('402', '12651', '段冷包', 'GdSugUHbypWWFeQPqFxMafQrxK1NjPYnQ7', '1', '1490584572', '32');
INSERT INTO `yang_qianbao_address` VALUES ('403', '12545', '李学康', 'GXeDgfiiJjsmtxwa4mdEJF5ZH8sHiSm7rZ', '1', '1490585282', '32');
INSERT INTO `yang_qianbao_address` VALUES ('404', '12655', '168zlf', 'GbsJxc3M2vHbgkuyaw6Ut81dKmbUfYUHUb', '1', '1490585643', '32');
INSERT INTO `yang_qianbao_address` VALUES ('405', '12655', 'zxf1788', 'GZYZ3GDQH6rarJjYPkpoZjaJsZUEDF5okM', '1', '1490585874', '32');
INSERT INTO `yang_qianbao_address` VALUES ('406', '12655', '888520', 'GTFmJakg5L6TKz5QkeQbzs8kqgR83QfYuj', '1', '1490586024', '32');
INSERT INTO `yang_qianbao_address` VALUES ('407', '12655', 'zlx002', 'GQF8XLPj3USBekkwC7Zx46J3LFbY2GijXR', '1', '1490586207', '32');
INSERT INTO `yang_qianbao_address` VALUES ('408', '12835', 'zb001', 'GQF8XLPj3USBekkwC7Zx46J3LFbY2GijXR', '-3', '1490586865', '32');
INSERT INTO `yang_qianbao_address` VALUES ('409', '12218', '我的前海地址', ' GWJzsK25x9i8F8WaybMmHnGxqih26Mi23K', '1', '1490587045', '32');
INSERT INTO `yang_qianbao_address` VALUES ('410', '12634', '周建萍', 'GZdtG7DjTDgfLbe8J7k19DBWYcV5D6jksM', '1', '1490587729', '32');
INSERT INTO `yang_qianbao_address` VALUES ('411', '11826', '我的冷钱包', 'Gcs25nMuz9T8jYBvKynHXeVZQWdMyXGSaG', '1', '1490587768', '32');
INSERT INTO `yang_qianbao_address` VALUES ('412', '12835', '前海', 'GJkqMxaGGXUqfPWVvhmNB65EhVHj7T2qqV', '1', '1490587777', '32');
INSERT INTO `yang_qianbao_address` VALUES ('413', '12289', 'lsg', 'GeFtt9t7JaptC76WQdwer16DkQxmRyZXzN', '1', '1490588010', '32');
INSERT INTO `yang_qianbao_address` VALUES ('414', '12729', '磊磊海', 'GWD21gmXKUopzh2hybLMpo2d2hF9eYEy8r', '1', '1490588352', '32');
INSERT INTO `yang_qianbao_address` VALUES ('415', '11826', '800', 'Gb4jdDy7ptzoztF7DZmWwGtA4L58kfBtPF', '1', '1490588986', '32');
INSERT INTO `yang_qianbao_address` VALUES ('416', '12218', 'G币离线钱包', 'GLbcNte6uhbUMq6qCnRrU515eKhHTHaJaV', '-3', '1490589000', '32');
INSERT INTO `yang_qianbao_address` VALUES ('417', '11826', '500', 'GL27U7eUvWTMqBY1d5BLs7Wg545WPcMqq4', '1', '1490589278', '32');
INSERT INTO `yang_qianbao_address` VALUES ('418', '12889', '前海01', 'GfME55uv7TtsH8U1KuqTkasrGdLCYfHNG5', '1', '1490589502', '32');
INSERT INTO `yang_qianbao_address` VALUES ('419', '12885', '公司钱包', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490589814', '32');
INSERT INTO `yang_qianbao_address` VALUES ('420', '12134', '高英之', 'GcKvxBAQUG8i2nxfeVAdSTJvqvoo8sQJF1', '1', '1490590128', '32');
INSERT INTO `yang_qianbao_address` VALUES ('421', '12192', '我的冷钱包，店里', 'Gbp39YbtRnR5AmPWFnyJyh6McH1CxM81Cp', '1', '1490590171', '32');
INSERT INTO `yang_qianbao_address` VALUES ('422', '12218', '阿良的前海地址', 'GWjYbRCUuV7ZNeWrbfY9ZDmbRrp7MifJ5c', '1', '1490590297', '32');
INSERT INTO `yang_qianbao_address` VALUES ('423', '12730', '前海王志远', 'GfPKnZx9M8ofkUEqkhDizAfznhqjk4ucQo', '1', '1490590521', '32');
INSERT INTO `yang_qianbao_address` VALUES ('424', '12729', '磊离线钱包', 'GL4KVqGodFXDy61NwPYaJ1S7J1dDMRtWUV', '1', '1490590846', '32');
INSERT INTO `yang_qianbao_address` VALUES ('425', '11733', '浅海', 'GgWwquiWWxWk3mKETRqmocET2PzYZCjv4n', '1', '1490591172', '32');
INSERT INTO `yang_qianbao_address` VALUES ('426', '12582', '前海钱包', 'GKU4BBvGd2Vm4hjEtHuA4pmH1TAG1S3BWY', '1', '1490591313', '32');
INSERT INTO `yang_qianbao_address` VALUES ('427', '12801', 'zj', 'Gdjv1jMJveEEZXfSRHjvc8sN3S8Hgbhx5Z', '1', '1490591433', '32');
INSERT INTO `yang_qianbao_address` VALUES ('428', '12769', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490591628', '32');
INSERT INTO `yang_qianbao_address` VALUES ('429', '12900', '公司地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490591785', '32');
INSERT INTO `yang_qianbao_address` VALUES ('430', '12890', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490591804', '32');
INSERT INTO `yang_qianbao_address` VALUES ('431', '12886', '无敌', 'GSo3eWdgZsi3vRbumR7KhW1ayJTRPT3Shi', '1', '1490591869', '32');
INSERT INTO `yang_qianbao_address` VALUES ('432', '12107', 'lj', 'GYYcjUxJZABkFYZa2tikWAo5bDr1EE8LyK', '1', '1490592273', '32');
INSERT INTO `yang_qianbao_address` VALUES ('433', '12872', '我的冷钱包', 'GMrvw5X54yU2dDEEF1aDarLeMDV3VkqKXv', '1', '1490592638', '32');
INSERT INTO `yang_qianbao_address` VALUES ('434', '12717', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490592826', '32');
INSERT INTO `yang_qianbao_address` VALUES ('435', '11909', '我的离线钱包地址', 'GVsuLhzGAaQLEVTcfjAbgxLzcEiNtjLk6r', '1', '1490592846', '32');
INSERT INTO `yang_qianbao_address` VALUES ('436', '12150', 'l李征宇', 'GKkjm8oq8zvbGLqS1YPCdd5qi3PmaJNa3p', '1', '1490592946', '32');
INSERT INTO `yang_qianbao_address` VALUES ('437', '12717', '春天', ' GbRowwVFx2JUB6PmmtZV3ezz7mZceUyUTR', '1', '1490593085', '32');
INSERT INTO `yang_qianbao_address` VALUES ('438', '11753', '前海于', 'GZvWAqSxRbqfTFG9NSpLx2S1dqQLRKBfJN', '1', '1490593564', '32');
INSERT INTO `yang_qianbao_address` VALUES ('439', '11889', 'kxshuma168', 'GPSJ956S66evrKtMfhKJGPrP2DouLxJ8JD', '1', '1490593649', '32');
INSERT INTO `yang_qianbao_address` VALUES ('440', '11909', '我的前海钱包地址', 'GSFHBX9efGNHwCGiEg96zUkLB9uaB4rwZg', '1', '1490593649', '32');
INSERT INTO `yang_qianbao_address` VALUES ('441', '11921', '程侠', 'GS1gemQnfJHGmvX2KD81DZbd7gXMN3Egjo', '1', '1490593770', '32');
INSERT INTO `yang_qianbao_address` VALUES ('442', '12906', '1', 'GgRQKLvbLBVRuEXZsgw1PEBAJyUQkETaq5', '1', '1490594254', '32');
INSERT INTO `yang_qianbao_address` VALUES ('443', '11816', 'yzh629', 'GUp49bANKqDKwNYfe2fmiSsVC6PdXJxRxm', '1', '1490594255', '32');
INSERT INTO `yang_qianbao_address` VALUES ('444', '12150', '李思亿', 'GK3f5ZdMHX2xeX58nK6qdP7FaWnzyy3Xwy', '1', '1490594370', '32');
INSERT INTO `yang_qianbao_address` VALUES ('445', '11769', '2', 'GeCMyWuNSoNq6paEjB3mjpj9puM4dXSkCy', '1', '1490594714', '32');
INSERT INTO `yang_qianbao_address` VALUES ('446', '12530', 'MP公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490594767', '32');
INSERT INTO `yang_qianbao_address` VALUES ('447', '11772', '前海', 'GPgGPHWsQy3BLTn7DU1ZrPnepokyja3bm6', '1', '1490594785', '32');
INSERT INTO `yang_qianbao_address` VALUES ('448', '12602', '周敏', 'GfKeMvfaqSCYFWMYKQZzdVZKJ7ZByWbJNB', '1', '1490594835', '32');
INSERT INTO `yang_qianbao_address` VALUES ('449', '12041', 'qx1319', 'GPbPdibFhQzrH95W24LJLYCdfucLsKXpAP', '1', '1490594924', '32');
INSERT INTO `yang_qianbao_address` VALUES ('450', '12900', '乔', 'GbbYJWb6eJ1pVezCYvm5ij36R9LR3MMeEz', '1', '1490595440', '32');
INSERT INTO `yang_qianbao_address` VALUES ('451', '12808', '前海', 'GRZSCDMWGXehPkRx9CWAvYF7y1wssaTyKP', '1', '1490595536', '32');
INSERT INTO `yang_qianbao_address` VALUES ('452', '12066', '张海前钱包地址', 'GYDJBKwXKvP3p6nXjYKLzcX2YjQ8tNumkH', '-3', '1490595580', '32');
INSERT INTO `yang_qianbao_address` VALUES ('453', '12041', 'lj2016', 'GHvgJdWFhdbaANJN3677h81QwZTeeDqNAy', '1', '1490595591', '32');
INSERT INTO `yang_qianbao_address` VALUES ('454', '12741', '石远见', 'Gg1pAbCQFtvEtDpAjZmt11FF7UVpqr6fCo', '1', '1490595620', '32');
INSERT INTO `yang_qianbao_address` VALUES ('455', '12794', '李国磊', 'GfjEW7HYgjS61Y7AcQpwyvpYQMq1EtTN2f', '1', '1490595737', '32');
INSERT INTO `yang_qianbao_address` VALUES ('456', '12917', '前海地址', 'GSo3eWdgZsi3vRbumR7KhW1ayJTRPT3Shi', '1', '1490596292', '32');
INSERT INTO `yang_qianbao_address` VALUES ('457', '12066', '前海钱包张海', 'GYDJBKwXKvP3p6nXjYKLzcX2YjQ8tNumkH', '1', '1490596379', '32');
INSERT INTO `yang_qianbao_address` VALUES ('458', '12570', 'wu ', 'GWjYbRCUuV7ZNeWrbfY9ZDmbRrp7MifJ5c', '1', '1490596397', '32');
INSERT INTO `yang_qianbao_address` VALUES ('459', '11982', 'sj前海', 'GZ95Q9bmJrysLBAda2rcCcdP7DkCpu58TQ', '1', '1490596648', '32');
INSERT INTO `yang_qianbao_address` VALUES ('460', '12909', '公司地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490596890', '32');
INSERT INTO `yang_qianbao_address` VALUES ('461', '12012', '1622', 'GLZzdJF4Akvu7oVcWYuwk9B5k42F7GGHPo', '1', '1490596954', '32');
INSERT INTO `yang_qianbao_address` VALUES ('462', '12866', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490597064', '32');
INSERT INTO `yang_qianbao_address` VALUES ('463', '12741', '秦雷QH', 'GX1AYC54XSMki6sBjYsBmaNhiU1JGSmuFa', '1', '1490597087', '32');
INSERT INTO `yang_qianbao_address` VALUES ('464', '12920', '陈', 'GM9EmjvW56VvUumsrcuE7CJwvJp4oXUf3a', '1', '1490597157', '32');
INSERT INTO `yang_qianbao_address` VALUES ('465', '12775', '前海', 'GVaW4PFgnfYSaS4MnZQ7XGCd9L9amE3VG9', '1', '1490597279', '32');
INSERT INTO `yang_qianbao_address` VALUES ('466', '12110', 'hkh', 'GZ659TCAVe1KooUWfaDTUG1bZd35QbRpyE', '1', '1490597475', '32');
INSERT INTO `yang_qianbao_address` VALUES ('467', '12044', '0327-3', 'GbUmCTVf64TefaTfTkM2td9La7TqkDjTYD', '-3', '1490597731', '32');
INSERT INTO `yang_qianbao_address` VALUES ('468', '12466', '崔伟前海', 'GWub1BK7SSz77vA3WqJK6xJxQU4xi5WoNF', '1', '1490598003', '32');
INSERT INTO `yang_qianbao_address` VALUES ('469', '12898', '前海地址', 'Gc4mawpHZXnoAH9g1zi7ZHiM7YiHw7EPDq', '1', '1490598814', '32');
INSERT INTO `yang_qianbao_address` VALUES ('470', '11993', 'mqs', 'GQYuPxv43XHgaQE9gHJNHddtvzjMcJqQMr', '-3', '1490599022', '32');
INSERT INTO `yang_qianbao_address` VALUES ('471', '12918', 'ccccc', 'GSNbAFsLkjEXNDPCFtwbh8cAo9E1zNm3X8', '1', '1490599326', '32');
INSERT INTO `yang_qianbao_address` VALUES ('472', '141', 'aa', 'GYLumamCAhFcM3f7FUh9W7cQJgerAQXB7R', '-3', '1490599613', '32');
INSERT INTO `yang_qianbao_address` VALUES ('473', '12898', '钱包地址', 'GderpBBD1nP2rpuLbGqdXi9rjjaLv5FmTf', '1', '1490599692', '32');
INSERT INTO `yang_qianbao_address` VALUES ('474', '12051', '李飞', 'GNmRrQ2gSkKstGQoXrK1XMwjtMNjdG4NLs', '1', '1490599776', '32');
INSERT INTO `yang_qianbao_address` VALUES ('475', '12743', '前海颜梅', 'GNQJcBSeZgCgecuDsTfjHKCC95bM2e6fT6', '1', '1490600116', '32');
INSERT INTO `yang_qianbao_address` VALUES ('476', '11789', '刘昊鹏', 'GW49U6hg5prRyeLK1MKb5Zk83iHsEsM5UZ', '1', '1490600643', '32');
INSERT INTO `yang_qianbao_address` VALUES ('477', '12914', '前海', 'GK24biCNScD1zaL87cW2sbL4mW7Swyxdeu', '1', '1490600772', '32');
INSERT INTO `yang_qianbao_address` VALUES ('478', '12890', '1·钱包', 'GVmG1MiftETEmf8N83tvdgyvgEdhxn8n2Q', '1', '1490601001', '32');
INSERT INTO `yang_qianbao_address` VALUES ('479', '12315', '张仲辉DJDQhrmuqEpFUHMSdJqywPjDhqZ36', 'MSdJqywPjDhqZ36UoAjdHJDQhrmuqEpFUH', '-3', '1490601001', '34');
INSERT INTO `yang_qianbao_address` VALUES ('480', '12315', '张仲辉', 'MSdJqywPjDhqZ36UoAjdHJDQhrmuqEpFUH', '1', '1490601063', '34');
INSERT INTO `yang_qianbao_address` VALUES ('481', '12918', 'MP', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490601117', '32');
INSERT INTO `yang_qianbao_address` VALUES ('482', '12808', '黄', 'GRuQZktLtSiKtRsg9PiDzLquad8SK9WwYS', '1', '1490601306', '32');
INSERT INTO `yang_qianbao_address` VALUES ('483', '12933', '李芳雷', 'GMvdMDLXUHk1ihMmRyAjS1ETEe4VpxPxXi', '1', '1490601631', '32');
INSERT INTO `yang_qianbao_address` VALUES ('484', '141', '123', 'GYLumamCAhFcM3f7FUh9W7cQJgerAQXB7R', '1', '1490601858', '32');
INSERT INTO `yang_qianbao_address` VALUES ('485', '12044', '李小红（前海）', 'GUg7WN5enxVpww9JRHuN6fXvX5hUjNdXdd', '1', '1490602075', '32');
INSERT INTO `yang_qianbao_address` VALUES ('486', '12743', 'MP激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490603061', '32');
INSERT INTO `yang_qianbao_address` VALUES ('487', '12825', '马魏松', 'GLTBceMeqJ7Thoqf4qWjmSgNWrF1oWHBag', '1', '1490603213', '32');
INSERT INTO `yang_qianbao_address` VALUES ('488', '12110', 'gggggggggggggggggg', ' GYgW2FbFLRpSYmioivrKiRmH2ffiniNG72', '1', '1490603324', '32');
INSERT INTO `yang_qianbao_address` VALUES ('489', '12198', '卜采菊', 'GgfWXxGUk61dGfqfg9Xhtv5oAJExLjmQNq', '1', '1490604516', '32');
INSERT INTO `yang_qianbao_address` VALUES ('490', '12803', '元宝网', '1zduajduTgUPjjXbRBmtrHYLZcYrgH39p', '-3', '1490604587', '28');
INSERT INTO `yang_qianbao_address` VALUES ('491', '11826', '夏雪', 'GKHnG3a7h7ycQfAMXgPEHe7TUGhL4fhTr2', '-3', '1490604610', '32');
INSERT INTO `yang_qianbao_address` VALUES ('492', '12147', 'MP平台地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490604652', '32');
INSERT INTO `yang_qianbao_address` VALUES ('493', '12663', 'mp1', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490604737', '32');
INSERT INTO `yang_qianbao_address` VALUES ('494', '12450', '梁小兰', 'GV92H54BSJQqaWGjUXaVgUm8PXRxDA89xg', '1', '1490605682', '32');
INSERT INTO `yang_qianbao_address` VALUES ('495', '11761', '激活', 'GZn155wq7GGHv4ZDitsyiaKnWQrhvGSNpN', '1', '1490605890', '32');
INSERT INTO `yang_qianbao_address` VALUES ('496', '11850', '李晓燕', 'GKknxDvk7LSSm3AgAKfpHRrRvBedU9bNBu', '1', '1490606043', '32');
INSERT INTO `yang_qianbao_address` VALUES ('497', '12455', '孔祥芳冷钱包', 'GJ4DksNzrmYzQer3vftTa4VJiV9AfAaFYL', '1', '1490606477', '32');
INSERT INTO `yang_qianbao_address` VALUES ('498', '12926', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490606666', '32');
INSERT INTO `yang_qianbao_address` VALUES ('499', '11993', 'www', 'GUAc1uM2h7Sx95hefBKxtNqPC6Yh8tyvHs', '1', '1490606913', '32');
INSERT INTO `yang_qianbao_address` VALUES ('500', '12825', '我的冷钱包', 'GcYw8JvwYFgLgt7CxqVDEaMxr2YLuEtVN1', '1', '1490607116', '32');
INSERT INTO `yang_qianbao_address` VALUES ('501', '12518', '我的百币网钱包', 'GKRGqLMj7NciD1mwcrxw4ADTrCYEbiMgxB', '-3', '1490607414', '32');
INSERT INTO `yang_qianbao_address` VALUES ('502', '12945', '公司', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490607442', '32');
INSERT INTO `yang_qianbao_address` VALUES ('503', '12826', '1', 'GJjvZGuPGGsmQQib6NPUR7CSvcoLWTVzuQ', '1', '1490607465', '32');
INSERT INTO `yang_qianbao_address` VALUES ('504', '11889', 'MP', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490607524', '32');
INSERT INTO `yang_qianbao_address` VALUES ('505', '12926', '代理商', 'Gfrmo2KEw7W3dSEW2vn7sEFKnvnCipgdSZ', '1', '1490607680', '32');
INSERT INTO `yang_qianbao_address` VALUES ('506', '12012', '160', 'GYUDGFAjk6PYQv6cbVvWnZBpvgZJ3zoqt4', '1', '1490607957', '32');
INSERT INTO `yang_qianbao_address` VALUES ('507', '12204', '激活', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490610970', '32');
INSERT INTO `yang_qianbao_address` VALUES ('508', '12880', '地址', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490611107', '32');
INSERT INTO `yang_qianbao_address` VALUES ('509', '11771', '前海', 'GW7Mtq7ovPpiA3iQykEAZiBL9VEbFuw34r', '1', '1490611435', '32');
INSERT INTO `yang_qianbao_address` VALUES ('510', '12958', 'MP', 'GScWDYAjSb2SLpdno9vDNst5Vn8odhy8fJ', '1', '1490611486', '32');
INSERT INTO `yang_qianbao_address` VALUES ('511', '12986', 'qqq', 'GWwVv12VWqBedSa4RdofR9uLLSv3EDya9G', '1', '1491561768', '32');
INSERT INTO `yang_qianbao_address` VALUES ('512', '12986', 'qqq2', 'GJeLmi7RNuP6jMHaajFJhTbM7HApSCtqix', '1', '1491561862', '32');
INSERT INTO `yang_qianbao_address` VALUES ('513', '141', 'zcw ', 'GJtzBDbffP1FZrG7PDeAmNDojsZvyHW9Zz', '1', '1491615844', '32');
INSERT INTO `yang_qianbao_address` VALUES ('514', '141', 'fuwuqi', 'GWgK8fZohH11ZTfgHFvJCMq4c9EgJ8RSSv', '1', '1491616256', '32');
INSERT INTO `yang_qianbao_address` VALUES ('515', '141', 'pingguo', 'GWwVv12VWqBedSa4RdofR9uLLSv3EDya9G', '1', '1491618005', '32');
INSERT INTO `yang_qianbao_address` VALUES ('516', '12988', '李姐', 'GTJyphBZ5j7tq2gEoqxKpoQe5Yw9i28bs8', '1', '1491621750', '32');
INSERT INTO `yang_qianbao_address` VALUES ('517', '12988', '线下钱包', 'GWwVv12VWqBedSa4RdofR9uLLSv3EDya9G', '1', '1491623267', '32');
INSERT INTO `yang_qianbao_address` VALUES ('518', '12976', '002', 'Gafp1k9G87CdLnHdefQV5mgHK8jssD7PM7', '-3', '1491813976', '32');
INSERT INTO `yang_qianbao_address` VALUES ('519', '12976', '小周', 'GWwVv12VWqBedSa4RdofR9uLLSv3EDya9G', '1', '1491814230', '32');
INSERT INTO `yang_qianbao_address` VALUES ('520', '12990', 'aaa', 'GPErt6ZtujJkMnsm1mrMQEVJbP33ieRqCC', '-3', '1491886573', '32');
INSERT INTO `yang_qianbao_address` VALUES ('521', '12976', '002', 'GVRufThXZ6ker9zQzZ5ZkguouSpc9rWmCG', '1', '1491887582', '32');
INSERT INTO `yang_qianbao_address` VALUES ('522', '12991', '蓝蓝', 'GQ2LwHjgziDYW6L7C7tVVGmFeSUsv76a8Y', '-3', '1491889713', '32');
INSERT INTO `yang_qianbao_address` VALUES ('523', '12991', '提币服务器地址', 'Gf2SisAKhdj7isL6LASjGooTdL42J9mcdX', '-3', '1491891718', '32');
INSERT INTO `yang_qianbao_address` VALUES ('524', '12992', '002', 'Y8FftiCjW8cAmcEK33uWwLXM41zv85UyAp', '1', '1491894854', '33');
INSERT INTO `yang_qianbao_address` VALUES ('525', '12992', '002', 'bay7nKsiJ94uPm7T8wgAmQuV29GvEqis56', '1', '1491895064', '26');
INSERT INTO `yang_qianbao_address` VALUES ('526', '12991', 'lanlan ', 'GbePsSz44kGAMyFiH8tuwbmdQ2Ubq9NKVA', '-3', '1491897174', '32');
INSERT INTO `yang_qianbao_address` VALUES ('527', '12991', 'lanla', 'GUpPbNtTgHBUNsvT5bMZfqgcfw8Navc5Dk', '1', '1491898165', '32');
INSERT INTO `yang_qianbao_address` VALUES ('528', '12990', '尾号198', 'GPErt6ZtujJkMnsm1mrMQEVJbP33ieRqCC', '1', '1491899234', '32');
INSERT INTO `yang_qianbao_address` VALUES ('529', '12990', '尾号198', 'bWQNkdAoyxM2w7e5rsYnkq1rRQrchT1jd1', '1', '1491900083', '26');
INSERT INTO `yang_qianbao_address` VALUES ('530', '12990', '尾号198', 'Y3wLoRN4e7GReea13QoN4yUq518MZQsHtv ', '1', '1491900330', '33');
INSERT INTO `yang_qianbao_address` VALUES ('531', '12992', '002', 'GeABDFJVvshUseRAXmEynEBmAXUdRz37EN', '1', '1492135106', '32');
INSERT INTO `yang_qianbao_address` VALUES ('532', '12992', '002', 'bUDGX63DPafVc9sEfrDzSmZ66AxkBtj6KQ', '1', '1492156466', '26');
INSERT INTO `yang_qianbao_address` VALUES ('533', '12991', '兰兰', 'YK74CFDPN5V5JBCbH4doLuwmnmGrc1eUaW', '1', '1492156846', '33');
INSERT INTO `yang_qianbao_address` VALUES ('534', '12991', '兰兰', 'bGXNxbonZb7GhTZ37UqFeWy8i9eZKwoFzC', '1', '1492158308', '26');
INSERT INTO `yang_qianbao_address` VALUES ('535', '13003', '兰兰', 'bGXNxbonZb7GhTZ37UqFeWy8i9eZKwoFzC', '1', '1492572367', '26');

-- ----------------------------
-- Table structure for `yang_restaurant`
-- ----------------------------
DROP TABLE IF EXISTS `yang_restaurant`;
CREATE TABLE `yang_restaurant` (
  `restaurant_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '餐厅表',
  `restaurant_name` varchar(64) NOT NULL COMMENT '餐厅名称',
  `restaurant_logo` text NOT NULL COMMENT 'logo',
  `restaurant_address` varchar(128) NOT NULL COMMENT '地址',
  `start_time` varchar(128) NOT NULL COMMENT '营业时间',
  `bus` varchar(128) NOT NULL COMMENT '公交路线',
  `phone` varchar(128) NOT NULL COMMENT '联系方式',
  `centent` text NOT NULL COMMENT '简介内容',
  `status` tinyint(4) NOT NULL,
  `b_host_city` tinyint(4) NOT NULL COMMENT '餐厅所在城市',
  `c_host_city` tinyint(4) NOT NULL COMMENT '厂家所在城市',
  `add_time` varchar(11) NOT NULL COMMENT '添加时间',
  `check_time` varchar(11) NOT NULL COMMENT '确认时间（开启前台展示的时间）',
  `update_time` varchar(11) NOT NULL COMMENT '修改时间',
  `click_number` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `position` int(4) NOT NULL DEFAULT '0' COMMENT '是否热推 0不推 1热推',
  PRIMARY KEY (`restaurant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_restaurant
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_restaurant_flash`
-- ----------------------------
DROP TABLE IF EXISTS `yang_restaurant_flash`;
CREATE TABLE `yang_restaurant_flash` (
  `flash_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `pic` varchar(128) NOT NULL,
  `jump_url` varchar(128) NOT NULL COMMENT '跳转地址',
  `sort` int(16) NOT NULL COMMENT '排序',
  `type` varchar(16) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`flash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_restaurant_flash
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_reward_conf`
-- ----------------------------
DROP TABLE IF EXISTS `yang_reward_conf`;
CREATE TABLE `yang_reward_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL,
  `money` float(30,4) NOT NULL,
  `day` int(5) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sum` float(30,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_reward_conf
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_reward_log`
-- ----------------------------
DROP TABLE IF EXISTS `yang_reward_log`;
CREATE TABLE `yang_reward_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) NOT NULL,
  `money` float(30,4) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `add_time` int(15) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148913 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_reward_log
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_reward_reg`
-- ----------------------------
DROP TABLE IF EXISTS `yang_reward_reg`;
CREATE TABLE `yang_reward_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `money` float(30,4) NOT NULL COMMENT '总共分发钱数',
  `down_id` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL COMMENT '币种',
  `surplus_day` int(5) NOT NULL COMMENT '剩余天数',
  `sum_day` int(5) NOT NULL,
  `add_time` int(15) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态  0为正常  1为已经分发完成',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24931 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_reward_reg
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_sms`
-- ----------------------------
DROP TABLE IF EXISTS `yang_sms`;
CREATE TABLE `yang_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `from` varchar(50) NOT NULL,
  `add_time` varchar(25) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_tibi`
-- ----------------------------
DROP TABLE IF EXISTS `yang_tibi`;
CREATE TABLE `yang_tibi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `num` decimal(20,8) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0为提币中 1为提币成功  2为充值中 3位充值成功',
  `ti_id` varchar(128) NOT NULL,
  `check_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `fee` decimal(10,4) NOT NULL,
  `actual` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1277 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_tibi
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_0`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_0`;
CREATE TABLE `yang_trade_0` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9383 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_0
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_25`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_25`;
CREATE TABLE `yang_trade_25` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110045 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_25
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_26`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_26`;
CREATE TABLE `yang_trade_26` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9523 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_26
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_28`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_28`;
CREATE TABLE `yang_trade_28` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9383 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_28
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_32`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_32`;
CREATE TABLE `yang_trade_32` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9446 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_32
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_33`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_33`;
CREATE TABLE `yang_trade_33` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_33
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_34`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_34`;
CREATE TABLE `yang_trade_34` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9543 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_34
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_35`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_35`;
CREATE TABLE `yang_trade_35` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_35
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_36`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_36`;
CREATE TABLE `yang_trade_36` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_36
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_37`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_37`;
CREATE TABLE `yang_trade_37` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_37
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_trade_38`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade_38`;
CREATE TABLE `yang_trade_38` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `num` decimal(20,2) NOT NULL COMMENT '数量',
  `money` decimal(20,2) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade_38
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_website_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_website_bank`;
CREATE TABLE `yang_website_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(125) NOT NULL,
  `bank_adddress` varchar(252) NOT NULL,
  `bank_no` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_website_bank
-- ----------------------------
INSERT INTO `yang_website_bank` VALUES ('4', '刘敏', '招商银行成都清江支行', '6214  8312  8953  2357', '1');
INSERT INTO `yang_website_bank` VALUES ('5', '刘敏', '中国民生银行成都建设路支行', '6226 1920 0496 2304', '1');

-- ----------------------------
-- Table structure for `yang_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `yang_withdraw`;
CREATE TABLE `yang_withdraw` (
  `withdraw_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '提现表',
  `uid` int(32) NOT NULL COMMENT '用户id',
  `all_money` decimal(10,2) NOT NULL COMMENT '全部价格',
  `withdraw_fee` decimal(10,2) NOT NULL COMMENT '手续费',
  `money` decimal(10,2) NOT NULL COMMENT '实际价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `order_num` varchar(32) NOT NULL COMMENT '订单号',
  `check_time` int(10) NOT NULL COMMENT '审核时间',
  `admin_uid` int(32) NOT NULL COMMENT '审核操作人(管理员）',
  `bank_id` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1不通过2通过3审核中',
  PRIMARY KEY (`withdraw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_withdraw
-- ----------------------------

-- ----------------------------
-- View structure for `yang_financeall`
-- ----------------------------
DROP VIEW IF EXISTS `yang_financeall`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yang_financeall` AS (select `yang_finance_0`.`member_id` AS `member_id`,`yang_finance_0`.`type` AS `type`,`yang_finance_0`.`content` AS `content`,`yang_finance_0`.`money_type` AS `money_type`,`yang_finance_0`.`money` AS `money`,`yang_finance_0`.`add_time` AS `add_time`,`yang_finance_0`.`currency_id` AS `currency_id`,`yang_finance_0`.`ip` AS `ip` from `yang_finance_0`) union all (select `yang_finance_1`.`member_id` AS `member_id`,`yang_finance_1`.`type` AS `type`,`yang_finance_1`.`content` AS `content`,`yang_finance_1`.`money_type` AS `money_type`,`yang_finance_1`.`money` AS `money`,`yang_finance_1`.`add_time` AS `add_time`,`yang_finance_1`.`currency_id` AS `currency_id`,`yang_finance_1`.`ip` AS `ip` from `yang_finance_1`) union all (select `yang_finance_2`.`member_id` AS `member_id`,`yang_finance_2`.`type` AS `type`,`yang_finance_2`.`content` AS `content`,`yang_finance_2`.`money_type` AS `money_type`,`yang_finance_2`.`money` AS `money`,`yang_finance_2`.`add_time` AS `add_time`,`yang_finance_2`.`currency_id` AS `currency_id`,`yang_finance_2`.`ip` AS `ip` from `yang_finance_2`) union all (select `yang_finance_3`.`member_id` AS `member_id`,`yang_finance_3`.`type` AS `type`,`yang_finance_3`.`content` AS `content`,`yang_finance_3`.`money_type` AS `money_type`,`yang_finance_3`.`money` AS `money`,`yang_finance_3`.`add_time` AS `add_time`,`yang_finance_3`.`currency_id` AS `currency_id`,`yang_finance_3`.`ip` AS `ip` from `yang_finance_3`) union all (select `yang_finance_4`.`member_id` AS `member_id`,`yang_finance_4`.`type` AS `type`,`yang_finance_4`.`content` AS `content`,`yang_finance_4`.`money_type` AS `money_type`,`yang_finance_4`.`money` AS `money`,`yang_finance_4`.`add_time` AS `add_time`,`yang_finance_4`.`currency_id` AS `currency_id`,`yang_finance_4`.`ip` AS `ip` from `yang_finance_4`) union all (select `yang_finance_5`.`member_id` AS `member_id`,`yang_finance_5`.`type` AS `type`,`yang_finance_5`.`content` AS `content`,`yang_finance_5`.`money_type` AS `money_type`,`yang_finance_5`.`money` AS `money`,`yang_finance_5`.`add_time` AS `add_time`,`yang_finance_5`.`currency_id` AS `currency_id`,`yang_finance_5`.`ip` AS `ip` from `yang_finance_5`) union all (select `yang_finance_6`.`member_id` AS `member_id`,`yang_finance_6`.`type` AS `type`,`yang_finance_6`.`content` AS `content`,`yang_finance_6`.`money_type` AS `money_type`,`yang_finance_6`.`money` AS `money`,`yang_finance_6`.`add_time` AS `add_time`,`yang_finance_6`.`currency_id` AS `currency_id`,`yang_finance_6`.`ip` AS `ip` from `yang_finance_6`) union all (select `yang_finance_7`.`member_id` AS `member_id`,`yang_finance_7`.`type` AS `type`,`yang_finance_7`.`content` AS `content`,`yang_finance_7`.`money_type` AS `money_type`,`yang_finance_7`.`money` AS `money`,`yang_finance_7`.`add_time` AS `add_time`,`yang_finance_7`.`currency_id` AS `currency_id`,`yang_finance_7`.`ip` AS `ip` from `yang_finance_7`) union all (select `yang_finance_8`.`member_id` AS `member_id`,`yang_finance_8`.`type` AS `type`,`yang_finance_8`.`content` AS `content`,`yang_finance_8`.`money_type` AS `money_type`,`yang_finance_8`.`money` AS `money`,`yang_finance_8`.`add_time` AS `add_time`,`yang_finance_8`.`currency_id` AS `currency_id`,`yang_finance_8`.`ip` AS `ip` from `yang_finance_8`) union all (select `yang_finance_9`.`member_id` AS `member_id`,`yang_finance_9`.`type` AS `type`,`yang_finance_9`.`content` AS `content`,`yang_finance_9`.`money_type` AS `money_type`,`yang_finance_9`.`money` AS `money`,`yang_finance_9`.`add_time` AS `add_time`,`yang_finance_9`.`currency_id` AS `currency_id`,`yang_finance_9`.`ip` AS `ip` from `yang_finance_9`) ;
