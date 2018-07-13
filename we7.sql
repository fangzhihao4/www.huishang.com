/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : we7

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-13 16:39:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ims_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'ISV5e6CX', '1', '0', '0', '0');
INSERT INTO `ims_account` VALUES ('2', '2', 'Tm47yL0u', '4', '0', '0', '0');

-- ----------------------------
-- Table structure for `ims_account_phoneapp`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_phoneapp
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_account_webapp`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_webapp
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_account_wechats`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', '4', '亲测网', '', '', '', '', '', '', '', '', '0', '', '', '1', '', '');

-- ----------------------------
-- Table structure for `ims_account_wxapp`
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wxapp
-- ----------------------------
INSERT INTO `ims_account_wxapp` VALUES ('2', '2', 'a1TH2iJOz2Fufti8877JU1IzouilV1jJ', 'X5l01KO1Nqc0n1T80q6t5659cELTe6LZL0zqLTO6cTC', '1', '', '1', 'wxd764b5bf847aee22', 'a6e2bf0f8d2bd439c2feedda2c661f38', '松江家电维修', '');

-- ----------------------------
-- Table structure for `ims_activity_clerks`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_clerks`;
CREATE TABLE `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联users表uid',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分兑换店员表';

-- ----------------------------
-- Records of ims_activity_clerks
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_clerk_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_clerk_menu`;
CREATE TABLE `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_clerk_menu
-- ----------------------------
INSERT INTO `ims_activity_clerk_menu` VALUES ('1', '0', '0', '0', 'mc', '快捷交易', '', '', '', 'mc_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('2', '0', '0', '1', '', '积分充值', 'fa fa-money', 'credit1', 'modal', 'mc_credit1', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('3', '0', '0', '1', '', '余额充值', 'fa fa-cny', 'credit2', 'modal', 'mc_credit2', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('4', '0', '0', '1', '', '消费', 'fa fa-usd', 'consume', 'modal', 'mc_consume', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('5', '0', '0', '1', '', '发放会员卡', 'fa fa-credit-card', 'card', 'modal', 'mc_card', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('6', '0', '0', '0', 'stat', '数据统计', '', '', '', 'stat_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('7', '0', '0', '6', '', '积分统计', 'fa fa-bar-chart', './index.php?c=site&a=entry&op=chart&do=statcredit1&m=we7_coupon', 'url', 'stat_credit1', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('8', '0', '0', '6', '', '余额统计', 'fa fa-bar-chart', './index.php?c=site&a=entry&op=chart&do=statcredit2&m=we7_coupon', 'url', 'stat_credit2', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('9', '0', '0', '6', '', '现金消费统计', 'fa fa-bar-chart', './index.php?c=site&a=entry&op=chart&do=statcash&m=we7_coupon', 'url', 'stat_cash', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('10', '0', '0', '6', '', '会员卡统计', 'fa fa-bar-chart', './index.php?c=site&a=entry&op=chart&do=statcard&m=we7_coupon', 'url', 'stat_card', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('11', '0', '0', '6', '', '收银台收款统计', 'fa fa-bar-chart', './index.php?c=site&a=entry&op=chart&do=statpaycenter&m=we7_coupon', 'url', 'stat_paycenter', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('12', '0', '0', '0', 'activity', '卡券核销', '', '', '', 'activity_card_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('16', '0', '0', '12', '', '卡券核销', 'fa fa-money', 'cardconsume', 'modal', 'coupon_consume', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('17', '0', '0', '0', 'paycenter', '收银台', '', '', '', 'paycenter_manage', '1');
INSERT INTO `ims_activity_clerk_menu` VALUES ('18', '0', '0', '17', '', '微信刷卡收款', 'fa fa-money', './index.php?c=paycenter&a=wxmicro&do=pay', 'url', 'paycenter_wxmicro_pay', '1');

-- ----------------------------
-- Table structure for `ims_activity_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange`;
CREATE TABLE `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extra` (`extra`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_exchange_trades`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades`;
CREATE TABLE `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL COMMENT '统一公号',
  `uid` int(10) unsigned NOT NULL COMMENT '用户(粉丝)id',
  `exid` int(10) unsigned NOT NULL COMMENT '兑换产品 exchangeid',
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '交换记录创建时间',
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='真实物品兑换记录表';

-- ----------------------------
-- Records of ims_activity_exchange_trades
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_exchange_trades_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_exchange_trades_shipping`;
CREATE TABLE `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态，0为正常，-1为关闭，1为已发货，2为已完成',
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '收件人',
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='真实物品兑换发货表';

-- ----------------------------
-- Records of ims_activity_exchange_trades_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_activity_stores`
-- ----------------------------
DROP TABLE IF EXISTS `ims_activity_stores`;
CREATE TABLE `ims_activity_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL COMMENT '1 审核通过 2 审核中 3审核未通过',
  `source` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1为系统门店，2为微信门店',
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `location_id` (`location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_activity_stores
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_article_news`
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_article_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_article_unread_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_attachment_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_attachment_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_basic_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_business`
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------
INSERT INTO `ims_core_attachment` VALUES ('1', '0', '1', 'headimg_1.jpg', 'images/0/2018/04/k1bj4329B1HhhZbhJCjIbMV3BlkkJ7.jpg', '1', '1524227193', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('2', '0', '1', 'qrcode_1.jpg', 'images/0/2018/04/mUTTu9tEgez539w28tb652313e9zEI.jpg', '1', '1524227205', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('3', '2', '1', '鲜花LOGO.png', 'images/2/2018/07/vqgog296Pqo9lOgo9k2GSo9o2NqlOq.png', '1', '1530863476', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('4', '2', '1', '20180608_191101_042.png', 'images/2/2018/07/d3swyhroL68yri408NZ22KKws6k8z3.png', '1', '1530865445', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('5', '2', '1', '油烟机清洗.jpg', 'images/2/2018/07/q35wJ059F6I06V8WWW8T90Wf00hgW6.jpg', '1', '1531372019', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('6', '2', '1', '空调维修.jpg', 'images/2/2018/07/zL4az6l0iC65uUP61wr6Cauz064454.jpg', '1', '1531373253', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('70', '2', '1', '12345.jpg', 'images/2/2018/07/uz6z0p8Rk8e3PGs6pKz7hrnR8k3Ep3.jpg', '1', '1531381934', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('69', '2', '1', '1234.jpg', 'images/2/2018/07/wRV9VZD9vdFg6vTvvRd35555V060fd.jpg', '1', '1531381666', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('68', '2', '1', '2.jpg', 'images/2/2018/07/L8ZZftbt88sWVBNQ9tn68z6Sx4n9jN.jpg', '1', '1531378852', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('67', '2', '1', '2.jpg', 'images/2/2018/07/K707g2G58c47cc2dt4z47fjN04ZFy2.jpg', '1', '1531378817', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('66', '2', '1', '20180712_134611_016.jpg', 'images/2/2018/07/pKssi8TKi09ztCc68I0Bcsu6Ca99yB.jpg', '1', '1531378388', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('65', '2', '1', '20180712_134611_015.jpg', 'images/2/2018/07/hOcaUU7Vhoic877qa7UOHrohi9auuo.jpg', '1', '1531378376', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('64', '2', '1', '20180712_134611_014.jpg', 'images/2/2018/07/EUGvc2NfU2GfxFnvFVP7Xz2oG0xgrR.jpg', '1', '1531378364', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('63', '2', '1', '20180712_134611_013.jpg', 'images/2/2018/07/M8YG4fWxqnuuX66y4n4QDsDwD68sqF.jpg', '1', '1531378354', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('62', '2', '1', '20180712_134611_012.jpg', 'images/2/2018/07/wYPXij7ZOPOWLaIK8Ao4JW2WAyJAtA.jpg', '1', '1531378340', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('61', '2', '1', '20180712_134611_011.jpg', 'images/2/2018/07/OMLcMKcq6fGfpfCCCgPToq70PFqccq.jpg', '1', '1531378328', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('60', '2', '1', '20180712_134611_010.jpg', 'images/2/2018/07/P83QDoQ6QGP56PHM9P9uqpUoh3cMmq.jpg', '1', '1531378315', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('59', '2', '1', '20180712_134611_009.jpg', 'images/2/2018/07/U0KDWs5KH0sSZdN1KmZ05N4k2WsK4Q.jpg', '1', '1531378302', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('58', '2', '1', '20180712_134611_008.jpg', 'images/2/2018/07/op3z0ZP6Zm6wpPpPpBD9dS3jS0TLsj.jpg', '1', '1531378291', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('57', '2', '1', '20180712_134611_007.jpg', 'images/2/2018/07/zsniMK10K0s0ui5ReSkIl5AAj50Rsi.jpg', '1', '1531378282', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('55', '2', '1', '20180712_134611_005.jpg', 'images/2/2018/07/cQZ5x0DD3iFfwW03799R89WizzrVei.jpg', '1', '1531378261', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('56', '2', '1', '20180712_134611_006.jpg', 'images/2/2018/07/qMj1jEg1a1Eeh1PhX1PmXy5ujw5uy9.jpg', '1', '1531378272', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('54', '2', '1', '20180712_134611_004.jpg', 'images/2/2018/07/Yjq5aehdqCs705ZJqDZ0EqPtoYok5z.jpg', '1', '1531378251', '', '-1');
INSERT INTO `ims_core_attachment` VALUES ('53', '2', '1', '2.jpg', 'images/2/2018/07/SlL2N7MSK3PMSk36MlUUvTLl3MY2l7.jpg', '1', '1531378243', '', '-1');

-- ----------------------------
-- Table structure for `ims_core_cache`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('account:ticket', 's:0:\"\";');
INSERT INTO `ims_core_cache` VALUES ('userbasefields', 'a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('usersfields', 'a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:6:{s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:7:\"cloudip\";a:2:{s:2:\"ip\";s:14:\"106.15.203.187\";s:6:\"expire\";i:1525544460;}s:9:\"copyright\";a:32:{s:6:\"status\";i:0;s:10:\"verifycode\";i:0;s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:0:\"\";s:3:\"url\";s:7:\"http://\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:0:\"\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:14:\"background_img\";s:0:\"\";s:6:\"slides\";s:2:\"N;\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:14:\"companyprofile\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"showhomepage\";i:0;s:13:\"leftmenufixed\";i:0;s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:10:\"log_status\";i:0;s:14:\"develop_status\";i:0;s:3:\"icp\";s:0:\"\";s:4:\"bind\";s:0:\"\";}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:all_cloud_upgrade_module:', 'a:2:{s:6:\"expire\";i:1525544177;s:4:\"data\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('system_frame', 'a:7:{s:5:\"store\";a:7:{s:5:\"title\";s:12:\"人人商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:68:\"./index.php?c=web&a=index.php?c=home&a=welcome&do=ext&m=ewei_shopv2&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:0;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:15:\"二维码管理\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:6:\"粉丝\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:4:{s:5:\"cloud\";a:2:{s:5:\"title\";s:9:\"云服务\";s:4:\"menu\";a:3:{s:14:\"system_profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统升级\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:15:\"permission_name\";s:20:\"system_cloud_upgrade\";s:4:\"icon\";s:11:\"wi wi-cache\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_register\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"注册站点\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=profile&\";s:15:\"permission_name\";s:21:\"system_cloud_register\";s:4:\"icon\";s:18:\"wi wi-registersite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_diagnose\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"云服务诊断\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=diagnose&\";s:15:\"permission_name\";s:21:\"system_cloud_diagnose\";s:4:\"icon\";s:14:\"wi wi-diagnose\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}}');
INSERT INTO `ims_core_cache` VALUES ('module_receive_enable', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wnjz_sun', 'a:31:{s:3:\"mid\";s:2:\"27\";s:4:\"name\";s:8:\"wnjz_sun\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:21:\"家政服务小程序\";s:7:\"version\";s:3:\"4.8\";s:7:\"ability\";s:12:\"柚子家政\";s:11:\"description\";s:18:\"小程序、商城\";s:6:\"author\";s:24:\"泉州大白网络科技\";s:3:\"url\";s:24:\"泉州大白网络科技\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:70:\"https://jiazheng.yuanchuangyc.cn/addons/wnjz_sun/icon.jpg?v=1530862235\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/basic/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:66:\"https://jiazheng.yuanchuangyc.cn/addons/news/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/music/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"Z\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:69:\"https://jiazheng.yuanchuangyc.cn/addons/userapi/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"H\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:70:\"https://jiazheng.yuanchuangyc.cn/addons/recharge/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"D\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:68:\"https://jiazheng.yuanchuangyc.cn/addons/custom/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:68:\"https://jiazheng.yuanchuangyc.cn/addons/images/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/video/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/voice/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"F\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/chats/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"W\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:68:\"https://jiazheng.yuanchuangyc.cn/addons/wxcard/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:paycenter', 'a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:11:\"description\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"S\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"https://jiazheng.yuanchuangyc.cn/addons/paycenter/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:store', 'a:31:{s:3:\"mid\";s:2:\"20\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:3:\"we7\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:1:\"Z\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"https://jiazheng.yuanchuangyc.cn/addons/store/icon.jpg?v=1530862080\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('unisetting:1', 'a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:1', 'a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:9:\"亲测网\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:73:\"https://jiazheng.yuanchuangyc.cn/attachment/headimg_1.jpg?time=1530862081\";s:6:\"qrcode\";s:72:\"https://jiazheng.yuanchuangyc.cn/attachment/qrcode_1.jpg?time=1530862081\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('upgrade', 'a:3:{s:7:\"upgrade\";b:0;s:4:\"data\";a:5:{s:5:\"errno\";N;s:7:\"message\";s:14:\"发生错误: \";s:5:\"files\";a:0:{}s:7:\"schemas\";a:0:{}s:7:\"upgrade\";b:0;}s:10:\"lastupdate\";i:1531444417;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module:all_uninstall', 'a:2:{s:6:\"expire\";i:1531448019;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules::', 'a:14:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:9:\"paycenter\";a:1:{s:4:\"name\";s:9:\"paycenter\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"wnjz_sun\";a:1:{s:4:\"name\";s:8:\"wnjz_sun\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:uni_group', 'a:1:{i:1;a:7:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";a:1:{s:7:\"style31\";a:3:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:7:\"style31\";s:5:\"title\";s:13:\"微赞style31\";}}s:7:\"uniacid\";s:1:\"0\";s:5:\"wxapp\";a:0:{}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:14:{i:0;s:8:\"wnjz_sun\";i:1;s:5:\"store\";i:2;s:9:\"paycenter\";i:3;s:6:\"wxcard\";i:4;s:5:\"chats\";i:5;s:5:\"voice\";i:6;s:5:\"video\";i:7;s:6:\"images\";i:8;s:6:\"custom\";i:9;s:8:\"recharge\";i:10;s:7:\"userapi\";i:11;s:5:\"music\";i:12;s:4:\"news\";i:13;s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:meEpP', 'a:1:{s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('unisetting:2', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:2', 'a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"a1TH2iJOz2Fufti8877JU1IzouilV1jJ\";s:14:\"encodingaeskey\";s:43:\"X5l01KO1Nqc0n1T80q6t5659cELTe6LZL0zqLTO6cTC\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:1:\"1\";s:3:\"key\";s:18:\"wxd764b5bf847aee22\";s:6:\"secret\";s:32:\"a6e2bf0f8d2bd439c2feedda2c661f38\";s:4:\"name\";s:18:\"松江家电维修\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxd764b5bf847aee22\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:73:\"https://jiazheng.yuanchuangyc.cn/attachment/headimg_2.jpg?time=1530862284\";s:6:\"qrcode\";s:72:\"https://jiazheng.yuanchuangyc.cn/attachment/qrcode_2.jpg?time=1530862284\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:2:1', 'a:14:{s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:8:\"wnjz_sun\";a:1:{s:4:\"name\";s:8:\"wnjz_sun\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:9:\"paycenter\";a:1:{s:4:\"name\";s:9:\"paycenter\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:wxapp_version:1', 'a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:9:\"很好用\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"27\";s:4:\"name\";s:8:\"wnjz_sun\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:21:\"家政服务小程序\";s:7:\"version\";s:3:\"4.8\";s:7:\"ability\";s:12:\"柚子家政\";s:11:\"description\";s:18:\"小程序、商城\";s:6:\"author\";s:24:\"泉州大白网络科技\";s:3:\"url\";s:24:\"泉州大白网络科技\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"J\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:70:\"https://jiazheng.yuanchuangyc.cn/addons/wnjz_sun/icon.jpg?v=1530862235\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1530862284\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:2:', 'a:14:{s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:8:\"wnjz_sun\";a:1:{s:4:\"name\";s:8:\"wnjz_sun\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:9:\"paycenter\";a:1:{s:4:\"name\";s:9:\"paycenter\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}}');
INSERT INTO `ims_core_cache` VALUES ('accesstoken:wxd764b5bf847aee22', 'a:2:{s:5:\"token\";s:157:\"11_dHQ1wLScvu6FllORMy5Sm5smCgsQ6epijg3kOWBWCz2WSg6kaDSeGRsVW7Wq2ufOZN5ssLogTfhIV1c5XplkFiAP0yecPg3rhV2SZ_QiGuuxGd5Xt1P50_kdsOHdhS51d6bAJperBNji-dlpPTMdACABFY\";s:6:\"expire\";i:1531451422;}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:sbgop', 'a:1:{s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:j1CH1', 'a:1:{s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:HMKhn', 'a:1:{s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:fLqE7', 'a:1:{s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:$cache_last_account_type', 's:5:\"wxapp\";');

-- ----------------------------
-- Table structure for `ims_core_cron`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_cron_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_job`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_core_job
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------
INSERT INTO `ims_core_menu` VALUES ('1', '0', '基础设置', 'platform', '', 'fa fa-cog', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('2', '1', '基本功能', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_basic_function', '', '');
INSERT INTO `ims_core_menu` VALUES ('3', '2', '文字回复', 'platform', './index.php?c=platform&a=reply&m=basic', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=basic', '0', 'url', '1', '1', 'platform_reply_basic', '', '');
INSERT INTO `ims_core_menu` VALUES ('4', '2', '图文回复', 'platform', './index.php?c=platform&a=reply&m=news', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=news', '0', 'url', '1', '1', 'platform_reply_news', '', '');
INSERT INTO `ims_core_menu` VALUES ('5', '2', '音乐回复', 'platform', './index.php?c=platform&a=reply&m=music', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=music', '0', 'url', '1', '1', 'platform_reply_music', '', '');
INSERT INTO `ims_core_menu` VALUES ('6', '2', '图片回复', 'platform', './index.php?c=platform&a=reply&m=images', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=images', '0', 'url', '1', '1', 'platform_reply_images', '', '');
INSERT INTO `ims_core_menu` VALUES ('7', '2', '语音回复', 'platform', './index.php?c=platform&a=reply&m=voice', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=voice', '0', 'url', '1', '1', 'platform_reply_voice', '', '');
INSERT INTO `ims_core_menu` VALUES ('8', '2', '视频回复', 'platform', './index.php?c=platform&a=reply&m=video', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=video', '0', 'url', '1', '1', 'platform_reply_video', '', '');
INSERT INTO `ims_core_menu` VALUES ('9', '2', '微信卡券回复', 'platform', './index.php?c=platform&a=reply&m=wxcard', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=wxcard', '0', 'url', '1', '1', 'platform_reply_wxcard', '', '');
INSERT INTO `ims_core_menu` VALUES ('10', '2', '自定义接口回复', 'platform', './index.php?c=platform&a=reply&m=userapi', 'fa fa-plus', './index.php?c=platform&a=reply&do=post&m=userapi', '0', 'url', '1', '1', 'platform_reply_userapi', '', '');
INSERT INTO `ims_core_menu` VALUES ('11', '2', '系统回复', 'platform', './index.php?c=platform&a=special&do=display&', '', '', '0', 'url', '1', '1', 'platform_reply_system', '', '');
INSERT INTO `ims_core_menu` VALUES ('12', '1', '高级功能', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_high_function', '', '');
INSERT INTO `ims_core_menu` VALUES ('13', '12', '常用服务接入', 'platform', './index.php?c=platform&a=service&do=switch&', '', '', '0', 'url', '1', '1', 'platform_service', '', '');
INSERT INTO `ims_core_menu` VALUES ('14', '12', '自定义菜单', 'platform', './index.php?c=platform&a=menu&', '', '', '0', 'url', '1', '1', 'platform_menu', '', '');
INSERT INTO `ims_core_menu` VALUES ('15', '12', '特殊消息回复', 'platform', './index.php?c=platform&a=special&do=message&', '', '', '0', 'url', '1', '1', 'platform_special', '', '');
INSERT INTO `ims_core_menu` VALUES ('16', '12', '二维码管理', 'platform', './index.php?c=platform&a=qr&', '', '', '0', 'url', '1', '1', 'platform_qr', '', '');
INSERT INTO `ims_core_menu` VALUES ('17', '12', '多客服接入', 'platform', './index.php?c=platform&a=reply&m=custom', '', '', '0', 'url', '1', '1', 'platform_reply_custom', '', '');
INSERT INTO `ims_core_menu` VALUES ('18', '12', '长链接二维码', 'platform', './index.php?c=platform&a=url2qr&', '', '', '0', 'url', '1', '1', 'platform_url2qr', '', '');
INSERT INTO `ims_core_menu` VALUES ('19', '1', '数据统计', 'platform', '', '', '', '0', 'url', '1', '1', 'platform_stat', '', '');
INSERT INTO `ims_core_menu` VALUES ('20', '19', '聊天记录', 'platform', './index.php?c=platform&a=stat&do=history&', '', '', '0', 'url', '1', '1', 'platform_stat_history', '', '');
INSERT INTO `ims_core_menu` VALUES ('21', '19', '回复规则使用情况', 'platform', './index.php?c=platform&a=stat&do=rule&', '', '', '0', 'url', '1', '1', 'platform_stat_rule', '', '');
INSERT INTO `ims_core_menu` VALUES ('22', '19', '关键字命中情况', 'platform', './index.php?c=platform&a=stat&do=keyword&', '', '', '0', 'url', '1', '1', 'platform_stat_keyword', '', '');
INSERT INTO `ims_core_menu` VALUES ('23', '19', '参数', 'platform', './index.php?c=platform&a=stat&do=setting&', '', '', '0', 'url', '1', '1', 'platform_stat_setting', '', '');
INSERT INTO `ims_core_menu` VALUES ('24', '0', '微站功能', 'site', '', 'fa fa-life-bouy', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('25', '24', '微站管理', 'site', '', '', '', '0', 'url', '1', '1', 'site_manage', '', '');
INSERT INTO `ims_core_menu` VALUES ('26', '25', '站点管理', 'site', './index.php?c=site&a=multi&do=display&', 'fa fa-plus', './index.php?c=site&a=multi&do=post&', '0', 'url', '1', '1', 'site_multi_display', '', '');
INSERT INTO `ims_core_menu` VALUES ('27', '25', '站点添加/编辑', 'site', '', '', '', '0', 'permission', '0', '1', 'site_multi_post', '', '');
INSERT INTO `ims_core_menu` VALUES ('28', '25', '站点删除', 'site', '', '', '', '0', 'permission', '0', '1', 'site_multi_del', '', '');
INSERT INTO `ims_core_menu` VALUES ('29', '25', '模板管理', 'site', './index.php?c=site&a=style&do=template&', '', '', '0', 'url', '1', '1', 'site_style_template', '', '');
INSERT INTO `ims_core_menu` VALUES ('30', '25', '模块模板扩展', 'site', './index.php?c=site&a=style&do=module&', '', '', '0', 'url', '1', '1', 'site_style_module', '', '');
INSERT INTO `ims_core_menu` VALUES ('31', '24', '特殊页面管理', 'site', '', '', '', '0', 'url', '1', '1', 'site_special_page', '', '');
INSERT INTO `ims_core_menu` VALUES ('32', '31', '会员中心', 'site', './index.php?c=site&a=editor&do=uc&', '', '', '0', 'url', '1', '1', 'site_editor_uc', '', '');
INSERT INTO `ims_core_menu` VALUES ('33', '31', '专题页面', 'site', './index.php?c=site&a=editor&do=page&', 'fa fa-plus', './index.php?c=site&a=editor&do=design&', '0', 'url', '1', '1', 'site_editor_page', '', '');
INSERT INTO `ims_core_menu` VALUES ('34', '24', '功能组件', 'site', '', '', '', '0', 'url', '1', '1', 'site_widget', '', '');
INSERT INTO `ims_core_menu` VALUES ('35', '34', '分类设置', 'site', './index.php?c=site&a=category&', '', '', '0', 'url', '1', '1', 'site_category', '', '');
INSERT INTO `ims_core_menu` VALUES ('36', '34', '文章管理', 'site', './index.php?c=site&a=article&', '', '', '0', 'url', '1', '1', 'site_article', '', '');
INSERT INTO `ims_core_menu` VALUES ('37', '0', '粉丝营销', 'mc', '', 'fa fa-gift', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('38', '37', '粉丝管理', 'mc', '', '', '', '0', 'url', '1', '1', 'mc_fans_manage', '', '');
INSERT INTO `ims_core_menu` VALUES ('39', '38', '粉丝分组', 'mc', './index.php?c=mc&a=fangroup&', '', '', '0', 'url', '1', '1', 'mc_fangroup', '', '');
INSERT INTO `ims_core_menu` VALUES ('40', '38', '粉丝', 'mc', './index.php?c=mc&a=fans&', '', '', '0', 'url', '1', '1', 'mc_fans', '', '');
INSERT INTO `ims_core_menu` VALUES ('41', '37', '会员中心', 'mc', '', '', '', '0', 'url', '1', '1', 'mc_members_manage', '', '');
INSERT INTO `ims_core_menu` VALUES ('42', '41', '会员中心关键字', 'mc', './index.php?c=platform&a=cover&do=mc&', '', '', '0', 'url', '1', '1', 'platform_cover_mc', '', '');
INSERT INTO `ims_core_menu` VALUES ('43', '41', '会员', 'mc', './index.php?c=mc&a=member&', 'fa fa-plus', './index.php?c=mc&a=member&do=add&', '0', 'url', '1', '1', 'mc_member', '', '');
INSERT INTO `ims_core_menu` VALUES ('44', '41', '会员组', 'mc', './index.php?c=mc&a=group&', '', '', '0', 'url', '1', '1', 'mc_group', '', '');
INSERT INTO `ims_core_menu` VALUES ('45', '37', '微信素材&群发', 'mc', '', '', '', '0', 'url', '1', '1', 'material_manage', '', '');
INSERT INTO `ims_core_menu` VALUES ('46', '45', '素材&群发', 'mc', './index.php?c=material&a=display&', '', '', '0', 'url', '1', '1', 'material_display', '', '');
INSERT INTO `ims_core_menu` VALUES ('47', '45', '定时群发', 'mc', './index.php?c=material&a=mass&', '', '', '0', 'url', '1', '1', 'material_mass', '', '');
INSERT INTO `ims_core_menu` VALUES ('48', '37', '统计中心', 'mc', '', '', '', '0', 'url', '1', '1', 'stat_center', '', '');
INSERT INTO `ims_core_menu` VALUES ('49', '48', '会员积分统计', 'mc', './index.php?c=stat&a=credit1&', '', '', '0', 'url', '1', '1', 'stat_credit1', '', '');
INSERT INTO `ims_core_menu` VALUES ('50', '48', '会员余额统计', 'mc', './index.php?c=stat&a=credit2&', '', '', '0', 'url', '1', '1', 'stat_credit2', '', '');
INSERT INTO `ims_core_menu` VALUES ('51', '0', '功能选项', 'setting', '', 'fa fa-umbrella', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('52', '51', '公众号选项', 'setting', '', '', '', '0', 'url', '1', '1', 'account_setting', '', '');
INSERT INTO `ims_core_menu` VALUES ('53', '52', '支付参数', 'setting', './index.php?c=profile&a=payment&', '', '', '0', 'url', '1', '1', 'profile_payment', '', '');
INSERT INTO `ims_core_menu` VALUES ('54', '52', '借用 oAuth 权限', 'setting', './index.php?c=mc&a=passport&do=oauth&', '', '', '0', 'url', '1', '1', 'mc_passport_oauth', '', '');
INSERT INTO `ims_core_menu` VALUES ('55', '52', '借用 JS 分享权限', 'setting', './index.php?c=profile&a=jsauth&', '', '', '0', 'url', '1', '1', 'profile_jsauth', '', '');
INSERT INTO `ims_core_menu` VALUES ('56', '52', '会员字段管理', 'setting', './index.php?c=mc&a=fields&', '', '', '0', 'url', '1', '1', 'mc_fields', '', '');
INSERT INTO `ims_core_menu` VALUES ('57', '52', '微信通知设置', 'setting', './index.php?c=mc&a=tplnotice&', '', '', '0', 'url', '1', '1', 'mc_tplnotice', '', '');
INSERT INTO `ims_core_menu` VALUES ('58', '51', '会员及粉丝选项', 'setting', '', '', '', '0', 'url', '1', '1', 'mc_setting', '', '');
INSERT INTO `ims_core_menu` VALUES ('59', '58', '积分设置', 'setting', './index.php?c=mc&a=credit&', '', '', '0', 'url', '1', '1', 'mc_credit', '', '');
INSERT INTO `ims_core_menu` VALUES ('60', '58', '注册设置', 'setting', './index.php?c=mc&a=passport&do=passport&', '', '', '0', 'url', '1', '1', 'mc_passport_passport', '', '');
INSERT INTO `ims_core_menu` VALUES ('61', '58', '粉丝同步设置', 'setting', './index.php?c=mc&a=passport&do=sync&', '', '', '0', 'url', '1', '1', 'mc_passport_sync', '', '');
INSERT INTO `ims_core_menu` VALUES ('62', '58', 'UC站点整合', 'setting', './index.php?c=mc&a=uc&', '', '', '0', 'url', '1', '1', 'mc_uc', '', '');
INSERT INTO `ims_core_menu` VALUES ('63', '51', '其他功能选项', 'setting', '', '', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('64', '0', '扩展功能', 'ext', '', 'fa fa-cubes', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('65', '64', '管理', 'ext', '', '', '', '0', 'url', '1', '1', '', '', '');
INSERT INTO `ims_core_menu` VALUES ('66', '65', '扩展功能管理', 'ext', './index.php?c=profile&a=module&', '', '', '0', 'url', '1', '1', 'profile_module', '', '');
INSERT INTO `ims_core_menu` VALUES ('67', '58', '邮件通知参数', 'setting', './index.php?c=profile&a=notify&', '', '', '0', 'url', '1', '1', 'profile_notify', '', '');
INSERT INTO `ims_core_menu` VALUES ('68', '0', '', '', '', '', '', '0', 'url', '1', '1', 'store', 'frame', '');

-- ----------------------------
-- Table structure for `ims_core_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_performance`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_queue`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_refundlog`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_resource`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_sendsms_log`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_core_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('2f2ca22e616bd32ed9ba0276250981d2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LswN\";i:1531382798;}', '1531386398');
INSERT INTO `ims_core_sessions` VALUES ('219011165336bcc6109498a41d36c618', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tCnj\";i:1531382795;}', '1531386395');
INSERT INTO `ims_core_sessions` VALUES ('addb55794d1aa1cbdaface96d46d1e67', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dgca\";i:1531382794;}', '1531386394');
INSERT INTO `ims_core_sessions` VALUES ('012d15f5f0f9b53915460d95d145ef47', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q11O\";i:1531382794;}', '1531386394');
INSERT INTO `ims_core_sessions` VALUES ('674c3d349104aaf9647bf561634b2eb3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qTV1\";i:1531382793;}', '1531386393');
INSERT INTO `ims_core_sessions` VALUES ('73ca7047cda4fac9d9d02f2631597075', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sqj2\";i:1531382653;}', '1531386253');
INSERT INTO `ims_core_sessions` VALUES ('f9f928a8997ca3f4f474cc499d783ab6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zAXz\";i:1531382647;}', '1531386247');
INSERT INTO `ims_core_sessions` VALUES ('c6366b53a5c12996146515d61536510c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TbNP\";i:1531382646;}', '1531386246');
INSERT INTO `ims_core_sessions` VALUES ('04be40a51d86ce6bd5484abe50ee4c9e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rnd5\";i:1531382645;}', '1531386245');
INSERT INTO `ims_core_sessions` VALUES ('9b3a9021aabd192a8602fd1e3b01110a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uVO4\";i:1531382619;}', '1531386219');
INSERT INTO `ims_core_sessions` VALUES ('4e93b02c175044fc95e8d4aff66171ef', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ipkk\";i:1531382610;}', '1531386210');
INSERT INTO `ims_core_sessions` VALUES ('066c2d6b028646bdd7714b67bb3aee42', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aZJA\";i:1531382609;}', '1531386209');
INSERT INTO `ims_core_sessions` VALUES ('1240d1f65cba3f4cf01f0b47ab249d0c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ku0f\";i:1531382609;}', '1531386209');
INSERT INTO `ims_core_sessions` VALUES ('62f9ccdefa577ad7be9c81c597d36fa2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mOaJ\";i:1531382608;}', '1531386208');
INSERT INTO `ims_core_sessions` VALUES ('b246bf8e4c4eb92e2d3f72ca7846a2a9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jSSw\";i:1531382605;}', '1531386205');
INSERT INTO `ims_core_sessions` VALUES ('d398ccc828b1a3d6763b274a06d9dbbe', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZJZo\";i:1531382601;}', '1531386201');
INSERT INTO `ims_core_sessions` VALUES ('74a984bd3e862b3c1b79c3e89d866ade', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6cQ\";i:1531382600;}', '1531386200');
INSERT INTO `ims_core_sessions` VALUES ('4cf293be4264e5930740fd0d3c1482c1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CM8F\";i:1531382600;}', '1531386200');
INSERT INTO `ims_core_sessions` VALUES ('14941f43a56ddf19724954266cca900c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IG5J\";i:1531382589;}', '1531386189');
INSERT INTO `ims_core_sessions` VALUES ('4956a82066b18a1e36d387c843231cc7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VUy7\";i:1531382589;}', '1531386189');
INSERT INTO `ims_core_sessions` VALUES ('80162c6d95d7f5d826f2dfc3bddcaf15', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ctx3\";i:1531382589;}', '1531386189');
INSERT INTO `ims_core_sessions` VALUES ('022b11bf04dd80b00316b7eabc12d184', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n0A0\";i:1531382580;}', '1531386180');
INSERT INTO `ims_core_sessions` VALUES ('7d721d73c72f93417e91bea0adb85669', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XPkV\";i:1531382579;}', '1531386179');
INSERT INTO `ims_core_sessions` VALUES ('343f380e73fa068573999c0be42095d0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vGp6\";i:1531382579;}', '1531386179');
INSERT INTO `ims_core_sessions` VALUES ('1639869daa7ba5d56a571b376cd35ac7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lhwA\";i:1531382578;}', '1531386178');
INSERT INTO `ims_core_sessions` VALUES ('3abf1108c9d635bcbac7105d6cc4fc18', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lrji\";i:1531382578;}', '1531386178');
INSERT INTO `ims_core_sessions` VALUES ('4d57640ba4fca1bf70b5a5a18aaf70ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oZ3g\";i:1531382578;}', '1531386178');
INSERT INTO `ims_core_sessions` VALUES ('a517f5b73454a59b4aebae4e93150116', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f224\";i:1531382577;}', '1531386177');
INSERT INTO `ims_core_sessions` VALUES ('4572969dcb0b1912c7b58d1b611ca400', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AlG0\";i:1531382571;}', '1531386171');
INSERT INTO `ims_core_sessions` VALUES ('dcd8b3d763c00c257a845cbf3a0c0ce6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HQ3B\";i:1531382570;}', '1531386170');
INSERT INTO `ims_core_sessions` VALUES ('996a521c89da6bdea70d72f4b01f3c8e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wo55\";i:1531382563;}', '1531386163');
INSERT INTO `ims_core_sessions` VALUES ('191fc350ff2b00d3368ef45befb94d3f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bj9F\";i:1531382562;}', '1531386162');
INSERT INTO `ims_core_sessions` VALUES ('edb5cce6f31091e844e2feb21b17c4a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lpSW\";i:1531382561;}', '1531386161');
INSERT INTO `ims_core_sessions` VALUES ('1d138e55cd8890611ffc2618f8366737', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NAWw\";i:1531382561;}', '1531386161');
INSERT INTO `ims_core_sessions` VALUES ('474002b18d70a2f66fd8e5c773c68d7d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xAC3\";i:1531382561;}', '1531386161');
INSERT INTO `ims_core_sessions` VALUES ('01a983e3ef030a2e6b54d9d9f440bd6f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yFqa\";i:1531382561;}', '1531386161');
INSERT INTO `ims_core_sessions` VALUES ('48391c451bf211f74e7508599fb4de0d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"az1e\";i:1531382560;}', '1531386160');
INSERT INTO `ims_core_sessions` VALUES ('0488835180308c05ef958710b76489c7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eMmx\";i:1531382560;}', '1531386160');
INSERT INTO `ims_core_sessions` VALUES ('272c1a1a61ae7147a1dbc3642ab455b2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l6dl\";i:1531382559;}', '1531386159');
INSERT INTO `ims_core_sessions` VALUES ('79db03f4bd73707735079882d3ceabbe', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Az04\";i:1531382558;}', '1531386158');
INSERT INTO `ims_core_sessions` VALUES ('4cd11e99a3f42dad22930571dd2713bc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y9cN\";i:1531382476;}', '1531386076');
INSERT INTO `ims_core_sessions` VALUES ('4ce72ac687fa8087f1a88d0ff8158634', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RRur\";i:1531382474;}', '1531386074');
INSERT INTO `ims_core_sessions` VALUES ('24bc42baf05e23ceadf447407c8a2271', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rD4P\";i:1531382474;}', '1531386074');
INSERT INTO `ims_core_sessions` VALUES ('5f5754117f527c93176c600c6e4256c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X5V5\";i:1531382472;}', '1531386072');
INSERT INTO `ims_core_sessions` VALUES ('2911ce33a66df3ebe3bf35ff5a9dca90', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V3tw\";i:1531382467;}', '1531386067');
INSERT INTO `ims_core_sessions` VALUES ('00400b2b46f2bb4d911cb2b9031cc9a3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D1Cv\";i:1531382467;}', '1531386067');
INSERT INTO `ims_core_sessions` VALUES ('13cf2cff4829a9460d8c730868f8404a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qv7t\";i:1531382466;}', '1531386066');
INSERT INTO `ims_core_sessions` VALUES ('a4f8fc68d8c16d20fcd3b9033cac248c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QROw\";i:1531382465;}', '1531386065');
INSERT INTO `ims_core_sessions` VALUES ('0e84f32ce8ec49dd7398d07de34bbe7f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u0hH\";i:1531382462;}', '1531386062');
INSERT INTO `ims_core_sessions` VALUES ('704f56fd5a6818781a483796bb834f62', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z595\";i:1531382462;}', '1531386062');
INSERT INTO `ims_core_sessions` VALUES ('79620ebbc3bd720b01dafdbc35c96b0c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yl6A\";i:1531382460;}', '1531386060');
INSERT INTO `ims_core_sessions` VALUES ('538e7a5bc72ed9585ea0581bd31b5efc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zafm\";i:1531382459;}', '1531386059');
INSERT INTO `ims_core_sessions` VALUES ('e50aa3da6318d9d5d253b5aa961b7298', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nyYi\";i:1531382449;}', '1531386049');
INSERT INTO `ims_core_sessions` VALUES ('e727fd3de6ba10e611935c0f61b24d80', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eG66\";i:1531382449;}', '1531386049');
INSERT INTO `ims_core_sessions` VALUES ('7a23c7a2f303693c7492125a31650459', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ASsS\";i:1531382447;}', '1531386047');
INSERT INTO `ims_core_sessions` VALUES ('90f91dda8b820aecbd1f39fa9988be15', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F8NK\";i:1531382447;}', '1531386047');
INSERT INTO `ims_core_sessions` VALUES ('8832682ffe4d214167ee5d311a5c5c62', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i75E\";i:1531382446;}', '1531386046');
INSERT INTO `ims_core_sessions` VALUES ('89e821f7d6be2b9674a679b3844ffb52', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kfkr\";i:1531382445;}', '1531386045');
INSERT INTO `ims_core_sessions` VALUES ('b54eb1f9a3caa789af342b8eda248a16', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G93z\";i:1531382444;}', '1531386044');
INSERT INTO `ims_core_sessions` VALUES ('8cd9b7a9450330ae0d713c6e83f1b618', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RK28\";i:1531382442;}', '1531386042');
INSERT INTO `ims_core_sessions` VALUES ('624294afb9a681006b1d39a579710145', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iw2I\";i:1531382442;}', '1531386042');
INSERT INTO `ims_core_sessions` VALUES ('03e9c3c6e5ee121777f8d69f3389fba6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LgNB\";i:1531382442;}', '1531386042');
INSERT INTO `ims_core_sessions` VALUES ('7975f6f127eb96ff5ea6de31aa3e901f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AKiX\";i:1531382442;}', '1531386042');
INSERT INTO `ims_core_sessions` VALUES ('b4661e042021cc5fe7304376ffee99e1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Znzd\";i:1531382434;}', '1531386034');
INSERT INTO `ims_core_sessions` VALUES ('829d978c05b30ecd07867fd029cf2fd5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gTEC\";i:1531382433;}', '1531386033');
INSERT INTO `ims_core_sessions` VALUES ('10f62329fd658157e8ee15ffa275434a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tORv\";i:1531382419;}', '1531386019');
INSERT INTO `ims_core_sessions` VALUES ('ada2fa4f0bf954d6b8243762fe876753', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"phKH\";i:1531382419;}', '1531386019');
INSERT INTO `ims_core_sessions` VALUES ('1f04ff489b6b44a69a29c334b720e5ee', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q2LZ\";i:1531382419;}', '1531386019');
INSERT INTO `ims_core_sessions` VALUES ('6af16850b4cfa0a124899214a3b2dd9a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TJcd\";i:1531382419;}', '1531386019');
INSERT INTO `ims_core_sessions` VALUES ('470bedd7eb40b7cef43bb82ce4e0dc35', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x42S\";i:1531382418;}', '1531386018');
INSERT INTO `ims_core_sessions` VALUES ('1b7074013793b2449ad28981bc01b8e8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XC5C\";i:1531382381;}', '1531385981');
INSERT INTO `ims_core_sessions` VALUES ('3af939105ef1aa1bf09544d6014baffd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DZ9B\";i:1531382381;}', '1531385981');
INSERT INTO `ims_core_sessions` VALUES ('375058308cbba963cb332dfe847325cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n9a0\";i:1531382381;}', '1531385981');
INSERT INTO `ims_core_sessions` VALUES ('22a3f55959ddd9785121c5f58095cf5c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aTO1\";i:1531382381;}', '1531385981');
INSERT INTO `ims_core_sessions` VALUES ('b3e5dcc76e5c12807d0c840740191036', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HMJi\";i:1531382380;}', '1531385980');
INSERT INTO `ims_core_sessions` VALUES ('3c2ed8840985216a142ccc0d041fe26a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ncgq\";i:1531382380;}', '1531385980');
INSERT INTO `ims_core_sessions` VALUES ('593fb8f1d3a2e63046803df98e50a0de', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sT8L\";i:1531382379;}', '1531385979');
INSERT INTO `ims_core_sessions` VALUES ('485c14f25dc158ef906df9c8c150827e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EM13\";i:1531382378;}', '1531385978');
INSERT INTO `ims_core_sessions` VALUES ('4bd23629802e94023633f3de8cdc854b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eVT5\";i:1531382378;}', '1531385978');
INSERT INTO `ims_core_sessions` VALUES ('34e919c52dfd3a4841f45a31314b8282', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dp4E\";i:1531382377;}', '1531385977');
INSERT INTO `ims_core_sessions` VALUES ('d1a70f638d82cef089e09ffccf3a21c5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GOg4\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('97b7ded895889d1ce145fc454400c638', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"imK8\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('930c3a823f347010f55df13cf7daf8e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v1xP\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('52926c2780263ff2d9ebf2bce1d282ad', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O80O\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('3bc5d6b6530bc4d04a7920ad19093255', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yQ7G\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('ca0c76bda08492971751139fcdee634f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jFfg\";i:1531382376;}', '1531385976');
INSERT INTO `ims_core_sessions` VALUES ('a972fb016ee2b70004362dc3958e9945', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a05x\";i:1531382374;}', '1531385974');
INSERT INTO `ims_core_sessions` VALUES ('069466ccb42efc1e8fb564fce1767cf3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6rr\";i:1531382370;}', '1531385970');
INSERT INTO `ims_core_sessions` VALUES ('96e710994d596796e977f9163f6d6113', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nq0N\";i:1531382370;}', '1531385970');
INSERT INTO `ims_core_sessions` VALUES ('d0766190bfdb89abac97273cb31e7bd7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BYHc\";i:1531382370;}', '1531385970');
INSERT INTO `ims_core_sessions` VALUES ('da357fc0cc78812f84ae5f4c10ef25e1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iwrb\";i:1531382370;}', '1531385970');
INSERT INTO `ims_core_sessions` VALUES ('71a13b0d7e5cab3ec0acdd2c6fe57e24', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DnNq\";i:1531382370;}', '1531385970');
INSERT INTO `ims_core_sessions` VALUES ('8c81de2d448eed92d547f5160e1843cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4N4\";i:1531382369;}', '1531385969');
INSERT INTO `ims_core_sessions` VALUES ('54bb7b26fbb28961174d6779c7541dba', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Up90\";i:1531382368;}', '1531385968');
INSERT INTO `ims_core_sessions` VALUES ('548908e107609ba7e57792f6af3a7f53', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l5b1\";i:1531382368;}', '1531385968');
INSERT INTO `ims_core_sessions` VALUES ('e92300e63786db11a7c323b1133ad874', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lf0f\";i:1531382365;}', '1531385965');
INSERT INTO `ims_core_sessions` VALUES ('088c0e63f2c92b599ad62cd35b727a53', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jf7H\";i:1531382365;}', '1531385965');
INSERT INTO `ims_core_sessions` VALUES ('5c892c7ff0b80869fea07d5f0a87f031', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mnmT\";i:1531382363;}', '1531385963');
INSERT INTO `ims_core_sessions` VALUES ('db3d34ecf217d6dabd0532b66a57571d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uR10\";i:1531382362;}', '1531385962');
INSERT INTO `ims_core_sessions` VALUES ('9e1765a0fa8470a53313f37fb8984a71', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T3EK\";i:1531382360;}', '1531385960');
INSERT INTO `ims_core_sessions` VALUES ('cc7a261351572f28faa56c28d3d7a224', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gKK7\";i:1531382360;}', '1531385960');
INSERT INTO `ims_core_sessions` VALUES ('7559a852d9c302b87ad4e4b869bcc6cf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E4c2\";i:1531382360;}', '1531385960');
INSERT INTO `ims_core_sessions` VALUES ('f992d29eaaa2ee71bccde727a57c724f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V4UU\";i:1531382360;}', '1531385960');
INSERT INTO `ims_core_sessions` VALUES ('52a591da8ca0302a9f6f16a22f6d19b2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"li8r\";i:1531382360;}', '1531385960');
INSERT INTO `ims_core_sessions` VALUES ('736b59360a83258535b4816b2afe103c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jUtq\";i:1531382358;}', '1531385958');
INSERT INTO `ims_core_sessions` VALUES ('2a0d9d3e518927aac30bd05067da721d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mM3O\";i:1531382358;}', '1531385958');
INSERT INTO `ims_core_sessions` VALUES ('1f485dae84ca29d2567ea932b7d3a706', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iMmk\";i:1531382358;}', '1531385958');
INSERT INTO `ims_core_sessions` VALUES ('fb3a73627776375ac36c3d8608ef7647', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HMp8\";i:1531382358;}', '1531385958');
INSERT INTO `ims_core_sessions` VALUES ('c83ffab5c8282c1f1b2cc8b19ae2d137', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k51U\";i:1531382358;}', '1531385958');
INSERT INTO `ims_core_sessions` VALUES ('0f999fc7cf2433a7e8adb724a66ca697', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sL77\";i:1531382338;}', '1531385938');
INSERT INTO `ims_core_sessions` VALUES ('6dfd7029152c03ee31e1776b5051558b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjLx\";i:1531382338;}', '1531385938');
INSERT INTO `ims_core_sessions` VALUES ('6374a5a34e58f988bf28d52d58f92958', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tkji\";i:1531382338;}', '1531385938');
INSERT INTO `ims_core_sessions` VALUES ('0a7606527f48ca776b7027fd5e98ef89', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vchh\";i:1531382337;}', '1531385937');
INSERT INTO `ims_core_sessions` VALUES ('dc07de5f8a085ca51bca5a43c7f269b3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"knQE\";i:1531382332;}', '1531385932');
INSERT INTO `ims_core_sessions` VALUES ('3e80841b878a26898fdc042c00a1d31d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UvuV\";i:1531382332;}', '1531385932');
INSERT INTO `ims_core_sessions` VALUES ('2ad78d1bf0bc9e46862ef76b988ae6e6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JZ8q\";i:1531382332;}', '1531385932');
INSERT INTO `ims_core_sessions` VALUES ('5b567142c02383dd19754283704b2919', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EgjF\";i:1531382330;}', '1531385930');
INSERT INTO `ims_core_sessions` VALUES ('da52ff709263af4386ab454de2a35a26', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SDJI\";i:1531382330;}', '1531385930');
INSERT INTO `ims_core_sessions` VALUES ('d2d569cd3f8ee1321377a26bbb25ebaf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i2GC\";i:1531382329;}', '1531385929');
INSERT INTO `ims_core_sessions` VALUES ('59124f5f356c0b566266e9bf9a23cbb7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rmLc\";i:1531382329;}', '1531385929');
INSERT INTO `ims_core_sessions` VALUES ('dad219d15a9537229d016f8cc4711ce8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H91u\";i:1531382328;}', '1531385928');
INSERT INTO `ims_core_sessions` VALUES ('af3b848265ff0d575fdcc59552be2b09', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fe82\";i:1531382328;}', '1531385928');
INSERT INTO `ims_core_sessions` VALUES ('e4c6677610a9ea6e7a6bfb5d3c94d3c4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vMs0\";i:1531382327;}', '1531385927');
INSERT INTO `ims_core_sessions` VALUES ('5cd71dd035f4fce65c1f84d33b9a6e8b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"noKH\";i:1531382240;}', '1531385840');
INSERT INTO `ims_core_sessions` VALUES ('a798187ce54b52c1f643aae81fbdda42', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cUik\";i:1531382240;}', '1531385840');
INSERT INTO `ims_core_sessions` VALUES ('89c5f1da4ae1e6162456dad12f9e9323', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rtrF\";i:1531382235;}', '1531385835');
INSERT INTO `ims_core_sessions` VALUES ('384c0ea2c30d183590b0bc178d505242', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cww2\";i:1531382234;}', '1531385834');
INSERT INTO `ims_core_sessions` VALUES ('3aa8899e78906ba3ad021640cac3a5fa', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"siiY\";i:1531382234;}', '1531385834');
INSERT INTO `ims_core_sessions` VALUES ('560fae41d3714e19f04361c03ae9c262', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c4im\";i:1531382233;}', '1531385833');
INSERT INTO `ims_core_sessions` VALUES ('5e3e730f7fff11c1aaf5e6b890185d1c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"edOy\";i:1531382231;}', '1531385831');
INSERT INTO `ims_core_sessions` VALUES ('8271475092a2ce4b24d3da58427f7bde', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rC38\";i:1531382231;}', '1531385831');
INSERT INTO `ims_core_sessions` VALUES ('264ca85623ab937185a5f81bd6d02a46', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W1mI\";i:1531382226;}', '1531385826');
INSERT INTO `ims_core_sessions` VALUES ('bf52be62387d9c3995e002b7b26ed6f3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j5rN\";i:1531382224;}', '1531385824');
INSERT INTO `ims_core_sessions` VALUES ('d48fce6b0513e2e4d6e5e627b5a980fb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ty82\";i:1531382223;}', '1531385823');
INSERT INTO `ims_core_sessions` VALUES ('a4ebd62b98aa280784900176fbd32fcf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wM4K\";i:1531382223;}', '1531385823');
INSERT INTO `ims_core_sessions` VALUES ('cb0d0fd89d3a5fee07e2d02d58442786', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wn8I\";i:1531382222;}', '1531385822');
INSERT INTO `ims_core_sessions` VALUES ('29e7964fe50f0fd14a67f2a70532a688', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G87v\";i:1531382220;}', '1531385820');
INSERT INTO `ims_core_sessions` VALUES ('cc8089ffa30798df60e8c872797e204d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EkHH\";i:1531382220;}', '1531385820');
INSERT INTO `ims_core_sessions` VALUES ('e031bbd16164e9c0a9b557233dd2dc96', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d0Cx\";i:1531382169;}', '1531385769');
INSERT INTO `ims_core_sessions` VALUES ('42e08d416d420add10324c204a209eca', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D05j\";i:1531382159;}', '1531385759');
INSERT INTO `ims_core_sessions` VALUES ('34ab2bb01f13bd7121e242cfd05c0362', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zsrY\";i:1531382158;}', '1531385758');
INSERT INTO `ims_core_sessions` VALUES ('012fe2c271cc072be73681ea17370620', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C97N\";i:1531382157;}', '1531385757');
INSERT INTO `ims_core_sessions` VALUES ('46e810757fb65ea092d4edd5308a0824', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sEEf\";i:1531382147;}', '1531385747');
INSERT INTO `ims_core_sessions` VALUES ('dfef103f300a406eb5645589c62d820f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fAXb\";i:1531382138;}', '1531385738');
INSERT INTO `ims_core_sessions` VALUES ('5cfee52851f63810d389d773915c4ca0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WOh8\";i:1531382137;}', '1531385737');
INSERT INTO `ims_core_sessions` VALUES ('da526f4585157f87b0001e31dd3afc1f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zmbr\";i:1531382136;}', '1531385736');
INSERT INTO `ims_core_sessions` VALUES ('0cc640504d64c9fe9652f6ec3c18ded2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jz3H\";i:1531382129;}', '1531385729');
INSERT INTO `ims_core_sessions` VALUES ('10b69787bd636a4f72e5bbf75f26c2f2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Igu9\";i:1531382121;}', '1531385721');
INSERT INTO `ims_core_sessions` VALUES ('51d0dfe98d8ebfca556e42a20421d0fb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"deVi\";i:1531382121;}', '1531385721');
INSERT INTO `ims_core_sessions` VALUES ('e6a1a96babf30456bca06f6e2cb6e6f6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gJn4\";i:1531382120;}', '1531385720');
INSERT INTO `ims_core_sessions` VALUES ('6c0b095e52c12e58df3376a7f9ff9cfd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MU3P\";i:1531382120;}', '1531385720');
INSERT INTO `ims_core_sessions` VALUES ('3f9cf93ad2a3b7eb57d6b4d2b990dbc6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nVY1\";i:1531382119;}', '1531385719');
INSERT INTO `ims_core_sessions` VALUES ('8cf9bee55b7879fc470cbb12b4cd5921', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o1K9\";i:1531382114;}', '1531385714');
INSERT INTO `ims_core_sessions` VALUES ('b4535d0bd7d5b9b8afacdce77137df4c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g2Yf\";i:1531382114;}', '1531385714');
INSERT INTO `ims_core_sessions` VALUES ('427d193e17fc437229a82ca552a48764', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ShcU\";i:1531382113;}', '1531385713');
INSERT INTO `ims_core_sessions` VALUES ('ba93eef5fcb155101e75f8886df70d2e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ocAs\";i:1531382090;}', '1531385690');
INSERT INTO `ims_core_sessions` VALUES ('93be2a07dbafad7a46219d9faa85213e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D99T\";i:1531382088;}', '1531385688');
INSERT INTO `ims_core_sessions` VALUES ('6d76140dfb0bf29edc7aaa39443ae4e7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EX6T\";i:1531382088;}', '1531385688');
INSERT INTO `ims_core_sessions` VALUES ('c5ec6017be6110c112eb68d3a46401de', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GS2j\";i:1531382070;}', '1531385670');
INSERT INTO `ims_core_sessions` VALUES ('2f89af554f05b843ce8454f040270355', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VjG2\";i:1531382059;}', '1531385659');
INSERT INTO `ims_core_sessions` VALUES ('f39b25afa9bea9406c6b93a068af7246', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HS0L\";i:1531382058;}', '1531385658');
INSERT INTO `ims_core_sessions` VALUES ('905c408a17b83a517a88e26c0104f548', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FBbo\";i:1531382057;}', '1531385657');
INSERT INTO `ims_core_sessions` VALUES ('909d4d5f3773890cd68f24487c81a722', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JFht\";i:1531382050;}', '1531385650');
INSERT INTO `ims_core_sessions` VALUES ('e4bba370c89e2a3f672af8bb8361cbcf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qw8Q\";i:1531382049;}', '1531385649');
INSERT INTO `ims_core_sessions` VALUES ('98a4b81b2d4dbade844987956148dc8b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wO4K\";i:1531382049;}', '1531385649');
INSERT INTO `ims_core_sessions` VALUES ('c15b4621e7e2faa1569e1921ef5eebf6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GBs6\";i:1531382047;}', '1531385647');
INSERT INTO `ims_core_sessions` VALUES ('6125b46ff2e602233e7735cf6d1162f7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tz6J\";i:1531382047;}', '1531385647');
INSERT INTO `ims_core_sessions` VALUES ('fc2ca99858e20e46be6aec5763400e9e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s0Lq\";i:1531382046;}', '1531385646');
INSERT INTO `ims_core_sessions` VALUES ('c09cd61fd0f8a3d3b5a1cca693d1ba08', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hmZM\";i:1531382044;}', '1531385644');
INSERT INTO `ims_core_sessions` VALUES ('e2f63bd54dd3acd16703bf3fb8f82256', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bzPp\";i:1531382042;}', '1531385642');
INSERT INTO `ims_core_sessions` VALUES ('79e40db0d2adda3e17735e49287de50e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ns3z\";i:1531382042;}', '1531385642');
INSERT INTO `ims_core_sessions` VALUES ('2188d3ecf00ffd3c2b66b56fb80000d6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jZM7\";i:1531382041;}', '1531385641');
INSERT INTO `ims_core_sessions` VALUES ('41818262b7428fe6dd9f9da03c3c128e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oJVx\";i:1531382041;}', '1531385641');
INSERT INTO `ims_core_sessions` VALUES ('509f6ccab3b8c04942a590f67c45b172', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mULP\";i:1531382040;}', '1531385640');
INSERT INTO `ims_core_sessions` VALUES ('09fed427a0e293d51a7d7cae413e5b7d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T1a2\";i:1531382038;}', '1531385638');
INSERT INTO `ims_core_sessions` VALUES ('85c78283f93e20eed1c12f2ee5e922e5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XZOx\";i:1531382038;}', '1531385638');
INSERT INTO `ims_core_sessions` VALUES ('93cc7a617dcd940163f35cd21e1f78a0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BGp9\";i:1531382038;}', '1531385638');
INSERT INTO `ims_core_sessions` VALUES ('77990d91cce6781d755a225cf552a7bd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l5pT\";i:1531382038;}', '1531385638');
INSERT INTO `ims_core_sessions` VALUES ('8914402269f41d7b5acf13aa34ddebf6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q991\";i:1531382029;}', '1531385629');
INSERT INTO `ims_core_sessions` VALUES ('df726674fdcf342eec26f916d99423c0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v4lZ\";i:1531382029;}', '1531385629');
INSERT INTO `ims_core_sessions` VALUES ('917582db1e7741c2ecc0ed2e7a9618a3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IOxD\";i:1531382025;}', '1531385625');
INSERT INTO `ims_core_sessions` VALUES ('9fdf538556ff1bbbf6e70d5871ff4539', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LWWY\";i:1531382024;}', '1531385624');
INSERT INTO `ims_core_sessions` VALUES ('28a7a4bcedb9effb820774be8fefbcd7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HJqp\";i:1531382019;}', '1531385619');
INSERT INTO `ims_core_sessions` VALUES ('408f0beb2e1731932029fb12cfd965c6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W3bP\";i:1531382018;}', '1531385618');
INSERT INTO `ims_core_sessions` VALUES ('b165938ed9fc0e9502577a9c614de86b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kPV3\";i:1531382017;}', '1531385617');
INSERT INTO `ims_core_sessions` VALUES ('e2641510b3369b510e584f2d4fd3abda', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C8uJ\";i:1531382016;}', '1531385616');
INSERT INTO `ims_core_sessions` VALUES ('c0a6d08535ab5a2bae98be4dbe0d2c41', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VKAT\";i:1531382015;}', '1531385615');
INSERT INTO `ims_core_sessions` VALUES ('b4975aa1d1900d8ba8acd841d5c6ca07', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"enPY\";i:1531382015;}', '1531385615');
INSERT INTO `ims_core_sessions` VALUES ('be3894335c430dda89ddceb9b67fc0a9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"co7f\";i:1531382015;}', '1531385615');
INSERT INTO `ims_core_sessions` VALUES ('739895642472bf166f4a21bb76adeb83', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BU50\";i:1531382015;}', '1531385615');
INSERT INTO `ims_core_sessions` VALUES ('c7630b2950462f3ff09d7053230250bb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xzb5\";i:1531382015;}', '1531385615');
INSERT INTO `ims_core_sessions` VALUES ('51bc986c0be5d9de0275cd379ca8c335', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i2kJ\";i:1531382014;}', '1531385614');
INSERT INTO `ims_core_sessions` VALUES ('f0efd2c240c51903b7dd35a0aa5e2db1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TZ9H\";i:1531382013;}', '1531385613');
INSERT INTO `ims_core_sessions` VALUES ('731480a05824b941ffcb9ac0d36afa2e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nnQF\";i:1531381990;}', '1531385590');
INSERT INTO `ims_core_sessions` VALUES ('7d2c53c71618f9f1269c8489097ea943', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WKqg\";i:1531381977;}', '1531385577');
INSERT INTO `ims_core_sessions` VALUES ('791656c46fa5becb348d2d72a3edce13', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pa4O\";i:1531381975;}', '1531385575');
INSERT INTO `ims_core_sessions` VALUES ('c3c590f53179b8cd0811a860e29152b3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cn9l\";i:1531381975;}', '1531385575');
INSERT INTO `ims_core_sessions` VALUES ('1f3a88b1beb0a19783fb5617d61c1c45', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WG4G\";i:1531381963;}', '1531385563');
INSERT INTO `ims_core_sessions` VALUES ('b140a066776ae9062cfa55637b3ffd04', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d3Q3\";i:1531381963;}', '1531385563');
INSERT INTO `ims_core_sessions` VALUES ('834d42e4c656fcac9a05bd2a794bc795', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e3hS\";i:1531381963;}', '1531385563');
INSERT INTO `ims_core_sessions` VALUES ('6e128362e7318753f0ba138a79769016', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d6fX\";i:1531381963;}', '1531385563');
INSERT INTO `ims_core_sessions` VALUES ('ce195aefc86949a3a7a7a3854548de9e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jiq2\";i:1531381963;}', '1531385563');
INSERT INTO `ims_core_sessions` VALUES ('aedc3837e46b942b298cd2c4724efdbc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tuBQ\";i:1531381962;}', '1531385562');
INSERT INTO `ims_core_sessions` VALUES ('a92b8858b7fd200ab684a0d9a4172d9c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R2HG\";i:1531381961;}', '1531385561');
INSERT INTO `ims_core_sessions` VALUES ('42c5aa92b5cd88de167b704597b5a910', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eoJe\";i:1531381961;}', '1531385561');
INSERT INTO `ims_core_sessions` VALUES ('0bfb87107d6042876d071b431b232099', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AA8n\";i:1531381960;}', '1531385560');
INSERT INTO `ims_core_sessions` VALUES ('4e31a4abf836516810634713c9445118', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I224\";i:1531381959;}', '1531385559');
INSERT INTO `ims_core_sessions` VALUES ('eeddf2d391f69c242e0e92355b86350f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LwZS\";i:1531381959;}', '1531385559');
INSERT INTO `ims_core_sessions` VALUES ('f09364156b8bbb5f5756f94c9e5a694d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HhHR\";i:1531381959;}', '1531385559');
INSERT INTO `ims_core_sessions` VALUES ('2239d07238608e029f126166142f925c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T8i0\";i:1531381957;}', '1531385557');
INSERT INTO `ims_core_sessions` VALUES ('9c3887707d7656295f0a2d8ac8dd5fc1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JWaQ\";i:1531381957;}', '1531385557');
INSERT INTO `ims_core_sessions` VALUES ('e2f1c6286c9ae4ebe5a7dbd2ca73ad25', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NapF\";i:1531381957;}', '1531385557');
INSERT INTO `ims_core_sessions` VALUES ('52e7c14ff5804d60bad5b261972d1f0c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xgl2\";i:1531381957;}', '1531385557');
INSERT INTO `ims_core_sessions` VALUES ('44e1e9d86a73edd456fbb7d97a66856a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vJ98\";i:1531381957;}', '1531385557');
INSERT INTO `ims_core_sessions` VALUES ('2a57d1d5f823d59cae78c07ee86c3d72', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UbVY\";i:1531381955;}', '1531385555');
INSERT INTO `ims_core_sessions` VALUES ('676836263be49439f0f401c07dfe7a41', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q0Gg\";i:1531381955;}', '1531385555');
INSERT INTO `ims_core_sessions` VALUES ('adb4e6fd92d1326e6d2001890b5bb798', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GyX5\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('336e6a99b0a392e4f7ed04033195d5a9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p13o\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('e84e4cc5af88880f78f72409ad0ec61b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WSGV\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('2f0ef15f451f8ccfab33501709cc69e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jbK2\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('11591e3c211faad4d90316d738547dd6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xdq4\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('fc2f77ae6a83d79304a55c7eed978735', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gf3x\";i:1531381954;}', '1531385554');
INSERT INTO `ims_core_sessions` VALUES ('6e5f93a9b84d2e66bb3eedffc40ebe1d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h7MX\";i:1531381953;}', '1531385553');
INSERT INTO `ims_core_sessions` VALUES ('1262299719c2c290bcc74f59e7e4268d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cr3E\";i:1531381952;}', '1531385552');
INSERT INTO `ims_core_sessions` VALUES ('fc89c6f21470e37edc6affdeed5d9e88', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r8M3\";i:1531381952;}', '1531385552');
INSERT INTO `ims_core_sessions` VALUES ('59deb90514b27d772c024a76a5ed6a31', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mslF\";i:1531381951;}', '1531385551');
INSERT INTO `ims_core_sessions` VALUES ('01003f912a82f104181b3206540be523', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H0p0\";i:1531381951;}', '1531385551');
INSERT INTO `ims_core_sessions` VALUES ('e055604e0a0fc98e6ef1bd0a466eb080', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d480\";i:1531381950;}', '1531385550');
INSERT INTO `ims_core_sessions` VALUES ('0e1a8c5930127a11799f5b2fb8e628d9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PvzO\";i:1531381950;}', '1531385550');
INSERT INTO `ims_core_sessions` VALUES ('415e7f942e4ed01e8232a9d6ed83b770', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F4rz\";i:1531381950;}', '1531385550');
INSERT INTO `ims_core_sessions` VALUES ('742b4d73e29f54ec8da40d49c3c744d4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FyYs\";i:1531381950;}', '1531385550');
INSERT INTO `ims_core_sessions` VALUES ('6f0ab5d4fdc831299f768ca380c300a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Esgu\";i:1531381949;}', '1531385549');
INSERT INTO `ims_core_sessions` VALUES ('1bd2e6e5ef0bee0dd68ad3a7625f16e5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z59a\";i:1531381949;}', '1531385549');
INSERT INTO `ims_core_sessions` VALUES ('38c0d9d4730c92527a3314871b3a9fc6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a90W\";i:1531381949;}', '1531385549');
INSERT INTO `ims_core_sessions` VALUES ('8e9b8f6bb4ea761657962c978f96e5f8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bdk0\";i:1531381949;}', '1531385549');
INSERT INTO `ims_core_sessions` VALUES ('3256e3d52d783ff01b215e2c716cbc5e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C0u1\";i:1531381821;}', '1531385421');
INSERT INTO `ims_core_sessions` VALUES ('d343d509b4c1d21dae1c4986ccff63c6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"klyL\";i:1531381818;}', '1531385418');
INSERT INTO `ims_core_sessions` VALUES ('6f377ec006e38c2b3982a63fc17fae00', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e4zQ\";i:1531381818;}', '1531385418');
INSERT INTO `ims_core_sessions` VALUES ('3b93a1e5e41a367be571e5d345a9f437', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KZap\";i:1531381817;}', '1531385417');
INSERT INTO `ims_core_sessions` VALUES ('3d9ef2878d2cf61144aef6fff0f5a2dd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j514\";i:1531381811;}', '1531385411');
INSERT INTO `ims_core_sessions` VALUES ('316d33f9221814603b11ff19946694c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vPIc\";i:1531381810;}', '1531385410');
INSERT INTO `ims_core_sessions` VALUES ('eea24bd3ef198dd26bae73d294474767', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xq49\";i:1531381809;}', '1531385409');
INSERT INTO `ims_core_sessions` VALUES ('4c7e20c766cc85e9ef1e1abd47d8c798', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f3Ad\";i:1531381809;}', '1531385409');
INSERT INTO `ims_core_sessions` VALUES ('69ad6460fa6153cad6295cecee8f9d84', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UBC9\";i:1531381809;}', '1531385409');
INSERT INTO `ims_core_sessions` VALUES ('1b0fc0a7332b46749cbfa0cbcb946708', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O383\";i:1531381809;}', '1531385409');
INSERT INTO `ims_core_sessions` VALUES ('9477e82c7f71634adfd88a3d6a76fa03', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mIIB\";i:1531381808;}', '1531385408');
INSERT INTO `ims_core_sessions` VALUES ('a01457b518d47ca5838c5971745455d2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g49Q\";i:1531381800;}', '1531385400');
INSERT INTO `ims_core_sessions` VALUES ('4842f610813b9b93ace038e55db1e902', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ycza\";i:1531381799;}', '1531385399');
INSERT INTO `ims_core_sessions` VALUES ('0ad6d8dbc78a87f1fbdc52d5d12d7c22', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H1kz\";i:1531381796;}', '1531385396');
INSERT INTO `ims_core_sessions` VALUES ('9e3618df9a7b3d8957c9168ac175a592', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R18t\";i:1531381796;}', '1531385396');
INSERT INTO `ims_core_sessions` VALUES ('65acb32ef6dd99cc27491275cad5d695', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z7P2\";i:1531381787;}', '1531385387');
INSERT INTO `ims_core_sessions` VALUES ('b0592844c64cb576ed70fdf480685998', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vFmz\";i:1531381787;}', '1531385387');
INSERT INTO `ims_core_sessions` VALUES ('7fbc097fc95b76da9063a87be3f0ae32', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wyzI\";i:1531381786;}', '1531385386');
INSERT INTO `ims_core_sessions` VALUES ('95116d30303c0d3eb6d91888d857c291', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vkEn\";i:1531381786;}', '1531385386');
INSERT INTO `ims_core_sessions` VALUES ('42b429bbabc3ef7be241e3d2d43df994', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nF53\";i:1531381783;}', '1531385383');
INSERT INTO `ims_core_sessions` VALUES ('7f85e78272e71f5666eed9f4952cc17b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zpz2\";i:1531381783;}', '1531385383');
INSERT INTO `ims_core_sessions` VALUES ('df5f215e812329697f80b7cc79766979', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ocW9\";i:1531381778;}', '1531385378');
INSERT INTO `ims_core_sessions` VALUES ('29b86e1ec9e226c944d61ff4dd3fcb2d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UoY8\";i:1531381778;}', '1531385378');
INSERT INTO `ims_core_sessions` VALUES ('08712d4b0af96e9e0d73f27e820f1674', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ig8V\";i:1531381775;}', '1531385375');
INSERT INTO `ims_core_sessions` VALUES ('7ed2bd5e4341cc0837d5b3d861cad53f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LHG2\";i:1531381774;}', '1531385374');
INSERT INTO `ims_core_sessions` VALUES ('4df4ad433ed7d297cd769abccdd5f7a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B1fv\";i:1531381772;}', '1531385372');
INSERT INTO `ims_core_sessions` VALUES ('87c669286d27a8d021cc195141d42b9b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0hq\";i:1531381772;}', '1531385372');
INSERT INTO `ims_core_sessions` VALUES ('5a94b838b01915c1bed5cddec495fc02', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W067\";i:1531381772;}', '1531385372');
INSERT INTO `ims_core_sessions` VALUES ('fe4a28749cfc4ff8358ab14a9cfc9fff', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GToh\";i:1531381771;}', '1531385371');
INSERT INTO `ims_core_sessions` VALUES ('7619c976228011bebac7870c4a65d539', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F37N\";i:1531381771;}', '1531385371');
INSERT INTO `ims_core_sessions` VALUES ('b3f4fd097dbbc028778041de11babdd3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UyBK\";i:1531381771;}', '1531385371');
INSERT INTO `ims_core_sessions` VALUES ('98eaf956d8dd45f076d18dc7fd250dce', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r0N3\";i:1531381769;}', '1531385369');
INSERT INTO `ims_core_sessions` VALUES ('a2a67c55166f40ee48643f9e2bd2ebbc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hl63\";i:1531381769;}', '1531385369');
INSERT INTO `ims_core_sessions` VALUES ('3c7d45c0bb5f5d99fb0a1c09960b9bd3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LmYQ\";i:1531381768;}', '1531385368');
INSERT INTO `ims_core_sessions` VALUES ('d2ecb8db3a0000e96a6d9bf8f8494b79', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gdtD\";i:1531381768;}', '1531385368');
INSERT INTO `ims_core_sessions` VALUES ('876669db96e57ed5f438f9e08dee9e7d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GvEO\";i:1531381768;}', '1531385368');
INSERT INTO `ims_core_sessions` VALUES ('e5d3116cc40971d4294e8fde454eee87', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yK7z\";i:1531381768;}', '1531385368');
INSERT INTO `ims_core_sessions` VALUES ('98934fd91c62516cf9850c99224147ed', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WH8g\";i:1531381768;}', '1531385368');
INSERT INTO `ims_core_sessions` VALUES ('9732bda250b35ca29d3f17ab249e56ca', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nVhy\";i:1531381681;}', '1531385281');
INSERT INTO `ims_core_sessions` VALUES ('0e2283097f17f5aa85a864d6f82969dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iqiI\";i:1531381681;}', '1531385281');
INSERT INTO `ims_core_sessions` VALUES ('37acd83e9422136c61ef91cb4bf7dde9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yk3S\";i:1531381681;}', '1531385281');
INSERT INTO `ims_core_sessions` VALUES ('3ddcec64839e5a87ab62c0c690cd528d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yOuF\";i:1531381681;}', '1531385281');
INSERT INTO `ims_core_sessions` VALUES ('0afae66579de27b7e0b6772e856cd8d7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WGxn\";i:1531381681;}', '1531385281');
INSERT INTO `ims_core_sessions` VALUES ('a8d1caa8096dcada62f5e43995b46f88', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OP3Y\";i:1531381680;}', '1531385280');
INSERT INTO `ims_core_sessions` VALUES ('2f42c2cd7e8b6588cbc1938263755cae', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zuUT\";i:1531381678;}', '1531385278');
INSERT INTO `ims_core_sessions` VALUES ('e83301d28cb4fa5548f490389cef6bcb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wp90\";i:1531381678;}', '1531385278');
INSERT INTO `ims_core_sessions` VALUES ('eddcf95f5b8b372e35aa2d13d25839e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y2PP\";i:1531381677;}', '1531385277');
INSERT INTO `ims_core_sessions` VALUES ('b40e68cbaa9050c73966dd828cd11f82', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hlmX\";i:1531381677;}', '1531385277');
INSERT INTO `ims_core_sessions` VALUES ('094b693521b80db85dd0de1d096ad325', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jphp\";i:1531381676;}', '1531385276');
INSERT INTO `ims_core_sessions` VALUES ('2be0a095fb20711095091a3ce5b7d3dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e81K\";i:1531381676;}', '1531385276');
INSERT INTO `ims_core_sessions` VALUES ('a7bebe3757e7db67388abca4724db5d3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Spcc\";i:1531381676;}', '1531385276');
INSERT INTO `ims_core_sessions` VALUES ('120e5c0b260743802236f19693fa67b1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jhxg\";i:1531381676;}', '1531385276');
INSERT INTO `ims_core_sessions` VALUES ('f2b741c1b7841ab023e8ed37612b70e5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IlKu\";i:1531381675;}', '1531385275');
INSERT INTO `ims_core_sessions` VALUES ('2c94aedc5d0e18906a44cb8facf9f1fe', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZU71\";i:1531381675;}', '1531385275');
INSERT INTO `ims_core_sessions` VALUES ('fb9dea5673ddcba659957f58fda3fb76', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G7i0\";i:1531381646;}', '1531385246');
INSERT INTO `ims_core_sessions` VALUES ('d9e12b199e338fd22eeb923d7db4b9e9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zd5w\";i:1531381646;}', '1531385246');
INSERT INTO `ims_core_sessions` VALUES ('ce500414b4293e3988648bfa2a0ffd2f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z2aH\";i:1531381646;}', '1531385246');
INSERT INTO `ims_core_sessions` VALUES ('3d105bd985b10efa758e9b834ccb7af2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1l5\";i:1531381646;}', '1531385246');
INSERT INTO `ims_core_sessions` VALUES ('a10181a8f3f63277b8e601ec6fd4f1e5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fNb6\";i:1531381645;}', '1531385245');
INSERT INTO `ims_core_sessions` VALUES ('66c3610a249d74d601fab511a4fa7fde', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nCli\";i:1531381614;}', '1531385214');
INSERT INTO `ims_core_sessions` VALUES ('8828c44df0eaca67f16be0b69bfd8968', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pr3V\";i:1531381614;}', '1531385214');
INSERT INTO `ims_core_sessions` VALUES ('2b7d4bca9d2b59e8dc2e7c979c23c945', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hEO1\";i:1531381614;}', '1531385214');
INSERT INTO `ims_core_sessions` VALUES ('2153d4f4a77e8cb4764f455a2ccbead7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x9zB\";i:1531381614;}', '1531385214');
INSERT INTO `ims_core_sessions` VALUES ('55a7992ba58e188d9fe41454a0a06525', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y3oO\";i:1531381614;}', '1531385214');
INSERT INTO `ims_core_sessions` VALUES ('b94623b41fd0365529241b90bcdfb765', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nys0\";i:1531381612;}', '1531385212');
INSERT INTO `ims_core_sessions` VALUES ('74be1180fda64526bb9a0a000731c060', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j6sF\";i:1531381612;}', '1531385212');
INSERT INTO `ims_core_sessions` VALUES ('9841a228cb53b95dcc83eee4fb4806ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AFAa\";i:1531381591;}', '1531385191');
INSERT INTO `ims_core_sessions` VALUES ('b09a5d739277217a0db171a1ae046acf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A7Ii\";i:1531381591;}', '1531385191');
INSERT INTO `ims_core_sessions` VALUES ('98bf378851d2f9c180e94fd672007880', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gE6C\";i:1531381582;}', '1531385182');
INSERT INTO `ims_core_sessions` VALUES ('347a6abfd3ef3e0366a3d3b5bc9b36c0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PdZO\";i:1531381582;}', '1531385182');
INSERT INTO `ims_core_sessions` VALUES ('fa17f1999d618e3aada305e8add5181c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CxNX\";i:1531381581;}', '1531385181');
INSERT INTO `ims_core_sessions` VALUES ('22102c07e7a4f3dd8b79f3ab59a91511', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JEvH\";i:1531381581;}', '1531385181');
INSERT INTO `ims_core_sessions` VALUES ('10315515912d6a80c5ab9c5fa5b4ca64', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qn4E\";i:1531381580;}', '1531385180');
INSERT INTO `ims_core_sessions` VALUES ('dde0b404188ef59176b620e3845fc709', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sR3v\";i:1531381579;}', '1531385179');
INSERT INTO `ims_core_sessions` VALUES ('9983889c3aff1cbf41573813e45ba546', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q997\";i:1531381578;}', '1531385178');
INSERT INTO `ims_core_sessions` VALUES ('9c04fb43d2440528ad78f4789c558cb1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i4ZW\";i:1531381577;}', '1531385177');
INSERT INTO `ims_core_sessions` VALUES ('2feef7c62e7468f09fd553a057912a44', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k8o8\";i:1531381576;}', '1531385176');
INSERT INTO `ims_core_sessions` VALUES ('873ff9d391c7b59d73ce92b3f6cb19f2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O2NB\";i:1531381576;}', '1531385176');
INSERT INTO `ims_core_sessions` VALUES ('9558fa3ebdf15194c3132f6501283567', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S3Zk\";i:1531381576;}', '1531385176');
INSERT INTO `ims_core_sessions` VALUES ('195e6948c691efdc5b1f488469086b21', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p3Xr\";i:1531381576;}', '1531385176');
INSERT INTO `ims_core_sessions` VALUES ('31044d94c0b104d81aa1804b3a9a021f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fpBc\";i:1531381550;}', '1531385150');
INSERT INTO `ims_core_sessions` VALUES ('3b8e64b2a530b5d10cd45915b530b247', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U36i\";i:1531381549;}', '1531385149');
INSERT INTO `ims_core_sessions` VALUES ('c1e437d41bed16cdf43be77b91e81b9f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KsbR\";i:1531381520;}', '1531385120');
INSERT INTO `ims_core_sessions` VALUES ('6c31ae0b5a619858fa01269241defe5c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BBBZ\";i:1531381519;}', '1531385119');
INSERT INTO `ims_core_sessions` VALUES ('7935f899ce8cff86f1842defaa6cd863', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hsW4\";i:1531381519;}', '1531385119');
INSERT INTO `ims_core_sessions` VALUES ('d9e3bbf7257c7a7aef7eb981c03ecb24', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cNG3\";i:1531381519;}', '1531385119');
INSERT INTO `ims_core_sessions` VALUES ('8e6a629b91666d17c3365deadb8713de', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6fE\";i:1531381518;}', '1531385118');
INSERT INTO `ims_core_sessions` VALUES ('68970d92904175561d95fe1eb48a9045', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"octJ\";i:1531381518;}', '1531385118');
INSERT INTO `ims_core_sessions` VALUES ('e972fc4767a4c98e2b5e0702824e9ae5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V7z7\";i:1531381517;}', '1531385117');
INSERT INTO `ims_core_sessions` VALUES ('62139338ebc77bfcf0dc3c92817e99d4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A6uK\";i:1531381422;}', '1531385022');
INSERT INTO `ims_core_sessions` VALUES ('2be8cad3a032c55ec472009ac1d61d9f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NWqF\";i:1531381422;}', '1531385022');
INSERT INTO `ims_core_sessions` VALUES ('1b8d1dba85e6adb1e2bc413dce5a629f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cbbz\";i:1531381420;}', '1531385020');
INSERT INTO `ims_core_sessions` VALUES ('2f6f1ce5a7be8477d7774a91c0f3ed6b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I8Mm\";i:1531381419;}', '1531385019');
INSERT INTO `ims_core_sessions` VALUES ('300449763aa9f6ecc3863297930fccb6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UF0z\";i:1531381418;}', '1531385018');
INSERT INTO `ims_core_sessions` VALUES ('0777ae45ac540ca7be7c26ee6835c58f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YDK8\";i:1531381417;}', '1531385017');
INSERT INTO `ims_core_sessions` VALUES ('021224c5b46c3db845ba9b04574c22c3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pdfm\";i:1531381417;}', '1531385017');
INSERT INTO `ims_core_sessions` VALUES ('c43358935bcddc796f9868d11e55c649', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AMLO\";i:1531381417;}', '1531385017');
INSERT INTO `ims_core_sessions` VALUES ('3792eb8a8365ee3d5b8caee7bec00ec8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l77T\";i:1531381416;}', '1531385016');
INSERT INTO `ims_core_sessions` VALUES ('093de749497417392a5fb3cb290a323d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BVvW\";i:1531381415;}', '1531385015');
INSERT INTO `ims_core_sessions` VALUES ('dc1fa52bacf8f440eb2d30fe8b232183', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u6js\";i:1531381409;}', '1531385009');
INSERT INTO `ims_core_sessions` VALUES ('c83887b4f0a8d664796abbb963ae392d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xf7F\";i:1531381409;}', '1531385009');
INSERT INTO `ims_core_sessions` VALUES ('4f2e64de247c13a107a7a51da56fba46', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v3Jj\";i:1531381409;}', '1531385009');
INSERT INTO `ims_core_sessions` VALUES ('9a3019efa6931a79e6d863069fd2bd4b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T44O\";i:1531381409;}', '1531385009');
INSERT INTO `ims_core_sessions` VALUES ('991f9370891f0024fd81c9a31016ef06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XyXb\";i:1531381409;}', '1531385009');
INSERT INTO `ims_core_sessions` VALUES ('e7dc837629b846ab0c9e588564ce4193', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uv5H\";i:1531381408;}', '1531385008');
INSERT INTO `ims_core_sessions` VALUES ('5dc513fa970e1cd463a0d0cad5cf134b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FLkU\";i:1531381407;}', '1531385007');
INSERT INTO `ims_core_sessions` VALUES ('ef25bc5eeab3e14b5c2331d39a38ca6b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JeWr\";i:1531381406;}', '1531385006');
INSERT INTO `ims_core_sessions` VALUES ('fe3985c9a691c6ecccda4311bf69862d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uI0T\";i:1531381402;}', '1531385002');
INSERT INTO `ims_core_sessions` VALUES ('774d6e8fe4775651842f2f1c5f673573', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YSJQ\";i:1531381398;}', '1531384998');
INSERT INTO `ims_core_sessions` VALUES ('4ae20100156dc6dbb96c69b74137d377', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tjgh\";i:1531381397;}', '1531384997');
INSERT INTO `ims_core_sessions` VALUES ('cf4bf3259867458a0c78504f647747f5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v2G1\";i:1531381396;}', '1531384996');
INSERT INTO `ims_core_sessions` VALUES ('dd0fd3fa2a5591852b247dfb6c875f4d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MJD9\";i:1531381396;}', '1531384996');
INSERT INTO `ims_core_sessions` VALUES ('8493fce437d702266529a374919c8de5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ndde\";i:1531381394;}', '1531384994');
INSERT INTO `ims_core_sessions` VALUES ('e09b07ce99489abc0f178a0d5150f762', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nCbV\";i:1531381394;}', '1531384994');
INSERT INTO `ims_core_sessions` VALUES ('676878cd3e9c0751046c072eba58ed50', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LaU1\";i:1531381387;}', '1531384987');
INSERT INTO `ims_core_sessions` VALUES ('ddf648167903082402aa779dbcb8dbf1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o8ZI\";i:1531381387;}', '1531384987');
INSERT INTO `ims_core_sessions` VALUES ('0f39f2ead14ca4150f6d699529282583', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XJb4\";i:1531381386;}', '1531384986');
INSERT INTO `ims_core_sessions` VALUES ('2a9c9d660f008cac6211f746ccab2662', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I2OK\";i:1531381368;}', '1531384968');
INSERT INTO `ims_core_sessions` VALUES ('d5a7ae87871391922e7f17182d6eb854', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JiS2\";i:1531381367;}', '1531384967');
INSERT INTO `ims_core_sessions` VALUES ('5d0fcddbe58efce9c119aa168da5c824', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kr9a\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('e7b721c377474c8a982831d4a9f3c2fc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nzj3\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('8376430753f3512321a870027ad23464', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UWBk\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('302d91f2ad44c07c0dfbf9581fc4d634', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qbdw\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('9a6afb72678c64962cd64463313ea5b0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CXvs\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('6e101386b2ccb3bffeb657a9da7539c7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q094\";i:1531381365;}', '1531384965');
INSERT INTO `ims_core_sessions` VALUES ('f53127eaa344d58252ee59772f09c804', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XKcH\";i:1531381364;}', '1531384964');
INSERT INTO `ims_core_sessions` VALUES ('2f6b73f171f8b960d4be062d695f1251', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QZ30\";i:1531381290;}', '1531384890');
INSERT INTO `ims_core_sessions` VALUES ('7d221341792f175ba8fefbdbc8fbd771', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LbRp\";i:1531381290;}', '1531384890');
INSERT INTO `ims_core_sessions` VALUES ('ad9a0281fe58f96f9932d28799786ac1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sH6b\";i:1531381290;}', '1531384890');
INSERT INTO `ims_core_sessions` VALUES ('13106f3c3f9e6bd3a4e1d67b865fd33f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uIdq\";i:1531381290;}', '1531384890');
INSERT INTO `ims_core_sessions` VALUES ('4dc5eefac825a12247105326344e368a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CB6Q\";i:1531381289;}', '1531384889');
INSERT INTO `ims_core_sessions` VALUES ('d5750b23fcacc3f2e615b369b5835dd5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WXKj\";i:1531381285;}', '1531384885');
INSERT INTO `ims_core_sessions` VALUES ('837b5d50e05cb7e57bbe1dde8bef0385', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q06q\";i:1531381284;}', '1531384884');
INSERT INTO `ims_core_sessions` VALUES ('16d37c54de901be2310ceadc2a120449', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DfmF\";i:1531381282;}', '1531384882');
INSERT INTO `ims_core_sessions` VALUES ('15630bce614e40fa8c01518c678a1e7d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rh9j\";i:1531381281;}', '1531384881');
INSERT INTO `ims_core_sessions` VALUES ('04de50c0dd80d2b94a039d61bf1ea1aa', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"deZy\";i:1531381281;}', '1531384881');
INSERT INTO `ims_core_sessions` VALUES ('9ab7c22abeda3c367a0d40be93be5307', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kh8X\";i:1531381278;}', '1531384878');
INSERT INTO `ims_core_sessions` VALUES ('1a9a0956277f2468297139a53febb4be', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G6T2\";i:1531381278;}', '1531384878');
INSERT INTO `ims_core_sessions` VALUES ('220ac84d9720568ec1cb34914ee92de4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TO9v\";i:1531381277;}', '1531384877');
INSERT INTO `ims_core_sessions` VALUES ('b9a5e1be7085b0593082037e5e01b5ec', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hK83\";i:1531381272;}', '1531384872');
INSERT INTO `ims_core_sessions` VALUES ('bf83dd3adeabb7e2509fdb0d3336ede3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VduV\";i:1531381271;}', '1531384871');
INSERT INTO `ims_core_sessions` VALUES ('0d7495d7961a61c15d9475904bc322e4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SxO4\";i:1531381271;}', '1531384871');
INSERT INTO `ims_core_sessions` VALUES ('a390f83b075ff11754f8e362ed654556', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gQ21\";i:1531381271;}', '1531384871');
INSERT INTO `ims_core_sessions` VALUES ('65153a6c57116ea96f24066ac300a2f1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DRuU\";i:1531381268;}', '1531384868');
INSERT INTO `ims_core_sessions` VALUES ('bbc77beb9cb87c72bd80b182c63237a8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d68F\";i:1531381268;}', '1531384868');
INSERT INTO `ims_core_sessions` VALUES ('f9a4d6aaf0d5c0a78a81949407eb35c7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dgxx\";i:1531381265;}', '1531384865');
INSERT INTO `ims_core_sessions` VALUES ('b1ddffac6fc36d2d20a54013520c23a9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rpff\";i:1531381265;}', '1531384865');
INSERT INTO `ims_core_sessions` VALUES ('e4e8fbf828d419f31698ed3750ea434b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ihUE\";i:1531381265;}', '1531384865');
INSERT INTO `ims_core_sessions` VALUES ('76fc4d7c2192af8dcf16d104e8a0e15e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eeyg\";i:1531381264;}', '1531384864');
INSERT INTO `ims_core_sessions` VALUES ('0a047e469963ff2a71326a7a62f904cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eB82\";i:1531381258;}', '1531384858');
INSERT INTO `ims_core_sessions` VALUES ('807540eaf7e0d9cfcb91d1c49bbe44a8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"shMo\";i:1531381258;}', '1531384858');
INSERT INTO `ims_core_sessions` VALUES ('c5c13529c895747bbec0fe74ad3e8aa4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xIVi\";i:1531381258;}', '1531384858');
INSERT INTO `ims_core_sessions` VALUES ('581a9790a11842e14de4de3b4eff7d31', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s0Oy\";i:1531381258;}', '1531384858');
INSERT INTO `ims_core_sessions` VALUES ('d8ddbb7540c2f467fe786d5ff8bd0d6d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R9ZO\";i:1531381257;}', '1531384857');
INSERT INTO `ims_core_sessions` VALUES ('b9ea5da704a18ca7cbb795145c52c425', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q6de\";i:1531380806;}', '1531384406');
INSERT INTO `ims_core_sessions` VALUES ('c6ec62173575ebd096bc63dbba696680', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EC4r\";i:1531380806;}', '1531384406');
INSERT INTO `ims_core_sessions` VALUES ('211fedbb9d31b837016103b990829e85', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G4X3\";i:1531380804;}', '1531384404');
INSERT INTO `ims_core_sessions` VALUES ('4053e1a0271d35bb37d191ad4dc1b271', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ySO8\";i:1531380804;}', '1531384404');
INSERT INTO `ims_core_sessions` VALUES ('4462642e48f8c4d7bd9ccf003691fd34', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r352\";i:1531380804;}', '1531384404');
INSERT INTO `ims_core_sessions` VALUES ('48f9114bbcf6f5ba5f5d990ba8d3802d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qFdm\";i:1531380804;}', '1531384404');
INSERT INTO `ims_core_sessions` VALUES ('82ce68e3a7d933fc06247169c07b81cf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CnN9\";i:1531380803;}', '1531384403');
INSERT INTO `ims_core_sessions` VALUES ('9fac87b42705cecc6298d034d31e4aab', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XKuE\";i:1531380763;}', '1531384363');
INSERT INTO `ims_core_sessions` VALUES ('63f08c8741adf606a9b7db77bd9ed27c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"esN2\";i:1531380763;}', '1531384363');
INSERT INTO `ims_core_sessions` VALUES ('293e526cd63f1127cf082349e1e47eec', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XL71\";i:1531380763;}', '1531384363');
INSERT INTO `ims_core_sessions` VALUES ('4a0114fbb14c975edc7d360d6d8c16e2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CBTX\";i:1531380763;}', '1531384363');
INSERT INTO `ims_core_sessions` VALUES ('253177ff73f376c1c151177d37ea1785', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H8pu\";i:1531380762;}', '1531384362');
INSERT INTO `ims_core_sessions` VALUES ('8d4ffe404ef01266505133aa560cc830', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x0N6\";i:1531380598;}', '1531384198');
INSERT INTO `ims_core_sessions` VALUES ('648b2b09654d71184ce694401b889ad9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MGwQ\";i:1531380598;}', '1531384198');
INSERT INTO `ims_core_sessions` VALUES ('c3a880021b611be7ee9fc7a2f9f4d489', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sQJ2\";i:1531380598;}', '1531384198');
INSERT INTO `ims_core_sessions` VALUES ('721ffa816ee6c7260d82b958f975c0c6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wx3X\";i:1531380598;}', '1531384198');
INSERT INTO `ims_core_sessions` VALUES ('57116d33cf76a263c89c9abc80b6ea7a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B2e3\";i:1531380598;}', '1531384198');
INSERT INTO `ims_core_sessions` VALUES ('4214bc040b3cba1b4468e60d6e392f8b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G88e\";i:1531380565;}', '1531384165');
INSERT INTO `ims_core_sessions` VALUES ('f1c4b4dcaf64ea806efc16e753bf4ece', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C0fZ\";i:1531380565;}', '1531384165');
INSERT INTO `ims_core_sessions` VALUES ('5fec89a9bb8f3f0658fa5dd35c65d478', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K5mH\";i:1531380565;}', '1531384165');
INSERT INTO `ims_core_sessions` VALUES ('e0152a522de0111dd1774798ccec426c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c5aJ\";i:1531380564;}', '1531384164');
INSERT INTO `ims_core_sessions` VALUES ('cabe5db0523e78acbfeda2227e56e611', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eQq7\";i:1531380555;}', '1531384155');
INSERT INTO `ims_core_sessions` VALUES ('708b137e9b34b0ca3d76ac926495d287', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TLKr\";i:1531380555;}', '1531384155');
INSERT INTO `ims_core_sessions` VALUES ('88612fdcbac83185f4d8eb8f66f07b4a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j22y\";i:1531380555;}', '1531384155');
INSERT INTO `ims_core_sessions` VALUES ('3fad31371cee9072a6decd3790290da9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X8Bf\";i:1531380554;}', '1531384154');
INSERT INTO `ims_core_sessions` VALUES ('51599605ee53620dac814d301d6575ed', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WJWw\";i:1531380551;}', '1531384151');
INSERT INTO `ims_core_sessions` VALUES ('3f0a3b05ec660ab8ffde320805b160af', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"suFl\";i:1531380551;}', '1531384151');
INSERT INTO `ims_core_sessions` VALUES ('12c4b3c0ccf6717d4496090142139f99', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JwD9\";i:1531380550;}', '1531384150');
INSERT INTO `ims_core_sessions` VALUES ('4443e26a22362f3ca9e2aca60c69d737', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VbMp\";i:1531380550;}', '1531384150');
INSERT INTO `ims_core_sessions` VALUES ('aa7a609645b9f22e9225ba52282b43ff', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"STHO\";i:1531380550;}', '1531384150');
INSERT INTO `ims_core_sessions` VALUES ('312fead8a5df7f69fc948f2d8e1143ce', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cNMc\";i:1531380549;}', '1531384149');
INSERT INTO `ims_core_sessions` VALUES ('13b9159332bea70efe37ad9c0c84006a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tAYL\";i:1531380549;}', '1531384149');
INSERT INTO `ims_core_sessions` VALUES ('4daa77453b0149bb9b8c636a865acfa0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g3ja\";i:1531380548;}', '1531384148');
INSERT INTO `ims_core_sessions` VALUES ('34ad788e23f70e2f0b456771be40d0b1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zwWw\";i:1531380548;}', '1531384148');
INSERT INTO `ims_core_sessions` VALUES ('76ce3d8628fa692c73cdba3822bd935b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1P5\";i:1531380546;}', '1531384146');
INSERT INTO `ims_core_sessions` VALUES ('9e69c69399ca771bfb49c572bbee06e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uxT9\";i:1531380545;}', '1531384145');
INSERT INTO `ims_core_sessions` VALUES ('54cd7a3c6ebc3fdfb7a5731eebf5d597', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hqQV\";i:1531380545;}', '1531384145');
INSERT INTO `ims_core_sessions` VALUES ('529c9e1b9f9179d4244f06cddef04222', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fGwm\";i:1531380545;}', '1531384145');
INSERT INTO `ims_core_sessions` VALUES ('bf2438d7b4e7b6693106a9da1121475c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HQZM\";i:1531380543;}', '1531384143');
INSERT INTO `ims_core_sessions` VALUES ('2905dc31fe6f6b11d6e9a8cc02669ae5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zOK8\";i:1531380543;}', '1531384143');
INSERT INTO `ims_core_sessions` VALUES ('5d4fd6db14d662b7c34a288230fbd143', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c7eN\";i:1531380543;}', '1531384143');
INSERT INTO `ims_core_sessions` VALUES ('9f00426a50490898ee37394a9da34649', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Akqd\";i:1531380543;}', '1531384143');
INSERT INTO `ims_core_sessions` VALUES ('9cf082425467cedc147ce8c2496fc193', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MTpS\";i:1531380542;}', '1531384142');
INSERT INTO `ims_core_sessions` VALUES ('28c04e7fe86f3e7a673ff349e23a6e08', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K7dX\";i:1531380541;}', '1531384141');
INSERT INTO `ims_core_sessions` VALUES ('0216d4228944de3987b36d48660395b1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M84C\";i:1531380540;}', '1531384140');
INSERT INTO `ims_core_sessions` VALUES ('d2fb62b2c546cdb1066fa924a100e9ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h7vq\";i:1531380540;}', '1531384140');
INSERT INTO `ims_core_sessions` VALUES ('f05c51c5ce15b73b962a1bc0bf7a14c4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aes7\";i:1531380540;}', '1531384140');
INSERT INTO `ims_core_sessions` VALUES ('82f5315a3118d32e4ec1dcd3a8de7fd9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v56O\";i:1531380540;}', '1531384140');
INSERT INTO `ims_core_sessions` VALUES ('82364c5c4e6aedc8308420dfc9ac8725', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xdmh\";i:1531380538;}', '1531384138');
INSERT INTO `ims_core_sessions` VALUES ('dc56ac8a946f15a1ed3b32a2b1edb54a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F4op\";i:1531380537;}', '1531384137');
INSERT INTO `ims_core_sessions` VALUES ('1bd51dc44315920cbc781b7e58276f2d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i4n4\";i:1531380537;}', '1531384137');
INSERT INTO `ims_core_sessions` VALUES ('1dd9d5102fd5e2e162efce749219bb8e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YIu4\";i:1531380537;}', '1531384137');
INSERT INTO `ims_core_sessions` VALUES ('1a11fd9869aab8e175c32b9850c8f110', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gXRL\";i:1531380536;}', '1531384136');
INSERT INTO `ims_core_sessions` VALUES ('b2012827b73e7135b43e3cd027804e71', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NRgR\";i:1531380535;}', '1531384135');
INSERT INTO `ims_core_sessions` VALUES ('ed6fa9a680a289b6f55dd8acf02eb14d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z1Qs\";i:1531380535;}', '1531384135');
INSERT INTO `ims_core_sessions` VALUES ('d0a0977c459ee30015d6398178077869', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XPC7\";i:1531380535;}', '1531384135');
INSERT INTO `ims_core_sessions` VALUES ('09bdfd4bb46b06cb7ce243f1f6d6596d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c48F\";i:1531380535;}', '1531384135');
INSERT INTO `ims_core_sessions` VALUES ('ad95261b4946d193c61ddf4948fd6bf8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZI9C\";i:1531380535;}', '1531384135');
INSERT INTO `ims_core_sessions` VALUES ('473e96597cef0e0ce430bc1cd5333d1d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ujgR\";i:1531380534;}', '1531384134');
INSERT INTO `ims_core_sessions` VALUES ('91101c95e3410418ba6c15d843bd8e1f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tkd2\";i:1531380534;}', '1531384134');
INSERT INTO `ims_core_sessions` VALUES ('3f3e086fdddb72624583ea250ae9ccd0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OVqu\";i:1531380534;}', '1531384134');
INSERT INTO `ims_core_sessions` VALUES ('39518c60fd661c7e66cd49bd69e41b38', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G27u\";i:1531380534;}', '1531384134');
INSERT INTO `ims_core_sessions` VALUES ('8b5fdeff85976e6182fe3976eb8fbe44', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pdXT\";i:1531380533;}', '1531384133');
INSERT INTO `ims_core_sessions` VALUES ('795b502dbe7ed243c6adb23618944522', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s7QJ\";i:1531380532;}', '1531384132');
INSERT INTO `ims_core_sessions` VALUES ('dea58b3b28cb1aa2f4028d3cc85a93c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vuIC\";i:1531380508;}', '1531384108');
INSERT INTO `ims_core_sessions` VALUES ('d4b4f72f1c95a61c1299473cf3f2de0b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y74N\";i:1531380508;}', '1531384108');
INSERT INTO `ims_core_sessions` VALUES ('d7cdb70f4bfd35535ec21c0295183ddc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L6q0\";i:1531380508;}', '1531384108');
INSERT INTO `ims_core_sessions` VALUES ('01b47f1f60902a78ee400c4c53f1651b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eb14\";i:1531380508;}', '1531384108');
INSERT INTO `ims_core_sessions` VALUES ('25d2bb5ebac5d483731515d66babbe5e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V08p\";i:1531380501;}', '1531384101');
INSERT INTO `ims_core_sessions` VALUES ('cd6a58a8d22d3d35601dda4cb86a5303', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cfVA\";i:1531380501;}', '1531384101');
INSERT INTO `ims_core_sessions` VALUES ('2c25aacb0d87370ffa1d9d305a72e7dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dAst\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('0276541958300e37a5e1d62cb3d6e615', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjkL\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('59e0650f938ea88dd91e8ded9babe875', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FT01\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('30259ef800b7fe8c2fea18c51d473437', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OomL\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('c64c17b6a03af8b7049550b13f2dc457', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ooru\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('de610718c86b705a037114b60d60ea50', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ju9k\";i:1531380498;}', '1531384098');
INSERT INTO `ims_core_sessions` VALUES ('759f106353a492acf738c68d090aec03', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y0va\";i:1531380497;}', '1531384097');
INSERT INTO `ims_core_sessions` VALUES ('f743a9758c885fdb8c4c5cc394e4ba00', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uCj0\";i:1531380496;}', '1531384096');
INSERT INTO `ims_core_sessions` VALUES ('3e084a50d42bd388cebc226481270c6a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hk0m\";i:1531380496;}', '1531384096');
INSERT INTO `ims_core_sessions` VALUES ('e7483567b4256c35009239d026c8b30d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lTbs\";i:1531380495;}', '1531384095');
INSERT INTO `ims_core_sessions` VALUES ('4218c9b9e36938d42f61714e003db3ed', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F2yb\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('cbdb25b4609ff24caeb0f65059529f33', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mflf\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('616d3a782c7106460a4f2d3b9b3d4c16', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N0Ua\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('8d2ab7832457a480cca12ec98526af40', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VpfL\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('e24eb2d9eedf861eb92794a93043c1c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tw6g\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('da394f2cdcb9f41d880ca3dbb6b06ea7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O8I2\";i:1531380494;}', '1531384094');
INSERT INTO `ims_core_sessions` VALUES ('a1bb9fec35323a71f7e7e063e4a0d47c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UXKL\";i:1531380474;}', '1531384074');
INSERT INTO `ims_core_sessions` VALUES ('4dfcd55aa5340b1c4f596702401de662', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pAJf\";i:1531380469;}', '1531384069');
INSERT INTO `ims_core_sessions` VALUES ('fa8dc448b4d91d02fb2a40150c580a8d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F2kV\";i:1531380469;}', '1531384069');
INSERT INTO `ims_core_sessions` VALUES ('366c2823c628fbd1f2d3de25500dc3e2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i69D\";i:1531380201;}', '1531383801');
INSERT INTO `ims_core_sessions` VALUES ('14e7a27997266cde68d948c56e6cca22', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c5HG\";i:1531380201;}', '1531383801');
INSERT INTO `ims_core_sessions` VALUES ('980db198df19443f3a404795d6a183a3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OfHM\";i:1531380201;}', '1531383801');
INSERT INTO `ims_core_sessions` VALUES ('95e435583a16a370601bcc7699dbce50', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v0FI\";i:1531380201;}', '1531383801');
INSERT INTO `ims_core_sessions` VALUES ('2a13ec537454b52c5f56fc7de6d5d3de', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wr78\";i:1531380201;}', '1531383801');
INSERT INTO `ims_core_sessions` VALUES ('463b4206de07274bea9d58e8527bf055', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x2j0\";i:1531380200;}', '1531383800');
INSERT INTO `ims_core_sessions` VALUES ('a658fa0009349b7120bd400e3b098d88', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QYKr\";i:1531380199;}', '1531383799');
INSERT INTO `ims_core_sessions` VALUES ('7595675217144580659341ae3ab7cf98', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DBga\";i:1531380199;}', '1531383799');
INSERT INTO `ims_core_sessions` VALUES ('13bea02097305aa79d2895cc6a55e275', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HAKw\";i:1531380183;}', '1531383783');
INSERT INTO `ims_core_sessions` VALUES ('d48c77bc9cf9aa8923d314cdbafc0344', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"brJP\";i:1531380183;}', '1531383783');
INSERT INTO `ims_core_sessions` VALUES ('592b481189046a5aebd8bdb7f790837d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YWJj\";i:1531380183;}', '1531383783');
INSERT INTO `ims_core_sessions` VALUES ('64e4531c0138db63dec216d8ecc76a06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wnA7\";i:1531380182;}', '1531383782');
INSERT INTO `ims_core_sessions` VALUES ('6f65a0e24f705a83ad545e5925ee27ca', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CQJq\";i:1531380182;}', '1531383782');
INSERT INTO `ims_core_sessions` VALUES ('4a7c42465ed5bb1beff79d2e8f441061', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rxRj\";i:1531380181;}', '1531383781');
INSERT INTO `ims_core_sessions` VALUES ('377eb2929eab127011876a15b86031ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oi6P\";i:1531380181;}', '1531383781');
INSERT INTO `ims_core_sessions` VALUES ('94e9fd3667b37cecc8af331e919d0870', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ao7f\";i:1531380174;}', '1531383774');
INSERT INTO `ims_core_sessions` VALUES ('1b892197ba746c80304daf366819a69e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BbnW\";i:1531380174;}', '1531383774');
INSERT INTO `ims_core_sessions` VALUES ('904879d14463ab56eecbeb9ba801cb64', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ikx5\";i:1531380174;}', '1531383774');
INSERT INTO `ims_core_sessions` VALUES ('6ee0f9c853509e1e6f5368606eb189d9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gR9G\";i:1531380174;}', '1531383774');
INSERT INTO `ims_core_sessions` VALUES ('4662cda16131df929a273c45a773e0a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uVhA\";i:1531380174;}', '1531383774');
INSERT INTO `ims_core_sessions` VALUES ('8e2b1e4049c0f8cc9518a9914344a060', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gm7X\";i:1531380173;}', '1531383773');
INSERT INTO `ims_core_sessions` VALUES ('b23e276fb3cd952d5706960613767f47', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cFHN\";i:1531380173;}', '1531383773');
INSERT INTO `ims_core_sessions` VALUES ('795a92461fc4a6f8be4b13cb2e639473', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d7d9\";i:1531380171;}', '1531383771');
INSERT INTO `ims_core_sessions` VALUES ('94f7c4418deabf06af1b8fc9d8ab64e7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P379\";i:1531380171;}', '1531383771');
INSERT INTO `ims_core_sessions` VALUES ('4d9003527824c82b74833eeaa6127900', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VExp\";i:1531380171;}', '1531383771');
INSERT INTO `ims_core_sessions` VALUES ('410497b91862e9cf3e0fe038aa0ff1ad', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EHS6\";i:1531380170;}', '1531383770');
INSERT INTO `ims_core_sessions` VALUES ('005d0a59e45bf7cdf8a4c2e8b02f45f5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z7bU\";i:1531380169;}', '1531383769');
INSERT INTO `ims_core_sessions` VALUES ('0a74fc1647dadd113164ae5b1c8a5fd8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nl66\";i:1531380168;}', '1531383768');
INSERT INTO `ims_core_sessions` VALUES ('db17573c5e9a39240585ed2137b3a756', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cvSg\";i:1531380166;}', '1531383766');
INSERT INTO `ims_core_sessions` VALUES ('881f49416c7c849a8512852dae71fde3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IJog\";i:1531380166;}', '1531383766');
INSERT INTO `ims_core_sessions` VALUES ('092ce9ce260b95790574eb910d2bca18', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j6BY\";i:1531380166;}', '1531383766');
INSERT INTO `ims_core_sessions` VALUES ('31cbc16739355e900d8b08959d189af9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yhHh\";i:1531380165;}', '1531383765');
INSERT INTO `ims_core_sessions` VALUES ('6e8bad068ea2b724144325c6d2fb10ff', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jy7Y\";i:1531380164;}', '1531383764');
INSERT INTO `ims_core_sessions` VALUES ('6d519ae91ce37c9a45f89419f506cd52', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yX2r\";i:1531380164;}', '1531383764');
INSERT INTO `ims_core_sessions` VALUES ('bb599cd83bf8dd609b1cb18897ed0d69', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z18S\";i:1531380161;}', '1531383761');
INSERT INTO `ims_core_sessions` VALUES ('0857252374833cdce35b1f85e257b458', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cWJ5\";i:1531380161;}', '1531383761');
INSERT INTO `ims_core_sessions` VALUES ('90666909b577ef1efdfee3fcf75516bd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I6fk\";i:1531380161;}', '1531383761');
INSERT INTO `ims_core_sessions` VALUES ('100f461c781e00fa3731c321bac51ab5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nzTP\";i:1531380161;}', '1531383761');
INSERT INTO `ims_core_sessions` VALUES ('e482215f59edcc4b335547069024c8ef', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"doUj\";i:1531380160;}', '1531383760');
INSERT INTO `ims_core_sessions` VALUES ('804348852428fd5f60404c04fd54f9f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ny48\";i:1531380159;}', '1531383759');
INSERT INTO `ims_core_sessions` VALUES ('6d77bfd80b80a6f9573f58a08cca9fb4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IIvH\";i:1531380159;}', '1531383759');
INSERT INTO `ims_core_sessions` VALUES ('5db4e2928ede789ce80ba7fbe44e5910', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E9I0\";i:1531380159;}', '1531383759');
INSERT INTO `ims_core_sessions` VALUES ('0f4f90ef911b1c1ca9a9b22b0dc5d8d6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eZuL\";i:1531380159;}', '1531383759');
INSERT INTO `ims_core_sessions` VALUES ('0ec860b9f4476076bcfa5611bdb7abf0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QL9e\";i:1531380158;}', '1531383758');
INSERT INTO `ims_core_sessions` VALUES ('653320e141ba7de930e0b9edab4fca95', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EtR4\";i:1531380156;}', '1531383756');
INSERT INTO `ims_core_sessions` VALUES ('96a131230975be872cd68680dac310c3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hkiv\";i:1531380156;}', '1531383756');
INSERT INTO `ims_core_sessions` VALUES ('0c7b141d153af38cbeceeb3707197483', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K5T3\";i:1531380156;}', '1531383756');
INSERT INTO `ims_core_sessions` VALUES ('aa7666e1d292b7306a696bfecbd8a1b5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E5hv\";i:1531380156;}', '1531383756');
INSERT INTO `ims_core_sessions` VALUES ('f963c8a348951373c53a65537e4d4aca', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mw3z\";i:1531380156;}', '1531383756');
INSERT INTO `ims_core_sessions` VALUES ('702e6e15671729bbfb5ac214f689ef70', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"duzT\";i:1531380155;}', '1531383755');
INSERT INTO `ims_core_sessions` VALUES ('58c70cc58f1ff38dcac327078a4cc033', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ovdI\";i:1531380155;}', '1531383755');
INSERT INTO `ims_core_sessions` VALUES ('3843ec9103c356610b355ed5f32ba17c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PUUk\";i:1531380149;}', '1531383749');
INSERT INTO `ims_core_sessions` VALUES ('2719f77a27201e548e81cc4b7d27340d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zp6R\";i:1531380147;}', '1531383747');
INSERT INTO `ims_core_sessions` VALUES ('7ef44740e839184e6d189aee87ae8878', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vDzB\";i:1531380146;}', '1531383746');
INSERT INTO `ims_core_sessions` VALUES ('84848c98c44540c05c51a581f207ed1a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S6Jr\";i:1531380146;}', '1531383746');
INSERT INTO `ims_core_sessions` VALUES ('d88c7bef388f3e2b8c8e313c51e60748', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N8KP\";i:1531380145;}', '1531383745');
INSERT INTO `ims_core_sessions` VALUES ('25b1e1adb5be339e82b1be4f923fc35a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kb81\";i:1531380145;}', '1531383745');
INSERT INTO `ims_core_sessions` VALUES ('19d1554b86ac651cbce19c015dda6c06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gJzQ\";i:1531380144;}', '1531383744');
INSERT INTO `ims_core_sessions` VALUES ('83c0542ddc035510e766332701ef88f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wOJX\";i:1531380144;}', '1531383744');
INSERT INTO `ims_core_sessions` VALUES ('831b7784ede8712779fd2af1cb91a9e7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bzVI\";i:1531380144;}', '1531383744');
INSERT INTO `ims_core_sessions` VALUES ('b184d4282f7446306d4ea2eb2ba9d6dd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sxxD\";i:1531380142;}', '1531383742');
INSERT INTO `ims_core_sessions` VALUES ('a431821312a50fc82fe9bdcf98504e0e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g5kn\";i:1531380136;}', '1531383736');
INSERT INTO `ims_core_sessions` VALUES ('f474885e1b2deec6b780291a007d6c2f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xBGg\";i:1531380136;}', '1531383736');
INSERT INTO `ims_core_sessions` VALUES ('aa9fb02e2319df233638e734aafb653e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rZop\";i:1531380136;}', '1531383736');
INSERT INTO `ims_core_sessions` VALUES ('0c1404ab79574490c0b7af86872d0e07', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LQ51\";i:1531380136;}', '1531383736');
INSERT INTO `ims_core_sessions` VALUES ('4a4272ea066d8d6e0b9806092db08a83', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n399\";i:1531380136;}', '1531383736');
INSERT INTO `ims_core_sessions` VALUES ('951866a0250b57b5142d2a8ab014a38e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ye1z\";i:1531380115;}', '1531383715');
INSERT INTO `ims_core_sessions` VALUES ('bcd995f2b99960d71b31483ef43a11cc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iy1f\";i:1531380115;}', '1531383715');
INSERT INTO `ims_core_sessions` VALUES ('20395f6d0a0c5e9b5661ddfed56f9b59', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DkVZ\";i:1531380115;}', '1531383715');
INSERT INTO `ims_core_sessions` VALUES ('91d59c0518a620d0784982159ddd06bd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lot7\";i:1531380115;}', '1531383715');
INSERT INTO `ims_core_sessions` VALUES ('440babbc25cf8da25b7402d47c92e3a1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Shch\";i:1531380114;}', '1531383714');
INSERT INTO `ims_core_sessions` VALUES ('139266375c139ab9da0adb24c05b2ecd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uumR\";i:1531380114;}', '1531383714');
INSERT INTO `ims_core_sessions` VALUES ('8e851d9f01fc5f1a7823ae969dafe04f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r2q2\";i:1531380112;}', '1531383712');
INSERT INTO `ims_core_sessions` VALUES ('bf45d39ecf99f08c255b379e56020f86', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GHMx\";i:1531380111;}', '1531383711');
INSERT INTO `ims_core_sessions` VALUES ('d5f521557e864d1858016bb7362f8554', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QID2\";i:1531380110;}', '1531383710');
INSERT INTO `ims_core_sessions` VALUES ('7a6b6d162be69aee4380d399aee40e46', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XjUW\";i:1531380110;}', '1531383710');
INSERT INTO `ims_core_sessions` VALUES ('ec28595ea6890f31a14d8c15138c6c52', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ttd8\";i:1531380110;}', '1531383710');
INSERT INTO `ims_core_sessions` VALUES ('13c74208a0cf3c6a9fe2f4056e9e32d0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RqVp\";i:1531380110;}', '1531383710');
INSERT INTO `ims_core_sessions` VALUES ('e03e3482dfc257fe0376bc5d239f0123', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OF54\";i:1531380109;}', '1531383709');
INSERT INTO `ims_core_sessions` VALUES ('61e6b528352336f4615c7123cf28e76a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p551\";i:1531380109;}', '1531383709');
INSERT INTO `ims_core_sessions` VALUES ('5039ea859c5361ed911393183ab2a0b6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mRrW\";i:1531380108;}', '1531383708');
INSERT INTO `ims_core_sessions` VALUES ('b1114eb71c2d18521b3c70aee9166dc8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fra7\";i:1531380108;}', '1531383708');
INSERT INTO `ims_core_sessions` VALUES ('cc59d758851c1c8ca6ea5f0a70a84758', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tJNW\";i:1531380108;}', '1531383708');
INSERT INTO `ims_core_sessions` VALUES ('2ac69f5d69c037a10fd409df765bb5b5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mxD8\";i:1531380107;}', '1531383707');
INSERT INTO `ims_core_sessions` VALUES ('0889d5ebac99f0d1bf01a1baf87c85b8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ELPq\";i:1531380106;}', '1531383706');
INSERT INTO `ims_core_sessions` VALUES ('9dcc814ea5481d0948147433660e31f6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Frj7\";i:1531380105;}', '1531383705');
INSERT INTO `ims_core_sessions` VALUES ('8d4d0207bed9d344047445fae79b9b91', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5Hc\";i:1531380104;}', '1531383704');
INSERT INTO `ims_core_sessions` VALUES ('df4f2025826d3b2823607a0d51f6d813', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RnaW\";i:1531380104;}', '1531383704');
INSERT INTO `ims_core_sessions` VALUES ('4014fb16110918e171665a514a62e80d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cYp6\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('036a5c72a7146614143cba5bebb34961', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cxdx\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('2c1e57a78d6b6b925cf8b41d8e2cfb6c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MOr8\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('c3f0a45ea40ac584ab4800e9fcd4495a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UO6o\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('eed26f10f592095c5a6fa8b0f1e1a018', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BXUU\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('79f8b1e2fb087bfeb4d2dd7f2f6a14a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nnRo\";i:1531380103;}', '1531383703');
INSERT INTO `ims_core_sessions` VALUES ('6f8beab700604adc591856aa40a840fc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D0Lx\";i:1531380102;}', '1531383702');
INSERT INTO `ims_core_sessions` VALUES ('d5277e9454c1d68214cad1477094ad17', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AKKz\";i:1531380102;}', '1531383702');
INSERT INTO `ims_core_sessions` VALUES ('949c6c805bcfa663ed10bd7df2577ac9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GyM7\";i:1531380101;}', '1531383701');
INSERT INTO `ims_core_sessions` VALUES ('880b8fe02389419e377cc6e49f917707', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lXVR\";i:1531380101;}', '1531383701');
INSERT INTO `ims_core_sessions` VALUES ('1950171b89566d98cefcf49009b95edd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mr1Y\";i:1531380100;}', '1531383700');
INSERT INTO `ims_core_sessions` VALUES ('aecb8c9425bee376b4a959176f84ebbc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jkHb\";i:1531380099;}', '1531383699');
INSERT INTO `ims_core_sessions` VALUES ('277a6d1f8e3deb94eacbd8675b8ccfc3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TBqH\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('5311ef05526e4ff78caa6d679abe6cba', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QxY4\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('b9b19b633dca7d5015af7b2f98291eba', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xxPb\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('9d36b5b3372295654f809f9eea50378c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tBo1\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('02362b5f66044dfa8138818e2c58d3ba', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pDCM\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('18e37c93d03744fe8745b49eed422705', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tmls\";i:1531380097;}', '1531383697');
INSERT INTO `ims_core_sessions` VALUES ('5bb1d454f5dbc726c73a9a9c55f403c4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sM5N\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('7b3eacf2dfa954d2f7716fccc8a1cd51', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RWw6\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('f32d1661dee141ec5014d2429ae32d7c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gosm\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('e60d36363ff0feeaaac14afebce160ad', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tvUD\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('b8762d77b914d95ea04f6f07ad55b50d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W0xx\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('be285cb13be71d77f4b69fcf4924a974', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MQkY\";i:1531380095;}', '1531383695');
INSERT INTO `ims_core_sessions` VALUES ('2e44fce3ee02ad1d69b44ed56d4c05b0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AQze\";i:1531380094;}', '1531383694');
INSERT INTO `ims_core_sessions` VALUES ('de820c1264626e2c60213dd81e23a2b4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ikyu\";i:1531380094;}', '1531383694');
INSERT INTO `ims_core_sessions` VALUES ('04500dc5c4f93d4d55ff3daf3f60fdb7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IdKK\";i:1531380094;}', '1531383694');
INSERT INTO `ims_core_sessions` VALUES ('3ae0e08cbd6dea3b8dce15268b986f06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M4oL\";i:1531380093;}', '1531383693');
INSERT INTO `ims_core_sessions` VALUES ('c152676c62f69e4cd8501f55fc1af242', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s8gZ\";i:1531380092;}', '1531383692');
INSERT INTO `ims_core_sessions` VALUES ('ccd7e7899521322c528c89cac057114a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L8Nn\";i:1531380092;}', '1531383692');
INSERT INTO `ims_core_sessions` VALUES ('c37ffbcdfe9fdf7f351e2967573dbd0a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GFQY\";i:1531380091;}', '1531383691');
INSERT INTO `ims_core_sessions` VALUES ('c86abf8807758516d07f887f2392b1fb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JCgY\";i:1531380091;}', '1531383691');
INSERT INTO `ims_core_sessions` VALUES ('dcb3556e7d66fccf989058e774e2f988', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"icG1\";i:1531380091;}', '1531383691');
INSERT INTO `ims_core_sessions` VALUES ('5ac6743736a4c88262f7e8eb9ee29429', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F77B\";i:1531380088;}', '1531383688');
INSERT INTO `ims_core_sessions` VALUES ('a9443a275415384ec1cb880a12187cd0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SUvj\";i:1531380088;}', '1531383688');
INSERT INTO `ims_core_sessions` VALUES ('557f9ff270bb3ef5c47673479ced388b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cwp0\";i:1531380088;}', '1531383688');
INSERT INTO `ims_core_sessions` VALUES ('f3aeee7ff3489f372130654fabf19bda', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oMKd\";i:1531380088;}', '1531383688');
INSERT INTO `ims_core_sessions` VALUES ('2b8ef523542669a2eeebb71566f939ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MTtT\";i:1531380080;}', '1531383680');
INSERT INTO `ims_core_sessions` VALUES ('37792be0545240195d585d0df47510be', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W9H8\";i:1531380080;}', '1531383680');
INSERT INTO `ims_core_sessions` VALUES ('3a55346ba55d7741397115421f890a8a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w2E4\";i:1531380073;}', '1531383673');
INSERT INTO `ims_core_sessions` VALUES ('b9f4127819d13c7d6f36c70d0359977d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XRna\";i:1531380072;}', '1531383672');
INSERT INTO `ims_core_sessions` VALUES ('4e3639e6084d7e1a8454afbfe0dcf29b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vH1G\";i:1531380067;}', '1531383667');
INSERT INTO `ims_core_sessions` VALUES ('3f24a2c1b41ffd4c9456da12be488ad4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uxve\";i:1531380067;}', '1531383667');
INSERT INTO `ims_core_sessions` VALUES ('09ef0afd2ad1332331c09e8113ca7ab4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H4wN\";i:1531380063;}', '1531383663');
INSERT INTO `ims_core_sessions` VALUES ('37de98ebc195f037546fadb8c2d4c576', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iq59\";i:1531380063;}', '1531383663');
INSERT INTO `ims_core_sessions` VALUES ('39be41081a5edaa4fb68a2794025b264', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DEQA\";i:1531380063;}', '1531383663');
INSERT INTO `ims_core_sessions` VALUES ('5c2f3abb76fe5d5e80ae5c2b4ae00b3f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EKk6\";i:1531380062;}', '1531383662');
INSERT INTO `ims_core_sessions` VALUES ('69e53f4cf93b174f785372891b41ebce', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZhHL\";i:1531380060;}', '1531383660');
INSERT INTO `ims_core_sessions` VALUES ('815e664948c7304a6356520266e3aceb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cZwA\";i:1531380059;}', '1531383659');
INSERT INTO `ims_core_sessions` VALUES ('9c38585e06113784dd78ac9e94a98af2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yM6L\";i:1531380058;}', '1531383658');
INSERT INTO `ims_core_sessions` VALUES ('da713676f12b46b17780a4835b38ea42', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iuSB\";i:1531380058;}', '1531383658');
INSERT INTO `ims_core_sessions` VALUES ('5bb5391dc8e4c29f6483fec8ea965386', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"edmO\";i:1531380058;}', '1531383658');
INSERT INTO `ims_core_sessions` VALUES ('968987f5048f7649ed2420218476db3e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yG5e\";i:1531380057;}', '1531383657');
INSERT INTO `ims_core_sessions` VALUES ('f1ffbe356869c0e574164426e9448b19', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ani4\";i:1531380055;}', '1531383655');
INSERT INTO `ims_core_sessions` VALUES ('993921c44bdd4cc7b5f3eee662a62d64', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AH4t\";i:1531380055;}', '1531383655');
INSERT INTO `ims_core_sessions` VALUES ('55ed83d2c62bb40b49e88d482ddbb2b5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rD6l\";i:1531380049;}', '1531383649');
INSERT INTO `ims_core_sessions` VALUES ('5e17aa92cbc1d76218f33fc96f498cb8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cKH8\";i:1531380049;}', '1531383649');
INSERT INTO `ims_core_sessions` VALUES ('b79ecdefed7dd87376efd10c588dc9e7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EN6a\";i:1531380049;}', '1531383649');
INSERT INTO `ims_core_sessions` VALUES ('00fcbfa1ae138f8c41fcac73920c7312', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g6L6\";i:1531380048;}', '1531383648');
INSERT INTO `ims_core_sessions` VALUES ('988890d954dabac67dd7a4bdc20260f8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sAvB\";i:1531380048;}', '1531383648');
INSERT INTO `ims_core_sessions` VALUES ('430260d9afe52360e8430003f994d927', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TEpc\";i:1531380048;}', '1531383648');
INSERT INTO `ims_core_sessions` VALUES ('fbeedd36688c162cf689714d33f1b15c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mEE9\";i:1531380047;}', '1531383647');
INSERT INTO `ims_core_sessions` VALUES ('eb4ae1b08ef8457bc3fc8cef99a15898', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kRop\";i:1531380046;}', '1531383646');
INSERT INTO `ims_core_sessions` VALUES ('fcec360fe107659c8f10e1da4cbcf04b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LQLM\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('60247ea52ce3e2bcb0fe46ab93eb8a65', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"he5M\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('881f3f1c443afa18e82f4661d44d5a39', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qvYu\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('0ee054513692f38d4296f3027e0e708b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zGvM\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('af983fe78343b00f523600fdfcc2a3c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fmm5\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('9339c146deef9b2c92a211029ab9afc0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yQb0\";i:1531380044;}', '1531383644');
INSERT INTO `ims_core_sessions` VALUES ('78b2970b2d1a99e93f536e184bd937e5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wmd9\";i:1531380043;}', '1531383643');
INSERT INTO `ims_core_sessions` VALUES ('c2b708fca1a62f3b87aae3ea316f68e1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ydl1\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('352696bf9fd7a2b855f02da96a5aafb0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a93p\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('9f72a65510990e9790c267b60dc41677', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tx3X\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('f02c60253fa0f68fefe28e4436603f8d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bAsR\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('c87dbae688cb7e1968a4986335bce1bb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pBPm\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('cd89025ef6d76d516fdbe0982ed86a41', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kWts\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('ba952dfa94e98cdaa8c298f6fbab0dc4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xaAA\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('3d95daf191bc728f8feaa63e422cade0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pROF\";i:1531380042;}', '1531383642');
INSERT INTO `ims_core_sessions` VALUES ('ad65a58576073fa9e6a79be70261cded', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N08I\";i:1531380040;}', '1531383640');
INSERT INTO `ims_core_sessions` VALUES ('dcf719b3e7627426c346f2063ed0fdbb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sm0B\";i:1531380040;}', '1531383640');
INSERT INTO `ims_core_sessions` VALUES ('e9dc686065b7c899f73abaf805d99556', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lupn\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('f2d15eb45eb59aca947dcf2216a17975', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n7Ul\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('440fe83f9393bb32c75943234fd39993', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PM81\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('0084cb4ea423a089530a267ca71f7a64', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KuUf\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('e119d144581f5114028987ab74978366', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wZpp\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('99fc5ead732b28bc4e3f55f785326a72', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gmgi\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('95b6fb85f8d97c59076f249bcbd1cb35', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j7hw\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('a613352cd0d256a65451495c3b9aee0f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O2M7\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('0d50f23a93386562011a6a81a2e101b3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w7c8\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('8931f2835b3797ede9dcafee3216e8b9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U8TZ\";i:1531380036;}', '1531383636');
INSERT INTO `ims_core_sessions` VALUES ('70b8954481b01272444141d6f93fecf8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eym2\";i:1531380035;}', '1531383635');
INSERT INTO `ims_core_sessions` VALUES ('7c64b57cff40d68d393c13af28c1f677', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e5Zf\";i:1531380034;}', '1531383634');
INSERT INTO `ims_core_sessions` VALUES ('2acd8eb9989979f07157186a5ecfc414', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KpHd\";i:1531380034;}', '1531383634');
INSERT INTO `ims_core_sessions` VALUES ('98ffc07c021061156433158da59f82c7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pD9G\";i:1531380033;}', '1531383633');
INSERT INTO `ims_core_sessions` VALUES ('4d727a17bb64e6d8d6e2ae76779e33a8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KCgy\";i:1531380032;}', '1531383632');
INSERT INTO `ims_core_sessions` VALUES ('8975edd732adcb9e9dbfb03e972c293b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EOZW\";i:1531380032;}', '1531383632');
INSERT INTO `ims_core_sessions` VALUES ('c36799bcb4b44542a66f3ae369d71ec2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jE25\";i:1531380030;}', '1531383630');
INSERT INTO `ims_core_sessions` VALUES ('17a90f2d97a4d33b656ede7eea8161ff', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rm0G\";i:1531380030;}', '1531383630');
INSERT INTO `ims_core_sessions` VALUES ('661dc8aa64ca679afdbfecabbc39a895', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BY3S\";i:1531380013;}', '1531383613');
INSERT INTO `ims_core_sessions` VALUES ('d0b2e0ea8711a0e6f5a8385d1edeeb30', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RCS2\";i:1531380012;}', '1531383612');
INSERT INTO `ims_core_sessions` VALUES ('ff9dbe322e400b7e2c02f12021c416f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cNQ9\";i:1531380012;}', '1531383612');
INSERT INTO `ims_core_sessions` VALUES ('505693cadb8e93768030ee758b9efe68', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pMG5\";i:1531380008;}', '1531383608');
INSERT INTO `ims_core_sessions` VALUES ('7d7e8a94fd09c555a05b02a8a2175acd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dnk4\";i:1531380007;}', '1531383607');
INSERT INTO `ims_core_sessions` VALUES ('390c12ba0e15eab67b6775e59e160e73', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OXN2\";i:1531380006;}', '1531383606');
INSERT INTO `ims_core_sessions` VALUES ('dcbabec1f2703d0b2f5952fcb33ec177', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LZ69\";i:1531379985;}', '1531383585');
INSERT INTO `ims_core_sessions` VALUES ('de0e4436d20dc353a5461c204d84790e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O1Yc\";i:1531379985;}', '1531383585');
INSERT INTO `ims_core_sessions` VALUES ('9ac34fbbe3732d3de9df8e7973a7b55d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h0to\";i:1531379984;}', '1531383584');
INSERT INTO `ims_core_sessions` VALUES ('9acd46bd84454712901966390d1069e8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x3rf\";i:1531379983;}', '1531383583');
INSERT INTO `ims_core_sessions` VALUES ('d215e571b6bb5b22b451f4c7f2a0ca0b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mRf7\";i:1531379982;}', '1531383582');
INSERT INTO `ims_core_sessions` VALUES ('f499ef179798493519f908e4e5361f02', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S5lI\";i:1531379981;}', '1531383581');
INSERT INTO `ims_core_sessions` VALUES ('d97650860dabb97978d34262f5e26fb8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rKuU\";i:1531379975;}', '1531383575');
INSERT INTO `ims_core_sessions` VALUES ('ad6a7b82adc0bb200c9db9df930a8617', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r2O2\";i:1531379974;}', '1531383574');
INSERT INTO `ims_core_sessions` VALUES ('13b60c6399c1e8fb33231200f388840f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p6W2\";i:1531379974;}', '1531383574');
INSERT INTO `ims_core_sessions` VALUES ('a31c7bdf6c6d6845057ae5affeab68cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YR9Q\";i:1531379971;}', '1531383571');
INSERT INTO `ims_core_sessions` VALUES ('c1ab9e72496fd6a6a6f62ddd07c9d57c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LGNC\";i:1531379970;}', '1531383570');
INSERT INTO `ims_core_sessions` VALUES ('a89a6883b30e2f95ff7561b4ecd3db0d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BpVP\";i:1531379970;}', '1531383570');
INSERT INTO `ims_core_sessions` VALUES ('fd4a8a21cfcdcc6a8c274a4d42e8f71f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V3DN\";i:1531379959;}', '1531383559');
INSERT INTO `ims_core_sessions` VALUES ('6cb2863489b7f92a88db64c2b7f7c7cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iWLl\";i:1531379958;}', '1531383558');
INSERT INTO `ims_core_sessions` VALUES ('181985ffcff3e9ffefdd2a91dd1ea792', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"urPP\";i:1531379957;}', '1531383557');
INSERT INTO `ims_core_sessions` VALUES ('382816240a4c7e4c7016e8e0e785be7e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yO6C\";i:1531379957;}', '1531383557');
INSERT INTO `ims_core_sessions` VALUES ('fdc2e1aa3ca913dd30d89e674c162e08', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EdK1\";i:1531379952;}', '1531383552');
INSERT INTO `ims_core_sessions` VALUES ('d9a0ab4ac549b5eefb6232a1058c5ca0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X77G\";i:1531379949;}', '1531383549');
INSERT INTO `ims_core_sessions` VALUES ('ccc0a2b22fd365b8ea875a219d5a85ee', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"khpo\";i:1531379949;}', '1531383549');
INSERT INTO `ims_core_sessions` VALUES ('c2fc6cca3531514e99e559f689656ff6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n2Or\";i:1531379930;}', '1531383530');
INSERT INTO `ims_core_sessions` VALUES ('ccc17d8ba8c07b92889802983bc32d22', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"omn3\";i:1531379923;}', '1531383523');
INSERT INTO `ims_core_sessions` VALUES ('98531cb69fd8691c3aae97c27bb7dbc2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L2Pm\";i:1531379922;}', '1531383522');
INSERT INTO `ims_core_sessions` VALUES ('bb49fa6281d911eb07c097b530ff6ad9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mu1B\";i:1531379922;}', '1531383522');
INSERT INTO `ims_core_sessions` VALUES ('9883085c5c7c24160487b13ed4606695', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fNuz\";i:1531379917;}', '1531383517');
INSERT INTO `ims_core_sessions` VALUES ('9a2540bc9699bd99ad50e1a5eb8999a9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h7rN\";i:1531379917;}', '1531383517');
INSERT INTO `ims_core_sessions` VALUES ('5d9085883dcdd3cfaae3d0c88c8c32f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hf0r\";i:1531379917;}', '1531383517');
INSERT INTO `ims_core_sessions` VALUES ('dff95dbd498b4216bcd72eca0495f6df', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c996\";i:1531379916;}', '1531383516');
INSERT INTO `ims_core_sessions` VALUES ('1975ec233b96485995a86ff0ead31bc5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZBun\";i:1531379915;}', '1531383515');
INSERT INTO `ims_core_sessions` VALUES ('203821e673072887950a48e56de44e87', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MtTM\";i:1531379915;}', '1531383515');
INSERT INTO `ims_core_sessions` VALUES ('d20ddf4c374c0f6a1c9a4ece855085fc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MY3B\";i:1531379910;}', '1531383510');
INSERT INTO `ims_core_sessions` VALUES ('04006b27cb0c381848c979ecea136fa4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gt99\";i:1531379910;}', '1531383510');
INSERT INTO `ims_core_sessions` VALUES ('8497a2f95ffef32491658f689ac9c4c8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EqlL\";i:1531379909;}', '1531383509');
INSERT INTO `ims_core_sessions` VALUES ('c3eeb630a07bbd569f0cc268bc07b913', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u7e8\";i:1531379907;}', '1531383507');
INSERT INTO `ims_core_sessions` VALUES ('8e2ebc3d6a860880b15b689def14ce07', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v686\";i:1531379907;}', '1531383507');
INSERT INTO `ims_core_sessions` VALUES ('ec39e3345ad3173e7d39966a7823eaab', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h2M6\";i:1531379907;}', '1531383507');
INSERT INTO `ims_core_sessions` VALUES ('4f6fc7d681766a7ed70b8010dd333b72', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d98u\";i:1531379907;}', '1531383507');
INSERT INTO `ims_core_sessions` VALUES ('df1b3a6ded22718d0c1b1eb5ba2e2f1e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z30z\";i:1531379895;}', '1531383495');
INSERT INTO `ims_core_sessions` VALUES ('4ce3112ef7aae913ee5434b98fc5f723', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MJsV\";i:1531379895;}', '1531383495');
INSERT INTO `ims_core_sessions` VALUES ('e1455dba9c105def333198016650ee4b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FkKl\";i:1531379892;}', '1531383492');
INSERT INTO `ims_core_sessions` VALUES ('fc813ff36222763a684aebbc4869298e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IKOo\";i:1531379891;}', '1531383491');
INSERT INTO `ims_core_sessions` VALUES ('f7a33c048c39992bdf98fb259fc65167', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xl3A\";i:1531379886;}', '1531383486');
INSERT INTO `ims_core_sessions` VALUES ('bc1033cabb5904631cc866f7391e77c5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H72r\";i:1531379886;}', '1531383486');
INSERT INTO `ims_core_sessions` VALUES ('54a808ecb7b07e12712853d1f01164b2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a8jI\";i:1531379885;}', '1531383485');
INSERT INTO `ims_core_sessions` VALUES ('eb2047997a376835d9c64d0560da7f7e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o99r\";i:1531379884;}', '1531383484');
INSERT INTO `ims_core_sessions` VALUES ('9eba38f4bb7878d3bd8695f75007ac06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fC9m\";i:1531379883;}', '1531383483');
INSERT INTO `ims_core_sessions` VALUES ('430bba7656abe1277d0d45fa8ab43ba3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d6Wz\";i:1531379883;}', '1531383483');
INSERT INTO `ims_core_sessions` VALUES ('8552b14390e6a9fd8b10c171a6714760', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O1C9\";i:1531379883;}', '1531383483');
INSERT INTO `ims_core_sessions` VALUES ('6bc0b1eca9dde78c9e70239d91cb5b54', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oqz6\";i:1531379883;}', '1531383483');
INSERT INTO `ims_core_sessions` VALUES ('ad080e1aa56ec720a7a11495e15c2277', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xmJA\";i:1531379883;}', '1531383483');
INSERT INTO `ims_core_sessions` VALUES ('147c4a9f9d6217b88d5f5b1804687b3e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TR25\";i:1531379880;}', '1531383480');
INSERT INTO `ims_core_sessions` VALUES ('184d415c1fe445e276d0a89c02c85411', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xHgL\";i:1531379880;}', '1531383480');
INSERT INTO `ims_core_sessions` VALUES ('e3460c951e442983ab43fb47d02c6132', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ij4K\";i:1531379855;}', '1531383455');
INSERT INTO `ims_core_sessions` VALUES ('cb3ff1a68787e2723d3cb2716067a709', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G83p\";i:1531379854;}', '1531383454');
INSERT INTO `ims_core_sessions` VALUES ('f6240a284a3f9d20660b70d1ca0ee9e1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I551\";i:1531379853;}', '1531383453');
INSERT INTO `ims_core_sessions` VALUES ('a7f4f3bd49c93bf1152a81da58a460a3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CkMi\";i:1531379850;}', '1531383450');
INSERT INTO `ims_core_sessions` VALUES ('0dd286abb448b600b7bb0392ff6d746d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s0Bh\";i:1531379850;}', '1531383450');
INSERT INTO `ims_core_sessions` VALUES ('646d31752cf4f1f6b7c046ee4a8b87a6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IzT8\";i:1531379850;}', '1531383450');
INSERT INTO `ims_core_sessions` VALUES ('d7bd55f51c57c978a4a226129a551af1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uB9B\";i:1531379850;}', '1531383450');
INSERT INTO `ims_core_sessions` VALUES ('2cba845fce8bd909191337aef1b8c88f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n9m8\";i:1531379850;}', '1531383450');
INSERT INTO `ims_core_sessions` VALUES ('686d4579271e0c050be001dc0c905275', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uezs\";i:1531379844;}', '1531383444');
INSERT INTO `ims_core_sessions` VALUES ('b621cb97316688e61d44a0fec36e1bb3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pua7\";i:1531379841;}', '1531383441');
INSERT INTO `ims_core_sessions` VALUES ('c8f5aeb1e94a3d80776ef581d99337ce', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aMml\";i:1531379840;}', '1531383440');
INSERT INTO `ims_core_sessions` VALUES ('1c3434939e10acc2a7cecb425d679ae5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ww28\";i:1531379834;}', '1531383434');
INSERT INTO `ims_core_sessions` VALUES ('e093d54eefef7f7010afe5ef9328d7bb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TPPr\";i:1531379834;}', '1531383434');
INSERT INTO `ims_core_sessions` VALUES ('52f17ff707ab71c7b40630b0feb87585', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A0aM\";i:1531379834;}', '1531383434');
INSERT INTO `ims_core_sessions` VALUES ('a0cf8f09de9d7727d092ed43d9b9c9aa', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ig6M\";i:1531379832;}', '1531383432');
INSERT INTO `ims_core_sessions` VALUES ('7d702737fd794a0a1e5fed0f45ccf97d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K4D2\";i:1531379818;}', '1531383418');
INSERT INTO `ims_core_sessions` VALUES ('2ddaa97c3d7a5bfd320912a8850536ef', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PZ84\";i:1531379818;}', '1531383418');
INSERT INTO `ims_core_sessions` VALUES ('8309d223a441c2e5aed8cbcd21274447', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ujil\";i:1531379812;}', '1531383412');
INSERT INTO `ims_core_sessions` VALUES ('dc80dcfbbf990f75d482b8d7a2c8fbe5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bgqG\";i:1531379812;}', '1531383412');
INSERT INTO `ims_core_sessions` VALUES ('9b6f0ff38d43eabccaf8d71bd91411c9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AoST\";i:1531379812;}', '1531383412');
INSERT INTO `ims_core_sessions` VALUES ('0c7581f96e813452aeac0704316026b8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WTXS\";i:1531379812;}', '1531383412');
INSERT INTO `ims_core_sessions` VALUES ('e6eade1416f3564e78312f167567b1bd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AGem\";i:1531379812;}', '1531383412');
INSERT INTO `ims_core_sessions` VALUES ('3881d82504bf775d3ab1b3f1eaa90994', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O95G\";i:1531379802;}', '1531383402');
INSERT INTO `ims_core_sessions` VALUES ('c4ef64f103805280428ee8c2e4788739', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qQPu\";i:1531379801;}', '1531383401');
INSERT INTO `ims_core_sessions` VALUES ('57e428f7c75e4df24226948a44c0e835', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tiIo\";i:1531379801;}', '1531383401');
INSERT INTO `ims_core_sessions` VALUES ('799842b8b72af0dadf41638be612d0cf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o6Un\";i:1531379801;}', '1531383401');
INSERT INTO `ims_core_sessions` VALUES ('1c2162276d760f31674806d686776b42', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z4G1\";i:1531379801;}', '1531383401');
INSERT INTO `ims_core_sessions` VALUES ('d7636350016ea0ce1a794ff78a266960', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WLS6\";i:1531379801;}', '1531383401');
INSERT INTO `ims_core_sessions` VALUES ('496661be6828b3b1c196d496ff4b46c6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tak2\";i:1531379790;}', '1531383390');
INSERT INTO `ims_core_sessions` VALUES ('b33e6f9a43c20aee35a6208125981e04', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hQp5\";i:1531379789;}', '1531383389');
INSERT INTO `ims_core_sessions` VALUES ('fd547caee86f1fe9f4d75cf1c7723094', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gX7q\";i:1531379789;}', '1531383389');
INSERT INTO `ims_core_sessions` VALUES ('3c5faad1d35f3066e12dcdec1a59b9e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R0Ni\";i:1531379789;}', '1531383389');
INSERT INTO `ims_core_sessions` VALUES ('fbb96087c7bef484f7c1288a6236436d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QHSs\";i:1531379771;}', '1531383371');
INSERT INTO `ims_core_sessions` VALUES ('3ae8d800469e08e7cbb03694f087e8d5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X8x7\";i:1531379770;}', '1531383370');
INSERT INTO `ims_core_sessions` VALUES ('c0292bce0ef6a928eaf4042b360a0925', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PT2P\";i:1531379770;}', '1531383370');
INSERT INTO `ims_core_sessions` VALUES ('268d792e86f7008461937d0165103825', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vZ4d\";i:1531379769;}', '1531383369');
INSERT INTO `ims_core_sessions` VALUES ('ef6bbf9283ca04300bc0b6dedef043c4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wfd4\";i:1531379767;}', '1531383367');
INSERT INTO `ims_core_sessions` VALUES ('ff604d83d95ab6391362eae1efb474e9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ssn7\";i:1531379767;}', '1531383367');
INSERT INTO `ims_core_sessions` VALUES ('b4d037ff38d7137df063b07ea1451c98', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oXmh\";i:1531379766;}', '1531383366');
INSERT INTO `ims_core_sessions` VALUES ('b1b6556ff6353575d1360b028b25935f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pDKE\";i:1531379765;}', '1531383365');
INSERT INTO `ims_core_sessions` VALUES ('d603c091aaf60458ff288d507ae68313', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xEUT\";i:1531379765;}', '1531383365');
INSERT INTO `ims_core_sessions` VALUES ('2163bc143d00e24e015ae356557318f1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sllv\";i:1531379765;}', '1531383365');
INSERT INTO `ims_core_sessions` VALUES ('85748ee4461aa8bba672f1f3c90e58be', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G1bP\";i:1531379764;}', '1531383364');
INSERT INTO `ims_core_sessions` VALUES ('96bf089f8fae3f6a76241540b2c56735', '2', '223.104.5.223', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f0yt\";i:1531379743;}', '1531383343');
INSERT INTO `ims_core_sessions` VALUES ('86fe822f4984c657a7aed2615935307b', '2', '223.104.5.223', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JLQH\";i:1531379742;}', '1531383342');
INSERT INTO `ims_core_sessions` VALUES ('ee98d229b17af4a56d511f05c0482b10', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x2bJ\";i:1531379613;}', '1531383213');
INSERT INTO `ims_core_sessions` VALUES ('58a4e7ff35f99ed200d2c16af1b36118', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rufw\";i:1531379613;}', '1531383213');
INSERT INTO `ims_core_sessions` VALUES ('3a147297255a9245ce0b1b6e5c3e7171', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AmRt\";i:1531379613;}', '1531383213');
INSERT INTO `ims_core_sessions` VALUES ('fc0156d070a800a0ad2e35da20f1b528', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W655\";i:1531379612;}', '1531383212');
INSERT INTO `ims_core_sessions` VALUES ('a620861d1d48acc6bc3be01ab4c5d0ec', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rB0G\";i:1531379609;}', '1531383209');
INSERT INTO `ims_core_sessions` VALUES ('95479c07af573baec7f4bf48b11e7364', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qw2c\";i:1531379607;}', '1531383207');
INSERT INTO `ims_core_sessions` VALUES ('cc94a520d3608cf58262ffb66f7f6b6d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ryiI\";i:1531379607;}', '1531383207');
INSERT INTO `ims_core_sessions` VALUES ('2b5485419640a2145f38eb574770041c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hwaI\";i:1531379605;}', '1531383205');
INSERT INTO `ims_core_sessions` VALUES ('82c93cdc9b83984468adc92c9f3bd31c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G2OY\";i:1531379596;}', '1531383196');
INSERT INTO `ims_core_sessions` VALUES ('6abd07937283f4ef138ca53c23ae1d0a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tDMK\";i:1531379595;}', '1531383195');
INSERT INTO `ims_core_sessions` VALUES ('4f3449d3f85576c20072475e84799970', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dIPI\";i:1531379592;}', '1531383192');
INSERT INTO `ims_core_sessions` VALUES ('17c0d28a2e9cff76f3aae320aa79cf06', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sMBs\";i:1531379592;}', '1531383192');
INSERT INTO `ims_core_sessions` VALUES ('ba7c3aed8c856df13d6aa8fe25307824', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DvcG\";i:1531379589;}', '1531383189');
INSERT INTO `ims_core_sessions` VALUES ('ffc6680d0b1386be2174985fa699bbb1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KaNi\";i:1531379589;}', '1531383189');
INSERT INTO `ims_core_sessions` VALUES ('f2a02d6946a114322bdddde00db37355', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cAhd\";i:1531379588;}', '1531383188');
INSERT INTO `ims_core_sessions` VALUES ('17eae4e72cae3172eb44c88e280da194', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R1Bz\";i:1531379588;}', '1531383188');
INSERT INTO `ims_core_sessions` VALUES ('b1b4a06aaaf55df86500a015d90fed83', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SOba\";i:1531379588;}', '1531383188');
INSERT INTO `ims_core_sessions` VALUES ('25511b9a9c6fbe8cf866b5a76abf9feb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mCax\";i:1531379575;}', '1531383175');
INSERT INTO `ims_core_sessions` VALUES ('93df657bfb66362719cc1b3e42b13559', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PLX8\";i:1531379573;}', '1531383173');
INSERT INTO `ims_core_sessions` VALUES ('fbcd601fc4fce7497148755221687e2d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E0PO\";i:1531379573;}', '1531383173');
INSERT INTO `ims_core_sessions` VALUES ('6253f6ffdc7c07bb658da3273f2e00a7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gwuc\";i:1531379573;}', '1531383173');
INSERT INTO `ims_core_sessions` VALUES ('1c04acd2a5df7f32fc25098ffe508db7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EdTS\";i:1531379573;}', '1531383173');
INSERT INTO `ims_core_sessions` VALUES ('eeda7f98dbb38105c57eb0834772eeac', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f0RZ\";i:1531379562;}', '1531383162');
INSERT INTO `ims_core_sessions` VALUES ('75965fe8491de07c1cd8a437427c89e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mcL6\";i:1531379562;}', '1531383162');
INSERT INTO `ims_core_sessions` VALUES ('54483f7d0bd53101bbb44f0745e07845', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m0y3\";i:1531379562;}', '1531383162');
INSERT INTO `ims_core_sessions` VALUES ('561491887dcaa45b68c213a8079cc899', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZFji\";i:1531379562;}', '1531383162');
INSERT INTO `ims_core_sessions` VALUES ('3ee40e3f6a36f47a3fe0044616ea3192', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y9K8\";i:1531379561;}', '1531383161');
INSERT INTO `ims_core_sessions` VALUES ('452984d2549e4e9e2de7baf914af7807', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K9bB\";i:1531379555;}', '1531383155');
INSERT INTO `ims_core_sessions` VALUES ('e3a0f572352f2fd8b46adf6d931e1462', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iTtk\";i:1531379555;}', '1531383155');
INSERT INTO `ims_core_sessions` VALUES ('484054a9479c10f53efaff5756c992cd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JyYk\";i:1531379555;}', '1531383155');
INSERT INTO `ims_core_sessions` VALUES ('628cb248672ecc0812c766ce3ae0f6d2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W7lv\";i:1531379555;}', '1531383155');
INSERT INTO `ims_core_sessions` VALUES ('07402b190bc8c7b5353ef564b675d41f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eg2h\";i:1531379555;}', '1531383155');
INSERT INTO `ims_core_sessions` VALUES ('a7e57178ba22b7089ed7a2101243e80c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EZFk\";i:1531379553;}', '1531383153');
INSERT INTO `ims_core_sessions` VALUES ('fef7b58a85f94c95c83915da5fe1d90d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QQ4K\";i:1531379553;}', '1531383153');
INSERT INTO `ims_core_sessions` VALUES ('cae22c5904061dea3de6df096671199d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UsQh\";i:1531379551;}', '1531383151');
INSERT INTO `ims_core_sessions` VALUES ('1e4ad4eb99e0d3009d144ae46b4b7ea3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nZ04\";i:1531379551;}', '1531383151');
INSERT INTO `ims_core_sessions` VALUES ('aac4d7e3748c33f3d30b4a2fdc43b29c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H0Fr\";i:1531379551;}', '1531383151');
INSERT INTO `ims_core_sessions` VALUES ('d6ffab2b68e75a59a278d30a17ed66f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YgZl\";i:1531379551;}', '1531383151');
INSERT INTO `ims_core_sessions` VALUES ('2f41ac5b9b0b328600f498bbd0b12461', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AKkp\";i:1531379550;}', '1531383150');
INSERT INTO `ims_core_sessions` VALUES ('13001044d1005537f067c72a2fb7b293', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n1Ir\";i:1531379550;}', '1531383150');
INSERT INTO `ims_core_sessions` VALUES ('48b0ce7157e94f32ee722f9c3f33f2b0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SAnQ\";i:1531379549;}', '1531383149');
INSERT INTO `ims_core_sessions` VALUES ('1301988e6174a0df91156793c0d2ba99', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GiZ0\";i:1531379548;}', '1531383148');
INSERT INTO `ims_core_sessions` VALUES ('70c7312b23692b33025501541271fe71', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rK68\";i:1531379547;}', '1531383147');
INSERT INTO `ims_core_sessions` VALUES ('3ade9938f3300b6b91a0dfded92a7dcc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U00c\";i:1531379547;}', '1531383147');
INSERT INTO `ims_core_sessions` VALUES ('068129b853721cf1a123c6585da5b26e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m311\";i:1531379547;}', '1531383147');
INSERT INTO `ims_core_sessions` VALUES ('c17bc428f82819f8dd57dd2b61cf86d8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KitH\";i:1531379547;}', '1531383147');
INSERT INTO `ims_core_sessions` VALUES ('1ddb5a843ee4aa3843d406dc00e544ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FQz6\";i:1531379547;}', '1531383147');
INSERT INTO `ims_core_sessions` VALUES ('c9f4aa4df816095c16cb263bc509c367', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zi1R\";i:1531379545;}', '1531383145');
INSERT INTO `ims_core_sessions` VALUES ('8c26984a2b1961bc28a0d645769f1f53', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dON8\";i:1531379545;}', '1531383145');
INSERT INTO `ims_core_sessions` VALUES ('486690149c22bce7f977f948716292a1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tTRu\";i:1531379543;}', '1531383143');
INSERT INTO `ims_core_sessions` VALUES ('d204da5266e91deaa2c48b7fb052c072', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Evej\";i:1531379543;}', '1531383143');
INSERT INTO `ims_core_sessions` VALUES ('f8e7ce15cf53c9821413989d70179181', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G6o5\";i:1531379542;}', '1531383142');
INSERT INTO `ims_core_sessions` VALUES ('60387f06f1d7fcc91546412bb97671d7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h8m3\";i:1531379539;}', '1531383139');
INSERT INTO `ims_core_sessions` VALUES ('4929059a995e4c523fbc7593ec6bf35a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"czEi\";i:1531379539;}', '1531383139');
INSERT INTO `ims_core_sessions` VALUES ('375b84bfaf1142995c3faf8005f00360', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wZtK\";i:1531379530;}', '1531383130');
INSERT INTO `ims_core_sessions` VALUES ('d7065309e11ddb01053471dcb46ebe8c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O652\";i:1531379530;}', '1531383130');
INSERT INTO `ims_core_sessions` VALUES ('5f37809686d2653055725777e91bcb1f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bLjp\";i:1531379496;}', '1531383096');
INSERT INTO `ims_core_sessions` VALUES ('1963b39b5bf5892fc9338071307968f8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mmJB\";i:1531379496;}', '1531383096');
INSERT INTO `ims_core_sessions` VALUES ('de59182382964a57dd411bd724c5812b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rn2G\";i:1531379496;}', '1531383096');
INSERT INTO `ims_core_sessions` VALUES ('a1192a4b5c902357de739caebe7566e9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zI1y\";i:1531379496;}', '1531383096');
INSERT INTO `ims_core_sessions` VALUES ('f7628ce56cb18671dea6705026bf4f5e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1WU\";i:1531379496;}', '1531383096');
INSERT INTO `ims_core_sessions` VALUES ('c976068f1077078e8ffe5ea179271090', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yW7x\";i:1531379461;}', '1531383061');
INSERT INTO `ims_core_sessions` VALUES ('b0e4da67f667591d9943dbedf6afb833', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ftM6\";i:1531379461;}', '1531383061');
INSERT INTO `ims_core_sessions` VALUES ('ced5cb5bc6e0df2717f52f00346ed914', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A995\";i:1531379460;}', '1531383060');
INSERT INTO `ims_core_sessions` VALUES ('7f95a765734bec5db90a479992e77b3f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GB4f\";i:1531379460;}', '1531383060');
INSERT INTO `ims_core_sessions` VALUES ('8713cc08f12dff635a3eebee1a7bf1e6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XBpL\";i:1531379459;}', '1531383059');
INSERT INTO `ims_core_sessions` VALUES ('bb6790c185c609c3894c39a56b62d5aa', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o66v\";i:1531379459;}', '1531383059');
INSERT INTO `ims_core_sessions` VALUES ('f76df735b49a64e9be7436a6e3b19d89', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XUu0\";i:1531379459;}', '1531383059');
INSERT INTO `ims_core_sessions` VALUES ('e36600f00bd3023895eb8963e55b528b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D2c2\";i:1531379459;}', '1531383059');
INSERT INTO `ims_core_sessions` VALUES ('bf5890644921f1402084060f626e2c7f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k34z\";i:1531379457;}', '1531383057');
INSERT INTO `ims_core_sessions` VALUES ('e77d187b712526149980aaef398f8819', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x0CT\";i:1531379457;}', '1531383057');
INSERT INTO `ims_core_sessions` VALUES ('f693d324de51dd77bf33f806ddac4e0a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YafT\";i:1531379454;}', '1531383054');
INSERT INTO `ims_core_sessions` VALUES ('1fd9db341b1e1ff2bea570feec77ca03', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZBXP\";i:1531379454;}', '1531383054');
INSERT INTO `ims_core_sessions` VALUES ('8f30eb406a666a88ec602147b4f6d858', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"plMh\";i:1531379445;}', '1531383045');
INSERT INTO `ims_core_sessions` VALUES ('d64683abe4c9ee3e24b48924d618130d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kF4f\";i:1531379445;}', '1531383045');
INSERT INTO `ims_core_sessions` VALUES ('7c850fa6832c07c1ee0725337b31f306', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YMq6\";i:1531379444;}', '1531383044');
INSERT INTO `ims_core_sessions` VALUES ('5a241c52def545c7aab24ecd6c7fdb00', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HhIZ\";i:1531379439;}', '1531383039');
INSERT INTO `ims_core_sessions` VALUES ('d4c6766587cfdc69057005dc99c66de2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"na1H\";i:1531379439;}', '1531383039');
INSERT INTO `ims_core_sessions` VALUES ('e9eee1f3a8a4bbeec86f14148efcd7ac', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uxz4\";i:1531379438;}', '1531383038');
INSERT INTO `ims_core_sessions` VALUES ('6c34662481e4081242aaec87526fb369', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jGM2\";i:1531379438;}', '1531383038');
INSERT INTO `ims_core_sessions` VALUES ('22a3b5735244cf98ab44577c56a1e510', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MTTj\";i:1531379438;}', '1531383038');
INSERT INTO `ims_core_sessions` VALUES ('2811dff7535346b7011379c870f315e9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F8Ky\";i:1531379438;}', '1531383038');
INSERT INTO `ims_core_sessions` VALUES ('29ef441c0305d75887d446aba4b7563b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wcCr\";i:1531379436;}', '1531383036');
INSERT INTO `ims_core_sessions` VALUES ('5e200e4ef1ebd8dea40d69ca883f7886', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KI76\";i:1531379436;}', '1531383036');
INSERT INTO `ims_core_sessions` VALUES ('c903494a8947ab66ecc4b1d7c4a165dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G55B\";i:1531379435;}', '1531383035');
INSERT INTO `ims_core_sessions` VALUES ('f9df6275098ac140ff9627ffffa1712d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ReWE\";i:1531379430;}', '1531383030');
INSERT INTO `ims_core_sessions` VALUES ('c8238acd46b39e0962b2a354e2e5c015', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M51e\";i:1531379430;}', '1531383030');
INSERT INTO `ims_core_sessions` VALUES ('9252a97bd03d8fcdb3d6c50233ead1c4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KFqF\";i:1531379429;}', '1531383029');
INSERT INTO `ims_core_sessions` VALUES ('180c8adc2f015961d55f91fb2376f982', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S3I7\";i:1531379429;}', '1531383029');
INSERT INTO `ims_core_sessions` VALUES ('0fbc75da7e553e03356f4cbc9668baad', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d11U\";i:1531379429;}', '1531383029');
INSERT INTO `ims_core_sessions` VALUES ('b4d9adc3c9362aa7d358b238a7fc11b5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s250\";i:1531379428;}', '1531383028');
INSERT INTO `ims_core_sessions` VALUES ('bb3feb9c0f70f168e8b070b99376e61f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f07w\";i:1531379428;}', '1531383028');
INSERT INTO `ims_core_sessions` VALUES ('798a97b7bf79950c7a59418a6ef4a595', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pM0m\";i:1531379428;}', '1531383028');
INSERT INTO `ims_core_sessions` VALUES ('77ddf01d5ddf744dc85453ed966e328f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6JD\";i:1531379428;}', '1531383028');
INSERT INTO `ims_core_sessions` VALUES ('0cbaff92f9b8e15ee80c08be3900213f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fmik\";i:1531379427;}', '1531383027');
INSERT INTO `ims_core_sessions` VALUES ('163dc72b235c3c4b1ee177912e966820', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O68y\";i:1531379427;}', '1531383027');
INSERT INTO `ims_core_sessions` VALUES ('31ab202ed0f56eaba90f8241248d599f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s8kB\";i:1531379427;}', '1531383027');
INSERT INTO `ims_core_sessions` VALUES ('afc722649983a7ebed792b0acab0bc42', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M6Z0\";i:1531379427;}', '1531383027');
INSERT INTO `ims_core_sessions` VALUES ('bcc115e10063f8b23acf460def71eaf4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b8R0\";i:1531379427;}', '1531383027');
INSERT INTO `ims_core_sessions` VALUES ('473f7de3f675de6396691f107ff68e14', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FvX0\";i:1531379420;}', '1531383020');
INSERT INTO `ims_core_sessions` VALUES ('ffa3e140e045d2df35cbccad701dc8fa', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ime7\";i:1531379416;}', '1531383016');
INSERT INTO `ims_core_sessions` VALUES ('f43e0bab996857f38d05f939d6c44730', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"foKk\";i:1531379415;}', '1531383015');
INSERT INTO `ims_core_sessions` VALUES ('9e4d6ba0917ed04f9ca6b7b42a3abddb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VAzs\";i:1531379385;}', '1531382985');
INSERT INTO `ims_core_sessions` VALUES ('b9cf58dbbbb19f382a8c1271cf50c083', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sr5Z\";i:1531379368;}', '1531382968');
INSERT INTO `ims_core_sessions` VALUES ('be10f4ebaa1aa97de6acea233af343ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"egjg\";i:1531379367;}', '1531382967');
INSERT INTO `ims_core_sessions` VALUES ('88db01f8279abfd8a62729d554b0797a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U22C\";i:1531379366;}', '1531382966');
INSERT INTO `ims_core_sessions` VALUES ('aed30db2079e5d1b65e9f21f0f039de8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u6ai\";i:1531379365;}', '1531382965');
INSERT INTO `ims_core_sessions` VALUES ('3445cbc1a8db677171cde7091dd5aa0a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IMZ4\";i:1531379365;}', '1531382965');
INSERT INTO `ims_core_sessions` VALUES ('81215607994e2400fd7a4ee5ae35a902', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V9Iu\";i:1531379365;}', '1531382965');
INSERT INTO `ims_core_sessions` VALUES ('a8e8302072b48cc17526f070ec8f6f16', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bEvG\";i:1531379365;}', '1531382965');
INSERT INTO `ims_core_sessions` VALUES ('91b9eb60ceeb8a3722e22d447d90cafe', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yj42\";i:1531379365;}', '1531382965');
INSERT INTO `ims_core_sessions` VALUES ('0d6a8692857a920604e203577db5c2dd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qtZ4\";i:1531379364;}', '1531382964');
INSERT INTO `ims_core_sessions` VALUES ('a5513ba00a56e642b1d7d755d49347dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xO8D\";i:1531379363;}', '1531382963');
INSERT INTO `ims_core_sessions` VALUES ('8bc6a5caca8ca6db24a55e2583c6c33d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjFC\";i:1531379360;}', '1531382960');
INSERT INTO `ims_core_sessions` VALUES ('ab4a8bb3a185b58b8df6282f1b2414be', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZClp\";i:1531379360;}', '1531382960');
INSERT INTO `ims_core_sessions` VALUES ('e0d0cacef9dbd84080ad9ab454da6fe3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zQa6\";i:1531379360;}', '1531382960');
INSERT INTO `ims_core_sessions` VALUES ('1bcec93911505d32253953a3cbbf8a3f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b81N\";i:1531379360;}', '1531382960');
INSERT INTO `ims_core_sessions` VALUES ('a813b786e938068855747e8333b4a807', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bDj6\";i:1531379360;}', '1531382960');
INSERT INTO `ims_core_sessions` VALUES ('3fd2f0cc037857672c113588b41f334f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lR5q\";i:1531379359;}', '1531382959');
INSERT INTO `ims_core_sessions` VALUES ('7492491b79cf94d87079b71faddea755', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x020\";i:1531379359;}', '1531382959');
INSERT INTO `ims_core_sessions` VALUES ('ee16da08613d599cdf658d67833c737c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EcYc\";i:1531379358;}', '1531382958');
INSERT INTO `ims_core_sessions` VALUES ('f60bac9396f30fa568a8e1eb1acf6d12', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n2gT\";i:1531379357;}', '1531382957');
INSERT INTO `ims_core_sessions` VALUES ('1ec81255fe3ea5fdf3f531b04048af11', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t6j1\";i:1531379354;}', '1531382954');
INSERT INTO `ims_core_sessions` VALUES ('b8cb70c5ad99c9c738af4835ccd73b0c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zE6x\";i:1531379354;}', '1531382954');
INSERT INTO `ims_core_sessions` VALUES ('3bce5f31b3c34e8511ee4c16565bee3b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VlNq\";i:1531379353;}', '1531382953');
INSERT INTO `ims_core_sessions` VALUES ('b65ad90c8a262e5aa1eefbd0891720eb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oIih\";i:1531379352;}', '1531382952');
INSERT INTO `ims_core_sessions` VALUES ('04f1a6d395dfb33e61d195c3d1fc23ef', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qzoP\";i:1531379343;}', '1531382943');
INSERT INTO `ims_core_sessions` VALUES ('4917b660ee29cf80e0f6f074c56cbb52', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G2Pf\";i:1531379343;}', '1531382943');
INSERT INTO `ims_core_sessions` VALUES ('4601d4f2740d0b117dede9b1951ff3c5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qrCL\";i:1531379341;}', '1531382941');
INSERT INTO `ims_core_sessions` VALUES ('d8bad245098fd71672dfc332550c48ee', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WuNe\";i:1531379341;}', '1531382941');
INSERT INTO `ims_core_sessions` VALUES ('3420ebb7699c9cf69b55fcecc2073fd5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bom4\";i:1531379341;}', '1531382941');
INSERT INTO `ims_core_sessions` VALUES ('aaedc9ad760029d25434295d7fafcefe', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zFJT\";i:1531379341;}', '1531382941');
INSERT INTO `ims_core_sessions` VALUES ('cecdd4b966dde8e5f916221424388304', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bt2Q\";i:1531379339;}', '1531382939');
INSERT INTO `ims_core_sessions` VALUES ('c4b8e135af88d7a427d55a627630fbc2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SQ17\";i:1531379339;}', '1531382939');
INSERT INTO `ims_core_sessions` VALUES ('c496a280f60e265b8fa29d1ac2ea61ba', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjXt\";i:1531379339;}', '1531382939');
INSERT INTO `ims_core_sessions` VALUES ('9003386b57f9cd518c1f418745416dc9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hcle\";i:1531379335;}', '1531382935');
INSERT INTO `ims_core_sessions` VALUES ('8c92d8c2fba4723a2b5b3be2cd6b0fb3', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ezGG\";i:1531379334;}', '1531382934');
INSERT INTO `ims_core_sessions` VALUES ('f8673eb9bb2a86c259bd09a7fde81900', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F33V\";i:1531379334;}', '1531382934');
INSERT INTO `ims_core_sessions` VALUES ('0631ccc62af01c4640d73a2d99bf8f6a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Isw7\";i:1531379334;}', '1531382934');
INSERT INTO `ims_core_sessions` VALUES ('6dac6b9165cdcf01d464b71d45650edd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t0s8\";i:1531379334;}', '1531382934');
INSERT INTO `ims_core_sessions` VALUES ('33844aa163fd8a04e8ceb6a9d2055f7c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BwCb\";i:1531379334;}', '1531382934');
INSERT INTO `ims_core_sessions` VALUES ('8b8437e8a0b1a1346321f5bfdef780df', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TGuz\";i:1531379333;}', '1531382933');
INSERT INTO `ims_core_sessions` VALUES ('a5e19c528fc211775d623b67bb023673', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ltbB\";i:1531379333;}', '1531382933');
INSERT INTO `ims_core_sessions` VALUES ('337f6de02dba7349e722222daf5cf735', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pWo6\";i:1531379254;}', '1531382854');
INSERT INTO `ims_core_sessions` VALUES ('96c31c27518852ee8b4d845891a42303', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t1ix\";i:1531379254;}', '1531382854');
INSERT INTO `ims_core_sessions` VALUES ('b48a149d7c532b1a474ec7ed32662a07', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qlo8\";i:1531383188;}', '1531386788');
INSERT INTO `ims_core_sessions` VALUES ('626cdb4f5957613cb90e8a63384bbadf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A28e\";i:1531383188;}', '1531386788');
INSERT INTO `ims_core_sessions` VALUES ('c629874647414dcc8322a49004c67f89', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z9n7\";i:1531383188;}', '1531386788');
INSERT INTO `ims_core_sessions` VALUES ('96b1a9598bc779a1e3c2d4d35094a21d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o2E1\";i:1531383188;}', '1531386788');
INSERT INTO `ims_core_sessions` VALUES ('1a897cd3c1bd9ff664717a00a7b05113', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E608\";i:1531383188;}', '1531386788');
INSERT INTO `ims_core_sessions` VALUES ('13393c76f06a44f88585d68b0017f830', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dOFn\";i:1531383187;}', '1531386787');
INSERT INTO `ims_core_sessions` VALUES ('6ca9fe67df086293a520c57ec9cd2703', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r8Go\";i:1531383186;}', '1531386786');
INSERT INTO `ims_core_sessions` VALUES ('733b1600733c24290901cf63a2e7e1b0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oni0\";i:1531383186;}', '1531386786');
INSERT INTO `ims_core_sessions` VALUES ('aa900e26fa7ec63daccbba94fb3bfe8f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mLv9\";i:1531383174;}', '1531386774');
INSERT INTO `ims_core_sessions` VALUES ('50b3710fdaec4a0ee81b644969dc0dcb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nhhj\";i:1531383173;}', '1531386773');
INSERT INTO `ims_core_sessions` VALUES ('988e1041da1b5b05dcb5bef6ae439b62', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NZQb\";i:1531383173;}', '1531386773');
INSERT INTO `ims_core_sessions` VALUES ('80108c548633dc41f09ee754f4932c01', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r4Qe\";i:1531383173;}', '1531386773');
INSERT INTO `ims_core_sessions` VALUES ('3d6907492261c498a588dcf97eae9aef', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A2ru\";i:1531383173;}', '1531386773');
INSERT INTO `ims_core_sessions` VALUES ('e681e971f4ed09d7a2eb99193d3205bf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ThRj\";i:1531383173;}', '1531386773');
INSERT INTO `ims_core_sessions` VALUES ('619607ccbea6c4e08b01aa0de85dc458', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OnAB\";i:1531383172;}', '1531386772');
INSERT INTO `ims_core_sessions` VALUES ('869500f8deb32b7c130207683a231812', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N2Z5\";i:1531383172;}', '1531386772');
INSERT INTO `ims_core_sessions` VALUES ('ddeba87d5183fcd3f1b406da5611cd2d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u478\";i:1531383143;}', '1531386743');
INSERT INTO `ims_core_sessions` VALUES ('8e1d1e302dae9bd10408a75a2afd9573', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Egmg\";i:1531383143;}', '1531386743');
INSERT INTO `ims_core_sessions` VALUES ('f6f0373a2827075073e276ea69b3fed2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cr2w\";i:1531383143;}', '1531386743');
INSERT INTO `ims_core_sessions` VALUES ('57a1fd82bc41fd14419f1432cf14666c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ajN9\";i:1531383143;}', '1531386743');
INSERT INTO `ims_core_sessions` VALUES ('6ea2eb03133b6f61eaa573788be5fb41', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aZl0\";i:1531383143;}', '1531386743');
INSERT INTO `ims_core_sessions` VALUES ('f294811ddde308ce089f75917b497c19', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cO5x\";i:1531383142;}', '1531386742');
INSERT INTO `ims_core_sessions` VALUES ('b39ae86621c23ac04931f276dba74b68', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BQ9Y\";i:1531383141;}', '1531386741');
INSERT INTO `ims_core_sessions` VALUES ('f430e9fe027dcb4d60d64a59200f0ea1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v1EC\";i:1531383140;}', '1531386740');
INSERT INTO `ims_core_sessions` VALUES ('573ff9bfd10b9d505ed40f84fcc7a1bd', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UKUF\";i:1531383096;}', '1531386696');
INSERT INTO `ims_core_sessions` VALUES ('af8d850ea24e9d00bede1f99c4916003', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pzUQ\";i:1531383096;}', '1531386696');
INSERT INTO `ims_core_sessions` VALUES ('69e20047e6f46da8b3def7caf0bc21f4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v4yb\";i:1531383096;}', '1531386696');
INSERT INTO `ims_core_sessions` VALUES ('7fed4a2efdb6e8542410fa68780fa7d4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U22V\";i:1531383096;}', '1531386696');
INSERT INTO `ims_core_sessions` VALUES ('c54595e96cd37ca141ff05e8c453f141', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eULZ\";i:1531383096;}', '1531386696');
INSERT INTO `ims_core_sessions` VALUES ('9b39bbfd0745390f17a33715311fe201', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t22v\";i:1531383095;}', '1531386695');
INSERT INTO `ims_core_sessions` VALUES ('d5e0cbae1f73ed28ffc20b1b0083876f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NHWJ\";i:1531383095;}', '1531386695');
INSERT INTO `ims_core_sessions` VALUES ('03897f19bdd1ec5e9ac061f8aecf8257', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N8q8\";i:1531383095;}', '1531386695');
INSERT INTO `ims_core_sessions` VALUES ('eff576a03d75ebf31d6f459c99c457e4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p405\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('20c12edf62d20a178eb7ac8959a57c68', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zB5M\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('59b6f0c9ea1d9e6718af1699ff7a046d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BcWL\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('101adaf68034fb9b1af07cd6dabcc220', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zX8G\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('bd997f97fd42cb2d43095442686c60c1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ykPk\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('d0b9511c0b249d17b39aceec5802a5b4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q95h\";i:1531383094;}', '1531386694');
INSERT INTO `ims_core_sessions` VALUES ('30751133a2547e09588adcae6f47b919', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pjsv\";i:1531383093;}', '1531386693');
INSERT INTO `ims_core_sessions` VALUES ('b6092eca2ca51f2f3e88a08498049246', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L6Gl\";i:1531383093;}', '1531386693');
INSERT INTO `ims_core_sessions` VALUES ('23012e9dd0bc937223817e0d93394d27', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hvEJ\";i:1531383092;}', '1531386692');
INSERT INTO `ims_core_sessions` VALUES ('3c1c02fea9b5741c5e929f1b9fe0395c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YI13\";i:1531383091;}', '1531386691');
INSERT INTO `ims_core_sessions` VALUES ('34b6f5f4c5ad14ee4a5071efc22d0c53', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W5l1\";i:1531383091;}', '1531386691');
INSERT INTO `ims_core_sessions` VALUES ('fe59608d48e880a3d6c0c47d863ab53d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xwyG\";i:1531383091;}', '1531386691');
INSERT INTO `ims_core_sessions` VALUES ('0084dbcbb0baf1256b89a8624f294f12', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O1iH\";i:1531383091;}', '1531386691');
INSERT INTO `ims_core_sessions` VALUES ('c8d220b5847c40e8662b7e20d38d573c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RlQr\";i:1531383091;}', '1531386691');
INSERT INTO `ims_core_sessions` VALUES ('1e6bcfb4af177c135852da79b6bbeead', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PAOc\";i:1531383088;}', '1531386688');
INSERT INTO `ims_core_sessions` VALUES ('55b702a83e79b9f5d617b9da25b941e4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bsr7\";i:1531383088;}', '1531386688');
INSERT INTO `ims_core_sessions` VALUES ('122c1d63f713fd8ab39176086f7de88c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FOfb\";i:1531383046;}', '1531386646');
INSERT INTO `ims_core_sessions` VALUES ('324a1e5f7aa6fd7733a25051815bf4cf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KT51\";i:1531383045;}', '1531386645');
INSERT INTO `ims_core_sessions` VALUES ('da0000f7ea8898a78f4196c32ca5decc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qbqb\";i:1531383038;}', '1531386638');
INSERT INTO `ims_core_sessions` VALUES ('43611f20f18b0f762aac112dcb04e28b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ar4F\";i:1531383037;}', '1531386637');
INSERT INTO `ims_core_sessions` VALUES ('8364d32e889b7ddf3b568160b69b3c7a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S4hV\";i:1531383037;}', '1531386637');
INSERT INTO `ims_core_sessions` VALUES ('4d7f802295afc54afafcf6cd6d339ee7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WZio\";i:1531383036;}', '1531386636');
INSERT INTO `ims_core_sessions` VALUES ('0b58708099d918befb99d3d668eb59c5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iGc8\";i:1531383036;}', '1531386636');
INSERT INTO `ims_core_sessions` VALUES ('dba271f8399e69521f9882249d83028b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bqOQ\";i:1531383035;}', '1531386635');
INSERT INTO `ims_core_sessions` VALUES ('51f232a2dd4824b45ba019c21eb2279b', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6Sm\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('9584e4f05ea937f78b4f01bd6cd544be', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tNNW\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('4eac87539b10f9ba61ad0e52ade72c27', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g9VI\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('6a206a6220a72cde271b6474f1f64632', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wzf2\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('c6ac0036381d61973b4a3c21b88ee205', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b0y9\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('432e8729f5e733886dcc02ef0bbef117', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zJU2\";i:1531383034;}', '1531386634');
INSERT INTO `ims_core_sessions` VALUES ('4601ac994163503d6c8da0abaf24310d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bzTQ\";i:1531383031;}', '1531386631');
INSERT INTO `ims_core_sessions` VALUES ('e1c82a063c54367d86a2dbcb3496b9a8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xDp1\";i:1531383029;}', '1531386629');
INSERT INTO `ims_core_sessions` VALUES ('a60a2b8e554c1e45cdbf1bb622fbe44d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pbOO\";i:1531383028;}', '1531386628');
INSERT INTO `ims_core_sessions` VALUES ('ec9148237e989352321e2db8561b2dc7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eATy\";i:1531383014;}', '1531386614');
INSERT INTO `ims_core_sessions` VALUES ('d9585faa8bc400ffb982ed83a0dfb0ac', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k3v1\";i:1531383013;}', '1531386613');
INSERT INTO `ims_core_sessions` VALUES ('60dbc5028cd3697e99522c2314ca994d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zbIj\";i:1531383012;}', '1531386612');
INSERT INTO `ims_core_sessions` VALUES ('687aaea7b8f8ea99ca3d02703d8449ea', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u9iS\";i:1531383012;}', '1531386612');
INSERT INTO `ims_core_sessions` VALUES ('3ccefdb149a1569f87e08d205dff97bb', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V737\";i:1531383012;}', '1531386612');
INSERT INTO `ims_core_sessions` VALUES ('8c3199ef001743af18939962940c38dc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UrS1\";i:1531383011;}', '1531386611');
INSERT INTO `ims_core_sessions` VALUES ('9e77de2688420f83066bbb8cf77f47d7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a3l0\";i:1531383010;}', '1531386610');
INSERT INTO `ims_core_sessions` VALUES ('d3fb62bb90ca1f754ad6f7ca7aff9854', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xDvK\";i:1531383010;}', '1531386610');
INSERT INTO `ims_core_sessions` VALUES ('43fdf35a901d93cbd6fde397717cd530', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cHkK\";i:1531382971;}', '1531386571');
INSERT INTO `ims_core_sessions` VALUES ('707bcbd1863ae5ae083eeb2ea38c7bae', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yV9E\";i:1531382963;}', '1531386563');
INSERT INTO `ims_core_sessions` VALUES ('d554ed8f144d6e0c5872e9cfd3408b43', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iNVn\";i:1531382962;}', '1531386562');
INSERT INTO `ims_core_sessions` VALUES ('115ab398be746b1c60ea633a46f671a8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dP7c\";i:1531382961;}', '1531386561');
INSERT INTO `ims_core_sessions` VALUES ('b8768375c44bf1e8e6366a7427c6c54c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BVyN\";i:1531382951;}', '1531386551');
INSERT INTO `ims_core_sessions` VALUES ('dcdd1d8e984e064270ca6c126c38d4af', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G2Vz\";i:1531382945;}', '1531386545');
INSERT INTO `ims_core_sessions` VALUES ('85dee6752fc9ec6c7305baef883607d6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kZpD\";i:1531382944;}', '1531386544');
INSERT INTO `ims_core_sessions` VALUES ('d740d355628518fb34910be32067156d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oRBx\";i:1531382943;}', '1531386543');
INSERT INTO `ims_core_sessions` VALUES ('25da41f3e88ba57ba50d740e95cad8cc', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x60b\";i:1531382933;}', '1531386533');
INSERT INTO `ims_core_sessions` VALUES ('3369c67b102ccbece612f70f76dd9044', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BW53\";i:1531382924;}', '1531386524');
INSERT INTO `ims_core_sessions` VALUES ('f9045f32768a7c3bb50a981b55d63619', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j9J8\";i:1531382916;}', '1531386516');
INSERT INTO `ims_core_sessions` VALUES ('1e046214a132ac2b37f3338b0c0b7fee', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UEey\";i:1531382910;}', '1531386510');
INSERT INTO `ims_core_sessions` VALUES ('13cb70d2d567aa89e27f3e59ad9f5d7d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S1AZ\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('208c6ad064273b14405d359d3449ba22', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L2ak\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('8455a9e66c2f6a0939a607b24973e95a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y1Zr\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('938ccef371d2ae00a02bd22c265b31e0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CJ74\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('518f00cc013e5c52f4e8ac7fb0e00ec8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rKLD\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('d16d1c00c8972d24f9c729569fa55ee8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w77O\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('33ad53dd37f964aa5d271cef394f58f6', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lzGR\";i:1531382908;}', '1531386508');
INSERT INTO `ims_core_sessions` VALUES ('d4bc9bd6af3497310cbabc0a7a5f2557', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"azae\";i:1531382907;}', '1531386507');
INSERT INTO `ims_core_sessions` VALUES ('955a2e13681904c2d62ae9ce29bae185', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nW06\";i:1531382907;}', '1531386507');
INSERT INTO `ims_core_sessions` VALUES ('378c5d9e2916a85c8b29c9a87faf7e74', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t1vv\";i:1531382885;}', '1531386485');
INSERT INTO `ims_core_sessions` VALUES ('6d10302630bc6bfded0f79b72b945525', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rZb8\";i:1531382877;}', '1531386477');
INSERT INTO `ims_core_sessions` VALUES ('fcf370fdda3507e67d6933fa1a325261', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CZZL\";i:1531382876;}', '1531386476');
INSERT INTO `ims_core_sessions` VALUES ('1548d2534ac37a3d8c6b65a9f2c79e32', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J2ud\";i:1531382876;}', '1531386476');
INSERT INTO `ims_core_sessions` VALUES ('8315bceb43fa1e427479e521f012231e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d8y9\";i:1531382841;}', '1531386441');
INSERT INTO `ims_core_sessions` VALUES ('913c9e721f2a2abcb1e78e98319603f9', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xIJI\";i:1531382834;}', '1531386434');
INSERT INTO `ims_core_sessions` VALUES ('c112a2f49b5fd92e7dfdd6b9b61c0d07', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oO3e\";i:1531382834;}', '1531386434');
INSERT INTO `ims_core_sessions` VALUES ('a76907284c36ad1baef9189a1f7ddc37', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cct8\";i:1531382833;}', '1531386433');
INSERT INTO `ims_core_sessions` VALUES ('d91723004d4d7a443a3ad963ab2e0ccf', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f87K\";i:1531382831;}', '1531386431');
INSERT INTO `ims_core_sessions` VALUES ('f59bcf4b2ff2a25439fb9c3b024c91ab', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NrlL\";i:1531382830;}', '1531386430');
INSERT INTO `ims_core_sessions` VALUES ('408fa4220eb3c18a0733895bfa34e1b0', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qy3y\";i:1531382828;}', '1531386428');
INSERT INTO `ims_core_sessions` VALUES ('089f137dda994bb2e832429d6f7f240d', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W7N5\";i:1531382828;}', '1531386428');
INSERT INTO `ims_core_sessions` VALUES ('2a2f0ba5dac96f01c13e40b65eeff599', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LLNe\";i:1531382828;}', '1531386428');
INSERT INTO `ims_core_sessions` VALUES ('48370d7a9c1afa1c713461e102e86d36', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qriT\";i:1531382825;}', '1531386425');
INSERT INTO `ims_core_sessions` VALUES ('6d9c5e035a5f21c2d4dd804ee90d92c7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DZz7\";i:1531382825;}', '1531386425');
INSERT INTO `ims_core_sessions` VALUES ('cf06e564f0b97dd91a226cd0fa4f9363', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m3DU\";i:1531382824;}', '1531386424');
INSERT INTO `ims_core_sessions` VALUES ('7dcf11f7827f84bbc20b4d26031783d1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YKK7\";i:1531382819;}', '1531386419');
INSERT INTO `ims_core_sessions` VALUES ('35b8e577c0a6f2607ec0495b5d7e2c0c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"szA1\";i:1531382819;}', '1531386419');
INSERT INTO `ims_core_sessions` VALUES ('fe4fad86abd78710c9b7ba7f9f19b897', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O61Y\";i:1531382819;}', '1531386419');
INSERT INTO `ims_core_sessions` VALUES ('3f9f580150cd2c3572deaea79e20a6a5', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bdQt\";i:1531382813;}', '1531386413');
INSERT INTO `ims_core_sessions` VALUES ('1f8bf7873f46d96f4794956c11dce003', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cVMx\";i:1531382813;}', '1531386413');
INSERT INTO `ims_core_sessions` VALUES ('a900d2c1157ab991caa6010fcc071e98', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tfIx\";i:1531382812;}', '1531386412');
INSERT INTO `ims_core_sessions` VALUES ('cd02c9434da7714fe2d9e92f887fac0e', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jcej\";i:1531382812;}', '1531386412');
INSERT INTO `ims_core_sessions` VALUES ('c3f1b92a92fbc86d50df020d8d113b76', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xz8M\";i:1531382812;}', '1531386412');
INSERT INTO `ims_core_sessions` VALUES ('e4477f909d6fb869c7d5cb16e0155a29', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bFty\";i:1531382811;}', '1531386411');
INSERT INTO `ims_core_sessions` VALUES ('b015760c9cbbd0f579aadb5115b7f6b8', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o64t\";i:1531382810;}', '1531386410');
INSERT INTO `ims_core_sessions` VALUES ('d07eb7c3ca4345407f3821824b51d30c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WHSm\";i:1531382810;}', '1531386410');
INSERT INTO `ims_core_sessions` VALUES ('320cad124fbd9830f5599dd3b15eb623', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oLCi\";i:1531382806;}', '1531386406');
INSERT INTO `ims_core_sessions` VALUES ('a762bfd14b4ef9cbb3b6cea15aef02b2', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CcC4\";i:1531382806;}', '1531386406');
INSERT INTO `ims_core_sessions` VALUES ('b82d964254ab72b4b687d97a02f5a5b4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nSJS\";i:1531382805;}', '1531386405');
INSERT INTO `ims_core_sessions` VALUES ('8e3dca7d60ff0446d9c922d9d16492d7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nmmy\";i:1531382805;}', '1531386405');
INSERT INTO `ims_core_sessions` VALUES ('37488d793fd56a954217ad40eddebc28', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BYsG\";i:1531382804;}', '1531386404');
INSERT INTO `ims_core_sessions` VALUES ('145f27b62ef8e3869ecd9bbd1a65cf4a', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gDr0\";i:1531382804;}', '1531386404');
INSERT INTO `ims_core_sessions` VALUES ('159995966e46efbe40ea6f9163f5daf7', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N9FF\";i:1531382804;}', '1531386404');
INSERT INTO `ims_core_sessions` VALUES ('cba8bb5782251b9779a3fd625a4aba5f', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"skGf\";i:1531382804;}', '1531386404');
INSERT INTO `ims_core_sessions` VALUES ('9e10f021eb1d2fd86e2cc82a7fa3d5e1', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I7X5\";i:1531382803;}', '1531386403');
INSERT INTO `ims_core_sessions` VALUES ('28911750c629574842bef9235a7aab94', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bo2F\";i:1531382802;}', '1531386402');
INSERT INTO `ims_core_sessions` VALUES ('5b0622c86ed9f12e4ac32d1d225b6aee', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WvUS\";i:1531382801;}', '1531386401');
INSERT INTO `ims_core_sessions` VALUES ('6be71035eb32ca4e67e3cb8ebed44af4', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q8Bg\";i:1531382801;}', '1531386401');
INSERT INTO `ims_core_sessions` VALUES ('23042c5be2f143e443976ceef13a5b85', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z3Le\";i:1531382799;}', '1531386399');
INSERT INTO `ims_core_sessions` VALUES ('a46ab4177c84a7e53b2cb7e86ea8d799', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MVRD\";i:1531382799;}', '1531386399');
INSERT INTO `ims_core_sessions` VALUES ('6ec8b2e645a78b7f58995780f0f70c7c', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XiSW\";i:1531382799;}', '1531386399');
INSERT INTO `ims_core_sessions` VALUES ('0ed061c509d166a2a182257dfddb6569', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jNm6\";i:1531382799;}', '1531386399');
INSERT INTO `ims_core_sessions` VALUES ('89c9fe33196ef490851e0d2638b0bf95', '2', '180.175.14.192', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h4k5\";i:1531382799;}', '1531386399');
INSERT INTO `ims_core_sessions` VALUES ('e4c8e7aeb2109a1989ad237899bd8550', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mgp6\";i:1531388118;}', '1531391718');
INSERT INTO `ims_core_sessions` VALUES ('9338388fecf36865e1e52ff951dd1b68', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"koY0\";i:1531388118;}', '1531391718');
INSERT INTO `ims_core_sessions` VALUES ('78783d87f8019749bcb4f04914e7d7c7', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Aqr4\";i:1531388119;}', '1531391719');
INSERT INTO `ims_core_sessions` VALUES ('afe6b42c8ad3e66105f0552830a22d23', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"beR5\";i:1531388119;}', '1531391719');
INSERT INTO `ims_core_sessions` VALUES ('546c22b3db8ee86c637df88c714bcd0a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GwDX\";i:1531388119;}', '1531391719');
INSERT INTO `ims_core_sessions` VALUES ('2c01612d8148e9d6db7682efd38538c8', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zJvz\";i:1531388119;}', '1531391719');
INSERT INTO `ims_core_sessions` VALUES ('aa90d347c3a2fd71467702e3ffd0b715', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l8LP\";i:1531388120;}', '1531391720');
INSERT INTO `ims_core_sessions` VALUES ('6a01ca9a15b7349d0e7d9876b691a2fc', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JAqd\";i:1531388120;}', '1531391720');
INSERT INTO `ims_core_sessions` VALUES ('2a64f996e61c66864fbdfd490f7627e1', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0FM\";i:1531388122;}', '1531391722');
INSERT INTO `ims_core_sessions` VALUES ('95be1f3e34775ea592aa2f42b5e49e7c', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qvj0\";i:1531388123;}', '1531391723');
INSERT INTO `ims_core_sessions` VALUES ('f993a4cc899bdd203b70c94ef5a33259', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ez7m\";i:1531388123;}', '1531391723');
INSERT INTO `ims_core_sessions` VALUES ('487c87fef2b3c510eaa33e563a12c696', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AEgu\";i:1531388124;}', '1531391724');
INSERT INTO `ims_core_sessions` VALUES ('6ebc7957c5cf25042ecf44211eadbdb5', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kU1Z\";i:1531388211;}', '1531391811');
INSERT INTO `ims_core_sessions` VALUES ('410cee0d51022491d2b966aa1dc35d42', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p596\";i:1531388211;}', '1531391811');
INSERT INTO `ims_core_sessions` VALUES ('93e667a13a77dfac745245c78506febd', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"deMz\";i:1531388212;}', '1531391812');
INSERT INTO `ims_core_sessions` VALUES ('a0014db032243bc70e7478e72f442b5d', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rtz9\";i:1531388212;}', '1531391812');
INSERT INTO `ims_core_sessions` VALUES ('c39bef365bb2eb537b585f8bbda27cfb', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uBrY\";i:1531388212;}', '1531391812');
INSERT INTO `ims_core_sessions` VALUES ('a95e16ff571272040386ed25d12491e3', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qrw4\";i:1531388212;}', '1531391812');
INSERT INTO `ims_core_sessions` VALUES ('6b5bf9fad7cb8536cbc08cc3dfec05d4', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pwnw\";i:1531388213;}', '1531391813');
INSERT INTO `ims_core_sessions` VALUES ('00dd0c56ca29173d9c9ccffe6a08a9ee', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JHmm\";i:1531388214;}', '1531391814');
INSERT INTO `ims_core_sessions` VALUES ('09076fe4deda22c7264c555b9833d270', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"viIL\";i:1531388217;}', '1531391817');
INSERT INTO `ims_core_sessions` VALUES ('4f09c49836ff42145e76f21877f6a231', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RbL3\";i:1531388218;}', '1531391818');
INSERT INTO `ims_core_sessions` VALUES ('3341d73c0f839c90570d0ae7a63e02b1', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DWfy\";i:1531388219;}', '1531391819');
INSERT INTO `ims_core_sessions` VALUES ('14519ed98cdf52378b71a84e4cf80f81', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S8uB\";i:1531388220;}', '1531391820');
INSERT INTO `ims_core_sessions` VALUES ('68565073b6e58880781bae96bf94c289', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l6s6\";i:1531388220;}', '1531391820');
INSERT INTO `ims_core_sessions` VALUES ('365ff4925dc644d3841414b6ade48a12', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hHUe\";i:1531388220;}', '1531391820');
INSERT INTO `ims_core_sessions` VALUES ('e404210077aa48b52e221c40f69eae05', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ag92\";i:1531388220;}', '1531391820');
INSERT INTO `ims_core_sessions` VALUES ('c31735510617833cffb3ad8b90302c3f', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uhDd\";i:1531388220;}', '1531391820');
INSERT INTO `ims_core_sessions` VALUES ('3ea0039f401a19d7babc86422f978e67', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yHWx\";i:1531391752;}', '1531395352');
INSERT INTO `ims_core_sessions` VALUES ('3eaa2e21c4a4f654f6f5144d595a78f9', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fp4X\";i:1531391752;}', '1531395352');
INSERT INTO `ims_core_sessions` VALUES ('9cb5656258b66b0e0fc04bc232621701', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zQNV\";i:1531470043;}', '1531473643');
INSERT INTO `ims_core_sessions` VALUES ('6c159aff6b9e98efbdf7a8ba9c85502a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QdO4\";i:1531470044;}', '1531473644');
INSERT INTO `ims_core_sessions` VALUES ('9e415c59e4a9e3d9691b62dc929040e3', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h00K\";i:1531470045;}', '1531473645');
INSERT INTO `ims_core_sessions` VALUES ('0cc176233f306bd002f9fc59d7c369f1', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EzAa\";i:1531470045;}', '1531473645');
INSERT INTO `ims_core_sessions` VALUES ('ebf2172da953f8e1bf34b179a558f9ae', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i2bn\";i:1531470044;}', '1531473644');
INSERT INTO `ims_core_sessions` VALUES ('ea3a9e530227ebfec55e02542e0a37ed', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lJcE\";i:1531470046;}', '1531473646');
INSERT INTO `ims_core_sessions` VALUES ('2f912c82e3e1aafb8806c7827d19ac38', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U59s\";i:1531470046;}', '1531473646');
INSERT INTO `ims_core_sessions` VALUES ('53f20e38831c23bcaafa57d999b6cc28', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hxjX\";i:1531470046;}', '1531473646');
INSERT INTO `ims_core_sessions` VALUES ('098483c46ce6ffb124181aee9473c339', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sfir\";i:1531470046;}', '1531473646');
INSERT INTO `ims_core_sessions` VALUES ('e973d84868469bf6abbe2d3680456e9b', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ivVA\";i:1531470046;}', '1531473646');
INSERT INTO `ims_core_sessions` VALUES ('1c2726056aabc3a39cef8a4064ef7037', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xLr3\";i:1531470048;}', '1531473648');
INSERT INTO `ims_core_sessions` VALUES ('820c2e96be5fbda6a3ae6ad902740f06', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D3Nw\";i:1531470048;}', '1531473648');
INSERT INTO `ims_core_sessions` VALUES ('b2b579416fb3bd94161e553dfdad682b', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UuSb\";i:1531470048;}', '1531473648');
INSERT INTO `ims_core_sessions` VALUES ('da1126e7e739717294fae5af2acb604c', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zkmB\";i:1531470048;}', '1531473648');
INSERT INTO `ims_core_sessions` VALUES ('374caa59fd7207efa99a19c79609f878', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ybqp\";i:1531470048;}', '1531473648');
INSERT INTO `ims_core_sessions` VALUES ('5e23a111e191ae00ecefffa53e8e07e9', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MN8p\";i:1531470049;}', '1531473649');
INSERT INTO `ims_core_sessions` VALUES ('e30b2a6a7bace3cb4ddedae44ea60c6b', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J34e\";i:1531470090;}', '1531473690');
INSERT INTO `ims_core_sessions` VALUES ('92cc148e24c7cba179cce6e6e88cdb17', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jPgN\";i:1531470090;}', '1531473690');
INSERT INTO `ims_core_sessions` VALUES ('795a7bec5222ac72c2cde3d2cd8f3e4a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u5Cr\";i:1531470091;}', '1531473691');
INSERT INTO `ims_core_sessions` VALUES ('c769812b46dab57cc662fdf3f48fc804', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TV1Q\";i:1531470091;}', '1531473691');
INSERT INTO `ims_core_sessions` VALUES ('7259eb9e752dc27d123c561b84a2421a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pnRJ\";i:1531470091;}', '1531473691');
INSERT INTO `ims_core_sessions` VALUES ('72698de1acf099d50906b9d18962d2b9', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eMrb\";i:1531470091;}', '1531473691');
INSERT INTO `ims_core_sessions` VALUES ('9810112e2e17cde1d08202456fa5ba08', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IOHP\";i:1531470092;}', '1531473692');
INSERT INTO `ims_core_sessions` VALUES ('15d69ec803ced08f84d0a9022b8db6a1', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JYyR\";i:1531470092;}', '1531473692');
INSERT INTO `ims_core_sessions` VALUES ('0a1e16651d3296504543bd754c7c839a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"if80\";i:1531470091;}', '1531473691');
INSERT INTO `ims_core_sessions` VALUES ('93b7e3520da5c2942752b99355ea7993', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BJKj\";i:1531470093;}', '1531473693');
INSERT INTO `ims_core_sessions` VALUES ('96d84dd7f721a7a99690c60c42f89b76', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YPEd\";i:1531470095;}', '1531473695');
INSERT INTO `ims_core_sessions` VALUES ('7658fcddc660075420a80b0d7a283097', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IMrW\";i:1531470095;}', '1531473695');
INSERT INTO `ims_core_sessions` VALUES ('16afa58df5616b39c837c9783d215bed', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m9HH\";i:1531470095;}', '1531473695');
INSERT INTO `ims_core_sessions` VALUES ('0b50ee81702940ce7374f41aaf088459', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T9cj\";i:1531470096;}', '1531473696');
INSERT INTO `ims_core_sessions` VALUES ('862c561438f3976f0928f7cdb399ba8b', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s389\";i:1531470096;}', '1531473696');
INSERT INTO `ims_core_sessions` VALUES ('1bd3c42a3e7e8fee84eb8b9f2ab21e36', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x9Z4\";i:1531470096;}', '1531473696');
INSERT INTO `ims_core_sessions` VALUES ('ec5ba01fa0dfbb9d2fffc48c10e93048', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Es2b\";i:1531470179;}', '1531473779');
INSERT INTO `ims_core_sessions` VALUES ('4ac99ffde97f14db6ea2a8a3d6df3b93', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GD70\";i:1531470179;}', '1531473779');
INSERT INTO `ims_core_sessions` VALUES ('6bd04a6638418223e80e88d4327413d6', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nl9c\";i:1531470179;}', '1531473779');
INSERT INTO `ims_core_sessions` VALUES ('b36a8909f222e3e49878cc0633cdfd71', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wbj5\";i:1531470179;}', '1531473779');
INSERT INTO `ims_core_sessions` VALUES ('20720a36be635eef477b782f72400530', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YlPu\";i:1531470180;}', '1531473780');
INSERT INTO `ims_core_sessions` VALUES ('96dc2d2a8ca930133217ed6b7b7f34e2', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jhi4\";i:1531470180;}', '1531473780');
INSERT INTO `ims_core_sessions` VALUES ('57815f61cce6a5b03a70e3a6dc3d6b17', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LB95\";i:1531470180;}', '1531473780');
INSERT INTO `ims_core_sessions` VALUES ('84898b55cd0c5b6281e60ea715620006', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YLdA\";i:1531470181;}', '1531473781');
INSERT INTO `ims_core_sessions` VALUES ('0975db327173b45fe090be8c27c3abc5', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"srvo\";i:1531470181;}', '1531473781');
INSERT INTO `ims_core_sessions` VALUES ('7ba8cdece82a10dfd92dcf74fa03174b', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IiUG\";i:1531470182;}', '1531473782');
INSERT INTO `ims_core_sessions` VALUES ('a699cc1175cf52a9fdfc63c982d3235c', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bo36\";i:1531470183;}', '1531473783');
INSERT INTO `ims_core_sessions` VALUES ('d421e0eec35eda480b0f2abe916a88e7', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fxMc\";i:1531470184;}', '1531473784');
INSERT INTO `ims_core_sessions` VALUES ('d6e58f5ad62c0f9a5e8611d4bd68480e', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AUkd\";i:1531470184;}', '1531473784');
INSERT INTO `ims_core_sessions` VALUES ('055ba4e2100dade62578d40091eb7064', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hfsf\";i:1531470184;}', '1531473784');
INSERT INTO `ims_core_sessions` VALUES ('797cd1d224754d7a652b9a53300669f8', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M6Hr\";i:1531470184;}', '1531473784');
INSERT INTO `ims_core_sessions` VALUES ('737b3c850372f16096a5e8d5b20eee1a', '2', '127.0.0.1', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q8Y7\";i:1531470184;}', '1531473784');

-- ----------------------------
-- Table structure for `ims_core_settings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('module_ban', 'a:0:{}');
INSERT INTO `ims_core_settings` VALUES ('module_upgrade', 'a:0:{}');
INSERT INTO `ims_core_settings` VALUES ('module_receive_ban', 'a:0:{}');
INSERT INTO `ims_core_settings` VALUES ('cloudip', 'a:2:{s:2:\"ip\";s:14:\"106.15.203.187\";s:6:\"expire\";i:1525544460;}');
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:32:{s:6:\"status\";i:0;s:10:\"verifycode\";i:0;s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:0:\"\";s:3:\"url\";s:7:\"http://\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:0:\"\";s:11:\"footerright\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:14:\"background_img\";s:0:\"\";s:6:\"slides\";s:2:\"N;\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:0:\"\";s:14:\"companyprofile\";s:0:\"\";s:7:\"address\";s:0:\"\";s:6:\"person\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"showhomepage\";i:0;s:13:\"leftmenufixed\";i:0;s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:10:\"log_status\";i:0;s:14:\"develop_status\";i:0;s:3:\"icp\";s:0:\"\";s:4:\"bind\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('basic', 'a:1:{s:8:\"template\";s:7:\"default\";}');

-- ----------------------------
-- Table structure for `ims_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon`;
CREATE TABLE `ims_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL COMMENT '卡券类型',
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'code类型（二维码/条形码/code码）',
  `brand_name` varchar(15) NOT NULL COMMENT '商家名称',
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL COMMENT '使用说明',
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL COMMENT '使用期限',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总库存',
  `use_custom_code` tinyint(3) NOT NULL DEFAULT '0',
  `bind_openid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `can_share` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否可分享',
  `can_give_friend` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否可转赠给朋友',
  `get_limit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每人领取限制',
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:审核中,2:未通过,3:已通过,4:卡券被商户删除,5:未知',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架',
  `is_selfconsume` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启自助核销',
  `promotion_url_name` varchar(10) NOT NULL,
  `promotion_url` varchar(100) NOT NULL,
  `promotion_url_sub_title` varchar(10) NOT NULL,
  `source` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `dosage` int(10) unsigned DEFAULT '0' COMMENT '已领取数量',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `card_id` (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_activity`;
CREATE TABLE `ims_coupon_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` int(3) NOT NULL DEFAULT '0' COMMENT '1 发送系统卡券 2发送微信卡券',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `coupons` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '‘’',
  `members` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_groups`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_groups`;
CREATE TABLE `ims_coupon_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL DEFAULT '',
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_location`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_modules`;
CREATE TABLE `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`couponid`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_record`;
CREATE TABLE `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_coupon_store`
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_store`;
CREATE TABLE `ims_coupon_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL DEFAULT '',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_store
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_cover_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_custom_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_images_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_job`
-- ----------------------------
DROP TABLE IF EXISTS `ims_job`;
CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_job
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_cash_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_chats_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_credits_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`) USING BTREE,
  KEY `idx_tid` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_credits_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_fans_groups`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_fans_tag_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`) USING BTREE,
  KEY `fanid_index` (`fanid`) USING BTREE,
  KEY `tagid_index` (`tagid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_groups`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_handsel`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mapping_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `nickname` (`nickname`) USING BTREE,
  KEY `updatetime` (`updatetime`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mapping_ucenter`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_mass_record`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_members`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_member_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`) USING BTREE,
  KEY `idx_uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_member_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_fieldid` (`fieldid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_member_property`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_member_property
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mc_oauth_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_menu_event`
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_message_notice_log`
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_message_notice_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_mobilenumber`
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'Z', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', 'H', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('6', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '', 'D', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('7', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('8', 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('9', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'J', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('10', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', 'F', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('11', 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'W', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('12', 'paycenter', 'system', '收银台', '1.0', '收银台', '收银台', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', 'S', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('20', 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'we7', '', '0', '', '', '0', '1', '0', '0', '', 'Z', '1', '2', '1', '0', '1', '0');
INSERT INTO `ims_modules` VALUES ('27', 'wnjz_sun', 'business', '家政服务小程序', '4.8', '柚子家政', '小程序、商城', '泉州大白网络科技', '泉州大白网络科技', '0', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', 'N;', 'J', '2', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `ims_modules_bindings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES ('3', 'wnjz_sun', 'menu', '', '系统首页', 'index', '', '0', '', '', '0');

-- ----------------------------
-- Table structure for `ims_modules_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_modules_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_modules_recycle`
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_music_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_news_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_paycenter_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_paycenter_order`;
CREATE TABLE `ims_paycenter_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `clerk_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `clerk_type` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `uniontid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `type` varchar(10) NOT NULL COMMENT '支付方式',
  `trade_type` varchar(10) NOT NULL COMMENT '支付类型:刷卡支付,扫描支付',
  `body` varchar(255) NOT NULL COMMENT '商品信息',
  `fee` varchar(15) NOT NULL COMMENT '商品费用',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠后应付价格',
  `credit1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '抵消积分',
  `credit1_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '积分抵消金额',
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额支付金额',
  `cash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '线上支付金额',
  `remark` varchar(255) NOT NULL,
  `auth_code` varchar(30) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '付款人',
  `follow` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否关注公众号',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '线上支付状态',
  `credit_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '积分,余额的交易状态.0:未扣除,1:已扣除',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_paycenter_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_phoneapp_versions`
-- ----------------------------
DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_phoneapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_profile_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ims_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_qrcode_stat`
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1', '');
INSERT INTO `ims_rule` VALUES ('8', '1', '微擎团队入口设置', 'cover', '0', '1', '');
INSERT INTO `ims_rule` VALUES ('9', '1', 'ewei_shopv2区域代理中心入口设置', 'cover', '0', '1', '');

-- ----------------------------
-- Table structure for `ims_rule_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('13', '9', '1', 'cover', '代理', '1', '0', '1');

-- ----------------------------
-- Table structure for `ims_site_article`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `articleid` (`articleid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_site_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_multi`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微擎团队', '1', '', '1', '');
INSERT INTO `ims_site_multi` VALUES ('2', '1', '人人商城分销', '2', '', '0', '');

-- ----------------------------
-- Table structure for `ims_site_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_page`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------
INSERT INTO `ims_site_page` VALUES ('1', '1', '0', '快捷菜单', '', '{\"navStyle\":\"2\",\"bgColor\":\"#f4f4f4\",\"menus\":[{\"title\":\"u4f1au5458u5361\",\"url\":\"./index.php?c=mc&a=bond&do=card&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-credit-card\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"u5151u6362\",\"url\":\"./index.php?c=activity&a=coupon&do=display&&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-money\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"u4ed8u6b3e\",\"url\":\"\" data-target=\"#scan\" data-toggle=\"modal\" href=\"javascript:void();\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-qrcode\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":\"\"},{\"title\":\"u4e2au4ebau4e2du5fc3\",\"url\":\"./index.php?i=1&c=mc&\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-user\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]}],\"extend\":[],\"position\":{\"homepage\":true,\"usercenter\":true,\"page\":true,\"article\":true},\"ignoreModules\":[]}', '<div style=\"background-color: rgb(244, 244, 244);\" class=\"js-quickmenu nav-menu-app has-nav-0  has-nav-4\"   ><ul class=\"nav-group clearfix\"><li class=\"nav-group-item \" ><a href=\"./index.php?c=mc&a=bond&do=card&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-credit-card\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">会员卡</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?c=activity&a=coupon&do=display&&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-money\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">兑换</span></a></li><li class=\"nav-group-item \" ><a href=\"\" data-target=\"#scan\" data-toggle=\"modal\" href=\"javascript:void();\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-qrcode\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">付款</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?i=1&c=mc&\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-user\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">个人中心</span></a></li></ul></div>', '', '4', '1', '1440242655', '0');

-- ----------------------------
-- Table structure for `ims_site_slide`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_store_create_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_create_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_store_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_store_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_styles`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');
INSERT INTO `ims_site_styles` VALUES ('2', '1', '1', '微站默认模板_ni5W');

-- ----------------------------
-- Table structure for `ims_site_styles_vars`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_site_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', '0');
INSERT INTO `ims_site_templates` VALUES ('4', 'style31', '微赞style31', '', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', '0');

-- ----------------------------
-- Table structure for `ims_stat_fans`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_msg_history`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_stat_visit`
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------
INSERT INTO `ims_stat_visit` VALUES ('1', '0', 'we7_account', '2', '20180420', 'web');
INSERT INTO `ims_stat_visit` VALUES ('2', '1', 'we7_account', '16', '20180420', 'web');

-- ----------------------------
-- Table structure for `ims_system_stat_visit`
-- ----------------------------
DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ims_system_stat_visit
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_uni_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '0', '人人商城分销', '人人商城分销', '1', '0', 'R');
INSERT INTO `ims_uni_account` VALUES ('2', '0', '松江家电维修', '很好用', '2', null, 'S');

-- ----------------------------
-- Table structure for `ims_uni_account_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------
INSERT INTO `ims_uni_account_group` VALUES ('1', '1', '-1');
INSERT INTO `ims_uni_account_group` VALUES ('2', '1', '1');

-- ----------------------------
-- Table structure for `ims_uni_account_menus`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_uni_account_modules`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------
INSERT INTO `ims_uni_account_modules` VALUES ('1', '1', 'basic', '1', '', '0', '0');
INSERT INTO `ims_uni_account_modules` VALUES ('2', '1', 'news', '1', '', '0', '0');
INSERT INTO `ims_uni_account_modules` VALUES ('3', '1', 'music', '1', '', '0', '0');
INSERT INTO `ims_uni_account_modules` VALUES ('4', '1', 'userapi', '1', '', '0', '0');
INSERT INTO `ims_uni_account_modules` VALUES ('5', '1', 'recharge', '1', '', '0', '0');

-- ----------------------------
-- Table structure for `ims_uni_account_users`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_uni_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('1', '0', '体验套餐服务', 'a:7:{i:0;s:10:\"we7_coupon\";i:1;s:9:\"wn_storex\";i:2;s:30:\"wn_storex_plugin_hotel_service\";i:3;s:11:\"ewei_shopv2\";i:4;s:28:\"wn_storex_plugin_credit_mall\";i:5;s:24:\"wn_storex_plugin_printer\";i:6;s:20:\"wn_storex_plugin_sms\";}', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}', '0');

-- ----------------------------
-- Table structure for `ims_uni_settings`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', '0', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', '1', '0', '', '', '0', '', '0', '0', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `ims_uni_verifycode`
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_userapi_cache`
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_userapi_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for `ims_users`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '0', '1', '0', 'chuanshoujiazheng', '9f19fdfc869941c1472039279d78813906fb5a6b', 'ce89e11a', '0', '0', '1531387940', '', '1531444416', '127.0.0.1', '', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `ims_users_bind`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_bind
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_failed_login`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_founder_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_founder_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_group`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------
INSERT INTO `ims_users_group` VALUES ('1', '0', '体验用户组', 'a:1:{i:0;i:1;}', '1', '1', '0', '0', '0', '0');
INSERT INTO `ims_users_group` VALUES ('2', '0', '白金用户组', 'a:1:{i:0;i:1;}', '2', '2', '0', '0', '0', '0');
INSERT INTO `ims_users_group` VALUES ('3', '0', '黄金用户组', 'a:1:{i:0;i:1;}', '3', '3', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ims_users_invitation`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_users_profile`
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_video_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_voice_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wechat_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wechat_news`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_member`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_member`;
CREATE TABLE `ims_wnjz_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) unsigned NOT NULL,
  `nickName` varchar(255) NOT NULL COMMENT '昵称',
  `avatarUrl` varchar(255) NOT NULL COMMENT '头像',
  `gender` tinyint(4) unsigned DEFAULT NULL COMMENT '性别（0:女 1:男）',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `level` int(10) unsigned DEFAULT '0' COMMENT '会员等级',
  `openId` varchar(255) NOT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `session_key` varchar(255) DEFAULT NULL,
  `integral` int(10) unsigned DEFAULT '0' COMMENT '积分',
  `balance` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '余额',
  `mobileCode` varchar(255) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_addnews`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_addnews`;
CREATE TABLE `ims_wnjz_sun_addnews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) NOT NULL COMMENT '标题，展示用',
  `left` int(10) unsigned NOT NULL,
  `state` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1显示，2为关闭',
  `uniacid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '类型',
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_addnews
-- ----------------------------
INSERT INTO `ims_wnjz_sun_addnews` VALUES ('1', '蔡师傅，电话：13524162931，油烟机清洗', '0', '1', '2', '1', '1531372555');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_address`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_address`;
CREATE TABLE `ims_wnjz_sun_address` (
  `adid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '收货人',
  `telNumber` varchar(30) NOT NULL,
  `countyName` varchar(100) NOT NULL COMMENT '地址',
  `detailInfo` varchar(100) NOT NULL,
  `isdefault` varchar(11) DEFAULT '0',
  `oprnid` varchar(55) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `cityName` varchar(100) NOT NULL,
  `provinceName` varchar(100) NOT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_banner`;
CREATE TABLE `ims_wnjz_sun_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(300) NOT NULL COMMENT '文章图片',
  `lb_imgs` varchar(500) NOT NULL COMMENT '文章那个内容',
  `uniacid` int(11) NOT NULL,
  `bname1` varchar(200) NOT NULL,
  `bname2` varchar(200) NOT NULL,
  `bname3` varchar(200) NOT NULL,
  `lb_imgs1` varchar(500) CHARACTER SET utf8 NOT NULL,
  `lb_imgs2` varchar(500) NOT NULL,
  `lb_imgs3` varchar(500) NOT NULL,
  `url1` varchar(300) NOT NULL,
  `url2` varchar(300) NOT NULL,
  `url3` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ims_wnjz_sun_banner
-- ----------------------------
INSERT INTO `ims_wnjz_sun_banner` VALUES ('1', '空调维修', '', 'images/2/2018/07/uz6z0p8Rk8e3PGs6pKz7hrnR8k3Ep3.jpg', '2', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_bargain`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_bargain`;
CREATE TABLE `ims_wnjz_sun_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `marketprice` int(11) DEFAULT NULL,
  `selftime` varchar(100) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `content` text,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `starttime` varchar(100) DEFAULT NULL,
  `shopprice` varchar(45) DEFAULT NULL,
  `enftime` varchar(100) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_branch`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_branch`;
CREATE TABLE `ims_wnjz_sun_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `stutes` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `phone` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_branch
-- ----------------------------
INSERT INTO `ims_wnjz_sun_branch` VALUES ('1', '上海松江', '1', '2', '1', '荣乐5村', '13524162931');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_business_account`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_business_account`;
CREATE TABLE `ims_wnjz_sun_business_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `account` varchar(255) NOT NULL COMMENT '账户',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `username` varchar(255) DEFAULT NULL COMMENT '商家后台显示的用户名,默认为微信名',
  `img` varchar(255) DEFAULT NULL COMMENT '商家后台用户头像,默认为微信头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商家后台账户表';

-- ----------------------------
-- Records of ims_wnjz_sun_business_account
-- ----------------------------
INSERT INTO `ims_wnjz_sun_business_account` VALUES ('1', '2', '1234', '123', null, null);

-- ----------------------------
-- Table structure for `ims_wnjz_sun_category`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_category`;
CREATE TABLE `ims_wnjz_sun_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(120) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `c_time` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ims_wnjz_sun_category
-- ----------------------------
INSERT INTO `ims_wnjz_sun_category` VALUES ('1', '空调维修', '2', '2018-07-06 15:50:42');
INSERT INTO `ims_wnjz_sun_category` VALUES ('2', '油烟机清洗', '2', '2018-07-12 13:03:39');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_coupon`;
CREATE TABLE `ims_wnjz_sun_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '优惠券名称，展示用',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '优惠券类型（1:折扣 2:代金）',
  `astime` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `antime` timestamp NULL DEFAULT NULL COMMENT '活动结束时间',
  `expiryDate` int(10) unsigned DEFAULT NULL COMMENT '领取后，使用有效期',
  `allowance` int(10) unsigned DEFAULT NULL COMMENT '余量',
  `total` int(10) unsigned DEFAULT NULL COMMENT '总量',
  `val` int(25) DEFAULT NULL COMMENT '功能',
  `exchange` tinyint(3) unsigned DEFAULT NULL COMMENT '积分兑换',
  `scene` tinyint(4) unsigned DEFAULT NULL COMMENT '场景（1:充值赠送，2:买单赠送）',
  `showIndex` tinyint(4) DEFAULT NULL COMMENT '是否首页显示（0:不显示 1:显示）',
  `uniacid` int(11) DEFAULT NULL,
  `vab` int(11) DEFAULT NULL COMMENT '满减',
  `state` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_coupon
-- ----------------------------
INSERT INTO `ims_wnjz_sun_coupon` VALUES ('1', '2', '大福利来了', '2', '2018-07-12 00:00:00', '2018-07-31 00:00:00', '0', '100', '100', '150', null, '0', '1', '2', '500', '2');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_evaluate`;
CREATE TABLE `ims_wnjz_sun_evaluate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `xingxing` varchar(7) DEFAULT NULL,
  `content` text,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_goods`;
CREATE TABLE `ims_wnjz_sun_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` text NOT NULL COMMENT '家政名称',
  `marketprice` varchar(45) DEFAULT NULL COMMENT '市场价',
  `shopprice` varchar(45) NOT NULL COMMENT '商城价',
  `selftime` varchar(200) NOT NULL COMMENT '加入时间',
  `pic` varchar(200) NOT NULL COMMENT '封面图',
  `probably` text NOT NULL COMMENT '备注',
  `cid` int(11) DEFAULT NULL COMMENT '家政类型',
  `status` int(11) DEFAULT NULL COMMENT '家政状态',
  `uniacid` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='点击 ';

-- ----------------------------
-- Records of ims_wnjz_sun_goods
-- ----------------------------
INSERT INTO `ims_wnjz_sun_goods` VALUES ('1', '松江空调维修', '300', '1', '2018-07-12 13:41:37', 'images/2/2018/07/zL4az6l0iC65uUP61wr6Cauz064454.jpg', '蔡师傅联系电话13524162931', '1', '2', '2', '<p>支付1元预约，或者直接蔡师傅联系电话：13524162931</p><p><br/></p><p>蔡师傅专业从事空调安装、空调维修、空调移机、空调拆除、空调保养清洗、空调加液等服务，服务获得了上海广大市民的一致好评。</p><p><br/></p><p>拥有空调维修、员工技术力量雄厚，加上在上海松江从事空调维修、空调拆除多年空调移机、，对上海的生活和工作环境都十分熟悉.?</p><p>都经过特殊的培训，不仅精通上海空调维修、空调拆装、还能对空调清洗保养和空调进一步的优化，使您的空调达到耗电最低，达到效率最高，而且还可以迅速判断空调存在的故障点，并以最快的速度提出问题的解决方法，让您有一个温暖的家。?</p><p>我们秉承“服务创造价值”，打造空调服务客户满意信息网络，向消费者提供全方位资讯及技术服务。</p><p><br/></p>', '1', '空调维修');
INSERT INTO `ims_wnjz_sun_goods` VALUES ('2', '松江油烟机清洗', '300', '1', '2018-07-12 16:02:25', 'images/2/2018/07/q35wJ059F6I06V8WWW8T90Wf00hgW6.jpg', '蔡师傅联系电话13524162931', '1', '2', '2', '<p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255); text-align: left;\"><br/></p><p><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/L8ZZftbt88sWVBNQ9tn68z6Sx4n9jN.jpg\" width=\"100%\" alt=\"2.jpg\"/></p><p><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/Yjq5aehdqCs705ZJqDZ0EqPtoYok5z.jpg\" width=\"100%\" alt=\"20180712_134611_004.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/cQZ5x0DD3iFfwW03799R89WizzrVei.jpg\" width=\"100%\" alt=\"20180712_134611_005.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/qMj1jEg1a1Eeh1PhX1PmXy5ujw5uy9.jpg\" width=\"100%\" alt=\"20180712_134611_006.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/zsniMK10K0s0ui5ReSkIl5AAj50Rsi.jpg\" width=\"100%\" alt=\"20180712_134611_007.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/op3z0ZP6Zm6wpPpPpBD9dS3jS0TLsj.jpg\" width=\"100%\" alt=\"20180712_134611_008.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/U0KDWs5KH0sSZdN1KmZ05N4k2WsK4Q.jpg\" width=\"100%\" alt=\"20180712_134611_009.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/P83QDoQ6QGP56PHM9P9uqpUoh3cMmq.jpg\" width=\"100%\" alt=\"20180712_134611_010.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/OMLcMKcq6fGfpfCCCgPToq70PFqccq.jpg\" width=\"100%\" alt=\"20180712_134611_011.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/wYPXij7ZOPOWLaIK8Ao4JW2WAyJAtA.jpg\" width=\"100%\" alt=\"20180712_134611_012.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/M8YG4fWxqnuuX66y4n4QDsDwD68sqF.jpg\" width=\"100%\" alt=\"20180712_134611_013.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/EUGvc2NfU2GfxFnvFVP7Xz2oG0xgrR.jpg\" width=\"100%\" alt=\"20180712_134611_014.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/hOcaUU7Vhoic877qa7UOHrohi9auuo.jpg\" width=\"100%\" alt=\"20180712_134611_015.jpg\"/><img src=\"https://jiazheng.yuanchuangyc.cn/attachment/images/2/2018/07/pKssi8TKi09ztCc68I0Bcsu6Ca99yB.jpg\" width=\"100%\" alt=\"20180712_134611_016.jpg\"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '2', '空调维修');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_goodsattr`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_goodsattr`;
CREATE TABLE `ims_wnjz_sun_goodsattr` (
  `gaid` int(11) NOT NULL AUTO_INCREMENT,
  `gavalue` varchar(120) NOT NULL,
  `gid` int(11) NOT NULL,
  `taid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_goodsattr
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_goodsdetails`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_goodsdetails`;
CREATE TABLE `ims_wnjz_sun_goodsdetails` (
  `images` text NOT NULL,
  `intro` text,
  `service` text,
  `gid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_goodsdetails
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_goodslist`;
CREATE TABLE `ims_wnjz_sun_goodslist` (
  `glid` int(11) NOT NULL AUTO_INCREMENT,
  `glnumber` text NOT NULL,
  `inventory` varchar(45) NOT NULL,
  `combine` text NOT NULL,
  `gid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`glid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_goodslist
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_indgood`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_indgood`;
CREATE TABLE `ims_wnjz_sun_indgood` (
  `inid` int(11) NOT NULL AUTO_INCREMENT,
  `sele_name` text NOT NULL,
  `logo` text NOT NULL,
  `gid` int(11) NOT NULL,
  `prob` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `addtime` text NOT NULL,
  `video` text,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`inid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_indgood
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_kanjia`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_kanjia`;
CREATE TABLE `ims_wnjz_sun_kanjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL COMMENT '用户id',
  `kid` int(11) DEFAULT NULL COMMENT '砍价商品id',
  `mch_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `kanjia` decimal(11,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_kanjia
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_kanjia_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_kanjia_banner`;
CREATE TABLE `ims_wnjz_sun_kanjia_banner` (
  `id` int(11) unsigned NOT NULL COMMENT '用户id',
  `name` varchar(200) DEFAULT NULL COMMENT '商品id',
  `url` varchar(500) DEFAULT NULL COMMENT '商品数量',
  `img` varchar(500) DEFAULT NULL COMMENT '商品规格',
  `name1` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `name2` varchar(200) DEFAULT NULL,
  `name3` varchar(200) DEFAULT NULL,
  `url1` varchar(300) DEFAULT NULL,
  `url2` varchar(300) DEFAULT NULL,
  `url3` varchar(300) DEFAULT NULL,
  `img1` varchar(500) DEFAULT NULL,
  `img2` varchar(500) DEFAULT NULL,
  `img3` varchar(500) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_kanjia_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_kjorder`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_kjorder`;
CREATE TABLE `ims_wnjz_sun_kjorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) DEFAULT NULL,
  `detailInfo` varchar(200) DEFAULT NULL,
  `telNumber` varchar(100) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time` varchar(150) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `countyName` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `addtime` varchar(100) DEFAULT NULL,
  `cityName` varchar(100) DEFAULT NULL,
  `provinceName` varchar(150) DEFAULT NULL,
  `text` text,
  `type` int(2) DEFAULT '1' COMMENT '1为普通商品2为砍价商品',
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_kjorder
-- ----------------------------
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('2', '1530864320132', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864320', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('3', '1530864321278', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864321', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('4', '1530864322621', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864322', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('5', '1530867009446', '新港中路397号', '020-81167888', '200.00', '2', '21:00', '', '2', '海珠区', '广东省', '张三', '1530867009', '广州市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('6', '1530868773189', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868773', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('7', '1530868777971', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868777', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('8', '1530868778726', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868778', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('9', '1530868779159', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868779', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('10', '1530868780781', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868780', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('11', '1530868781392', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868781', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('12', '1530868782492', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868782', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('13', '1530868782870', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868782', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('14', '1530868783940', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868783', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('15', '1530868784107', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868784', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('16', '1530868784988', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868784', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('17', '1530868785113', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868785', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('18', '1530868785631', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868785', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('19', '1530874286189', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874286', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('20', '1530874290916', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874290', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('21', '1530874293716', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874293', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('22', '1530874297223', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874297', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('23', '1530874298149', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874298', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('24', '1530878953906', '茸兴路407号', '15771875004', '200.00', '2', '周六 07-07 18:00', '', '2', '松江区', '上海市', '李晨', '1530878953', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('25', '1530878958475', '茸兴路407号', '15771875004', '200.00', '2', '周六 07-07 18:00', '', '2', '松江区', '上海市', '李晨', '1530878958', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('26', '1531360509497', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360509', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('27', '1531360513161', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360513', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('28', '1531360514759', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360514', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('29', '1531360515229', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360515', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('30', '1531360516481', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360516', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('31', '1531360517289', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360517', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('32', '1531360518844', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360518', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('33', '1531360519381', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360519', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('34', '1531360520572', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360520', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('35', '1531360524283', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360524', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('36', '1531360528207', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360528', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('37', '1531360560943', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360560', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('38', '1531360562199', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360562', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('39', '1531360563124', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360563', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('40', '1531360691965', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360691', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('41', '1531360693891', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360693', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('42', '1531360694271', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360694', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('43', '1531360695142', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360695', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('44', '1531360711966', 'EC体能训练中心(上海市松江区)', '18883345194', '2.00', '4', '21:30', 'o3fRn5KWMVlJ-EnXofHAEUEBv3Co', '2', '松江区', '上海市', '方志豪', '1531360711', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('45', '1531367332205', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '10:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531367332', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('46', '1531368004640', '茸兴路407号', '15771875004', '1.00', '2', '周六 07-14 10:00', 'o3fRn5F2oE6fy8ROuukbgzBALKw8', '2', '松江区', '上海市', '李晨', '1531368004', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('47', '1531372835594', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '21:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531372835', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('48', '1531376221953', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周五 07-13 ', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531376221', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('49', '1531379895699', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '21:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531379895', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('50', '1531380080607', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周五 07-13 22:00', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531380080', '上海市', null, '1', null);
INSERT INTO `ims_wnjz_sun_kjorder` VALUES ('51', '1531382029531', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周三 07-18 22:00', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531382029', '上海市', null, '1', null);

-- ----------------------------
-- Table structure for `ims_wnjz_sun_kjorderlist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_kjorderlist`;
CREATE TABLE `ims_wnjz_sun_kjorderlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `openid` varbinary(100) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `createTime` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_kjorderlist
-- ----------------------------
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('1', '1', '1', '1', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('2', '1', '1', '2', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('3', '1', '1', '3', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('4', '1', '1', '4', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('5', '1', '1', '5', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('6', '1', '1', '6', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('7', '1', '1', '7', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('8', '1', '1', '8', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('9', '1', '1', '9', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('10', '1', '1', '10', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('11', '1', '1', '11', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('12', '1', '1', '12', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('13', '1', '1', '13', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('14', '1', '1', '14', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('15', '1', '1', '15', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('16', '1', '1', '16', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('17', '1', '1', '17', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('18', '1', '1', '18', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('19', '1', '1', '19', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('20', '1', '1', '20', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('21', '1', '1', '21', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('22', '1', '1', '22', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('23', '1', '1', '23', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('24', '1', '1', '24', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('25', '1', '1', '25', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('26', '1', '1', '26', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('27', '1', '1', '27', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('28', '1', '1', '28', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('29', '1', '1', '29', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('30', '1', '1', '30', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('31', '1', '1', '31', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('32', '1', '1', '32', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('33', '1', '1', '33', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('34', '1', '1', '34', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('35', '1', '1', '35', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('36', '1', '1', '36', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('37', '1', '1', '37', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('38', '1', '1', '38', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('39', '1', '1', '39', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('40', '1', '1', '40', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('41', '1', '1', '41', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('42', '1', '1', '42', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('43', '1', '1', '43', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('44', '1', '1', '44', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('45', '1', '1', '45', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('46', '1', '1', '46', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('47', '1', '1', '47', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('48', '1', '2', '48', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('49', '1', '1', '49', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('50', '1', '2', '50', 0x30, '0', '0000-00-00 00:00:00', null);
INSERT INTO `ims_wnjz_sun_kjorderlist` VALUES ('51', '1', '2', '51', 0x30, '0', '0000-00-00 00:00:00', null);

-- ----------------------------
-- Table structure for `ims_wnjz_sun_money`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_money`;
CREATE TABLE `ims_wnjz_sun_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `recharge` decimal(50,2) DEFAULT NULL,
  `youhui` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_money
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_new_bargain`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_new_bargain`;
CREATE TABLE `ims_wnjz_sun_new_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `marketprice` decimal(11,2) DEFAULT NULL COMMENT '原价',
  `shopprice` decimal(11,2) DEFAULT NULL,
  `selftime` int(11) DEFAULT NULL COMMENT '时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片',
  `content` text,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT NULL,
  `num` int(11) unsigned DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_new_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_orde`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_orde`;
CREATE TABLE `ims_wnjz_sun_orde` (
  `olid` int(11) NOT NULL AUTO_INCREMENT,
  `oprnid` varchar(200) DEFAULT NULL COMMENT '数量',
  `price` varchar(45) DEFAULT NULL,
  `cid` int(100) DEFAULT NULL COMMENT '备注',
  `type` varchar(30) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`olid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_orde
-- ----------------------------
INSERT INTO `ims_wnjz_sun_orde` VALUES ('1', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('2', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('3', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('4', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('5', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('6', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('7', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('8', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('9', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('10', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('11', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('12', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('13', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('14', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('15', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('16', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('17', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('18', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('19', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('20', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('21', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('22', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('23', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('24', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('25', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('26', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('27', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('28', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('29', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('30', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('31', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('32', '', '0.01', '0', 'local', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('33', '', '0.01', '0', 'weixin', '2');
INSERT INTO `ims_wnjz_sun_orde` VALUES ('34', '', '0.01', '0', 'weixin', '2');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_order`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_order`;
CREATE TABLE `ims_wnjz_sun_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) NOT NULL COMMENT '数量',
  `detailInfo` varchar(200) DEFAULT NULL,
  `telNumber` varchar(100) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT '2' COMMENT '1 取消订单，2待支付，3待发货，4已支付，5已完成',
  `time` varchar(150) DEFAULT NULL,
  `oprnid` varchar(150) DEFAULT NULL COMMENT '用户id',
  `uniacid` int(11) DEFAULT NULL,
  `countyName` varchar(150) DEFAULT NULL,
  `provinceName` varchar(150) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `addtime` varchar(100) DEFAULT NULL,
  `cityName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_order
-- ----------------------------
INSERT INTO `ims_wnjz_sun_order` VALUES ('1', '1530864317602', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864317', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('2', '1530864320132', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864320', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('3', '1530864321278', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864321', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('4', '1530864322621', '乐都路358号云间大厦1503', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1530864322', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('5', '1530867009446', '新港中路397号', '020-81167888', '200.00', '2', ' 21:00', '', '2', '海珠区', '广东省', '张三', '1530867009', '广州市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('6', '1530868773189', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868773', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('7', '1530868777971', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868777', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('8', '1530868778726', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868778', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('9', '1530868779159', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868779', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('10', '1530868780781', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868780', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('11', '1530868781392', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868781', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('12', '1530868782492', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868782', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('13', '1530868782870', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868782', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('14', '1530868783940', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868783', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('15', '1530868784107', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868784', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('16', '1530868784988', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868784', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('17', '1530868785113', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868785', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('18', '1530868785631', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', '周四 07-12 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1530868785', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('19', '1530874286189', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874286', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('20', '1530874290916', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874290', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('21', '1530874293716', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874293', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('22', '1530874297223', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874297', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('23', '1530874298149', '茸兴路407号', '15771875004', '200.00', '2', '周四 07-12 13:30', '', '2', '松江区', '上海市', '李晨', '1530874298', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('24', '1530878953906', '茸兴路407号', '15771875004', '200.00', '2', '周六 07-07 18:00', '', '2', '松江区', '上海市', '李晨', '1530878953', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('25', '1530878958475', '茸兴路407号', '15771875004', '200.00', '2', '周六 07-07 18:00', '', '2', '松江区', '上海市', '李晨', '1530878958', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('26', '1531360509497', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360509', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('27', '1531360513161', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360513', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('28', '1531360514759', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360514', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('29', '1531360515229', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360515', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('30', '1531360516481', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360516', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('31', '1531360517289', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360517', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('32', '1531360518844', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360518', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('33', '1531360519381', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360519', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('34', '1531360520572', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360520', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('35', '1531360524283', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360524', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('36', '1531360528207', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360528', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('37', '1531360560943', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360560', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('38', '1531360562199', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360562', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('39', '1531360563124', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 22:00', '', '2', '松江区', '上海市', '蔡兵兵', '1531360563', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('40', '1531360691965', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360691', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('41', '1531360693891', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360693', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('42', '1531360694271', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360694', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('43', '1531360695142', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 21:30', '', '2', '松江区', '上海市', '蔡兵兵', '1531360695', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('44', '1531360711966', 'EC体能训练中心(上海市松江区)', '18883345194', '2.00', '4', ' 21:30', 'o3fRn5KWMVlJ-EnXofHAEUEBv3Co', '2', '松江区', '上海市', '方志豪', '1531360711', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('45', '1531367332205', 'EC体能训练中心(上海市松江区)', '13482486131', '200.00', '2', ' 10:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531367332', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('46', '1531368004640', '茸兴路407号', '15771875004', '1.00', '2', '周六 07-14 10:00', 'o3fRn5F2oE6fy8ROuukbgzBALKw8', '2', '松江区', '上海市', '李晨', '1531368004', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('47', '1531372835594', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', ' 21:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531372835', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('48', '1531376221953', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周五 07-13 ', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531376221', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('49', '1531379895699', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', ' 21:30', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531379895', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('50', '1531380080607', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周五 07-13 22:00', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531380080', '上海市');
INSERT INTO `ims_wnjz_sun_order` VALUES ('51', '1531382029531', 'EC体能训练中心(上海市松江区)', '13482486131', '1.00', '2', '周三 07-18 22:00', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', '2', '松江区', '上海市', '蔡兵兵', '1531382029', '上海市');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_orderlist`;
CREATE TABLE `ims_wnjz_sun_orderlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(12) NOT NULL COMMENT '数量',
  `gid` int(11) DEFAULT NULL COMMENT '商品id',
  `isPay` tinyint(3) unsigned DEFAULT '0' COMMENT '是否已付款（0:未付款 1:付款）',
  `cid` int(10) DEFAULT NULL COMMENT '使用使用优惠券（0:未使用 int 用户优惠券ID）',
  `payType` tinyint(4) unsigned DEFAULT '0' COMMENT '支付类型（0:微信支付 1:余额支付 2:在线充值）',
  `createTime` timestamp NULL DEFAULT NULL,
  `present_coupon` int(10) unsigned DEFAULT NULL COMMENT '支付赠送优惠券',
  `present_integral` int(10) unsigned DEFAULT NULL COMMENT '支付赠送积分',
  `present_balance` int(11) DEFAULT NULL COMMENT '支付赠送余额',
  `uniacid` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_orderlist
-- ----------------------------
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('1', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '1');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('2', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '2');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('3', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '3');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('4', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '4');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('5', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '5');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('6', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '6');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('7', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '7');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('8', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '8');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('9', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '9');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('10', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '10');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('11', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '11');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('12', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '12');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('13', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '13');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('14', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '14');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('15', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '15');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('16', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '16');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('17', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '17');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('18', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '18');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('19', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '19');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('20', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '20');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('21', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '21');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('22', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '22');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('23', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '23');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('24', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '24');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('25', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '25');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('26', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '26');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('27', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '27');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('28', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '28');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('29', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '29');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('30', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '30');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('31', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '31');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('32', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '32');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('33', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '33');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('34', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '34');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('35', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '35');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('36', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '36');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('37', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '37');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('38', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '38');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('39', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '39');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('40', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '40');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('41', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '41');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('42', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '42');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('43', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '43');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('44', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '44');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('45', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '45');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('46', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '46');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('47', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '47');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('48', '1', '2', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '48');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('49', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '49');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('50', '1', '2', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '50');
INSERT INTO `ims_wnjz_sun_orderlist` VALUES ('51', '1', '2', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, '2', '51');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_recharges`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_recharges`;
CREATE TABLE `ims_wnjz_sun_recharges` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(120) DEFAULT NULL,
  `r_img` varchar(255) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `r_time` varchar(45) DEFAULT NULL,
  `r_money` int(120) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ims_wnjz_sun_recharges
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_reconciliation`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_reconciliation`;
CREATE TABLE `ims_wnjz_sun_reconciliation` (
  `prid` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`prid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_reconciliation
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_selected`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_selected`;
CREATE TABLE `ims_wnjz_sun_selected` (
  `seid` int(11) NOT NULL AUTO_INCREMENT,
  `sele_name` varchar(255) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `video` text,
  `content` text,
  `detele` int(11) DEFAULT '1',
  `prob` text,
  `time` varchar(100) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `news` int(11) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`seid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_selected
-- ----------------------------
INSERT INTO `ims_wnjz_sun_selected` VALUES ('1', '松江地区油烟机清洗', 'images/2/2018/07/q35wJ059F6I06V8WWW8T90Wf00hgW6.jpg', '', '<p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">支付1元预约，或者直接蔡师傅联系电话：13524162931</span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\"><br/></span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">本公司拥有严格的管理制度，一流的服务质量，专业的清洗技师，良好的至诚信誉；多年来磨砺造就了一批批技术过硬，经验丰富的优秀技师，他们用至诚的微笑和优质的服务温暖着上海的千家万户。</span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 9pt;\"><br data-filtered=\"filtered\"/></span><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">本公司专业各种油烟罩清洗服务。我们采用专业油烟罩清洗设备和油烟罩清洗剂，按照科学的油烟罩清洗步骤，专业提供家庭油烟罩清洗和宾馆饭店的大型油烟罩清洗服务，价格合理公道，欢迎来电垂询。</span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 9pt;\"><br data-filtered=\"filtered\"/></span><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">油烟罩清洗内容包括烟罩内外表面、烟罩内的灯罩、运水系统、防火滤网、排烟口、烟罩上部排烟道以及灶台表面等。</span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 9pt;\"><br data-filtered=\"filtered\"/></span><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">清洗重点部位是主排烟罩内侧、环保网、进风管、主排烟罩上方的烟道内部。</span></span></p><p class=\"p\" style=\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; font-family: 宋体; font-size: 12pt; color: rgb(51, 60, 74); white-space: normal; line-height: 15pt; text-indent: 24pt; background: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-size: 9pt;\"><br data-filtered=\"filtered\"/></span><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\">我们将重点对平行烟道内部进行彻底清洗。采用的主要方法是人员进入烟道内部进行清洗；对于外部竖形油烟管道采用人工拆卸加高压清洗机进行清洗。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 10.5pt;\"><span style=\"font-family:宋体\"><br/></span></span></p><p><br/></p>', '1', '油烟机清洗', '2018-07-12 13:42:28', '2', '1', '0', '1', '0');
INSERT INTO `ims_wnjz_sun_selected` VALUES ('2', '松江地区空调维修', 'images/2/2018/07/zL4az6l0iC65uUP61wr6Cauz064454.jpg', '', '<p>支付1元预约，或者直接蔡师傅联系电话：13524162931</p><p>蔡师傅专业从事空调安装、空调维修、空调移机、空调拆除、空调保养清洗、空调加液等服务，服务获得了上海广大市民的一致好评。</p><p><br/></p><p>拥有空调维修、员工技术力量雄厚，加上在上海松江从事空调维修、空调拆除多年空调移机、，对上海的生活和工作环境都十分熟悉.?</p><p>都经过特殊的培训，不仅精通上海空调维修、空调拆装、还能对空调清洗保养和空调进一步的优化，使您的空调达到耗电最低，达到效率最高，而且还可以迅速判断空调存在的故障点，并以最快的速度提出问题的解决方法，让您有一个温暖的家。?</p><p>我们秉承“服务创造价值”，打造空调服务客户满意信息网络，向消费者提供全方位资讯及技术服务。</p><p><br/></p>', '1', '蔡师傅空调维修', '2018-07-12 13:42:36', '2', '2', '0', '1', '0');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_selecteds`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_selecteds`;
CREATE TABLE `ims_wnjz_sun_selecteds` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `sele_name` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `video` text,
  `content` text NOT NULL,
  `gid` int(11) NOT NULL,
  `isdefault` int(11) NOT NULL,
  `prob` text NOT NULL,
  `selftime` varchar(255) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_selecteds
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_selectedtype`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_selectedtype`;
CREATE TABLE `ims_wnjz_sun_selectedtype` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(45) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT '1',
  `img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_selectedtype
-- ----------------------------
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('1', '油烟机清洗', '2', '2018-07-12 13:16:51', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('2', '空调维修', '2', '2018-07-12 13:16:59', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('3', '空调安装', '2', '2018-07-12 13:17:34', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('4', '空调加液', '2', '2018-07-12 13:17:47', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('5', '空调清洗', '2', '2018-07-12 13:17:58', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('6', '燃气灶维修', '2', '2018-07-12 13:18:08', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('7', '洗衣机维修', '2', '2018-07-12 13:18:24', '0', null);
INSERT INTO `ims_wnjz_sun_selectedtype` VALUES ('8', '热水器维修', '2', '2018-07-12 13:18:33', '0', null);

-- ----------------------------
-- Table structure for `ims_wnjz_sun_servies`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_servies`;
CREATE TABLE `ims_wnjz_sun_servies` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `servies_name` varchar(120) NOT NULL,
  `login` varchar(120) NOT NULL,
  `password` varchar(80) NOT NULL,
  `servies_details` text,
  `z_imgs` varchar(255) NOT NULL,
  `s_time` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ims_wnjz_sun_servies
-- ----------------------------
INSERT INTO `ims_wnjz_sun_servies` VALUES ('1', '2', '蔡师傅', 'caishifu', 'caishifu', '<p>222</p>', 'images/2/2018/07/vqgog296Pqo9lOgo9k2GSo9o2NqlOq.png', '2018-07-12 15:42:39');
INSERT INTO `ims_wnjz_sun_servies` VALUES ('2', '2', '蔡师傅1', '1', '1', '<p>1</p>', 'images/2/2018/07/uz6z0p8Rk8e3PGs6pKz7hrnR8k3Ep3.jpg', '2018-07-12 16:02:04');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_system`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_system`;
CREATE TABLE `ims_wnjz_sun_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `appid` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT 'appid',
  `appsecret` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT 'appsecret',
  `mchid` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT '商户号',
  `wxkey` varchar(250) CHARACTER SET latin1 DEFAULT NULL COMMENT '商户秘钥',
  `uniacid` int(11) DEFAULT NULL,
  `url_name` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT '网址名称',
  `details` text COMMENT '关于我们',
  `url_logo` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT '网址logo',
  `bq_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '版权名称',
  `link_name` varchar(30) DEFAULT NULL COMMENT '网站名称',
  `link_logo` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT '网站logo',
  `support` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT '技术支持',
  `bq_logo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT '颜色',
  `tz_appid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `tz_name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `pt_name` varchar(100) DEFAULT NULL COMMENT '平台名称',
  `tz_audit` int(11) DEFAULT NULL COMMENT '帖子审核1.是 2否',
  `sj_audit` int(11) DEFAULT NULL COMMENT '商家审核1.是 2否',
  `cityname` varchar(20) DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `client_ip` varchar(100) DEFAULT NULL,
  `apiclient_key` varchar(100) DEFAULT NULL,
  `apiclient_cert` varchar(100) DEFAULT NULL,
  `fontcolor` varchar(100) DEFAULT NULL,
  `is_bargainopen` int(2) DEFAULT NULL COMMENT '0为不关闭1为开启',
  `bargain_price` varchar(11) DEFAULT NULL COMMENT '每次砍掉的价格%',
  `share_title` varchar(45) DEFAULT NULL COMMENT '分享标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_system
-- ----------------------------
INSERT INTO `ims_wnjz_sun_system` VALUES ('1', 'wxd764b5bf847aee22', 'a6e2bf0f8d2bd439c2feedda2c661f38', '1488354722', 'Shanghaishensuchuanshoux57630970', '2', null, '<p>蔡师傅，服务上海全松江地区，空调维修，空调安装，空调加液，空调清洗，油烟机清洗，燃气灶维修，洗衣机维修，热水器维修</p>', null, null, '蔡师傅松江家电维修油烟机清洗', 'images/2/2018/07/uz6z0p8Rk8e3PGs6pKz7hrnR8k3Ep3.jpg', null, null, '#ED414A', null, null, '蔡师傅', null, null, null, '', '上海市松江区荣乐5村', '13524162931', 'images/2/2018/07/uz6z0p8Rk8e3PGs6pKz7hrnR8k3Ep3.jpg', null, null, null, '#434343', '2', '', '');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_user`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_user`;
CREATE TABLE `ims_wnjz_sun_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'iq',
  `openid` varchar(100) DEFAULT NULL COMMENT 'openid',
  `img` varchar(200) DEFAULT NULL COMMENT '头像',
  `time` varchar(50) DEFAULT NULL COMMENT '登录时间',
  `uniacid` int(11) DEFAULT NULL,
  `money` decimal(11,2) DEFAULT '0.00',
  `user_name` varchar(30) DEFAULT NULL,
  `user_tel` int(11) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `commission` decimal(11,0) DEFAULT NULL,
  `state` int(4) DEFAULT '1',
  `attention` varchar(255) DEFAULT NULL,
  `fans` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_user
-- ----------------------------
INSERT INTO `ims_wnjz_sun_user` VALUES ('2', 'o3fRn5BmoE3qgp3hujtYwp9kq3hY', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJvxTO5l5tNHfIJs5FicfLIopbOeRtNaXlHUNjYuQwMGlHUb2LkiaS5fGSM1Z3qUibNarrye1dhEGcVw/132', '1531367196', '2', '0.00', null, null, null, null, '1', null, null, null, '菜小柒');
INSERT INTO `ims_wnjz_sun_user` VALUES ('3', 'o3fRn5BYo_R0p5IF71P7NHNs5LCU', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKMLdr5icDs3c6QuicciasYgW4E8mib39gPSiaTLB5YrCQE1Qs4ZldTshGH9bQtOJy6sLcSVHODv5qR5bA/132', '1531367246', '2', '0.00', null, null, null, null, '1', null, null, null, '酷鼠');
INSERT INTO `ims_wnjz_sun_user` VALUES ('4', 'o3fRn5KWMVlJ-EnXofHAEUEBv3Co', 'https://wx.qlogo.cn/mmopen/vi_32/93IXBIGdEMArgrNFYpR0iadMxUfFXb5DHMT8UH0W37cbzJibBicTygPeZ6AOmASQXvIxs9XqFzrRuO93jEGCZeibnw/132', '1531367252', '2', '0.00', null, null, null, null, '1', null, null, null, '滚一滚就圆了');
INSERT INTO `ims_wnjz_sun_user` VALUES ('5', 'o3fRn5F2oE6fy8ROuukbgzBALKw8', 'https://wx.qlogo.cn/mmopen/vi_32/feQaKQLLKYLSGTpGBR1ibb0P3x40SGRrk9I92HCaibMXjWib3Dg02MX2BIptmibkUDw7oEHyAicHphzQJSere72cpBw/132', '1531367254', '2', '0.00', null, null, null, null, '1', null, null, null, 'spring');
INSERT INTO `ims_wnjz_sun_user` VALUES ('6', 'o3fRn5DygzyQCZYTGS-na-CTv0qo', 'https://wx.qlogo.cn/mmopen/vi_32/JzkQF05GqBUUuMf2knZCAAEJmGWtSsjycXEYQCDnKMGR32BsgJzrUyWicf5CpLNxEyiajRdibzHhvjkPvicv4MqZ9A/132', '1531367284', '2', '0.00', null, null, null, null, '1', null, null, null, '温婉');

-- ----------------------------
-- Table structure for `ims_wnjz_sun_user_bargain`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_user_bargain`;
CREATE TABLE `ims_wnjz_sun_user_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) DEFAULT NULL,
  `kid` int(11) DEFAULT NULL,
  `mch_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `kanjia` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_user_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wnjz_sun_user_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wnjz_sun_user_coupon`;
CREATE TABLE `ims_wnjz_sun_user_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `vab` int(11) DEFAULT NULL COMMENT '优惠券名称，展示用',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '优惠券类型（1:折扣 2:代金券）',
  `val` int(11) DEFAULT NULL COMMENT '功能',
  `createTime` varchar(50) DEFAULT NULL COMMENT '领取时间',
  `limitTime` varchar(50) DEFAULT NULL COMMENT '使用截止时间',
  `isUsed` tinyint(3) DEFAULT '0' COMMENT '是否使用',
  `useTime` varchar(50) DEFAULT '0' COMMENT '使用时间',
  `from` int(11) DEFAULT NULL COMMENT '优惠券来源（0:用户领取 1:充值赠送 2:支付赠送）',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wnjz_sun_user_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `ims_wxapp_general_analysis`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_general_analysis
-- ----------------------------
INSERT INTO `ims_wxapp_general_analysis` VALUES ('1', '2', '43', '552', '6', '6', '2', '705.3333', '98.4186', '3.7907', '20180712');

-- ----------------------------
-- Table structure for `ims_wxapp_versions`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_versions
-- ----------------------------
INSERT INTO `ims_wxapp_versions` VALUES ('1', '2', '0', '1.0', '很好用', 'a:1:{s:8:\"wnjz_sun\";a:4:{s:4:\"name\";s:8:\"wnjz_sun\";s:7:\"newicon\";N;s:7:\"version\";s:3:\"4.8\";s:12:\"defaultentry\";N;}}', '3', '0', 'a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}', '1530862284', '0', '0', '', '', '0');

-- ----------------------------
-- Table structure for `ims_wxcard_reply`
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------
