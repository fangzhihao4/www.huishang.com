/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : classmate

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-03 09:30:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cls_address
-- ----------------------------
DROP TABLE IF EXISTS `cls_address`;
CREATE TABLE `cls_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(10) DEFAULT NULL,
  `address` int(10) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `is_order` tinyint(1) DEFAULT '0' COMMENT '是否买或者自己的 ',
  `total` float DEFAULT NULL,
  `frist` float DEFAULT NULL,
  `month` float DEFAULT NULL,
  `decorate` float DEFAULT NULL COMMENT '装修价钱',
  `de_time` int(11) DEFAULT NULL COMMENT '装修时间',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_address
-- ----------------------------

-- ----------------------------
-- Table structure for cls_car
-- ----------------------------
DROP TABLE IF EXISTS `cls_car`;
CREATE TABLE `cls_car` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brands` varchar(255) DEFAULT NULL COMMENT '品牌',
  `type` varchar(255) DEFAULT NULL COMMENT '型号',
  `total` float DEFAULT NULL,
  `frist` float DEFAULT NULL,
  `month` float DEFAULT NULL,
  `is_order` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_car
-- ----------------------------

-- ----------------------------
-- Table structure for cls_classuser
-- ----------------------------
DROP TABLE IF EXISTS `cls_classuser`;
CREATE TABLE `cls_classuser` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `oldname` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `orign` int(11) DEFAULT NULL COMMENT '籍贯',
  `length` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `nation` varchar(100) DEFAULT NULL COMMENT '民族',
  `cardip` varchar(18) DEFAULT NULL COMMENT '身份证',
  `brithday` int(11) DEFAULT NULL,
  `politics` varchar(255) DEFAULT NULL COMMENT '政治面貌',
  `wechat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_classuser
-- ----------------------------
INSERT INTO `cls_classuser` VALUES ('1', '里蜂胶', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('2', '秦嗨平', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('3', '涛事先', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('4', '猪苓里', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('5', '虎胆', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('6', '东蜀绣', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('7', '顺毛卷', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cls_classuser` VALUES ('8', '亲完地', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cls_group
-- ----------------------------
DROP TABLE IF EXISTS `cls_group`;
CREATE TABLE `cls_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_group
-- ----------------------------
INSERT INTO `cls_group` VALUES ('1', '1', '生活', null);
INSERT INTO `cls_group` VALUES ('2', '1', '节奏', null);
INSERT INTO `cls_group` VALUES ('3', '1', '悲伤', null);
INSERT INTO `cls_group` VALUES ('4', '1', '心情', null);
INSERT INTO `cls_group` VALUES ('5', '1', '快乐', null);

-- ----------------------------
-- Table structure for cls_job
-- ----------------------------
DROP TABLE IF EXISTS `cls_job`;
CREATE TABLE `cls_job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` int(10) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `money` varchar(255) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_job
-- ----------------------------

-- ----------------------------
-- Table structure for cls_phone
-- ----------------------------
DROP TABLE IF EXISTS `cls_phone`;
CREATE TABLE `cls_phone` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(10) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_phone
-- ----------------------------

-- ----------------------------
-- Table structure for cls_relation
-- ----------------------------
DROP TABLE IF EXISTS `cls_relation`;
CREATE TABLE `cls_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `relationship` text,
  `group_ip` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`class_id`,`group_ip`),
  KEY `group_ip` (`group_ip`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

-- ----------------------------
-- Records of cls_relation
-- ----------------------------
INSERT INTO `cls_relation` VALUES ('1', '1', '1', '', '1');
INSERT INTO `cls_relation` VALUES ('2', '1', '2', '4', '2');
INSERT INTO `cls_relation` VALUES ('3', '2', '3', 'rte ', '3');
INSERT INTO `cls_relation` VALUES ('4', '2', '4', '5345', '4');
INSERT INTO `cls_relation` VALUES ('5', '1', '5', null, '5');
INSERT INTO `cls_relation` VALUES ('6', '3', '6', null, '6');
INSERT INTO `cls_relation` VALUES ('7', '1', '7', null, '7');
INSERT INTO `cls_relation` VALUES ('8', '1', '8', null, '0');

-- ----------------------------
-- Table structure for cls_school
-- ----------------------------
DROP TABLE IF EXISTS `cls_school`;
CREATE TABLE `cls_school` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` int(10) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `grade` tinyint(4) DEFAULT NULL,
  `class` tinyint(4) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL COMMENT '学院',
  `subject` varchar(255) DEFAULT NULL COMMENT '专业',
  `teach` varchar(255) DEFAULT NULL,
  `schoolmaster` varchar(50) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_school
-- ----------------------------

-- ----------------------------
-- Table structure for cls_user
-- ----------------------------
DROP TABLE IF EXISTS `cls_user`;
CREATE TABLE `cls_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `openid` varchar(50) DEFAULT NULL COMMENT '原始注册ip',
  `ip` varchar(50) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL COMMENT '注册时间',
  `logintime` int(11) DEFAULT NULL COMMENT '登录时间',
  `staus` tinyint(1) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cls_user
-- ----------------------------
INSERT INTO `cls_user` VALUES ('1', null, 'user', '123123', null, null, null, null, '1', null);
INSERT INTO `cls_user` VALUES ('2', null, 'namess', null, null, null, null, null, null, null);
INSERT INTO `cls_user` VALUES ('3', null, 'ghdfg', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for test_grade
-- ----------------------------
DROP TABLE IF EXISTS `test_grade`;
CREATE TABLE `test_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_grade
-- ----------------------------
INSERT INTO `test_grade` VALUES ('1', '张三', '语文', '88');
INSERT INTO `test_grade` VALUES ('2', '张三', '数学', '92');
INSERT INTO `test_grade` VALUES ('3', '张三', '英语', '87');
INSERT INTO `test_grade` VALUES ('4', '李四', '语文', '86');
INSERT INTO `test_grade` VALUES ('5', '李四', '数学', '79');
INSERT INTO `test_grade` VALUES ('6', '李四', '英语', '94');
INSERT INTO `test_grade` VALUES ('7', '王五', '语文', '83');
INSERT INTO `test_grade` VALUES ('8', '王五', '数学', '93');
INSERT INTO `test_grade` VALUES ('9', '王五', '英语', '78');
