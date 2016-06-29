/*
Navicat MySQL Data Transfer

Source Server         : gf
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : comm100

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-05-02 17:13:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for x_data
-- ----------------------------
DROP TABLE IF EXISTS `x_data`;
CREATE TABLE `x_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '数据类型',
  `type_name` varchar(255) NOT NULL DEFAULT '' COMMENT '详细数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_data
-- ----------------------------

-- ----------------------------
-- Table structure for x_login_time
-- ----------------------------
DROP TABLE IF EXISTS `x_login_time`;
CREATE TABLE `x_login_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `login_time` int(11) NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_login_time
-- ----------------------------

-- ----------------------------
-- Table structure for x_person_letter
-- ----------------------------
DROP TABLE IF EXISTS `x_person_letter`;
CREATE TABLE `x_person_letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `service_id` int(11) NOT NULL COMMENT '用户id1',
  `client_id` int(11) NOT NULL COMMENT '用户id2',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0-申请对话中，-1 对话结束，1-对话中，-2 拒绝，-3 客服与客服对话隐藏',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '聊天类型   0-客服与客户，1-客服与客服',
  `chat_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '邀请方式    0-客服邀请客户，1-客户邀请客服，2-客服与客服聊',
  `invite_time` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT '0' COMMENT '开始对话时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束对话时间',
  `transfer_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '转接状态 0-未转接，1-已转接，-1 转接中，-2 被拒绝',
  `transfer_to_id` int(11) DEFAULT NULL COMMENT '转接对象id',
  `transfer_time` int(11) DEFAULT NULL COMMENT '转接时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_person_letter
-- ----------------------------
INSERT INTO `x_person_letter` VALUES ('1', '2', '3', '1', '1', '2', null, '0', '1462001660', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('2', '2', '4', '1', '1', '2', null, '0', '1462001682', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('3', '2', '5', '-1', '0', '0', null, '0', '1462002569', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('18', '10', '2', '1', '1', '2', null, '1461833708', '1462001678', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('29', '2', '5', '-1', '0', '0', null, '1462009463', '1462001678', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('30', '2', '5', '-2', '0', '0', '1462012828', '0', '1462012839', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('31', '2', '5', '-2', '0', '0', '1462012961', '0', '1462013087', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('32', '2', '5', '-2', '0', '0', '1462013286', '0', '1462013293', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('33', '2', '5', '-1', '0', '0', '1462013311', '1462013313', '1462013977', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('35', '2', '5', '-2', '0', '0', '1462014275', '0', '1462014278', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('36', '2', '5', '-1', '0', '0', '1462014282', '1462014283', '1462016529', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('37', '2', '5', '-2', '0', '0', '1462068300', '0', '1462068303', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('38', '2', '5', '-1', '0', '0', '1462068305', '1462068306', '1462068319', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('48', '2', '5', '-1', '0', '1', '1462072545', '1462072549', '1462072608', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('49', '2', '5', '-1', '0', '1', '1462072618', '1462072621', '1462072629', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('50', '2', '5', '-1', '0', '1', '1462072678', '1462072681', '1462072716', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('51', '2', '5', '-1', '0', '0', '1462073207', '1462073209', '1462073216', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('53', '2', '5', '-1', '0', '1', '1462079482', '0', '1462079499', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('54', '2', '5', '-1', '0', '1', '1462079507', '0', '1462079516', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('55', '2', '5', '-1', '0', '0', '1462079949', '1462079955', '1462079957', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('56', '2', '5', '-1', '0', '0', '1462080835', '1462080845', '1462080863', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('57', '2', '5', '-1', '0', '0', '1462080919', '1462080920', '1462080929', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('58', '2', '5', '-1', '0', '0', '1462080944', '1462080950', '1462080962', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('59', '2', '5', '-1', '0', '0', '1462081052', '1462081056', '1462081062', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('60', '2', '5', '-1', '0', '0', '1462081070', '1462081071', '1462081080', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('61', '2', '5', '-1', '0', '0', '1462081176', '1462081178', '1462081182', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('65', '2', '5', '0', '0', '1', '1462081633', '0', '0', '0', null, null);
INSERT INTO `x_person_letter` VALUES ('66', '6', '2', '1', '1', '2', null, '1462169148', '0', '0', null, null);

-- ----------------------------
-- Table structure for x_person_message
-- ----------------------------
DROP TABLE IF EXISTS `x_person_message`;
CREATE TABLE `x_person_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `letter_id` int(11) NOT NULL COMMENT 'person_letter的id',
  `talk_id` int(11) NOT NULL COMMENT '说话者id',
  `content` varchar(2000) NOT NULL,
  `time` int(11) NOT NULL COMMENT '时间',
  `is_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已读 0-未读，1 已读，-1 离线消息',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '消息类型   0-在线消息，1-离线消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_person_message
-- ----------------------------
INSERT INTO `x_person_message` VALUES ('1', '1', '2', '请问', '1459144550', '1', '0');
INSERT INTO `x_person_message` VALUES ('2', '1', '3', 'asd', '1459144550', '1', '0');
INSERT INTO `x_person_message` VALUES ('3', '1', '2', '分身', '1459144550', '1', '0');
INSERT INTO `x_person_message` VALUES ('4', '1', '3', 'asdasd', '1459144550', '1', '0');
INSERT INTO `x_person_message` VALUES ('5', '1', '3', '111', '1461651083', '1', '0');
INSERT INTO `x_person_message` VALUES ('6', '1', '3', '1', '1461651530', '1', '0');
INSERT INTO `x_person_message` VALUES ('7', '1', '3', 'qqwe', '1461651658', '1', '0');
INSERT INTO `x_person_message` VALUES ('8', '1', '3', 'wwww', '1461653150', '1', '0');
INSERT INTO `x_person_message` VALUES ('9', '1', '3', '11', '1461653188', '1', '0');
INSERT INTO `x_person_message` VALUES ('10', '1', '3', '1', '1461653287', '1', '0');
INSERT INTO `x_person_message` VALUES ('11', '1', '3', 'ddd', '1461653341', '1', '0');
INSERT INTO `x_person_message` VALUES ('12', '1', '3', 'eee', '1461653409', '1', '0');
INSERT INTO `x_person_message` VALUES ('13', '1', '3', 'w', '1461653532', '1', '0');
INSERT INTO `x_person_message` VALUES ('14', '1', '3', '1', '1461653547', '1', '0');
INSERT INTO `x_person_message` VALUES ('15', '1', '3', '1', '1461653621', '1', '0');
INSERT INTO `x_person_message` VALUES ('16', '1', '3', '1', '1461653675', '1', '0');
INSERT INTO `x_person_message` VALUES ('17', '1', '3', 'w', '1461653707', '1', '0');
INSERT INTO `x_person_message` VALUES ('18', '1', '3', 'w', '1461653975', '1', '0');
INSERT INTO `x_person_message` VALUES ('19', '1', '3', 'eee', '1461654052', '1', '0');
INSERT INTO `x_person_message` VALUES ('20', '1', '3', '1111', '1461654057', '1', '0');
INSERT INTO `x_person_message` VALUES ('21', '1', '3', 'eee', '1461654083', '1', '0');
INSERT INTO `x_person_message` VALUES ('22', '1', '3', 'rrr', '1461654101', '1', '0');
INSERT INTO `x_person_message` VALUES ('23', '1', '3', '11', '1461654169', '1', '0');
INSERT INTO `x_person_message` VALUES ('24', '1', '3', '111', '1461654194', '1', '0');
INSERT INTO `x_person_message` VALUES ('25', '1', '3', '222', '1461654197', '1', '0');
INSERT INTO `x_person_message` VALUES ('26', '1', '3', '2131231', '1461654200', '1', '0');
INSERT INTO `x_person_message` VALUES ('27', '1', '3', '111', '1461654314', '1', '0');
INSERT INTO `x_person_message` VALUES ('28', '1', '2', '<img src=\"image/emoji/29.gif\">', '1461657259', '1', '0');
INSERT INTO `x_person_message` VALUES ('29', '1', '2', '<img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\">', '1461657314', '1', '0');
INSERT INTO `x_person_message` VALUES ('30', '1', '2', '求问求问请问请问请问请问请问请问请问请问请问请问请问请问请问请问请问请问请问请问温泉请问去请问请问请问请问去 我青蛙', '1461657347', '1', '0');
INSERT INTO `x_person_message` VALUES ('31', '1', '2', '<img src=\"image/emoji/20.gif\"><img src=\"image/emoji/21.gif\">', '1461657383', '1', '0');
INSERT INTO `x_person_message` VALUES ('32', '1', '2', '<img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\"><img src=\"image/emoji/20.gif\">', '1461657545', '1', '0');
INSERT INTO `x_person_message` VALUES ('33', '1', '3', '1121212', '1461658146', '1', '0');
INSERT INTO `x_person_message` VALUES ('34', '1', '3', 'sdfsdfsdf', '1461658220', '1', '0');
INSERT INTO `x_person_message` VALUES ('35', '1', '3', '234', '1461663972', '1', '0');
INSERT INTO `x_person_message` VALUES ('36', '1', '3', '111', '1461663977', '1', '0');
INSERT INTO `x_person_message` VALUES ('37', '1', '2', 'rrr', '1461751850', '1', '0');
INSERT INTO `x_person_message` VALUES ('38', '1', '2', 'rrr', '1461751854', '1', '0');
INSERT INTO `x_person_message` VALUES ('39', '1', '2', 'rerr', '1461751898', '1', '0');
INSERT INTO `x_person_message` VALUES ('40', '1', '2', 'rer', '1461752040', '1', '0');
INSERT INTO `x_person_message` VALUES ('41', '1', '2', '1', '1461753394', '1', '0');
INSERT INTO `x_person_message` VALUES ('42', '1', '2', '44', '1461753464', '1', '0');
INSERT INTO `x_person_message` VALUES ('43', '1', '2', 'www', '1461753485', '1', '0');
INSERT INTO `x_person_message` VALUES ('44', '1', '2', 'rrr', '1461753529', '1', '0');
INSERT INTO `x_person_message` VALUES ('45', '1', '3', '1111', '1461828974', '1', '0');
INSERT INTO `x_person_message` VALUES ('46', '1', '3', '111', '1461829177', '1', '0');
INSERT INTO `x_person_message` VALUES ('47', '1', '3', '111', '1461829211', '1', '0');
INSERT INTO `x_person_message` VALUES ('48', '1', '3', '222', '1461829295', '1', '0');
INSERT INTO `x_person_message` VALUES ('49', '1', '3', 'wewe', '1461829303', '1', '0');
INSERT INTO `x_person_message` VALUES ('50', '1', '3', 'eeee', '1461829754', '1', '0');
INSERT INTO `x_person_message` VALUES ('51', '1', '2', '11111', '1461829811', '1', '0');
INSERT INTO `x_person_message` VALUES ('52', '1', '3', '11111', '1461829826', '1', '0');
INSERT INTO `x_person_message` VALUES ('53', '1', '3', 'hao', '1461829890', '1', '0');
INSERT INTO `x_person_message` VALUES ('54', '1', '2', '顶顶顶顶', '1461830252', '1', '0');
INSERT INTO `x_person_message` VALUES ('66', '18', '10', 'qweqwe', '1461833710', '1', '0');
INSERT INTO `x_person_message` VALUES ('67', '18', '10', '1', '1461835932', '1', '0');
INSERT INTO `x_person_message` VALUES ('68', '18', '10', 'qwe', '1461836538', '1', '0');
INSERT INTO `x_person_message` VALUES ('69', '18', '2', '111', '1461836541', '1', '0');
INSERT INTO `x_person_message` VALUES ('70', '18', '10', 'w', '1461836574', '1', '0');
INSERT INTO `x_person_message` VALUES ('71', '18', '2', '吴王为', '1461836582', '1', '0');
INSERT INTO `x_person_message` VALUES ('72', '18', '10', 'www', '1461836592', '1', '0');
INSERT INTO `x_person_message` VALUES ('73', '18', '10', 'werwer', '1461836600', '1', '0');
INSERT INTO `x_person_message` VALUES ('74', '18', '2', '111', '1461841953', '0', '0');
INSERT INTO `x_person_message` VALUES ('75', '18', '2', '222', '1461841955', '0', '0');
INSERT INTO `x_person_message` VALUES ('76', '18', '2', 'e', '1461842018', '0', '0');
INSERT INTO `x_person_message` VALUES ('77', '18', '2', 'ewqeqw', '1461842061', '0', '0');
INSERT INTO `x_person_message` VALUES ('78', '18', '2', 'wer', '1461842127', '0', '0');
INSERT INTO `x_person_message` VALUES ('79', '18', '2', 'wer', '1461842143', '0', '0');
INSERT INTO `x_person_message` VALUES ('80', '18', '2', 'ewr', '1461842201', '0', '0');
INSERT INTO `x_person_message` VALUES ('81', '18', '2', 'er', '1461842452', '0', '0');
INSERT INTO `x_person_message` VALUES ('82', '18', '2', '22', '1461842454', '0', '0');
INSERT INTO `x_person_message` VALUES ('83', '18', '2', 'ewr', '1461842532', '0', '0');
INSERT INTO `x_person_message` VALUES ('84', '18', '2', 'wqe', '1461842610', '0', '0');
INSERT INTO `x_person_message` VALUES ('85', '18', '2', 'e', '1461842634', '0', '0');
INSERT INTO `x_person_message` VALUES ('86', '18', '2', 'ewrwer', '1461842718', '0', '0');
INSERT INTO `x_person_message` VALUES ('87', '18', '2', 'we', '1461842772', '0', '0');
INSERT INTO `x_person_message` VALUES ('88', '18', '2', '111', '1461842775', '0', '0');
INSERT INTO `x_person_message` VALUES ('89', '18', '2', 'wer', '1461842913', '0', '0');
INSERT INTO `x_person_message` VALUES ('90', '18', '2', 'qwe', '1461842937', '0', '0');
INSERT INTO `x_person_message` VALUES ('91', '18', '2', 'wer', '1461842939', '0', '0');
INSERT INTO `x_person_message` VALUES ('92', '18', '2', 'werwer', '1461843039', '0', '0');
INSERT INTO `x_person_message` VALUES ('93', '18', '2', 'qqqq', '1461843041', '0', '0');
INSERT INTO `x_person_message` VALUES ('94', '18', '2', '222', '1461843111', '0', '0');
INSERT INTO `x_person_message` VALUES ('95', '18', '2', 'ertert', '1461843117', '0', '0');
INSERT INTO `x_person_message` VALUES ('96', '18', '2', 'aaaa', '1461843126', '0', '0');
INSERT INTO `x_person_message` VALUES ('97', '18', '2', 'rrrr', '1461843130', '0', '0');
INSERT INTO `x_person_message` VALUES ('98', '18', '2', 'wqeqwe', '1461843167', '0', '0');
INSERT INTO `x_person_message` VALUES ('99', '18', '2', 'asd', '1461843184', '0', '0');
INSERT INTO `x_person_message` VALUES ('100', '18', '2', 'sdf', '1461843191', '0', '0');
INSERT INTO `x_person_message` VALUES ('101', '18', '2', 'dfg', '1461843194', '0', '0');
INSERT INTO `x_person_message` VALUES ('102', '18', '2', 'fgh', '1461843195', '0', '0');
INSERT INTO `x_person_message` VALUES ('103', '18', '2', '111', '1461843323', '0', '0');
INSERT INTO `x_person_message` VALUES ('104', '18', '2', 'sdfdsfds', '1461843325', '0', '0');
INSERT INTO `x_person_message` VALUES ('105', '18', '2', 'asdasdasd', '1461843329', '0', '0');
INSERT INTO `x_person_message` VALUES ('106', '18', '2', 'asdasd', '1461843353', '0', '0');
INSERT INTO `x_person_message` VALUES ('107', '18', '2', 'sdf', '1461843434', '0', '0');
INSERT INTO `x_person_message` VALUES ('108', '18', '2', 'qqq', '1461843437', '0', '0');
INSERT INTO `x_person_message` VALUES ('109', '18', '2', 'q', '1461843439', '0', '0');
INSERT INTO `x_person_message` VALUES ('110', '18', '2', 'dsfsdf', '1461843502', '0', '0');
INSERT INTO `x_person_message` VALUES ('111', '18', '2', 'sdfsdf', '1461843514', '0', '0');
INSERT INTO `x_person_message` VALUES ('112', '18', '2', 'aaaa', '1461843525', '0', '0');
INSERT INTO `x_person_message` VALUES ('113', '18', '2', 'dfdf', '1461843527', '0', '0');
INSERT INTO `x_person_message` VALUES ('114', '18', '2', 'sdf', '1461843577', '0', '0');
INSERT INTO `x_person_message` VALUES ('115', '18', '2', 'sdf', '1461843613', '0', '0');
INSERT INTO `x_person_message` VALUES ('116', '18', '2', 'qwe', '1461843617', '0', '0');
INSERT INTO `x_person_message` VALUES ('117', '18', '2', 'wer', '1461843770', '0', '0');
INSERT INTO `x_person_message` VALUES ('118', '18', '2', 'ewr', '1461843779', '0', '0');
INSERT INTO `x_person_message` VALUES ('119', '18', '2', 'qweqwe', '1461843782', '0', '0');
INSERT INTO `x_person_message` VALUES ('120', '18', '2', 'ewrwer', '1461843783', '0', '0');
INSERT INTO `x_person_message` VALUES ('121', '18', '2', 'dsfdsfdsf', '1461843790', '0', '0');
INSERT INTO `x_person_message` VALUES ('122', '18', '2', 'dfg', '1461843792', '0', '0');
INSERT INTO `x_person_message` VALUES ('123', '18', '2', 'wqe', '1461843835', '0', '0');
INSERT INTO `x_person_message` VALUES ('124', '18', '2', 'w', '1461843955', '0', '0');
INSERT INTO `x_person_message` VALUES ('125', '18', '2', 'ewrwer', '1461843991', '0', '0');
INSERT INTO `x_person_message` VALUES ('126', '18', '2', 'qwe', '1461843993', '0', '0');
INSERT INTO `x_person_message` VALUES ('127', '18', '2', 'qwe', '1461844001', '0', '0');
INSERT INTO `x_person_message` VALUES ('128', '18', '2', 'ewr', '1461844002', '0', '0');
INSERT INTO `x_person_message` VALUES ('129', '18', '2', 'qwasdasd', '1461844132', '0', '0');
INSERT INTO `x_person_message` VALUES ('130', '18', '2', '请问', '1461844256', '0', '0');
INSERT INTO `x_person_message` VALUES ('131', '18', '2', '萨达', '1461844951', '0', '0');
INSERT INTO `x_person_message` VALUES ('132', '18', '2', '第三方第三方', '1461844958', '0', '0');
INSERT INTO `x_person_message` VALUES ('133', '18', '2', '威尔而', '1461845022', '0', '0');
INSERT INTO `x_person_message` VALUES ('134', '18', '2', '方法', '1461845069', '0', '0');
INSERT INTO `x_person_message` VALUES ('135', '18', '2', '的复古风格', '1461845071', '0', '0');
INSERT INTO `x_person_message` VALUES ('136', '18', '2', '按时打算的撒', '1461845075', '0', '0');
INSERT INTO `x_person_message` VALUES ('137', '1', '3', 'qweqwewqewqe', '1461845100', '1', '0');
INSERT INTO `x_person_message` VALUES ('138', '1', '2', '婉儿微微', '1461845106', '1', '0');
INSERT INTO `x_person_message` VALUES ('139', '1', '3', 'qwqweqwqqwqqqq', '1461845112', '1', '0');
INSERT INTO `x_person_message` VALUES ('140', '1', '2', 'asdasd', '1461845118', '1', '0');
INSERT INTO `x_person_message` VALUES ('141', '1', '2', '水电费水电费', '1461845120', '1', '0');
INSERT INTO `x_person_message` VALUES ('142', '1', '3', 'sdfsddsfsdf', '1461845128', '1', '0');
INSERT INTO `x_person_message` VALUES ('143', '1', '3', 'sdassdfsd', '1461845131', '1', '0');
INSERT INTO `x_person_message` VALUES ('144', '1', '2', '水电费水电费', '1461845142', '1', '0');
INSERT INTO `x_person_message` VALUES ('145', '1', '2', '发发发', '1461845173', '1', '0');
INSERT INTO `x_person_message` VALUES ('146', '1', '3', 'aaaaaaa', '1461845179', '1', '0');
INSERT INTO `x_person_message` VALUES ('147', '1', '2', 'wwwww', '1461907963', '1', '0');
INSERT INTO `x_person_message` VALUES ('148', '1', '3', 'werewr', '1461907967', '1', '0');
INSERT INTO `x_person_message` VALUES ('149', '1', '3', '333', '1461908441', '1', '0');
INSERT INTO `x_person_message` VALUES ('150', '1', '2', '222', '1461913174', '1', '0');
INSERT INTO `x_person_message` VALUES ('151', '1', '2', '111', '1461913213', '1', '0');
INSERT INTO `x_person_message` VALUES ('152', '1', '2', 'dsfsd', '1461913233', '1', '0');
INSERT INTO `x_person_message` VALUES ('153', '1', '2', '111', '1461913251', '1', '0');
INSERT INTO `x_person_message` VALUES ('154', '1', '2', '11', '1461913254', '1', '0');
INSERT INTO `x_person_message` VALUES ('155', '1', '2', '22', '1461913258', '1', '0');
INSERT INTO `x_person_message` VALUES ('156', '1', '2', 'werwer', '1461913471', '1', '0');
INSERT INTO `x_person_message` VALUES ('157', '1', '2', '威尔而', '1461915864', '1', '0');
INSERT INTO `x_person_message` VALUES ('158', '1', '2', '111', '1461915940', '1', '0');
INSERT INTO `x_person_message` VALUES ('159', '1', '2', 'er', '1461916302', '1', '0');
INSERT INTO `x_person_message` VALUES ('160', '29', '5', '1111', '1462009472', '1', '0');
INSERT INTO `x_person_message` VALUES ('161', '29', '2', '11111', '1462009475', '1', '0');
INSERT INTO `x_person_message` VALUES ('162', '29', '5', '1111', '1462011019', '1', '0');
INSERT INTO `x_person_message` VALUES ('163', '29', '5', 'asdasdsad', '1462011024', '1', '0');
INSERT INTO `x_person_message` VALUES ('164', '29', '2', '啊实打实大多数', '1462011030', '1', '0');
INSERT INTO `x_person_message` VALUES ('165', '29', '5', 'sdfdsfsdf', '1462011044', '1', '0');
INSERT INTO `x_person_message` VALUES ('166', '29', '5', 'asdasdad', '1462011053', '1', '0');
INSERT INTO `x_person_message` VALUES ('167', '29', '5', '萨达萨达', '1462011058', '1', '0');
INSERT INTO `x_person_message` VALUES ('168', '29', '2', '撒打算打算', '1462011132', '1', '0');
INSERT INTO `x_person_message` VALUES ('169', '29', '5', '啊撒大声地三大', '1462011136', '1', '0');
INSERT INTO `x_person_message` VALUES ('170', '29', '2', '萨达萨达', '1462011141', '1', '0');
INSERT INTO `x_person_message` VALUES ('171', '29', '5', '水电费水电费', '1462011144', '1', '0');
INSERT INTO `x_person_message` VALUES ('172', '29', '2', '啊实打实', '1462011148', '1', '0');
INSERT INTO `x_person_message` VALUES ('173', '29', '5', '萨达萨达', '1462011152', '1', '0');
INSERT INTO `x_person_message` VALUES ('174', '29', '2', 'asdasd', '1462011160', '1', '0');
INSERT INTO `x_person_message` VALUES ('175', '29', '5', 'asdasd的范德萨发的发的', '1462011165', '1', '0');
INSERT INTO `x_person_message` VALUES ('176', '29', '2', '的说三道四的地方', '1462011439', '1', '0');
INSERT INTO `x_person_message` VALUES ('177', '29', '5', 'ssss', '1462011463', '1', '0');
INSERT INTO `x_person_message` VALUES ('178', '29', '5', '啊飒飒大', '1462011523', '1', '0');
INSERT INTO `x_person_message` VALUES ('179', '29', '2', 'ssss', '1462011542', '1', '0');
INSERT INTO `x_person_message` VALUES ('180', '29', '2', 'asdasd', '1462011647', '1', '0');
INSERT INTO `x_person_message` VALUES ('181', '29', '5', '谁谁谁谁谁谁', '1462011651', '1', '0');
INSERT INTO `x_person_message` VALUES ('182', '29', '5', '啊阿萨德', '1462011678', '1', '0');
INSERT INTO `x_person_message` VALUES ('183', '29', '2', 'ssss', '1462011712', '1', '0');
INSERT INTO `x_person_message` VALUES ('184', '29', '5', 'ssss其二为全文', '1462011754', '1', '0');
INSERT INTO `x_person_message` VALUES ('185', '29', '2', '的爽肤水的企鹅', '1462011758', '1', '0');
INSERT INTO `x_person_message` VALUES ('186', '29', '5', '的点点滴滴', '1462011825', '1', '0');
INSERT INTO `x_person_message` VALUES ('187', '29', '2', '是事实上事实上事实上', '1462011840', '0', '0');
INSERT INTO `x_person_message` VALUES ('188', '33', '2', '我企鹅企鹅全文', '1462013317', '1', '0');
INSERT INTO `x_person_message` VALUES ('189', '33', '5', '实打实大师的', '1462013319', '1', '0');
INSERT INTO `x_person_message` VALUES ('190', '33', '2', '神鼎飞丹砂是否', '1462013321', '1', '0');
INSERT INTO `x_person_message` VALUES ('191', '33', '5', '啊撒大声地三大', '1462013323', '1', '0');
INSERT INTO `x_person_message` VALUES ('192', '33', '2', '顶顶顶顶顶大大大', '1462013325', '1', '0');
INSERT INTO `x_person_message` VALUES ('193', '33', '5', '请问', '1462013327', '1', '0');
INSERT INTO `x_person_message` VALUES ('194', '33', '2', '热污染', '1462013328', '1', '0');
INSERT INTO `x_person_message` VALUES ('195', '33', '5', '威尔而', '1462013330', '1', '0');
INSERT INTO `x_person_message` VALUES ('196', '33', '2', '企鹅全文', '1462013332', '1', '0');
INSERT INTO `x_person_message` VALUES ('197', '33', '5', '二维', '1462013334', '1', '0');
INSERT INTO `x_person_message` VALUES ('198', '36', '2', '达到', '1462014286', '1', '0');
INSERT INTO `x_person_message` VALUES ('199', '36', '5', 'asd', '1462014287', '1', '0');
INSERT INTO `x_person_message` VALUES ('200', '36', '2', 'gaofenshishabi', '1462014324', '1', '0');
INSERT INTO `x_person_message` VALUES ('201', '36', '2', 'hahaha', '1462014328', '1', '0');
INSERT INTO `x_person_message` VALUES ('202', '38', '2', '你好', '1462068312', '0', '0');
INSERT INTO `x_person_message` VALUES ('203', '38', '5', '你好', '1462068316', '0', '0');
INSERT INTO `x_person_message` VALUES ('204', '48', '5', '我去恶趣味', '1462072552', '0', '0');
INSERT INTO `x_person_message` VALUES ('205', '48', '2', '为二人人人', '1462072556', '0', '0');
INSERT INTO `x_person_message` VALUES ('206', '49', '5', '萨达萨达', '1462072624', '0', '0');
INSERT INTO `x_person_message` VALUES ('207', '49', '2', '玩儿问问', '1462072627', '0', '0');
INSERT INTO `x_person_message` VALUES ('208', '50', '5', '啊实打实大多数', '1462072685', '1', '0');
INSERT INTO `x_person_message` VALUES ('209', '50', '2', '阿萨啊啊啊啊', '1462072687', '1', '0');
INSERT INTO `x_person_message` VALUES ('210', '50', '2', 'QQ群', '1462072696', '1', '0');
INSERT INTO `x_person_message` VALUES ('211', '50', '2', '单调点', '1462072700', '1', '0');
INSERT INTO `x_person_message` VALUES ('212', '50', '5', 'ssss', '1462072706', '1', '0');
INSERT INTO `x_person_message` VALUES ('213', '50', '5', '啊啊啊', '1462072710', '1', '0');
INSERT INTO `x_person_message` VALUES ('214', '53', '5', 'asdasd', '1462079494', '0', '0');
INSERT INTO `x_person_message` VALUES ('215', '53', '2', '第三方第三方', '1462079496', '0', '0');
INSERT INTO `x_person_message` VALUES ('216', '56', '5', 'eqweqweqwe', '1462080848', '0', '0');
INSERT INTO `x_person_message` VALUES ('217', '56', '2', '阿打算的撒', '1462080850', '0', '0');
INSERT INTO `x_person_message` VALUES ('218', '57', '5', 'ssssss', '1462080923', '0', '0');
INSERT INTO `x_person_message` VALUES ('219', '57', '2', '阿萨德撒的', '1462080924', '0', '0');
INSERT INTO `x_person_message` VALUES ('220', '58', '5', 'dasdasdsad', '1462080954', '0', '0');
INSERT INTO `x_person_message` VALUES ('221', '58', '2', 'sadasdsa', '1462080957', '0', '0');
INSERT INTO `x_person_message` VALUES ('222', '59', '2', 'asdasd', '1462081059', '0', '0');
INSERT INTO `x_person_message` VALUES ('223', '60', '2', 'asdsad', '1462081073', '0', '0');
INSERT INTO `x_person_message` VALUES ('224', '61', '5', 'asdasd', '1462081180', '0', '0');
INSERT INTO `x_person_message` VALUES ('225', '1', '2', 'wqeqwe', '1462082268', '1', '0');
INSERT INTO `x_person_message` VALUES ('226', '1', '2', 'asdasd', '1462082274', '1', '0');
INSERT INTO `x_person_message` VALUES ('227', '1', '3', 'asd', '1462082316', '1', '0');
INSERT INTO `x_person_message` VALUES ('228', '1', '3', 'qwe', '1462082324', '1', '0');
INSERT INTO `x_person_message` VALUES ('229', '1', '2', 'qwe', '1462082326', '0', '0');
INSERT INTO `x_person_message` VALUES ('230', '66', '6', 'wqeqwe', '1462169149', '1', '0');
INSERT INTO `x_person_message` VALUES ('231', '66', '6', 'wqeqwe', '1462169172', '1', '0');
INSERT INTO `x_person_message` VALUES ('232', '66', '6', 'rrr', '1462169210', '1', '0');
INSERT INTO `x_person_message` VALUES ('233', '66', '6', '111', '1462169306', '1', '0');
INSERT INTO `x_person_message` VALUES ('234', '66', '2', 'erer', '1462169311', '1', '0');
INSERT INTO `x_person_message` VALUES ('235', '66', '6', 'asaadd', '1462169334', '1', '0');
INSERT INTO `x_person_message` VALUES ('236', '66', '6', 'wer', '1462169369', '1', '0');
INSERT INTO `x_person_message` VALUES ('237', '66', '6', 'sdf', '1462169396', '1', '0');
INSERT INTO `x_person_message` VALUES ('238', '66', '2', 'sdfsf', '1462169402', '1', '0');
INSERT INTO `x_person_message` VALUES ('239', '66', '6', 'wewe', '1462169479', '1', '0');
INSERT INTO `x_person_message` VALUES ('240', '66', '6', '111', '1462169661', '1', '0');
INSERT INTO `x_person_message` VALUES ('241', '66', '2', 'bbj', '1462169664', '1', '0');
INSERT INTO `x_person_message` VALUES ('242', '66', '2', 'vhji', '1462169672', '1', '0');
INSERT INTO `x_person_message` VALUES ('243', '66', '2', '<img src=image/emoji/34.gif /><img src=image/emoji/34.gif /><img src=image/emoji/34.gif />', '1462169833', '1', '0');
INSERT INTO `x_person_message` VALUES ('244', '66', '6', 'http://localhost:8080/Comm100_data/6/image/20160502/veGcVrOnil_!!600x1000.jpg', '1462174381', '1', '0');
INSERT INTO `x_person_message` VALUES ('245', '66', '6', 'http://localhost:8080/Comm100_data/6/image/20160502/leqMbREHjP_!!600x1000.jpg', '1462174795', '1', '0');
INSERT INTO `x_person_message` VALUES ('246', '66', '6', 'http://localhost:8080/Comm100_data/6/image/20160502/LeQMVRfkui_!!249x253.png', '1462175008', '1', '0');
INSERT INTO `x_person_message` VALUES ('247', '66', '6', 'http://localhost:8080/Comm100_data/6/image/20160502/lEGClHfKFC_!!249x253.png', '1462175052', '1', '0');
INSERT INTO `x_person_message` VALUES ('248', '66', '6', 'http://localhost:8080/Comm100_data/6/image/20160502/LOGCLrPutF_!!150x150.png', '1462175095', '1', '0');
INSERT INTO `x_person_message` VALUES ('254', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/LoQcBrQdcs_!!600x1000.jpg\' onclick=\"chat_showImage(this)\" />', '1462176328', '1', '0');
INSERT INTO `x_person_message` VALUES ('255', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/beqWbhgOnn_!!150x150.png\' onclick=\"chat_showImage(this)\" />', '1462176433', '1', '0');
INSERT INTO `x_person_message` VALUES ('256', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/VOGCbhgoES_!!150x150.png\' onclick=\"chat_showImage(this)\" />', '1462176448', '1', '0');
INSERT INTO `x_person_message` VALUES ('257', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/leqCLRQoPS_!!168x168.jpg\' onclick=\"chat_showImage(this)\" />', '1462176458', '1', '0');
INSERT INTO `x_person_message` VALUES ('258', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/vEQWBRgpVh_!!563x669.png\' onclick=\"chat_showImage(this)\" />', '1462176517', '1', '0');
INSERT INTO `x_person_message` VALUES ('259', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/LEqWVRgfNW_!!600x1000.jpg\' onclick=\"chat_showImage(this)\" />', '1462176532', '1', '0');
INSERT INTO `x_person_message` VALUES ('260', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/vOQmbhQfFJ_!!709x1000.jpg\' onclick=\"chat_showImage(this)\" />', '1462176559', '1', '0');
INSERT INTO `x_person_message` VALUES ('261', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/LegCvrqgQP_!!249x253.png\' onclick=\"chat_showImage(this)\" />', '1462176665', '1', '0');
INSERT INTO `x_person_message` VALUES ('262', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/leqCvHGhUi_!!600x1000.png\' onclick=\"chat_showImage(this)\" />', '1462176708', '1', '0');
INSERT INTO `x_person_message` VALUES ('263', '66', '6', '<img src=\'http://localhost:8080/comm100_data/6/image/20160502/bOQMLhHoMO_!!150x150.png\' onclick=\"chat_showImage(this)\" />', '1462177424', '1', '0');

-- ----------------------------
-- Table structure for x_right
-- ----------------------------
DROP TABLE IF EXISTS `x_right`;
CREATE TABLE `x_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `right_id` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_right
-- ----------------------------

-- ----------------------------
-- Table structure for x_score
-- ----------------------------
DROP TABLE IF EXISTS `x_score`;
CREATE TABLE `x_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `letter_id` int(11) NOT NULL,
  `score` tinyint(4) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_score
-- ----------------------------
INSERT INTO `x_score` VALUES ('1', '2', '57', '7', '1462080933');
INSERT INTO `x_score` VALUES ('2', '2', '58', '3', '1462080964');
INSERT INTO `x_score` VALUES ('3', '2', '59', '5', '1462081063');
INSERT INTO `x_score` VALUES ('4', '2', '60', '5', '1462081081');
INSERT INTO `x_score` VALUES ('5', '2', '61', '5', '1462081184');

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '客服名称',
  `head_image` varchar(255) DEFAULT '' COMMENT '头像',
  `phone` varchar(255) DEFAULT '' COMMENT '手机',
  `is_verify` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否认证 0 未认证，1 已认证',
  `real_name` varchar(255) DEFAULT '' COMMENT '真实姓名',
  `identity` varchar(255) DEFAULT '' COMMENT '身份证',
  `sex` varchar(255) DEFAULT '' COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `address` varchar(255) DEFAULT '' COMMENT '家庭住址',
  `role` tinyint(3) NOT NULL COMMENT '权限 -1 暂无，0 客户，1 客服，2 管理员',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态  -2 已删除，-1 冻结，0 离线，1-在线，2-申请对话中，3-对话中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES ('1', 'admin', '123456', '管理员', '', null, '0', '', '', '', null, '', '2', '0');
INSERT INTO `x_user` VALUES ('2', 'test1', '123456', '客服0000', '', null, '0', '', '', '', null, '', '1', '1');
INSERT INTO `x_user` VALUES ('3', 'test2', '123456', '客服0001', '', null, '0', '', '', '', null, '', '1', '0');
INSERT INTO `x_user` VALUES ('4', 'test3', '123456', '客服0002', '', '', '0', '', '', '', null, '', '1', '0');
INSERT INTO `x_user` VALUES ('5', 'test4', '123456', '客户0002', '', '', '0', '', '', '', null, '', '0', '0');
INSERT INTO `x_user` VALUES ('6', 'test5', '123456', '客服0003', '', '', '0', '', '', '', null, '', '1', '0');
INSERT INTO `x_user` VALUES ('7', 'test6', '123456', '客户0003', '', '', '0', '', '', '', null, '', '0', '0');
INSERT INTO `x_user` VALUES ('8', 'test7', '123456', '客服0004', '', '', '0', '', '', '', null, '', '1', '0');
INSERT INTO `x_user` VALUES ('9', 'test8', '123456', '客户0004', '', '', '0', '', '', '', null, '', '0', '0');
INSERT INTO `x_user` VALUES ('10', 'test9', '123456', '客服0005', '', '', '0', '', '', '', null, '', '1', '0');
INSERT INTO `x_user` VALUES ('11', 'test10', '123456', '客户0005', '', '', '0', '', '', '', null, '', '0', '0');
