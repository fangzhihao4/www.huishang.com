/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : sq_chuanshou

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-03 09:31:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chuanshou_addonarticle
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addonarticle`;
CREATE TABLE `chuanshou_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `img2` varchar(250) NOT NULL DEFAULT '',
  `img3` varchar(250) NOT NULL DEFAULT '',
  `sou` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addonarticle
-- ----------------------------
INSERT INTO `chuanshou_addonarticle` VALUES ('1', '1', '小程序', '', '', '59.63.206.32', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('2', '2', '后台源码 合理收费 专业售后', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('3', '2', '专业售后技术为您解决各种问题', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('4', '2', '营销保障', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('5', '2', '运营指导 案例分享', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('6', '2', '培训保障', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('7', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">家具家居</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('8', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">医疗健康</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('9', '4', '美容养生', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('10', '4', '生鲜果蔬', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('11', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">茶饮酒水</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('12', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">门店</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('13', '4', '美妆', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('14', '4', '礼品鲜花', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('15', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">蛋糕烘焙</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('16', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">服装鞋帽</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('17', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">日用百货</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('18', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">汽车服务</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('19', '4', '<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-align: center;\">教育培训</span>', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('20', '4', '亲子母婴', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('21', '4', '图书音像', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('22', '3', '<div>\r\n	消费一定金额</div>\r\n<div>\r\n	享受价格优惠</div>\r\n', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('23', '3', '分销', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('24', '3', '秒杀', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('25', '3', '消费', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('26', '3', '砍价', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('27', '3', '会员卡', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('28', '9', '<div>\r\n	3月29日消息 刚刚微信小程序官方宣布，为满足小程序开发者变现需求，内测广告组件能力。为帮助公众号运营者快速接入小程序，新增快速创建小程序接口。另外新增小程序插件管理接口，支持授权第三方平台添加插件。同时更新小程序基础能力。</div>\r\n<div>\r\n	内测小程序广告组件</div>\r\n<div>\r\n	为满足小程序开发者变现需求，小程序广告组件已启动内测。</div>\r\n<div>\r\n	开发者开通流量主模块后，可通过创建广告单元，使用广告组件将广告卡片灵活配置在小程序页面内。　　</div>\r\n<div>\r\n	同时，微信广告已面向广告主开放品牌活动推广、电商推广、公众号推广及应用推广等类目能力，支持小程序广告资源位投放，详见《微信广告新能力》。</div>\r\n<div>\r\n	新增快速创建小程序接口</div>\r\n<div>\r\n	为帮助已有公众号用户快速接入小程序服务，公众平台新增&ldquo;快速注册小程序&rdquo;权限集。公众号可授权第三方平台快速注册并认证小程序。</div>\r\n<div>\r\n	详见《复用公众号主体快速创建小程序接口文档》。</div>\r\n<div>\r\n	新增插件管理接口</div>\r\n<div>\r\n	为方便小程序开发者使用插件，新增插件管理接口，包括添加插件及管理插件使用申请。新增&ldquo;插件管理权限集&rdquo;，支持小程序授权第三方平台添加插件。</div>\r\n<div>\r\n	详见《插件管理接口文档》和《插件管理权限集》。</div>\r\n<div>\r\n	更新基础能力</div>\r\n<div>\r\n	1.为保护用户隐私并优化体验，开发者在不获取用户信息的情况下，无需用户授权，即可在页面上展示当前用户的昵称和头像等内容。</div>\r\n<div>\r\n	2.当前用户小程序版本过低，无法获得最佳使用体验时，开发者可将其更新到最新版本。<br />\r\n	3.小程序新增异步任务处理能力。</div>\r\n<div>\r\n	更多新能力及详情，请点击更新日志。</div>\r\n', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('29', '1', '小程序开发', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('30', '2', '售后保障', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('31', '11', '移动轮换图', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('32', '11', '解决方案', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('33', '11', '小程序开发公司', '', '', '58.39.108.159', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('34', '1', '上海小程序开发', '', '', '114.89.64.208', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('35', '5', '<div>\r\n	<img alt=\"\" src=\"/uploads/allimg/180407/1-1P40G13403234.png\" style=\"width: 760px; height: 440px;\" /></div>\r\n', '', '', '114.89.64.208', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('38', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40PZP0P7.png\" />', '', '', '114.89.64.208', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('39', '9', '<br />\r\n2017年6月3日，小程序「自定义关键词」功能正式上线。小程序开发者可以通过该功能，自定义 10&nbsp;个搜索关键词，以此来增加小程序的曝光率。<br />\r\n<br />\r\n<br />\r\n2018年4月3日，小程序「自定义关键词」功能正式关闭。<br />\r\n<br />\r\n<br />\r\n&nbsp; &nbsp;从微信官方得知，「自定义关键词」功能是微信为了弥补小程序搜索前期算法的不足（模糊搜索）而推出的一个过渡的产品，仅与当时微信只支持小程序名称搜索的搜索策略结合产生作用。如今，随着搜索方面的AI技术、功能直达等功能加入，「自定义关键词」功能的弊端已经开始显现，所以被微信放弃是很正常的。<br />\r\n<br />\r\n<br />\r\n据了解，目前，微信已支持相关机器算法实现小程序的模糊搜索，开发者无需再通过上传相关词汇、审核等繁琐的操作，更加便捷。官方称，&ldquo;「自定义关键词」功能的关闭对小程序搜索不会产生影响，根据相关算法，我们将会调整不合适的搜索词，不断发掘相关词汇，提升搜索质量。&rdquo;<br />\r\n<br />\r\n<br />\r\n当然，微信团队也比较谨慎，并没有一次清理所有的「自定义关键词」功能，目前已提交的自定义关键词在短期内还将持续生效，但会逐渐被算法调整结果所替代。<br />\r\n<br />\r\n&nbsp;<br />\r\n虽然我们还无法得知微信搜索新算法是怎样运转的，但官方已经给出了&ldquo;新的算法下，开发者如何获得更好的搜索结果？&rdquo;问题的答案：<br />\r\n<br />\r\n&middot; 聚焦小程序质量：<br />\r\n小程序所提供的内容和服务的完整性及优质度，将对搜索结果造成最重要的影响；同时，平台会关注小程序在访问、点击、停留、留存、交易等数据指标上的表现；不良投诉和恶意违反平台规则的记录会直接对你的搜索结果产生负面影响。<br />\r\n<br />\r\n<br />\r\n&middot;提高相关描述准确性：<br />\r\n小程序名称和描述清晰、真实、准确，增加无意义的形容词和蹭流量行为会让你得不偿失。<br />\r\n&nbsp;<br />\r\n特别注意：<br />\r\n所用的虚假和作弊行为都将被打击，且一旦被平台发现，处罚和打击将是永久性的。<br />\r\n&nbsp;<br />\r\n此外，微信也将不断优化算法能力，为大家带来更好的小程序搜索体验。<br />\r\n&nbsp;<br />\r\n', '', '', '114.89.64.208', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('40', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q04014c8.png\" style=\"width: 760px; height: 440px;\" />', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('41', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q04210P5.png\" style=\"width: 760px; height: 440px;\" />', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('42', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q04311N4.png\" style=\"width: 760px; height: 440px;\" />', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('43', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q0560U96.png\" style=\"width: 760px; height: 440px;\" />', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('44', '5', '<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q05644X2.png\" style=\"width: 760px; height: 440px;\" />', '', '', '59.63.206.34', '', '/uploads/allimg/180408/180408/1-1P40Q4213V28.jpg', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('45', '10', '<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	数据分析是要给相对比较专业的事情，很多时候因公司、团队限制，我们都采用第三方系统来进行数据分析。但有些时候，有可能系统自带的数据分析功能就已经很强大，只是我们没有发现而已。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img initial loaded\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1-1P40Q22102527.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: 0px 0px; animation: none; width: 795px; height: 413px;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	你可能做了一个小程序，也做了很多推广，然后查看了后台的一些数据：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有本地也有外地；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有男粉丝也有女粉丝；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有青年才俊，也有中年大叔；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有iPhone也有安卓；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的页面访问人数比较多，有的页面访问人数比较少；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的停留了很久，有的点开就关闭了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有人访问一次再也没来过，有人进行了多次访问；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有人通过好友的分享进入，有人通过扫描二维码进入，有人主动在搜索框进行了搜索，有人在历史列表频繁进入，甚至有人把小程序置顶在聊天页面；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的按钮被点击多次，有的按钮却少有人问津（这个看不见，需要预先设定自定义分析字段，后面会讲）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	那么，每个数据代表了什么？有什么指导意义？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	今天我们就起底小程序的数据分析功能，分析那些躺在我们后台的数据，如何支撑我们的运营推广和功能优化。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	毕竟在做的各位都是高端运营，依次介绍每一个数据指标的意义并没有什么意义。所以我将从实际需求出发，逐一分析各个指标以及它们相互组合所展示的价值。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q1：花了这么多精力做宣传，效果到底怎么样？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	最直观的指标莫过于访问数量。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	点击&ldquo;数据分析&mdash;访问分析&rdquo;可以查看&ldquo;最近7天&rdquo;、&ldquo;最近30天&rdquo;以及自定义时间段的小程序访问情况。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/122124C58-1.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	从数据看，该小程序在11月24日出现一次峰值，本月20、21日预计将出现第二次峰值。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	假设我们在11月24日做了一次推广，那如何确定此次推广效果如何呢？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问分析部分还有另外一个功能：按时间对比。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	选择11月1-24日的访问次数，与11月24日到今天的访问次数做对比</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/12212431S-2.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	绿色为活动之后的曲线，蓝色为之前的曲线。对比两张图可以看出，活动之后的曲线大部分时候是高于活动之前的。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分功能中，&ldquo;打开次数&rdquo;只是其中一个维度，还有访问次数、访问人数、新用户数、人均停留时长等多个指标，各指标的意义可点击改图标右上角的问号了解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q2：用户从哪里来？到哪里去？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上一个问题解决了用户有没有增长的问题，接下来我们需要思考：用户确实增长了，但他们是因为我的推广而来么？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	你可能发了一些小程序码，也可能是分享到了很多群，或者在大V的公众号中做了露出。假如流量暴增，除了高兴，我们还应该知道，以上的推广方法，哪一种是最好的。下面就用到&ldquo;来源分析&rdquo;这个功能。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	前段时间很多文章给出了小程序目前的入口，总结的过程似乎都&ldquo;熬长了黑夜搔短了白头&rdquo;，但其实，小程序早已把所有的入口都告诉我们了：</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221242342-3.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	以上入口是小程序已经写在数据分析功能内的，运营者可以通过选择查看来自各个入口的用户数量</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/12212411G-4.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图是该小程序的近30天的用户来源分布。通过此图可以看出该小程序的用户忠诚度很高，历史列表的访问次数排在第一位；来源第二的为模板消息，我们可以认为唤醒对于小程序的二次访问非常有效；其他依次为会话（聊天界面中）、其他小程序返回（该小程序做了优秀小程序推荐，用户可通过该小程序直接进入其他小程序）等。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	如果需要精细化分析，该模块还提供了每一个来源的单独分析，可查看各时间段的来源变化趋势。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221242011-5.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分功能支持数据下载，运营者可以分别下载各个入口的小程序数据，合并在Excel中做每天的数据对比。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221241196-6.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	分析每个入口的流量变化趋势可以发现历史列表较稳定，模板消息在上月低有一次峰值，会话则波动较明显（毕竟是用户主动行为，不可控是正常的）。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除了上面分析的各个入口外，大家还可以根据自己的运营方案做公众号主页、公众号文章、搜索甚至聊天界面置顶等多个入口的观察分析，此处不一一展开。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	解决了用户从哪里来，我们还要研究用户到哪里去的问题。如果只关注流量，不考虑留存，肯定不是长久之计。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	关于&ldquo;到哪里去&rdquo;，我们可以使用访问分析的&ldquo;访问时长&rdquo;、&ldquo;访问深度&rdquo;和&ldquo;访问页面&rdquo;三个指标来考察。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问时长：代表了用户对你小程序的喜爱程度，停留时间越长，表示你的小程序对用户得吸引力越大（想到了罗胖的国民总时间这个概念）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问时长有两个指标：人均时长和次均时长。两者意义差别不大，前者代表了小程序对每个人的吸引力，后者代表了小程序对每一次访问的吸引力。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221245B6-7.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除此以外，我们还可以查看访问时长的人数分布来查看小程序的整体吸引力情况</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221245249-8.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图可以看出该小程序有明显的人群特色：以20s为分水岭，上下各出现阶梯式下降。我们可以猜测，20s以上的用户为重度忠诚用户，此类用户已停留50-100s为主；20s以下为&ldquo;观光客&rdquo;用户，停留20s最长，以此递减。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	我们可以以此猜测，一个&ldquo;观光客&rdquo;用户在完成20s的浏览后不能继续发现小程序的价值则离开，重度忠诚用户则直达兴趣点，停留超过50s。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	小程序的设计者可以尝试找到这两类用户，找到从20s突破到50s的点。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	新增留存：表征了用户访问小程序以后的再次访问的概率。这是大家使用最多的一个图，这个指标比停留时长更能表示小程序对用户的吸引力。这个指标的提出，给运营者带来了更大压力：活动当日流量很高，但7日后留存很低的话，活动似乎不应该称之为成功&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分包含两个分指标：新增留存和活跃留存。考察活动效果，一般以新增留存为KPI；考察用户粘性，则可选择活跃留存。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221242Z9-9.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	正常情况下，活跃留存会高于新增留存。给老板看，你懂得&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问页面：是指小程序各个页面的访问人数。这个指标中给出的数据包含的信息量非常大，对小程序设计的指导意义也很强，建议大家仔细阅读。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221241G2-10.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分给出了每个页面的访问人数、访问次数、次均时长、入口页次数、退出页次数、退出率、分享次数、收藏次数。我们重点讲次均时长、入口页次数和退出页次数。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	次均时长：用户每次访问该页面停留的时长。如果该页面停留时长远高出其他页面，那可能有两种情况：这个页面内容多很有趣；这个页面很难搞懂。所以时间长并不代表一定是好的。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	入口页次数：该页面作为用户进入小程序页面的次数。如果该页面的入口页次数高于小程序首页的次数，那你可能要考虑一下是不是要优化一下小程序的页面规划了。一般情况下，如果该指标与&ldquo;分享次数&rdquo;和&ldquo;收藏次数&rdquo;的变化幅度相同，则说明该页面对用户有足够的价值。但如果变化幅度不同，你就要考虑，是不是有人悄悄把这个页面插入到他的公众号文章里了（醒一醒&hellip;&hellip;）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	退出页次数：用户在此页面退出小程序的次数。这个指标的意义大家想必已经很清楚了，用户在此页面退出了你的小程序，要么该页为小程序功能的结果页，要么在这个页面用户厌烦了你的小程序。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问深度：与访问时长相同，访问深度也有一个summary，该指标同样表征了用户对小程序的探索分布。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/12212463A-11.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图我们可以看出，用户主要探索1个页面后退出，明显的&ldquo;观光客&rdquo;特质。有趣的是有不少的用户会持续探索6-10个页面，设计者同样可找出各部分用户做访谈，找到退出或继续探索的原因，继而优化小程序的设计。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q3：用户是谁？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	前面两个问题都是从小程序出发去分析用户的行为，这个问题我们则从用户出发。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	数据分析中的用户画像功能可以帮我们深入了解我们的用户。该功能提供了性别、年龄、地域和终端机型四个基本维度。作为资深运营，各位对他们的熟悉程度已经不需要我再做过多讲解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	比如，一个母婴类的小程序如果用户年龄段集中在18-24岁，那你肯定知道推广出问题了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	比如，一个本地生活服务类小程序如果用户地域分布集中在外省，那你肯定也知道推广出问题了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	再比如，一个果粉类小程序，如果你的用户安卓机型高于iPhone，那你肯定得想想，是不是可以接一波苹果的广告了（醒一醒！）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q4：这个按钮有用么？这个页面男粉丝访问多还是女粉丝访问多？这个商品购买漏斗是什么样的？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	细节决定成败，高端运营绝不会拘泥于基本的数据分析。概况数据只能了解一个基本面，而深度的优化需要了解每一个按钮的点击概率、了解每一个页面的用户类型分布、了解每一件商品从浏览到购买整个环节的流逝情况&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	这就需要祭出小程序数据分析的神器&mdash;&mdash;自定义分析。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	自定义分析的文档是这样介绍自己的：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	自定义分析支持灵活多维和近实时的用户行为分析，可以通过自定义上报，对用户在小程序内的行为做精细化跟踪，满足页面访问等标准统计以外的个性化分析需求。例如，电商类小程序通过配置自定义上报，收集数据，可以完成如下分析：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	购买商品的人，各</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	省份、城市、年龄、性别</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	的分布如何？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	不同用户群购买的商品数量、商品价格有什么差别</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	用户访问商品页、查看商品详情、查看评论、下单、支付、完成购买，</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	逐步的转化率</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	如何？不同</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	用户群的转化是否有差异</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	今天参与线上活动的用户，各个时段</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	（小时级）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	的活跃度如何？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	简单说，自定义分析就是可以针对需求，单独监控小程序内的每一个页面和元素，分别并给出不同用户的访问数据。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	事件分析</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	下图为我为守望轩小程序设置的banner轮播图、搜索框和导航栏三个元素的实时监控自定义分析事件</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221243923-12.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	可以分析每一个事件指定时间内以小时为粒度的城市、性别、设备型号、系统版本等多个维度的数据。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221245A1-13.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	查询后可获得小程序在当天各维度下的访问数据分布，运营者可导出数据到Excel，做更详尽的图表展示</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221242911-14.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	导出数据后，我们分析发现1080屏幕宽度的手机访问该按钮的比例最高，占到62%，不考虑机型数量的情况下，我们可以猜想：是否按钮设置太小，小屏幕手机很难点击到呢？</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221242404-15.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	更好玩的，我们可以结合该页面的访问数量，制作页面按钮的热力图！</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221241641-16.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	（此图仅为示例，大家有兴趣可使用headmap.js开源插件自行制作）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	漏斗分析</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除了对单个按键、页面的分析外，对于电商类小程序，大家或许更关注商品的漏斗数据，即从浏览到完成购买的整个流程，用户的流失情况。通过分析各个环节的用户数量，可将导致用户未完成购买的原因定位到具体的环节。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	漏斗分析的关键在于环节的串联，即将前面分析的各个事件串联起来。由于没有电商类小程序后台权限，下面将用小程序的官方示例做讲解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	首选需要创建一个漏斗分析，分析的对象为上文提到的事件。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	以电商为例，为要分析的商品各购买环节创建分析事件（比如商品页数据监控、加入购物车按钮数据监控、支付页数据监控三个事件）。在漏斗分析中依次选择三个事件。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/122124E95-17.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此环节可选择分析的维度，默认则收集全部维度数据（性别、城市、机型等）。创建完成后由管理员或开发者测试漏斗（也可以不测试直接发布），发布后系统即开始对购买环节的三个事件数据做收集。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221243S8-18.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图为官方文档中的数据，整个环节流失率在50%以下，可以说流程很顺滑了。各环节之间流失率等比下降，没有突增和突降，说明各环节之间没有产品设计营方面的问题。</div>\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('46', '10', '<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	数据分析是要给相对比较专业的事情，很多时候因公司、团队限制，我们都采用第三方系统来进行数据分析。但有些时候，有可能系统自带的数据分析功能就已经很强大，只是我们没有发现而已。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img initial loaded\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1-1P40Q22102527.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: 0px 0px; animation: none; width: 795px; height: 413px;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	你可能做了一个小程序，也做了很多推广，然后查看了后台的一些数据：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有本地也有外地；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有男粉丝也有女粉丝；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有青年才俊，也有中年大叔；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有iPhone也有安卓；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的页面访问人数比较多，有的页面访问人数比较少；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的停留了很久，有的点开就关闭了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有人访问一次再也没来过，有人进行了多次访问；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有人通过好友的分享进入，有人通过扫描二维码进入，有人主动在搜索框进行了搜索，有人在历史列表频繁进入，甚至有人把小程序置顶在聊天页面；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	有的按钮被点击多次，有的按钮却少有人问津（这个看不见，需要预先设定自定义分析字段，后面会讲）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	那么，每个数据代表了什么？有什么指导意义？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	今天我们就起底小程序的数据分析功能，分析那些躺在我们后台的数据，如何支撑我们的运营推广和功能优化。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	毕竟在做的各位都是高端运营，依次介绍每一个数据指标的意义并没有什么意义。所以我将从实际需求出发，逐一分析各个指标以及它们相互组合所展示的价值。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q1：花了这么多精力做宣传，效果到底怎么样？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	最直观的指标莫过于访问数量。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	点击&ldquo;数据分析&mdash;访问分析&rdquo;可以查看&ldquo;最近7天&rdquo;、&ldquo;最近30天&rdquo;以及自定义时间段的小程序访问情况。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221353920-1.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	从数据看，该小程序在11月24日出现一次峰值，本月20、21日预计将出现第二次峰值。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	假设我们在11月24日做了一次推广，那如何确定此次推广效果如何呢？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问分析部分还有另外一个功能：按时间对比。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	选择11月1-24日的访问次数，与11月24日到今天的访问次数做对比</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221356302-2.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	绿色为活动之后的曲线，蓝色为之前的曲线。对比两张图可以看出，活动之后的曲线大部分时候是高于活动之前的。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分功能中，&ldquo;打开次数&rdquo;只是其中一个维度，还有访问次数、访问人数、新用户数、人均停留时长等多个指标，各指标的意义可点击改图标右上角的问号了解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q2：用户从哪里来？到哪里去？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上一个问题解决了用户有没有增长的问题，接下来我们需要思考：用户确实增长了，但他们是因为我的推广而来么？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	你可能发了一些小程序码，也可能是分享到了很多群，或者在大V的公众号中做了露出。假如流量暴增，除了高兴，我们还应该知道，以上的推广方法，哪一种是最好的。下面就用到&ldquo;来源分析&rdquo;这个功能。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	前段时间很多文章给出了小程序目前的入口，总结的过程似乎都&ldquo;熬长了黑夜搔短了白头&rdquo;，但其实，小程序早已把所有的入口都告诉我们了：</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221352591-3.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	以上入口是小程序已经写在数据分析功能内的，运营者可以通过选择查看来自各个入口的用户数量</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221351P5-4.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图是该小程序的近30天的用户来源分布。通过此图可以看出该小程序的用户忠诚度很高，历史列表的访问次数排在第一位；来源第二的为模板消息，我们可以认为唤醒对于小程序的二次访问非常有效；其他依次为会话（聊天界面中）、其他小程序返回（该小程序做了优秀小程序推荐，用户可通过该小程序直接进入其他小程序）等。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	如果需要精细化分析，该模块还提供了每一个来源的单独分析，可查看各时间段的来源变化趋势。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221353592-5.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分功能支持数据下载，运营者可以分别下载各个入口的小程序数据，合并在Excel中做每天的数据对比。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/122135K30-6.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	分析每个入口的流量变化趋势可以发现历史列表较稳定，模板消息在上月低有一次峰值，会话则波动较明显（毕竟是用户主动行为，不可控是正常的）。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除了上面分析的各个入口外，大家还可以根据自己的运营方案做公众号主页、公众号文章、搜索甚至聊天界面置顶等多个入口的观察分析，此处不一一展开。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	解决了用户从哪里来，我们还要研究用户到哪里去的问题。如果只关注流量，不考虑留存，肯定不是长久之计。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	关于&ldquo;到哪里去&rdquo;，我们可以使用访问分析的&ldquo;访问时长&rdquo;、&ldquo;访问深度&rdquo;和&ldquo;访问页面&rdquo;三个指标来考察。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问时长：代表了用户对你小程序的喜爱程度，停留时间越长，表示你的小程序对用户得吸引力越大（想到了罗胖的国民总时间这个概念）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问时长有两个指标：人均时长和次均时长。两者意义差别不大，前者代表了小程序对每个人的吸引力，后者代表了小程序对每一次访问的吸引力。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221353P0-7.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除此以外，我们还可以查看访问时长的人数分布来查看小程序的整体吸引力情况</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221353556-8.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图可以看出该小程序有明显的人群特色：以20s为分水岭，上下各出现阶梯式下降。我们可以猜测，20s以上的用户为重度忠诚用户，此类用户已停留50-100s为主；20s以下为&ldquo;观光客&rdquo;用户，停留20s最长，以此递减。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	我们可以以此猜测，一个&ldquo;观光客&rdquo;用户在完成20s的浏览后不能继续发现小程序的价值则离开，重度忠诚用户则直达兴趣点，停留超过50s。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	小程序的设计者可以尝试找到这两类用户，找到从20s突破到50s的点。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	新增留存：表征了用户访问小程序以后的再次访问的概率。这是大家使用最多的一个图，这个指标比停留时长更能表示小程序对用户的吸引力。这个指标的提出，给运营者带来了更大压力：活动当日流量很高，但7日后留存很低的话，活动似乎不应该称之为成功&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分包含两个分指标：新增留存和活跃留存。考察活动效果，一般以新增留存为KPI；考察用户粘性，则可选择活跃留存。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221352603-9.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	正常情况下，活跃留存会高于新增留存。给老板看，你懂得&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问页面：是指小程序各个页面的访问人数。这个指标中给出的数据包含的信息量非常大，对小程序设计的指导意义也很强，建议大家仔细阅读。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/122135L47-10.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此部分给出了每个页面的访问人数、访问次数、次均时长、入口页次数、退出页次数、退出率、分享次数、收藏次数。我们重点讲次均时长、入口页次数和退出页次数。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	次均时长：用户每次访问该页面停留的时长。如果该页面停留时长远高出其他页面，那可能有两种情况：这个页面内容多很有趣；这个页面很难搞懂。所以时间长并不代表一定是好的。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	入口页次数：该页面作为用户进入小程序页面的次数。如果该页面的入口页次数高于小程序首页的次数，那你可能要考虑一下是不是要优化一下小程序的页面规划了。一般情况下，如果该指标与&ldquo;分享次数&rdquo;和&ldquo;收藏次数&rdquo;的变化幅度相同，则说明该页面对用户有足够的价值。但如果变化幅度不同，你就要考虑，是不是有人悄悄把这个页面插入到他的公众号文章里了（醒一醒&hellip;&hellip;）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	退出页次数：用户在此页面退出小程序的次数。这个指标的意义大家想必已经很清楚了，用户在此页面退出了你的小程序，要么该页为小程序功能的结果页，要么在这个页面用户厌烦了你的小程序。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	访问深度：与访问时长相同，访问深度也有一个summary，该指标同样表征了用户对小程序的探索分布。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221351408-11.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图我们可以看出，用户主要探索1个页面后退出，明显的&ldquo;观光客&rdquo;特质。有趣的是有不少的用户会持续探索6-10个页面，设计者同样可找出各部分用户做访谈，找到退出或继续探索的原因，继而优化小程序的设计。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q3：用户是谁？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	前面两个问题都是从小程序出发去分析用户的行为，这个问题我们则从用户出发。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	数据分析中的用户画像功能可以帮我们深入了解我们的用户。该功能提供了性别、年龄、地域和终端机型四个基本维度。作为资深运营，各位对他们的熟悉程度已经不需要我再做过多讲解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	比如，一个母婴类的小程序如果用户年龄段集中在18-24岁，那你肯定知道推广出问题了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	比如，一个本地生活服务类小程序如果用户地域分布集中在外省，那你肯定也知道推广出问题了；</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	再比如，一个果粉类小程序，如果你的用户安卓机型高于iPhone，那你肯定得想想，是不是可以接一波苹果的广告了（醒一醒！）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	Q4：这个按钮有用么？这个页面男粉丝访问多还是女粉丝访问多？这个商品购买漏斗是什么样的？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	细节决定成败，高端运营绝不会拘泥于基本的数据分析。概况数据只能了解一个基本面，而深度的优化需要了解每一个按钮的点击概率、了解每一个页面的用户类型分布、了解每一件商品从浏览到购买整个环节的流逝情况&hellip;&hellip;</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	这就需要祭出小程序数据分析的神器&mdash;&mdash;自定义分析。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	自定义分析的文档是这样介绍自己的：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	自定义分析支持灵活多维和近实时的用户行为分析，可以通过自定义上报，对用户在小程序内的行为做精细化跟踪，满足页面访问等标准统计以外的个性化分析需求。例如，电商类小程序通过配置自定义上报，收集数据，可以完成如下分析：</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	购买商品的人，各</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	省份、城市、年龄、性别</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	的分布如何？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	不同用户群购买的商品数量、商品价格有什么差别</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	用户访问商品页、查看商品详情、查看评论、下单、支付、完成购买，</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	逐步的转化率</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	如何？不同</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	用户群的转化是否有差异</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	今天参与线上活动的用户，各个时段</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	（小时级）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	的活跃度如何？</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	简单说，自定义分析就是可以针对需求，单独监控小程序内的每一个页面和元素，分别并给出不同用户的访问数据。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	事件分析</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	下图为我为守望轩小程序设置的banner轮播图、搜索框和导航栏三个元素的实时监控自定义分析事件</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221353528-12.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	可以分析每一个事件指定时间内以小时为粒度的城市、性别、设备型号、系统版本等多个维度的数据。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/122135E35-13.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	查询后可获得小程序在当天各维度下的访问数据分布，运营者可导出数据到Excel，做更详尽的图表展示</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/12213542J-14.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	导出数据后，我们分析发现1080屏幕宽度的手机访问该按钮的比例最高，占到62%，不考虑机型数量的情况下，我们可以猜想：是否按钮设置太小，小屏幕手机很难点击到呢？</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221356058-15.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	更好玩的，我们可以结合该页面的访问数量，制作页面按钮的热力图！</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221352052-16.jpg\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	（此图仅为示例，大家有兴趣可使用headmap.js开源插件自行制作）</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	漏斗分析</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	除了对单个按键、页面的分析外，对于电商类小程序，大家或许更关注商品的漏斗数据，即从浏览到完成购买的整个流程，用户的流失情况。通过分析各个环节的用户数量，可将导致用户未完成购买的原因定位到具体的环节。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	漏斗分析的关键在于环节的串联，即将前面分析的各个事件串联起来。由于没有电商类小程序后台权限，下面将用小程序的官方示例做讲解。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	首选需要创建一个漏斗分析，分析的对象为上文提到的事件。</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	以电商为例，为要分析的商品各购买环节创建分析事件（比如商品页数据监控、加入购物车按钮数据监控、支付页数据监控三个事件）。在漏斗分析中依次选择三个事件。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/1221351A5-17.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	此环节可选择分析的维度，默认则收集全部维度数据（性别、城市、机型等）。创建完成后由管理员或开发者测试漏斗（也可以不测试直接发布），发布后系统即开始对购买环节的三个事件数据做收集。</div>\r\n<div class=\"pic\" style=\"margin: 32px 0px 0px; padding: 0px; text-align: center; color: rgb(116, 116, 116); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px;\">\r\n	<img alt=\"\" class=\"img loading\" data-was-processed=\"true\" src=\"/uploads/allimg/180408/12213562M-18.png\" style=\"border: 0px; padding: 0px; max-width: 100%; border-radius: 3px; min-width: 100px; min-height: 102px; background: url(&quot;../img/loading.png&quot;) no-repeat; animation: loading 1s step-end infinite;\" />\r\n	<div class=\"description\" style=\"margin: 12px 0px 0px; padding: 0px; color: rgb(172, 172, 172); font-size: 0.6rem;\">\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"paragraph\" style=\"margin: 40px 0px 0px; padding: 0px; text-indent: 1.6rem; font-size: 0.8rem; color: rgb(67, 67, 67); line-height: 32px; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\">\r\n	上图为官方文档中的数据，整个环节流失率在50%以下，可以说流程很顺滑了。各环节之间流失率等比下降，没有突增和突降，说明各环节之间没有产品设计营方面的问题。</div>\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('47', '8', '<div>\r\n	<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52126328.jpg\" style=\"width: 1920px; height: 528px; float: left;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52135110.jpg\" style=\"width: 1920px; height: 1280px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52144D0.jpg\" style=\"width: 1920px; height: 1751px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52152H6.jpg\" style=\"width: 1920px; height: 1536px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q522001C.jpg\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52226462.jpg\" style=\"width: 1920px; height: 2152px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52242261.jpg\" style=\"width: 1920px; height: 1832px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q5230LU.jpg\" style=\"width: 1920px; height: 2143px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52322N7.jpg\" style=\"width: 1920px; height: 964px;\" /></div>\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('48', '8', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52F3942.jpg\" style=\"width: 810px; height: 759px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52GR31.jpg\" style=\"width: 810px; height: 758px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52HbH.jpg\" style=\"width: 810px; height: 759px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52J0514.jpg\" style=\"width: 810px; height: 759px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52K1913.jpg\" style=\"width: 810px; height: 758px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52P0c2.jpg\" style=\"width: 810px; height: 759px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52PS56.jpg\" style=\"width: 810px; height: 758px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q52Q5352.jpg\" style=\"width: 810px; height: 537px;\" /></div>\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('49', '8', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60149438.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60156104.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60203638.jpg\" style=\"width: 1100px; height: 1031px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60213K7.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60220154.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q6022Q54.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60240c6.jpg\" style=\"width: 1100px; height: 1031px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60255631.jpg\" style=\"width: 1100px; height: 1030px;\" /><img alt=\"\" src=\"/uploads/allimg/180408/1-1P40Q60304P7.jpg\" style=\"width: 1100px; height: 714px;\" /></div>\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('50', '5', '大大大', '', '', '59.63.206.34', '', '/uploads/180408/1-1P40QF143518.jpg', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('51', '12', '鲜花', '', '', '180.175.211.7', '', '', '/uploads/180630/1-1P63016145R93.jpg');
INSERT INTO `chuanshou_addonarticle` VALUES ('52', '12', '餐饮', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('53', '12', '水果', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('54', '12', '官网', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('55', '12', '足浴', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('56', '12', '企业', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('57', '12', '水果生鲜', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('58', '12', '生鲜水果', '', '', '58.39.101.84', '', '', '{dede:img text=\'\' width=\'259\' height=\'252\'} /uploads/180409/1-1P40913315L26.png {/dede:img}');
INSERT INTO `chuanshou_addonarticle` VALUES ('59', '12', '餐饮', '', '', '58.39.101.84', '', '', '{dede:img text=\'\' width=\'430\' height=\'430\'} /uploads/180409/1-1P40913543DJ.jpg {/dede:img}');
INSERT INTO `chuanshou_addonarticle` VALUES ('60', '12', '上海松江小程序开发公司', '', '', '58.39.101.84', '', '', '{dede:img text=\'\' width=\'258\' height=\'258\'} /uploads/180409/1-1P40914003UP.jpg {/dede:img}');
INSERT INTO `chuanshou_addonarticle` VALUES ('61', '12', '电商小程序，上海松江小程序开发，上海松江小程序公司', '', '', '180.175.211.7', '', '', '/uploads/180626/1-1P6260Z21OK.jpg');
INSERT INTO `chuanshou_addonarticle` VALUES ('62', '12', '上海小程序开发，松江小程序开发', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('63', '9', '<ol class=\"exp-conent-orderlist\" style=\"margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none; clear: both; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\">\r\n	<li class=\"exp-content-list list-item-1\" style=\"margin: 20px 0px 0px 17px; padding: 0px 0px 0px 35px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-margin-start: 0px; -webkit-margin-end: 0px; display: block; position: relative; min-height: 31px; border-left: 2px dotted rgb(228, 228, 228);\">\r\n		<div class=\"content-list-text\">\r\n			<p style=\"margin: 0px; padding: 0px; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px;\">\r\n				<span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px;\">小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。</span><br />\r\n				&nbsp;</p>\r\n		</div>\r\n	</li>\r\n</ol>\r\n<div style=\"text-align: start;\">\r\n	<span style=\"text-align: justify;\">1、<font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\">打开微信公众平台 https://mp.weixin.qq.com/，在右上角点击「立即注册」</font></span></div>\r\n<span style=\"text-align: justify;\"><font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\"><span style=\"font-size: 16px;\"><img alt=\"\" src=\"/uploads/allimg/180410/1-1P41016195V29.jpg\" style=\"width: 1376px; height: 528px;\" /></span></font></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-size:20px;\">2、选择第三个，「小程序」的选项</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162032328.jpg\" style=\"width: 848px; height: 482px;\" /></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-size:20px;\">3、填写用户的基本信息，每个邮箱仅能申请一个小程序，填写完成以后会发送一封确认邮件到邮箱。</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162100O5.jpg\" style=\"width: 746px; height: 766px;\" /></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-size:20px;\">4、从邮箱打开确认链接，完善注册信息，目前仅限企业、政府、媒体、其他组织注册，个人暂时不能注册，这里要提醒的是注册完成以后就只能通过300认证的来通过为认证了，所以务必在这一步进行企业认证</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162222463.png\" style=\"width: 713px; height: 423px;\" /></span><br />\r\n<br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-size:20px;\">5、填写完信息即可注册成功，成功后即可跳转到登录成功首页，登录成功后还需要认证企业信息方可使用。</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162451O8.jpg\" style=\"width: 1000px; height: 522px;\" /></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"font-size:20px;\">6、小程序信息完善：填写小程序基本信息，包括名称、头像、介绍及服务范围等。</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162H4394.jpg\" style=\"width: 730px; height: 480px;\" /></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px;\"><span style=\"font-size:20px;\">7、开发小程序：完成小程序开发者绑定、开发信息配置后，开发者可下载开发者工具、参考开发文档进行小程序的开发和调试。</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410162T5228.jpg\" style=\"width: 730px; height: 480px;\" /></span><br />\r\n<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px;\"><span style=\"font-size:20px;\">8、提交审核和发布：完成小程序开发后，提交代码至微信团队审核，审核通过后即可发布</span><br />\r\n<img alt=\"\" src=\"/uploads/allimg/180410/1-1P410163010443.jpg\" style=\"width: 730px; height: 480px;\" /></span><br />\r\n<br />\r\n', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('64', '9', '<ol class=\"exp-conent-orderlist\" style=\"box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; border: 0px none; vertical-align: baseline; list-style: none; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); clear: both; text-align: justify;\">\r\n	<li class=\"exp-content-list list-item-1\" style=\"box-sizing: border-box; list-style: none outside none; margin: 20px 0px 0px 17px; padding: 0px 0px 0px 35px; border-width: 1px 1px 1px 2px; border-style: solid solid solid dotted; border-color: rgb(221, 221, 221) rgb(221, 221, 221) rgb(221, 221, 221) rgb(228, 228, 228); border-image: initial; vertical-align: baseline; font-family: 微软雅黑; font-size: 12px; font-style: inherit; font-weight: inherit; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px; -webkit-margin-start: 0px; -webkit-margin-end: 0px; display: block; position: relative; min-height: 31px;\">\r\n		<div class=\"content-list-text\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-style: inherit; font-weight: inherit;\">\r\n			<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-style: inherit; font-weight: inherit; list-style-type: none; -webkit-padding-start: 0px; -webkit-margin-before: 0px; -webkit-margin-after: 0px;\">\r\n				<span style=\"font-size:20px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft YaHei&quot;; font-style: inherit; font-weight: inherit;\">小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。</span></span><br style=\"box-sizing: border-box;\" />\r\n				&nbsp;</p>\r\n		</div>\r\n	</li>\r\n</ol>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; color: rgb(51, 51, 51);\">\r\n	<span style=\"font-size:20px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-style: inherit; font-weight: inherit; text-align: justify;\">1、<font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\" style=\"box-sizing: border-box;\">打开微信公众平台 https://mp.weixin.qq.com/，在右上角点击「立即注册」</font></span></span></div>\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; color: rgb(51, 51, 51); text-align: justify;\"><font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 16px; font-style: inherit; font-weight: inherit;\"><img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P41016195V29.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-style: inherit; font-weight: inherit; width: 1376px; transition: all 0.3s ease; height: 528px;\" /></span></font></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">2、选择第三个，「小程序」的选项</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162032328.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 848px; transition: all 0.3s ease; height: 482px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">3、填写用户的基本信息，每个邮箱仅能申请一个小程序，填写完成以后会发送一封确认邮件到邮箱。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162100O5.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 746px; transition: all 0.3s ease; height: 766px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">4、从邮箱打开确认链接，完善注册信息，目前仅限企业、政府、媒体、其他组织注册，个人暂时不能注册，这里要提醒的是注册完成以后就只能通过300认证的来通过为认证了，所以务必在这一步进行企业认证</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162222463.png\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 713px; transition: all 0.3s ease; height: 423px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">5、填写完信息即可注册成功，成功后即可跳转到登录成功首页，登录成功后还需要认证企业信息方可使用。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162451O8.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 1000px; transition: all 0.3s ease; height: 522px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">6、小程序信息完善：填写小程序基本信息，包括名称、头像、介绍及服务范围等。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162H4394.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: arial, 宋体, sans-serif; font-size: 14px; color: rgb(51, 51, 51);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">7、开发小程序：完成小程序开发者绑定、开发信息配置后，开发者可下载开发者工具、参考开发文档进行小程序的开发和调试。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162T5228.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: arial, 宋体, sans-serif; font-size: 14px; color: rgb(51, 51, 51);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">8、提交审核和发布：完成小程序开发后，提交代码至微信团队审核，审核通过后即可发布</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410163010443.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span>', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('65', '9', '<div style=\"text-align: justify;\">\r\n	<span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 20px; font-style: inherit; font-weight: inherit; color: rgb(51, 51, 51);\">小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。</span></div>\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; color: rgb(51, 51, 51);\">\r\n	<br />\r\n	<span style=\"font-size: 20px; font-style: inherit; font-weight: inherit; text-align: justify; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft YaHei&quot;;\"><span style=\"font-family: 微软雅黑;\">1、</span><font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\" style=\"box-sizing: border-box;\">打开微信公众平台 https://mp.weixin.qq.com/，在右上角点击「立即注册」</font></span><br />\r\n	&nbsp;</div>\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; color: rgb(51, 51, 51); text-align: justify;\"><font color=\"#333333\" face=\"Microsoft Yahei, 微软雅黑, arial, 宋体, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 16px; font-style: inherit; font-weight: inherit;\"><img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P41016195V29.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-style: inherit; font-weight: inherit; width: 1376px; transition: all 0.3s ease; height: 528px;\" /></span></font></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">2、选择第三个，「小程序」的选项</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162032328.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 848px; transition: all 0.3s ease; height: 482px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">3、填写用户的基本信息，每个邮箱仅能申请一个小程序，填写完成以后会发送一封确认邮件到邮箱。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162100O5.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 746px; transition: all 0.3s ease; height: 766px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">4、从邮箱打开确认链接，完善注册信息，目前仅限企业、政府、媒体、其他组织注册，个人暂时不能注册，这里要提醒的是注册完成以后就只能通过300认证的来通过为认证了，所以务必在这一步进行企业认证</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162222463.png\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 713px; transition: all 0.3s ease; height: 423px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">5、填写完信息即可注册成功，成功后即可跳转到登录成功首页，登录成功后还需要认证企业信息方可使用。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162451O8.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 1000px; transition: all 0.3s ease; height: 522px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; font-size: 16px; color: rgb(51, 51, 51); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">6、小程序信息完善：填写小程序基本信息，包括名称、头像、介绍及服务范围等。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162H4394.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: arial, 宋体, sans-serif; font-size: 14px; color: rgb(51, 51, 51);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">7、开发小程序：完成小程序开发者绑定、开发信息配置后，开发者可下载开发者工具、参考开发文档进行小程序的开发和调试。</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410162T5228.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: arial, 宋体, sans-serif; font-size: 14px; color: rgb(51, 51, 51);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; font-family: 微软雅黑; font-size: 20px; font-style: inherit; font-weight: inherit;\">8、提交审核和发布：完成小程序开发后，提交代码至微信团队审核，审核通过后即可发布</span><br style=\"box-sizing: border-box;\" />\r\n<img alt=\"\" src=\"http://www.chuanshoucs.cn/uploads/allimg/180410/1-1P410163010443.jpg\" style=\"box-sizing: border-box; border: 0px none; vertical-align: baseline; margin: 0px; padding: 0px; font-size: 12px; font-family: 微软雅黑; font-style: inherit; font-weight: inherit; width: 730px; transition: all 0.3s ease; height: 480px;\" /></span>', '', '', '58.39.101.84', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('66', '9', '松江小程序开发、松江小程序制作、松江小程序制作公司！<br />\r\n&nbsp;<br />\r\n2017年小程序的出现完美解决了原生应用与Wep应用的短板,以&ldquo;无需安装、用完即走&rdquo;的轻便形态,快速解决用户的实际需求,成为移动互联网下半场的核心领导者。<br />\r\n&nbsp;<br />\r\n2018年初，小程序连连传喜报：小程序小游戏在线人数达2800万人/小时、耐克以2000万入驻&ldquo;跳一跳&rdquo;广告、小程序流量主广告内侧、小程序上线插件功能...<br />\r\n&nbsp;<br />\r\n小程序作为移动互联网下半场的核心，其发展前景究竟如何？今天我们就来稍稍探讨一下：<br />\r\n小程序的发展现状<br />\r\n&nbsp;<br />\r\n从去年3月开始，小程序不断进行迭代更新,发布能力共计100多项,开放入口50多种。去年12月，&ldquo;跳一跳&rdquo;的上线让小程序用户数出现激增，12月累计用户达4亿，而到今年Q1阶段，小程序累计用户预计超5亿。<br />\r\n&nbsp;<br />\r\n在这一年多的时间里,小程序的使用场景不断增多,用户使用小程序的时长也逐月增多,截止去年12月,微信小程序的单次使用时长增至9.8分钟,约占微信用户日均使用时长的五分之一。<br />\r\n&nbsp;<br />\r\n前景可观的行业<br />\r\n&nbsp;<br />\r\n随着零售行业的转型与升级,智慧零售成为行业新方向。小程序的出现不仅引爆了新零售，也让智慧零售小程序的流量处于不断增长的态势。智慧零售类小程序达成的最大成就在于：消除了实体商业与纯电商之间的壁垒。<br />\r\n&nbsp;<br />\r\n小程序在成本及用户好感体验上都具有绝对的优势，同时智慧零售触达方式十分便捷，使得用户在智慧零售上的付费意愿越来越高。<br />\r\n&nbsp;<br />\r\n电商类小程序在整个小程序市场中最具代表性，依托微信的大流量池进行无限流量裂变，利用拼团、秒杀、立减金等优惠手段提升用户留存率，可以说，小程序的很多优势都被电商转化为了自身的优势。各类电商小程序的月平均流量在2017年Q4期间迎来集中爆发阶段,其中时尚类小程序环比增长达到323%,购买率接近6成。<br />\r\n&nbsp;<br />\r\n微信社交链的影响和小程序功能的不断强大，促销方式不断增多，电商小程序在2018年将继续迎来新的爆发点。<br />\r\n&nbsp;<br />\r\n从附近的小程序开始，微信利用小程序连接线上线下的决心越来越坚定，线下餐饮行业成为了享受这个决心的最大受益者！随着门店小程序、附近的小程序、会员体系等功能释放后,餐饮类小程序有效的提升了线下餐饮门店的服务效率、质量以及用户的用餐体验。<br />\r\n&nbsp;<br />\r\n餐饮类小程序的月平均流量和订单量随之明显上升,截止到去年12月，月平均订单量增长环比高达55%。餐饮类小程序通过使用不同的营销功能组件更容易搭建完善的会员营销体系。会员卡、优惠券等营销组件,有效增加了新客留存率,刺激顾客产生持续消费行为。<br />\r\n&nbsp;<br />\r\n在小程序问世的这一年中，工具类小程序的成绩最为突出。此前，小程序由于受到大小的限制，工具类小程序的能力都比较单一且不完善，实在没办法的，还需要将用户引流到对应的APP才能进行用户转化和变现。<br />\r\n&nbsp;<br />\r\n但是如今，&ldquo;分包加载&rdquo;功能上线，小程序再也不用受限于大小，工具类小程序可以尽情的发挥实力，将用户的问题解决的高效而完美，这将使工具类小程序走向巅峰。<br />\r\n&nbsp;<br />\r\n春节期间，小程序小游戏同时在线人数高达 2800 万人/小时，前不久耐克花了2000万在&ldquo;跳一跳&rdquo;中制作了时限仅5天的盒子（广告）。<br />\r\n&nbsp;<br />\r\n游戏类本身就是一个容易拉新又容易变现的行业，小程序的轻便将游戏进行重新定义，让用户在碎片化的时间里就能享受游戏的乐趣。游戏类小程序的发展空间相比于前面几个行业都要大得多，现在微信小游戏的数量和种类都比较少，竞争对手少，开发空间大，2018年必将是小程序小游戏爆发的一年。<br />\r\n&nbsp;<br />\r\n通过一整年的整理和升级，作为移动互联网下半场的核心，小程序将通过在智慧零售、电商、餐饮等行业大量的聚集流量而迎接它的爆发！', '', '', '222.72.70.177', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('67', '8', '<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">松江小程序开发、松江小程序制作、松江小程序制作公司！</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">2017年小程序的出现完美解决了原生应用与Wep应用的短板,以&ldquo;无需安装、用完即走&rdquo;的轻便形态,快速解决用户的实际需求,成为移动互联网下半场的核心领导者。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">2018年初，小程序连连传喜报：小程序小游戏在线人数达2800万人/小时、耐克以2000万入驻&ldquo;跳一跳&rdquo;广告、小程序流量主广告内侧、小程序上线插件功能...</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">小程序作为移动互联网下半场的核心，其发展前景究竟如何？今天我们就来稍稍探讨一下：</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">小程序的发展现状</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">从去年3月开始，小程序不断进行迭代更新,发布能力共计100多项,开放入口50多种。去年12月，&ldquo;跳一跳&rdquo;的上线让小程序用户数出现激增，12月累计用户达4亿，而到今年Q1阶段，小程序累计用户预计超5亿。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">在这一年多的时间里,小程序的使用场景不断增多,用户使用小程序的时长也逐月增多,截止去年12月,微信小程序的单次使用时长增至9.8分钟,约占微信用户日均使用时长的五分之一。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">前景可观的行业</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">随着零售行业的转型与升级,智慧零售成为行业新方向。小程序的出现不仅引爆了新零售，也让智慧零售小程序的流量处于不断增长的态势。智慧零售类小程序达成的最大成就在于：消除了实体商业与纯电商之间的壁垒。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">小程序在成本及用户好感体验上都具有绝对的优势，同时智慧零售触达方式十分便捷，使得用户在智慧零售上的付费意愿越来越高。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">电商类小程序在整个小程序市场中最具代表性，依托微信的大流量池进行无限流量裂变，利用拼团、秒杀、立减金等优惠手段提升用户留存率，可以说，小程序的很多优势都被电商转化为了自身的优势。各类电商小程序的月平均流量在2017年Q4期间迎来集中爆发阶段,其中时尚类小程序环比增长达到323%,购买率接近6成。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">微信社交链的影响和小程序功能的不断强大，促销方式不断增多，电商小程序在2018年将继续迎来新的爆发点。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">从附近的小程序开始，微信利用小程序连接线上线下的决心越来越坚定，线下餐饮行业成为了享受这个决心的最大受益者！随着门店小程序、附近的小程序、会员体系等功能释放后,餐饮类小程序有效的提升了线下餐饮门店的服务效率、质量以及用户的用餐体验。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">餐饮类小程序的月平均流量和订单量随之明显上升,截止到去年12月，月平均订单量增长环比高达55%。餐饮类小程序通过使用不同的营销功能组件更容易搭建完善的会员营销体系。会员卡、优惠券等营销组件,有效增加了新客留存率,刺激顾客产生持续消费行为。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">在小程序问世的这一年中，工具类小程序的成绩最为突出。此前，小程序由于受到大小的限制，工具类小程序的能力都比较单一且不完善，实在没办法的，还需要将用户引流到对应的APP才能进行用户转化和变现。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">但是如今，&ldquo;分包加载&rdquo;功能上线，小程序再也不用受限于大小，工具类小程序可以尽情的发挥实力，将用户的问题解决的高效而完美，这将使工具类小程序走向巅峰。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">春节期间，小程序小游戏同时在线人数高达 2800 万人/小时，前不久耐克花了2000万在&ldquo;跳一跳&rdquo;中制作了时限仅5天的盒子（广告）。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">游戏类本身就是一个容易拉新又容易变现的行业，小程序的轻便将游戏进行重新定义，让用户在碎片化的时间里就能享受游戏的乐趣。游戏类小程序的发展空间相比于前面几个行业都要大得多，现在微信小游戏的数量和种类都比较少，竞争对手少，开发空间大，2018年必将是小程序小游戏爆发的一年。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\">通过一整年的整理和升级，作为移动互联网下半场的核心，小程序将通过在智慧零售、电商、餐饮等行业大量的聚集流量而迎接它的爆发！</span>', '', '', '222.72.70.177', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('68', '8', '<span style=\"font-size:16px;\"><span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">松江小程序开发、松江小程序制作、松江小程序制作公司！</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">2017年小程序的出现完美解决了原生应用与Wep应用的短板,以&ldquo;无需安装、用完即走&rdquo;的轻便形态,快速解决用户的实际需求,成为移动互联网下半场的核心领导者。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">2018年初，小程序连连传喜报：小程序小游戏在线人数达2800万人/小时、耐克以2000万入驻&ldquo;跳一跳&rdquo;广告、小程序流量主广告内侧、小程序上线插件功能...</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">小程序作为移动互联网下半场的核心，其发展前景究竟如何？今天我们就来稍稍探讨一下：</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">小程序的发展现状</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">从去年3月开始，小程序不断进行迭代更新,发布能力共计100多项,开放入口50多种。去年12月，&ldquo;跳一跳&rdquo;的上线让小程序用户数出现激增，12月累计用户达4亿，而到今年Q1阶段，小程序累计用户预计超5亿。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">在这一年多的时间里,小程序的使用场景不断增多,用户使用小程序的时长也逐月增多,截止去年12月,微信小程序的单次使用时长增至9.8分钟,约占微信用户日均使用时长的五分之一。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">前景可观的行业</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">随着零售行业的转型与升级,智慧零售成为行业新方向。小程序的出现不仅引爆了新零售，也让智慧零售小程序的流量处于不断增长的态势。智慧零售类小程序达成的最大成就在于：消除了实体商业与纯电商之间的壁垒。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">小程序在成本及用户好感体验上都具有绝对的优势，同时智慧零售触达方式十分便捷，使得用户在智慧零售上的付费意愿越来越高。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">电商类小程序在整个小程序市场中最具代表性，依托微信的大流量池进行无限流量裂变，利用拼团、秒杀、立减金等优惠手段提升用户留存率，可以说，小程序的很多优势都被电商转化为了自身的优势。各类电商小程序的月平均流量在2017年Q4期间迎来集中爆发阶段,其中时尚类小程序环比增长达到323%,购买率接近6成。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">微信社交链的影响和小程序功能的不断强大，促销方式不断增多，电商小程序在2018年将继续迎来新的爆发点。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">从附近的小程序开始，微信利用小程序连接线上线下的决心越来越坚定，线下餐饮行业成为了享受这个决心的最大受益者！随着门店小程序、附近的小程序、会员体系等功能释放后,餐饮类小程序有效的提升了线下餐饮门店的服务效率、质量以及用户的用餐体验。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">餐饮类小程序的月平均流量和订单量随之明显上升,截止到去年12月，月平均订单量增长环比高达55%。餐饮类小程序通过使用不同的营销功能组件更容易搭建完善的会员营销体系。会员卡、优惠券等营销组件,有效增加了新客留存率,刺激顾客产生持续消费行为。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">在小程序问世的这一年中，工具类小程序的成绩最为突出。此前，小程序由于受到大小的限制，工具类小程序的能力都比较单一且不完善，实在没办法的，还需要将用户引流到对应的APP才能进行用户转化和变现。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">但是如今，&ldquo;分包加载&rdquo;功能上线，小程序再也不用受限于大小，工具类小程序可以尽情的发挥实力，将用户的问题解决的高效而完美，这将使工具类小程序走向巅峰。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">春节期间，小程序小游戏同时在线人数高达 2800 万人/小时，前不久耐克花了2000万在&ldquo;跳一跳&rdquo;中制作了时限仅5天的盒子（广告）。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">游戏类本身就是一个容易拉新又容易变现的行业，小程序的轻便将游戏进行重新定义，让用户在碎片化的时间里就能享受游戏的乐趣。游戏类小程序的发展空间相比于前面几个行业都要大得多，现在微信小游戏的数量和种类都比较少，竞争对手少，开发空间大，2018年必将是小程序小游戏爆发的一年。</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">&nbsp;</span><br style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: 微软雅黑; font-size: 14px;\" />\r\n<span style=\"color: rgb(64, 64, 64); font-family: 微软雅黑;\">通过一整年的整理和升级，作为移动互联网下半场的核心，小程序将通过在智慧零售、电商、餐饮等行业大量的聚集流量而迎接它的爆发！</span></span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">上海申肃网络科技有限公司-专业小程序开发服务商<br />\r\n<br />\r\n地址： 上海市松江区茸兴路407号创意园2楼A222号<br />\r\n<br />\r\n手机：18017050817<br />\r\n<br />\r\n电话 021-357630970<br />\r\n<br />\r\nQQ : 834941838<br />\r\n<br />\r\n网址：www.chuanshou.cn</span><br />\r\n<br />\r\n', '', '', '114.95.225.206', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('69', '8', '顶顶顶顶顶顶顶顶顶', '', '', '222.72.70.177', '', '', '');
INSERT INTO `chuanshou_addonarticle` VALUES ('70', '9', '<div>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><strong>而此前小程序陆续发布的入口，「造程序」也进行了全面整理，发现小程序的入口数量已达到50个（如有遗漏，欢迎大家补充）。为了方便大家理解，我们把小程序的50个细分入口分为以下七大类：</strong></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ol>\r\n		<li>\r\n			<b>「发现」栏主入口（6个）</b></li>\r\n		<li>\r\n			<b>小程序自身入口（7个）</b></li>\r\n		<li>\r\n			<b>搜索栏（6个）</b></li>\r\n		<li>\r\n			<b>公众号入口（6个）</b></li>\r\n		<li>\r\n			<b>二维码/小程序码入口（10个）</b></li>\r\n		<li>\r\n			<b>微信场景内入口（9个）</b></li>\r\n		<li>\r\n			<b>其他入口（6个）</b></li>\r\n	</ol>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>主入口：微信的「发现」栏作为主入口，也拥有了6个细分入口：</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<span style=\"font-size:14px;\">微信「发现」栏小程序主入口</span></li>\r\n		<li>\r\n			<span style=\"font-size:14px;\">微信「小程序」服务通知</span></li>\r\n		<li>\r\n			<span style=\"font-size:14px;\">微信主页顶部置顶入口</span></li>\r\n		<li>\r\n			<span style=\"font-size:14px;\">Android 系统添加到桌面图标</span></li>\r\n		<li>\r\n			<span style=\"font-size:14px;\">微信「小程序」中「附近的小程序」列表</span></li>\r\n		<li>\r\n			<span style=\"font-size:14px;\">「附近的小程序」列表广告（LBS 推广功能）</span></li>\r\n	</ul>\r\n	<p>\r\n		&nbsp;</p>\r\n	<figure>\r\n		<noscript>&amp;lt;img src=\"/uploads/allimg/180411/1U4516106-0.jpg\" data-caption=\"\" data-size=\"normal\" data-rawwidth=\"640\" data-rawheight=\"899\" class=\"origin_image zh-lightbox-thumb\" width=\"640\" data-original=\"https://pic3.zhimg.com/v2-18e305245b1020639bf0a193105946be_r.jpg\"&amp;gt;</noscript><img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111T625O0.jpg\" style=\"width: 640px; height: 899px;\" /></figure>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>小程序自身入口：在使用小程序的过程中，也会发现小程序的入口也是无处不在，我们将这些较为特别的7个细分入口归为一类。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>前往小程序「体验版」的入口页</strong></li>\r\n		<li>\r\n			<strong>小程序 Profile 页</strong></li>\r\n		<li>\r\n			<strong>带 Share Ticket 的小程序消息卡片</strong></li>\r\n		<li>\r\n			<strong>「体验版」小程序绑定邀请页</strong></li>\r\n		<li>\r\n			<strong>从小程序跳转到另一个小程序</strong></li>\r\n		<li>\r\n			<strong>从另一个小程序返回</strong></li>\r\n		<li>\r\n			<strong>客服消息列表下发的小程序消息卡片</strong></li>\r\n	</ul>\r\n	<p>\r\n		&nbsp;</p>\r\n	<figure>\r\n		<img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111TF4393.jpg\" style=\"width: 640px; height: 1236px;\" /></figure>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>搜索栏：微信搜索栏的小程序入口越来越多，截止目前共有6个。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>微信顶部搜索框</strong></li>\r\n		<li>\r\n			<strong>微信顶部搜索框下「历史小程序」入口</strong></li>\r\n		<li>\r\n			<strong>「发现」tab 小程序主入口下的搜索栏</strong></li>\r\n		<li>\r\n			<strong>「添加好友」搜索框的搜索结果页</strong></li>\r\n		<li>\r\n			<strong>Android 系统「发现」tab 中「搜一搜」</strong></li>\r\n		<li>\r\n			<strong>微信顶部搜索框搜索结果页中「使用过的小程序」列表</strong></li>\r\n	</ul>\r\n	<p>\r\n		&nbsp;</p>\r\n	<figure>\r\n		<noscript>&amp;lt;img src=\"/uploads/allimg/180411/1U4516292-3.jpg\" data-caption=\"\" data-size=\"normal\" data-rawwidth=\"640\" data-rawheight=\"1049\" class=\"origin_image zh-lightbox-thumb\" width=\"640\" data-original=\"https://pic2.zhimg.com/v2-0e01afc952bc01c3a9d2fe7fd9b10208_r.jpg\"&amp;gt;</noscript><img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111TJ0314.jpg\" style=\"width: 640px; height: 1049px;\" /></figure>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>公众号入口：公众号最近与小程序的关联甚是密切，入口与场景也越越来越丰富，目前有6个。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>公众号 Profile页「相关小程序」列表</strong></li>\r\n		<li>\r\n			<strong>公众号自定义菜单</strong></li>\r\n		<li>\r\n			<strong>关联模板消息</strong></li>\r\n		<li>\r\n			<strong>公众号文章</strong></li>\r\n		<li>\r\n			<strong>公众号文章「广告」（含小程序落地页广告）</strong></li>\r\n		<li>\r\n			<strong>公众号会话下发的小程序消息卡片</strong></li>\r\n	</ul>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>二维码/小程序码入口：小程序码与小程序二维码的出现，让小程序的传播与使用场景更加丰富。目前二维码和小程序码的入口有10个。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>扫描二维码</strong></li>\r\n		<li>\r\n			<strong>长按图片识别二维码</strong></li>\r\n		<li>\r\n			<strong>手机相册选取二维码</strong></li>\r\n		<li>\r\n			<strong>扫描一维码</strong></li>\r\n		<li>\r\n			<strong>长按图片识别一维码</strong></li>\r\n		<li>\r\n			<strong>手机相册选取一维码</strong></li>\r\n		<li>\r\n			<strong>扫描小程序码</strong></li>\r\n		<li>\r\n			<strong>长按图片识别小程序码</strong></li>\r\n		<li>\r\n			<strong>手机相册选取小程序码</strong></li>\r\n		<li>\r\n			<strong>二维码收款页面（微信指定小程序）</strong></li>\r\n	</ul>\r\n	<p>\r\n		<img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111TQ4953.jpg\" style=\"width: 720px; height: 1344px;\" /></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>微信场景内入口：小程序的入口无处不在，目前微信场景的入口已有9个。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>好友会话中的「小程序消息卡片」</strong></li>\r\n		<li>\r\n			<strong>群聊会话中的「小程序消息卡片」</strong></li>\r\n		<li>\r\n			<strong>好友会话资料的「聊天小程序」</strong></li>\r\n		<li>\r\n			<strong>群聊会话资料的「聊天小程序」</strong></li>\r\n		<li>\r\n			<strong>微信钱宝「第三方服务」</strong></li>\r\n		<li>\r\n			<strong>微信支付完成页</strong></li>\r\n		<li>\r\n			<strong>支付完成消息</strong></li>\r\n		<li>\r\n			<strong>微信 WI-FI 状态栏</strong></li>\r\n		<li>\r\n			<strong>微信「卡包」会员卡入口</strong></li>\r\n	</ul>\r\n	<figure>\r\n		<p>\r\n			&nbsp;</p>\r\n		<p>\r\n			<img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111TT9423.jpg\" style=\"width: 720px; height: 1459px;\" /></p>\r\n	</figure>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\"><b>其他入口：</b>除了微信里大家熟悉的功能入口，还有一些五花八门的小程序进入方式，充分体现了微信对于小程序使用的场景布局。以下是目前<b>6个比较特别的入口。</b></span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<ul>\r\n		<li>\r\n			<strong>从 App 分享到微信好友会话，自动转换的小程序卡片</strong></li>\r\n		<li>\r\n			<strong>摇电视</strong></li>\r\n		<li>\r\n			<strong>小程序顶部的音乐播放器菜单（音频类小程序点击可跳转，如「小睡眠」）</strong></li>\r\n		<li>\r\n			<strong>QQ 浏览器导航栏</strong></li>\r\n		<li>\r\n			<strong>QQ 浏览器关键词搜索小程序</strong></li>\r\n		<li>\r\n			<strong>iOS 11版本的原生相机可扫描小程序二维码</strong></li>\r\n	</ul>\r\n	<figure>\r\n		<img alt=\"\" src=\"/uploads/allimg/180411/1-1P4111T91cV.jpg\" style=\"width: 640px; height: 951px;\" /></figure>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size:14px;\">根据微信对小程序的重视程度，为了丰富小程序的使用场景以及培养更接地气的用户习惯，肯定会继续开放越来越多的小程序的入口。小程序的未来，是否也将如今日的<b>公众号</b>和<b>微信支付</b>般辉煌？值得期待！</span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">上海申肃网络科技有限公司-专业小程序开发服务商</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">地址：&nbsp;</span><span style=\"font-size: 16px;\">上海市松江区茸兴路407号创意园2楼A222号</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">手机：18017050817</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">电话 021-357630970</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">QQ : 834941838</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\" />\r\n		<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 16px;\">网址：www.chuanshou.cn</span></p>\r\n</div>\r\n<br />\r\n', '', '', '114.95.225.206', '', '', '');

-- ----------------------------
-- Table structure for chuanshou_addonimages
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addonimages`;
CREATE TABLE `chuanshou_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagestyle` smallint(6) NOT NULL DEFAULT '1',
  `maxwidth` smallint(6) NOT NULL DEFAULT '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL DEFAULT '0',
  `col` smallint(6) NOT NULL DEFAULT '0',
  `isrm` smallint(6) NOT NULL DEFAULT '0',
  `ddmaxwidth` smallint(6) NOT NULL DEFAULT '200',
  `pagepicnum` smallint(6) NOT NULL DEFAULT '12',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addonimages
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_addoninfos
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addoninfos`;
CREATE TABLE `chuanshou_addoninfos` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(60) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT ' ',
  `senddate` int(11) NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nativeplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `linkman` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addoninfos
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_addonshop
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addonshop`;
CREATE TABLE `chuanshou_addonshop` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(250) NOT NULL DEFAULT '',
  `units` varchar(250) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  `vocation` char(20) NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addonshop
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_addonsoft
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addonsoft`;
CREATE TABLE `chuanshou_addonsoft` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `softtype` varchar(10) NOT NULL DEFAULT '',
  `accredit` varchar(10) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `softrank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `officialUrl` varchar(30) NOT NULL DEFAULT '',
  `officialDemo` varchar(50) NOT NULL DEFAULT '',
  `softsize` varchar(10) NOT NULL DEFAULT '',
  `softlinks` text,
  `introduce` text,
  `daccess` smallint(5) NOT NULL DEFAULT '0',
  `needmoney` smallint(5) NOT NULL DEFAULT '0',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `softMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addonsoft
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_addonspec
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_addonspec`;
CREATE TABLE `chuanshou_addonspec` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `note` text,
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_addonspec
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_admin
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_admin`;
CREATE TABLE `chuanshou_admin` (
  `id` int(10) unsigned NOT NULL,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` text,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_admin
-- ----------------------------
INSERT INTO `chuanshou_admin` VALUES ('1', '10', 'chuanshou', '8c66c9bacda996da6283', 'admin', '', '', '0', '1530497106', '180.175.211.7');

-- ----------------------------
-- Table structure for chuanshou_admintype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_admintype`;
CREATE TABLE `chuanshou_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_admintype
-- ----------------------------
INSERT INTO `chuanshou_admintype` VALUES ('1', '信息发布员', '1', 't_AccList a_AccNew a_AccList a_MyList a_MyEdit a_MyDel sys_MdPwd sys_Feedback sys_MyUpload plus_留言簿模块 ');
INSERT INTO `chuanshou_admintype` VALUES ('5', '频道管理员', '1', 't_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_站内新闻发布 plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
INSERT INTO `chuanshou_admintype` VALUES ('10', '超级管理员', '1', 'admin_AllowAll ');

-- ----------------------------
-- Table structure for chuanshou_advancedsearch
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_advancedsearch`;
CREATE TABLE `chuanshou_advancedsearch` (
  `mid` int(11) NOT NULL,
  `maintable` varchar(256) NOT NULL DEFAULT '',
  `mainfields` text,
  `addontable` varchar(256) DEFAULT NULL,
  `addonfields` text,
  `forms` text,
  `template` varchar(256) NOT NULL DEFAULT '',
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_advancedsearch
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_arcatt
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arcatt`;
CREATE TABLE `chuanshou_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arcatt
-- ----------------------------
INSERT INTO `chuanshou_arcatt` VALUES ('5', 's', '滚动');
INSERT INTO `chuanshou_arcatt` VALUES ('1', 'h', '头条');
INSERT INTO `chuanshou_arcatt` VALUES ('3', 'f', '幻灯');
INSERT INTO `chuanshou_arcatt` VALUES ('2', 'c', '推荐');
INSERT INTO `chuanshou_arcatt` VALUES ('7', 'p', '图片');
INSERT INTO `chuanshou_arcatt` VALUES ('8', 'j', '跳转');
INSERT INTO `chuanshou_arcatt` VALUES ('4', 'a', '特荐');
INSERT INTO `chuanshou_arcatt` VALUES ('6', 'b', '加粗');

-- ----------------------------
-- Table structure for chuanshou_arccache
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arccache`;
CREATE TABLE `chuanshou_arccache` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `cachedata` mediumtext,
  PRIMARY KEY (`md5hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arccache
-- ----------------------------
INSERT INTO `chuanshou_arccache` VALUES ('b422ac46de038510fd1648570ee4e51c', '1530170320', '0');
INSERT INTO `chuanshou_arccache` VALUES ('a96ba35cf45c519d5235e50f773ab102', '1530170320', '0');
INSERT INTO `chuanshou_arccache` VALUES ('4579e23453940e0fcf9c9019ee947e6f', '1530170320', '0');
INSERT INTO `chuanshou_arccache` VALUES ('17af1deff9fb85f707437caa2873024e', '1530170320', '0');
INSERT INTO `chuanshou_arccache` VALUES ('2a74cab3eaae0472db48de6ebbc78118', '1530170320', '0');
INSERT INTO `chuanshou_arccache` VALUES ('b09f044035e73d3b2369a3a166551218', '1530170321', '0');
INSERT INTO `chuanshou_arccache` VALUES ('b717fe0388419c77eef8821702079b96', '1530497492', '34,29,1');
INSERT INTO `chuanshou_arccache` VALUES ('d90070859882f77d278135dbccf08cd4', '1530170346', '0');
INSERT INTO `chuanshou_arccache` VALUES ('f9fc18faf59660cfd0fdd38e7fa3dcc2', '1530170346', '0');
INSERT INTO `chuanshou_arccache` VALUES ('4f0781f36c29174644aa07f20d6494aa', '1530170346', '0');
INSERT INTO `chuanshou_arccache` VALUES ('699d80800560ce3ed6a40245f9b86da0', '1530170347', '0');
INSERT INTO `chuanshou_arccache` VALUES ('e921851dc389ab93c9b53fc27748fcf5', '1530170347', '0');
INSERT INTO `chuanshou_arccache` VALUES ('25febcaae855ca7f1b80bb3a699b1025', '1530170347', '0');
INSERT INTO `chuanshou_arccache` VALUES ('387d1839870c5a7fcdc1b39c7f00fce9', '1530268685', '0');
INSERT INTO `chuanshou_arccache` VALUES ('b77570553acab63958708d66bbe7e783', '1530268685', '0');
INSERT INTO `chuanshou_arccache` VALUES ('5414a66b2b7c367572cba50259bb00e9', '1530268686', '0');
INSERT INTO `chuanshou_arccache` VALUES ('95cd6f71bec958cb8bf00b72a1e1abd9', '1530268686', '0');
INSERT INTO `chuanshou_arccache` VALUES ('c4f76e2fb6b61e258dfc164ae1e48aa7', '1530268686', '0');
INSERT INTO `chuanshou_arccache` VALUES ('e9509b72eb7eb5e63775063988b327e1', '1530268686', '0');
INSERT INTO `chuanshou_arccache` VALUES ('d4b76be8e732cc12f6947e007e48d923', '1530346506', '34,29,1');
INSERT INTO `chuanshou_arccache` VALUES ('4e8a7fda4f742e1dfc7a3ce5e2065ffa', '1530497491', '0');
INSERT INTO `chuanshou_arccache` VALUES ('68deaa5b088bcd72a97c78e87e17d8f6', '1530497491', '0');
INSERT INTO `chuanshou_arccache` VALUES ('9cd690f6bc5653ebba97c94b2831a878', '1530497491', '0');
INSERT INTO `chuanshou_arccache` VALUES ('6cae11d00c68a71b959142b9e80bc032', '1530497491', '0');
INSERT INTO `chuanshou_arccache` VALUES ('bced6e3ec609f1a5efcef85a623ae30a', '1530497491', '0');
INSERT INTO `chuanshou_arccache` VALUES ('985eb6a5d5eb78157245a6c9a681d6dc', '1530497491', '0');

-- ----------------------------
-- Table structure for chuanshou_archives
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_archives`;
CREATE TABLE `chuanshou_archives` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `ismake` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '1',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `money` smallint(6) NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `shorttitle` char(36) NOT NULL DEFAULT '',
  `color` char(7) NOT NULL DEFAULT '',
  `writer` char(20) NOT NULL DEFAULT '',
  `source` char(30) NOT NULL DEFAULT '',
  `litpic` char(100) NOT NULL DEFAULT '',
  `pubdate` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` char(30) NOT NULL DEFAULT '',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `voteid` mediumint(8) NOT NULL,
  `notpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(40) NOT NULL DEFAULT '',
  `dutyadmin` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tackid` int(10) NOT NULL DEFAULT '0',
  `mtype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `mainindex` (`arcrank`,`typeid`,`channel`,`flag`,`mid`),
  KEY `lastpost` (`lastpost`,`scores`,`goodpost`,`badpost`,`notpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_archives
-- ----------------------------
INSERT INTO `chuanshou_archives` VALUES ('1', '1', '0', '1522734844', 'p', '1', '1', '0', '127', '0', '小程序', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031355180-L.jpg', '1522734844', '1522734926', '1', '小程序开发', '0', '0', '0', '0', '0', '0', '小程序', '', '1', '0', '0', '0');
INSERT INTO `chuanshou_archives` VALUES ('2', '2', '0', '1522735941', 'p', '1', '1', '0', '112', '0', '产品保障', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031412490-L.png', '1522735941', '1522735973', '1', '后台源码 合理收费 专业售后', '0', '0', '0', '0', '0', '0', '后台源码 合理收费 专业售后', '', '1', '0', '0', '1');
INSERT INTO `chuanshou_archives` VALUES ('3', '2', '0', '1522735975', 'p', '1', '1', '0', '75', '0', '技术保障', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031413300-L.png', '1522735975', '1522736013', '1', '技术保障', '0', '0', '0', '0', '0', '0', '专业售后技术为您解决各种问题', '', '1', '0', '0', '2');
INSERT INTO `chuanshou_archives` VALUES ('4', '2', '0', '1522736015', 'p', '1', '1', '0', '99', '0', '营销保障', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031414090-L.png', '1522736015', '1522736060', '1', '营销保障', '0', '0', '0', '0', '0', '0', '专业团队 推广指导', '', '1', '0', '0', '3');
INSERT INTO `chuanshou_archives` VALUES ('5', '2', '0', '1522736065', 'p', '1', '1', '0', '67', '0', '运营保障', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031414510-L.png', '1522736065', '1522736110', '1', '运营保障', '0', '0', '0', '0', '0', '0', '运营指导 案例分享', '', '1', '0', '0', '4');
INSERT INTO `chuanshou_archives` VALUES ('6', '2', '0', '0', 'p', '-1', '1', '0', '175', '0', '培训保障', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031416160-L.png', '0', '1522736222', '1', '培训,保障,培训,保障,', '0', '0', '0', '0', '0', '0', '产品培训 后台培训 推广培训', '', '1', '0', '0', '5');
INSERT INTO `chuanshou_archives` VALUES ('7', '4', '0', '1522738772', 'p', '1', '1', '0', '140', '0', '家具家居', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031459420-L.png', '1522738772', '1522738787', '1', '家具,家居,家具,家居,', '0', '0', '0', '0', '0', '0', '家具家居', '', '1', '0', '0', '6');
INSERT INTO `chuanshou_archives` VALUES ('8', '4', '0', '1522738789', 'p', '1', '1', '0', '52', '0', '医疗健康', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031459590-L.png', '1522738789', '1522738803', '1', '医疗,健康,医疗,健康,', '0', '0', '0', '0', '0', '0', '医疗健康', '', '1', '0', '0', '7');
INSERT INTO `chuanshou_archives` VALUES ('9', '4', '0', '1522738804', 'p', '1', '1', '0', '113', '0', '美容养生', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031500160-L.png', '1522738804', '1522738823', '1', '美容,养生,美容,养生,', '0', '0', '0', '0', '0', '0', '美容养生', '', '1', '0', '0', '8');
INSERT INTO `chuanshou_archives` VALUES ('10', '4', '0', '1522738827', 'p', '1', '1', '0', '200', '0', '生鲜果蔬', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031500300-L.png', '1522738827', '1522738835', '1', '生鲜,果蔬,生鲜,果蔬,', '0', '0', '0', '0', '0', '0', '生鲜果蔬', '', '1', '0', '0', '9');
INSERT INTO `chuanshou_archives` VALUES ('11', '4', '0', '1522738837', 'p', '1', '1', '0', '85', '0', '茶饮酒水', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031500450-L.png', '1522738837', '1522738849', '1', '茶饮,酒水,茶饮,酒水,', '0', '0', '0', '0', '0', '0', '茶饮酒水', '', '1', '0', '0', '10');
INSERT INTO `chuanshou_archives` VALUES ('12', '4', '0', '1522738851', 'p', '1', '1', '0', '142', '0', '门店', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031501000-L.png', '1522738851', '1522738863', '1', '门店,门店,', '0', '0', '0', '0', '0', '0', '门店', '', '1', '0', '0', '11');
INSERT INTO `chuanshou_archives` VALUES ('13', '4', '0', '1522738868', 'p', '1', '1', '0', '62', '0', '美妆', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031501120-L.png', '1522738868', '1522738877', '1', '美妆,美妆,', '0', '0', '0', '0', '0', '0', '美妆', '', '1', '0', '0', '12');
INSERT INTO `chuanshou_archives` VALUES ('14', '4', '0', '1522738882', 'p', '1', '1', '0', '77', '0', '礼品鲜花', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031501260-L.png', '1522738882', '1522738890', '1', '礼品,鲜花,礼品,鲜花,', '0', '0', '0', '0', '0', '0', '礼品鲜花', '', '1', '0', '0', '13');
INSERT INTO `chuanshou_archives` VALUES ('15', '4', '0', '1522738892', 'p', '1', '1', '0', '198', '0', '蛋糕烘焙', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031501440-L.png', '1522738892', '1522738908', '1', '蛋糕,烘焙,蛋糕,烘焙,', '0', '0', '0', '0', '0', '0', '蛋糕烘焙', '', '1', '0', '0', '14');
INSERT INTO `chuanshou_archives` VALUES ('16', '4', '0', '1522738912', 'p', '1', '1', '0', '74', '0', '服装鞋帽', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031501560-L.png', '1522738912', '1522738921', '1', '服装鞋帽,服装鞋帽,', '0', '0', '0', '0', '0', '0', '服装鞋帽', '', '1', '0', '0', '15');
INSERT INTO `chuanshou_archives` VALUES ('17', '4', '0', '1522738924', 'p', '1', '1', '0', '120', '0', '日用百货', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031502130-L.png', '1522738924', '1522738937', '1', '日用百货,日用百货,', '0', '0', '0', '0', '0', '0', '日用百货', '', '1', '0', '0', '16');
INSERT INTO `chuanshou_archives` VALUES ('18', '4', '0', '1522738938', 'p', '1', '1', '0', '185', '0', '汽车服务', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031502270-L.png', '1522738938', '1522738951', '1', '汽车服务,汽车服务,', '0', '0', '0', '0', '0', '0', '汽车服务', '', '1', '0', '0', '17');
INSERT INTO `chuanshou_archives` VALUES ('19', '4', '0', '1522738953', 'p', '1', '1', '0', '54', '0', '教育培训', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031502450-L.png', '1522738953', '1522738968', '1', '教育培训,教育培训,', '0', '0', '0', '0', '0', '0', '教育培训', '', '1', '0', '0', '18');
INSERT INTO `chuanshou_archives` VALUES ('20', '4', '0', '1522738970', 'p', '1', '1', '0', '69', '0', '亲子母婴', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031503010-L.png', '1522738970', '1522738986', '1', '亲子,母婴,亲子,母婴,', '0', '0', '0', '0', '0', '0', '亲子母婴', '', '1', '0', '0', '19');
INSERT INTO `chuanshou_archives` VALUES ('21', '4', '0', '1522738987', 'p', '1', '1', '0', '148', '0', '图书音像', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031503390-L.png', '1522738987', '1522739024', '1', '图书音像,图书音像,', '0', '0', '0', '0', '0', '0', '图书音像', '', '1', '0', '0', '20');
INSERT INTO `chuanshou_archives` VALUES ('22', '3', '0', '1522739573', 'p', '1', '1', '0', '81', '0', '餐饮', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031513370-L.png', '1522739573', '1522739619', '1', '餐饮', '0', '0', '0', '0', '0', '0', '消费一定金额<br>\r\n享受价格优惠', '', '1', '0', '0', '21');
INSERT INTO `chuanshou_archives` VALUES ('23', '3', '0', '1522739804', 'p', '1', '1', '0', '165', '0', '分销', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P403151A50-L.png', '1522739804', '1522739828', '1', '分销,分销,', '0', '0', '0', '0', '0', '0', '提供货源，招揽分销商<br>\r\n帮自己卖货', '', '1', '0', '0', '22');
INSERT INTO `chuanshou_archives` VALUES ('24', '3', '0', '1522739830', 'p', '1', '1', '0', '159', '0', '秒杀', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P403151G90-L.png', '1522739830', '1522739856', '1', '秒杀,秒杀,', '0', '0', '0', '0', '0', '0', '邀请好友拼团凑单，<br>\r\n价格更优', '', '1', '0', '0', '23');
INSERT INTO `chuanshou_archives` VALUES ('25', '3', '0', '1522739857', 'p', '1', '1', '0', '79', '0', '消费', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P403151J70-L.png', '1522739857', '1522739880', '1', '消费,消费,', '0', '0', '0', '0', '0', '0', '用超低价吸引客户，<br>\r\n带动整体销量', '', '1', '0', '0', '24');
INSERT INTO `chuanshou_archives` VALUES ('26', '3', '0', '1522739882', 'p', '1', '1', '0', '87', '0', '砍价', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P403151Q60-L.png', '1522739882', '1522739909', '1', '砍价,砍价,', '0', '0', '0', '0', '0', '0', '邀请好友砍价得优惠,<br>\r\n同时带动销量', '', '1', '0', '0', '25');
INSERT INTO `chuanshou_archives` VALUES ('27', '3', '0', '1522739913', 'p', '1', '1', '0', '163', '0', '会员卡', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P403151S80-L.png', '1522739913', '1522739937', '1', '会员卡,会员卡,', '0', '0', '0', '0', '0', '0', '老客户关系的<br>\r\n精细化管理', '', '1', '0', '0', '26');
INSERT INTO `chuanshou_archives` VALUES ('28', '9', '0', '1522741622', '', '1', '1', '0', '221', '0', '微信小程序能变现赚钱了！新增快速创建能力', '', '', 'admin', '未知', '', '1522741622', '1522741678', '1', '微信,小,程序,能,变现,赚钱,了,新增,快速,3月,', '0', '0', '0', '0', '0', '0', '3月29日消息 刚刚微信小程序官方宣布，为满足小程序开发者变现需求，内测广告组件能力。为帮助公众号运营者快速接入小程序，新增快速创建小程序接口。另外新增小程序插件管理接', '', '1', '0', '0', '27');
INSERT INTO `chuanshou_archives` VALUES ('29', '1', '0', '1522748969', 'p', '1', '1', '0', '190', '0', '小程序开发', '', '', 'admin', '未知', '/uploads/allimg/180403/1-1P4031J9540-L.jpg', '1522748969', '1522749000', '1', '小,程序开发,小,程序开发,', '0', '0', '0', '0', '0', '0', '小程序开发', '', '1', '0', '0', '28');
INSERT INTO `chuanshou_archives` VALUES ('30', '2', '0', '1522831996', 'p', '1', '1', '0', '99', '0', '售后保障', '', '', 'admin', '未知', '/uploads/allimg/180404/1-1P4041A4450-L.png', '1522831996', '1522832092', '1', '售后,保障,售后,保障,', '0', '0', '0', '0', '0', '0', '专业技术、跟踪服务', '', '1', '0', '0', '29');
INSERT INTO `chuanshou_archives` VALUES ('31', '11', '0', '1522832667', 'p', '1', '1', '0', '62', '0', '移动轮换图', '', '', 'admin', '未知', '/uploads/allimg/180404/1-1P4041F4520-L.jpg', '1522832667', '1522832695', '1', '移动,轮换,图,移动,轮换,图,', '0', '0', '0', '0', '0', '0', '移动轮换图', '', '1', '0', '0', '30');
INSERT INTO `chuanshou_archives` VALUES ('32', '11', '0', '1522833178', 'p', '1', '1', '0', '69', '0', '解决方案', '', '', 'admin', '未知', '/uploads/allimg/180404/1-1P4041G3110-L.jpg', '1522833178', '1522833195', '1', '解决方案,解决方案,', '0', '0', '0', '0', '0', '0', '解决方案', '', '1', '0', '0', '31');
INSERT INTO `chuanshou_archives` VALUES ('33', '11', '0', '1522835445', 'p', '1', '1', '0', '144', '0', '小程序开发公司', '', '', 'admin', '未知', '/uploads/allimg/180404/1-1P4041K1360-L.jpg', '1522835445', '1522835519', '1', '小,程序,开发公司,小,程序,开发公司,', '0', '0', '0', '0', '0', '0', '小程序开发公司', '', '1', '0', '0', '32');
INSERT INTO `chuanshou_archives` VALUES ('34', '1', '0', '1522999055', 'p', '1', '1', '0', '180', '0', '上海小程序开发', '', '', 'admin', '未知', '/uploads/allimg/180406/1-1P406151P40-L.jpg', '1522999055', '1522999094', '1', '上海小程序开发', '0', '0', '0', '0', '0', '0', '上海小程序开发', '', '1', '0', '0', '33');
INSERT INTO `chuanshou_archives` VALUES ('35', '5', '0', '1523072008', 'p', '1', '1', '-2', '189', '0', '足浴', '', '', 'admin', '未知', '/uploads/allimg/180407/1-1P40G12951610-lp.png', '1523072008', '1523071804', '1', '足浴,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '34');
INSERT INTO `chuanshou_archives` VALUES ('38', '5', '0', '1523149633', 'p', '1', '1', '0', '153', '0', '足浴模板', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40PZP0P7-lp.png', '1523149633', '1523149913', '1', '足浴,模板,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '5');
INSERT INTO `chuanshou_archives` VALUES ('39', '9', '0', '1523150902', '', '1', '1', '0', '187', '0', '小程序自定义关键词正式关闭', '', '', 'admin', '未知', '', '1523150902', '1523150772', '1', '小,程序,自定义,关键词,正式,关闭,2017年,6月,', '0', '0', '0', '0', '0', '0', '2017年6月3日，小程序「自定义关键词」功能正式上线。小程序开发者可以通过该功能，自定义 10个搜索关键词，以此来增加小程序的曝光率。 2018年4月3日，小程序「自定义关键词」功能', '', '1', '0', '0', '36');
INSERT INTO `chuanshou_archives` VALUES ('40', '5', '0', '1523155278', 'p', '1', '1', '0', '59', '0', '电商', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q04014c8-lp.png', '1523155278', '1523155224', '1', '电商,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '40');
INSERT INTO `chuanshou_archives` VALUES ('41', '5', '0', '1523155309', 'p', '1', '1', '0', '85', '0', '企业官网', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q04210P5-lp.png', '1523155309', '1523155346', '1', '企业,官网,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '38');
INSERT INTO `chuanshou_archives` VALUES ('42', '5', '0', '1523155376', 'p', '1', '1', '0', '117', '0', '水果', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q04311N4-lp.png', '1523155376', '1523155408', '1', '水果,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '39');
INSERT INTO `chuanshou_archives` VALUES ('43', '5', '0', '1523156158', 'p', '1', '1', '0', '142', '0', '鲜花', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q0560U96-lp.png', '1523156158', '1523156176', '1', '鲜花,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '40');
INSERT INTO `chuanshou_archives` VALUES ('44', '5', '0', '1523173371', 'p', '1', '1', '0', '184', '0', '餐饮', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q05644X2-lp.png', '1523173371', '1523156210', '1', '餐饮,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '41');
INSERT INTO `chuanshou_archives` VALUES ('45', '10', '0', '1523161145', 'p', '1', '1', '0', '158', '0', '小程序如何做数据分析', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q22102527-lp.jpg', '1523161145', '1523161284', '1', '小,程序,如何,做,数据分析,数据分析,是,要给,', '0', '0', '0', '0', '0', '0', '数据分析是要给相对比较专业的事情，很多时候因公司、团队限制，我们都采用第三方系统来进行数据分析。但有些时候，有可能系统自带的数据分析功能就已经很强大，只是我们没有', '', '1', '0', '0', '42');
INSERT INTO `chuanshou_archives` VALUES ('46', '10', '0', '1523161145', 'p', '1', '1', '0', '154', '0', '小程序如何做数据分析', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q22102527-lp.jpg', '1523161145', '1523161295', '1', '小,程序,如何,做,数据分析,数据分析,是,要给,', '0', '0', '0', '0', '0', '0', '数据分析是要给相对比较专业的事情，很多时候因公司、团队限制，我们都采用第三方系统来进行数据分析。但有些时候，有可能系统自带的数据分析功能就已经很强大，只是我们没有', '', '1', '0', '0', '42');
INSERT INTO `chuanshou_archives` VALUES ('47', '8', '0', '1523172283', 'p', '1', '1', '-2', '82', '0', '足浴小程序', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q52052250-lp.jpg', '1523172283', '1523172055', '1', '足浴,小,程序,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '44');
INSERT INTO `chuanshou_archives` VALUES ('48', '8', '0', '1523172355', 'p', '1', '1', '-2', '181', '0', '足浴小程序', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q52F3942-lp.jpg', '1523172355', '1523172504', '1', '足浴,小,程序,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '45');
INSERT INTO `chuanshou_archives` VALUES ('49', '8', '0', '1523174617', 'p', '1', '1', '0', '201', '0', '足浴小程序', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40Q60149438-lp.jpg', '1523174617', '1523174598', '1', '足浴,小,程序,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '46');
INSERT INTO `chuanshou_archives` VALUES ('50', '5', '0', '1523178064', 'p', '1', '1', '-2', '112', '0', '大大大', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QF1220-L.png', '1523178064', '1523178114', '1', '大,大大,大,大大,', '0', '0', '0', '0', '0', '0', '大大大', '', '1', '0', '0', '47');
INSERT INTO `chuanshou_archives` VALUES ('51', '12', '0', '1530346454', 'p', '1', '1', '0', '74', '0', '鲜花', '', '', 'admin', '未知', '/uploads/180409/1-1P40Z91F21I.png', '1530346454', '1523181094', '1', '鲜花,鲜花,', '0', '0', '0', '0', '0', '0', '鲜花', '', '1', '0', '0', '48');
INSERT INTO `chuanshou_archives` VALUES ('52', '12', '0', '1523181120', 'p', '1', '1', '-2', '104', '0', '餐饮', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QK2190-L.png', '1523181120', '1523181143', '1', '餐饮,餐饮,', '0', '0', '0', '0', '0', '0', '餐饮', '', '1', '0', '0', '49');
INSERT INTO `chuanshou_archives` VALUES ('53', '12', '0', '1523181145', 'p', '1', '1', '-2', '110', '0', '水果', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QK2360-L.png', '1523181145', '1523181163', '1', '水果,水果,', '0', '0', '0', '0', '0', '0', '水果', '', '1', '0', '0', '50');
INSERT INTO `chuanshou_archives` VALUES ('54', '12', '0', '1523181165', 'p', '1', '1', '-2', '67', '0', '官网', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QK3080-L.png', '1523181165', '1523181193', '1', '官网,官网,', '0', '0', '0', '0', '0', '0', '官网', '', '1', '0', '0', '51');
INSERT INTO `chuanshou_archives` VALUES ('55', '12', '0', '1523181194', 'p', '1', '1', '-2', '89', '0', '足浴', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QK3470-L.png', '1523181194', '1523181241', '1', '足浴,足浴,', '0', '0', '0', '0', '0', '0', '足浴', '', '1', '0', '0', '52');
INSERT INTO `chuanshou_archives` VALUES ('56', '12', '0', '1523181243', 'p', '1', '1', '-2', '132', '0', '企业', '', '', 'admin', '未知', '/uploads/allimg/180408/1-1P40QK4140-L.png', '1523181243', '1523181259', '1', '企业,企业,', '0', '0', '0', '0', '0', '0', '企业', '', '1', '0', '0', '53');
INSERT INTO `chuanshou_archives` VALUES ('57', '12', '0', '1523237913', 'p', '1', '1', '-2', '194', '0', '水果生鲜', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P40Z93S90-L.png', '1523237913', '1523251938', '1', '水果,生鲜,水果,生鲜,', '0', '0', '0', '0', '0', '0', '水果生鲜', '', '1', '0', '0', '54');
INSERT INTO `chuanshou_archives` VALUES ('58', '12', '0', '1523252055', 'p', '1', '1', '0', '181', '0', '生鲜水果', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P4091334380-L.png', '1523252055', '1523252116', '1', '生鲜,水果,生鲜,水果,', '0', '0', '0', '0', '0', '0', '生鲜水果', '', '1', '0', '0', '55');
INSERT INTO `chuanshou_archives` VALUES ('59', '12', '0', '1523253094', 'p', '1', '1', '0', '106', '0', '餐饮', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P409133A80-L.png', '1523253094', '1523252655', '1', '餐饮,餐饮,', '0', '0', '0', '0', '0', '0', '餐饮', '', '1', '0', '0', '56');
INSERT INTO `chuanshou_archives` VALUES ('60', '12', '0', '1523253492', 'p', '1', '1', '0', '109', '0', '企业', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P4091400120-L.png', '1523253492', '1523253645', '1', '上海松江小程序开发公司', '0', '0', '0', '0', '0', '0', '上海松江小程序开发公司', '', '1', '0', '0', '57');
INSERT INTO `chuanshou_archives` VALUES ('61', '12', '0', '1529974903', 'p', '1', '1', '0', '192', '0', '电商', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P4091446150-L.png', '1529974903', '1523256386', '1', '电商小程序，上海松江小程序开发，上海松江小', '0', '0', '0', '0', '0', '0', '电商小程序，上海松江小程序开发，上海松江小程序公司', '', '1', '0', '0', '58');
INSERT INTO `chuanshou_archives` VALUES ('62', '12', '0', '1523266505', 'p', '1', '1', '0', '136', '0', '足浴', '', '', 'admin', '未知', '/uploads/allimg/180409/1-1P4091I5340-L.png', '1523266505', '1523266545', '1', '上海小程序开发，松江小程序开发', '0', '0', '0', '0', '0', '0', '上海小程序开发，松江小程序开发', '', '1', '0', '0', '59');
INSERT INTO `chuanshou_archives` VALUES ('63', '9', '0', '1523347870', 'p', '1', '1', '-2', '163', '0', '微信小程序怎么注册', '', '', 'admin', '未知', '/uploads/allimg/180410/1-1P41016195V29-lp.jpg', '1523347870', '1523349186', '1', '微信,小,程序,怎么,注册,小,程序,是,一种,', '0', '0', '0', '0', '0', '0', '小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。 1、 打开微信公众平台 https://mp.weixin.qq.com/，在', '', '1', '0', '0', '60');
INSERT INTO `chuanshou_archives` VALUES ('64', '9', '0', '1523349305', 'p', '1', '1', '-2', '154', '0', '怎么注册微信小程序', '', '', 'admin', '未知', '/uploads/allimg/180410/1_0410163622O07.jpg', '1523349305', '1523349381', '1', '小程序开发，上海小程序开发，上海松江小程序', '0', '0', '0', '0', '0', '0', '小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。 1、 打开微信公众平台 https://mp.weixin.qq.com/，在', '', '1', '0', '0', '61');
INSERT INTO `chuanshou_archives` VALUES ('65', '9', '0', '1523349446', 'c,p', '1', '1', '0', '161', '0', '微信小程序怎么注册', '', '', 'admin', '未知', '/uploads/allimg/180410/1_0410163S41E4.jpg', '1523349446', '1523349514', '1', '小程序开发，上海小程序开发，上海松江小程序', '0', '0', '0', '0', '0', '0', '小程序是一种新的开放能力，开放者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和创办，同时具有出色的使用体验。 1、 打开微信公众平台 https://mp.weixin.qq.com/，在', '', '1', '0', '0', '62');
INSERT INTO `chuanshou_archives` VALUES ('66', '9', '0', '1523411195', '', '1', '1', '-2', '67', '0', '你可能错过了微信公众号，这次不要错过微信小', '', '', 'admin', '未知', '', '1523411195', '1523411282', '1', '上海小程序开发，松江小程序开发，松江小程序', '0', '0', '0', '0', '0', '0', '松江小程序开发、松江小程序制作、松江小程序制作公司！ 2017年小程序的出现完美解决了原生应用与Wep应用的短板,以无需安装、用完即走的轻便形态,快速解决用户的实际需求,成为移动', '', '1', '0', '0', '63');
INSERT INTO `chuanshou_archives` VALUES ('67', '8', '0', '1523411340', '', '1', '1', '-2', '175', '0', '你可能错过了微信公众号，这次不要错过微信小', '', '', 'admin', '未知', '', '1523411340', '1523411384', '1', '上海小程序开发，松江小程序开发，松江小程序', '0', '0', '0', '0', '0', '0', '松江小程序开发、松江小程序制作、松江小程序制作公司！ 2017年小程序的出现完美解决了原生应用与Wep应用的短板,以无需安装、用完即走的轻便形态,快速解决用户的实际需求,成为移', '', '1', '0', '0', '64');
INSERT INTO `chuanshou_archives` VALUES ('68', '8', '0', '1526713796', '', '1', '1', '0', '79', '0', '你可能错过了微信公众号，不要错过微信小程序', '', '', 'admin', '未知', '', '1526713796', '1523411478', '1', '上海小程序开发，松江小程序开发，松江小程序', '0', '0', '0', '0', '0', '0', '松江小程序开发、松江小程序制作、松江小程序制作公司！ 2017年小程序的出现完美解决了原生应用与Wep应用的短板,以无需安装、用完即走的轻便形态,快速解决用户的实际需求,成为移', '', '1', '0', '0', '65');
INSERT INTO `chuanshou_archives` VALUES ('69', '8', '0', '1523414204', '', '1', '1', '-2', '99', '0', '顶顶顶顶顶顶顶顶顶', '', '', 'admin', '未知', '', '1523414204', '1523414211', '1', '顶顶顶,顶顶顶,', '0', '0', '0', '0', '0', '0', '顶顶顶顶顶顶顶顶顶', '', '1', '0', '0', '66');
INSERT INTO `chuanshou_archives` VALUES ('70', '9', '0', '1526713860', 'p', '1', '1', '0', '169', '0', '微信小程序有多少个流量入口？', '', '', 'admin', '未知', '/uploads/allimg/180411/1U4516106-0-lp.jpg', '1526713860', '1523444091', '1', '微信小程序开发，上海小程序开发，松江小程序', '0', '0', '0', '0', '0', '0', '而此前小程序陆续发布的入口，「造程序」也进行了全面整理，发现小程序的入口数量已达到50个（如有遗漏，欢迎大家补充）。为了方便大家理解，我们把小程序的50个细分入口分为以', '', '1', '0', '0', '67');

-- ----------------------------
-- Table structure for chuanshou_arcmulti
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arcmulti`;
CREATE TABLE `chuanshou_arcmulti` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` char(60) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `innertext` varchar(255) NOT NULL DEFAULT '',
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `arcids` text NOT NULL,
  `ordersql` varchar(255) DEFAULT NULL,
  `addfieldsSql` varchar(255) DEFAULT NULL,
  `addfieldsSqlJoin` varchar(255) DEFAULT NULL,
  `attstr` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arcmulti
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_arcrank
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arcrank`;
CREATE TABLE `chuanshou_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) unsigned NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arcrank
-- ----------------------------
INSERT INTO `chuanshou_arcrank` VALUES ('1', '0', '开放浏览', '5', '0', '0', '');
INSERT INTO `chuanshou_arcrank` VALUES ('2', '-1', '待审核稿件', '0', '0', '0', '');
INSERT INTO `chuanshou_arcrank` VALUES ('3', '10', '注册会员', '5', '0', '100', '');
INSERT INTO `chuanshou_arcrank` VALUES ('4', '50', '中级会员', '5', '300', '200', '');
INSERT INTO `chuanshou_arcrank` VALUES ('5', '100', '高级会员', '5', '800', '500', '');
INSERT INTO `chuanshou_arcrank` VALUES ('6', '20', '低级会员', '5', '0', '500', '');
INSERT INTO `chuanshou_arcrank` VALUES ('7', '150', '给力会员', '5', '1000', '500', '');
INSERT INTO `chuanshou_arcrank` VALUES ('8', '180', '超能会员', '5', '1100', '500', '');

-- ----------------------------
-- Table structure for chuanshou_arctiny
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arctiny`;
CREATE TABLE `chuanshou_arctiny` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(5) NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `idx_typeid_arcrank_sortrank` (`typeid`,`arcrank`,`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arctiny
-- ----------------------------
INSERT INTO `chuanshou_arctiny` VALUES ('1', '1', '0', '0', '1', '1522734926', '1522734844', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('2', '2', '0', '0', '1', '1522735973', '1522735941', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('3', '2', '0', '0', '1', '1522736013', '1522735975', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('4', '2', '0', '0', '1', '1522736060', '1522736015', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('5', '2', '0', '0', '1', '1522736110', '1522736065', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('6', '2', '0', '0', '1', '1522736222', '1522736222', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('7', '4', '0', '0', '1', '1522738787', '1522738772', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('8', '4', '0', '0', '1', '1522738803', '1522738789', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('9', '4', '0', '0', '1', '1522738823', '1522738804', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('10', '4', '0', '0', '1', '1522738835', '1522738827', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('11', '4', '0', '0', '1', '1522738849', '1522738837', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('12', '4', '0', '0', '1', '1522738863', '1522738851', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('13', '4', '0', '0', '1', '1522738877', '1522738868', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('14', '4', '0', '0', '1', '1522738890', '1522738882', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('15', '4', '0', '0', '1', '1522738908', '1522738892', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('16', '4', '0', '0', '1', '1522738921', '1522738912', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('17', '4', '0', '0', '1', '1522738937', '1522738924', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('18', '4', '0', '0', '1', '1522738951', '1522738938', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('19', '4', '0', '0', '1', '1522738968', '1522738953', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('20', '4', '0', '0', '1', '1522738986', '1522738970', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('21', '4', '0', '0', '1', '1522739024', '1522738987', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('22', '3', '0', '0', '1', '1522739619', '1522739573', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('23', '3', '0', '0', '1', '1522739828', '1522739804', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('24', '3', '0', '0', '1', '1522739856', '1522739830', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('25', '3', '0', '0', '1', '1522739880', '1522739857', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('26', '3', '0', '0', '1', '1522739909', '1522739882', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('27', '3', '0', '0', '1', '1522739937', '1522739913', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('28', '9', '0', '0', '1', '1522741678', '1522741622', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('29', '1', '0', '0', '1', '1522749000', '1522748969', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('30', '2', '0', '0', '1', '1522832092', '1522831996', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('31', '11', '0', '0', '1', '1522832695', '1522832667', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('32', '11', '0', '0', '1', '1522833195', '1522833178', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('33', '11', '0', '0', '1', '1522835519', '1522835445', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('34', '1', '0', '0', '1', '1522999094', '1522999055', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('56', '12', '0', '-2', '1', '1523181259', '1523181243', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('39', '9', '0', '0', '1', '1523150772', '1523150902', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('55', '12', '0', '-2', '1', '1523181241', '1523181194', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('54', '12', '0', '-2', '1', '1523181193', '1523181165', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('53', '12', '0', '-2', '1', '1523181163', '1523181145', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('52', '12', '0', '-2', '1', '1523181143', '1523181120', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('51', '12', '0', '0', '1', '1523181094', '1530346454', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('45', '10', '0', '0', '1', '1523161284', '1523161145', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('46', '10', '0', '0', '1', '1523161295', '1523161145', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('47', '8', '0', '-2', '1', '1523172055', '1523172283', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('48', '8', '0', '-2', '1', '1523172504', '1523172355', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('49', '8', '0', '0', '1', '1523174598', '1523174617', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('57', '12', '0', '-2', '1', '1523251938', '1523237913', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('58', '12', '0', '0', '1', '1523252116', '1523252055', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('59', '12', '0', '0', '1', '1523252655', '1523253094', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('60', '12', '0', '0', '1', '1523253645', '1523253492', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('61', '12', '0', '0', '1', '1523256386', '1529974903', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('62', '12', '0', '0', '1', '1523266545', '1523266505', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('63', '9', '0', '-2', '1', '1523349186', '1523347870', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('64', '9', '0', '-2', '1', '1523349381', '1523349305', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('65', '9', '0', '0', '1', '1523349514', '1523349446', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('66', '9', '0', '-2', '1', '1523411282', '1523411195', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('67', '8', '0', '-2', '1', '1523411384', '1523411340', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('68', '8', '0', '0', '1', '1523411478', '1526713796', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('69', '8', '0', '-2', '1', '1523414211', '1523414204', '1');
INSERT INTO `chuanshou_arctiny` VALUES ('70', '9', '0', '0', '1', '1523444091', '1526713860', '1');

-- ----------------------------
-- Table structure for chuanshou_arctype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_arctype`;
CREATE TABLE `chuanshou_arctype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `reid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortrank` smallint(5) unsigned NOT NULL DEFAULT '50',
  `typename` char(30) NOT NULL DEFAULT '',
  `typedir` char(60) NOT NULL DEFAULT '',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `defaultname` char(15) NOT NULL DEFAULT 'index.html',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `channeltype` smallint(6) DEFAULT '1',
  `maxpage` smallint(6) NOT NULL DEFAULT '-1',
  `ispart` smallint(6) NOT NULL DEFAULT '0',
  `corank` smallint(6) NOT NULL DEFAULT '0',
  `tempindex` char(50) NOT NULL DEFAULT '',
  `templist` char(50) NOT NULL DEFAULT '',
  `temparticle` char(50) NOT NULL DEFAULT '',
  `namerule` char(50) NOT NULL DEFAULT '',
  `namerule2` char(50) NOT NULL DEFAULT '',
  `modname` char(20) NOT NULL DEFAULT '',
  `description` char(150) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `seotitle` varchar(80) NOT NULL DEFAULT '',
  `moresite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sitepath` char(60) NOT NULL DEFAULT '',
  `siteurl` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `cross` tinyint(1) NOT NULL DEFAULT '0',
  `crossid` text,
  `content` text,
  `smalltypes` text,
  `typeimg` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_arctype
-- ----------------------------
INSERT INTO `chuanshou_arctype` VALUES ('1', '0', '0', '1', '首页轮换图', '/banner', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('2', '0', '0', '2', '五大保障', '/wdbz', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/wdbz', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('3', '0', '0', '50', '营销工具', '/yxgj', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('4', '0', '0', '4', '适用商户', '/syyh', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('12', '0', '0', '50', '客户案例', '/case', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/case', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('6', '0', '0', '6', '关于我们', '{cmspath}/a/about', '-1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/about', '', '0', '0', '', '上海申肃网络科技有限公司成立于电商之都&mdash;&mdash;上海之都，定位于企业及门店小程序开发及服务商。成立之初即获得上海文艺网大力支持。 申肃以高新技术和互联网理念，为企业打造营销、销售、运营一站式解决方案，并能在原有解决方案基础上进行二次开发，灵活定制，从而打造更贴合商业实践的线上&mdash;移动&mdash;线下三位一体的企业新零售平台，使企业与用户能够通过各种载体及终端进行交易和消费。企业用户无需搭建技术团队，真正让企业用户省钱、省心、省力。 ', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('7', '0', '0', '7', '新闻中心', '/news', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/news', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('8', '7', '7', '50', '公司新闻', 'new', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/news', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('9', '7', '7', '50', '行业动态', '/newn', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/news', '', '0', '0', '', '', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('10', '7', '7', '50', '小程序常识', '/xcxcs', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '/news', '', '0', '0', '', '', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('11', '0', '0', '9', '移动端轮换图', '{cmspath}/a/banner', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/banner', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('13', '0', '0', '50', '足浴小程序|足浴店系统|足浴店小程序开发', '/zyxcx', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/zhuanti_zy.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '足浴小程序', '足浴小程序', '足浴小程序', '0', '/zyxcx', '', '0', '0', '', '&nbsp;', '', '');
INSERT INTO `chuanshou_arctype` VALUES ('15', '0', '0', '50', '电商小程序', '/dsxcx', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/zhuanti_zt.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '电商小程序', '电商小程序', '电商小程序', '0', '/dsxcx', '', '0', '0', '', '&nbsp;', '', '');

-- ----------------------------
-- Table structure for chuanshou_area
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_area`;
CREATE TABLE `chuanshou_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_area
-- ----------------------------
INSERT INTO `chuanshou_area` VALUES ('1', '北京市', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('102', '西城区', '1', '2');
INSERT INTO `chuanshou_area` VALUES ('126', '崇文区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('104', '宣武区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('105', '朝阳区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('106', '海淀区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('107', '丰台区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('108', '石景山区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('109', '门头沟区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('110', '房山区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('111', '通州区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('112', '顺义区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('113', '昌平区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('114', '大兴区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('115', '平谷县', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('116', '怀柔县', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('117', '密云县', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('118', '延庆县', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('2', '上海市', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('201', '黄浦区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('202', '卢湾区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('203', '徐汇区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('204', '长宁区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('205', '静安区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('206', '普陀区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('207', '闸北区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('208', '虹口区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('209', '杨浦区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('210', '宝山区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('211', '闵行区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('212', '嘉定区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('213', '浦东新区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('214', '松江区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('215', '金山区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('216', '青浦区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('217', '南汇区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('218', '奉贤区', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('219', '崇明县', '2', '0');
INSERT INTO `chuanshou_area` VALUES ('3', '天津市', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('301', '和平区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('302', '河东区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('303', '河西区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('304', '南开区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('305', '河北区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('306', '红桥区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('307', '塘沽区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('308', '汉沽区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('309', '大港区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('310', '东丽区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('311', '西青区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('312', '北辰区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('313', '津南区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('314', '武清区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('315', '宝坻区', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('316', '静海县', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('317', '宁河县', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('318', '蓟县', '3', '0');
INSERT INTO `chuanshou_area` VALUES ('4', '重庆市', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('401', '渝中区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('402', '大渡口区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('403', '江北区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('404', '沙坪坝区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('405', '九龙坡区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('406', '南岸区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('407', '北碚区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('408', '万盛区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('409', '双桥区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('410', '渝北区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('411', '巴南区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('412', '万州区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('413', '涪陵区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('414', '黔江区', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('415', '永川市', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('416', '合川市', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('417', '江津市', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('418', '南川市', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('419', '长寿县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('420', '綦江县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('421', '潼南县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('422', '荣昌县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('423', '璧山县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('424', '大足县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('425', '铜梁县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('426', '梁平县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('427', '城口县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('428', '垫江县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('429', '武隆县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('430', '丰都县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('431', '奉节县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('432', '开县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('433', '云阳县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('434', '忠县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('435', '巫溪县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('436', '巫山县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('437', '石柱县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('438', '秀山县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('439', '酉阳县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('440', '彭水县', '4', '0');
INSERT INTO `chuanshou_area` VALUES ('5', '广东省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('501', '广州市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('502', '深圳市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('503', '珠海市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('504', '汕头市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('505', '韶关市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('506', '河源市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('507', '梅州市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('508', '惠州市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('509', '汕尾市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('510', '东莞市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('511', '中山市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('512', '江门市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('513', '佛山市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('514', '阳江市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('515', '湛江市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('516', '茂名市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('517', '肇庆市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('518', '清远市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('519', '潮州市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('520', '揭阳市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('521', '云浮市', '5', '0');
INSERT INTO `chuanshou_area` VALUES ('6', '福建省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('601', '福州市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('602', '厦门市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('603', '三明市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('604', '莆田市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('605', '泉州市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('606', '漳州市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('607', '南平市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('608', '龙岩市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('609', '宁德市', '6', '0');
INSERT INTO `chuanshou_area` VALUES ('7', '浙江省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('701', '杭州市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('702', '宁波市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('703', '温州市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('704', '嘉兴市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('705', '湖州市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('706', '绍兴市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('707', '金华市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('708', '衢州市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('709', '舟山市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('710', '台州市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('711', '丽水市', '7', '0');
INSERT INTO `chuanshou_area` VALUES ('8', '江苏省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('801', '南京市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('802', '徐州市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('803', '连云港市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('804', '淮安市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('805', '宿迁市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('806', '盐城市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('807', '扬州市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('808', '泰州市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('809', '南通市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('810', '镇江市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('811', '常州市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('812', '无锡市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('813', '苏州市', '8', '0');
INSERT INTO `chuanshou_area` VALUES ('9', '山东省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('901', '济南市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('902', '青岛市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('903', '淄博市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('904', '枣庄市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('905', '东营市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('906', '潍坊市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('907', '烟台市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('908', '威海市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('909', '济宁市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('910', '泰安市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('911', '日照市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('912', '莱芜市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('913', '德州市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('914', '临沂市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('915', '聊城市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('916', '滨州市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('917', '菏泽市', '9', '0');
INSERT INTO `chuanshou_area` VALUES ('10', '辽宁省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1001', '沈阳市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1002', '大连市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1003', '鞍山市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1004', '抚顺市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1005', '本溪市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1006', '丹东市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1007', '锦州市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1008', '葫芦岛市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1009', '营口市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1010', '盘锦市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1011', '阜新市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1012', '辽阳市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1013', '铁岭市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('1014', '朝阳市', '10', '0');
INSERT INTO `chuanshou_area` VALUES ('11', '江西省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1101', '南昌市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1102', '景德镇市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1103', '萍乡市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1104', '新余市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1105', '九江市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1106', '鹰潭市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1107', '赣州市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1108', '吉安市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1109', '宜春市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1110', '抚州市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('1111', '上饶市', '11', '0');
INSERT INTO `chuanshou_area` VALUES ('12', '四川省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1201', '成都市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1202', '自贡市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1203', '攀枝花市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1204', '泸州市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1205', '德阳市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1206', '绵阳市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1207', '广元市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1208', '遂宁市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1209', '内江市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1210', '乐山市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1211', '南充市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1212', '宜宾市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1213', '广安市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1214', '达州市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1215', '巴中市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1216', '雅安市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1217', '眉山市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1218', '资阳市', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1219', '阿坝州', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1220', '甘孜州', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('1221', '凉山州', '12', '0');
INSERT INTO `chuanshou_area` VALUES ('13', '陕西省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('3114', '西安市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1302', '铜川市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1303', '宝鸡市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1304', '咸阳市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1305', '渭南市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1306', '延安市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1307', '汉中市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1308', '榆林市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1309', '安康市', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('1310', '商洛地区', '13', '0');
INSERT INTO `chuanshou_area` VALUES ('14', '湖北省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1401', '武汉市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1402', '黄石市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1403', '襄樊市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1404', '十堰市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1405', '荆州市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1406', '宜昌市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1407', '荆门市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1408', '鄂州市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1409', '孝感市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1410', '黄冈市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1411', '咸宁市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1412', '随州市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1413', '仙桃市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1414', '天门市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1415', '潜江市', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1416', '神农架', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('1417', '恩施州', '14', '0');
INSERT INTO `chuanshou_area` VALUES ('15', '河南省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1501', '郑州市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1502', '开封市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1503', '洛阳市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1504', '平顶山市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1505', '焦作市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1506', '鹤壁市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1507', '新乡市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1508', '安阳市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1509', '濮阳市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1510', '许昌市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1511', '漯河市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1512', '三门峡市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1513', '南阳市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1514', '商丘市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1515', '信阳市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1516', '周口市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1517', '驻马店市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('1518', '济源市', '15', '0');
INSERT INTO `chuanshou_area` VALUES ('16', '河北省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1601', '石家庄市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1602', '唐山市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1603', '秦皇岛市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1604', '邯郸市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1605', '邢台市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1606', '保定市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1607', '张家口市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1608', '承德市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1609', '沧州市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1610', '廊坊市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('1611', '衡水市', '16', '0');
INSERT INTO `chuanshou_area` VALUES ('17', '山西省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1701', '太原市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1702', '大同市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1703', '阳泉市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1704', '长治市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1705', '晋城市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1706', '朔州市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1707', '晋中市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1708', '忻州市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1709', '临汾市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1710', '运城市', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('1711', '吕梁地区', '17', '0');
INSERT INTO `chuanshou_area` VALUES ('18', '内蒙古', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1801', '呼和浩特', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1802', '包头市', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1803', '乌海市', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1804', '赤峰市', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1805', '通辽市', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1806', '鄂尔多斯', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1807', '乌兰察布', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1808', '锡林郭勒', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1809', '呼伦贝尔', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1810', '巴彦淖尔', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1811', '阿拉善盟', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('1812', '兴安盟', '18', '0');
INSERT INTO `chuanshou_area` VALUES ('19', '吉林省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('1901', '长春市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1902', '吉林市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1903', '四平市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1904', '辽源市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1905', '通化市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1906', '白山市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1907', '松原市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1908', '白城市', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('1909', '延边州', '19', '0');
INSERT INTO `chuanshou_area` VALUES ('20', '黑龙江', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2001', '哈尔滨市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2002', '齐齐哈尔', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2003', '鹤岗市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2004', '双鸭山市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2005', '鸡西市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2006', '大庆市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2007', '伊春市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2008', '牡丹江市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2009', '佳木斯市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2010', '七台河市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2011', '黑河市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2012', '绥化市', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('2013', '大兴安岭', '20', '0');
INSERT INTO `chuanshou_area` VALUES ('21', '安徽省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2101', '合肥市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2102', '芜湖市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2103', '蚌埠市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2104', '淮南市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2105', '马鞍山市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2106', '淮北市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2107', '铜陵市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2108', '安庆市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2109', '黄山市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2110', '滁州市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2111', '阜阳市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2112', '宿州市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2113', '巢湖市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2114', '六安市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2115', '亳州市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2116', '宣城市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('2117', '池州市', '21', '0');
INSERT INTO `chuanshou_area` VALUES ('22', '湖南省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2201', '长沙市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2202', '株州市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2203', '湘潭市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2204', '衡阳市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2205', '邵阳市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2206', '岳阳市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2207', '常德市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2208', '张家界市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2209', '益阳市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2210', '郴州市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2211', '永州市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2212', '怀化市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2213', '娄底市', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('2214', '湘西州', '22', '0');
INSERT INTO `chuanshou_area` VALUES ('23', '广西区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2301', '南宁市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2302', '柳州市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2303', '桂林市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2304', '梧州市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2305', '北海市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2306', '防城港市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2307', '钦州市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2308', '贵港市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2309', '玉林市', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2310', '南宁地区', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2311', '柳州地区', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2312', '贺州地区', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2313', '百色地区', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('2314', '河池地区', '23', '0');
INSERT INTO `chuanshou_area` VALUES ('24', '海南省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2401', '海口市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2402', '三亚市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2403', '五指山市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2404', '琼海市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2405', '儋州市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2406', '琼山市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2407', '文昌市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2408', '万宁市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2409', '东方市', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2410', '澄迈县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2411', '定安县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2412', '屯昌县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2413', '临高县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2414', '白沙县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2415', '昌江县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2416', '乐东县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2417', '陵水县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2418', '保亭县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('2419', '琼中县', '24', '0');
INSERT INTO `chuanshou_area` VALUES ('25', '云南省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2501', '昆明市', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2502', '曲靖市', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2503', '玉溪市', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2504', '保山市', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2505', '昭通市', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2506', '思茅地区', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2507', '临沧地区', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2508', '丽江地区', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2509', '文山州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2510', '红河州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2511', '西双版纳', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2512', '楚雄州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2513', '大理州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2514', '德宏州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2515', '怒江州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('2516', '迪庆州', '25', '0');
INSERT INTO `chuanshou_area` VALUES ('26', '贵州省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2601', '贵阳市', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2602', '六盘水市', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2603', '遵义市', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2604', '安顺市', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2605', '铜仁地区', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2606', '毕节地区', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2607', '黔西南州', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2608', '黔东南州', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('2609', '黔南州', '26', '0');
INSERT INTO `chuanshou_area` VALUES ('27', '西藏区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2701', '拉萨市', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2702', '那曲地区', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2703', '昌都地区', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2704', '山南地区', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2705', '日喀则', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2706', '阿里地区', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('2707', '林芝地区', '27', '0');
INSERT INTO `chuanshou_area` VALUES ('28', '甘肃省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2801', '兰州市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2802', '金昌市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2803', '白银市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2804', '天水市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2805', '嘉峪关市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2806', '武威市', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2807', '定西地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2808', '平凉地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2809', '庆阳地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2810', '陇南地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2811', '张掖地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2812', '酒泉地区', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2813', '甘南州', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('2814', '临夏州', '28', '0');
INSERT INTO `chuanshou_area` VALUES ('29', '宁夏区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('2901', '银川市', '29', '0');
INSERT INTO `chuanshou_area` VALUES ('2902', '石嘴山市', '29', '0');
INSERT INTO `chuanshou_area` VALUES ('2903', '吴忠市', '29', '0');
INSERT INTO `chuanshou_area` VALUES ('2904', '固原市', '29', '0');
INSERT INTO `chuanshou_area` VALUES ('30', '青海省', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('3001', '西宁市', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3002', '海东地区', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3003', '海北州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3004', '黄南州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3005', '海南州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3006', '果洛州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3007', '玉树州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('3008', '海西州', '30', '0');
INSERT INTO `chuanshou_area` VALUES ('31', '新疆区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('3101', '乌鲁木齐', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3102', '克拉玛依', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3103', '石河子市', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3104', '吐鲁番', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3105', '哈密地区', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3106', '和田地区', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3107', '阿克苏', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3108', '喀什地区', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3109', '克孜勒苏', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3110', '巴音郭楞', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3111', '昌吉州', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3112', '博尔塔拉', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3113', '伊犁州', '31', '0');
INSERT INTO `chuanshou_area` VALUES ('3117', '东城区', '1', '0');
INSERT INTO `chuanshou_area` VALUES ('32', '香港区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('33', '澳门区', '0', '0');
INSERT INTO `chuanshou_area` VALUES ('35', '台湾省', '0', '0');

-- ----------------------------
-- Table structure for chuanshou_channeltype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_channeltype`;
CREATE TABLE `chuanshou_channeltype` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nid` varchar(20) NOT NULL DEFAULT '',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `maintable` varchar(50) NOT NULL DEFAULT 'chuanshou_archives',
  `addtable` varchar(50) NOT NULL DEFAULT '',
  `addcon` varchar(30) NOT NULL DEFAULT '',
  `mancon` varchar(30) NOT NULL DEFAULT '',
  `editcon` varchar(30) NOT NULL DEFAULT '',
  `useraddcon` varchar(30) NOT NULL DEFAULT '',
  `usermancon` varchar(30) NOT NULL DEFAULT '',
  `usereditcon` varchar(30) NOT NULL DEFAULT '',
  `fieldset` text,
  `listfields` text,
  `allfields` text,
  `issystem` smallint(6) NOT NULL DEFAULT '0',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `arcsta` smallint(6) NOT NULL DEFAULT '-1',
  `usertype` char(10) NOT NULL DEFAULT '',
  `sendrank` smallint(6) NOT NULL DEFAULT '10',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `needdes` tinyint(1) NOT NULL DEFAULT '1',
  `needpic` tinyint(1) NOT NULL DEFAULT '1',
  `titlename` varchar(20) NOT NULL DEFAULT '标题',
  `onlyone` smallint(6) NOT NULL DEFAULT '0',
  `dfcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`,`isshow`,`arcsta`,`sendrank`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_channeltype
-- ----------------------------
INSERT INTO `chuanshou_channeltype` VALUES ('1', 'article', '普通文章', 'chuanshou_archives', 'chuanshou_addonarticle', 'article_add.php', 'content_list.php', 'article_edit.php', 'article_add.php', 'content_list.php', 'article_edit.php', '<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">	\r\n</field:body>	\r\n<field:sou itemname=\"二维码\" autofield=\"1\" notsend=\"0\" type=\"imgfile\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:sou>\r\n', 'body', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `chuanshou_channeltype` VALUES ('2', 'image', '图片集', 'chuanshou_archives', 'chuanshou_addonimages', 'album_add.php', 'content_i_list.php', 'album_edit.php', 'album_add.php', 'content_list.php', 'album_edit.php', '<field:pagestyle itemname=\"页面风格\" type=\"number\" isnull=\"true\" default=\"2\" rename=\"\" notsend=\"1\" />	\n<field:imgurls itemname=\"图片集合\" type=\"img\" isnull=\"true\" default=\"\" rename=\"\" page=\"split\"/>	\n<field:body itemname=\"图集内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\"></field:body>', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `chuanshou_channeltype` VALUES ('3', 'soft', '软件', 'chuanshou_archives', 'chuanshou_addonsoft', 'soft_add.php', 'content_i_list.php', 'soft_edit.php', '', '', '', '<field:filetype islist=\"1\" itemname=\"文件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:language islist=\"1\" itemname=\"语言\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softtype islist=\"1\" itemname=\"软件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:accredit islist=\"1\" itemname=\"授权方式\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:os islist=\"1\" itemname=\"操作系统\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softrank  islist=\"1\" itemname=\"软件等级\" type=\"int\" isnull=\"true\" default=\"3\" rename=\"\" function=\"GetRankStar(@me)\" notsend=\"1\"/>	\n<field:officialUrl  itemname=\"官方网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:officialDemo itemname=\"演示网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softsize  itemname=\"软件大小\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softlinks  itemname=\"软件地址\" type=\"softlinks\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:introduce  itemname=\"详细介绍\" type=\"htmltext\" isnull=\"trnue\" default=\"\" rename=\"\" />	\n<field:daccess islist=\"1\" itemname=\"下载级别\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\"/>	\n<field:needmoney islist=\"1\" itemname=\"需要金币\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\" />', 'filetype,language,softtype,os,accredit,softrank', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `chuanshou_channeltype` VALUES ('-1', 'spec', '专题', 'chuanshou_archives', 'chuanshou_addonspec', 'spec_add.php', 'content_s_list.php', 'spec_edit.php', '', '', '', '<field:note type=\"specialtopic\" isnull=\"true\" default=\"\" rename=\"\"/>', '', '', '1', '1', '0', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `chuanshou_channeltype` VALUES ('6', 'shop', '商品', 'chuanshou_archives', 'chuanshou_addonshop', 'archives_add.php', 'content_list.php', 'archives_edit.php', 'archives_add.php', 'content_list.php', 'archives_edit.php', '<field:body itemname=\"详细介绍\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:price>	\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:trueprice>	\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:brand>	\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:units>	\n\n	\n\n<field:vocation itemname=\"行业\" autofield=\"1\" notsend=\"0\"type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:vocation>	\n\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n\n<field:uptime itemname=\"上架时间\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:uptime>	\n', 'price,trueprice,brand,units', '', '0', '1', '1', '-1', '', '10', '0', '1', '1', '商品名称', '0', '0');
INSERT INTO `chuanshou_channeltype` VALUES ('-8', 'infos', '分类信息', 'chuanshou_archives', 'chuanshou_addoninfos', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', '<field:channel itemname=\"频道id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:channel>	\n<field:arcrank itemname=\"浏览权限\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"5\" page=\"\"></field:arcrank>	\n<field:mid itemname=\"会员id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:mid>	\n<field:click itemname=\"点击\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:click>	\n<field:title itemname=\"标题\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:title>	\n<field:senddate itemname=\"发布时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:senddate>	\n<field:flag itemname=\"推荐属性\" autofield=\"0\" notsend=\"0\" type=\"checkbox\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:flag>	\n<field:litpic itemname=\"缩略图\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:litpic>	\n<field:userip itemname=\"会员IP\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"0\"  maxlength=\"15\" page=\"\"></field:userip>	\n<field:lastpost itemname=\"最后评论时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:lastpost>	\n<field:scores itemname=\"评论积分\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:scores>	\n<field:goodpost itemname=\"好评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:goodpost>	\n<field:badpost itemname=\"差评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:badpost>	\n<field:nativeplace itemname=\"地区\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:nativeplace>	\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n<field:body itemname=\"信息内容\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:body>	\n<field:endtime itemname=\"截止日期\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:endtime>	\n<field:linkman itemname=\"联系人\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:linkman>	\n<field:tel itemname=\"联系电话\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\" maxlength=\"50\" page=\"\">	\n</field:tel>	\n<field:email itemname=\"电子邮箱\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:email>	\n<field:address itemname=\"地址\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"100\" page=\"\">	\n</field:address>	\n', 'channel,arcrank,mid,click,title,senddate,flag,litpic,lastpost,scores,goodpost,badpost,nativeplace,infotype,endtime', '', '-1', '1', '1', '-1', '', '0', '0', '0', '1', '信息标题', '0', '0');

-- ----------------------------
-- Table structure for chuanshou_co_htmls
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_co_htmls`;
CREATE TABLE `chuanshou_co_htmls` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isexport` tinyint(1) NOT NULL DEFAULT '0',
  `result` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `nid` (`nid`),
  KEY `typeid` (`typeid`,`title`,`url`,`dtime`,`isdown`,`isexport`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_co_htmls
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_co_mediaurls
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_co_mediaurls`;
CREATE TABLE `chuanshou_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hash` char(32) NOT NULL DEFAULT '',
  `tofile` char(60) NOT NULL DEFAULT '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_co_mediaurls
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_co_note
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_co_note`;
CREATE TABLE `chuanshou_co_note` (
  `nid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `notename` varchar(50) NOT NULL DEFAULT '',
  `sourcelang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `cotime` int(10) unsigned NOT NULL DEFAULT '0',
  `pnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isok` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `usemore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listconfig` text,
  `itemconfig` text,
  PRIMARY KEY (`nid`),
  KEY `isok` (`isok`,`channelid`,`cotime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_co_note
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_co_onepage
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_co_onepage`;
CREATE TABLE `chuanshou_co_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `issource` smallint(6) NOT NULL DEFAULT '1',
  `lang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `rule` text,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_co_onepage
-- ----------------------------
INSERT INTO `chuanshou_co_onepage` VALUES ('5', 'www.dedecms.com', '织梦网络', '1', 'gb2312', '<div class=\"content\">{@body}<div class=\"cupage\">');
INSERT INTO `chuanshou_co_onepage` VALUES ('4', 'www.techweb.com.cn', 'Techweb', '1', 'gb2312', '<div class=\"content_txt\">{@body}</div>	\n');
INSERT INTO `chuanshou_co_onepage` VALUES ('6', 'tw.news.yahoo.com', '台湾雅虎', '1', 'big5', '<div id=\"ynwsartcontent\">{@body}</div>	\n');

-- ----------------------------
-- Table structure for chuanshou_co_urls
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_co_urls`;
CREATE TABLE `chuanshou_co_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `nid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_co_urls
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_diyform1
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_diyform1`;
CREATE TABLE `chuanshou_diyform1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ifcheck` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `pho` varchar(250) NOT NULL DEFAULT '',
  `cont` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_diyform1
-- ----------------------------
INSERT INTO `chuanshou_diyform1` VALUES ('5', '0', '', '', null);
INSERT INTO `chuanshou_diyform1` VALUES ('4', '0', '', '', null);
INSERT INTO `chuanshou_diyform1` VALUES ('3', '0', '蔡兵兵', '13482486131', '定制小程序');
INSERT INTO `chuanshou_diyform1` VALUES ('6', '0', '刘宏兵', '15705592680', '我们是VR全景制作团队，可以根据景区、商场、酒店餐饮等客户的需求和贵公司合作，提供给你们技术支持，微信同号');
INSERT INTO `chuanshou_diyform1` VALUES ('7', '0', '测试', '18451282643', '18451282643');
INSERT INTO `chuanshou_diyform1` VALUES ('8', '0', '张福彬', '18888739159', '开小程序');
INSERT INTO `chuanshou_diyform1` VALUES ('9', '0', '孙', '15601811117', '小程序');
INSERT INTO `chuanshou_diyform1` VALUES ('10', '0', '吴琦', '13907983971', '足浴小程序');
INSERT INTO `chuanshou_diyform1` VALUES ('11', '0', '刘', '15102180641', '找小程序代理');
INSERT INTO `chuanshou_diyform1` VALUES ('12', '0', '徐启卿', '13818468566', '门店小程序制作与运营咨询');
INSERT INTO `chuanshou_diyform1` VALUES ('13', '0', '周丽华', '13774389669', '详细了解小程序的作用');
INSERT INTO `chuanshou_diyform1` VALUES ('14', '0', '代先生', '13120727272', '做个公司能发布信息。 需要注册了的会员才能看到我发布的信息。  而且我在小程序后台可以看到会员的资料');
INSERT INTO `chuanshou_diyform1` VALUES ('19', '0', '蔡兵兵', '123', '1213');
INSERT INTO `chuanshou_diyform1` VALUES ('18', '0', '蔡兵兵', '18017050817', '小程序');
INSERT INTO `chuanshou_diyform1` VALUES ('20', '0', '测试下', '顶顶顶', '测试的问童子');
INSERT INTO `chuanshou_diyform1` VALUES ('21', '0', '测试下ddddd', '顶顶顶dddd', 'ddddd');
INSERT INTO `chuanshou_diyform1` VALUES ('22', '0', 'fasfasfasfas', '15511551126', 'gddsdfgfdgdfg');
INSERT INTO `chuanshou_diyform1` VALUES ('23', '0', 'cehis1111', '15511551126', 'gddsdfgfdgdfg');
INSERT INTO `chuanshou_diyform1` VALUES ('24', '0', 'shuru', 'gdsfgsgd', 'gsdsdg');
INSERT INTO `chuanshou_diyform1` VALUES ('25', '0', '', '', null);
INSERT INTO `chuanshou_diyform1` VALUES ('26', '0', '', '', null);
INSERT INTO `chuanshou_diyform1` VALUES ('27', '0', '跟对方发的', '覆盖大幅度', '梵蒂冈地方');
INSERT INTO `chuanshou_diyform1` VALUES ('28', '0', '大大', '奥术大师多', '');
INSERT INTO `chuanshou_diyform1` VALUES ('29', '0', '大声道', '大萨达所', '');
INSERT INTO `chuanshou_diyform1` VALUES ('30', '0', '本地测试', '房顶上', '地方');
INSERT INTO `chuanshou_diyform1` VALUES ('31', '0', '本地测试GDSF', '房顶上DFDF', '地方DFDFFD');

-- ----------------------------
-- Table structure for chuanshou_diyform2
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_diyform2`;
CREATE TABLE `chuanshou_diyform2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ifcheck` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `pho` varchar(250) NOT NULL DEFAULT '',
  `cont` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_diyform2
-- ----------------------------
INSERT INTO `chuanshou_diyform2` VALUES ('31', '0', '他羽绒服和法国恢复', '让他热', '瑞特');
INSERT INTO `chuanshou_diyform2` VALUES ('32', '0', '对方所说的', '发送到', '');
INSERT INTO `chuanshou_diyform2` VALUES ('33', '0', '对方所说的', '发送到', '');
INSERT INTO `chuanshou_diyform2` VALUES ('34', '0', 'uiyiyuiui', 'ui与i', '');

-- ----------------------------
-- Table structure for chuanshou_diyforms
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_diyforms`;
CREATE TABLE `chuanshou_diyforms` (
  `diyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `posttemplate` varchar(50) NOT NULL,
  `viewtemplate` varchar(50) NOT NULL,
  `listtemplate` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '',
  `info` text,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`diyid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_diyforms
-- ----------------------------
INSERT INTO `chuanshou_diyforms` VALUES ('1', '留言表单足浴小程序', 'post_diyform1.htm', 'view_diyform1.htm', 'list_diyform1.htm', 'chuanshou_diyform1', '\n<field:name itemname=\"名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:name>\r\n\n<field:pho itemname=\"电话\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pho>\r\n\n<field:cont itemname=\"详细内容\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:cont>\r\n', '1');
INSERT INTO `chuanshou_diyforms` VALUES ('2', '留言表单电商小程序', 'post_diyform2.htm', 'view_diyform2.htm', 'list_diyform2.htm', 'chuanshou_diyform2', '\n<field:name itemname=\"名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:name>\r\n\n<field:pho itemname=\"电话\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pho>\r\n\n<field:cont itemname=\"详细内容\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:cont>\r\n', '1');

-- ----------------------------
-- Table structure for chuanshou_dl_log
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_dl_log`;
CREATE TABLE `chuanshou_dl_log` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(16) NOT NULL,
  `lang` char(6) NOT NULL,
  `dtype` varchar(10) NOT NULL,
  `dltime` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dltime` (`dltime`),
  KEY `dl_ip` (`ip`,`dltime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_dl_log
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_downloads
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_downloads`;
CREATE TABLE `chuanshou_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_downloads
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_erradd
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_erradd`;
CREATE TABLE `chuanshou_erradd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned DEFAULT NULL,
  `title` char(60) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `errtxt` mediumtext,
  `oktxt` mediumtext,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_erradd
-- ----------------------------
INSERT INTO `chuanshou_erradd` VALUES ('1', '0', '0', '', '0', '', '', '1523454427');
INSERT INTO `chuanshou_erradd` VALUES ('2', '0', '0', '', '0', '', '', '1523454428');
INSERT INTO `chuanshou_erradd` VALUES ('3', '0', '0', '', '0', '', '', '1524106911');
INSERT INTO `chuanshou_erradd` VALUES ('4', '0', '0', '', '0', '', '', '1524106912');
INSERT INTO `chuanshou_erradd` VALUES ('5', '0', '0', '', '0', '', '', '1524399439');
INSERT INTO `chuanshou_erradd` VALUES ('6', '0', '0', '', '0', '', '', '1524399440');
INSERT INTO `chuanshou_erradd` VALUES ('7', '0', '0', '', '0', '', '', '1524456363');
INSERT INTO `chuanshou_erradd` VALUES ('8', '0', '0', '', '0', '', '', '1524456363');
INSERT INTO `chuanshou_erradd` VALUES ('9', '0', '0', '', '0', '', '', '1524582090');
INSERT INTO `chuanshou_erradd` VALUES ('10', '0', '0', '', '0', '', '', '1524582090');
INSERT INTO `chuanshou_erradd` VALUES ('11', '0', '0', '', '0', '', '', '1524587942');
INSERT INTO `chuanshou_erradd` VALUES ('12', '0', '0', '', '0', '', '', '1524587943');
INSERT INTO `chuanshou_erradd` VALUES ('13', '0', '0', '', '0', '', '', '1525448905');
INSERT INTO `chuanshou_erradd` VALUES ('14', '0', '0', '', '0', '', '', '1525448906');
INSERT INTO `chuanshou_erradd` VALUES ('15', '0', '0', '', '0', '', '', '1526207080');
INSERT INTO `chuanshou_erradd` VALUES ('16', '0', '0', '', '0', '', '', '1526207080');
INSERT INTO `chuanshou_erradd` VALUES ('17', '0', '0', '', '0', '', '', '1526390704');
INSERT INTO `chuanshou_erradd` VALUES ('18', '0', '0', '', '0', '', '', '1526390704');
INSERT INTO `chuanshou_erradd` VALUES ('19', '0', '0', '', '0', '', '', '1526519861');
INSERT INTO `chuanshou_erradd` VALUES ('20', '0', '0', '', '0', '', '', '1526519861');

-- ----------------------------
-- Table structure for chuanshou_feedback
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_feedback`;
CREATE TABLE `chuanshou_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `arctitle` varchar(60) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bad` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `good` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ftype` set('feedback','good','bad') NOT NULL DEFAULT 'feedback',
  `face` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_flink
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_flink`;
CREATE TABLE `chuanshou_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_flink
-- ----------------------------
INSERT INTO `chuanshou_flink` VALUES ('2', '1', 'http://www.chuanshoucs.cn/', '微信小程序制作', '', '', '', '1226375403', '1', '2');
INSERT INTO `chuanshou_flink` VALUES ('9', '1', 'http://www.chuanshoucs.cn/', '小程序开发', '', '', '', '1227772717', '1', '2');
INSERT INTO `chuanshou_flink` VALUES ('8', '1', 'http://www.chuanshoucs.cn/', '上海小程序制作', '', '', '', '1227772703', '1', '2');

-- ----------------------------
-- Table structure for chuanshou_flinktype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_flinktype`;
CREATE TABLE `chuanshou_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_flinktype
-- ----------------------------
INSERT INTO `chuanshou_flinktype` VALUES ('1', '综合网站');
INSERT INTO `chuanshou_flinktype` VALUES ('2', '娱乐类');
INSERT INTO `chuanshou_flinktype` VALUES ('3', '教育类');
INSERT INTO `chuanshou_flinktype` VALUES ('4', '计算机类');
INSERT INTO `chuanshou_flinktype` VALUES ('5', '电子商务');
INSERT INTO `chuanshou_flinktype` VALUES ('6', '网上信息');
INSERT INTO `chuanshou_flinktype` VALUES ('7', '论坛类');
INSERT INTO `chuanshou_flinktype` VALUES ('8', '其它类型');

-- ----------------------------
-- Table structure for chuanshou_freelist
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_freelist`;
CREATE TABLE `chuanshou_freelist` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `namerule` varchar(50) NOT NULL DEFAULT '',
  `listdir` varchar(60) NOT NULL DEFAULT '',
  `defaultpage` varchar(20) NOT NULL DEFAULT '',
  `nodefault` smallint(6) NOT NULL DEFAULT '0',
  `templet` varchar(50) NOT NULL DEFAULT '',
  `edtime` int(11) NOT NULL DEFAULT '0',
  `maxpage` smallint(5) unsigned NOT NULL DEFAULT '100',
  `click` int(11) NOT NULL DEFAULT '1',
  `listtag` mediumtext,
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_freelist
-- ----------------------------
INSERT INTO `chuanshou_freelist` VALUES ('1', '测试内容', '{listdir}/index_{listid}_{page}.html', '{cmspath}/freelist/', 'index.html', '1', '{style}/list_free.htm', '1289712633', '100', '0', '{dede:list  pagesize=\"30\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\"  typeid=\"1\"  channel=\"1\" }<li>[field:imglink/] [field:textlink/] <span class=info><small>日期：</small>[field:pubdate function=\"getdatemk(@me)\"/] <small>点击：</small>[field:click/] <small>好评：</small>[field:scores/] </span>	\n<p class=intro>[field:description/]...</p></li>{/dede:list}', '阿三大厦大大', '阿三大厦大厦大撒');
INSERT INTO `chuanshou_freelist` VALUES ('10', 'Google SiteMap 生成器', '{listdir}googlemap_{page}.xml', '{cmspath}', 'index.html', '1', '{style}/googlemap.htm', '1226884666', '100', '0', '{dede:list  pagesize=\"500\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\" 	\n channel=\"1\"  keyword=\"\" }<url>	\n   <loc>[field:arcurl function=\"Gmapurl(@me)\"/]</loc> 	\n   <title>[field:title function=\"HtmlReplace(@me)\"/]</title>	\n   <news:news>	\n  <news:keywords>[field:keywords/]</news:keywords>	\n <news:publication_date>[field:senddate function=\"strftime(\"%Y-%m-%d\",@me)\"/]</news:publication_date>	\n </news:news>	\n</url>{/dede:list}', '', '');

-- ----------------------------
-- Table structure for chuanshou_homepageset
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_homepageset`;
CREATE TABLE `chuanshou_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_homepageset
-- ----------------------------
INSERT INTO `chuanshou_homepageset` VALUES ('default/index.htm', '../index.html', '0');

-- ----------------------------
-- Table structure for chuanshou_keywords
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_keywords`;
CREATE TABLE `chuanshou_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(16) NOT NULL DEFAULT '',
  `rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sta` smallint(6) NOT NULL DEFAULT '1',
  `rpurl` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `keyword` (`keyword`,`rank`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_log
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_log`;
CREATE TABLE `chuanshou_log` (
  `lid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `method` char(10) NOT NULL DEFAULT '',
  `query` char(200) NOT NULL DEFAULT '',
  `cip` char(15) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_log
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member`;
CREATE TABLE `chuanshou_member` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtype` varchar(20) NOT NULL DEFAULT '个人',
  `userid` char(20) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `exptime` smallint(6) NOT NULL DEFAULT '0',
  `money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` char(50) NOT NULL DEFAULT '',
  `scores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `matt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spacesta` smallint(6) NOT NULL DEFAULT '0',
  `face` char(50) NOT NULL DEFAULT '',
  `safequestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `safeanswer` char(30) NOT NULL DEFAULT '',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` char(16) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` char(16) NOT NULL DEFAULT '',
  `checkmail` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`mid`),
  KEY `userid` (`userid`,`sex`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member
-- ----------------------------
INSERT INTO `chuanshou_member` VALUES ('1', '个人', 'chuanshou', 'd6d618c66c9bacda996da6283bbaf3ed', 'chuanshou', '男', '100', '0', '0', '0', '', '10000', '10', '0', '', '0', '', '1522727947', '', '1530497106', '180.175.211.7', '-1');

-- ----------------------------
-- Table structure for chuanshou_member_company
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_company`;
CREATE TABLE `chuanshou_member_company` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(36) NOT NULL DEFAULT '',
  `product` varchar(50) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vocation` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cosize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` text,
  `comface` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_company
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_feed
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_feed`;
CREATE TABLE `chuanshou_member_feed` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `type` char(20) CHARACTER SET gb2312 NOT NULL DEFAULT '0',
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(253) NOT NULL,
  `note` char(200) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_feed
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_flink
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_flink`;
CREATE TABLE `chuanshou_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_flink
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_friends
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_friends`;
CREATE TABLE `chuanshou_member_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `floginid` char(20) NOT NULL DEFAULT '',
  `funame` char(36) NOT NULL DEFAULT '',
  `mid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ftype` tinyint(4) NOT NULL DEFAULT '0',
  `groupid` int(8) NOT NULL DEFAULT '1',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_friends
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_group
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_group`;
CREATE TABLE `chuanshou_member_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `mid` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_group
-- ----------------------------
INSERT INTO `chuanshou_member_group` VALUES ('1', '朋友', '0');

-- ----------------------------
-- Table structure for chuanshou_member_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_guestbook`;
CREATE TABLE `chuanshou_member_guestbook` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gid` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`aid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_model
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_model`;
CREATE TABLE `chuanshou_member_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `table` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `issystem` int(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_model
-- ----------------------------
INSERT INTO `chuanshou_member_model` VALUES ('1', '个人', 'chuanshou_member_person', '个人会员模型', '1', '1', '	\n<field:onlynet itemname=\"联系方式限制\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:onlynet>	\n	\n<field:sex itemname=\"性别\" autofield=\"1\" type=\"radio\" isnull=\"true\" default=\"男,女,保密\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:sex>	\n	\n<field:uname itemname=\"昵称/公司名称\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uname>	\n	\n<field:qq itemname=\"QQ\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"12\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:qq>	\n	\n<field:msn itemname=\"MSN\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:msn>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:place itemname=\"目前所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:place>	\n	\n	\n<field:oldplace itemname=\"家乡所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:oldplace>	\n	\n	\n<field:birthday itemname=\"生日\" autofield=\"1\" type=\"datetime\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:birthday>	\n	\n<field:star itemname=\"星座\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:star>	\n	\n<field:income itemname=\"收入\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:income>	\n	\n<field:education itemname=\"学历\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:education>	\n	\n<field:height itemname=\"身高\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"160\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:height>	\n	\n<field:bodytype itemname=\"体重\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:bodytype>	\n	\n<field:blood itemname=\"血型\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:blood>	\n	\n<field:vocation itemname=\"职业\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:smoke itemname=\"吸烟\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:smoke>	\n	\n<field:marital itemname=\"婚姻状况\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:marital>	\n	\n<field:house itemname=\"住房\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:house>	\n	\n<field:drink itemname=\"饮酒\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:drink>	\n	\n<field:datingtype itemname=\"交友\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:datingtype>	\n	\n<field:language itemname=\"语言\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:language>	\n	\n	\n<field:nature itemname=\"性格\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"性格外向,性格内向,活泼开朗,豪放不羁,患得患失,冲动,幽默,稳重,轻浮,沉默寡言,多愁善感,时喜时悲,附庸风雅,能说会道,坚强,脆弱,幼稚,成熟,快言快语,损人利己,狡猾善变,交际广泛,优柔寡断,自私,真诚,独立,依赖,难以琢磨,悲观消极,郁郁寡欢,胆小怕事,乐观向上,任性,自负,自卑,拜金,温柔体贴,小心翼翼,暴力倾向,逆来顺受,不拘小节,暴躁,倔强,豪爽,害羞,婆婆妈妈,敢做敢当,助人为乐,耿直,虚伪,孤僻,老实,守旧,敏感,迟钝,婆婆妈妈,武断,果断,刻薄\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:nature>	\n	\n<field:lovemsg itemname=\"人生格言\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"100\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:lovemsg>	\n	\n<field:address itemname=\"家庭住址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n');
INSERT INTO `chuanshou_member_model` VALUES ('2', '企业', 'chuanshou_member_company', '公司企业会员模型', '1', '1', '	\n<field:company itemname=\"公司名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"36\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:company>	\n	\n<field:product itemname=\"公司产品\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:product>	\n	\n<field:place itemname=\"所在地址\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:place>	\n	\n<field:vocation itemname=\"所属行业\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:cosize itemname=\"公司规模\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:cosize>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:fax itemname=\"传真\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:fax>	\n	\n<field:linkman itemname=\"联系人\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"20\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:linkman>	\n	\n<field:address itemname=\"详细地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:email itemname=\"邮箱\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:email>	\n	\n<field:url itemname=\"地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:url>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n	\n<field:checked itemname=\"是否审核\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"1\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:checked>	\n	\n<field:introduce itemname=\"公司简介\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:introduce>	\n	\n<field:comface itemname=\"公司标志\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"255\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:comface>	\n');

-- ----------------------------
-- Table structure for chuanshou_member_msg
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_msg`;
CREATE TABLE `chuanshou_member_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `id` (`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_msg
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_operation
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_operation`;
CREATE TABLE `chuanshou_member_operation` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `buyid` varchar(80) NOT NULL DEFAULT '',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(10) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL DEFAULT '0',
  `sta` int(11) NOT NULL DEFAULT '0',
  `oldinfo` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `buyid` (`buyid`),
  KEY `pid` (`pid`,`mid`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_operation
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_person
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_person`;
CREATE TABLE `chuanshou_member_person` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `onlynet` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '男',
  `uname` char(30) NOT NULL DEFAULT '',
  `qq` char(12) NOT NULL DEFAULT '',
  `msn` char(50) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `oldplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `star` smallint(6) unsigned NOT NULL DEFAULT '1',
  `income` smallint(6) NOT NULL DEFAULT '0',
  `education` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '160',
  `bodytype` smallint(6) NOT NULL DEFAULT '0',
  `blood` smallint(6) NOT NULL DEFAULT '0',
  `vocation` smallint(6) NOT NULL DEFAULT '0',
  `smoke` smallint(6) NOT NULL DEFAULT '0',
  `marital` smallint(6) NOT NULL DEFAULT '0',
  `house` smallint(6) NOT NULL DEFAULT '0',
  `drink` smallint(6) NOT NULL DEFAULT '0',
  `datingtype` smallint(6) NOT NULL DEFAULT '0',
  `language` set('普通话','上海话','广东话','英语','日语','韩语','法语','意大利语','德语','西班牙语','俄语','阿拉伯语') DEFAULT NULL,
  `nature` set('性格外向','性格内向','活泼开朗','豪放不羁','患得患失','冲动','幽默','稳重','轻浮','沉默寡言','多愁善感','时喜时悲','附庸风雅','能说会道','坚强','脆弱','幼稚','成熟','快言快语','损人利己','狡猾善变','交际广泛','优柔寡断','自私','真诚','独立','依赖','难以琢磨','悲观消极','郁郁寡欢','胆小怕事','乐观向上','任性','自负','自卑','拜金','温柔体贴','小心翼翼','暴力倾向','逆来顺受','不拘小节','暴躁','倔强','豪爽','害羞','婆婆妈妈','敢做敢当','助人为乐','耿直','虚伪','孤僻','老实','守旧','敏感','迟钝','婆婆妈妈','武断','果断','刻薄') DEFAULT NULL,
  `lovemsg` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_person
-- ----------------------------
INSERT INTO `chuanshou_member_person` VALUES ('1', '1', '男', 'chuanshou', '', '', '', '', '0', '0', '1980-01-01', '1', '0', '0', '160', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0');

-- ----------------------------
-- Table structure for chuanshou_member_pms
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_pms`;
CREATE TABLE `chuanshou_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floginid` varchar(20) NOT NULL DEFAULT '',
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tologinid` char(20) NOT NULL DEFAULT '',
  `folder` enum('inbox','outbox') DEFAULT 'inbox',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `message` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_pms
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_snsmsg
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_snsmsg`;
CREATE TABLE `chuanshou_member_snsmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_snsmsg
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_space
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_space`;
CREATE TABLE `chuanshou_member_space` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pagesize` smallint(5) unsigned NOT NULL DEFAULT '10',
  `matt` smallint(6) NOT NULL DEFAULT '0',
  `spacename` varchar(50) NOT NULL DEFAULT '',
  `spacelogo` varchar(50) NOT NULL DEFAULT '',
  `spacestyle` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(100) NOT NULL DEFAULT '没签名',
  `spacenews` text,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_space
-- ----------------------------
INSERT INTO `chuanshou_member_space` VALUES ('1', '10', '0', 'chuanshou的空间', '', 'person', '', '');

-- ----------------------------
-- Table structure for chuanshou_member_stow
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_stow`;
CREATE TABLE `chuanshou_member_stow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_stow
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_member_stowtype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_stowtype`;
CREATE TABLE `chuanshou_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_stowtype
-- ----------------------------
INSERT INTO `chuanshou_member_stowtype` VALUES ('sys', '系统收藏', 'archives_do.php');
INSERT INTO `chuanshou_member_stowtype` VALUES ('book', '小说收藏', '/book/book.php?bid');

-- ----------------------------
-- Table structure for chuanshou_member_tj
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_tj`;
CREATE TABLE `chuanshou_member_tj` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `article` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album` smallint(5) unsigned NOT NULL DEFAULT '0',
  `archives` smallint(5) unsigned NOT NULL DEFAULT '0',
  `homecount` int(10) unsigned NOT NULL DEFAULT '0',
  `pagecount` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soft` int(10) NOT NULL DEFAULT '0',
  `info` int(10) NOT NULL DEFAULT '0',
  `shop` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_tj
-- ----------------------------
INSERT INTO `chuanshou_member_tj` VALUES ('1', '0', '0', '0', '0', '340', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for chuanshou_member_type
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_type`;
CREATE TABLE `chuanshou_member_type` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '30',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_type
-- ----------------------------
INSERT INTO `chuanshou_member_type` VALUES ('1', '50', '中级会员半年', '100', '7');

-- ----------------------------
-- Table structure for chuanshou_member_vhistory
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_member_vhistory`;
CREATE TABLE `chuanshou_member_vhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `loginid` char(20) NOT NULL DEFAULT '',
  `vid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vloginid` char(20) NOT NULL DEFAULT '',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vip` char(15) NOT NULL DEFAULT '',
  `vtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `vtime` (`vtime`),
  KEY `mid` (`mid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_member_vhistory
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_moneycard_record
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_moneycard_record`;
CREATE TABLE `chuanshou_moneycard_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ctid` int(11) NOT NULL DEFAULT '0',
  `cardid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `isexp` smallint(6) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `utime` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `ctid` (`ctid`),
  KEY `cardid` (`cardid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_moneycard_record
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_moneycard_type
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_moneycard_type`;
CREATE TABLE `chuanshou_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_moneycard_type
-- ----------------------------
INSERT INTO `chuanshou_moneycard_type` VALUES ('1', '100', '30', '100点卡');
INSERT INTO `chuanshou_moneycard_type` VALUES ('2', '200', '55', '200点卡');
INSERT INTO `chuanshou_moneycard_type` VALUES ('3', '300', '75', '300点卡');

-- ----------------------------
-- Table structure for chuanshou_mtypes
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_mtypes`;
CREATE TABLE `chuanshou_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtypename` char(40) NOT NULL,
  `channelid` smallint(6) NOT NULL DEFAULT '1',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_mtypes
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_multiserv_config
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_multiserv_config`;
CREATE TABLE `chuanshou_multiserv_config` (
  `remoteuploads` smallint(6) NOT NULL DEFAULT '0',
  `remoteupUrl` text NOT NULL,
  `rminfo` text,
  `servinfo` mediumtext,
  PRIMARY KEY (`remoteuploads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_multiserv_config
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_myad
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_myad`;
CREATE TABLE `chuanshou_myad` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `clsid` smallint(5) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `adname` varchar(60) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_myad
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_myadtype
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_myadtype`;
CREATE TABLE `chuanshou_myadtype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_myadtype
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_mytag
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_mytag`;
CREATE TABLE `chuanshou_mytag` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_mytag
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_news
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_news`;
CREATE TABLE `chuanshou_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_news
-- ----------------------------
INSERT INTO `chuanshou_news` VALUES ('1', 'é€’å››æ–¹é€Ÿé€’', 'æ°´ç”µè´¹æ°´ç”µè´¹');
INSERT INTO `chuanshou_news` VALUES ('2', 'asasafå‘ç”Ÿåœ°æ–¹éƒ½æ˜¯', 'å‘çš„å•¥åœ°æ–¹');
INSERT INTO `chuanshou_news` VALUES ('3', 'è§„åˆ’æ³•è§„å’Œ', 'è‚ºæ ¹åŽæ–¹');
INSERT INTO `chuanshou_news` VALUES ('4', 'å¯¹æ–¹æ°´ç”µè´¹', '4545aaaaå¤§å£°é“');

-- ----------------------------
-- Table structure for chuanshou_payment
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_payment`;
CREATE TABLE `chuanshou_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `fee` varchar(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_payment
-- ----------------------------
INSERT INTO `chuanshou_payment` VALUES ('3', 'alipay', '支付宝', '2', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>DedeCMS联合支付宝推出支付宝接口。<br/><a href=\"https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335994340215837114&market_type=from_agent_contract&pro_codes=6ACD133C5F350958F7F62F29651356BB \" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '1', 'a:4:{s:14:\"alipay_account\";a:4:{s:5:\"title\";s:14:\"支付宝用户账号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:20:\"yuan12345xin@163.com\";}s:10:\"alipay_key\";a:4:{s:5:\"title\";s:14:\"交易安全校验码\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"dsfsdf\";}s:14:\"alipay_partner\";a:4:{s:5:\"title\";s:12:\"合作者身份ID\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"1\";}s:17:\"alipay_pay_method\";a:5:{s:5:\"title\";s:14:\"支付宝账号类型\";s:11:\"description\";s:52:\"请选择您最后一次跟支付宝签订的协议里面说明的接口类型\";s:4:\"type\";s:6:\"select\";s:5:\"iterm\";s:58:\"0:使用标准双接口,1:使用担保交易接口,2:使用即时到帐交易接口\";s:5:\"value\";s:1:\"1\";}}', '1', '0', '1');
INSERT INTO `chuanshou_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称	\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。	\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '4', 'a:0:{}', '1', '1', '0');
INSERT INTO `chuanshou_payment` VALUES ('1', 'cod', '货到付款', '0', '开通城市：×××	\n货到付款区域：×××', '3', 'a:0:{}', '1', '1', '0');
INSERT INTO `chuanshou_payment` VALUES ('6', 'yeepay', 'YeePay易宝', '12', 'YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。<input type=\"button\" name=\"Submit\" value=\"立即注册\" onclick=\"window.open(\"https://www.yeepay.com/selfservice/requestRegister.action\")\" />', '2', 'a:2:{s:10:\"yp_account\";a:4:{s:5:\"title\";s:8:\"商户编号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:2:\"aa\";}s:6:\"yp_key\";a:4:{s:5:\"title\";s:8:\"商户密钥\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:3:\"dsa\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for chuanshou_plus
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_plus`;
CREATE TABLE `chuanshou_plus` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plusname` varchar(30) NOT NULL DEFAULT '',
  `menustring` varchar(200) NOT NULL DEFAULT '',
  `mainurl` varchar(50) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `filelist` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_plus
-- ----------------------------
INSERT INTO `chuanshou_plus` VALUES ('27', '友情链接模块', '<m:item name=\'友情链接\' link=\'friendlink_main.php\' rank=\'plus_友情链接\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `chuanshou_plus` VALUES ('24', '文件管理器', '<m:item name=\'文件管理器\' link=\'file_manage_main.php\' rank=\'plus_文件管理器\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `chuanshou_plus` VALUES ('23', '百度新闻', '<m:item name=\'百度新闻\' link=\'baidunews.php\' rank=\'plus_百度新闻\' target=\'main\' />', '', '织梦团队', '1', 'baidunews.php');
INSERT INTO `chuanshou_plus` VALUES ('28', '投票模块', '<m:item name=\'投票模块\' link=\'vote_main.php\' rank=\'plus_投票模块\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `chuanshou_plus` VALUES ('25', '广告管理', '<m:item name=\'广告管理\' link=\'ad_main.php\' rank=\'plus_广告管理\' target=\'main\' />', '', '织梦官方', '1', '');
INSERT INTO `chuanshou_plus` VALUES ('10', '挑错管理', '<m:item name=\'挑错管理\' link=\'erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />', '', '织梦团队', '1', '<m:item name=\'挑错管理\' link=\'catalog_do.php?dopost=erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />');

-- ----------------------------
-- Table structure for chuanshou_plus_mda_setting
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_plus_mda_setting`;
CREATE TABLE `chuanshou_plus_mda_setting` (
  `skey` varchar(255) NOT NULL DEFAULT '',
  `svalue` text NOT NULL,
  `stime` int(10) NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_plus_mda_setting
-- ----------------------------
INSERT INTO `chuanshou_plus_mda_setting` VALUES ('version', '0.0.1', '0');
INSERT INTO `chuanshou_plus_mda_setting` VALUES ('channel_uuid', '', '0');
INSERT INTO `chuanshou_plus_mda_setting` VALUES ('channel_secret', '', '0');
INSERT INTO `chuanshou_plus_mda_setting` VALUES ('email', '', '0');

-- ----------------------------
-- Table structure for chuanshou_plus_seoinfo
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_plus_seoinfo`;
CREATE TABLE `chuanshou_plus_seoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) DEFAULT NULL,
  `alexa_num` varchar(50) DEFAULT NULL,
  `alexa_area_num` varchar(50) DEFAULT NULL,
  `baidu_count` varchar(50) DEFAULT NULL,
  `sogou_count` varchar(50) DEFAULT NULL,
  `haosou360_count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_plus_seoinfo
-- ----------------------------
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('1', '1522727976', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('2', '1522803050', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('3', '1522889406', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('4', '1522993874', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('5', '1523070881', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('6', '1523148884', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('7', '1523179721', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('8', '1523234622', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('9', '1523265541', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('10', '1523327909', '0', '0', '0', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('11', '1523352554', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('12', '1523409143', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('13', '1523440376', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('14', '1523525273', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('15', '1523582940', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('16', '1524012815', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('17', '1524289539', '0', '0', '1', '0', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('18', '1526712128', '0', '0', '8', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('19', '1529974845', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('20', '1530150578', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('21', '1530177095', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('22', '1530236861', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('23', '1530267623', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('24', '1530341868', '0', '0', '10', '6', '0');
INSERT INTO `chuanshou_plus_seoinfo` VALUES ('25', '1530494113', '0', '0', '10', '6', '0');

-- ----------------------------
-- Table structure for chuanshou_purview
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_purview`;
CREATE TABLE `chuanshou_purview` (
  `mid` mediumint(8) DEFAULT '0',
  `typeid` smallint(5) DEFAULT '0',
  `rank` smallint(6) DEFAULT NULL,
  `pkey` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pvalue` text NOT NULL,
  KEY `pkey` (`pkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_purview
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_pwd_tmp
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_pwd_tmp`;
CREATE TABLE `chuanshou_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `mailtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_pwd_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_ratings
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_ratings`;
CREATE TABLE `chuanshou_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT '0',
  `total_value` int(11) NOT NULL DEFAULT '0',
  `used_ips` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_scores
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_scores`;
CREATE TABLE `chuanshou_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned DEFAULT '0',
  `integral` int(10) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_scores
-- ----------------------------
INSERT INTO `chuanshou_scores` VALUES ('2', '列兵', '1', '0', '1');
INSERT INTO `chuanshou_scores` VALUES ('3', '班长', '2', '1000', '1');
INSERT INTO `chuanshou_scores` VALUES ('4', '少尉', '3', '2000', '1');
INSERT INTO `chuanshou_scores` VALUES ('5', '中尉', '4', '3000', '1');
INSERT INTO `chuanshou_scores` VALUES ('6', '上尉', '5', '4000', '1');
INSERT INTO `chuanshou_scores` VALUES ('7', '少校', '6', '5000', '1');
INSERT INTO `chuanshou_scores` VALUES ('8', '中校', '7', '6000', '1');
INSERT INTO `chuanshou_scores` VALUES ('9', '上校', '8', '9000', '1');
INSERT INTO `chuanshou_scores` VALUES ('10', '少将', '9', '14000', '1');
INSERT INTO `chuanshou_scores` VALUES ('11', '中将', '10', '19000', '1');
INSERT INTO `chuanshou_scores` VALUES ('12', '上将', '11', '24000', '1');
INSERT INTO `chuanshou_scores` VALUES ('15', '大将', '12', '29000', '1');

-- ----------------------------
-- Table structure for chuanshou_search_cache
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_search_cache`;
CREATE TABLE `chuanshou_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `rsnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ids` mediumtext,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_search_cache
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_search_keywords
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_search_keywords`;
CREATE TABLE `chuanshou_search_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL DEFAULT '',
  `spwords` char(50) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_search_keywords
-- ----------------------------
INSERT INTO `chuanshou_search_keywords` VALUES ('1', 'as', 'as', '10', '0', '1526519863', '0', '0');
INSERT INTO `chuanshou_search_keywords` VALUES ('2', 'xxx', 'xxx', '10', '0', '1526519863', '0', '0');

-- ----------------------------
-- Table structure for chuanshou_sgpage
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sgpage`;
CREATE TABLE `chuanshou_sgpage` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `ismake` smallint(6) NOT NULL DEFAULT '1',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `likeid` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `ismake` (`ismake`,`uptime`),
  KEY `likeid` (`likeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sgpage
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_shops_delivery
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_shops_delivery`;
CREATE TABLE `chuanshou_shops_delivery` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `des` char(255) DEFAULT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_shops_delivery
-- ----------------------------
INSERT INTO `chuanshou_shops_delivery` VALUES ('1', '送货上门', '10.21', '送货上门,领取商品时付费.', '0');
INSERT INTO `chuanshou_shops_delivery` VALUES ('2', '特快专递（EMS）', '25.00', '特快专递（EMS）,要另收手续费.', '0');
INSERT INTO `chuanshou_shops_delivery` VALUES ('3', '普通邮递', '5.00', '普通邮递', '0');
INSERT INTO `chuanshou_shops_delivery` VALUES ('4', '邮局快邮', '12.00', '邮局快邮', '0');

-- ----------------------------
-- Table structure for chuanshou_shops_orders
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_shops_orders`;
CREATE TABLE `chuanshou_shops_orders` (
  `oid` varchar(80) NOT NULL,
  `userid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `paytype` tinyint(2) NOT NULL DEFAULT '1',
  `cartcount` int(10) NOT NULL DEFAULT '0',
  `dprice` float(13,2) NOT NULL DEFAULT '0.00',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `priceCount` float(13,2) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  KEY `stime` (`stime`),
  KEY `userid` (`userid`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_shops_orders
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_shops_products
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_shops_products`;
CREATE TABLE `chuanshou_shops_products` (
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `oid` varchar(80) NOT NULL DEFAULT '',
  `userid` int(10) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `buynum` int(10) NOT NULL DEFAULT '9',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_shops_products
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_shops_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_shops_userinfo`;
CREATE TABLE `chuanshou_shops_userinfo` (
  `userid` int(10) NOT NULL,
  `oid` varchar(80) NOT NULL DEFAULT '',
  `consignee` char(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_shops_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_softconfig
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_softconfig`;
CREATE TABLE `chuanshou_softconfig` (
  `downtype` smallint(6) NOT NULL DEFAULT '0',
  `ismoresite` smallint(6) NOT NULL DEFAULT '0',
  `gotojump` smallint(6) NOT NULL DEFAULT '0',
  `islocal` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sites` text,
  `downmsg` text,
  `moresitedo` smallint(5) unsigned NOT NULL DEFAULT '1',
  `dfrank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dfywboy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `argrange` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_softconfig
-- ----------------------------
INSERT INTO `chuanshou_softconfig` VALUES ('0', '1', '1', '1', 'http://www.aaa.com | 镜像地址一	\nhttp://www.bbb.com | 镜像地址二	\nhttp://www.ccc.com | 镜像地址三	\n', '<p>?推荐使用第三方专业下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />	\n?如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />	\n?下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />	\n?如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />	\n?本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。</p>', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for chuanshou_sphinx
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sphinx`;
CREATE TABLE `chuanshou_sphinx` (
  `countid` int(11) unsigned NOT NULL,
  `maxaid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_stepselect
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_stepselect`;
CREATE TABLE `chuanshou_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_stepselect
-- ----------------------------
INSERT INTO `chuanshou_stepselect` VALUES ('1', '血型', 'blood', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('2', '体型', 'bodytype', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('3', '公司规模', 'cosize', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('4', '交友', 'datingtype', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('5', '是否饮酒', 'drink', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('6', '教育程度', 'education', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('7', '住房', 'house', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('8', '收入', 'income', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('9', '婚姻', 'marital', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('10', '是否抽烟', 'smoke', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('11', '星座', 'star', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('12', '系统缓存标识', 'system', '1', '1');
INSERT INTO `chuanshou_stepselect` VALUES ('13', '行业', 'vocation', '2', '0');
INSERT INTO `chuanshou_stepselect` VALUES ('14', '地区', 'nativeplace', '2', '0');
INSERT INTO `chuanshou_stepselect` VALUES ('15', '信息类型', 'infotype', '2', '0');

-- ----------------------------
-- Table structure for chuanshou_sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sysconfig`;
CREATE TABLE `chuanshou_sysconfig` (
  `aid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'string',
  `value` text,
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sysconfig
-- ----------------------------
INSERT INTO `chuanshou_sysconfig` VALUES ('1', 'cfg_basehost', '站点根网址', '1', 'string', 'http://www.chuanshoucs.cn/');
INSERT INTO `chuanshou_sysconfig` VALUES ('2', 'cfg_cmspath', 'DedeCMS安装目录', '2', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('3', 'cfg_cookie_encode', 'cookie加密码', '2', 'string', 'M9hwn3TdwgUW34LWrCfpCT2SobqWpW');
INSERT INTO `chuanshou_sysconfig` VALUES ('4', 'cfg_indexurl', '网页主页链接', '1', 'string', '/');
INSERT INTO `chuanshou_sysconfig` VALUES ('5', 'cfg_backup_dir', '数据备份目录（在data目录内）', '2', 'string', 'backupdata');
INSERT INTO `chuanshou_sysconfig` VALUES ('6', 'cfg_indexname', '主页链接名', '1', 'string', '首页');
INSERT INTO `chuanshou_sysconfig` VALUES ('7', 'cfg_webname', '网站名称', '1', 'string', '小程序开发|小程序制作|上海松江小程序开发公司|电商小程序||足浴小程序开发|小程序制作公司|餐饮小程序开发|传手小程序||花店小程序||水果店小程序小程序|上海申肃网络科技有限公司');
INSERT INTO `chuanshou_sysconfig` VALUES ('8', 'cfg_adminemail', '网站发信EMAIL', '2', 'string', 'admin@dedecms.com');
INSERT INTO `chuanshou_sysconfig` VALUES ('9', 'cfg_html_editor', 'Html编辑器（ckeditor,需要fck的用户可以去官网下载）', '2', 'string', 'ckeditor');
INSERT INTO `chuanshou_sysconfig` VALUES ('10', 'cfg_arcdir', '文档HTML默认保存路径', '1', 'string', '/a');
INSERT INTO `chuanshou_sysconfig` VALUES ('11', 'cfg_medias_dir', '图片/上传文件默认路径', '1', 'string', '/uploads');
INSERT INTO `chuanshou_sysconfig` VALUES ('12', 'cfg_ddimg_width', '缩略图默认宽度', '3', 'number', '240');
INSERT INTO `chuanshou_sysconfig` VALUES ('13', 'cfg_ddimg_height', '缩略图默认高度', '3', 'number', '180');
INSERT INTO `chuanshou_sysconfig` VALUES ('63', 'cfg_album_width', '图集默认显示图片的大小', '3', 'number', '800');
INSERT INTO `chuanshou_sysconfig` VALUES ('15', 'cfg_imgtype', '图片浏览器文件类型', '3', 'string', 'jpg|gif|png');
INSERT INTO `chuanshou_sysconfig` VALUES ('16', 'cfg_softtype', '允许上传的软件类型', '3', 'bstring', 'zip|gz|rar|iso|doc|xsl|ppt|wps');
INSERT INTO `chuanshou_sysconfig` VALUES ('17', 'cfg_mediatype', '允许的多媒体文件类型', '3', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov');
INSERT INTO `chuanshou_sysconfig` VALUES ('18', 'cfg_specnote', '专题的最大节点数', '2', 'number', '6');
INSERT INTO `chuanshou_sysconfig` VALUES ('19', 'cfg_list_symbol', '栏目位置的间隔符号', '2', 'string', ' > ');
INSERT INTO `chuanshou_sysconfig` VALUES ('20', 'cfg_notallowstr', '禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '非典|艾滋病|阳痿');
INSERT INTO `chuanshou_sysconfig` VALUES ('21', 'cfg_feedbackcheck', '评论及留言(是/否)需审核', '5', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('22', 'cfg_keyword_replace', '关键字替换(是/否)使用本功能会影响HTML生成速度', '2', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('23', 'cfg_fck_xhtml', '编辑器(是/否)使用XHTML', '1', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('24', 'cfg_df_style', '模板默认风格', '1', 'string', 'default');
INSERT INTO `chuanshou_sysconfig` VALUES ('25', 'cfg_multi_site', '(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('58', 'cfg_rm_remote', '远程图片本地化', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('27', 'cfg_dede_log', '(是/否)开启管理日志', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('28', 'cfg_powerby', '网站版权信息', '1', 'bstring', 'Copyright &copy; 2002-2017 DEDECMS. 织梦科技 版权所有');
INSERT INTO `chuanshou_sysconfig` VALUES ('722', 'cfg_jump_once', '跳转网址是否直接跳转？（否则显示中转页）', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('723', 'cfg_task_pwd', '系统计划任务客户端许可密码<br/>(需要客户端，通常不会太重要)', '7', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('29', 'cfg_arcsptitle', '(是/否)开启分页标题，开启会影响HTML生成速度', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('30', 'cfg_arcautosp', '(是/否)开启长文章自动分页', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('31', 'cfg_arcautosp_size', '文章自动分页大小（单位: K）', '6', 'number', '5');
INSERT INTO `chuanshou_sysconfig` VALUES ('32', 'cfg_auot_description', '自动摘要长度（0-250，0表示不启用）', '7', 'number', '240');
INSERT INTO `chuanshou_sysconfig` VALUES ('33', 'cfg_ftp_host', 'FTP主机', '2', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('34', 'cfg_ftp_port', 'FTP端口', '2', 'number', '21');
INSERT INTO `chuanshou_sysconfig` VALUES ('35', 'cfg_ftp_user', 'FTP用户名', '2', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('36', 'cfg_ftp_pwd', 'FTP密码', '2', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('37', 'cfg_ftp_root', '网站根在FTP中的目录', '2', 'string', '/');
INSERT INTO `chuanshou_sysconfig` VALUES ('38', 'cfg_ftp_mkdir', '是否强制用FTP创建目录', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('39', 'cfg_feedback_ck', '评论加验证码重确认', '5', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('40', 'cfg_list_son', '上级列表是否包含子类内容', '6', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('41', 'cfg_mb_open', '是否开启会员功能', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('42', 'cfg_mb_album', '是否开启会员图集功能', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('43', 'cfg_mb_upload', '是否允许会员上传非图片附件', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('44', 'cfg_mb_upload_size', '会员上传文件大小(K)', '4', 'number', '1024');
INSERT INTO `chuanshou_sysconfig` VALUES ('45', 'cfg_mb_sendall', '是否开放会员对自定义模型投稿', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('46', 'cfg_mb_rmdown', '是否把会员指定的远程文档下载到本地', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('47', 'cfg_cli_time', '服务器时区设置', '2', 'number', '8');
INSERT INTO `chuanshou_sysconfig` VALUES ('48', 'cfg_mb_addontype', '会员附件许可的类型', '4', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xsl|ppt|wps');
INSERT INTO `chuanshou_sysconfig` VALUES ('49', 'cfg_mb_max', '会员附件总大小限制(MB)', '4', 'number', '500');
INSERT INTO `chuanshou_sysconfig` VALUES ('20', 'cfg_replacestr', '替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '她妈|它妈|他妈|你妈|去死|贱人');
INSERT INTO `chuanshou_sysconfig` VALUES ('719', 'cfg_makeindex', '发布文章后马上更新网站主页', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('51', 'cfg_keyword_like', '使用关键词关连文章', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('52', 'cfg_index_max', '网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可', '6', 'number', '10000');
INSERT INTO `chuanshou_sysconfig` VALUES ('53', 'cfg_index_cache', 'arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)', '6', 'number', '86400');
INSERT INTO `chuanshou_sysconfig` VALUES ('54', 'cfg_tplcache', '是否启用模板缓存', '6', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('55', 'cfg_tplcache_dir', '模板缓存目录', '6', 'string', '/data/tplcache');
INSERT INTO `chuanshou_sysconfig` VALUES ('56', 'cfg_makesign_cache', '发布/修改单个文档是否使用调用缓存', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('59', 'cfg_arc_dellink', '删除非站内链接', '7', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('60', 'cfg_arc_autopic', '提取第一张图片作为缩略图', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('61', 'cfg_arc_autokeyword', '自动提取关键字', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('62', 'cfg_title_maxlen', '文档标题最大长度<br>改此参数后需要手工修改数据表', '7', 'number', '60');
INSERT INTO `chuanshou_sysconfig` VALUES ('64', 'cfg_check_title', '发布文档时是否检测重复标题', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('65', 'cfg_album_row', '图集多行多列样式默认行数', '3', 'number', '3');
INSERT INTO `chuanshou_sysconfig` VALUES ('66', 'cfg_album_col', '图集多行多列样式默认列数', '3', 'number', '4');
INSERT INTO `chuanshou_sysconfig` VALUES ('67', 'cfg_album_pagesize', '图集多页多图每页显示最大数', '3', 'number', '12');
INSERT INTO `chuanshou_sysconfig` VALUES ('68', 'cfg_album_style', '图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表', '3', 'number', '2');
INSERT INTO `chuanshou_sysconfig` VALUES ('69', 'cfg_album_ddwidth', '图集默认缩略图大小', '3', 'number', '200');
INSERT INTO `chuanshou_sysconfig` VALUES ('70', 'cfg_mb_notallow', '不允许注册的会员id', '4', 'bstring', 'www,bbs,ftp,mail,user,users,admin,administrator');
INSERT INTO `chuanshou_sysconfig` VALUES ('71', 'cfg_mb_idmin', '用户id最小长度', '4', 'number', '3');
INSERT INTO `chuanshou_sysconfig` VALUES ('72', 'cfg_mb_pwdmin', '用户密码最小长度', '4', 'number', '3');
INSERT INTO `chuanshou_sysconfig` VALUES ('73', 'cfg_md_idurl', '是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('74', 'cfg_mb_rank', '注册会员默认级别<br>[会员权限管理中]查看级别代表的数字', '4', 'number', '10');
INSERT INTO `chuanshou_sysconfig` VALUES ('76', 'cfg_feedback_time', '两次评论至少间隔时间(秒钟)', '5', 'number', '30');
INSERT INTO `chuanshou_sysconfig` VALUES ('77', 'cfg_feedback_numip', '每个IP一小时内最大评论数', '5', 'number', '30');
INSERT INTO `chuanshou_sysconfig` VALUES ('78', 'cfg_md_mailtest', '是否限制Email只能注册一个帐号', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('79', 'cfg_mb_spacesta', '会员使用权限开通状态<br>(-10 邮件验证 -1 手工审核, 0 没限制)', '4', 'number', '-10');
INSERT INTO `chuanshou_sysconfig` VALUES ('728', 'cfg_mb_allowreg', '是否允许新会员注册', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('729', 'cfg_mb_adminlock', '是否禁止访问管理员帐号的空间', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('81', 'cfg_vdcode_member', '会员投稿是否使用验证码', '5', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('83', 'cfg_mb_cktitle', '会员投稿是否检测重复标题', '5', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('84', 'cfg_mb_editday', '投稿多长时间后不能再修改[天]', '5', 'number', '7');
INSERT INTO `chuanshou_sysconfig` VALUES ('729', 'cfg_sendarc_scores', '投稿可获取积分', '5', 'number', '10');
INSERT INTO `chuanshou_sysconfig` VALUES ('88', 'cfg_caicai_sub', '被踩扣除文章好评度', '5', 'number', '2');
INSERT INTO `chuanshou_sysconfig` VALUES ('89', 'cfg_caicai_add', '被顶扣除文章好评度', '5', 'number', '2');
INSERT INTO `chuanshou_sysconfig` VALUES ('90', 'cfg_feedback_add', '详细好评可获好评度', '5', 'number', '5');
INSERT INTO `chuanshou_sysconfig` VALUES ('91', 'cfg_feedback_sub', '详细恶评扣除好评度', '5', 'number', '5');
INSERT INTO `chuanshou_sysconfig` VALUES ('730', 'cfg_sendfb_scores', '参与评论可获积分', '5', 'number', '3');
INSERT INTO `chuanshou_sysconfig` VALUES ('92', 'cfg_search_max', '最大搜索检查文档数', '6', 'number', '50000');
INSERT INTO `chuanshou_sysconfig` VALUES ('93', 'cfg_search_maxrc', '最大返回搜索结果数', '6', 'number', '300');
INSERT INTO `chuanshou_sysconfig` VALUES ('94', 'cfg_search_time', '搜索间隔时间(秒/对网站所有用户)', '6', 'number', '3');
INSERT INTO `chuanshou_sysconfig` VALUES ('95', 'cfg_baidunews_limit', '百度新闻xml更新新闻数量 最大100', '8', 'string', '100');
INSERT INTO `chuanshou_sysconfig` VALUES ('223', 'cfg_smtp_port', 'smtp服务器端口', '2', 'string', '25');
INSERT INTO `chuanshou_sysconfig` VALUES ('221', 'cfg_sendmail_bysmtp', '是否启用smtp方式发送邮件', '2', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('222', 'cfg_smtp_server', 'smtp服务器', '2', 'string', 'smtp.qq.com');
INSERT INTO `chuanshou_sysconfig` VALUES ('224', 'cfg_smtp_usermail', 'SMTP服务器的用户邮箱', '2', 'string', 'desdev@vip.qq.com');
INSERT INTO `chuanshou_sysconfig` VALUES ('225', 'cfg_smtp_user', 'SMTP服务器的用户帐号', '2', 'string', 'desdev');
INSERT INTO `chuanshou_sysconfig` VALUES ('226', 'cfg_smtp_password', 'SMTP服务器的用户密码', '2', 'string', '7260444huxiao');
INSERT INTO `chuanshou_sysconfig` VALUES ('96', 'cfg_updateperi', '百度新闻xml更新时间 （单位：分钟）', '8', 'string', '15');
INSERT INTO `chuanshou_sysconfig` VALUES ('227', 'cfg_online_type', '在线支付网关类型', '2', 'string', 'nps');
INSERT INTO `chuanshou_sysconfig` VALUES ('706', 'cfg_upload_switch', '删除文章文件同时删除相关附件文件', '2', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('708', 'cfg_rewrite', '是否使用伪静态', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('707', 'cfg_allsearch_limit', '网站全局搜索时间限制', '2', 'string', '1');
INSERT INTO `chuanshou_sysconfig` VALUES ('709', 'cfg_delete', '文章回收站(是/否)开启', '2', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('710', 'cfg_keywords', '站点默认关键字', '1', 'string', '小程序开发|小程序制作|上海松江小程序开发公司|电商小程序||足浴小程序开发|小程序制作公司|餐饮小程序开发|传手小程序||花店小程序||水果店小程序小程序|');
INSERT INTO `chuanshou_sysconfig` VALUES ('711', 'cfg_description', '站点描述', '1', 'bstring', '传手小程序专注及门店小程序开发与制作，小程序开发，小程序制作，上海松江小程序开发公司，足浴小程序开发，小程序制作公司，餐饮小程序开发，微信小程序开发，微信小程序制作，全方位解决微信小程序开发制作服务公司。');
INSERT INTO `chuanshou_sysconfig` VALUES ('712', 'cfg_beian', '网站备案号', '1', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('713', 'cfg_need_typeid2', '是否启用副栏目', '6', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('72', 'cfg_mb_pwdtype', '前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位', '4', 'string', '32');
INSERT INTO `chuanshou_sysconfig` VALUES ('716', 'cfg_cache_type', 'id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)', '6', 'string', 'id');
INSERT INTO `chuanshou_sysconfig` VALUES ('717', 'cfg_max_face', '会员上传头像大小限制(单位：KB)', '3', 'number', '50');
INSERT INTO `chuanshou_sysconfig` VALUES ('718', 'cfg_typedir_df', '栏目网址使用目录名（不显示默认页，即是 /a/abc/ 形式）', '2', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('719', 'cfg_make_andcat', '发表文章后马上更新相关栏目', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('720', 'cfg_make_prenext', '发表文章后马上更新上下篇', '6', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('721', 'cfg_feedback_forbid', '是否禁止所有评论(将包括禁止顶踩等)', '5', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('724', 'cfg_addon_domainbind', '附件目录是否绑定为指定的二级域名', '7', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('725', 'cfg_addon_domain', '附件目录的二级域名', '7', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('726', 'cfg_df_dutyadmin', '默认责任编辑(dutyadmin)', '7', 'string', 'admin');
INSERT INTO `chuanshou_sysconfig` VALUES ('727', 'cfg_mb_allowncarc', '是否允许用户空间显示未审核文章', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('730', 'cfg_mb_spaceallarc', '会员空间中所有文档的频道ID(不限为0)', '4', 'number', '0');
INSERT INTO `chuanshou_sysconfig` VALUES ('731', 'cfg_face_adds', '上传头像增加积分', '5', 'number', '10');
INSERT INTO `chuanshou_sysconfig` VALUES ('732', 'cfg_moreinfo_adds', '填写详细资料增加积分', '5', 'number', '20');
INSERT INTO `chuanshou_sysconfig` VALUES ('733', 'cfg_money_scores', '多少积分可以兑换一个金币', '5', 'number', '50');
INSERT INTO `chuanshou_sysconfig` VALUES ('734', 'cfg_mb_wnameone', '是否允许用户笔名/昵称重复', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('735', 'cfg_arc_dirname', '是否允许用目录作为文档文件名<br />文档命名规则需改为：{typedir}/{aid}/index.html', '7', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('736', 'cfg_puccache_time', '需缓存内容全局缓存时间(秒)', '6', 'number', '36000');
INSERT INTO `chuanshou_sysconfig` VALUES ('737', 'cfg_arc_click', '文档默认点击数(-1表示随机50-200)', '7', 'number', '-1');
INSERT INTO `chuanshou_sysconfig` VALUES ('738', 'cfg_addon_savetype', '附件保存形式(按data函数日期参数)', '3', 'string', 'ymd');
INSERT INTO `chuanshou_sysconfig` VALUES ('739', 'cfg_qk_uploadlit', '异步上传缩略图(空间太不稳定的用户关闭此项)', '3', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('740', 'cfg_login_adds', '登录会员中心获积分', '5', 'number', '2');
INSERT INTO `chuanshou_sysconfig` VALUES ('741', 'cfg_userad_adds', '会员推广获积分', '5', 'number', '10');
INSERT INTO `chuanshou_sysconfig` VALUES ('742', 'cfg_ddimg_full', '缩略图是否使用强制大小(对背景填充)', '3', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('743', 'cfg_ddimg_bgcolor', '缩略图空白背景填充颜色(0-白,1-黑)', '3', 'number', '0');
INSERT INTO `chuanshou_sysconfig` VALUES ('744', 'cfg_replace_num', '文档内容同一关键词替换次数(0为全部替换)', '7', 'number', '2');
INSERT INTO `chuanshou_sysconfig` VALUES ('745', 'cfg_uplitpic_cut', '上传缩略图后是否马上弹出裁剪框', '3', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('746', 'cfg_album_mark', '图集是否使用水印(小图也会受影响)', '3', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('747', 'cfg_mb_feedcheck', '会员动态是否需要审核', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('748', 'cfg_mb_msgischeck', '会员状态是否需要审核', '4', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('749', 'cfg_mb_reginfo', '注册是否需要完成详细资料的填写', '4', 'bool', 'Y');
INSERT INTO `chuanshou_sysconfig` VALUES ('750', 'cfg_remote_site', '是否启用远程站点', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('751', 'cfg_title_site', '是否发布和编辑文档时远程发布(启用远程站点的前提下)', '2', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('752', 'cfg_mysql_type', '数据库类型（支持mysql和mysqli）', '2', 'string', 'mysql');
INSERT INTO `chuanshou_sysconfig` VALUES ('753', 'cfg_sphinx_article', '是否启用文章全文检索功能（需配置sphinx服务器）', '7', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('754', 'cfg_sphinx_host', 'Sphinx服务器主机地址', '7', 'string', 'localhost');
INSERT INTO `chuanshou_sysconfig` VALUES ('755', 'cfg_sphinx_port', 'Sphinx服务器端口号', '7', 'number', '9312');
INSERT INTO `chuanshou_sysconfig` VALUES ('14', 'cfg_domain_cookie', '跨域共享cookie的域名(例如: .dedecms.com)', '2', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('756', 'cfg_memcache_enable', '是否启用memcache缓存，如果为否(N)，默认使用文件缓存', '6', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('757', 'cfg_memcache_mc_defa', '默认memcache缓存服务器地址', '6', 'string', 'memcache://127.0.0.1:11211/default127');
INSERT INTO `chuanshou_sysconfig` VALUES ('758', 'cfg_memcache_mc_oth', '附加memcache缓存服务器地址', '6', 'string', '');
INSERT INTO `chuanshou_sysconfig` VALUES ('759', 'cfg_cross_sectypeid', '支持交叉栏目显示副栏目内容', '7', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('760', 'cfg_digg_update', '顶踩缓存异步更新间隔（0为不缓存）', '6', 'number', '0');
INSERT INTO `chuanshou_sysconfig` VALUES ('761', 'cfg_feedback_guest', '是否允许匿名评论', '5', 'bool', 'N');
INSERT INTO `chuanshou_sysconfig` VALUES ('0', 'cfg_disable_funs', '模板引擎禁用PHP函数', '7', 'bstring', 'phpinfo,eval,exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,file_put_contents');
INSERT INTO `chuanshou_sysconfig` VALUES ('0', 'cfg_disable_tags', '模板引擎禁用标签', '7', 'bstring', 'php');

-- ----------------------------
-- Table structure for chuanshou_sys_enum
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sys_enum`;
CREATE TABLE `chuanshou_sys_enum` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ename` char(30) NOT NULL DEFAULT '',
  `evalue` char(20) NOT NULL DEFAULT '0',
  `egroup` char(20) NOT NULL DEFAULT '',
  `disorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sys_enum
-- ----------------------------
INSERT INTO `chuanshou_sys_enum` VALUES ('139', 'cms制作', '503', 'vocation', '503', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('39', '租房', '1', 'house', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('40', '一房以上', '2', 'house', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('41', '两房以上', '3', 'house', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('42', '大户/别墅', '4', 'house', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('43', '低于1000元', '1', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('44', '1000元以上', '2', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('45', '2000元以上', '3', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('46', '4000元以上', '4', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('47', '8000元以上', '5', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('48', '15000以上', '6', 'income', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('49', '初中以上', '1', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('50', '高中/中专', '2', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('51', '大学专科', '3', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('52', '大学本科', '4', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('53', '硕士', '5', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('54', '博士以上', '6', 'education', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('55', '仅用于判断缓存是否存在', '0', 'system', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('56', '白羊座', '1', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('57', '金牛座', '2', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('58', '双子座', '3', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('59', '巨蟹座', '4', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('60', '狮子座', '5', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('61', '处女座', '6', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('62', '天枰座', '7', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('63', '天蝎座', '8', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('64', '射手座', '9', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('65', '摩羯座', '10', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('66', '水瓶座', '11', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('67', '双鱼座', '12', 'star', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('68', '不吸烟', '1', 'smoke', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('69', '偶尔吸一点', '2', 'smoke', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('70', '抽得很凶', '3', 'smoke', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('71', '不喝酒', '1', 'drink', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('72', '偶尔喝一点', '2', 'drink', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('73', '喝得很凶', '3', 'drink', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('74', 'A', '1', 'blood', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('75', 'B', '2', 'blood', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('76', 'AB', '3', 'blood', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('77', 'O', '4', 'blood', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('78', '未婚', '1', 'marital', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('79', '已婚', '2', 'marital', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('80', '离异', '3', 'marital', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('81', '丧偶', '4', 'marital', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('82', '匀称', '1', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('83', '苗条', '2', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('84', '健壮', '3', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('85', '略胖', '4', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('86', '丰满', '5', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('87', '瘦小', '6', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('88', '高瘦', '7', 'bodytype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('89', '网友', '1', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('90', '恋人', '2', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('91', '玩伴', '3', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('92', '共同兴趣', '4', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('93', '男性朋友', '5', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('94', '女性朋友', '6', 'datingtype', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('95', '50人以下', '1', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('96', '50-200人', '2', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('97', '200-500人', '3', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('98', '500-2000人', '4', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('99', '2000-5000人', '5', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('100', '5000人以上', '6', 'cosize', '0', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('20019', '澳门特别行政区', '17500', 'nativeplace', '17500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('20018', '香港特别行政区', '17000', 'nativeplace', '17000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('20017', '台湾省', '16500', 'nativeplace', '16500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('20016', '图木舒克市', '16015.3', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20015', '阿拉尔市', '16015.2', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20014', '石河子市', '16015.1', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20013', '省直辖行政单位', '16015', 'nativeplace', '16015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('20012', '吉木乃县', '16014.7', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20011', '青河县', '16014.6', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('111', '商品', '500', 'infotype', '500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('112', '租房', '1000', 'infotype', '1000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('113', '交友', '1500', 'infotype', '1500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('114', '招聘', '2000', 'infotype', '2000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('115', '求职', '2500', 'infotype', '2500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('116', '票务', '3000', 'infotype', '3000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('117', '服务', '3500', 'infotype', '3500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('118', '培训', '4000', 'infotype', '4000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('119', '出售', '501', 'infotype', '501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('121', '求购', '502', 'infotype', '502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('122', '交换', '503', 'infotype', '503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('123', '合作', '504', 'infotype', '504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('124', '出租', '1001', 'infotype', '1001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('125', '求租', '1002', 'infotype', '1002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('126', '合租', '1003', 'infotype', '1003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('127', '找帅哥', '1501', 'infotype', '1501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('128', '找美女', '1502', 'infotype', '1502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('129', '纯友谊', '1503', 'infotype', '1503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('130', '玩伴', '1504', 'infotype', '1504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('131', '互联网', '500', 'vocation', '500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('132', '网站制作', '501', 'vocation', '501', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('133', '机械', '1000', 'vocation', '1000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('134', '农业机械', '1001', 'vocation', '1001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('135', '机床', '1002', 'vocation', '1002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('136', '纺织设备和器材', '1003', 'vocation', '1003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('137', '风机/排风设备', '1004', 'vocation', '1004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('138', '虚心', '502', 'vocation', '502', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('140', '模板制作', '503.001', 'vocation', '503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('141', '模块开发', '503.002', 'vocation', '503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('142', '企业网站', '501.001', 'vocation', '501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('143', '门户开发', '501.002', 'vocation', '501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('144', '商业网站', '501.003', 'vocation', '501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('145', '个人博客', '501.004', 'vocation', '501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('166', '化工', '1500', 'vocation', '1500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('147', '松松散散', '502.001', 'vocation', '502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('148', '测试分类', '502.002', 'vocation', '502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('150', '塑料切割机', '1002.001', 'vocation', '1002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('151', '打磨机', '1002.002', 'vocation', '1002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('152', '水货机器', '1002.003', 'vocation', '1002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('153', '自动收割机', '1001.001', 'vocation', '1001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('154', '运输机', '1001.002', 'vocation', '1001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('159', '水货', '2501', 'infotype', '2501', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('160', '水111', '2501.001', 'infotype', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('161', '水222', '2501.002', 'infotype', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('162', '有才', '2502', 'infotype', '2502', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('163', '有才啊啊啊', '2502.001', 'infotype', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('167', '塑料化工', '1501', 'vocation', '1501', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('168', '加工', '1501.001', 'vocation', '1501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('169', '生产', '1501.002', 'vocation', '1501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('170', '物流', '1501.003', 'vocation', '1501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('171', '挨踢工作者', '2000', 'vocation', '2000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('172', '程序员', '2001', 'vocation', '2001', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('173', '美工设计', '2002', 'vocation', '2002', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('174', '前端开发', '2003', 'vocation', '2003', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('175', '配色', '2002.001', 'vocation', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('176', '美学设计', '2002.002', 'vocation', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('178', 'ddddd', '502.003', 'vocation', '502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('179', '学习下', '502.004', 'vocation', '502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20010', '哈巴河县', '16014.5', 'nativeplace', '16015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20009', '福海县', '16014.4', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20008', '富蕴县', '16014.3', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20007', '布尔津县', '16014.2', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20006', '阿勒泰市', '16014.1', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20005', '阿勒泰地区', '16014', 'nativeplace', '16014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('20004', '和布克赛尔蒙古自治县', '16013.7', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20003', '裕民县', '16013.6', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20002', '托里县', '16013.5', 'nativeplace', '16014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20001', '沙湾县', '16013.4', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('20000', '额敏县', '16013.3', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19999', '乌苏市', '16013.2', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19998', '塔城市', '16013.1', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19997', '塔城地区', '16013', 'nativeplace', '16013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19996', '尼勒克县', '16012.10', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19995', '特克斯县', '16012.9', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19994', '昭苏县', '16012.8', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19993', '新源县', '16012.7', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19992', '巩留县', '16012.6', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19991', '霍城县', '16012.5', 'nativeplace', '16013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19990', '察布查尔锡伯自治县', '16012.4', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19989', '伊宁县', '16012.3', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19988', '奎屯市', '16012.2', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19987', '伊宁市', '16012.1', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19986', '伊犁哈萨克自治州', '16012', 'nativeplace', '16012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19985', '民丰县', '16011.8', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19984', '于田县', '16011.7', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19983', '策勒县', '16011.6', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19982', '洛浦县', '16011.5', 'nativeplace', '16012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19981', '皮山县', '16011.4', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19980', '墨玉县', '16011.3', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19979', '和田县', '16011.2', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19978', '和田市', '16011.1', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19977', '和田地区', '16011', 'nativeplace', '16011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19976', '塔什库尔干塔吉克自治县', '16010.12', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19975', '巴楚县', '16010.11', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19974', '伽师县', '16010.10', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19973', '岳普湖县', '16010.9', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19972', '麦盖提县', '16010.8', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19971', '叶城县', '16010.7', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19970', '莎车县', '16010.6', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19969', '泽普县', '16010.5', 'nativeplace', '16011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19968', '英吉沙县', '16010.4', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19967', '疏勒县', '16010.3', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19966', '疏附县', '16010.2', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19965', '喀什市', '16010.1', 'nativeplace', '16010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19964', '喀什地区', '16010', 'nativeplace', '16010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19963', '乌恰县', '16009.4', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19962', '阿合奇县', '16009.3', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19961', '阿克陶县', '16009.2', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19960', '阿图什市', '16009.1', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19959', '克孜勒苏柯尔克孜自治州', '16009', 'nativeplace', '16009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19958', '柯坪县', '16008.9', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19957', '阿瓦提县', '16008.8', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19956', '乌什县', '16008.7', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19955', '拜城县', '16008.6', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19954', '新和县', '16008.5', 'nativeplace', '16009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19953', '沙雅县', '16008.4', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19952', '库车县', '16008.3', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19951', '温宿县', '16008.2', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19950', '阿克苏市', '16008.1', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19949', '阿克苏地区', '16008', 'nativeplace', '16008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19948', '博湖县', '16007.9', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19947', '和硕县', '16007.8', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19946', '和静县', '16007.7', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19945', '焉耆回族自治县', '16007.6', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19944', '且末县', '16007.5', 'nativeplace', '16008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19943', '若羌县', '16007.4', 'nativeplace', '16007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19942', '尉犁县', '16007.3', 'nativeplace', '16007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19941', '轮台县', '16007.2', 'nativeplace', '16007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19940', '库尔勒市', '16007.1', 'nativeplace', '16007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19939', '巴音郭楞蒙古自治州', '16007', 'nativeplace', '16007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19938', '温泉县', '16006.3', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19937', '精河县', '16006.2', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19936', '博乐市', '16006.1', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19935', '博尔塔拉蒙古自治州', '16006', 'nativeplace', '16006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19934', '木垒哈萨克自治县', '16005.8', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19933', '吉木萨尔县', '16005.7', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19932', '奇台县', '16005.6', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19931', '玛纳斯县', '16005.5', 'nativeplace', '16006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19930', '呼图壁县', '16005.4', 'nativeplace', '16005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19929', '米泉市', '16005.3', 'nativeplace', '16005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19928', '阜康市', '16005.2', 'nativeplace', '16005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19927', '昌吉市', '16005.1', 'nativeplace', '16005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19926', '昌吉回族自治州', '16005', 'nativeplace', '16005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19925', '伊吾县', '16004.3', 'nativeplace', '16004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19924', '巴里坤哈萨克自治县', '16004.2', 'nativeplace', '16004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19923', '哈密市', '16004.1', 'nativeplace', '16004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19922', '哈密地区', '16004', 'nativeplace', '16004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19921', '托克逊县', '16003.3', 'nativeplace', '16003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19920', '鄯善县', '16003.2', 'nativeplace', '16003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19919', '吐鲁番市', '16003.1', 'nativeplace', '16003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19918', '吐鲁番地区', '16003', 'nativeplace', '16003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19917', '乌尔禾区', '16002.4', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19916', '白碱滩区', '16002.3', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19915', '克拉玛依区', '16002.2', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19914', '独山子区', '16002.1', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19913', '克拉玛依市', '16002', 'nativeplace', '16002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19912', '乌鲁木齐县', '16001.8', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19911', '东山区', '16001.7', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19910', '达坂城区', '16001.6', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19909', '头屯河区', '16001.5', 'nativeplace', '16002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19908', '水磨沟区', '16001.4', 'nativeplace', '16001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19907', '新市区', '16001.3', 'nativeplace', '16001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19906', '沙依巴克区', '16001.2', 'nativeplace', '16001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19905', '天山区', '16001.1', 'nativeplace', '16001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19904', '乌鲁木齐市', '16001', 'nativeplace', '16001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19903', '新疆维吾尔自治区', '16000', 'nativeplace', '16000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19902', '海原县', '15505.3', 'nativeplace', '15505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19901', '中宁县', '15505.2', 'nativeplace', '15505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19900', '沙坡头区', '15505.1', 'nativeplace', '15505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19899', '中卫市', '15505', 'nativeplace', '15505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19898', '彭阳县', '15504.5', 'nativeplace', '15505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19897', '泾源县', '15504.4', 'nativeplace', '15504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19896', '隆德县', '15504.3', 'nativeplace', '15504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19895', '西吉县', '15504.2', 'nativeplace', '15504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19894', '原州区', '15504.1', 'nativeplace', '15504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19893', '固原市', '15504', 'nativeplace', '15504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19892', '青铜峡市', '15503.4', 'nativeplace', '15503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19891', '同心县', '15503.3', 'nativeplace', '15503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19890', '盐池县', '15503.2', 'nativeplace', '15503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19889', '利通区', '15503.1', 'nativeplace', '15503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19888', '吴忠市', '15503', 'nativeplace', '15503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19887', '平罗县', '15502.3', 'nativeplace', '15502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19886', '惠农区', '15502.2', 'nativeplace', '15502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19885', '大武口区', '15502.1', 'nativeplace', '15502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19884', '石嘴山市', '15502', 'nativeplace', '15502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19883', '灵武市', '15501.6', 'nativeplace', '15502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19882', '贺兰县', '15501.5', 'nativeplace', '15502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19881', '永宁县', '15501.4', 'nativeplace', '15501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19880', '金凤区', '15501.3', 'nativeplace', '15501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19879', '西夏区', '15501.2', 'nativeplace', '15501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19878', '兴庆区', '15501.1', 'nativeplace', '15501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19877', '银川市', '15501', 'nativeplace', '15501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19876', '宁夏回族自治区', '15500', 'nativeplace', '15500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19875', '天峻县', '15008.5', 'nativeplace', '15009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19874', '都兰县', '15008.4', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19873', '乌兰县', '15008.3', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19872', '德令哈市', '15008.2', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19871', '格尔木市', '15008.1', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19870', '海西蒙古族藏族自治州', '15008', 'nativeplace', '15008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19869', '曲麻莱县', '15007.6', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19868', '囊谦县', '15007.5', 'nativeplace', '15008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19867', '治多县', '15007.4', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19866', '称多县', '15007.3', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19865', '杂多县', '15007.2', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19864', '玉树县', '15007.1', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19863', '玉树藏族自治州', '15007', 'nativeplace', '15007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19862', '玛多县', '15006.6', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19861', '久治县', '15006.5', 'nativeplace', '15007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19860', '达日县', '15006.4', 'nativeplace', '15006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19859', '甘德县', '15006.3', 'nativeplace', '15006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19858', '班玛县', '15006.2', 'nativeplace', '15006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19857', '玛沁县', '15006.1', 'nativeplace', '15006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19856', '果洛藏族自治州', '15006', 'nativeplace', '15006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19855', '贵南县', '15005.5', 'nativeplace', '15006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19854', '兴海县', '15005.4', 'nativeplace', '15005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19853', '贵德县', '15005.3', 'nativeplace', '15005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19852', '同德县', '15005.2', 'nativeplace', '15005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19851', '共和县', '15005.1', 'nativeplace', '15005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19850', '海南藏族自治州', '15005', 'nativeplace', '15005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19849', '河南蒙古族自治县', '15004.4', 'nativeplace', '15004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19848', '泽库县', '15004.3', 'nativeplace', '15004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19847', '尖扎县', '15004.2', 'nativeplace', '15004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19846', '同仁县', '15004.1', 'nativeplace', '15004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19845', '黄南藏族自治州', '15004', 'nativeplace', '15004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19844', '刚察县', '15003.4', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19843', '海晏县', '15003.3', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19842', '祁连县', '15003.2', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19841', '门源回族自治县', '15003.1', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19840', '海北藏族自治州', '15003', 'nativeplace', '15003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19839', '循化撒拉族自治县', '15002.6', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19838', '化隆回族自治县', '15002.5', 'nativeplace', '15003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19837', '互助土族自治县', '15002.4', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19836', '乐都县', '15002.3', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19835', '民和回族土族自治县', '15002.2', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19834', '平安县', '15002.1', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19833', '海东地区', '15002', 'nativeplace', '15002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19832', '湟源县', '15001.7', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19831', '湟中县', '15001.6', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19830', '大通回族土族自治县', '15001.5', 'nativeplace', '15002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19829', '城北区', '15001.4', 'nativeplace', '15001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19828', '城西区', '15001.3', 'nativeplace', '15001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19827', '城中区', '15001.2', 'nativeplace', '15001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19826', '城东区', '15001.1', 'nativeplace', '15001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19825', '西宁市', '15001', 'nativeplace', '15001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19824', '青海省', '15000', 'nativeplace', '15000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19823', '夏河县', '14514.8', 'nativeplace', '14515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19822', '碌曲县', '14514.7', 'nativeplace', '14515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19821', '玛曲县', '14514.6', 'nativeplace', '14515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19820', '迭部县', '14514.5', 'nativeplace', '14515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19819', '舟曲县', '14514.4', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19818', '卓尼县', '14514.3', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19817', '临潭县', '14514.2', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19816', '合作市', '14514.1', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19815', '甘南藏族自治州', '14514', 'nativeplace', '14514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19814', '积石山保安族东乡族撒拉族自治县', '14513.8', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19813', '东乡族自治县', '14513.7', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19812', '和政县', '14513.6', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19811', '广河县', '14513.5', 'nativeplace', '14514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19810', '永靖县', '14513.4', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19809', '康乐县', '14513.3', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19808', '临夏县', '14513.2', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19807', '临夏市', '14513.1', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19806', '临夏回族自治州', '14513', 'nativeplace', '14513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19805', '两当县', '14512.9', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19804', '徽　县', '14512.8', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19803', '礼　县', '14512.7', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19802', '西和县', '14512.6', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19801', '康　县', '14512.5', 'nativeplace', '14513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19800', '宕昌县', '14512.4', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19799', '文　县', '14512.3', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19798', '成　县', '14512.2', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19797', '武都区', '14512.1', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19796', '陇南市', '14512', 'nativeplace', '14512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19795', '岷　县', '14511.7', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19794', '漳　县', '14511.6', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19793', '临洮县', '14511.5', 'nativeplace', '14512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19792', '渭源县', '14511.4', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19791', '陇西县', '14511.3', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19790', '通渭县', '14511.2', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19789', '安定区', '14511.1', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19788', '定西市', '14511', 'nativeplace', '14511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19787', '镇原县', '14510.8', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19786', '宁　县', '14510.7', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19785', '正宁县', '14510.6', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19784', '合水县', '14510.5', 'nativeplace', '14511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19783', '华池县', '14510.4', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19782', '环　县', '14510.3', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19781', '庆城县', '14510.2', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19780', '西峰区', '14510.1', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19779', '庆阳市', '14510', 'nativeplace', '14510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19778', '敦煌市', '14509.7', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19777', '玉门市', '14509.6', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19776', '阿克塞哈萨克族自治县', '14509.5', 'nativeplace', '14510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19775', '肃北蒙古族自治县', '14509.4', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19774', '安西县', '14509.3', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19773', '金塔县', '14509.2', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19772', '肃州区', '14509.1', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19771', '酒泉市', '14509', 'nativeplace', '14509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19770', '静宁县', '14508.7', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19769', '庄浪县', '14508.6', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19768', '华亭县', '14508.5', 'nativeplace', '14509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19767', '崇信县', '14508.4', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19766', '灵台县', '14508.3', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19765', '泾川县', '14508.2', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19764', '崆峒区', '14508.1', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19763', '平凉市', '14508', 'nativeplace', '14508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19762', '山丹县', '14507.6', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19761', '高台县', '14507.5', 'nativeplace', '14508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19760', '临泽县', '14507.4', 'nativeplace', '14507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19759', '民乐县', '14507.3', 'nativeplace', '14507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19758', '肃南裕固族自治县', '14507.2', 'nativeplace', '14507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19757', '甘州区', '14507.1', 'nativeplace', '14507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19756', '张掖市', '14507', 'nativeplace', '14507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19755', '天祝藏族自治县', '14506.4', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19754', '古浪县', '14506.3', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19753', '民勤县', '14506.2', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19752', '凉州区', '14506.1', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19751', '武威市', '14506', 'nativeplace', '14506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19750', '张家川回族自治县', '14505.7', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19749', '武山县', '14505.6', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19748', '甘谷县', '14505.5', 'nativeplace', '14506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19747', '秦安县', '14505.4', 'nativeplace', '14505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19746', '清水县', '14505.3', 'nativeplace', '14505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19745', '北道区', '14505.2', 'nativeplace', '14505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19744', '秦城区', '14505.1', 'nativeplace', '14505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19743', '天水市', '14505', 'nativeplace', '14505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19742', '景泰县', '14504.5', 'nativeplace', '14505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19741', '会宁县', '14504.4', 'nativeplace', '14504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19740', '靖远县', '14504.3', 'nativeplace', '14504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19739', '平川区', '14504.2', 'nativeplace', '14504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19738', '白银区', '14504.1', 'nativeplace', '14504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19737', '白银市', '14504', 'nativeplace', '14504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19736', '永昌县', '14503.2', 'nativeplace', '14503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19735', '金川区', '14503.1', 'nativeplace', '14503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19734', '金昌市', '14503', 'nativeplace', '14503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19733', '嘉峪关市', '14502', 'nativeplace', '14502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19732', '榆中县', '14501.8', 'nativeplace', '14502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19731', '皋兰县', '14501.7', 'nativeplace', '14502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19730', '永登县', '14501.6', 'nativeplace', '14502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19729', '红古区', '14501.5', 'nativeplace', '14502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19728', '安宁区', '14501.4', 'nativeplace', '14501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19727', '西固区', '14501.3', 'nativeplace', '14501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19726', '七里河区', '14501.2', 'nativeplace', '14501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19725', '城关区', '14501.1', 'nativeplace', '14501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19724', '兰州市', '14501', 'nativeplace', '14501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19723', '甘肃省', '14500', 'nativeplace', '14500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19722', '柞水县', '14010.7', 'nativeplace', '14011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19721', '镇安县', '14010.6', 'nativeplace', '14011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19720', '山阳县', '14010.5', 'nativeplace', '14011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19719', '商南县', '14010.4', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19718', '丹凤县', '14010.3', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19717', '洛南县', '14010.2', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19716', '商州区', '14010.1', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19715', '商洛市', '14010', 'nativeplace', '14010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19714', '白河县', '14009.10', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19713', '旬阳县', '14009.9', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19712', '镇坪县', '14009.8', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19711', '平利县', '14009.7', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19710', '岚皋县', '14009.6', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19709', '紫阳县', '14009.5', 'nativeplace', '14010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19708', '宁陕县', '14009.4', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19707', '石泉县', '14009.3', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19706', '汉阴县', '14009.2', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19705', '汉滨区', '14009.1', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19704', '安康市', '14009', 'nativeplace', '14009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19703', '子洲县', '14008.12', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19702', '清涧县', '14008.11', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19701', '吴堡县', '14008.10', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19700', '佳　县', '14008.9', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19699', '米脂县', '14008.8', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19698', '绥德县', '14008.7', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19697', '定边县', '14008.6', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19696', '靖边县', '14008.5', 'nativeplace', '14009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19695', '横山县', '14008.4', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19694', '府谷县', '14008.3', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19693', '神木县', '14008.2', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19692', '榆阳区', '14008.1', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19691', '榆林市', '14008', 'nativeplace', '14008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19690', '佛坪县', '14007.11', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19689', '留坝县', '14007.10', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19688', '镇巴县', '14007.9', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19687', '略阳县', '14007.8', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19686', '宁强县', '14007.7', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19685', '勉　县', '14007.6', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19684', '西乡县', '14007.5', 'nativeplace', '14008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19683', '洋　县', '14007.4', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19682', '城固县', '14007.3', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19681', '南郑县', '14007.2', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19680', '汉台区', '14007.1', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19679', '汉中市', '14007', 'nativeplace', '14007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19678', '黄陵县', '14006.13', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19677', '黄龙县', '14006.12', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19676', '宜川县', '14006.11', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19675', '洛川县', '14006.10', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19674', '富　县', '14006.9', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19673', '甘泉县', '14006.8', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19672', '吴旗县', '14006.7', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19671', '志丹县', '14006.6', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19670', '安塞县', '14006.5', 'nativeplace', '14007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19669', '子长县', '14006.4', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19668', '延川县', '14006.3', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19667', '延长县', '14006.2', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19666', '宝塔区', '14006.1', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19665', '延安市', '14006', 'nativeplace', '14006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19664', '华阴市', '14005.11', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19663', '韩城市', '14005.10', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19662', '富平县', '14005.9', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19661', '白水县', '14005.8', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19660', '蒲城县', '14005.7', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19659', '澄城县', '14005.6', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19658', '合阳县', '14005.5', 'nativeplace', '14006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19657', '大荔县', '14005.4', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19656', '潼关县', '14005.3', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19655', '华　县', '14005.2', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19654', '临渭区', '14005.1', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19653', '渭南市', '14005', 'nativeplace', '14005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19652', '兴平市', '14004.14', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19651', '武功县', '14004.13', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19650', '淳化县', '14004.12', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19649', '旬邑县', '14004.11', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19648', '长武县', '14004.10', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19647', '彬　县', '14004.9', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19646', '永寿县', '14004.8', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19645', '礼泉县', '14004.7', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19644', '乾　县', '14004.6', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19643', '泾阳县', '14004.5', 'nativeplace', '14005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19642', '三原县', '14004.4', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19641', '渭城区', '14004.3', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19640', '杨凌区', '14004.2', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19639', '秦都区', '14004.1', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19638', '咸阳市', '14004', 'nativeplace', '14004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19637', '太白县', '14003.12', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19636', '凤　县', '14003.11', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19635', '麟游县', '14003.10', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19634', '千阳县', '14003.9', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19633', '陇　县', '14003.8', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19632', '眉　县', '14003.7', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19631', '扶风县', '14003.6', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19630', '岐山县', '14003.5', 'nativeplace', '14004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19629', '凤翔县', '14003.4', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19628', '陈仓区', '14003.3', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19627', '金台区', '14003.2', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19626', '滨区', '14003.1', 'nativeplace', '14003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19625', '宝鸡市', '14003', 'nativeplace', '14003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19624', '宜君县', '14002.4', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19623', '耀州区', '14002.3', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19622', '印台区', '14002.2', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19621', '王益区', '14002.1', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19620', '铜川市', '14002', 'nativeplace', '14002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19619', '高陵县', '14001.13', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19618', '户　县', '14001.12', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19617', '周至县', '14001.11', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19616', '蓝田县', '14001.10', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19615', '长安区', '14001.9', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19614', '临潼区', '14001.8', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19613', '阎良区', '14001.7', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19612', '雁塔区', '14001.6', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19611', '未央区', '14001.5', 'nativeplace', '14002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19610', '灞桥区', '14001.4', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19609', '莲湖区', '14001.3', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19608', '碑林区', '14001.2', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19607', '新城区', '14001.1', 'nativeplace', '14001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19606', '西安市', '14001', 'nativeplace', '14001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19605', '陕西省', '14000', 'nativeplace', '14000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19604', '朗　县', '13507.7', 'nativeplace', '13508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19603', '察隅县', '13507.6', 'nativeplace', '13508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19602', '波密县', '13507.5', 'nativeplace', '13508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19601', '墨脱县', '13507.4', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19600', '米林县', '13507.3', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19599', '工布江达县', '13507.2', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19598', '林芝县', '13507.1', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19597', '林芝地区', '13507', 'nativeplace', '13507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19596', '措勤县', '13506.7', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19595', '改则县', '13506.6', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19594', '革吉县', '13506.5', 'nativeplace', '13507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19593', '日土县', '13506.4', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19592', '噶尔县', '13506.3', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19591', '札达县', '13506.2', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19590', '普兰县', '13506.1', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19589', '阿里地区', '13506', 'nativeplace', '13506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19588', '尼玛县', '13505.10', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19587', '巴青县', '13505.9', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19586', '班戈县', '13505.8', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19585', '索　县', '13505.7', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19584', '申扎县', '13505.6', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19583', '安多县', '13505.5', 'nativeplace', '13506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19582', '聂荣县', '13505.4', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19581', '比如县', '13505.3', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19580', '嘉黎县', '13505.2', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19579', '那曲县', '13505.1', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19578', '那曲地区', '13505', 'nativeplace', '13505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19577', '岗巴县', '13504.18', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19576', '萨嘎县', '13504.17', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19575', '聂拉木县', '13504.16', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19574', '吉隆县', '13504.15', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19573', '亚东县', '13504.14', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19572', '仲巴县', '13504.13', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19571', '定结县', '13504.12', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19570', '康马县', '13504.11', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19569', '仁布县', '13504.10', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19568', '白朗县', '13504.9', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19567', '谢通门县', '13504.8', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19566', '昂仁县', '13504.7', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19565', '拉孜县', '13504.6', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19564', '萨迦县', '13504.5', 'nativeplace', '13505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19563', '定日县', '13504.4', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19562', '江孜县', '13504.3', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19561', '南木林县', '13504.2', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19560', '日喀则市', '13504.1', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19559', '日喀则地区', '13504', 'nativeplace', '13504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19558', '浪卡子县', '13503.12', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19557', '错那县', '13503.11', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19556', '隆子县', '13503.10', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19555', '加查县', '13503.9', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19554', '洛扎县', '13503.8', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19553', '措美县', '13503.7', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19552', '曲松县', '13503.6', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19551', '琼结县', '13503.5', 'nativeplace', '13504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19550', '桑日县', '13503.4', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19549', '贡嘎县', '13503.3', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19548', '扎囊县', '13503.2', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19547', '乃东县', '13503.1', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19546', '山南地区', '13503', 'nativeplace', '13503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19545', '边坝县', '13502.11', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19544', '洛隆县', '13502.10', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19543', '芒康县', '13502.9', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19542', '左贡县', '13502.8', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19541', '八宿县', '13502.7', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19540', '察雅县', '13502.6', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19539', '丁青县', '13502.5', 'nativeplace', '13503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19538', '类乌齐县', '13502.4', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19537', '贡觉县', '13502.3', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19536', '江达县', '13502.2', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19535', '昌都县', '13502.1', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19534', '昌都地区', '13502', 'nativeplace', '13502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19533', '墨竹工卡县', '13501.8', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19532', '达孜县', '13501.7', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19531', '堆龙德庆县', '13501.6', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19530', '曲水县', '13501.5', 'nativeplace', '13502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19529', '尼木县', '13501.4', 'nativeplace', '13501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19528', '当雄县', '13501.3', 'nativeplace', '13501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19527', '林周县', '13501.2', 'nativeplace', '13501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19526', '城关区', '13501.1', 'nativeplace', '13501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19525', '拉萨市', '13501', 'nativeplace', '13501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19524', '西藏自治区', '13500', 'nativeplace', '13500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19523', '维西傈僳族自治县', '13016.3', 'nativeplace', '13016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19522', '德钦县', '13016.2', 'nativeplace', '13016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19521', '香格里拉县', '13016.1', 'nativeplace', '13016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19520', '迪庆藏族自治州', '13016', 'nativeplace', '13016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19519', '兰坪白族普米族自治县', '13015.4', 'nativeplace', '13015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19518', '贡山独龙族怒族自治县', '13015.3', 'nativeplace', '13015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19517', '福贡县', '13015.2', 'nativeplace', '13015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19516', '泸水县', '13015.1', 'nativeplace', '13015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19515', '怒江傈僳族自治州', '13015', 'nativeplace', '13015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19514', '陇川县', '13014.5', 'nativeplace', '13015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19513', '盈江县', '13014.4', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19512', '梁河县', '13014.3', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19511', '潞西市', '13014.2', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19510', '瑞丽市', '13014.1', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19509', '德宏傣族景颇族自治州', '13014', 'nativeplace', '13014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19508', '鹤庆县', '13013.12', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19507', '剑川县', '13013.11', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19506', '洱源县', '13013.10', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19505', '云龙县', '13013.9', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19504', '永平县', '13013.8', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19503', '巍山彝族回族自治县', '13013.7', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19502', '南涧彝族自治县', '13013.6', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19501', '弥渡县', '13013.5', 'nativeplace', '13014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19500', '宾川县', '13013.4', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19499', '祥云县', '13013.3', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19498', '漾濞彝族自治县', '13013.2', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19497', '大理市', '13013.1', 'nativeplace', '13013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19496', '大理白族自治州', '13013', 'nativeplace', '13013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19495', '勐腊县', '13012.3', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19494', '勐海县', '13012.2', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19493', '景洪市', '13012.1', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19492', '西双版纳傣族自治州', '13012', 'nativeplace', '13012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19491', '富宁县', '13011.8', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19490', '广南县', '13011.7', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19489', '丘北县', '13011.6', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19488', '马关县', '13011.5', 'nativeplace', '13012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19487', '麻栗坡县', '13011.4', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19486', '西畴县', '13011.3', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19485', '砚山县', '13011.2', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19484', '文山县', '13011.1', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19483', '文山壮族苗族自治州', '13011', 'nativeplace', '13011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19482', '河口瑶族自治县', '13010.12', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19481', '绿春县', '13010.11', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19480', '金平苗族瑶族傣族自治县', '13010.10', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19479', '元阳县', '13010.9', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19478', '泸西县', '13010.8', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19477', '弥勒县', '13010.7', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19476', '石屏县', '13010.6', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19475', '建水县', '13010.5', 'nativeplace', '13011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19474', '屏边苗族自治县', '13010.4', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19473', '蒙自县', '13010.3', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19472', '开远市', '13010.2', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19471', '个旧市', '13010.1', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19470', '红河哈尼族彝族自治州', '13010', 'nativeplace', '13010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19469', '禄丰县', '13009.10', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19468', '武定县', '13009.9', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19467', '元谋县', '13009.8', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19466', '永仁县', '13009.7', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19465', '大姚县', '13009.6', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19464', '姚安县', '13009.5', 'nativeplace', '13010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19463', '南华县', '13009.4', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19462', '牟定县', '13009.3', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19461', '双柏县', '13009.2', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19460', '楚雄市', '13009.1', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19459', '楚雄彝族自治州', '13009', 'nativeplace', '13009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19458', '沧源佤族自治县', '13008.8', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19457', '耿马傣族佤族自治县', '13008.7', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19456', '双江拉祜族佤族布朗族傣族自治县', '13008.6', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19455', '镇康县', '13008.5', 'nativeplace', '13009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19454', '永德县', '13008.4', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19453', '云　县', '13008.3', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19452', '凤庆县', '13008.2', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19451', '临翔区', '13008.1', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19450', '临沧市', '13008', 'nativeplace', '13008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19449', '西盟佤族自治县', '13007.10', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19448', '澜沧拉祜族自治县', '13007.9', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19447', '孟连傣族拉祜族佤族自治县', '13007.8', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19446', '江城哈尼族彝族自治县', '13007.7', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19445', '镇沅彝族哈尼族拉祜族自治县', '13007.6', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19444', '景谷傣族彝族自治县', '13007.5', 'nativeplace', '13008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19443', '景东彝族自治县', '13007.4', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19442', '墨江哈尼族自治县', '13007.3', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19441', '普洱哈尼族彝族自治县', '13007.2', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19440', '翠云区', '13007.1', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19439', '思茅市', '13007', 'nativeplace', '13007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19438', '宁蒗彝族自治县', '13006.5', 'nativeplace', '13007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19437', '华坪县', '13006.4', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19436', '永胜县', '13006.3', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19435', '玉龙纳西族自治县', '13006.2', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19434', '古城区', '13006.1', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19433', '丽江市', '13006', 'nativeplace', '13006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19432', '水富县', '13005.11', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19431', '威信县', '13005.10', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19430', '彝良县', '13005.9', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19429', '镇雄县', '13005.8', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19428', '绥江县', '13005.7', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19427', '永善县', '13005.6', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19426', '大关县', '13005.5', 'nativeplace', '13006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19425', '盐津县', '13005.4', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19424', '巧家县', '13005.3', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19423', '鲁甸县', '13005.2', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19422', '昭阳区', '13005.1', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19421', '昭通市', '13005', 'nativeplace', '13005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19420', '昌宁县', '13004.5', 'nativeplace', '13005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19419', '龙陵县', '13004.4', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19418', '腾冲县', '13004.3', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19417', '施甸县', '13004.2', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19416', '隆阳区', '13004.1', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19415', '保山市', '13004', 'nativeplace', '13004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19414', '元江哈尼族彝族傣族自治县', '13003.9', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19413', '新平彝族傣族自治县', '13003.8', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19412', '峨山彝族自治县', '13003.7', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19411', '易门县', '13003.6', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19410', '华宁县', '13003.5', 'nativeplace', '13004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19409', '通海县', '13003.4', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19408', '澄江县', '13003.3', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19407', '江川县', '13003.2', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19406', '红塔区', '13003.1', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19405', '玉溪市', '13003', 'nativeplace', '13003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19404', '宣威市', '13002.9', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19403', '沾益县', '13002.8', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19402', '会泽县', '13002.7', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19401', '富源县', '13002.6', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19400', '罗平县', '13002.5', 'nativeplace', '13003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19399', '师宗县', '13002.4', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19398', '陆良县', '13002.3', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19397', '马龙县', '13002.2', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19396', '麒麟区', '13002.1', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19395', '曲靖市', '13002', 'nativeplace', '13002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19394', '安宁市', '13001.14', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19393', '寻甸回族彝族自治县', '13001.13', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19392', '禄劝彝族苗族自治县', '13001.12', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19391', '嵩明县', '13001.11', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19390', '石林彝族自治县', '13001.10', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19389', '宜良县', '13001.9', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19388', '富民县', '13001.8', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19387', '晋宁县', '13001.7', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19386', '呈贡县', '13001.6', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19385', '东川区', '13001.5', 'nativeplace', '13002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19384', '西山区', '13001.4', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19383', '官渡区', '13001.3', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19382', '盘龙区', '13001.2', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19381', '五华区', '13001.1', 'nativeplace', '13001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19380', '昆明市', '13001', 'nativeplace', '13001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19379', '云南省', '13000', 'nativeplace', '13000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19378', '三都水族自治县', '12509.12', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19377', '惠水县', '12509.11', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19376', '龙里县', '12509.10', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19375', '长顺县', '12509.9', 'nativeplace', '12510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19374', '罗甸县', '12509.8', 'nativeplace', '12510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19373', '平塘县', '12509.7', 'nativeplace', '12510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19372', '独山县', '12509.6', 'nativeplace', '12510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19371', '瓮安县', '12509.5', 'nativeplace', '12510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19370', '贵定县', '12509.4', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19369', '荔波县', '12509.3', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19368', '福泉市', '12509.2', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19367', '都匀市', '12509.1', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19366', '黔南布依族苗族自治州', '12509', 'nativeplace', '12509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19365', '麻江县', '12508.15', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19364', '雷山县', '12508.14', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19363', '从江县', '12508.13', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19362', '榕江县', '12508.12', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19361', '黎平县', '12508.11', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19360', '台江县', '12508.10', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19359', '剑河县', '12508.9', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19358', '锦屏县', '12508.8', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19357', '天柱县', '12508.7', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19356', '岑巩县', '12508.6', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19355', '镇远县', '12508.5', 'nativeplace', '12509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19354', '三穗县', '12508.4', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19353', '施秉县', '12508.3', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19352', '黄平县', '12508.2', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19351', '凯里市', '12508.1', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19350', '黔东南苗族侗族自治州', '12508', 'nativeplace', '12508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19349', '赫章县', '12507.8', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19348', '威宁彝族回族苗族自治县', '12507.7', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19347', '纳雍县', '12507.6', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19346', '织金县', '12507.5', 'nativeplace', '12508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19345', '金沙县', '12507.4', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19344', '黔西县', '12507.3', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19343', '大方县', '12507.2', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19342', '毕节市', '12507.1', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19341', '毕节地区', '12507', 'nativeplace', '12507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19340', '安龙县', '12506.8', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19339', '册亨县', '12506.7', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19338', '望谟县', '12506.6', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19337', '贞丰县', '12506.5', 'nativeplace', '12507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19336', '晴隆县', '12506.4', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19335', '普安县', '12506.3', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19334', '兴仁县', '12506.2', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19333', '兴义市', '12506.1', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19332', '黔西南布依族苗族自治州', '12506', 'nativeplace', '12506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19331', '万山特区', '12505.10', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19330', '松桃苗族自治县', '12505.9', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19329', '沿河土家族自治县', '12505.8', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19328', '德江县', '12505.7', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19327', '印江土家族苗族自治县', '12505.6', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19326', '思南县', '12505.5', 'nativeplace', '12506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19325', '石阡县', '12505.4', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19324', '玉屏侗族自治县', '12505.3', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19323', '江口县', '12505.2', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19322', '铜仁市', '12505.1', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19321', '铜仁地区', '12505', 'nativeplace', '12505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19320', '紫云苗族布依族自治县', '12504.6', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19319', '关岭布依族苗族自治县', '12504.5', 'nativeplace', '12505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19318', '镇宁布依族苗族自治县', '12504.4', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19317', '普定县', '12504.3', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19316', '平坝县', '12504.2', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19315', '西秀区', '12504.1', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19314', '安顺市', '12504', 'nativeplace', '12504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19313', '仁怀市', '12503.14', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19312', '赤水市', '12503.13', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19311', '习水县', '12503.12', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19310', '余庆县', '12503.11', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19309', '湄潭县', '12503.10', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19308', '凤冈县', '12503.9', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19307', '务川仡佬族苗族自治县', '12503.8', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19306', '道真仡佬族苗族自治县', '12503.7', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19305', '正安县', '12503.6', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19304', '绥阳县', '12503.5', 'nativeplace', '12504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19303', '桐梓县', '12503.4', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19302', '遵义县', '12503.3', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19301', '汇川区', '12503.2', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19300', '红花岗区', '12503.1', 'nativeplace', '12503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19299', '遵义市', '12503', 'nativeplace', '12503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19298', '盘　县', '12502.4', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19297', '水城县', '12502.3', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19296', '六枝特区', '12502.2', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19295', '钟山区', '12502.1', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19294', '六盘水市', '12502', 'nativeplace', '12502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19293', '清镇市', '12501.10', 'nativeplace', '12501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19292', '修文县', '12501.9', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19291', '息烽县', '12501.8', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19290', '开阳县', '12501.7', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19289', '小河区', '12501.6', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19288', '白云区', '12501.5', 'nativeplace', '12502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19287', '乌当区', '12501.4', 'nativeplace', '12501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19286', '花溪区', '12501.3', 'nativeplace', '12501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19285', '云岩区', '12501.2', 'nativeplace', '12501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19284', '南明区', '12501.1', 'nativeplace', '12501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19283', '贵阳市', '12501', 'nativeplace', '12501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19282', '贵州省', '12500', 'nativeplace', '12500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19281', '雷波县', '12021.17', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19280', '美姑县', '12021.16', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19279', '甘洛县', '12021.15', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19278', '越西县', '12021.14', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19277', '冕宁县', '12021.13', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19276', '喜德县', '12021.12', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19275', '昭觉县', '12021.11', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19274', '金阳县', '12021.10', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19273', '布拖县', '12021.9', 'nativeplace', '12022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19272', '普格县', '12021.8', 'nativeplace', '12022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19271', '宁南县', '12021.7', 'nativeplace', '12022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19270', '会东县', '12021.6', 'nativeplace', '12022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19269', '会理县', '12021.5', 'nativeplace', '12022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19268', '德昌县', '12021.4', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19267', '盐源县', '12021.3', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19266', '木里藏族自治县', '12021.2', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19265', '西昌市', '12021.1', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19264', '凉山彝族自治州', '12021', 'nativeplace', '12021', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19263', '得荣县', '12020.18', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19262', '稻城县', '12020.17', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19261', '乡城县', '12020.16', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19260', '巴塘县', '12020.15', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19259', '理塘县', '12020.14', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19258', '色达县', '12020.13', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19257', '石渠县', '12020.12', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19256', '白玉县', '12020.11', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19255', '德格县', '12020.10', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19254', '新龙县', '12020.9', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19253', '甘孜县', '12020.8', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19252', '炉霍县', '12020.7', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19251', '道孚县', '12020.6', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19250', '雅江县', '12020.5', 'nativeplace', '12021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19249', '九龙县', '12020.4', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19248', '丹巴县', '12020.3', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19247', '泸定县', '12020.2', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19246', '康定县', '12020.1', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19245', '甘孜藏族自治州', '12020', 'nativeplace', '12020', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19244', '红原县', '12019.13', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19243', '若尔盖县', '12019.12', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19242', '阿坝县', '12019.11', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19241', '壤塘县', '12019.10', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19240', '马尔康县', '12019.9', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19239', '黑水县', '12019.8', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19238', '小金县', '12019.7', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19237', '金川县', '12019.6', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19236', '九寨沟县', '12019.5', 'nativeplace', '12020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19235', '松潘县', '12019.4', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19234', '茂　县', '12019.3', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19233', '理　县', '12019.2', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19232', '汶川县', '12019.1', 'nativeplace', '12019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19231', '阿坝藏族羌族自治州', '12019', 'nativeplace', '12019', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19230', '简阳市', '12018.4', 'nativeplace', '12018', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19229', '乐至县', '12018.3', 'nativeplace', '12018', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19228', '安岳县', '12018.2', 'nativeplace', '12018', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19227', '雁江区', '12018.1', 'nativeplace', '12018', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19226', '资阳市', '12018', 'nativeplace', '12018', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19225', '平昌县', '12017.4', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19224', '南江县', '12017.3', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19223', '通江县', '12017.2', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19222', '巴州区', '12017.1', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19221', '巴中市', '12017', 'nativeplace', '12017', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19220', '宝兴县', '12016.8', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19219', '芦山县', '12016.7', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19218', '天全县', '12016.6', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19217', '石棉县', '12016.5', 'nativeplace', '12017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19216', '汉源县', '12016.4', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19215', '荥经县', '12016.3', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19214', '名山县', '12016.2', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19213', '雨城区', '12016.1', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19212', '雅安市', '12016', 'nativeplace', '12016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19211', '万源市', '12015.7', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19210', '渠　县', '12015.6', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19209', '大竹县', '12015.5', 'nativeplace', '12016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19208', '开江县', '12015.4', 'nativeplace', '12015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19207', '宣汉县', '12015.3', 'nativeplace', '12015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19206', '达　县', '12015.2', 'nativeplace', '12015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19205', '通川区', '12015.1', 'nativeplace', '12015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19204', '达州市', '12015', 'nativeplace', '12015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19203', '华莹市', '12014.5', 'nativeplace', '12015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19202', '邻水县', '12014.4', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19201', '武胜县', '12014.3', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19200', '岳池县', '12014.2', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19199', '广安区', '12014.1', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19198', '广安市', '12014', 'nativeplace', '12014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19197', '屏山县', '12013.10', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19196', '兴文县', '12013.9', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19195', '筠连县', '12013.8', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19194', '珙　县', '12013.7', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19193', '高　县', '12013.6', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19192', '长宁县', '12013.5', 'nativeplace', '12014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19191', '江安县', '12013.4', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19190', '南溪县', '12013.3', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19189', '宜宾县', '12013.2', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19188', '翠屏区', '12013.1', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19187', '宜宾市', '12013', 'nativeplace', '12013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19186', '青神县', '12012.6', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19185', '丹棱县', '12012.5', 'nativeplace', '12013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19184', '洪雅县', '12012.4', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19183', '彭山县', '12012.3', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19182', '仁寿县', '12012.2', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19181', '东坡区', '12012.1', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19180', '眉山市', '12012', 'nativeplace', '12012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19179', '阆中市', '12011.9', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19178', '西充县', '12011.8', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19177', '仪陇县', '12011.7', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19176', '蓬安县', '12011.6', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19175', '营山县', '12011.5', 'nativeplace', '12012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19174', '南部县', '12011.4', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19173', '嘉陵区', '12011.3', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19172', '高坪区', '12011.2', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19171', '顺庆区', '12011.1', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19170', '南充市', '12011', 'nativeplace', '12011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19169', '峨眉山市', '12010.11', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19168', '马边彝族自治县', '12010.10', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19167', '峨边彝族自治县', '12010.9', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19166', '沐川县', '12010.8', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19165', '夹江县', '12010.7', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19164', '井研县', '12010.6', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19163', '犍为县', '12010.5', 'nativeplace', '12011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19162', '金口河区', '12010.4', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19161', '五通桥区', '12010.3', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19160', '沙湾区', '12010.2', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19159', '市中区', '12010.1', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19158', '乐山市', '12010', 'nativeplace', '12010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19157', '隆昌县', '12009.5', 'nativeplace', '12010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19156', '资中县', '12009.4', 'nativeplace', '12009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19155', '威远县', '12009.3', 'nativeplace', '12009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19154', '东兴区', '12009.2', 'nativeplace', '12009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19153', '市中区', '12009.1', 'nativeplace', '12009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19152', '内江市', '12009', 'nativeplace', '12009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19151', '大英县', '12008.5', 'nativeplace', '12009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19150', '射洪县', '12008.4', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19149', '蓬溪县', '12008.3', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19148', '安居区', '12008.2', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19147', '船山区', '12008.1', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19146', '遂宁市', '12008', 'nativeplace', '12008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19145', '苍溪县', '12007.7', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19144', '剑阁县', '12007.6', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19143', '青川县', '12007.5', 'nativeplace', '12008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19142', '旺苍县', '12007.4', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19141', '朝天区', '12007.3', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19140', '元坝区', '12007.2', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19139', '市中区', '12007.1', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19138', '广元市', '12007', 'nativeplace', '12007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19137', '江油市', '12006.9', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19136', '平武县', '12006.8', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19135', '北川羌族自治县', '12006.7', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19134', '梓潼县', '12006.6', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19133', '安　县', '12006.5', 'nativeplace', '12007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19132', '盐亭县', '12006.4', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19131', '三台县', '12006.3', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19130', '游仙区', '12006.2', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19129', '涪城区', '12006.1', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19128', '绵阳市', '12006', 'nativeplace', '12006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19127', '绵竹市', '12005.6', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19126', '什邡市', '12005.5', 'nativeplace', '12006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19125', '广汉市', '12005.4', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19124', '罗江县', '12005.3', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19123', '中江县', '12005.2', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19122', '旌阳区', '12005.1', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19121', '德阳市', '12005', 'nativeplace', '12005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19120', '古蔺县', '12004.7', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19119', '叙永县', '12004.6', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19118', '合江县', '12004.5', 'nativeplace', '12005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19117', '泸　县', '12004.4', 'nativeplace', '12004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19116', '龙马潭区', '12004.3', 'nativeplace', '12004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19115', '纳溪区', '12004.2', 'nativeplace', '12004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19114', '江阳区', '12004.1', 'nativeplace', '12004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19113', '泸州市', '12004', 'nativeplace', '12004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19112', '盐边县', '12003.5', 'nativeplace', '12004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19111', '米易县', '12003.4', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19110', '仁和区', '12003.3', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19109', '西　区', '12003.2', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19108', '东　区', '12003.1', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19107', '攀枝花市', '12003', 'nativeplace', '12003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19106', '富顺县', '12002.6', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19105', '荣　县', '12002.5', 'nativeplace', '12003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19104', '沿滩区', '12002.4', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19103', '大安区', '12002.3', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19102', '贡井区', '12002.2', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19101', '自流井区', '12002.1', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19100', '自贡市', '12002', 'nativeplace', '12002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19099', '崇州市', '12001.19', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19098', '邛崃市', '12001.18', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19097', '彭州市', '12001.17', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19096', '都江堰市', '12001.16', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19095', '新津县', '12001.15', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19094', '蒲江县', '12001.14', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19093', '大邑县', '12001.13', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19092', '郫　县', '12001.12', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19091', '双流县', '12001.11', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19090', '金堂县', '12001.10', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19089', '温江区', '12001.9', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19088', '新都区', '12001.8', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19087', '青白江区', '12001.7', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19086', '龙泉驿区', '12001.6', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19085', '成华区', '12001.5', 'nativeplace', '12002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19084', '武侯区', '12001.4', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19083', '金牛区', '12001.3', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19082', '青羊区', '12001.2', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19081', '锦江区', '12001.1', 'nativeplace', '12001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19080', '成都市', '12001', 'nativeplace', '12001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19079', '四川省', '12000', 'nativeplace', '12000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19078', '南川市', '11540', 'nativeplace', '11540', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19077', '永川市', '11539', 'nativeplace', '11539', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19076', '合川市', '11538', 'nativeplace', '11538', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19075', '江津市', '11537', 'nativeplace', '11537', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19074', '彭水苗族土家族自治县', '11536', 'nativeplace', '11536', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19073', '酉阳土家族苗族自治县', '11535', 'nativeplace', '11535', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19072', '秀山土家族苗族自治县', '11534', 'nativeplace', '11534', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19071', '石柱土家族自治县', '11533', 'nativeplace', '11533', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19070', '巫溪县', '11532', 'nativeplace', '11532', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19069', '巫山县', '11531', 'nativeplace', '11531', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19068', '奉节县', '11530', 'nativeplace', '11530', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19067', '云阳县', '11529', 'nativeplace', '11529', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19066', '开　县', '11528', 'nativeplace', '11528', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19065', '忠　县', '11527', 'nativeplace', '11527', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19064', '武隆县', '11526', 'nativeplace', '11526', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19063', '垫江县', '11525', 'nativeplace', '11525', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19062', '丰都县', '11524', 'nativeplace', '11524', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19061', '城口县', '11523', 'nativeplace', '11523', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19060', '梁平县', '11522', 'nativeplace', '11522', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19059', '璧山县', '11521', 'nativeplace', '11521', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19058', '荣昌县', '11520', 'nativeplace', '11520', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19057', '大足县', '11519', 'nativeplace', '11519', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19056', '铜梁县', '11518', 'nativeplace', '11518', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19055', '潼南县', '11517', 'nativeplace', '11517', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19054', '綦江县', '11516', 'nativeplace', '11516', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19053', '长寿区', '11515', 'nativeplace', '11515', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19052', '黔江区', '11514', 'nativeplace', '11514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19051', '巴南区', '11513', 'nativeplace', '11513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19050', '渝北区', '11512', 'nativeplace', '11512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19049', '双桥区', '11511', 'nativeplace', '11511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19048', '万盛区', '11510', 'nativeplace', '11510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19047', '北碚区', '11509', 'nativeplace', '11509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19046', '南岸区', '11508', 'nativeplace', '11508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19045', '九龙坡区', '11507', 'nativeplace', '11507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19044', '沙坪坝区', '11506', 'nativeplace', '11506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19043', '江北区', '11505', 'nativeplace', '11505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19042', '大渡口区', '11504', 'nativeplace', '11504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19041', '渝中区', '11503', 'nativeplace', '11503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19040', '涪陵区', '11502', 'nativeplace', '11502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19039', '万州区', '11501', 'nativeplace', '11501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19038', '重庆市', '11500', 'nativeplace', '11500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19037', '中沙群岛的岛礁及其海域', '11003.19', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19036', '南沙群岛', '11003.18', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19035', '西沙群岛', '11003.17', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19034', '琼中黎族苗族自治县', '11003.16', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19033', '保亭黎族苗族自治县', '11003.15', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19032', '陵水黎族自治县', '11003.14', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19031', '乐东黎族自治县', '11003.13', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19030', '昌江黎族自治县', '11003.12', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19029', '白沙黎族自治县', '11003.11', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19028', '临高县', '11003.10', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19027', '澄迈县', '11003.9', 'nativeplace', '11004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19026', '屯昌县', '11003.8', 'nativeplace', '11004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19025', '定安县', '11003.7', 'nativeplace', '11004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19024', '东方市', '11003.6', 'nativeplace', '11004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19023', '万宁市', '11003.5', 'nativeplace', '11004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19022', '文昌市', '11003.4', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19021', '儋州市', '11003.3', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19020', '琼海市', '11003.2', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19019', '五指山市', '11003.1', 'nativeplace', '11003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19018', '省直辖县级行政单位', '11003', 'nativeplace', '11003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19017', '三亚市', '11002', 'nativeplace', '11002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19016', '美兰区', '11001.4', 'nativeplace', '11001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19015', '琼山区', '11001.3', 'nativeplace', '11001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19014', '龙华区', '11001.2', 'nativeplace', '11001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19013', '秀英区', '11001.1', 'nativeplace', '11001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19012', '海口市', '11001', 'nativeplace', '11001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19011', '海南省', '11000', 'nativeplace', '11000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('19010', '凭祥市', '10514.7', 'nativeplace', '10515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19009', '天等县', '10514.6', 'nativeplace', '10515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19008', '大新县', '10514.5', 'nativeplace', '10515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19007', '龙州县', '10514.4', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19006', '宁明县', '10514.3', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19005', '扶绥县', '10514.2', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19004', '江洲区', '10514.1', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19003', '崇左市', '10514', 'nativeplace', '10514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('19002', '合山市', '10513.6', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19001', '金秀瑶族自治县', '10513.5', 'nativeplace', '10514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('19000', '武宣县', '10513.4', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18999', '象州县', '10513.3', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18998', '忻城县', '10513.2', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18997', '兴宾区', '10513.1', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18996', '来宾市', '10513', 'nativeplace', '10513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18995', '宜州市', '10512.11', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18994', '大化瑶族自治县', '10512.10', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18993', '都安瑶族自治县', '10512.9', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18992', '巴马瑶族自治县', '10512.8', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18991', '环江毛南族自治县', '10512.7', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18990', '罗城仫佬族自治县', '10512.6', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18989', '东兰县', '10512.5', 'nativeplace', '10513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18988', '凤山县', '10512.4', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18987', '天峨县', '10512.3', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18986', '南丹县', '10512.2', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18985', '金城江区', '10512.1', 'nativeplace', '10512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18984', '河池市', '10512', 'nativeplace', '10512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18983', '富川瑶族自治县', '10511.4', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18982', '钟山县', '10511.3', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18981', '昭平县', '10511.2', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18980', '八步区', '10511.1', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18979', '贺州市', '10511', 'nativeplace', '10511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18978', '隆林各族自治县', '10510.12', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18977', '西林县', '10510.11', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18976', '田林县', '10510.10', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18975', '乐业县', '10510.9', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18974', '凌云县', '10510.8', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18973', '那坡县', '10510.7', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18972', '靖西县', '10510.6', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18971', '德保县', '10510.5', 'nativeplace', '10511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18970', '平果县', '10510.4', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18969', '田东县', '10510.3', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18968', '田阳县', '10510.2', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18967', '右江区', '10510.1', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18966', '百色市', '10510', 'nativeplace', '10510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18965', '北流市', '10509.6', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18964', '兴业县', '10509.5', 'nativeplace', '10510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18963', '博白县', '10509.4', 'nativeplace', '10509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18962', '陆川县', '10509.3', 'nativeplace', '10509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18961', '容　县', '10509.2', 'nativeplace', '10509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18960', '玉州区', '10509.1', 'nativeplace', '10509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18959', '玉林市', '10509', 'nativeplace', '10509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18958', '桂平市', '10508.5', 'nativeplace', '10509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18957', '平南县', '10508.4', 'nativeplace', '10508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18956', '覃塘区', '10508.3', 'nativeplace', '10508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18955', '港南区', '10508.2', 'nativeplace', '10508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18954', '港北区', '10508.1', 'nativeplace', '10508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18953', '贵港市', '10508', 'nativeplace', '10508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18952', '浦北县', '10507.4', 'nativeplace', '10507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18951', '灵山县', '10507.3', 'nativeplace', '10507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18950', '钦北区', '10507.2', 'nativeplace', '10507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18949', '钦南区', '10507.1', 'nativeplace', '10507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18948', '钦州市', '10507', 'nativeplace', '10507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18947', '东兴市', '10506.4', 'nativeplace', '10506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18946', '上思县', '10506.3', 'nativeplace', '10506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18945', '防城区', '10506.2', 'nativeplace', '10506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18944', '港口区', '10506.1', 'nativeplace', '10506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18943', '防城港市', '10506', 'nativeplace', '10506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18942', '合浦县', '10505.4', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18941', '铁山港区', '10505.3', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18940', '银海区', '10505.2', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18939', '海城区', '10505.1', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18938', '北海市', '10505', 'nativeplace', '10505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18937', '岑溪市', '10504.7', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18936', '蒙山县', '10504.6', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18935', '藤　县', '10504.5', 'nativeplace', '10505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18934', '苍梧县', '10504.4', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18933', '长洲区', '10504.3', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18932', '蝶山区', '10504.2', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18931', '万秀区', '10504.1', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18930', '梧州市', '10504', 'nativeplace', '10504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18929', '恭城瑶族自治县', '10503.17', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18928', '荔蒲县', '10503.16', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18927', '平乐县', '10503.15', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18926', '资源县', '10503.14', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18925', '龙胜各族自治县', '10503.13', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18924', '灌阳县', '10503.12', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18923', '永福县', '10503.11', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18922', '兴安县', '10503.10', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18921', '全州县', '10503.9', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18920', '灵川县', '10503.8', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18919', '临桂县', '10503.7', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18918', '阳朔县', '10503.6', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18917', '雁山区', '10503.5', 'nativeplace', '10504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18916', '七星区', '10503.4', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18915', '象山区', '10503.3', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18914', '叠彩区', '10503.2', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18913', '秀峰区', '10503.1', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18912', '桂林市', '10503', 'nativeplace', '10503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18911', '三江侗族自治县', '10502.10', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18910', '融水苗族自治县', '10502.9', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18909', '融安县', '10502.8', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18908', '鹿寨县', '10502.7', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18907', '柳城县', '10502.6', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18906', '柳江县', '10502.5', 'nativeplace', '10503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18905', '柳北区', '10502.4', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18904', '柳南区', '10502.3', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18903', '鱼峰区', '10502.2', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18902', '城中区', '10502.1', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18901', '柳州市', '10502', 'nativeplace', '10502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18900', '横　县', '10501.12', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18899', '宾阳县', '10501.11', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18898', '上林县', '10501.10', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18897', '马山县', '10501.9', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18896', '隆安县', '10501.8', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18895', '武鸣县', '10501.7', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18894', '邕宁区', '10501.6', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18893', '良庆区', '10501.5', 'nativeplace', '10502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18892', '西乡塘区', '10501.4', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18891', '江南区', '10501.3', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18890', '青秀区', '10501.2', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18889', '兴宁区', '10501.1', 'nativeplace', '10501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18888', '南宁市', '10501', 'nativeplace', '10501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18887', '广西壮族自治区', '10500', 'nativeplace', '10500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18886', '罗定市', '10021.5', 'nativeplace', '10022', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18885', '云安县', '10021.4', 'nativeplace', '10021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18884', '郁南县', '10021.3', 'nativeplace', '10021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18883', '新兴县', '10021.2', 'nativeplace', '10021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18882', '云城区', '10021.1', 'nativeplace', '10021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18881', '云浮市', '10021', 'nativeplace', '10021', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18880', '普宁市', '10020.5', 'nativeplace', '10021', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18879', '惠来县', '10020.4', 'nativeplace', '10020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18878', '揭西县', '10020.3', 'nativeplace', '10020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18877', '揭东县', '10020.2', 'nativeplace', '10020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18876', '榕城区', '10020.1', 'nativeplace', '10020', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18875', '揭阳市', '10020', 'nativeplace', '10020', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18874', '饶平县', '10019.2', 'nativeplace', '10019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18873', '潮安县', '10019.1', 'nativeplace', '10019', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18872', '潮州市', '10019', 'nativeplace', '10019', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18871', '中山市', '10018', 'nativeplace', '10018', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18870', '东莞市', '10017', 'nativeplace', '10017', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18869', '连州市', '10016.8', 'nativeplace', '10017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18868', '英德市', '10016.7', 'nativeplace', '10017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18867', '清新县', '10016.6', 'nativeplace', '10017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18866', '连南瑶族自治县', '10016.5', 'nativeplace', '10017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18865', '连山壮族瑶族自治县', '10016.4', 'nativeplace', '10016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18864', '阳山县', '10016.3', 'nativeplace', '10016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18863', '佛冈县', '10016.2', 'nativeplace', '10016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18862', '清城区', '10016.1', 'nativeplace', '10016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18861', '清远市', '10016', 'nativeplace', '10016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18860', '阳春市', '10015.4', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18859', '阳东县', '10015.3', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18858', '阳西县', '10015.2', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18857', '江城区', '10015.1', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18856', '阳江市', '10015', 'nativeplace', '10015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18855', '东源县', '10014.6', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18854', '和平县', '10014.5', 'nativeplace', '10015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18853', '连平县', '10014.4', 'nativeplace', '10014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18852', '龙川县', '10014.3', 'nativeplace', '10014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18851', '紫金县', '10014.2', 'nativeplace', '10014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18850', '源城区', '10014.1', 'nativeplace', '10014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18849', '河源市', '10014', 'nativeplace', '10014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18848', '陆丰市', '10013.4', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18847', '陆河县', '10013.3', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18846', '海丰县', '10013.2', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18845', '城　区', '10013.1', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18844', '汕尾市', '10013', 'nativeplace', '10013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18843', '兴宁市', '10012.8', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18842', '蕉岭县', '10012.7', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18841', '平远县', '10012.6', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18840', '五华县', '10012.5', 'nativeplace', '10013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18839', '丰顺县', '10012.4', 'nativeplace', '10012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18838', '大埔县', '10012.3', 'nativeplace', '10012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18837', '梅　县', '10012.2', 'nativeplace', '10012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18836', '梅江区', '10012.1', 'nativeplace', '10012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18835', '梅州市', '10012', 'nativeplace', '10012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18834', '龙门县', '10011.5', 'nativeplace', '10012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18833', '惠东县', '10011.4', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18832', '博罗县', '10011.3', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18831', '惠阳区', '10011.2', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18830', '惠城区', '10011.1', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18829', '惠州市', '10011', 'nativeplace', '10011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18828', '四会市', '10010.8', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18827', '高要市', '10010.7', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18826', '德庆县', '10010.6', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18825', '封开县', '10010.5', 'nativeplace', '10011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18824', '怀集县', '10010.4', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18823', '广宁县', '10010.3', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18822', '鼎湖区', '10010.2', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18821', '端州区', '10010.1', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18820', '肇庆市', '10010', 'nativeplace', '10010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18819', '信宜市', '10009.6', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18818', '化州市', '10009.5', 'nativeplace', '10010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18817', '高州市', '10009.4', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18816', '电白县', '10009.3', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18815', '茂港区', '10009.2', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18814', '茂南区', '10009.1', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18813', '茂名市', '10009', 'nativeplace', '10009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18812', '吴川市', '10008.9', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18811', '雷州市', '10008.8', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18810', '廉江市', '10008.7', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18809', '徐闻县', '10008.6', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18808', '遂溪县', '10008.5', 'nativeplace', '10009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18807', '麻章区', '10008.4', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18806', '坡头区', '10008.3', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18805', '霞山区', '10008.2', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18804', '赤坎区', '10008.1', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18803', '湛江市', '10008', 'nativeplace', '10008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18802', '恩平市', '10007.7', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18801', '鹤山市', '10007.6', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18800', '开平市', '10007.5', 'nativeplace', '10008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18799', '台山市', '10007.4', 'nativeplace', '10007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18798', '新会区', '10007.3', 'nativeplace', '10007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18797', '江海区', '10007.2', 'nativeplace', '10007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18796', '蓬江区', '10007.1', 'nativeplace', '10007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18795', '江门市', '10007', 'nativeplace', '10007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18794', '高明区', '10006.5', 'nativeplace', '10007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18793', '三水区', '10006.4', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18792', '顺德区', '10006.3', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18791', '南海区', '10006.2', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18790', '禅城区', '10006.1', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18789', '佛山市', '10006', 'nativeplace', '10006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18788', '南澳县', '10005.7', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18787', '澄海区', '10005.6', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18786', '潮南区', '10005.5', 'nativeplace', '10006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18785', '潮阳区', '10005.4', 'nativeplace', '10005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18784', '濠江区', '10005.3', 'nativeplace', '10005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18783', '金平区', '10005.2', 'nativeplace', '10005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18782', '龙湖区', '10005.1', 'nativeplace', '10005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18781', '汕头市', '10005', 'nativeplace', '10005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18780', '金湾区', '10004.3', 'nativeplace', '10004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18779', '斗门区', '10004.2', 'nativeplace', '10004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18778', '洲区', '10004.1', 'nativeplace', '10004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18777', '珠海市', '10004', 'nativeplace', '10004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18776', '盐田区', '10003.6', 'nativeplace', '10004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18775', '龙岗区', '10003.5', 'nativeplace', '10004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18774', '宝安区', '10003.4', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18773', '南山区', '10003.3', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18772', '福田区', '10003.2', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18771', '罗湖区', '10003.1', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18770', '深圳市', '10003', 'nativeplace', '10003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18769', '南雄市', '10002.10', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18768', '乐昌市', '10002.9', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18767', '新丰县', '10002.8', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18766', '乳源瑶族自治县', '10002.7', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18765', '翁源县', '10002.6', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18764', '仁化县', '10002.5', 'nativeplace', '10003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18763', '始兴县', '10002.4', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18762', '曲江区', '10002.3', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18761', '浈江区', '10002.2', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18760', '武江区', '10002.1', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18759', '韶关市', '10002', 'nativeplace', '10002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18758', '从化市', '10001.12', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18757', '增城市', '10001.11', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18756', '花都区', '10001.10', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18755', '番禺区', '10001.9', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18754', '黄埔区', '10001.8', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18753', '白云区', '10001.7', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18752', '芳村区', '10001.6', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18751', '天河区', '10001.5', 'nativeplace', '10002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18750', '海珠区', '10001.4', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18749', '越秀区', '10001.3', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18748', '荔湾区', '10001.2', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18747', '东山区', '10001.1', 'nativeplace', '10001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18746', '广州市', '10001', 'nativeplace', '10001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18745', '广东省', '10000', 'nativeplace', '10000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18744', '龙山县', '9514.8', 'nativeplace', '9515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18743', '永顺县', '9514.7', 'nativeplace', '9515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18742', '古丈县', '9514.6', 'nativeplace', '9515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18741', '保靖县', '9514.5', 'nativeplace', '9515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18740', '花垣县', '9514.4', 'nativeplace', '9514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18739', '凤凰县', '9514.3', 'nativeplace', '9514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18738', '泸溪县', '9514.2', 'nativeplace', '9514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18737', '吉首市', '9514.1', 'nativeplace', '9514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18736', '湘西土家族苗族自治州', '9514', 'nativeplace', '9514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18735', '涟源市', '9513.5', 'nativeplace', '9514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18734', '冷水江市', '9513.4', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18733', '新化县', '9513.3', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18732', '双峰县', '9513.2', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18731', '娄星区', '9513.1', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18730', '娄底市', '9513', 'nativeplace', '9513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18729', '洪江市', '9512.12', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18728', '通道侗族自治县', '9512.11', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18727', '靖州苗族侗族自治县', '9512.10', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18726', '芷江侗族自治县', '9512.9', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18725', '新晃侗族自治县', '9512.8', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18724', '麻阳苗族自治县', '9512.7', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18723', '会同县', '9512.6', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18722', '溆浦县', '9512.5', 'nativeplace', '9513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18721', '辰溪县', '9512.4', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18720', '沅陵县', '9512.3', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18719', '中方县', '9512.2', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18718', '鹤城区', '9512.1', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18717', '怀化市', '9512', 'nativeplace', '9512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18716', '江华瑶族自治县', '9511.11', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18715', '新田县', '9511.10', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18714', '蓝山县', '9511.9', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18713', '宁远县', '9511.8', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18712', '江永县', '9511.7', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18711', '道　县', '9511.6', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18710', '双牌县', '9511.5', 'nativeplace', '9512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18709', '东安县', '9511.4', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18708', '祁阳县', '9511.3', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18707', '冷水滩区', '9511.2', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18706', '芝山区', '9511.1', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18705', '永州市', '9511', 'nativeplace', '9511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18704', '资兴市', '9510.11', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18703', '安仁县', '9510.10', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18702', '桂东县', '9510.9', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18701', '汝城县', '9510.8', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18700', '临武县', '9510.7', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18699', '嘉禾县', '9510.6', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18698', '永兴县', '9510.5', 'nativeplace', '9511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18697', '宜章县', '9510.4', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18696', '桂阳县', '9510.3', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18695', '苏仙区', '9510.2', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18694', '北湖区', '9510.1', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18693', '郴州市', '9510', 'nativeplace', '9510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18692', '沅江市', '9509.6', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18691', '安化县', '9509.5', 'nativeplace', '9510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18690', '桃江县', '9509.4', 'nativeplace', '9509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18689', '南　县', '9509.3', 'nativeplace', '9509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18688', '赫山区', '9509.2', 'nativeplace', '9509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18687', '资阳区', '9509.1', 'nativeplace', '9509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18686', '益阳市', '9509', 'nativeplace', '9509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18685', '桑植县', '9508.4', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18684', '慈利县', '9508.3', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18683', '武陵源区', '9508.2', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18682', '永定区', '9508.1', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18681', '张家界市', '9508', 'nativeplace', '9508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18680', '津市市', '9507.9', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18679', '石门县', '9507.8', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18678', '桃源县', '9507.7', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18677', '临澧县', '9507.6', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18676', '澧　县', '9507.5', 'nativeplace', '9508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18675', '汉寿县', '9507.4', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18674', '安乡县', '9507.3', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18673', '鼎城区', '9507.2', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18672', '武陵区', '9507.1', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18671', '常德市', '9507', 'nativeplace', '9507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18670', '临湘市', '9506.9', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18669', '汨罗市', '9506.8', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18668', '平江县', '9506.7', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18667', '湘阴县', '9506.6', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18666', '华容县', '9506.5', 'nativeplace', '9507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18665', '岳阳县', '9506.4', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18664', '君山区', '9506.3', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18663', '云溪区', '9506.2', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18662', '岳阳楼区', '9506.1', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18661', '岳阳市', '9506', 'nativeplace', '9506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18660', '武冈市', '9505.12', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18659', '城步苗族自治县', '9505.11', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18658', '新宁县', '9505.10', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18657', '绥宁县', '9505.9', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18656', '洞口县', '9505.8', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18655', '隆回县', '9505.7', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18654', '邵阳县', '9505.6', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18653', '新邵县', '9505.5', 'nativeplace', '9506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18652', '邵东县', '9505.4', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18651', '北塔区', '9505.3', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18650', '大祥区', '9505.2', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18649', '双清区', '9505.1', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18648', '邵阳市', '9505', 'nativeplace', '9505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18647', '常宁市', '9504.12', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18646', '耒阳市', '9504.11', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18645', '祁东县', '9504.10', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18644', '衡东县', '9504.9', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18643', '衡山县', '9504.8', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18642', '衡南县', '9504.7', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18641', '衡阳县', '9504.6', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18640', '南岳区', '9504.5', 'nativeplace', '9505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18639', '蒸湘区', '9504.4', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18638', '石鼓区', '9504.3', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18637', '雁峰区', '9504.2', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18636', '珠晖区', '9504.1', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18635', '衡阳市', '9504', 'nativeplace', '9504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18634', '韶山市', '9503.5', 'nativeplace', '9504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18633', '湘乡市', '9503.4', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18632', '湘潭县', '9503.3', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18631', '岳塘区', '9503.2', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18630', '雨湖区', '9503.1', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18629', '湘潭市', '9503', 'nativeplace', '9503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18628', '醴陵市', '9502.9', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18627', '炎陵县', '9502.8', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18626', '茶陵县', '9502.7', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18625', '攸　县', '9502.6', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18624', '株洲县', '9502.5', 'nativeplace', '9503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18623', '天元区', '9502.4', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18622', '石峰区', '9502.3', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18621', '芦淞区', '9502.2', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18620', '荷塘区', '9502.1', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18619', '株洲市', '9502', 'nativeplace', '9502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18618', '浏阳市', '9501.9', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18617', '宁乡县', '9501.8', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18616', '望城县', '9501.7', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18615', '长沙县', '9501.6', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18614', '雨花区', '9501.5', 'nativeplace', '9502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18613', '开福区', '9501.4', 'nativeplace', '9501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18612', '岳麓区', '9501.3', 'nativeplace', '9501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18611', '天心区', '9501.2', 'nativeplace', '9501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18610', '芙蓉区', '9501.1', 'nativeplace', '9501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18609', '长沙市', '9501', 'nativeplace', '9501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18608', '湖南省', '9500', 'nativeplace', '9500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18607', '神农架林区', '9014.4', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18606', '天门市', '9014.3', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18605', '潜江市', '9014.2', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18604', '仙桃市', '9014.1', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18603', '省直辖行政单位', '9014', 'nativeplace', '9014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18602', '鹤峰县', '9013.8', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18601', '来凤县', '9013.7', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18600', '咸丰县', '9013.6', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18599', '宣恩县', '9013.5', 'nativeplace', '9014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18598', '巴东县', '9013.4', 'nativeplace', '9013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18597', '建始县', '9013.3', 'nativeplace', '9013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18596', '利川市', '9013.2', 'nativeplace', '9013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18595', '恩施市', '9013.1', 'nativeplace', '9013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18594', '恩施土家族苗族自治州', '9013', 'nativeplace', '9013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18593', '广水市', '9012.2', 'nativeplace', '9012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18592', '曾都区', '9012.1', 'nativeplace', '9012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18591', '随州市', '9012', 'nativeplace', '9012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18590', '赤壁市', '9011.6', 'nativeplace', '9012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18589', '通山县', '9011.5', 'nativeplace', '9012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18588', '崇阳县', '9011.4', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18587', '通城县', '9011.3', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18586', '嘉鱼县', '9011.2', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18585', '咸安区', '9011.1', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18584', '咸宁市', '9011', 'nativeplace', '9011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18583', '武穴市', '9010.10', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18582', '麻城市', '9010.9', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18581', '黄梅县', '9010.8', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18580', '蕲春县', '9010.7', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18579', '浠水县', '9010.6', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18578', '英山县', '9010.5', 'nativeplace', '9011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18577', '罗田县', '9010.4', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18576', '红安县', '9010.3', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18575', '团风县', '9010.2', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18574', '州区', '9010.1', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18573', '黄冈市', '9010', 'nativeplace', '9010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18572', '松滋市', '9009.8', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18571', '洪湖市', '9009.7', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18570', '石首市', '9009.6', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18569', '江陵县', '9009.5', 'nativeplace', '9010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18568', '监利县', '9009.4', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18567', '公安县', '9009.3', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18566', '荆州区', '9009.2', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18565', '沙市区', '9009.1', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18564', '荆州市', '9009', 'nativeplace', '9009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18563', '汉川市', '9008.7', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18562', '孝南区', '9008.6', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18561', '孝昌县', '9008.5', 'nativeplace', '9009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18560', '大悟县', '9008.4', 'nativeplace', '9008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18559', '云梦县', '9008.3', 'nativeplace', '9008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18558', '应城市', '9008.2', 'nativeplace', '9008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18557', '安陆市', '9008.1', 'nativeplace', '9008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18556', '孝感市', '9008', 'nativeplace', '9008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18555', '东宝区', '9007.5', 'nativeplace', '9008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18554', '掇刀区', '9007.4', 'nativeplace', '9007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18553', '京山县', '9007.3', 'nativeplace', '9007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18552', '沙洋县', '9007.2', 'nativeplace', '9007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18551', '钟祥市', '9007.1', 'nativeplace', '9007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18550', '荆门市', '9007', 'nativeplace', '9007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18549', '鄂城区', '9006.3', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18548', '华容区', '9006.2', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18547', '梁子湖区', '9006.1', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18546', '鄂州市', '9006', 'nativeplace', '9006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18545', '宜城市', '9005.9', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18544', '枣阳市', '9005.8', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18543', '老河口市', '9005.7', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18542', '保康县', '9005.6', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18541', '谷城县', '9005.5', 'nativeplace', '9006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18540', '南漳县', '9005.4', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18539', '襄阳区', '9005.3', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18538', '樊城区', '9005.2', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18537', '襄城区', '9005.1', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18536', '襄樊市', '9005', 'nativeplace', '9005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18535', '枝江市', '9004.13', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18534', '当阳市', '9004.12', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18533', '宜都市', '9004.11', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18532', '五峰土家族自治县', '9004.10', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18531', '长阳土家族自治县', '9004.9', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18530', '秭归县', '9004.8', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18529', '兴山县', '9004.7', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18528', '远安县', '9004.6', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18527', '夷陵区', '9004.5', 'nativeplace', '9005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18526', '?亭区', '9004.4', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18525', '点军区', '9004.3', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18524', '伍家岗区', '9004.2', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18523', '西陵区', '9004.1', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18522', '宜昌市', '9004', 'nativeplace', '9004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18521', '丹江口市', '9003.8', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18520', '房　县', '9003.7', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18519', '竹溪县', '9003.6', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18518', '竹山县', '9003.5', 'nativeplace', '9004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18517', '郧西县', '9003.4', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18516', '郧　县', '9003.3', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18515', '张湾区', '9003.2', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18514', '茅箭区', '9003.1', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18513', '十堰市', '9003', 'nativeplace', '9003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18512', '大冶市', '9002.6', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18511', '阳新县', '9002.5', 'nativeplace', '9003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18510', '铁山区', '9002.4', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18509', '下陆区', '9002.3', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18508', '西塞山区', '9002.2', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18507', '黄石港区', '9002.1', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18506', '黄石市', '9002', 'nativeplace', '9002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18505', '新洲区', '9001.13', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18504', '黄陂区', '9001.12', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18503', '江夏区', '9001.11', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18502', '蔡甸区', '9001.10', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18501', '汉南区', '9001.9', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18500', '东西湖区', '9001.8', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18499', '洪山区', '9001.7', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18498', '青山区', '9001.6', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18497', '武昌区', '9001.5', 'nativeplace', '9002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18496', '汉阳区', '9001.4', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18495', '乔口区', '9001.3', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18494', '江汉区', '9001.2', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18493', '江岸区', '9001.1', 'nativeplace', '9001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18492', '武汉市', '9001', 'nativeplace', '9001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18491', '湖北省', '9000', 'nativeplace', '9000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18490', '新蔡县', '8517.10', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18489', '遂平县', '8517.9', 'nativeplace', '8518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18488', '汝南县', '8517.8', 'nativeplace', '8518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18487', '泌阳县', '8517.7', 'nativeplace', '8518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18486', '确山县', '8517.6', 'nativeplace', '8518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18485', '正阳县', '8517.5', 'nativeplace', '8518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18484', '平舆县', '8517.4', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18483', '上蔡县', '8517.3', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18482', '西平县', '8517.2', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18481', '驿城区', '8517.1', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18480', '驻马店市', '8517', 'nativeplace', '8517', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18479', '项城市', '8516.10', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18478', '鹿邑县', '8516.9', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18477', '太康县', '8516.8', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18476', '淮阳县', '8516.7', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18475', '郸城县', '8516.6', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18474', '沈丘县', '8516.5', 'nativeplace', '8517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18473', '商水县', '8516.4', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18472', '西华县', '8516.3', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18471', '扶沟县', '8516.2', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18470', '川汇区', '8516.1', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18469', '周口市', '8516', 'nativeplace', '8516', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18468', '息　县', '8515.10', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18467', '淮滨县', '8515.9', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18466', '潢川县', '8515.8', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18465', '固始县', '8515.7', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18464', '商城县', '8515.6', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18463', '新　县', '8515.5', 'nativeplace', '8516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18462', '光山县', '8515.4', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18461', '罗山县', '8515.3', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18460', '平桥区', '8515.2', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18459', '师河区', '8515.1', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18458', '信阳市', '8515', 'nativeplace', '8515', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18457', '永城市', '8514.9', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18456', '夏邑县', '8514.8', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18455', '虞城县', '8514.7', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18454', '柘城县', '8514.6', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18453', '宁陵县', '8514.5', 'nativeplace', '8515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18452', '睢　县', '8514.4', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18451', '民权县', '8514.3', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18450', '睢阳区', '8514.2', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18449', '梁园区', '8514.1', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18448', '商丘市', '8514', 'nativeplace', '8514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18447', '邓州市', '8513.13', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18446', '桐柏县', '8513.12', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18445', '新野县', '8513.11', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18444', '唐河县', '8513.10', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18443', '社旗县', '8513.9', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18442', '淅川县', '8513.8', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18441', '内乡县', '8513.7', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18440', '镇平县', '8513.6', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18439', '西峡县', '8513.5', 'nativeplace', '8514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18438', '方城县', '8513.4', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18437', '南召县', '8513.3', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18436', '卧龙区', '8513.2', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18435', '宛城区', '8513.1', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18434', '南阳市', '8513', 'nativeplace', '8513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18433', '灵宝市', '8512.6', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18432', '义马市', '8512.5', 'nativeplace', '8513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18431', '卢氏县', '8512.4', 'nativeplace', '8512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18430', '陕　县', '8512.3', 'nativeplace', '8512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18429', '渑池县', '8512.2', 'nativeplace', '8512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18428', '湖滨区', '8512.1', 'nativeplace', '8512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18427', '三门峡市', '8512', 'nativeplace', '8512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18426', '临颍县', '8511.5', 'nativeplace', '8512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18425', '舞阳县', '8511.4', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18424', '召陵区', '8511.3', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18423', '郾城区', '8511.2', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18422', '源汇区', '8511.1', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18421', '漯河市', '8511', 'nativeplace', '8511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18420', '长葛市', '8510.6', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18419', '禹州市', '8510.5', 'nativeplace', '8511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18418', '襄城县', '8510.4', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18417', '鄢陵县', '8510.3', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18416', '许昌县', '8510.2', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18415', '魏都区', '8510.1', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18414', '许昌市', '8510', 'nativeplace', '8510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18413', '濮阳县', '8509.6', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18412', '台前县', '8509.5', 'nativeplace', '8510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18411', '范　县', '8509.4', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18410', '南乐县', '8509.3', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18409', '清丰县', '8509.2', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18408', '华龙区', '8509.1', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18407', '濮阳市', '8509', 'nativeplace', '8509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18406', '孟州市', '8508.11', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18405', '沁阳市', '8508.10', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18404', '济源市', '8508.9', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18403', '温　县', '8508.8', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18402', '武陟县', '8508.7', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18401', '博爱县', '8508.6', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18400', '修武县', '8508.5', 'nativeplace', '8509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18399', '山阳区', '8508.4', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18398', '马村区', '8508.3', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18397', '中站区', '8508.2', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18396', '解放区', '8508.1', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18395', '焦作市', '8508', 'nativeplace', '8508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18394', '辉县市', '8507.12', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18393', '卫辉市', '8507.11', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18392', '长垣县', '8507.10', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18391', '封丘县', '8507.9', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18390', '延津县', '8507.8', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18389', '原阳县', '8507.7', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18388', '获嘉县', '8507.6', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18387', '新乡县', '8507.5', 'nativeplace', '8508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18386', '牧野区', '8507.4', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18385', '凤泉区', '8507.3', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18384', '卫滨区', '8507.2', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18383', '红旗区', '8507.1', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18382', '新乡市', '8507', 'nativeplace', '8507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18381', '淇　县', '8506.5', 'nativeplace', '8507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18380', '浚　县', '8506.4', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18379', '淇滨区', '8506.3', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18378', '山城区', '8506.2', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18377', '鹤山区', '8506.1', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18376', '鹤壁市', '8506', 'nativeplace', '8506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18375', '林州市', '8505.9', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18374', '内黄县', '8505.8', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18373', '滑　县', '8505.7', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18372', '汤阴县', '8505.6', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18371', '安阳县', '8505.5', 'nativeplace', '8506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18370', '龙安区', '8505.4', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18369', '殷都区', '8505.3', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18368', '北关区', '8505.2', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18367', '文峰区', '8505.1', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18366', '安阳市', '8505', 'nativeplace', '8505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18365', '汝州市', '8504.10', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18364', '舞钢市', '8504.9', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18363', '郏　县', '8504.8', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18362', '鲁山县', '8504.7', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18361', '叶　县', '8504.6', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18360', '宝丰县', '8504.5', 'nativeplace', '8505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18359', '湛河区', '8504.4', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18358', '石龙区', '8504.3', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18357', '卫东区', '8504.2', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18356', '新华区', '8504.1', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18355', '平顶山市', '8504', 'nativeplace', '8504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18354', '偃师市', '8503.15', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18353', '伊川县', '8503.14', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18352', '洛宁县', '8503.13', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18351', '宜阳县', '8503.12', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18350', '汝阳县', '8503.11', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18349', '嵩　县', '8503.10', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18348', '栾川县', '8503.9', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18347', '新安县', '8503.8', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18346', '孟津县', '8503.7', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18345', '洛龙区', '8503.6', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18344', '吉利区', '8503.5', 'nativeplace', '8504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18343', '涧西区', '8503.4', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18342', '廛河回族区', '8503.3', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18341', '西工区', '8503.2', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18340', '老城区', '8503.1', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18339', '洛阳市', '8503', 'nativeplace', '8503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18338', '兰考县', '8502.10', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18337', '开封县', '8502.9', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18336', '尉氏县', '8502.8', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18335', '通许县', '8502.7', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18334', '杞　县', '8502.6', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18333', '郊　区', '8502.5', 'nativeplace', '8503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18332', '南关区', '8502.4', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18331', '鼓楼区', '8502.3', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18330', '顺河回族区', '8502.2', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18329', '龙亭区', '8502.1', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18328', '开封市', '8502', 'nativeplace', '8502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18327', '登封市', '8501.12', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18326', '新郑市', '8501.11', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18325', '新密市', '8501.10', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18324', '荥阳市', '8501.9', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18323', '巩义市', '8501.8', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18322', '中牟县', '8501.7', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18321', '邙山区', '8501.6', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18320', '上街区', '8501.5', 'nativeplace', '8502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18319', '金水区', '8501.4', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18318', '管城回族区', '8501.3', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18317', '二七区', '8501.2', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18316', '中原区', '8501.1', 'nativeplace', '8501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18315', '郑州市', '8501', 'nativeplace', '8501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18314', '河南省', '8500', 'nativeplace', '8500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18313', '东明县', '8016.9', 'nativeplace', '8017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18312', '定陶县', '8016.8', 'nativeplace', '8017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18311', '鄄城县', '8016.7', 'nativeplace', '8017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18310', '郓城县', '8016.6', 'nativeplace', '8017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18309', '巨野县', '8016.5', 'nativeplace', '8017', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18308', '成武县', '8016.4', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18307', '单　县', '8016.3', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18306', '曹　县', '8016.2', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18305', '牡丹区', '8016.1', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18304', '荷泽市', '8016', 'nativeplace', '8016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18303', '邹平县', '8015.7', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18302', '博兴县', '8015.6', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18301', '沾化县', '8015.5', 'nativeplace', '8016', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18300', '无棣县', '8015.4', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18299', '阳信县', '8015.3', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18298', '惠民县', '8015.2', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18297', '滨城区', '8015.1', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18296', '滨州市', '8015', 'nativeplace', '8015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18295', '临清市', '8014.8', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18294', '高唐县', '8014.7', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18293', '冠　县', '8014.6', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18292', '东阿县', '8014.5', 'nativeplace', '8015', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18291', '茌平县', '8014.4', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18290', '莘　县', '8014.3', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18289', '阳谷县', '8014.2', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18288', '东昌府区', '8014.1', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18287', '聊城市', '8014', 'nativeplace', '8014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18286', '禹城市', '8013.11', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18285', '乐陵市', '8013.10', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18284', '武城县', '8013.9', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18283', '夏津县', '8013.8', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18282', '平原县', '8013.7', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18281', '齐河县', '8013.6', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18280', '临邑县', '8013.5', 'nativeplace', '8014', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18279', '庆云县', '8013.4', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18278', '宁津县', '8013.3', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18277', '陵　县', '8013.2', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18276', '德城区', '8013.1', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18275', '德州市', '8013', 'nativeplace', '8013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18274', '临沭县', '8012.12', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18273', '蒙阴县', '8012.11', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18272', '莒南县', '8012.10', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18271', '平邑县', '8012.9', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18270', '费　县', '8012.8', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18269', '苍山县', '8012.7', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18268', '沂水县', '8012.6', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18267', '郯城县', '8012.5', 'nativeplace', '8013', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18266', '沂南县', '8012.4', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18265', '河东区', '8012.3', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18264', '罗庄区', '8012.2', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18263', '兰山区', '8012.1', 'nativeplace', '8012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18262', '临沂市', '8012', 'nativeplace', '8012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18261', '钢城区', '8011.2', 'nativeplace', '8011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18260', '莱城区', '8011.1', 'nativeplace', '8011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18259', '莱芜市', '8011', 'nativeplace', '8011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18258', '莒　县', '8010.4', 'nativeplace', '8010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18257', '五莲县', '8010.3', 'nativeplace', '8010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18256', '岚山区', '8010.2', 'nativeplace', '8010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18255', '东港区', '8010.1', 'nativeplace', '8010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18254', '日照市', '8010', 'nativeplace', '8010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18253', '乳山市', '8009.4', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18252', '荣成市', '8009.3', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18251', '文登市', '8009.2', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18250', '环翠区', '8009.1', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18249', '威海市', '8009', 'nativeplace', '8009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18248', '肥城市', '8008.6', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18247', '新泰市', '8008.5', 'nativeplace', '8009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18246', '东平县', '8008.4', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18245', '宁阳县', '8008.3', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18244', '岱岳区', '8008.2', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18243', '泰山区', '8008.1', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18242', '泰安市', '8008', 'nativeplace', '8008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18241', '邹城市', '8007.12', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18240', '兖州市', '8007.11', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18239', '曲阜市', '8007.10', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18238', '梁山县', '8007.9', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18237', '泗水县', '8007.8', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18236', '汶上县', '8007.7', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18235', '嘉祥县', '8007.6', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18234', '金乡县', '8007.5', 'nativeplace', '8008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18233', '鱼台县', '8007.4', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18232', '微山县', '8007.3', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18231', '任城区', '8007.2', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18230', '市中区', '8007.1', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18229', '济宁市', '8007', 'nativeplace', '8007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18228', '昌邑市', '8006.12', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18227', '高密市', '8006.11', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18226', '安丘市', '8006.10', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18225', '寿光市', '8006.9', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18224', '诸城市', '8006.8', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18223', '青州市', '8006.7', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18222', '昌乐县', '8006.6', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18221', '临朐县', '8006.5', 'nativeplace', '8007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18220', '奎文区', '8006.4', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18219', '坊子区', '8006.3', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18218', '寒亭区', '8006.2', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18217', '潍城区', '8006.1', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18216', '潍坊市', '8006', 'nativeplace', '8006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18215', '海阳市', '8005.12', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18214', '栖霞市', '8005.11', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18213', '招远市', '8005.10', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18212', '蓬莱市', '8005.9', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18211', '莱州市', '8005.8', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18210', '莱阳市', '8005.7', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18209', '龙口市', '8005.6', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18208', '长岛县', '8005.5', 'nativeplace', '8006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18207', '莱山区', '8005.4', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18206', '牟平区', '8005.3', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18205', '福山区', '8005.2', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18204', '芝罘区', '8005.1', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18203', '烟台市', '8005', 'nativeplace', '8005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18202', '滕州市', '8004.6', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18201', '山亭区', '8004.5', 'nativeplace', '8005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18200', '台儿庄区', '8004.4', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18199', '峄城区', '8004.3', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18198', '薛城区', '8004.2', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18197', '市中区', '8004.1', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18196', '枣庄市', '8004', 'nativeplace', '8004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18195', '沂源县', '8003.8', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18194', '高青县', '8003.7', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18193', '桓台县', '8003.6', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18192', '周村区', '8003.5', 'nativeplace', '8004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18191', '临淄区', '8003.4', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18190', '博山区', '8003.3', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18189', '张店区', '8003.2', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18188', '淄川区', '8003.1', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18187', '淄博市', '8003', 'nativeplace', '8003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18186', '莱西市', '8002.12', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18185', '胶南市', '8002.11', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18184', '平度市', '8002.10', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18183', '即墨市', '8002.9', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18182', '胶州市', '8002.8', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18181', '城阳区', '8002.7', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18180', '李沧区', '8002.6', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18179', '崂山区', '8002.5', 'nativeplace', '8003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18178', '黄岛区', '8002.4', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18177', '四方区', '8002.3', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18176', '市北区', '8002.2', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18175', '市南区', '8002.1', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18174', '青岛市', '8002', 'nativeplace', '8002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18173', '章丘市', '8001.10', 'nativeplace', '8001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18172', '商河县', '8001.9', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18171', '济阳县', '8001.8', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18170', '平阴县', '8001.7', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18169', '长清区', '8001.6', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18168', '历城区', '8001.5', 'nativeplace', '8002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18167', '天桥区', '8001.4', 'nativeplace', '8001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18166', '槐荫区', '8001.3', 'nativeplace', '8001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18165', '市中区', '8001.2', 'nativeplace', '8001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18164', '历下区', '8001.1', 'nativeplace', '8001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18163', '济南市', '8001', 'nativeplace', '8001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18162', '山东省', '8000', 'nativeplace', '8000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18161', '德兴市', '7511.12', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18160', '婺源县', '7511.11', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18159', '万年县', '7511.10', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18158', '鄱阳县', '7511.9', 'nativeplace', '7512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18157', '余干县', '7511.8', 'nativeplace', '7512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18156', '弋阳县', '7511.7', 'nativeplace', '7512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18155', '横峰县', '7511.6', 'nativeplace', '7512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18154', '铅山县', '7511.5', 'nativeplace', '7512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18153', '玉山县', '7511.4', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18152', '广丰县', '7511.3', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18151', '上饶县', '7511.2', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18150', '信州区', '7511.1', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18149', '上饶市', '7511', 'nativeplace', '7511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18148', '广昌县', '7510.11', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18147', '东乡县', '7510.10', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18146', '资溪县', '7510.9', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18145', '金溪县', '7510.8', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18144', '宜黄县', '7510.7', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18143', '乐安县', '7510.6', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18142', '崇仁县', '7510.5', 'nativeplace', '7511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18141', '南丰县', '7510.4', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18140', '黎川县', '7510.3', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18139', '南城县', '7510.2', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18138', '临川区', '7510.1', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18137', '抚州市', '7510', 'nativeplace', '7510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18136', '高安市', '7509.10', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18135', '樟树市', '7509.9', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18134', '丰城市', '7509.8', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18133', '铜鼓县', '7509.7', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18132', '靖安县', '7509.6', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18131', '宜丰县', '7509.5', 'nativeplace', '7510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18130', '上高县', '7509.4', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18129', '万载县', '7509.3', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18128', '奉新县', '7509.2', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18127', '袁州区', '7509.1', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18126', '宜春市', '7509', 'nativeplace', '7509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18125', '井冈山市', '7508.13', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18124', '永新县', '7508.12', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18123', '安福县', '7508.11', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18122', '万安县', '7508.10', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18121', '遂川县', '7508.9', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18120', '泰和县', '7508.8', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18119', '永丰县', '7508.7', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18118', '新干县', '7508.6', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18117', '峡江县', '7508.5', 'nativeplace', '7509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18116', '吉水县', '7508.4', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18115', '吉安县', '7508.3', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18114', '青原区', '7508.2', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18113', '吉州区', '7508.1', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18112', '吉安市', '7508', 'nativeplace', '7508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18111', '南康市', '7507.18', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18110', '瑞金市', '7507.17', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18109', '石城县', '7507.16', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18108', '寻乌县', '7507.15', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18107', '会昌县', '7507.14', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18106', '兴国县', '7507.13', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18105', '于都县', '7507.12', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18104', '宁都县', '7507.11', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18103', '全南县', '7507.10', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18102', '定南县', '7507.9', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18101', '龙南县', '7507.8', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18100', '安远县', '7507.7', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18099', '崇义县', '7507.6', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18098', '上犹县', '7507.5', 'nativeplace', '7508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18097', '大余县', '7507.4', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18096', '信丰县', '7507.3', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18095', '赣　县', '7507.2', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18094', '章贡区', '7507.1', 'nativeplace', '7507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18093', '赣州市', '7507', 'nativeplace', '7507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18092', '贵溪市', '7506.3', 'nativeplace', '7506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18091', '余江县', '7506.2', 'nativeplace', '7506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18090', '月湖区', '7506.1', 'nativeplace', '7506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18089', '鹰潭市', '7506', 'nativeplace', '7506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18088', '分宜县', '7505.2', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18087', '渝水区', '7505.1', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18086', '新余市', '7505', 'nativeplace', '7505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18085', '瑞昌市', '7504.12', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18084', '彭泽县', '7504.11', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18083', '湖口县', '7504.10', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18082', '都昌县', '7504.9', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18081', '星子县', '7504.8', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18080', '德安县', '7504.7', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18079', '永修县', '7504.6', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18078', '修水县', '7504.5', 'nativeplace', '7505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18077', '武宁县', '7504.4', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18076', '九江县', '7504.3', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18075', '浔阳区', '7504.2', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18074', '庐山区', '7504.1', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18073', '九江市', '7504', 'nativeplace', '7504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18072', '芦溪县', '7503.5', 'nativeplace', '7504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18071', '上栗县', '7503.4', 'nativeplace', '7503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18070', '莲花县', '7503.3', 'nativeplace', '7503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18069', '湘东区', '7503.2', 'nativeplace', '7503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18068', '安源区', '7503.1', 'nativeplace', '7503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18067', '萍乡市', '7503', 'nativeplace', '7503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18066', '乐平市', '7502.4', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18065', '浮梁县', '7502.3', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18064', '珠山区', '7502.2', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18063', '昌江区', '7502.1', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18062', '景德镇市', '7502', 'nativeplace', '7502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18061', '进贤县', '7501.9', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18060', '安义县', '7501.8', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18059', '新建县', '7501.7', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18058', '南昌县', '7501.6', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18057', '青山湖区', '7501.5', 'nativeplace', '7502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18056', '湾里区', '7501.4', 'nativeplace', '7501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18055', '青云谱区', '7501.3', 'nativeplace', '7501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18054', '西湖区', '7501.2', 'nativeplace', '7501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18053', '东湖区', '7501.1', 'nativeplace', '7501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18052', '南昌市', '7501', 'nativeplace', '7501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18051', '江西省', '7500', 'nativeplace', '7500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('18050', '福鼎市', '7009.9', 'nativeplace', '7010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18049', '福安市', '7009.8', 'nativeplace', '7010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18048', '柘荣县', '7009.7', 'nativeplace', '7010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18047', '周宁县', '7009.6', 'nativeplace', '7010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18046', '寿宁县', '7009.5', 'nativeplace', '7010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18045', '屏南县', '7009.4', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18044', '古田县', '7009.3', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18043', '霞浦县', '7009.2', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18042', '蕉城区', '7009.1', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18041', '宁德市', '7009', 'nativeplace', '7009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18040', '漳平市', '7008.7', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18039', '连城县', '7008.6', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18038', '武平县', '7008.5', 'nativeplace', '7009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18037', '上杭县', '7008.4', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18036', '永定县', '7008.3', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18035', '长汀县', '7008.2', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18034', '新罗区', '7008.1', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18033', '龙岩市', '7008', 'nativeplace', '7008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18032', '建阳市', '7007.10', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18031', '建瓯市', '7007.9', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18030', '武夷山市', '7007.8', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18029', '邵武市', '7007.7', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18028', '政和县', '7007.6', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18027', '松溪县', '7007.5', 'nativeplace', '7008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18026', '光泽县', '7007.4', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18025', '浦城县', '7007.3', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18024', '顺昌县', '7007.2', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18023', '延平区', '7007.1', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18022', '南平市', '7007', 'nativeplace', '7007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18021', '龙海市', '7006.11', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18020', '华安县', '7006.10', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18019', '平和县', '7006.9', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18018', '南靖县', '7006.8', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18017', '东山县', '7006.7', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18016', '长泰县', '7006.6', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18015', '诏安县', '7006.5', 'nativeplace', '7007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18014', '漳浦县', '7006.4', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18013', '云霄县', '7006.3', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18012', '龙文区', '7006.2', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18011', '芗城区', '7006.1', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18010', '漳州市', '7006', 'nativeplace', '7006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('18009', '南安市', '7005.12', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18008', '晋江市', '7005.11', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18007', '石狮市', '7005.10', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18006', '金门县', '7005.9', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18005', '德化县', '7005.8', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18004', '永春县', '7005.7', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18003', '安溪县', '7005.6', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18002', '惠安县', '7005.5', 'nativeplace', '7006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18001', '泉港区', '7005.4', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('18000', '洛江区', '7005.3', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17999', '丰泽区', '7005.2', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17998', '鲤城区', '7005.1', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17997', '泉州市', '7005', 'nativeplace', '7005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17996', '永安市', '7004.12', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17995', '建宁县', '7004.11', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17994', '泰宁县', '7004.10', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17993', '将乐县', '7004.9', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17992', '沙　县', '7004.8', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17991', '尤溪县', '7004.7', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17990', '大田县', '7004.6', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17989', '宁化县', '7004.5', 'nativeplace', '7005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17988', '清流县', '7004.4', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17987', '明溪县', '7004.3', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17986', '三元区', '7004.2', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17985', '梅列区', '7004.1', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17984', '三明市', '7004', 'nativeplace', '7004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17983', '仙游县', '7003.5', 'nativeplace', '7004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17982', '秀屿区', '7003.4', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17981', '荔城区', '7003.3', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17980', '涵江区', '7003.2', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17979', '城厢区', '7003.1', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17978', '莆田市', '7003', 'nativeplace', '7003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17977', '翔安区', '7002.6', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17976', '同安区', '7002.5', 'nativeplace', '7003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17975', '集美区', '7002.4', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17974', '湖里区', '7002.3', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17973', '海沧区', '7002.2', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17972', '思明区', '7002.1', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17971', '厦门市', '7002', 'nativeplace', '7002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17970', '长乐市', '7001.13', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17969', '福清市', '7001.12', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17968', '平潭县', '7001.11', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17967', '永泰县', '7001.10', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17966', '闽清县', '7001.9', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17965', '罗源县', '7001.8', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17964', '连江县', '7001.7', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17963', '闽侯县', '7001.6', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17962', '晋安区', '7001.5', 'nativeplace', '7002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17961', '马尾区', '7001.4', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17960', '仓山区', '7001.3', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17959', '台江区', '7001.2', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17958', '鼓楼区', '7001.1', 'nativeplace', '7001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17957', '福州市', '7001', 'nativeplace', '7001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17956', '福建省', '7000', 'nativeplace', '7000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17955', '宁国市', '6517.7', 'nativeplace', '6518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17954', '旌德县', '6517.6', 'nativeplace', '6518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17953', '绩溪县', '6517.5', 'nativeplace', '6518', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17952', '泾　县', '6517.4', 'nativeplace', '6517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17951', '广德县', '6517.3', 'nativeplace', '6517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17950', '郎溪县', '6517.2', 'nativeplace', '6517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17949', '宣州区', '6517.1', 'nativeplace', '6517', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17948', '宣城市', '6517', 'nativeplace', '6517', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17947', '青阳县', '6516.4', 'nativeplace', '6516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17946', '石台县', '6516.3', 'nativeplace', '6516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17945', '东至县', '6516.2', 'nativeplace', '6516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17944', '贵池区', '6516.1', 'nativeplace', '6516', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17943', '池州市', '6516', 'nativeplace', '6516', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17942', '利辛县', '6515.4', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17941', '蒙城县', '6515.3', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17940', '涡阳县', '6515.2', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17939', '谯城区', '6515.1', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17938', '亳州市', '6515', 'nativeplace', '6515', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17937', '霍山县', '6514.7', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17936', '金寨县', '6514.6', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17935', '舒城县', '6514.5', 'nativeplace', '6515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17934', '霍邱县', '6514.4', 'nativeplace', '6514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17933', '寿　县', '6514.3', 'nativeplace', '6514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17932', '裕安区', '6514.2', 'nativeplace', '6514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17931', '金安区', '6514.1', 'nativeplace', '6514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17930', '六安市', '6514', 'nativeplace', '6514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17929', '和　县', '6513.5', 'nativeplace', '6514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17928', '含山县', '6513.4', 'nativeplace', '6513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17927', '无为县', '6513.3', 'nativeplace', '6513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17926', '庐江县', '6513.2', 'nativeplace', '6513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17925', '居巢区', '6513.1', 'nativeplace', '6513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17924', '巢湖市', '6513', 'nativeplace', '6513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17923', '泗　县', '6512.5', 'nativeplace', '6513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17922', '灵璧县', '6512.4', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17921', '萧　县', '6512.3', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17920', '砀山县', '6512.2', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17919', '墉桥区', '6512.1', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17918', '宿州市', '6512', 'nativeplace', '6512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17917', '界首市', '6511.8', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17916', '颍上县', '6511.7', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17915', '阜南县', '6511.6', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17914', '太和县', '6511.5', 'nativeplace', '6512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17913', '临泉县', '6511.4', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17912', '颍泉区', '6511.3', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17911', '颍东区', '6511.2', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17910', '颍州区', '6511.1', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17909', '阜阳市', '6511', 'nativeplace', '6511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17908', '明光市', '6510.8', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17907', '天长市', '6510.7', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17906', '凤阳县', '6510.6', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17905', '定远县', '6510.5', 'nativeplace', '6511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17904', '全椒县', '6510.4', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17903', '来安县', '6510.3', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17902', '南谯区', '6510.2', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17901', '琅琊区', '6510.1', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17900', '滁州市', '6510', 'nativeplace', '6510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17899', '祁门县', '6509.7', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17898', '黟　县', '6509.6', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17897', '休宁县', '6509.5', 'nativeplace', '6510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17896', '歙　县', '6509.4', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17895', '徽州区', '6509.3', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17894', '黄山区', '6509.2', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17893', '屯溪区', '6509.1', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17892', '黄山市', '6509', 'nativeplace', '6509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17891', '桐城市', '6508.11', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17890', '岳西县', '6508.10', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17889', '望江县', '6508.9', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17888', '宿松县', '6508.8', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17887', '太湖县', '6508.7', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17886', '潜山县', '6508.6', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17885', '枞阳县', '6508.5', 'nativeplace', '6509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17884', '怀宁县', '6508.4', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17883', '郊　区', '6508.3', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17882', '大观区', '6508.2', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17881', '迎江区', '6508.1', 'nativeplace', '6508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17880', '安庆市', '6508', 'nativeplace', '6508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17879', '铜陵县', '6507.4', 'nativeplace', '6507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17878', '郊　区', '6507.3', 'nativeplace', '6507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17877', '狮子山区', '6507.2', 'nativeplace', '6507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17876', '铜官山区', '6507.1', 'nativeplace', '6507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17875', '铜陵市', '6507', 'nativeplace', '6507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17874', '濉溪县', '6506.4', 'nativeplace', '6506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17873', '烈山区', '6506.3', 'nativeplace', '6506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17872', '相山区', '6506.2', 'nativeplace', '6506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17871', '杜集区', '6506.1', 'nativeplace', '6506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17870', '淮北市', '6506', 'nativeplace', '6506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17869', '当涂县', '6505.4', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17868', '雨山区', '6505.3', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17867', '花山区', '6505.2', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17866', '金家庄区', '6505.1', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17865', '马鞍山市', '6505', 'nativeplace', '6505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17864', '凤台县', '6504.6', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17863', '潘集区', '6504.5', 'nativeplace', '6505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17862', '八公山区', '6504.4', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17861', '谢家集区', '6504.3', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17860', '田家庵区', '6504.2', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17859', '大通区', '6504.1', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17858', '淮南市', '6504', 'nativeplace', '6504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17857', '固镇县', '6503.7', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17856', '五河县', '6503.6', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17855', '怀远县', '6503.5', 'nativeplace', '6504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17854', '淮上区', '6503.4', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17853', '禹会区', '6503.3', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17852', '蚌山区', '6503.2', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17851', '龙子湖区', '6503.1', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17850', '蚌埠市', '6503', 'nativeplace', '6503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17849', '南陵县', '6502.7', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17848', '繁昌县', '6502.6', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17847', '芜湖县', '6502.5', 'nativeplace', '6503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17846', '鸠江区', '6502.4', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17845', '新芜区', '6502.3', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17844', '马塘区', '6502.2', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17843', '镜湖区', '6502.1', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17842', '芜湖市', '6502', 'nativeplace', '6502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17841', '肥西县', '6501.7', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17840', '肥东县', '6501.6', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17839', '长丰县', '6501.5', 'nativeplace', '6502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17838', '包河区', '6501.4', 'nativeplace', '6501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17837', '蜀山区', '6501.3', 'nativeplace', '6501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17836', '庐阳区', '6501.2', 'nativeplace', '6501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17835', '瑶海区', '6501.1', 'nativeplace', '6501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17834', '合肥市', '6501', 'nativeplace', '6501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17833', '安徽省', '6500', 'nativeplace', '6500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17832', '龙泉市', '6011.9', 'nativeplace', '6012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17831', '景宁畲族自治县', '6011.8', 'nativeplace', '6012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17830', '庆元县', '6011.7', 'nativeplace', '6012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17829', '云和县', '6011.6', 'nativeplace', '6012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17828', '松阳县', '6011.5', 'nativeplace', '6012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17827', '遂昌县', '6011.4', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17826', '缙云县', '6011.3', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17825', '青田县', '6011.2', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17824', '莲都区', '6011.1', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17823', '丽水市', '6011', 'nativeplace', '6011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17822', '临海市', '6010.9', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17821', '温岭市', '6010.8', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17820', '仙居县', '6010.7', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17819', '天台县', '6010.6', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17818', '三门县', '6010.5', 'nativeplace', '6011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17817', '玉环县', '6010.4', 'nativeplace', '6010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17816', '路桥区', '6010.3', 'nativeplace', '6010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17815', '黄岩区', '6010.2', 'nativeplace', '6010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17814', '椒江区', '6010.1', 'nativeplace', '6010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17813', '台州市', '6010', 'nativeplace', '6010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17812', '嵊泗县', '6009.4', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17811', '岱山县', '6009.3', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17810', '普陀区', '6009.2', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17809', '定海区', '6009.1', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17808', '舟山市', '6009', 'nativeplace', '6009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17807', '江山市', '6008.6', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17806', '龙游县', '6008.5', 'nativeplace', '6009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17805', '开化县', '6008.4', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17804', '常山县', '6008.3', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17803', '衢江区', '6008.2', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17802', '柯城区', '6008.1', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17801', '衢州市', '6008', 'nativeplace', '6008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17800', '永康市', '6007.9', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17799', '东阳市', '6007.8', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17798', '义乌市', '6007.7', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17797', '兰溪市', '6007.6', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17796', '磐安县', '6007.5', 'nativeplace', '6008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17795', '浦江县', '6007.4', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17794', '武义县', '6007.3', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17793', '金东区', '6007.2', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17792', '婺城区', '6007.1', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17791', '金华市', '6007', 'nativeplace', '6007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17790', '嵊州市', '6006.6', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17789', '上虞市', '6006.5', 'nativeplace', '6007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17788', '诸暨市', '6006.4', 'nativeplace', '6006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17787', '新昌县', '6006.3', 'nativeplace', '6006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17786', '绍兴县', '6006.2', 'nativeplace', '6006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17785', '越城区', '6006.1', 'nativeplace', '6006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17784', '绍兴市', '6006', 'nativeplace', '6006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17783', '安吉县', '6005.5', 'nativeplace', '6006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17782', '长兴县', '6005.4', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17781', '德清县', '6005.3', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17780', '南浔区', '6005.2', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17779', '吴兴区', '6005.1', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17778', '湖州市', '6005', 'nativeplace', '6005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17777', '桐乡市', '6004.7', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17776', '平湖市', '6004.6', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17775', '海宁市', '6004.5', 'nativeplace', '6005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17774', '海盐县', '6004.4', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17773', '嘉善县', '6004.3', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17772', '秀洲区', '6004.2', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17771', '秀城区', '6004.1', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17770', '嘉兴市', '6004', 'nativeplace', '6004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17769', '乐清市', '6003.11', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17768', '瑞安市', '6003.10', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17767', '泰顺县', '6003.9', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17766', '文成县', '6003.8', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17765', '苍南县', '6003.7', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17764', '平阳县', '6003.6', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17763', '永嘉县', '6003.5', 'nativeplace', '6004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17762', '洞头县', '6003.4', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17761', '瓯海区', '6003.3', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17760', '龙湾区', '6003.2', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17759', '鹿城区', '6003.1', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17758', '温州市', '6003', 'nativeplace', '6003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17757', '奉化市', '6002.11', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17756', '慈溪市', '6002.10', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17755', '余姚市', '6002.9', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17754', '宁海县', '6002.8', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17753', '象山县', '6002.7', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17752', '鄞州区', '6002.6', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17751', '镇海区', '6002.5', 'nativeplace', '6003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17750', '北仑区', '6002.4', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17749', '江北区', '6002.3', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17748', '江东区', '6002.2', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17747', '海曙区', '6002.1', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17746', '宁波市', '6002', 'nativeplace', '6002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17745', '临安市', '6001.13', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17744', '富阳市', '6001.12', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17743', '建德市', '6001.11', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17742', '淳安县', '6001.10', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17741', '桐庐县', '6001.9', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17740', '余杭区', '6001.8', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17739', '萧山区', '6001.7', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17738', '滨江区', '6001.6', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17737', '西湖区', '6001.5', 'nativeplace', '6002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17736', '拱墅区', '6001.4', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17735', '江干区', '6001.3', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17734', '下城区', '6001.2', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17733', '上城区', '6001.1', 'nativeplace', '6001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17732', '杭州市', '6001', 'nativeplace', '6001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17731', '浙江省', '6000', 'nativeplace', '6000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17730', '泗洪县', '5513.5', 'nativeplace', '5514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17729', '泗阳县', '5513.4', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17728', '沭阳县', '5513.3', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17727', '宿豫区', '5513.2', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17726', '宿城区', '5513.1', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17725', '宿迁市', '5513', 'nativeplace', '5513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17724', '姜堰市', '5512.6', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17723', '泰兴市', '5512.5', 'nativeplace', '5513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17722', '靖江市', '5512.4', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17721', '兴化市', '5512.3', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17720', '高港区', '5512.2', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17719', '海陵区', '5512.1', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17718', '泰州市', '5512', 'nativeplace', '5512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17717', '句容市', '5511.6', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17716', '扬中市', '5511.5', 'nativeplace', '5512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17715', '丹阳市', '5511.4', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17714', '丹徒区', '5511.3', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17713', '润州区', '5511.2', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17712', '京口区', '5511.1', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17711', '镇江市', '5511', 'nativeplace', '5511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17710', '江都市', '5510.7', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17709', '高邮市', '5510.6', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17708', '仪征市', '5510.5', 'nativeplace', '5511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17707', '宝应县', '5510.4', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17706', '郊　区', '5510.3', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17705', '邗江区', '5510.2', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17704', '广陵区', '5510.1', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17703', '扬州市', '5510', 'nativeplace', '5510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17702', '大丰市', '5509.9', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17701', '东台市', '5509.8', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17700', '建湖县', '5509.7', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17699', '射阳县', '5509.6', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17698', '阜宁县', '5509.5', 'nativeplace', '5510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17697', '滨海县', '5509.4', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17696', '响水县', '5509.3', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17695', '盐都区', '5509.2', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17694', '亭湖区', '5509.1', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17693', '盐城市', '5509', 'nativeplace', '5509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17692', '金湖县', '5508.8', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17691', '盱眙县', '5508.7', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17690', '洪泽县', '5508.6', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17689', '涟水县', '5508.5', 'nativeplace', '5509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17688', '清浦区', '5508.4', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17687', '淮阴区', '5508.3', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17686', '楚州区', '5508.2', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17685', '清河区', '5508.1', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17684', '淮安市', '5508', 'nativeplace', '5508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17683', '灌南县', '5507.7', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17682', '灌云县', '5507.6', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17681', '东海县', '5507.5', 'nativeplace', '5508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17680', '赣榆县', '5507.4', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17679', '海州区', '5507.3', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17678', '新浦区', '5507.2', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17677', '连云区', '5507.1', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17676', '连云港市', '5507', 'nativeplace', '5507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17675', '海门市', '5506.8', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17674', '通州市', '5506.7', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17673', '如皋市', '5506.6', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17672', '启东市', '5506.5', 'nativeplace', '5507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17671', '如东县', '5506.4', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17670', '海安县', '5506.3', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17669', '港闸区', '5506.2', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17668', '崇川区', '5506.1', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17667', '南通市', '5506', 'nativeplace', '5506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17666', '太仓市', '5505.11', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17665', '吴江市', '5505.10', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17664', '昆山市', '5505.9', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17663', '张家港市', '5505.8', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17662', '常熟市', '5505.7', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17661', '相城区', '5505.6', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17660', '吴中区', '5505.5', 'nativeplace', '5506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17659', '虎丘区', '5505.4', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17658', '金阊区', '5505.3', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17657', '平江区', '5505.2', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17656', '沧浪区', '5505.1', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17655', '苏州市', '5505', 'nativeplace', '5505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17654', '金坛市', '5504.7', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17653', '溧阳市', '5504.6', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17652', '武进区', '5504.5', 'nativeplace', '5505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17651', '新北区', '5504.4', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17650', '戚墅堰区', '5504.3', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17649', '钟楼区', '5504.2', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17648', '天宁区', '5504.1', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17647', '常州市', '5504', 'nativeplace', '5504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17646', '邳州市', '5503.11', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17645', '新沂市', '5503.10', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17644', '睢宁县', '5503.9', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17643', '铜山县', '5503.8', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17642', '沛　县', '5503.7', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17641', '丰　县', '5503.6', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17640', '泉山区', '5503.5', 'nativeplace', '5504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17639', '贾汪区', '5503.4', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17638', '九里区', '5503.3', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17637', '云龙区', '5503.2', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17636', '鼓楼区', '5503.1', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17635', '徐州市', '5503', 'nativeplace', '5503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17634', '宜兴市', '5502.8', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17633', '江阴市', '5502.7', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17632', '滨湖区', '5502.6', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17631', '惠山区', '5502.5', 'nativeplace', '5503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17630', '锡山区', '5502.4', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17629', '北塘区', '5502.3', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17628', '南长区', '5502.2', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17627', '崇安区', '5502.1', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17626', '无锡市', '5502', 'nativeplace', '5502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17625', '高淳县', '5501.13', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17624', '溧水县', '5501.12', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17623', '六合区', '5501.11', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17622', '江宁区', '5501.10', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17621', '雨花台区', '5501.9', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17620', '栖霞区', '5501.8', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17619', '浦口区', '5501.7', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17618', '下关区', '5501.6', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17617', '鼓楼区', '5501.5', 'nativeplace', '5502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17616', '建邺区', '5501.4', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17615', '秦淮区', '5501.3', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17614', '白下区', '5501.2', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17613', '武区', '5501.1', 'nativeplace', '5501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17612', '南京市', '5501', 'nativeplace', '5501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17611', '江苏省', '5500', 'nativeplace', '5500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17610', '崇明县', '5019', 'nativeplace', '5019', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17609', '奉贤区', '5018', 'nativeplace', '5018', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17608', '南汇区', '5017', 'nativeplace', '5017', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17607', '青浦区', '5016', 'nativeplace', '5016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17606', '松江区', '5015', 'nativeplace', '5015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17605', '金山区', '5014', 'nativeplace', '5014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17604', '浦东新区', '5013', 'nativeplace', '5013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17603', '嘉定区', '5012', 'nativeplace', '5012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17602', '宝山区', '5011', 'nativeplace', '5011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17601', '闵行区', '5010', 'nativeplace', '5010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17600', '杨浦区', '5009', 'nativeplace', '5009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17599', '虹口区', '5008', 'nativeplace', '5008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17598', '闸北区', '5007', 'nativeplace', '5007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17597', '普陀区', '5006', 'nativeplace', '5006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17596', '静安区', '5005', 'nativeplace', '5005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17595', '长宁区', '5004', 'nativeplace', '5004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17594', '徐汇区', '5003', 'nativeplace', '5003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17593', '卢湾区', '5002', 'nativeplace', '5002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17592', '黄浦区', '5001', 'nativeplace', '5001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17591', '上海市', '5000', 'nativeplace', '5000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17590', '漠河县', '4513.3', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17589', '塔河县', '4513.2', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17588', '呼玛县', '4513.1', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17587', '大兴安岭地区', '4513', 'nativeplace', '4513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17586', '海伦市', '4512.10', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17585', '肇东市', '4512.9', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17584', '安达市', '4512.8', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17583', '绥棱县', '4512.7', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17582', '明水县', '4512.6', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17581', '庆安县', '4512.5', 'nativeplace', '4513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17580', '青冈县', '4512.4', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17579', '兰西县', '4512.3', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17578', '望奎县', '4512.2', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17577', '北林区', '4512.1', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17576', '绥化市', '4512', 'nativeplace', '4512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17575', '五大连池市', '4511.6', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17574', '北安市', '4511.5', 'nativeplace', '4512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17573', '孙吴县', '4511.4', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17572', '逊克县', '4511.3', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17571', '嫩江县', '4511.2', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17570', '爱辉区', '4511.1', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17569', '黑河市', '4511', 'nativeplace', '4511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17568', '穆棱市', '4510.10', 'nativeplace', '4510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17567', '宁安市', '4510.9', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17566', '海林市', '4510.8', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17565', '绥芬河市', '4510.7', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17564', '林口县', '4510.6', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17563', '东宁县', '4510.5', 'nativeplace', '4511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17562', '西安区', '4510.4', 'nativeplace', '4510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17561', '爱民区', '4510.3', 'nativeplace', '4510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17560', '阳明区', '4510.2', 'nativeplace', '4510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17559', '东安区', '4510.1', 'nativeplace', '4510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17558', '牡丹江市', '4510', 'nativeplace', '4510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17557', '勃利县', '4509.4', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17556', '茄子河区', '4509.3', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17555', '桃山区', '4509.2', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17554', '新兴区', '4509.1', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17553', '七台河市', '4509', 'nativeplace', '4509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17552', '富锦市', '4508.11', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17551', '同江市', '4508.10', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17550', '抚远县', '4508.9', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17549', '汤原县', '4508.8', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17548', '桦川县', '4508.7', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17547', '桦南县', '4508.6', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17546', '郊　区', '4508.5', 'nativeplace', '4509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17545', '东风区', '4508.4', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17544', '前进区', '4508.3', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17543', '向阳区', '4508.2', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17542', '永红区', '4508.1', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17541', '佳木斯市', '4508', 'nativeplace', '4508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17540', '铁力市', '4507.17', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17539', '嘉荫县', '4507.16', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17538', '上甘岭区', '4507.15', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17537', '红星区', '4507.14', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17536', '乌伊岭区', '4507.13', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17535', '带岭区', '4507.12', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17534', '汤旺河区', '4507.11', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17533', '乌马河区', '4507.10', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17532', '五营区', '4507.9', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17531', '金山屯区', '4507.8', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17530', '美溪区', '4507.7', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17529', '新青区', '4507.6', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17528', '翠峦区', '4507.5', 'nativeplace', '4508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17527', '西林区', '4507.4', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17526', '友好区', '4507.3', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17525', '南岔区', '4507.2', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17524', '伊春区', '4507.1', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17523', '伊春市', '4507', 'nativeplace', '4507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17522', '杜尔伯特蒙古族自治县', '4506.9', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17521', '林甸县', '4506.8', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17520', '肇源县', '4506.7', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17519', '肇州县', '4506.6', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17518', '大同区', '4506.5', 'nativeplace', '4507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17517', '红岗区', '4506.4', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17516', '让胡路区', '4506.3', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17515', '龙凤区', '4506.2', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17514', '萨尔图区', '4506.1', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17513', '大庆市', '4506', 'nativeplace', '4506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17512', '饶河县', '4505.8', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17511', '宝清县', '4505.7', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17510', '友谊县', '4505.6', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17509', '集贤县', '4505.5', 'nativeplace', '4506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17508', '宝山区', '4505.4', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17507', '四方台区', '4505.3', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17506', '岭东区', '4505.2', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17505', '尖山区', '4505.1', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17504', '双鸭山市', '4505', 'nativeplace', '4505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17503', '绥滨县', '4504.8', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17502', '萝北县', '4504.7', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17501', '兴山区', '4504.6', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17500', '东山区', '4504.5', 'nativeplace', '4505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17499', '兴安区', '4504.4', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17498', '南山区', '4504.3', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17497', '工农区', '4504.2', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17496', '向阳区', '4504.1', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17495', '鹤岗市', '4504', 'nativeplace', '4504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17494', '密山市', '4503.9', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17493', '虎林市', '4503.8', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17492', '鸡东县', '4503.7', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17491', '麻山区', '4503.6', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17490', '城子河区', '4503.5', 'nativeplace', '4504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17489', '梨树区', '4503.4', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17488', '滴道区', '4503.3', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17487', '恒山区', '4503.2', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17486', '鸡冠区', '4503.1', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17485', '鸡西市', '4503', 'nativeplace', '4503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17484', '讷河市', '4502.15', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17483', '拜泉县', '4502.14', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17482', '克东县', '4502.13', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17481', '克山县', '4502.12', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17480', '富裕县', '4502.11', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17479', '甘南县', '4502.10', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17478', '泰来县', '4502.9', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17477', '龙江县 依安县', '4502.8', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17476', '梅里斯达斡尔族区', '4502.7', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17475', '碾子山区', '4502.6', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17474', '富拉尔基区', '4502.5', 'nativeplace', '4503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17473', '昂昂溪区', '4502.4', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17472', '铁锋区', '4502.3', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17471', '建华区', '4502.2', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17470', '龙沙区', '4502.1', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17469', '齐齐哈尔市', '4502', 'nativeplace', '4502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17468', '五常市', '4501.19', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17467', '尚志市', '4501.18', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17466', '双城市', '4501.17', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17465', '阿城市', '4501.16', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17464', '延寿县', '4501.15', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17463', '通河县', '4501.14', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17462', '木兰县', '4501.13', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17461', '巴彦县', '4501.12', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17460', '宾　县', '4501.11', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17459', '方正县', '4501.10', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17458', '依兰县', '4501.9', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17457', '呼兰区', '4501.8', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17456', '松北区', '4501.7', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17455', '平房区', '4501.6', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17454', '动力区', '4501.5', 'nativeplace', '4502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17453', '香坊区', '4501.4', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17452', '道外区', '4501.3', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17451', '南岗区', '4501.2', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17450', '道里区', '4501.1', 'nativeplace', '4501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17449', '哈尔滨市', '4501', 'nativeplace', '4501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17448', '黑龙江省', '4500', 'nativeplace', '4500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17447', '安图县', '4009.8', 'nativeplace', '4010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17446', '汪清县', '4009.7', 'nativeplace', '4010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17445', '和龙市', '4009.6', 'nativeplace', '4010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17444', '龙井市', '4009.5', 'nativeplace', '4010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17443', '珲春市', '4009.4', 'nativeplace', '4009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17442', '敦化市', '4009.3', 'nativeplace', '4009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17441', '图们市', '4009.2', 'nativeplace', '4009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17440', '延吉市', '4009.1', 'nativeplace', '4009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17439', '延边朝鲜族自治州', '4009', 'nativeplace', '4009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17438', '大安市', '4008.5', 'nativeplace', '4009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17437', '洮南市', '4008.4', 'nativeplace', '4008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17436', '通榆县', '4008.3', 'nativeplace', '4008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17435', '镇赉县', '4008.2', 'nativeplace', '4008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17434', '洮北区', '4008.1', 'nativeplace', '4008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17433', '白城市', '4008', 'nativeplace', '4008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17432', '扶余县', '4007.5', 'nativeplace', '4008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17431', '乾安县', '4007.4', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17430', '长岭县', '4007.3', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17429', '前郭尔罗斯蒙古族自治县', '4007.2', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17428', '宁江区', '4007.1', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17427', '松原市', '4007', 'nativeplace', '4007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17426', '临江市', '4006.6', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17425', '江源县', '4006.5', 'nativeplace', '4007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17424', '长白朝鲜族自治县', '4006.4', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17423', '靖宇县', '4006.3', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17422', '抚松县', '4006.2', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17421', '八道江区', '4006.1', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17420', '白山市', '4006', 'nativeplace', '4006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17419', '集安市', '4005.7', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17418', '梅河口市', '4005.6', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17417', '柳河县', '4005.5', 'nativeplace', '4006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17416', '辉南县', '4005.4', 'nativeplace', '4005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17415', '通化县', '4005.3', 'nativeplace', '4005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17414', '二道江区', '4005.2', 'nativeplace', '4005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17413', '东昌区', '4005.1', 'nativeplace', '4005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17412', '通化市', '4005', 'nativeplace', '4005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17411', '东辽县', '4004.4', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17410', '东丰县', '4004.3', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17409', '西安区', '4004.2', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17408', '龙山区', '4004.1', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17407', '辽源市', '4004', 'nativeplace', '4004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17406', '双辽市', '4003.6', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17405', '公主岭市', '4003.5', 'nativeplace', '4004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17404', '伊通满族自治县', '4003.4', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17403', '梨树县', '4003.3', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17402', '铁东区', '4003.2', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17401', '铁西区', '4003.1', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17400', '四平市', '4003', 'nativeplace', '4003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17399', '磐石市', '4002.9', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17398', '舒兰市', '4002.8', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17397', '桦甸市', '4002.7', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17396', '蛟河市', '4002.6', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17395', '永吉县', '4002.5', 'nativeplace', '4003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17394', '丰满区', '4002.4', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17393', '船营区', '4002.3', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17392', '龙潭区', '4002.2', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17391', '昌邑区', '4002.1', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17390', '吉林市', '4002', 'nativeplace', '4002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17389', '德惠市', '4001.10', 'nativeplace', '4001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17388', '榆树市', '4001.9', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17387', '九台市', '4001.8', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17386', '农安县', '4001.7', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17385', '双阳区', '4001.6', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17384', '绿园区', '4001.5', 'nativeplace', '4002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17383', '二道区', '4001.4', 'nativeplace', '4001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17382', '朝阳区', '4001.3', 'nativeplace', '4001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17381', '宽城区', '4001.2', 'nativeplace', '4001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17380', '南关区', '4001.1', 'nativeplace', '4001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17379', '长春市', '4001', 'nativeplace', '4001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17378', '吉林省', '4000', 'nativeplace', '4000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17377', '兴城市', '3514.6', 'nativeplace', '3515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17376', '建昌县', '3514.5', 'nativeplace', '3515', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17375', '绥中县', '3514.4', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17374', '南票区', '3514.3', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17373', '龙港区', '3514.2', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17372', '连山区', '3514.1', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17371', '葫芦岛市', '3514', 'nativeplace', '3514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17370', '凌源市', '3513.7', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17369', '北票市', '3513.6', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17368', '喀喇沁左翼蒙古族自治县', '3513.5', 'nativeplace', '3514', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17367', '建平县', '3513.4', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17366', '朝阳县', '3513.3', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17365', '龙城区', '3513.2', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17364', '双塔区', '3513.1', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17363', '朝阳市', '3513', 'nativeplace', '3513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17362', '开原市', '3512.7', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17361', '调兵山市', '3512.6', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17360', '昌图县', '3512.5', 'nativeplace', '3513', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17359', '西丰县', '3512.4', 'nativeplace', '3512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17358', '铁岭县', '3512.3', 'nativeplace', '3512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17357', '清河区', '3512.2', 'nativeplace', '3512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17356', '银州区', '3512.1', 'nativeplace', '3512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17355', '铁岭市', '3512', 'nativeplace', '3512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17354', '盘山县', '3511.4', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17353', '大洼县', '3511.3', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17352', '兴隆台区', '3511.2', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17351', '双台子区', '3511.1', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17350', '盘锦市', '3511', 'nativeplace', '3511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17349', '灯塔市', '3510.7', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17348', '辽阳县', '3510.6', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17347', '太子河区', '3510.5', 'nativeplace', '3511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17346', '弓长岭区', '3510.4', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17345', '宏伟区', '3510.3', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17344', '文圣区', '3510.2', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17343', '白塔区', '3510.1', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17342', '辽阳市', '3510', 'nativeplace', '3510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17341', '彰武县', '3509.7', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17340', '阜新蒙古族自治县', '3509.6', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17339', '细河区', '3509.5', 'nativeplace', '3510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17338', '清河门区', '3509.4', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17337', '太平区', '3509.3', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17336', '新邱区', '3509.2', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17335', '海州区', '3509.1', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17334', '阜新市', '3509', 'nativeplace', '3509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17333', '大石桥市', '3508.6', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17332', '盖州市', '3508.5', 'nativeplace', '3509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17331', '老边区', '3508.4', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17330', '鲅鱼圈区', '3508.3', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17329', '西市区', '3508.2', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17328', '站前区', '3508.1', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17327', '营口市', '3508', 'nativeplace', '3508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17326', '北宁市', '3507.7', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17325', '凌海市', '3507.6', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17324', '义　县', '3507.5', 'nativeplace', '3508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17323', '黑山县', '3507.4', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17322', '太和区', '3507.3', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17321', '凌河区', '3507.2', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17320', '古塔区', '3507.1', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17319', '锦州市', '3507', 'nativeplace', '3507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17318', '凤城市', '3506.6', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17317', '东港市', '3506.5', 'nativeplace', '3507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17316', '宽甸满族自治县', '3506.4', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17315', '振安区', '3506.3', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17314', '振兴区', '3506.2', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17313', '元宝区', '3506.1', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17312', '丹东市', '3506', 'nativeplace', '3506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17311', '桓仁满族自治县', '3505.6', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17310', '本溪满族自治县', '3505.5', 'nativeplace', '3506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17309', '南芬区', '3505.4', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17308', '明山区', '3505.3', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17307', '溪湖区', '3505.2', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17306', '平山区', '3505.1', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17305', '本溪市', '3505', 'nativeplace', '3505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17304', '清原满族自治县', '3504.7', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17303', '新宾满族自治县', '3504.6', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17302', '抚顺县', '3504.5', 'nativeplace', '3505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17301', '顺城区', '3504.4', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17300', '望花区', '3504.3', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17299', '东洲区', '3504.2', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17298', '新抚区', '3504.1', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17297', '抚顺市', '3504', 'nativeplace', '3504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17296', '海城市', '3503.7', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17295', '岫岩满族自治县', '3503.6', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17294', '台安县', '3503.5', 'nativeplace', '3504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17293', '千山区', '3503.4', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17292', '立山区', '3503.3', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17291', '铁西区', '3503.2', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17290', '铁东区', '3503.1', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17289', '鞍山市', '3503', 'nativeplace', '3503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17288', '庄河市', '3502.10', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17287', '普兰店市', '3502.9', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17286', '瓦房店市', '3502.8', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17285', '长海县', '3502.7', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17284', '金州区', '3502.6', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17283', '旅顺口区', '3502.5', 'nativeplace', '3503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17282', '甘井子区', '3502.4', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17281', '沙河口区', '3502.3', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17280', '西岗区', '3502.2', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17279', '中山区', '3502.1', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17278', '大连市', '3502', 'nativeplace', '3502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17277', '新民市', '3501.13', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17276', '法库县', '3501.12', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17275', '康平县', '3501.11', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17274', '辽中县', '3501.10', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17273', '于洪区', '3501.9', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17272', '新城子区', '3501.8', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17271', '东陵区', '3501.7', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17270', '苏家屯区', '3501.6', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17269', '铁西区', '3501.5', 'nativeplace', '3502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17268', '皇姑区', '3501.4', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17267', '大东区', '3501.3', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17266', '沈河区', '3501.2', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17265', '和平区', '3501.1', 'nativeplace', '3501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17264', '沈阳市', '3501', 'nativeplace', '3501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17263', '辽宁省', '3500', 'nativeplace', '3500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17262', '额济纳旗', '3012.3', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17261', '阿拉善右旗', '3012.2', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17260', '阿拉善左旗', '3012.1', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17259', '阿拉善盟', '3012', 'nativeplace', '3012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17258', '多伦县', '3011.12', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17257', '正蓝旗', '3011.11', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17256', '正镶白旗', '3011.10', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17255', '镶黄旗', '3011.9', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17254', '太仆寺旗', '3011.8', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17253', '西乌珠穆沁旗', '3011.7', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17252', '东乌珠穆沁旗', '3011.6', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17251', '苏尼特右旗', '3011.5', 'nativeplace', '3012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17250', '苏尼特左旗', '3011.4', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17249', '阿巴嘎旗', '3011.3', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17248', '锡林浩特市', '3011.2', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17247', '二连浩特市', '3011.1', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17246', '锡林郭勒盟', '3011', 'nativeplace', '3011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17245', '突泉县', '3010.6', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17244', '扎赉特旗', '3010.5', 'nativeplace', '3011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17243', '科尔沁右翼中旗', '3010.4', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17242', '科尔沁右翼前旗', '3010.3', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17241', '阿尔山市', '3010.2', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17240', '乌兰浩特市', '3010.1', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17239', '兴安盟', '3010', 'nativeplace', '3010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17238', '丰镇市', '3009.11', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17237', '四子王旗', '3009.10', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17236', '察哈尔右翼后旗', '3009.9', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17235', '察哈尔右翼中旗', '3009.8', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17234', '察哈尔右翼前旗', '3009.7', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17233', '凉城县', '3009.6', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17232', '兴和县', '3009.5', 'nativeplace', '3010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17231', '商都县', '3009.4', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17230', '化德县', '3009.3', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17229', '卓资县', '3009.2', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17228', '集宁区', '3009.1', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17227', '乌兰察布市', '3009', 'nativeplace', '3009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17226', '杭锦后旗', '3008.7', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17225', '乌拉特后旗', '3008.6', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17224', '乌拉特中旗', '3008.5', 'nativeplace', '3009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17223', '乌拉特前旗', '3008.4', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17222', '磴口县', '3008.3', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17221', '五原县', '3008.2', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17220', '临河区', '3008.1', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17219', '巴彦淖尔市', '3008', 'nativeplace', '3008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17218', '根河市', '3007.13', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17217', '额尔古纳市', '3007.12', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17216', '扎兰屯市', '3007.11', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17215', '牙克石市', '3007.10', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17214', '满洲里市', '3007.9', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17213', '新巴尔虎右旗', '3007.8', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17212', '新巴尔虎左旗', '3007.7', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17211', '陈巴尔虎旗', '3007.6', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17210', '鄂温克族自治旗', '3007.5', 'nativeplace', '3008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17209', '鄂伦春自治旗', '3007.4', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17208', '莫力达瓦达斡尔族自治旗', '3007.3', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17207', '阿荣旗', '3007.2', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17206', '海拉尔区', '3007.1', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17205', '呼伦贝尔市', '3007', 'nativeplace', '3007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17204', '伊金霍洛旗', '3006.8', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17203', '乌审旗', '3006.7', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17202', '杭锦旗', '3006.6', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17201', '鄂托克旗', '3006.5', 'nativeplace', '3007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17200', '鄂托克前旗', '3006.4', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17199', '准格尔旗', '3006.3', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17198', '达拉特旗', '3006.2', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17197', '东胜区', '3006.1', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17196', '鄂尔多斯市', '3006', 'nativeplace', '3006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17195', '霍林郭勒市', '3005.8', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17194', '扎鲁特旗', '3005.7', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17193', '奈曼旗', '3005.6', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17192', '库伦旗', '3005.5', 'nativeplace', '3006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17191', '开鲁县', '3005.4', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17190', '科尔沁左翼后旗', '3005.3', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17189', '科尔沁左翼中旗', '3005.2', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17188', '科尔沁区', '3005.1', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17187', '通辽市', '3005', 'nativeplace', '3005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17186', '敖汉旗', '3004.12', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17185', '宁城县', '3004.11', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17184', '喀喇沁旗', '3004.10', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17183', '翁牛特旗', '3004.9', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17182', '克什克腾旗', '3004.8', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17181', '林西县', '3004.7', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17180', '巴林右旗', '3004.6', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17179', '巴林左旗', '3004.5', 'nativeplace', '3005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17178', '阿鲁科尔沁旗', '3004.4', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17177', '松山区', '3004.3', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17176', '元宝山区', '3004.2', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17175', '红山区', '3004.1', 'nativeplace', '3004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17174', '赤峰市', '3004', 'nativeplace', '3004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17173', '乌达区', '3003.3', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17172', '海南区', '3003.2', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17171', '海勃湾区', '3003.1', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17170', '乌海市', '3003', 'nativeplace', '3003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17169', '达尔罕茂明安联合旗', '3002.9', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17168', '固阳县', '3002.8', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17167', '土默特右旗', '3002.7', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17166', '九原区', '3002.6', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17165', '白云矿区', '3002.5', 'nativeplace', '3003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17164', '石拐区', '3002.4', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17163', '青山区', '3002.3', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17162', '昆都仑区', '3002.2', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17161', '东河区', '3002.1', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17160', '包头市', '3002', 'nativeplace', '3002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17159', '武川县', '3001.9', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17158', '清水河县', '3001.8', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17157', '和林格尔县', '3001.7', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17156', '托克托县', '3001.6', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17155', '土默特左旗', '3001.5', 'nativeplace', '3002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17154', '赛罕区', '3001.4', 'nativeplace', '3001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17153', '玉泉区', '3001.3', 'nativeplace', '3001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17152', '回民区', '3001.2', 'nativeplace', '3001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17151', '新城区', '3001.1', 'nativeplace', '3001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17150', '呼和浩特市', '3001', 'nativeplace', '3001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17149', '内蒙古自治区', '3000', 'nativeplace', '3000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17148', '汾阳市', '2511.13', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17147', '孝义市', '2511.12', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17146', '交口县', '2511.11', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17145', '中阳县', '2511.10', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17144', '方山县', '2511.9', 'nativeplace', '2512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17143', '岚　县', '2511.8', 'nativeplace', '2512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17142', '石楼县', '2511.7', 'nativeplace', '2512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17141', '柳林县', '2511.6', 'nativeplace', '2512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17140', '临　县', '2511.5', 'nativeplace', '2512', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17139', '兴　县', '2511.4', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17138', '交城县', '2511.3', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17137', '文水县', '2511.2', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17136', '离石区', '2511.1', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17135', '吕梁市', '2511', 'nativeplace', '2511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17134', '霍州市', '2510.17', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17133', '侯马市', '2510.16', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17132', '汾西县', '2510.15', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17131', '蒲　县', '2510.14', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17130', '永和县', '2510.13', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17129', '隰　县', '2510.12', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17128', '大宁县', '2510.11', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17127', '乡宁县', '2510.10', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17126', '吉　县', '2510.9', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17125', '浮山县', '2510.8', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17124', '安泽县', '2510.7', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17123', '古　县', '2510.6', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17122', '洪洞县', '2510.5', 'nativeplace', '2511', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17121', '襄汾县', '2510.4', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17120', '翼城县', '2510.3', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17119', '曲沃县', '2510.2', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17118', '尧都区', '2510.1', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17117', '临汾市', '2510', 'nativeplace', '2510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17116', '原平市', '2509.14', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17115', '偏关县', '2509.13', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17114', '保德县', '2509.12', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17113', '河曲县', '2509.11', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17112', '岢岚县', '2509.10', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17111', '五寨县', '2509.9', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17110', '神池县', '2509.8', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17109', '静乐县', '2509.7', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17108', '宁武县', '2509.6', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17107', '繁峙县', '2509.5', 'nativeplace', '2510', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17106', '代　县', '2509.4', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17105', '五台县', '2509.3', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17104', '定襄县', '2509.2', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17103', '忻府区', '2509.1', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17102', '忻州市', '2509', 'nativeplace', '2509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17101', '河津市', '2508.13', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17100', '永济市', '2508.12', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17099', '芮城县', '2508.11', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17098', '平陆县', '2508.10', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17097', '夏　县', '2508.9', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17096', '垣曲县', '2508.8', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17095', '绛　县', '2508.7', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17094', '新绛县', '2508.6', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17093', '稷山县', '2508.5', 'nativeplace', '2509', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17092', '闻喜县', '2508.4', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17091', '万荣县', '2508.3', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17090', '临猗县', '2508.2', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17089', '盐湖区', '2508.1', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17088', '运城市', '2508', 'nativeplace', '2508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17087', '介休市', '2507.11', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17086', '灵石县', '2507.10', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17085', '平遥县', '2507.9', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17084', '祁　县', '2507.8', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17083', '太谷县', '2507.7', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17082', '寿阳县', '2507.6', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17081', '昔阳县', '2507.5', 'nativeplace', '2508', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17080', '和顺县', '2507.4', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17079', '左权县', '2507.3', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17078', '榆社县', '2507.2', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17077', '榆次区', '2507.1', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17076', '晋中市', '2507', 'nativeplace', '2507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17075', '怀仁县', '2506.6', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17074', '右玉县', '2506.5', 'nativeplace', '2507', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17073', '应　县', '2506.4', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17072', '山阴县', '2506.3', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17071', '平鲁区', '2506.2', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17070', '朔城区', '2506.1', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17069', '朔州市', '2506', 'nativeplace', '2506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17068', '高平市', '2505.6', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17067', '泽州县', '2505.5', 'nativeplace', '2506', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17066', '陵川县', '2505.4', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17065', '阳城县', '2505.3', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17064', '沁水县', '2505.2', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17063', '城　区', '2505.1', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17062', '晋城市', '2505', 'nativeplace', '2505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17061', '潞城市', '2504.13', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17060', '沁源县', '2504.12', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17059', '沁　县', '2504.11', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17058', '武乡县', '2504.10', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17057', '长子县', '2504.9', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17056', '壶关县', '2504.8', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17055', '黎城县', '2504.7', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17054', '平顺县', '2504.6', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17053', '屯留县', '2504.5', 'nativeplace', '2505', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17052', '襄垣县', '2504.4', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17051', '长治县', '2504.3', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17050', '郊　区', '2504.2', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17049', '城　区', '2504.1', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17048', '长治市', '2504', 'nativeplace', '2504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17047', '盂　县', '2503.5', 'nativeplace', '2504', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17046', '平定县', '2503.4', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17045', '郊　区', '2503.3', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17044', '矿　区', '2503.2', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17043', '城　区', '2503.1', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17042', '阳泉市', '2503', 'nativeplace', '2503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17041', '南郊区', '2502.12', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17040', '矿　区', '2502.11', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17039', '城　区', '2502.10', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17038', '大同县', '2502.9', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17037', '左云县', '2502.8', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17036', '浑源县', '2502.7', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17035', '灵丘县', '2502.6', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17034', '广灵县', '2502.5', 'nativeplace', '2503', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17033', '天镇县', '2502.4', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17032', '阳高县', '2502.3', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17031', '新荣区', '2502.2', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17030', '南郊区', '2502.1', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17029', '大同市', '2502', 'nativeplace', '2502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17028', '古交市', '2501.10', 'nativeplace', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17027', '娄烦县', '2501.9', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17026', '阳曲县', '2501.8', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17025', '清徐县', '2501.7', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17024', '晋源区', '2501.6', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17023', '万柏林区', '2501.5', 'nativeplace', '2502', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17022', '尖草坪区', '2501.4', 'nativeplace', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17021', '杏花岭区', '2501.3', 'nativeplace', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17020', '迎泽区', '2501.2', 'nativeplace', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17019', '小店区', '2501.1', 'nativeplace', '2501', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17018', '太原市', '2501', 'nativeplace', '2501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('17017', '山西省', '2500', 'nativeplace', '2500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('17016', '河间市', '2011.16', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17015', '黄骅市', '2011.15', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17014', '任丘市', '2011.14', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17013', '泊头市', '2011.13', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17012', '孟村回族自治县', '2011.12', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17011', '献　县', '2011.11', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17010', '吴桥县', '2011.10', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17009', '南皮县', '2011.9', 'nativeplace', '2012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17008', '肃宁县', '2011.8', 'nativeplace', '2012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17007', '盐山县', '2011.7', 'nativeplace', '2012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17006', '海兴县', '2011.6', 'nativeplace', '2012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17005', '东光县', '2011.5', 'nativeplace', '2012', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17004', '青　县', '2011.4', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17003', '沧　县', '2011.3', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17002', '运河区', '2011.2', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17001', '新华区', '2011.1', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('17000', '沧州市', '2011', 'nativeplace', '2011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16999', '深州市', '2010.11', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16998', '冀州市', '2010.10', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16997', '阜城县', '2010.9', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16996', '景　县', '2010.8', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16995', '故城县', '2010.7', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16994', '安平县', '2010.6', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16993', '饶阳县', '2010.5', 'nativeplace', '2011', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16992', '武强县', '2010.4', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16991', '武邑县', '2010.3', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16990', '枣强县', '2010.2', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16989', '桃城区', '2010.1', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16988', '衡水市', '2010', 'nativeplace', '2010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16987', '三河市', '2009.10', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16986', '霸州市', '2009.9', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16985', '大厂回族自治县', '2009.8', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16984', '文安县', '2009.7', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16983', '大城县', '2009.6', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16982', '香河县', '2009.5', 'nativeplace', '2010', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16981', '永清县', '2009.4', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16980', '固安县', '2009.3', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16979', '广阳区', '2009.2', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16978', '安次区', '2009.1', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16977', '廊坊市', '2009', 'nativeplace', '2009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16976', ' 围场满族蒙古族自治县', '2008.11', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16975', '宽城满族自治', '2008.10', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16974', '丰宁满族自治县', '2008.9', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16973', '隆化县', '2008.8', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16972', '滦平县', '2008.7', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16971', '平泉县', '2008.6', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16970', '兴隆县', '2008.5', 'nativeplace', '2009', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16969', '承德县', '2008.4', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16968', '鹰手营子矿区', '2008.3', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16967', '双滦区', '2008.2', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16966', '双桥区', '2008.1', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16965', '承德市', '2008', 'nativeplace', '2008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16964', '崇礼县', '2007.17', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16963', '赤城县', '2007.16', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16962', '涿鹿县', '2007.15', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16961', '怀来县', '2007.14', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16960', '万全县', '2007.13', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16959', '怀安县', '2007.12', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16958', '阳原县', '2007.11', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16957', '蔚　县', '2007.10', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16956', '尚义县', '2007.9', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16955', '沽源县', '2007.8', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16954', '康保县', '2007.7', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16953', '张北县', '2007.6', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16952', '宣化县', '2007.5', 'nativeplace', '2008', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16951', '下花园区', '2007.4', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16950', '宣化区', '2007.3', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16949', '桥西区', '2007.2', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16948', '桥东区', '2007.1', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16947', '张家口市', '2007', 'nativeplace', '2007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16946', '高碑店市', '2006.25', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16945', '安国市', '2006.24', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16944', '定州市', '2006.23', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16943', '涿州市', '2006.22', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16942', '雄　县', '2006.21', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16941', '博野县', '2006.20', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16940', '顺平县', '2006.19', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16939', '蠡　县', '2006.18', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16938', '曲阳县', '2006.17', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16937', '易县', '2006.16', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16936', '安新县', '2006.15', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16935', '望都县', '2006.14', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16934', '涞源县', '2006.13', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16933', '容城县', '2006.12', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16932', '高阳县', '2006.11', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16931', '唐　县', '2006.10', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16930', '定兴县', '2006.9', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16929', '徐水县', '2006.8', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16928', '阜平县', '2006.7', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16927', '涞水县', '2006.6', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16926', '清苑县', '2006.5', 'nativeplace', '2007', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16925', '满城县', '2006.4', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16924', '南市区', '2006.3', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16923', '北市区', '2006.2', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16922', '新市区', '2006.1', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16921', '保定市', '2006', 'nativeplace', '2006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16920', '沙河市', '2005.19', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16919', '南宫市', '2005.18', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16918', '临西县', '2005.17', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16917', '清河县', '2005.16', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16916', '威　县', '2005.15', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16915', '平乡县', '2005.14', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16914', '广宗县', '2005.13', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16913', '新河县', '2005.12', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16912', '巨鹿县', '2005.11', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16911', '宁晋县', '2005.10', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16910', '南和县', '2005.9', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16909', '任　县', '2005.8', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16908', '隆尧县', '2005.7', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16907', '柏乡县', '2005.6', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16906', '内丘县', '2005.5', 'nativeplace', '2006', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16905', '临城县', '2005.4', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16904', '邢台县', '2005.3', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16903', '桥西区', '2005.2', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16902', '桥东区', '2005.1', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16901', '邢台市', '2005', 'nativeplace', '2005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16900', '武安市', '2004.20', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16899', '曲周县', '2004.19', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16898', '魏县', '2004.18', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16897', '馆陶县', '2004.17', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16896', '广平县', '2004.16', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16895', '鸡泽县', '2004.15', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16894', '邱　县', '2004.14', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16893', '永年县', '2004.13', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16892', '肥乡县', '2004.12', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16891', '磁　县', '2004.11', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16890', '涉　县', '2004.10', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16889', '大名县', '2004.9', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16888', '成安县', '2004.8', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16887', '临漳县', '2004.7', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16886', '邯郸县', '2004.6', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16885', '峰峰矿区', '2004.5', 'nativeplace', '2005', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16884', '复兴区', '2004.4', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16883', '丛台区', '2004.3', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16882', '邯山区', '2004.2', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16881', '市辖区', '2004.1', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16880', '邯郸市', '2004', 'nativeplace', '2004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16879', '卢龙县', '2003.7', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16878', '抚宁县', '2003.6', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16877', '昌黎县', '2003.5', 'nativeplace', '2004', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16876', '青龙满族自治县', '2003.4', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16875', '北戴河区', '2003.3', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16874', '山海关区', '2003.2', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16873', '海港区', '2003.1', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16872', '秦皇岛市', '2003', 'nativeplace', '2003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16871', '迁安市', '2002.14', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16870', '遵化市', '2002.13', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16869', '唐海县', '2002.12', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16868', '玉田县', '2002.11', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16867', '迁西县', '2002.10', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16866', '乐亭县', '2002.9', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16865', '滦南县', '2002.8', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16864', '滦　县', '2002.7', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16863', '丰润区', '2002.6', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16862', '丰南区', '2002.5', 'nativeplace', '2003', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16861', '开平区', '2002.4', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16860', '古冶区', '2002.3', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16859', '路北区', '2002.2', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16858', '路南区', '2002.1', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16857', '唐山市', '2002', 'nativeplace', '2002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16856', '鹿泉市', '2001.23', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16855', '新乐市', '2001.22', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16854', '晋州市', '2001.21', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16853', '藁城市', '2001.20', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16852', '辛集市', '2001.19', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16851', '赵　县', '2001.18', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16850', '元氏县', '2001.17', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16849', '平山县', '2001.16', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16848', '无极县', '2001.15', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16847', '赞皇县', '2001.14', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16846', '深泽县', '2001.13', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16845', '高邑县', '2001.12', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16844', '灵寿县', '2001.11', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16843', '行唐县', '2001.10', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16842', '栾城县', '2001.9', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16841', '正定县', '2001.8', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16840', '井陉县', '2001.7', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16839', '裕华区', '2001.6', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16838', '井陉矿区', '2001.5', 'nativeplace', '2002', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16837', '新华区', '2001.4', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16836', '桥西区', '2001.3', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16835', '桥东区', '2001.2', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16834', '长安区', '2001.1', 'nativeplace', '2001', '2');
INSERT INTO `chuanshou_sys_enum` VALUES ('16833', '石家庄市', '2001', 'nativeplace', '2001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16832', '河北省', '2000', 'nativeplace', '2000', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('16831', '蓟　县', '1518', 'nativeplace', '1518', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16830', '静海县', '1517', 'nativeplace', '1517', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16829', '宁河县', '1516', 'nativeplace', '1516', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16828', '宝坻区', '1515', 'nativeplace', '1515', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16827', '武清区', '1514', 'nativeplace', '1514', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16826', '北辰区', '1513', 'nativeplace', '1513', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16825', '津南区', '1512', 'nativeplace', '1512', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16824', '西青区', '1511', 'nativeplace', '1511', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16823', '东丽区', '1510', 'nativeplace', '1510', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16822', '大港区', '1509', 'nativeplace', '1509', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16821', '汉沽区', '1508', 'nativeplace', '1508', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16820', '塘沽区', '1507', 'nativeplace', '1507', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16819', '红桥区', '1506', 'nativeplace', '1506', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16818', '河北区', '1505', 'nativeplace', '1505', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16817', '南开区', '1504', 'nativeplace', '1504', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16816', '河西区', '1503', 'nativeplace', '1503', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16815', '河东区', '1502', 'nativeplace', '1502', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16814', '和平区', '1501', 'nativeplace', '1501', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16813', '天津市', '1500', 'nativeplace', '1500', '0');
INSERT INTO `chuanshou_sys_enum` VALUES ('16812', '延庆县', '1018', 'nativeplace', '1018', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16811', '密云县', '1017', 'nativeplace', '1017', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16810', '平谷区', '1016', 'nativeplace', '1016', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16809', '怀柔区', '1015', 'nativeplace', '1015', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16808', '大兴区', '1014', 'nativeplace', '1014', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16807', '昌平区', '1013', 'nativeplace', '1013', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16806', '顺义区', '1012', 'nativeplace', '1012', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16805', '通州区', '1011', 'nativeplace', '1011', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16804', '房山区', '1010', 'nativeplace', '1010', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16803', '门头沟区', '1009', 'nativeplace', '1009', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16802', '海淀区', '1008', 'nativeplace', '1008', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16801', '石景山区', '1007', 'nativeplace', '1007', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16800', '丰台区', '1006', 'nativeplace', '1006', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16799', '朝阳区', '1005', 'nativeplace', '1005', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16798', '宣武区', '1004', 'nativeplace', '1004', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16797', '崇文区', '1003', 'nativeplace', '1003', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16796', '西城区', '1002', 'nativeplace', '1002', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16795', '东城区', '1001', 'nativeplace', '1001', '1');
INSERT INTO `chuanshou_sys_enum` VALUES ('16794', '北京市', '1000', 'nativeplace', '1000', '0');

-- ----------------------------
-- Table structure for chuanshou_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sys_module`;
CREATE TABLE `chuanshou_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashcode` char(32) NOT NULL DEFAULT '',
  `modname` varchar(30) NOT NULL DEFAULT '',
  `indexname` varchar(20) NOT NULL DEFAULT '',
  `indexurl` varchar(30) NOT NULL DEFAULT '',
  `ismember` tinyint(4) NOT NULL DEFAULT '1',
  `menustring` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sys_module
-- ----------------------------
INSERT INTO `chuanshou_sys_module` VALUES ('1', '0cce60bc0238aa03804682c801584991', '百度新闻', '', '', '0', '');
INSERT INTO `chuanshou_sys_module` VALUES ('2', '1f35620fb42d452fa2bdc1dee1690f92', '文件管理器', '', '', '0', '');
INSERT INTO `chuanshou_sys_module` VALUES ('4', 'b437d85a7a7bc778c9c79b5ec36ab9aa', '友情链接', '', '', '0', '');
INSERT INTO `chuanshou_sys_module` VALUES ('5', 'acb8b88eb4a6d4bfc375c18534f9439e', '投票模块', '', '', '0', '');
INSERT INTO `chuanshou_sys_module` VALUES ('6', '572606600345b1a4bb8c810bbae434cc', '挑错管理', '', '', '0', '');
INSERT INTO `chuanshou_sys_module` VALUES ('7', '533c5b843ded8752b9857cc7c8e5b455', '得德广告模块', '', '', '0', '<m:top name=\'德得广告\' display=\'block\'>\r\n<m:item name=\'德得模块\' link=\'mda_main.php\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'广告管理\' link=\'mda_main.php?dopost=place\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'查看报表\' link=\'mda_main.php?dopost=report\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'结算中心\' link=\'mda_main.php?dopost=account\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'德得设置\' link=\'mda_main.php?dopost=setting\' rank=\'plus_广告管理\' target=\'main\'/>\r\n</m:top>');

-- ----------------------------
-- Table structure for chuanshou_sys_set
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sys_set`;
CREATE TABLE `chuanshou_sys_set` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL DEFAULT '',
  `items` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sys_set
-- ----------------------------
INSERT INTO `chuanshou_sys_set` VALUES ('1', 'nature', '性格外向,性格内向,活泼开朗,沉默寡言,幽默,稳重,轻浮,冲动,坚强,脆弱,幼稚,成熟,能说会道,自私,真诚,独立,依赖,任性,自负,自卑,温柔体贴,神经质,拜金,小心翼翼,暴躁,倔强,逆来顺受,不拘小节,婆婆妈妈,交际广泛,豪爽,害羞,狡猾善变,耿直,虚伪,乐观向上,悲观消极,郁郁寡欢,孤僻,难以琢磨,胆小怕事,敢做敢当,助人为乐,老实,守旧,敏感,迟钝,武断,果断,优柔寡断,暴力倾向,刻薄,损人利己,附庸风雅,时喜时悲,患得患失,快言快语,豪放不羁,多愁善感,循规蹈矩');
INSERT INTO `chuanshou_sys_set` VALUES ('2', 'language', '普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语');

-- ----------------------------
-- Table structure for chuanshou_sys_task
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_sys_task`;
CREATE TABLE `chuanshou_sys_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(50) NOT NULL,
  `dourl` varchar(100) NOT NULL,
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtime` varchar(10) DEFAULT '0000',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freq` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `parameter` text,
  `settime` int(10) unsigned NOT NULL DEFAULT '0',
  `sta` enum('运行','成功','失败') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_sys_task
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_tagindex
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_tagindex`;
CREATE TABLE `chuanshou_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(12) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `weekcc` int(10) unsigned NOT NULL DEFAULT '0',
  `monthcc` int(10) unsigned NOT NULL DEFAULT '0',
  `weekup` int(10) unsigned NOT NULL DEFAULT '0',
  `monthup` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_tagindex
-- ----------------------------
INSERT INTO `chuanshou_tagindex` VALUES ('1', '小程序开发', '1', '0', '1', '0', '0', '1522734926', '1522734926', '1522734926');
INSERT INTO `chuanshou_tagindex` VALUES ('2', '技术保障', '2', '0', '1', '0', '0', '1522736013', '1522736013', '1522736013');
INSERT INTO `chuanshou_tagindex` VALUES ('3', '营销保障', '2', '0', '1', '0', '0', '1522736060', '1522736060', '1522736060');
INSERT INTO `chuanshou_tagindex` VALUES ('4', '运营保障', '2', '0', '1', '0', '0', '1522736110', '1522736110', '1522736110');
INSERT INTO `chuanshou_tagindex` VALUES ('5', '餐饮', '3', '0', '1', '0', '0', '1522739619', '1522739619', '1522739619');

-- ----------------------------
-- Table structure for chuanshou_taglist
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_taglist`;
CREATE TABLE `chuanshou_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_taglist
-- ----------------------------
INSERT INTO `chuanshou_taglist` VALUES ('1', '1', '0', '1', '小程序开发');
INSERT INTO `chuanshou_taglist` VALUES ('2', '3', '0', '2', '技术保障');
INSERT INTO `chuanshou_taglist` VALUES ('3', '4', '0', '2', '营销保障');
INSERT INTO `chuanshou_taglist` VALUES ('4', '5', '0', '2', '运营保障');
INSERT INTO `chuanshou_taglist` VALUES ('5', '22', '0', '3', '餐饮');

-- ----------------------------
-- Table structure for chuanshou_uploads
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_uploads`;
CREATE TABLE `chuanshou_uploads` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `arcid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `url` char(80) NOT NULL DEFAULT '',
  `mediatype` smallint(6) NOT NULL DEFAULT '1',
  `width` char(10) NOT NULL DEFAULT '',
  `height` char(10) NOT NULL DEFAULT '',
  `playtime` char(10) NOT NULL DEFAULT '',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `memberid` (`mid`),
  KEY `arcid` (`arcid`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_uploads
-- ----------------------------
INSERT INTO `chuanshou_uploads` VALUES ('1', '1', '小程序', '/uploads/allimg/180403/1-1P4031355180-L.jpg', '1', '0', '0', '0', '321710', '1522734918', '1');
INSERT INTO `chuanshou_uploads` VALUES ('2', '2', '产品保障', '/uploads/allimg/180403/1-1P4031412490-L.png', '1', '0', '0', '0', '10908', '1522735969', '1');
INSERT INTO `chuanshou_uploads` VALUES ('3', '3', '技术保障', '/uploads/allimg/180403/1-1P4031413300-L.png', '1', '0', '0', '0', '11492', '1522736010', '1');
INSERT INTO `chuanshou_uploads` VALUES ('4', '4', '营销保障', '/uploads/allimg/180403/1-1P4031414090-L.png', '1', '0', '0', '0', '9754', '1522736049', '1');
INSERT INTO `chuanshou_uploads` VALUES ('5', '5', '运营保障', '/uploads/allimg/180403/1-1P4031414510-L.png', '1', '0', '0', '0', '10701', '1522736091', '1');
INSERT INTO `chuanshou_uploads` VALUES ('6', '6', '培训保障', '/uploads/allimg/180403/1-1P4031416160-L.png', '1', '0', '0', '0', '10827', '1522736176', '1');
INSERT INTO `chuanshou_uploads` VALUES ('7', '7', '家具家居', '/uploads/allimg/180403/1-1P4031459420-L.png', '1', '0', '0', '0', '5561', '1522738782', '1');
INSERT INTO `chuanshou_uploads` VALUES ('8', '8', '医疗健康', '/uploads/allimg/180403/1-1P4031459590-L.png', '1', '0', '0', '0', '5908', '1522738799', '1');
INSERT INTO `chuanshou_uploads` VALUES ('9', '9', '美容养生', '/uploads/allimg/180403/1-1P4031500160-L.png', '1', '0', '0', '0', '5742', '1522738816', '1');
INSERT INTO `chuanshou_uploads` VALUES ('10', '10', '生鲜果蔬', '/uploads/allimg/180403/1-1P4031500300-L.png', '1', '0', '0', '0', '5275', '1522738830', '1');
INSERT INTO `chuanshou_uploads` VALUES ('11', '11', '茶饮酒水', '/uploads/allimg/180403/1-1P4031500450-L.png', '1', '0', '0', '0', '4999', '1522738845', '1');
INSERT INTO `chuanshou_uploads` VALUES ('12', '12', '门店', '/uploads/allimg/180403/1-1P4031501000-L.png', '1', '0', '0', '0', '4558', '1522738860', '1');
INSERT INTO `chuanshou_uploads` VALUES ('13', '13', '美妆', '/uploads/allimg/180403/1-1P4031501120-L.png', '1', '0', '0', '0', '5831', '1522738872', '1');
INSERT INTO `chuanshou_uploads` VALUES ('14', '14', '礼品鲜花', '/uploads/allimg/180403/1-1P4031501260-L.png', '1', '0', '0', '0', '6100', '1522738886', '1');
INSERT INTO `chuanshou_uploads` VALUES ('15', '15', '蛋糕烘焙', '/uploads/allimg/180403/1-1P4031501440-L.png', '1', '0', '0', '0', '4465', '1522738904', '1');
INSERT INTO `chuanshou_uploads` VALUES ('16', '16', '服装鞋帽', '/uploads/allimg/180403/1-1P4031501560-L.png', '1', '0', '0', '0', '5629', '1522738916', '1');
INSERT INTO `chuanshou_uploads` VALUES ('17', '17', '日用百货', '/uploads/allimg/180403/1-1P4031502130-L.png', '1', '0', '0', '0', '4398', '1522738933', '1');
INSERT INTO `chuanshou_uploads` VALUES ('18', '18', '汽车服务', '/uploads/allimg/180403/1-1P4031502270-L.png', '1', '0', '0', '0', '5453', '1522738947', '1');
INSERT INTO `chuanshou_uploads` VALUES ('19', '19', '教育培训', '/uploads/allimg/180403/1-1P4031502450-L.png', '1', '0', '0', '0', '5017', '1522738965', '1');
INSERT INTO `chuanshou_uploads` VALUES ('20', '20', '亲子母婴', '/uploads/allimg/180403/1-1P4031503010-L.png', '1', '0', '0', '0', '5725', '1522738981', '1');
INSERT INTO `chuanshou_uploads` VALUES ('21', '21', '图书音像', '/uploads/allimg/180403/1-1P4031503390-L.png', '1', '0', '0', '0', '4494', '1522739019', '1');
INSERT INTO `chuanshou_uploads` VALUES ('22', '22', '餐饮', '/uploads/allimg/180403/1-1P4031513370-L.png', '1', '0', '0', '0', '4238', '1522739617', '1');
INSERT INTO `chuanshou_uploads` VALUES ('23', '23', '分销', '/uploads/allimg/180403/1-1P403151A50-L.png', '1', '0', '0', '0', '6402', '1522739815', '1');
INSERT INTO `chuanshou_uploads` VALUES ('24', '24', '秒杀', '/uploads/allimg/180403/1-1P403151G90-L.png', '1', '0', '0', '0', '6893', '1522739839', '1');
INSERT INTO `chuanshou_uploads` VALUES ('25', '25', '消费', '/uploads/allimg/180403/1-1P403151J70-L.png', '1', '0', '0', '0', '5129', '1522739867', '1');
INSERT INTO `chuanshou_uploads` VALUES ('26', '26', '砍价', '/uploads/allimg/180403/1-1P403151Q60-L.png', '1', '0', '0', '0', '5626', '1522739896', '1');
INSERT INTO `chuanshou_uploads` VALUES ('27', '27', '会员卡', '/uploads/allimg/180403/1-1P403151S80-L.png', '1', '0', '0', '0', '4311', '1522739918', '1');
INSERT INTO `chuanshou_uploads` VALUES ('28', '29', '小程序开发', '/uploads/allimg/180403/1-1P4031J9540-L.jpg', '1', '0', '0', '0', '88616', '1522748994', '1');
INSERT INTO `chuanshou_uploads` VALUES ('29', '30', '售后保障', '/uploads/allimg/180404/1-1P4041A4450-L.png', '1', '0', '0', '0', '11954', '1522832085', '1');
INSERT INTO `chuanshou_uploads` VALUES ('30', '31', '移动轮换图', '/uploads/allimg/180404/1-1P4041F4520-L.jpg', '1', '0', '0', '0', '139245', '1522832692', '1');
INSERT INTO `chuanshou_uploads` VALUES ('31', '32', '解决方案', '/uploads/allimg/180404/1-1P4041G3110-L.jpg', '1', '0', '0', '0', '152693', '1522833191', '1');
INSERT INTO `chuanshou_uploads` VALUES ('32', '33', '小程序开发公司', '/uploads/allimg/180404/1-1P4041K1360-L.jpg', '1', '0', '0', '0', '136139', '1522835496', '1');
INSERT INTO `chuanshou_uploads` VALUES ('33', '34', '上海小程序开发', '/uploads/allimg/180406/1-1P406151P40-L.jpg', '1', '0', '0', '0', '110962', '1522999084', '1');
INSERT INTO `chuanshou_uploads` VALUES ('34', '0', '1-1P40G12A10-L.png', '/uploads/allimg/180407/1-1P40G12A10-L.png', '1', '0', '0', '0', '391352', '1523071611', '1');
INSERT INTO `chuanshou_uploads` VALUES ('35', '35', '足浴', '/uploads/allimg/180407/1-1P40G12R00-L.png', '1', '0', '0', '0', '391352', '1523071700', '1');
INSERT INTO `chuanshou_uploads` VALUES ('36', '35', '足浴', '/uploads/allimg/180407/1-1P40G12951610.png', '1', '760', '440', '0', '391352', '1523071791', '1');
INSERT INTO `chuanshou_uploads` VALUES ('37', '35', '足浴', '/uploads/allimg/180407/1-1P40G13130492.png', '1', '760', '440', '0', '391352', '1523071890', '1');
INSERT INTO `chuanshou_uploads` VALUES ('38', '35', '足浴', '/uploads/allimg/180407/1-1P40G1334DS.png', '1', '760', '440', '0', '391352', '1523072026', '1');
INSERT INTO `chuanshou_uploads` VALUES ('39', '35', '足浴', '/uploads/allimg/180407/1-1P40G13403234.png', '1', '760', '440', '0', '391352', '1523072043', '1');
INSERT INTO `chuanshou_uploads` VALUES ('40', '0', '1-1P40PZ4460-L.png', '/uploads/allimg/180408/1-1P40PZ4460-L.png', '1', '0', '0', '0', '391352', '1523149486', '1');
INSERT INTO `chuanshou_uploads` VALUES ('41', '0', '1-1P40PZ5120-L.png', '/uploads/allimg/180408/1-1P40PZ5120-L.png', '1', '0', '0', '0', '391352', '1523149512', '1');
INSERT INTO `chuanshou_uploads` VALUES ('42', '38', '足浴模板', '/uploads/allimg/180408/1-1P40PZH50-L.png', '1', '0', '0', '0', '391352', '1523149645', '1');
INSERT INTO `chuanshou_uploads` VALUES ('43', '38', '足浴模板', '/uploads/allimg/180408/1-1P40PZP0P7.png', '1', '760', '440', '0', '391352', '1523149680', '1');
INSERT INTO `chuanshou_uploads` VALUES ('44', '38', '足浴模板', '/uploads/allimg/180408/1-1P40PZR10-L.png', '1', '0', '0', '0', '391352', '1523149701', '1');
INSERT INTO `chuanshou_uploads` VALUES ('45', '38', '足浴模板', '/uploads/allimg/180408/1-1P40P911330-L.png', '1', '0', '0', '0', '391352', '1523149893', '1');
INSERT INTO `chuanshou_uploads` VALUES ('46', '40', '电商', '/uploads/allimg/180408/1-1P40Q04014c8.png', '1', '760', '440', '0', '461243', '1523155214', '1');
INSERT INTO `chuanshou_uploads` VALUES ('47', '41', '企业官网', '/uploads/allimg/180408/1-1P40Q04210P5.png', '1', '760', '440', '0', '274553', '1523155330', '1');
INSERT INTO `chuanshou_uploads` VALUES ('48', '42', '水果', '/uploads/allimg/180408/1-1P40Q04311N4.png', '1', '760', '440', '0', '375574', '1523155391', '1');
INSERT INTO `chuanshou_uploads` VALUES ('49', '43', '鲜花', '/uploads/allimg/180408/1-1P40Q0560U96.png', '1', '760', '440', '0', '419944', '1523156168', '1');
INSERT INTO `chuanshou_uploads` VALUES ('50', '44', '餐饮', '/uploads/allimg/180408/1-1P40Q05644X2.png', '1', '760', '440', '0', '461132', '1523156204', '1');
INSERT INTO `chuanshou_uploads` VALUES ('51', '0', '180408/1-1P40Q153514Q.png', '/uploads/allimg/180403/180408/1-1P40Q153514Q.png', '1', '395', '250', '0', '122855', '1523159631', '1');
INSERT INTO `chuanshou_uploads` VALUES ('52', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1-1P40Q22102527.jpg', '1', '795', '413', '0', '38548', '1523161262', '1');
INSERT INTO `chuanshou_uploads` VALUES ('53', '45', '小程序如何做数据分析', '/uploads/allimg/180408/122124C58-1.png', '1', '951', '627', '0', '27068', '1523161284', '1');
INSERT INTO `chuanshou_uploads` VALUES ('54', '45', '小程序如何做数据分析', '/uploads/allimg/180408/12212431S-2.png', '1', '938', '574', '0', '33665', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('55', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221242342-3.png', '1', '906', '154', '0', '10882', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('56', '45', '小程序如何做数据分析', '/uploads/allimg/180408/12212411G-4.png', '1', '939', '614', '0', '16439', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('57', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221242011-5.png', '1', '940', '546', '0', '27522', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('58', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221241196-6.jpg', '1', '640', '329', '0', '17752', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('59', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221245B6-7.png', '1', '938', '547', '0', '22437', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('60', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221245249-8.png', '1', '310', '459', '0', '3534', '1523161285', '1');
INSERT INTO `chuanshou_uploads` VALUES ('61', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221242Z9-9.png', '1', '935', '574', '0', '21504', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('62', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221241G2-10.png', '1', '974', '513', '0', '15928', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('63', '45', '小程序如何做数据分析', '/uploads/allimg/180408/12212463A-11.png', '1', '329', '413', '0', '3096', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('64', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221243923-12.png', '1', '972', '347', '0', '11603', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('65', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221245A1-13.png', '1', '975', '505', '0', '17764', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('66', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221242911-14.png', '1', '973', '518', '0', '14346', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('67', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221242404-15.png', '1', '564', '326', '0', '8105', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('68', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221241641-16.jpg', '1', '505', '399', '0', '100770', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('69', '45', '小程序如何做数据分析', '/uploads/allimg/180408/122124E95-17.png', '1', '865', '326', '0', '15545', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('70', '45', '小程序如何做数据分析', '/uploads/allimg/180408/1221243S8-18.png', '1', '865', '347', '0', '18711', '1523161288', '1');
INSERT INTO `chuanshou_uploads` VALUES ('71', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221353920-1.png', '1', '951', '627', '0', '27068', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('72', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221356302-2.png', '1', '938', '574', '0', '33665', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('73', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221352591-3.png', '1', '906', '154', '0', '10882', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('74', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221351P5-4.png', '1', '939', '614', '0', '16439', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('75', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221353592-5.png', '1', '940', '546', '0', '27522', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('76', '46', '小程序如何做数据分析', '/uploads/allimg/180408/122135K30-6.jpg', '1', '640', '329', '0', '17752', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('77', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221353P0-7.png', '1', '938', '547', '0', '22437', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('78', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221353556-8.png', '1', '310', '459', '0', '3534', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('79', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221352603-9.png', '1', '935', '574', '0', '21504', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('80', '46', '小程序如何做数据分析', '/uploads/allimg/180408/122135L47-10.png', '1', '974', '513', '0', '15928', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('81', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221351408-11.png', '1', '329', '413', '0', '3096', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('82', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221353528-12.png', '1', '972', '347', '0', '11603', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('83', '46', '小程序如何做数据分析', '/uploads/allimg/180408/122135E35-13.png', '1', '975', '505', '0', '17764', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('84', '46', '小程序如何做数据分析', '/uploads/allimg/180408/12213542J-14.png', '1', '973', '518', '0', '14346', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('85', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221356058-15.png', '1', '564', '326', '0', '8105', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('86', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221352052-16.jpg', '1', '505', '399', '0', '100770', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('87', '46', '小程序如何做数据分析', '/uploads/allimg/180408/1221351A5-17.png', '1', '865', '326', '0', '15545', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('88', '46', '小程序如何做数据分析', '/uploads/allimg/180408/12213562M-18.png', '1', '865', '347', '0', '18711', '1523161295', '1');
INSERT INTO `chuanshou_uploads` VALUES ('89', '44', '餐饮', '/uploads/allimg/180408/180408/1-1P40Q4213V28.jpg', '1', '430', '430', '0', '25221', '1523168498', '1');
INSERT INTO `chuanshou_uploads` VALUES ('90', '44', '餐饮', '/uploads/allimg/180408/180408/1-1P40Q4220C58.jpg', '1', '430', '430', '0', '25221', '1523168526', '1');
INSERT INTO `chuanshou_uploads` VALUES ('91', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52052250.jpg', '1', '1920', '528', '0', '268754', '1523172052', '1');
INSERT INTO `chuanshou_uploads` VALUES ('92', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52126328.jpg', '1', '1920', '528', '0', '268754', '1523172086', '1');
INSERT INTO `chuanshou_uploads` VALUES ('93', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52135110.jpg', '1', '1920', '1280', '0', '332852', '1523172095', '1');
INSERT INTO `chuanshou_uploads` VALUES ('94', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52144D0.jpg', '1', '1920', '1751', '0', '317710', '1523172104', '1');
INSERT INTO `chuanshou_uploads` VALUES ('95', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52152H6.jpg', '1', '1920', '1536', '0', '278965', '1523172112', '1');
INSERT INTO `chuanshou_uploads` VALUES ('96', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q522001C.jpg', '1', '1920', '1760', '0', '356416', '1523172120', '1');
INSERT INTO `chuanshou_uploads` VALUES ('97', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52226462.jpg', '1', '1920', '2152', '0', '319429', '1523172146', '1');
INSERT INTO `chuanshou_uploads` VALUES ('98', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52242261.jpg', '1', '1920', '1832', '0', '239694', '1523172162', '1');
INSERT INTO `chuanshou_uploads` VALUES ('99', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q5230LU.jpg', '1', '1920', '2143', '0', '443406', '1523172187', '1');
INSERT INTO `chuanshou_uploads` VALUES ('100', '47', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52322N7.jpg', '1', '1920', '964', '0', '140986', '1523172202', '1');
INSERT INTO `chuanshou_uploads` VALUES ('101', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52F3942.jpg', '1', '810', '759', '0', '168337', '1523172423', '1');
INSERT INTO `chuanshou_uploads` VALUES ('102', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52GR31.jpg', '1', '810', '758', '0', '90248', '1523172438', '1');
INSERT INTO `chuanshou_uploads` VALUES ('103', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52HbH.jpg', '1', '810', '759', '0', '92274', '1523172449', '1');
INSERT INTO `chuanshou_uploads` VALUES ('104', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52J0514.jpg', '1', '810', '759', '0', '107732', '1523172460', '1');
INSERT INTO `chuanshou_uploads` VALUES ('105', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52K1913.jpg', '1', '810', '758', '0', '85339', '1523172471', '1');
INSERT INTO `chuanshou_uploads` VALUES ('106', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52P0c2.jpg', '1', '810', '759', '0', '66186', '1523172480', '1');
INSERT INTO `chuanshou_uploads` VALUES ('107', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52PS56.jpg', '1', '810', '758', '0', '104075', '1523172488', '1');
INSERT INTO `chuanshou_uploads` VALUES ('108', '48', '足浴小程序', '/uploads/allimg/180408/1-1P40Q52Q5352.jpg', '1', '810', '537', '0', '47267', '1523172495', '1');
INSERT INTO `chuanshou_uploads` VALUES ('109', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q55553420.jpg', '1', '1309', '1226', '0', '350555', '1523174153', '1');
INSERT INTO `chuanshou_uploads` VALUES ('110', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60110942.jpg', '1', '1100', '1030', '0', '272785', '1523174470', '1');
INSERT INTO `chuanshou_uploads` VALUES ('111', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q6012b29.jpg', '1', '1309', '1226', '0', '350555', '1523174489', '1');
INSERT INTO `chuanshou_uploads` VALUES ('112', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60149438.jpg', '1', '1100', '1030', '0', '272785', '1523174509', '1');
INSERT INTO `chuanshou_uploads` VALUES ('113', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60156104.jpg', '1', '1100', '1030', '0', '139885', '1523174516', '1');
INSERT INTO `chuanshou_uploads` VALUES ('114', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60203638.jpg', '1', '1100', '1031', '0', '142333', '1523174523', '1');
INSERT INTO `chuanshou_uploads` VALUES ('115', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60213K7.jpg', '1', '1100', '1030', '0', '167763', '1523174533', '1');
INSERT INTO `chuanshou_uploads` VALUES ('116', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60220154.jpg', '1', '1100', '1030', '0', '133928', '1523174540', '1');
INSERT INTO `chuanshou_uploads` VALUES ('117', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q6022Q54.jpg', '1', '1100', '1030', '0', '118301', '1523174548', '1');
INSERT INTO `chuanshou_uploads` VALUES ('118', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60240c6.jpg', '1', '1100', '1031', '0', '105264', '1523174560', '1');
INSERT INTO `chuanshou_uploads` VALUES ('119', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60255631.jpg', '1', '1100', '1030', '0', '171914', '1523174575', '1');
INSERT INTO `chuanshou_uploads` VALUES ('120', '49', '足浴小程序', '/uploads/allimg/180408/1-1P40Q60304P7.jpg', '1', '1100', '714', '0', '73067', '1523174584', '1');
INSERT INTO `chuanshou_uploads` VALUES ('121', '50', '大大大', '/uploads/allimg/180408/1-1P40QF1220-L.png', '1', '0', '0', '0', '138378', '1523178082', '1');
INSERT INTO `chuanshou_uploads` VALUES ('122', '50', '大大大', '/uploads/180408/1-1P40QF143518.jpg', '1', '430', '430', '0', '25221', '1523178103', '1');
INSERT INTO `chuanshou_uploads` VALUES ('123', '51', '鲜花', '/uploads/allimg/180408/1-1P40QK1060-L.png', '1', '0', '0', '0', '143169', '1523181066', '1');
INSERT INTO `chuanshou_uploads` VALUES ('124', '51', '鲜花', '/uploads/180408/1-1P40QK124B5.jpg', '1', '430', '430', '0', '25221', '1523181084', '1');
INSERT INTO `chuanshou_uploads` VALUES ('125', '52', '餐饮', '/uploads/allimg/180408/1-1P40QK2190-L.png', '1', '0', '0', '0', '138378', '1523181139', '1');
INSERT INTO `chuanshou_uploads` VALUES ('126', '53', '水果', '/uploads/allimg/180408/1-1P40QK2360-L.png', '1', '0', '0', '0', '128694', '1523181156', '1');
INSERT INTO `chuanshou_uploads` VALUES ('127', '54', '官网', '/uploads/allimg/180408/1-1P40QK3080-L.png', '1', '0', '0', '0', '134953', '1523181188', '1');
INSERT INTO `chuanshou_uploads` VALUES ('128', '55', '足浴', '/uploads/allimg/180408/1-1P40QK3470-L.png', '1', '0', '0', '0', '122855', '1523181227', '1');
INSERT INTO `chuanshou_uploads` VALUES ('129', '56', '企业', '/uploads/allimg/180408/1-1P40QK4140-L.png', '1', '0', '0', '0', '96582', '1523181254', '1');
INSERT INTO `chuanshou_uploads` VALUES ('130', '51', '鲜花', '/uploads/180408/1-1P40R03050563.jpg', '1', '258', '258', '0', '44873', '1523190650', '1');
INSERT INTO `chuanshou_uploads` VALUES ('131', '51', '鲜花', '/uploads/180408/1-1P40R0313T11.jpg', '1', '258', '258', '0', '44873', '1523190698', '1');
INSERT INTO `chuanshou_uploads` VALUES ('132', '51', '鲜花', '/uploads/180408/180408/1-1P40R03224F7.jpg', '1', '258', '258', '0', '44873', '1523190744', '1');
INSERT INTO `chuanshou_uploads` VALUES ('133', '51', '鲜花', '/uploads/180409/1-1P40Z91F21I.png', '1', '395', '250', '0', '143169', '1523236622', '1');
INSERT INTO `chuanshou_uploads` VALUES ('134', '51', '鲜花', '/uploads/180409/1-1P40Z9213a54.png', '1', '248', '257', '0', '82866', '1523236899', '1');
INSERT INTO `chuanshou_uploads` VALUES ('135', '0', '1-1P40Z924230-L.png', '/uploads/allimg/180409/1-1P40Z924230-L.png', '1', '0', '0', '0', '128694', '1523237063', '1');
INSERT INTO `chuanshou_uploads` VALUES ('136', '0', '180409/1-1P40Z925243G.png', '/uploads/180409/180409/1-1P40Z925243G.png', '1', '395', '250', '0', '128694', '1523237124', '1');
INSERT INTO `chuanshou_uploads` VALUES ('137', '0', '1-1P40Z926030-L.png', '/uploads/allimg/180409/1-1P40Z926030-L.png', '1', '0', '0', '0', '128694', '1523237163', '1');
INSERT INTO `chuanshou_uploads` VALUES ('138', '0', '1-1P40Z932450-L.png', '/uploads/allimg/180409/1-1P40Z932450-L.png', '1', '0', '0', '0', '128694', '1523237565', '1');
INSERT INTO `chuanshou_uploads` VALUES ('139', '0', '1-1P40Z933580-L.png', '/uploads/allimg/180409/1-1P40Z933580-L.png', '1', '0', '0', '0', '96582', '1523237638', '1');
INSERT INTO `chuanshou_uploads` VALUES ('140', '0', '1-1P40Z93P70-L.png', '/uploads/allimg/180409/1-1P40Z93P70-L.png', '1', '0', '0', '0', '128694', '1523237887', '1');
INSERT INTO `chuanshou_uploads` VALUES ('141', '57', '水果生鲜', '/uploads/allimg/180409/1-1P40Z93S90-L.png', '1', '0', '0', '0', '128694', '1523237919', '1');
INSERT INTO `chuanshou_uploads` VALUES ('142', '57', '水果生鲜', '/uploads/180409/1-1P40913315L26.png', '1', '259', '252', '0', '67563', '1523251917', '1');
INSERT INTO `chuanshou_uploads` VALUES ('143', '58', '生鲜水果', '/uploads/allimg/180409/1-1P4091334380-L.png', '1', '0', '0', '0', '128694', '1523252078', '1');
INSERT INTO `chuanshou_uploads` VALUES ('144', '59', '餐饮', '/uploads/allimg/180409/1-1P409133A80-L.png', '1', '0', '0', '0', '138378', '1523252218', '1');
INSERT INTO `chuanshou_uploads` VALUES ('145', '59', '餐饮', '/uploads/180409/1-1P4091350453O.jpg', '1', '430', '430', '0', '25221', '1523253045', '1');
INSERT INTO `chuanshou_uploads` VALUES ('146', '0', '1-1P4091351000-L.png', '/uploads/allimg/180409/1-1P4091351000-L.png', '1', '0', '0', '0', '138378', '1523253060', '1');
INSERT INTO `chuanshou_uploads` VALUES ('147', '59', '餐饮', '/uploads/180409/1-1P40913543DJ.jpg', '1', '430', '430', '0', '142210', '1523253276', '1');
INSERT INTO `chuanshou_uploads` VALUES ('148', '60', '企业', '/uploads/allimg/180409/1-1P4091400120-L.png', '1', '0', '0', '0', '96582', '1523253612', '1');
INSERT INTO `chuanshou_uploads` VALUES ('149', '60', '企业', '/uploads/180409/1-1P40914003UP.jpg', '1', '258', '258', '0', '44873', '1523253638', '1');
INSERT INTO `chuanshou_uploads` VALUES ('150', '61', '电商', '/uploads/allimg/180409/1-1P4091446150-L.png', '1', '0', '0', '0', '134953', '1523256375', '1');
INSERT INTO `chuanshou_uploads` VALUES ('151', '62', '足浴', '/uploads/allimg/180409/1-1P4091I5340-L.png', '1', '0', '0', '0', '122850', '1523266534', '1');
INSERT INTO `chuanshou_uploads` VALUES ('152', '0', '180409/1-1P4091S405548.png', '/uploads/180409/1-1P4091S405548.png', '1', '1920', '530', '0', '4309508', '1523270045', '1');
INSERT INTO `chuanshou_uploads` VALUES ('153', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P41016195V29.jpg', '1', '1376', '528', '0', '48911', '1523348398', '1');
INSERT INTO `chuanshou_uploads` VALUES ('154', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162032328.jpg', '1', '848', '482', '0', '27235', '1523348432', '1');
INSERT INTO `chuanshou_uploads` VALUES ('155', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162100O5.jpg', '1', '746', '766', '0', '27887', '1523348460', '1');
INSERT INTO `chuanshou_uploads` VALUES ('156', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162222463.png', '1', '713', '423', '0', '131338', '1523348542', '1');
INSERT INTO `chuanshou_uploads` VALUES ('157', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162451O8.jpg', '1', '1000', '522', '0', '17373', '1523348691', '1');
INSERT INTO `chuanshou_uploads` VALUES ('158', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162641520.jpg', '1', '480', '316', '0', '4713', '1523348801', '1');
INSERT INTO `chuanshou_uploads` VALUES ('159', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162H4394.jpg', '1', '730', '480', '0', '9811', '1523348844', '1');
INSERT INTO `chuanshou_uploads` VALUES ('160', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410162T5228.jpg', '1', '730', '480', '0', '13497', '1523348925', '1');
INSERT INTO `chuanshou_uploads` VALUES ('161', '63', '微信小程序怎么注册', '/uploads/allimg/180410/1-1P410163010443.jpg', '1', '730', '480', '0', '14827', '1523349010', '1');
INSERT INTO `chuanshou_uploads` VALUES ('162', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111T625O0.jpg', '1', '640', '899', '0', '62916', '1523443585', '1');
INSERT INTO `chuanshou_uploads` VALUES ('163', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111TF4393.jpg', '1', '640', '1236', '0', '75452', '1523443624', '1');
INSERT INTO `chuanshou_uploads` VALUES ('164', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111TJ0314.jpg', '1', '640', '1049', '0', '65356', '1523443660', '1');
INSERT INTO `chuanshou_uploads` VALUES ('165', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111TQ4953.jpg', '1', '720', '1344', '0', '89998', '1523443694', '1');
INSERT INTO `chuanshou_uploads` VALUES ('166', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111TT9423.jpg', '1', '720', '1459', '0', '104934', '1523443729', '1');
INSERT INTO `chuanshou_uploads` VALUES ('167', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1-1P4111T91cV.jpg', '1', '640', '951', '0', '60126', '1523443759', '1');
INSERT INTO `chuanshou_uploads` VALUES ('168', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1U4516106-0.jpg', '1', '640', '899', '0', '52384', '1523444091', '1');
INSERT INTO `chuanshou_uploads` VALUES ('169', '70', '微信小程序有多少个流量入口？', '/uploads/allimg/180411/1U4516292-3.jpg', '1', '640', '1049', '0', '54917', '1523444091', '1');
INSERT INTO `chuanshou_uploads` VALUES ('170', '61', '电商', '/uploads/180626/1-1P6260Z21OK.jpg', '1', '258', '258', '0', '42733', '1529974937', '1');
INSERT INTO `chuanshou_uploads` VALUES ('171', '51', '鲜花', '/uploads/180630/1-1P63016145R93.jpg', '1', '258', '258', '0', '48486', '1530346498', '1');

-- ----------------------------
-- Table structure for chuanshou_verifies
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_verifies`;
CREATE TABLE `chuanshou_verifies` (
  `nameid` char(32) NOT NULL DEFAULT '',
  `cthash` varchar(32) NOT NULL DEFAULT '',
  `method` enum('local','official') NOT NULL DEFAULT 'official',
  `filename` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_verifies
-- ----------------------------

-- ----------------------------
-- Table structure for chuanshou_vote
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_vote`;
CREATE TABLE `chuanshou_vote` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `votename` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ismore` tinyint(6) NOT NULL DEFAULT '0',
  `isallow` tinyint(6) NOT NULL DEFAULT '0',
  `view` tinyint(6) NOT NULL DEFAULT '0',
  `spec` int(20) unsigned NOT NULL DEFAULT '0',
  `isenable` tinyint(6) NOT NULL DEFAULT '0',
  `votenote` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_vote
-- ----------------------------
INSERT INTO `chuanshou_vote` VALUES ('1', '你是从哪儿得知本站的？', '1266336000', '1584547200', '0', '0', '1', '1', '0', '0', '<v:note id=\"1\" count=\"1\">朋友介绍</v:note>rn<v:note id=\"2\" count=\"0\">门户网站的搜索引擎</v:note>rn<v:note id=\"3\" count=\"2\">Google或百度搜索</v:note>rn<v:note id=\"4\" count=\"2\">别的网站上的链接</v:note>rn<v:note id=\"5\" count=\"1\">其它途径</v:note>rn');

-- ----------------------------
-- Table structure for chuanshou_vote_member
-- ----------------------------
DROP TABLE IF EXISTS `chuanshou_vote_member`;
CREATE TABLE `chuanshou_vote_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuanshou_vote_member
-- ----------------------------
