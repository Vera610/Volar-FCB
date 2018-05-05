/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50515
Source Host           : localhost:3366
Source Database       : barcelona_db

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2018-04-09 15:09:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for `kcrecord`
-- ----------------------------
DROP TABLE IF EXISTS `kcrecord`;
CREATE TABLE `kcrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kcrecord
-- ----------------------------
INSERT INTO `kcrecord` VALUES ('26', '36', '600', 'in', '2018-01-31 17:19:13');
INSERT INTO `kcrecord` VALUES ('27', '35', '600', 'in', '2018-01-31 17:19:21');
INSERT INTO `kcrecord` VALUES ('28', '34', '600', 'in', '2018-01-31 17:19:28');
INSERT INTO `kcrecord` VALUES ('29', '33', '600', 'in', '2018-01-31 17:19:33');
INSERT INTO `kcrecord` VALUES ('30', '32', '600', 'in', '2018-01-31 17:19:41');
INSERT INTO `kcrecord` VALUES ('31', '31', '600', 'in', '2018-01-31 17:19:47');
INSERT INTO `kcrecord` VALUES ('32', '30', '600', 'in', '2018-01-31 17:19:54');
INSERT INTO `kcrecord` VALUES ('33', '29', '600', 'in', '2018-01-31 17:20:04');
INSERT INTO `kcrecord` VALUES ('35', '35', '1', 'out', '2018-02-11 11:57:19');
INSERT INTO `kcrecord` VALUES ('36', '36', '1', 'out', '2018-02-11 11:57:19');
INSERT INTO `kcrecord` VALUES ('37', '34', '1', 'out', '2018-02-11 11:58:27');
INSERT INTO `kcrecord` VALUES ('38', '30', '1', 'out', '2018-02-11 11:58:27');
INSERT INTO `kcrecord` VALUES ('39', '36', '1', 'out', '2018-02-11 11:58:27');
INSERT INTO `kcrecord` VALUES ('40', '31', '1', 'out', '2018-02-11 11:59:03');
INSERT INTO `kcrecord` VALUES ('41', '31', '1', 'in', '2018-02-11 11:59:16');
INSERT INTO `kcrecord` VALUES ('42', '35', '1', 'out', '2018-02-16 10:45:48');
INSERT INTO `kcrecord` VALUES ('44', '36', '1', 'out', '2018-04-03 11:56:22');

-- ----------------------------
-- Table structure for `msg`
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '很喜欢你们的网站！~', '谢谢！', '2018-02-11 11:49:19', '19');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('16', '不仅仅是一家俱乐部', '  “不仅仅是一家俱乐部”这个口号表达了巴萨一直以来所维持的承诺，不仅限于运动领域。在很多年里，这个承诺支撑着整个加泰罗尼亚社会，因为加泰罗尼亚人因为自身的语言文化在20世纪大部分时间里受到压迫。在这种情况下，巴萨一直支持着他们，捍卫自身的语言文化。即使加泰罗尼亚语并不是一种官方语言，但俱乐部在1921年仍采用加泰罗尼亚语编纂俱乐部章程。1918年，俱乐部还拥护加泰罗尼亚成为自治区的申请。', '2018-01-31 17:06:14', '公告');
INSERT INTO `notice` VALUES ('17', '巴塞罗那发布2017-18赛季主场球衣', '巴萨新赛季球衣结合传统条纹和革命性的Aeroswift技术，剪裁出适合运动发挥的线条，充满了现代气息。\r\n巴萨发布2017-18赛季主场球衣\r\n在球衣正面，传统红色竖间条由中间往两边逐渐由粗变幼，底色依然是传统蓝色。而球衣圆领上印有加泰罗尼亚旗，流线几何的剪裁设计让球员在运动中充满动力。\r\n左右两个袖子内也另有乾坤，右边绣着Forca，左边绣着Barca。\r\n球衣袖子内部还有深红的条纹，当球员在运动中时，能够加快空气流动，而巴萨经典的蓝色短裤里面上同样也有这个深红色条纹，让空气加速流动。\r\n蓝色的球袜则采用了Nike的Grip技术，前面且用金色绣上了Barca，背面则是红色条纹。\r\n巴萨新赛季球衣将会从6月1日开始，在此商店全面发售。', '2018-01-31 17:07:12', '公告');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proinfo` varchar(255) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `fkstatus` varchar(255) DEFAULT NULL,
  `fhstatus` varchar(255) DEFAULT NULL,
  `shstatus` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `psmethod` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '20180211115452', '35,1-36,1-', '19', '994', '2018-02-11 11:54:52', '已付款', '已发货', '已确认', '16360606060', '上海市浦东新区1980号', '0', '快递');
INSERT INTO `order` VALUES ('2', '20180211115809', '34,1-30,1-36,1-', '18', '1118', '2018-02-11 11:58:09', '已付款', '已发货', '已确认', '16310101010', '上海市浦东新区1987号', '0', '快递');
INSERT INTO `order` VALUES ('6', '20180403115254', '36,1-', '19', '526', '2018-04-03 11:52:54', '已付款', '已发货', '已确认', '16360606060', '上海市浦东新区1980号', '0', '快递');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `prono` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `protype` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('29', '巴塞罗那足球 - 红', '600001', '20180211115327.png', '93', '耐克', 'no', null, '18', '0');
INSERT INTO `product` VALUES ('30', '巴塞罗那赛前上衣', '500001', '20180211115315.png', '297', '耐克', 'no', null, '19', '0');
INSERT INTO `product` VALUES ('31', '巴塞罗那欧冠卫衣 - 黑', '400001', '20180211115300.png', '397', '耐克', 'no', null, '20', '0');
INSERT INTO `product` VALUES ('32', '巴塞罗那欧冠棒球外套 - 黑', '300001', '20180211115248.png', '278', '耐克', 'no', null, '21', '0');
INSERT INTO `product` VALUES ('33', '巴塞罗那FCB图案T恤', '200001', '20180211115233.png', '155', '耐克', 'no', null, '22', '0');
INSERT INTO `product` VALUES ('34', '巴塞罗那第三球衣2017/18', '100003', '20180211115153.png', '587', '耐克', 'yes', '456', '23', '0');
INSERT INTO `product` VALUES ('35', '巴塞罗那客场球衣2017/18', '100002', '20180211115140.png', '606', '耐克', 'yes', '468', '23', '0');
INSERT INTO `product` VALUES ('36', '巴塞罗那主场球衣2017/18', '100001', '20180403103113.png', '636', '耐克', 'yes', '526', '23', '0');

-- ----------------------------
-- Table structure for `protype`
-- ----------------------------
DROP TABLE IF EXISTS `protype`;
CREATE TABLE `protype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protype
-- ----------------------------
INSERT INTO `protype` VALUES ('18', '装备', '0');
INSERT INTO `protype` VALUES ('19', '训练服', '0');
INSERT INTO `protype` VALUES ('20', '卫衣', '0');
INSERT INTO `protype` VALUES ('21', '外套', '0');
INSERT INTO `protype` VALUES ('22', 'T恤', '0');
INSERT INTO `protype` VALUES ('23', '队服', '0');

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '瓜迪奥拉', '男', '1970-01-18', '13610111110', '上海市浦东新区1899号', '0', '管理员', null);
INSERT INTO `sysuser` VALUES ('18', 'Messi', '202CB962AC59075B964B07152D234B70', '梅西', '男', '1987-06-24', '16310101010', '上海市浦东新区1987号', '0', '用户', '19870624@qq.com');
INSERT INTO `sysuser` VALUES ('19', 'Xavier', '202CB962AC59075B964B07152D234B70', '哈维', '男', '1980-01-25', '16360606060', '上海市浦东新区1980号', '0', '用户', '19800125@qq.com');
INSERT INTO `sysuser` VALUES ('21', 'smile', '202CB962AC59075B964B07152D234B70', '微笑', '女', '1996-03-24', '13660606060', '上海市浦东新区1996号', '0', '管理员', null);
