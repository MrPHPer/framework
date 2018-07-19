/*
Navicat MySQL Data Transfer

Source Server         : myCat
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : framework

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-19 21:39:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(45) DEFAULT NULL COMMENT '用户名',
  `content` text COMMENT '内容',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建于',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新于',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('20', 'qqq', 'qqq', '1531995909', '0');
INSERT INTO `msg` VALUES ('30', '11', '11', '1531999133', '1531999133');
INSERT INTO `msg` VALUES ('31', '11', '11', '1531999429', '1531999429');
INSERT INTO `msg` VALUES ('32', '11', '11', '1531999646', '1531999646');
INSERT INTO `msg` VALUES ('33', '22', '22', '1531999660', '1531999660');
INSERT INTO `msg` VALUES ('34', '22', '22', '1531999791', '1531999791');
INSERT INTO `msg` VALUES ('35', '222', '222', '1532005766', '0');
INSERT INTO `msg` VALUES ('36', '444', '4444', '1532005905', '1532005905');

-- ----------------------------
-- Table structure for t1
-- ----------------------------
DROP TABLE IF EXISTS `t1`;
CREATE TABLE `t1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(45) NOT NULL COMMENT '用户名',
  `pwd` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t1
-- ----------------------------
INSERT INTO `t1` VALUES ('1', 'a', 'aaaa');
INSERT INTO `t1` VALUES ('2', 'a', 'aaaa');
INSERT INTO `t1` VALUES ('3', 'a', 'aaaa');
INSERT INTO `t1` VALUES ('4', 'abc', '123');

-- ----------------------------
-- Table structure for t2
-- ----------------------------
DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(45) NOT NULL COMMENT '用户名',
  `pwd` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t2
-- ----------------------------
INSERT INTO `t2` VALUES ('1', 'a', 'aaaa');
INSERT INTO `t2` VALUES ('2', 'a', 'aaaa');
INSERT INTO `t2` VALUES ('3', 'a', 'aaaa');
INSERT INTO `t2` VALUES ('4', 'd', 'ddddd');

-- ----------------------------
-- Table structure for t4
-- ----------------------------
DROP TABLE IF EXISTS `t4`;
CREATE TABLE `t4` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(45) NOT NULL COMMENT '用户名',
  `pwd` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t4
-- ----------------------------
INSERT INTO `t4` VALUES ('1', 'a', 'aaaa');
INSERT INTO `t4` VALUES ('2', 'a', 'aaaa');
INSERT INTO `t4` VALUES ('3', 'a', 'aaaa');
