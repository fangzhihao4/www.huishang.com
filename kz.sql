/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : kz

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-13 16:38:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `kz_admin`
-- ----------------------------
DROP TABLE IF EXISTS `kz_admin`;
CREATE TABLE `kz_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `username` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `pass_key` varchar(255) DEFAULT NULL COMMENT '密码核对代码',
  `login_ip` varchar(255) DEFAULT NULL COMMENT '上次登录ip',
  `login_time` int(11) DEFAULT NULL COMMENT '上次登录时间',
  `register_ip` varchar(255) DEFAULT NULL COMMENT '注册ip',
  `regiser_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `expire_time` int(11) DEFAULT NULL COMMENT '到期时间',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `is_true` tinyint(4) DEFAULT NULL COMMENT '是否认证  0 认证不通过 1通过 2审核中',
  `login_type` tinyint(4) NOT NULL DEFAULT '5' COMMENT '登录类型 0 超级管理员 1系统管理员  10店铺注册人  9店铺员工 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_admin
-- ----------------------------
INSERT INTO `kz_admin` VALUES ('1', 'admin', 'admin', 'password', null, '', '1531468260', null, null, null, null, null, '1');
INSERT INTO `kz_admin` VALUES ('2', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('3', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('4', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('5', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('6', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('7', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('8', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('9', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('10', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');
INSERT INTO `kz_admin` VALUES ('11', 'user', null, 'password', null, null, null, null, null, null, null, null, '5');

-- ----------------------------
-- Table structure for `kz_car`
-- ----------------------------
DROP TABLE IF EXISTS `kz_car`;
CREATE TABLE `kz_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `num` int(11) DEFAULT '0' COMMENT '数量',
  `checked` tinyint(4) DEFAULT '1' COMMENT '是否有效1是  0否',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_car
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_category`
-- ----------------------------
DROP TABLE IF EXISTS `kz_category`;
CREATE TABLE `kz_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '父级id',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级id',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `image` longtext COMMENT '分类图',
  `is_image` tinyint(4) DEFAULT '0' COMMENT '0不展示图片 1展示小图 2展示大图',
  `big_image` longtext COMMENT '分类大图',
  `status` tinyint(4) DEFAULT '0' COMMENT '0 展示 1隐藏 2删除',
  `sort` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_category
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_combined`
-- ----------------------------
DROP TABLE IF EXISTS `kz_combined`;
CREATE TABLE `kz_combined` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品套餐表',
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '套餐名',
  `old_price` decimal(10,2) DEFAULT '0.00' COMMENT '原价',
  `total_price` decimal(10,2) DEFAULT '0.00' COMMENT '实际价值  商品原价价值总和',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '现价',
  `index_img` varchar(255) DEFAULT NULL COMMENT '首页图',
  `comment` varchar(255) DEFAULT NULL COMMENT '简单介绍',
  `service` varchar(255) DEFAULT NULL COMMENT '标签',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `created_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `combined_num` int(11) DEFAULT '0' COMMENT '库存',
  `views` int(11) DEFAULT '0' COMMENT '销售量',
  `num` int(11) DEFAULT '0' COMMENT '套餐内商品数量',
  `volume` int(11) DEFAULT '0' COMMENT '交易量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_combined
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_combined_detail`
-- ----------------------------
DROP TABLE IF EXISTS `kz_combined_detail`;
CREATE TABLE `kz_combined_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combined_id` int(11) DEFAULT NULL,
  `image` text,
  `detail` text,
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_combined_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_combined_goods`
-- ----------------------------
DROP TABLE IF EXISTS `kz_combined_goods`;
CREATE TABLE `kz_combined_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐详情表',
  `combined_id` int(11) NOT NULL COMMENT '套餐id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `num` int(11) DEFAULT '0' COMMENT '数量',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `service` varchar(255) DEFAULT NULL COMMENT '标签',
  `tab` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_combined_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_goods`
-- ----------------------------
DROP TABLE IF EXISTS `kz_goods`;
CREATE TABLE `kz_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品表',
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键字 如   凉菜,热菜   多个值用逗号隔开',
  `index_img` varchar(255) DEFAULT NULL COMMENT '主图',
  `price` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `old_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `times` int(10) unsigned DEFAULT NULL,
  `comments` text COMMENT '简单介绍',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `starttime` int(11) DEFAULT NULL COMMENT '开始时间',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `weight` double(10,0) DEFAULT '0' COMMENT '重量',
  `integral` int(11) DEFAULT '0' COMMENT '积分设置',
  `is_hot` tinyint(4) DEFAULT '0' COMMENT '是否热销',
  `is_rem` tinyint(4) DEFAULT '0' COMMENT '推荐',
  `sort` int(255) DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) DEFAULT '2' COMMENT '0 审核不通过 1 审核通过  2审核中',
  `goods_num` int(11) DEFAULT '0' COMMENT '库存',
  `views` int(11) DEFAULT '0' COMMENT '现在访问量',
  `is_detele` tinyint(4) DEFAULT '1' COMMENT '1在售 2 下架  3删除',
  `volume` int(11) DEFAULT '0' COMMENT '交易量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `kz_goods_category`;
CREATE TABLE `kz_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `kz_goods_detail`;
CREATE TABLE `kz_goods_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `image` text,
  `video_url` varchar(255) DEFAULT NULL,
  `detail` text,
  `specification` longtext,
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_goods_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_house`
-- ----------------------------
DROP TABLE IF EXISTS `kz_house`;
CREATE TABLE `kz_house` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '房间名',
  `index_img` varchar(255) DEFAULT NULL COMMENT '主图',
  `image` text COMMENT '其他图 多图用中文逗号隔开',
  `oldprice` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `price` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `type_detail` varchar(255) DEFAULT NULL,
  `detail` text,
  `sum` int(11) DEFAULT '0' COMMENT '数量',
  `views` int(11) DEFAULT '0' COMMENT '访问量',
  `volume` int(11) DEFAULT NULL COMMENT '交易量',
  `status` tinyint(4) DEFAULT '2' COMMENT '0审核不通过 1审核通过 2审核中',
  `is_detele` tinyint(4) DEFAULT '0' COMMENT '0展示  1下架 2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_house
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_image`
-- ----------------------------
DROP TABLE IF EXISTS `kz_image`;
CREATE TABLE `kz_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `image` text COMMENT '多图中文逗号隔开',
  `detail` text COMMENT '分类详情',
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_image
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_img_type`
-- ----------------------------
DROP TABLE IF EXISTS `kz_img_type`;
CREATE TABLE `kz_img_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类展示分类表',
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '图片分类名',
  `image` varchar(255) DEFAULT NULL COMMENT '小图标',
  `type` tinyint(4) DEFAULT NULL COMMENT '推荐样式 1 2 3  0不用推荐样式',
  `status` tinyint(4) DEFAULT NULL COMMENT '1通过 0未通过 2审核中',
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `is_detele` tinyint(4) DEFAULT '1' COMMENT '1展示 2下架 3删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_img_type
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_news`
-- ----------------------------
DROP TABLE IF EXISTS `kz_news`;
CREATE TABLE `kz_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL COMMENT '简单介绍',
  `image` varchar(255) DEFAULT NULL COMMENT '小图',
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `is_hot` tinyint(4) DEFAULT NULL COMMENT '是否热门',
  `is_rem` tinyint(4) DEFAULT NULL COMMENT '是否推荐',
  `detail` text,
  `status` tinyint(4) DEFAULT NULL COMMENT '1通过  0不通过 2审核中',
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_news
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_order`
-- ----------------------------
DROP TABLE IF EXISTS `kz_order`;
CREATE TABLE `kz_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL COMMENT '订单单号',
  `good_id` int(11) DEFAULT NULL COMMENT '商品id',
  `num` int(11) DEFAULT NULL COMMENT '商品项目数量',
  `goods_price` decimal(10,0) DEFAULT NULL COMMENT '商品总价',
  `order_price` decimal(10,0) DEFAULT NULL COMMENT '订单实际金额',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `pay_channel` varchar(255) DEFAULT NULL COMMENT '订单支付渠道',
  `pay_out_trade` varchar(255) DEFAULT NULL COMMENT '第三方支付流水号',
  `user_detail` text COMMENT '用户留言',
  `status` tinyint(255) DEFAULT NULL COMMENT '0未付款,1已付款2,已发货,3已签收,4退货申请,5退货中,6已退货,7取消交易',
  `set_time` int(11) DEFAULT NULL COMMENT '订单结算时间',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_order
-- ----------------------------
INSERT INTO `kz_order` VALUES ('1', '1', '1', null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `kz_order` VALUES ('2', '1', '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kz_order` VALUES ('3', '2', '3', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kz_order` VALUES ('4', '2', '4', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `kz_order` VALUES ('5', '3', '5', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `kz_order_combined`
-- ----------------------------
DROP TABLE IF EXISTS `kz_order_combined`;
CREATE TABLE `kz_order_combined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `combined_id` int(11) DEFAULT NULL COMMENT '套餐id',
  `goods_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL COMMENT '套餐内商品数量',
  `created_time` int(11) DEFAULT NULL COMMENT '订单套餐创建时间',
  `remark` text COMMENT '备注',
  `update_time` int(11) DEFAULT NULL COMMENT '套餐更新时间',
  `name` varchar(255) DEFAULT NULL COMMENT '套餐名',
  `price` decimal(10,0) DEFAULT NULL COMMENT '套餐价格',
  `detail` varchar(255) DEFAULT NULL COMMENT '套餐详情',
  `comment` varchar(255) DEFAULT NULL COMMENT '套餐简介',
  `index_img` varchar(255) DEFAULT NULL COMMENT '套餐首页图',
  `image` text COMMENT '套餐其他图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_order_combined
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `kz_order_goods`;
CREATE TABLE `kz_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `combined_id` int(11) DEFAULT '0' COMMENT '套餐id',
  `type` varchar(255) DEFAULT '0' COMMENT '1 商品  2套餐',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名',
  `old_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `price` decimal(10,2) DEFAULT NULL COMMENT '实际价格',
  `total_pirce` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `is_exists` tinyint(4) DEFAULT NULL COMMENT '商品&套餐是否有效',
  `remark` varchar(255) DEFAULT NULL COMMENT '客户备注',
  `index_img` varchar(255) DEFAULT NULL COMMENT '商品缩略图',
  `image` text COMMENT '商品详情图',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `comments` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `detail` varchar(255) DEFAULT NULL COMMENT '商品详情',
  `create_time` int(11) DEFAULT NULL COMMENT '订单创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '商品更新时间  值为商品表更新时间',
  `weight` double DEFAULT NULL COMMENT '重量',
  `integral` varchar(255) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_order_returns`
-- ----------------------------
DROP TABLE IF EXISTS `kz_order_returns`;
CREATE TABLE `kz_order_returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `returns_no` varchar(255) DEFAULT NULL COMMENT '退货编号',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `return_phone` varchar(255) DEFAULT NULL COMMENT '退货用户电话',
  `return_amount` decimal(10,0) DEFAULT NULL COMMENT '退款金额',
  `return_submit_time` int(11) DEFAULT NULL COMMENT '退款申请时间',
  `return_time` int(11) DEFAULT NULL COMMENT '退款时间',
  `remark` text COMMENT '备注',
  `response_time` datetime DEFAULT NULL COMMENT '商家处理时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_order_returns
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_shop`
-- ----------------------------
DROP TABLE IF EXISTS `kz_shop`;
CREATE TABLE `kz_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `index_img` varchar(255) DEFAULT NULL,
  `image` text COMMENT '多图',
  `img_type` tinyint(4) DEFAULT '0' COMMENT '首页展示 样式',
  `detail` text COMMENT '详情',
  `created_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '2' COMMENT '1通过 0未通过 2审核中',
  `house_detail` text COMMENT '详情',
  `views` int(11) DEFAULT '0' COMMENT '访问量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_topic`
-- ----------------------------
DROP TABLE IF EXISTS `kz_topic`;
CREATE TABLE `kz_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `topic_type` int(11) DEFAULT NULL COMMENT '商品type',
  `content` text COMMENT '内容',
  `from_id` int(11) DEFAULT NULL COMMENT '评论人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_topic_detail`
-- ----------------------------
DROP TABLE IF EXISTS `kz_topic_detail`;
CREATE TABLE `kz_topic_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL COMMENT '回复目标的id',
  `reply_type` tinyint(4) DEFAULT NULL COMMENT '1针对回复 2 针对回复的回复',
  `content` text,
  `from_id` int(11) DEFAULT NULL COMMENT '评论人的id',
  `to_uid` int(11) DEFAULT NULL COMMENT '评论目标人的id，如果没有目标人，则该字段为空',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_topic_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_user`
-- ----------------------------
DROP TABLE IF EXISTS `kz_user`;
CREATE TABLE `kz_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weichat` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_user
-- ----------------------------
INSERT INTO `kz_user` VALUES ('1', null, 'username', 'aaaaa', '1');
INSERT INTO `kz_user` VALUES ('2', null, 'admin', 'sad', '1');
INSERT INTO `kz_user` VALUES ('3', null, 'name', 'wew', '0');
