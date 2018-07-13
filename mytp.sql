/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : mytp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-13 16:38:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hongbao`
-- ----------------------------
DROP TABLE IF EXISTS `hongbao`;
CREATE TABLE `hongbao` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `miane` float DEFAULT NULL,
  `shangpin` varchar(50) DEFAULT NULL,
  `guize` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hongbao
-- ----------------------------
INSERT INTO `hongbao` VALUES ('1', '5', '飞科3元红包', '只限于飞科剃须刀r50使用，不可叠加', null, null, null, '1');
INSERT INTO `hongbao` VALUES ('2', '4', '飞科2元红包', '只限于飞科剃须刀r60使用，不可叠加', null, null, null, '1');

-- ----------------------------
-- Table structure for `lists`
-- ----------------------------
DROP TABLE IF EXISTS `lists`;
CREATE TABLE `lists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pro_id` int(10) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `staus` tinyint(1) DEFAULT NULL,
  `sum` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lists
-- ----------------------------
INSERT INTO `lists` VALUES ('1', '小程序特惠--正品飞科剃须刀', '1', '1', '87.5', '1', '15');
INSERT INTO `lists` VALUES ('2', '小程序特惠--正品飞科剃须刀11', '1', '1', '84.2', '1', '58');
INSERT INTO `lists` VALUES ('3', '剃须刀--正品飞科剃须刀', '2', '2', '321', '1', '24');
INSERT INTO `lists` VALUES ('4', '剃须刀--正品飞科剃须刀11', '2', '2', '421', '1', '53');

-- ----------------------------
-- Table structure for `pingtuan`
-- ----------------------------
DROP TABLE IF EXISTS `pingtuan`;
CREATE TABLE `pingtuan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `list_id` int(10) DEFAULT NULL,
  `addtime` int(15) DEFAULT NULL,
  `sum` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pingtuan
-- ----------------------------
INSERT INTO `pingtuan` VALUES ('1', '1', '1', null, '1', '58');

-- ----------------------------
-- Table structure for `pjlist`
-- ----------------------------
DROP TABLE IF EXISTS `pjlist`;
CREATE TABLE `pjlist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `selectImg` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `shuliang` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pjlist
-- ----------------------------

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) DEFAULT NULL,
  `addtime` int(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `selectImg` varchar(255) DEFAULT NULL,
  `selectFalg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '测试小程序特惠', null, '1', '/img/index/chanpin1.png', 'true');
INSERT INTO `project` VALUES ('2', '剃须刀', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('3', '电吹风', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('4', '直卷发器', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('5', '酸奶机', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('6', '护理机', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('7', '破壁机', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('8', '洗碗机', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('9', '净水器', null, '1', '/img/index/chanpin1.png', 'false');
INSERT INTO `project` VALUES ('10', '机器人', null, '1', '/img/index/chanpin1.png', 'false');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('2', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('3', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('4', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('5', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('6', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('7', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('8', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('9', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('10', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('11', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('12', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('13', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('14', '打个赌', 'fgd ');
INSERT INTO `user` VALUES ('15', '打个赌', 'fgd ');
