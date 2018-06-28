/*
Navicat MySQL Data Transfer

Source Server         : class
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : vueclass

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-06-28 22:07:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增逐渐',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES ('1', '15002050101', '123');
INSERT INTO `b_user` VALUES ('2', '15002050102', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('3', '15002050103', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('4', '15002050104', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('5', '15002050105', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('6', '15002050106', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('7', '15002050107', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('8', '15002050108', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('9', '15002050109', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('10', '15002050110', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('11', '15002050111', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('12', '15002050112', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('13', '15002050113', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('14', '15002050114', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('15', '15002050115', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('16', '15002050116', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('17', '15002050117', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('18', '15002050118', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('19', '15002050119', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('20', '15002050120', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('21', '15002050121', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('22', '15002050122', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('23', '15002050123', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('24', '15002050124', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('25', '15002050125', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('26', '15002050126', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('27', '15002050127', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('28', '15002050128', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('29', '15002050129', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('30', '15002050130', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('31', '15002050131', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('32', '15002050132', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('33', '15002050133', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('34', '15002050134', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('35', '15002050135', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('36', '15002050136', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('37', '15002050137', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('38', '15002050138', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('39', '15002050139', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('40', '15002050140', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('41', '15002050141', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('42', '15002050142', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('43', '15002050143', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('44', '15002050144', '202cb962ac59075b964b07152d234b70');
INSERT INTO `b_user` VALUES ('45', '15002050145', '202cb962ac59075b964b07152d234b70');

-- ----------------------------
-- Table structure for m_message
-- ----------------------------
DROP TABLE IF EXISTS `m_message`;
CREATE TABLE `m_message` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint(11) NOT NULL COMMENT '留言人',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '留言内容',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of m_message
-- ----------------------------
INSERT INTO `m_message` VALUES ('162', '6', '什么情况啊', '2018-04-06 15:21:23');
INSERT INTO `m_message` VALUES ('164', '6', '是按时按时撒', '2018-04-06 15:23:42');
INSERT INTO `m_message` VALUES ('166', '6', '按时', '2018-04-06 15:23:50');
INSERT INTO `m_message` VALUES ('170', '6', '阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德按时大声道阿萨德按时按时打算', '2018-04-06 15:24:38');
INSERT INTO `m_message` VALUES ('172', '6', '按时按时大声道 2131231', '2018-04-06 15:26:22');
INSERT INTO `m_message` VALUES ('177', '23', '按时按时按时阿萨德按时撒打算打算大所大所大所大大大撒多', '2018-04-06 18:32:07');
INSERT INTO `m_message` VALUES ('178', '23', 'asdasdasd按时', '2018-04-06 18:35:15');
INSERT INTO `m_message` VALUES ('180', '6', '啊实打实大师大神大神啊撒', '2018-04-06 19:30:53');
INSERT INTO `m_message` VALUES ('181', '6', '啊实打实大师大神大神啊撒', '2018-04-06 19:30:53');
INSERT INTO `m_message` VALUES ('183', '25', '你先要的是不是这样', '2018-04-06 20:28:23');
INSERT INTO `m_message` VALUES ('185', '25', '撒旦按时按时按时按时撒', '2018-04-07 11:15:24');
INSERT INTO `m_message` VALUES ('188', '23', '按时按时打算大青蛙去而特额人儿热 特   ', '2018-03-23 11:15:33');
INSERT INTO `m_message` VALUES ('192', '23', '阿萨德按时按时ass是', '2018-04-07 18:25:22');
INSERT INTO `m_message` VALUES ('194', '23', '按时按时按时按时撒撒按时是按时按时啊 ', '2018-04-07 18:30:47');
INSERT INTO `m_message` VALUES ('195', '23', '爱神的箭卡会计师按时ask打算案例萨克雷啦按时啊阿萨德阿丢了bauble按理说不咯爱搜鼠标列表时拉粑粑深蓝色老师了巴巴罗萨喀什三了大三阿萨德按时啊爱神的箭卡会计师按时ask打算案例萨克雷啦按时啊阿萨德阿丢了bauble按理说不咯爱搜鼠标列表时拉粑粑深蓝色老师了巴巴罗萨喀什三了大', '2018-04-07 19:33:23');
INSERT INTO `m_message` VALUES ('196', '23', '阿萨德按时阿萨德 按时按时按时打算是阿萨德按时啊捱三顶五群是去1是打的 ', '2018-04-07 19:37:26');
INSERT INTO `m_message` VALUES ('210', '6', '十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒十大撒', '2018-04-08 19:37:35');
INSERT INTO `m_message` VALUES ('211', '6', '四是四 ，十是十 ，十四是十四 ，四十是四十 ', '2018-04-08 21:48:22');
INSERT INTO `m_message` VALUES ('212', '26', '十号。。。。。。。。。。。。。', '2018-04-09 19:53:49');
INSERT INTO `m_message` VALUES ('214', '2', '6575785757asdas撒打算打算大所大所大所大所大所大所大所大所大所大所大所大所大所多cvcxvksf;skdfsjf', '2018-04-12 22:19:17');
INSERT INTO `m_message` VALUES ('220', '3', '斯科拉的开始卡善待喀什考虑打开来撒大口径拉萨金凤凰穿v就，还是，大V会出现，和是开始大V差距时间的话v', '2018-04-16 20:35:04');
INSERT INTO `m_message` VALUES ('222', '28', 'congraduation', '2018-04-17 17:40:49');
INSERT INTO `m_message` VALUES ('227', '28', '走在生命的两旁，随时撒种，随时开花。让穿枝拂叶的行人，踏着荆棘，不觉得痛苦，有泪可落，却不是悲凉。', '2018-04-18 14:38:24');
INSERT INTO `m_message` VALUES ('228', '28', '如果生命是一册事先装帧，编好页码的空白书，过往情事对人的打扰，好比撰写某页时笔力太重，墨痕渗透到后几页，无法磨灭了。 时光，重叠在一个人身上。', '2018-04-18 14:38:58');
INSERT INTO `m_message` VALUES ('229', '28', '向着某一天终于要达到的那个终极目标迈步还不够，还要把每一步骤看成目标，使它作为步骤而起作用。', '2018-04-18 19:57:04');
INSERT INTO `m_message` VALUES ('230', '1', '勇敢坚毅真正之才智乃刚毅之志向。', '2018-04-18 22:02:47');
INSERT INTO `m_message` VALUES ('250', '2', '我们只有时间，但时间流逝的飞快。一定要知道自己要什么，然后全力去实现。', '2018-04-24 13:18:43');
INSERT INTO `m_message` VALUES ('277', '34', '得之坦然，失之淡然，顺其自然，争其必然。', '2018-04-24 21:54:19');
INSERT INTO `m_message` VALUES ('280', '1', '如果你能像看别人缺点一样，如此准确的发现自己的缺点，那么你的生命将会不平凡。', '2018-04-25 11:34:46');
INSERT INTO `m_message` VALUES ('294', '39', '不管未来有多久，请珍惜相聚的每一刻；不管过了多少个春秋，我们是永远的朋友。', '2018-04-26 15:35:15');
INSERT INTO `m_message` VALUES ('295', '25', '拥有一颗年轻快乐的心，给别人一个灿烂的微笑，给自己一个真诚的自我，给学业画个完美的句号，给事业点个漂亮的开场。让我们扬起风帆，共赴风雨。不要忘了我，朋友！', '2018-04-26 15:35:50');
INSERT INTO `m_message` VALUES ('296', '9', '我的朋友们，我们要暂时分别了；“珍重”的话，我也不再说了。在这欲去未去的夜色里，努力铸造几颗小晨星；虽然没有多大光明，但也能使那早行的人高兴。', '2018-04-26 15:36:16');
INSERT INTO `m_message` VALUES ('300', '27', '在学校和生活中，工作的最重要的动力是工作中的乐趣，是工作获得结果时的乐趣以及对这个结果的社会价值的认识。', '2018-04-30 21:23:31');
INSERT INTO `m_message` VALUES ('301', '18', '想要体面生活，又觉得打拼辛苦；想要健康身体，又无法坚持运动。人最失败的，莫过于对自己不负责任，连答应自己的事都办不到，又何必抱怨这个世界都和你作对？人生的道理很简单，你想要什么，就去付出足够的努力。', '2018-04-30 21:33:27');
INSERT INTO `m_message` VALUES ('331', '4', '人生的路，说长也很长，说短也很短。偶遇不幸或挫败只能证明某一时候某一方面的不足或做得不够。', '2018-05-01 12:36:47');
INSERT INTO `m_message` VALUES ('349', '28', '现实会告诉你，不努力就会被生活踩死。无需找什么借口，一无所有，就是拼的理由。', '2018-05-04 20:12:47');
INSERT INTO `m_message` VALUES ('351', '2', '若自己不做出一点样子，人家想拉你一把都不知你的手在哪里。', '2018-05-04 20:38:30');
INSERT INTO `m_message` VALUES ('352', '27', '机会不会上门来找；只有人去找机会。', '2018-05-04 20:40:12');
INSERT INTO `m_message` VALUES ('354', '4', '世界上那些最容易的事情中，拖延时间最不费力。', '2018-05-04 21:40:33');
INSERT INTO `m_message` VALUES ('356', '28', '啊实打实大师多', '2018-05-09 08:27:09');

-- ----------------------------
-- Table structure for m_message_comm
-- ----------------------------
DROP TABLE IF EXISTS `m_message_comm`;
CREATE TABLE `m_message_comm` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL,
  `message_id` bigint(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of m_message_comm
-- ----------------------------
INSERT INTO `m_message_comm` VALUES ('1', '1', '158', '斯蒂芬森分', '2018-04-23 18:04:36');
INSERT INTO `m_message_comm` VALUES ('2', '1', '158', '司法所风格', '2018-04-23 21:11:30');
INSERT INTO `m_message_comm` VALUES ('3', '1', '158', '司法所风格', '2018-04-23 21:49:26');
INSERT INTO `m_message_comm` VALUES ('6', '1', '158', '萨克雷才行啊接口了 穿v写成', '2018-04-23 22:04:52');
INSERT INTO `m_message_comm` VALUES ('7', '1', '158', '数据啊恐龙当家昂克赛拉级大神就对啦开始的就开始考虑加大斯科拉的撒看路径 ', '2018-04-23 22:04:55');
INSERT INTO `m_message_comm` VALUES ('10', '2', '158', '司法所风格', '2018-04-23 22:08:22');
INSERT INTO `m_message_comm` VALUES ('11', '2', '230', '司法所风格', '2018-04-23 22:09:09');
INSERT INTO `m_message_comm` VALUES ('12', '1', '158', '司法所风格', '2018-04-24 10:02:23');
INSERT INTO `m_message_comm` VALUES ('13', '1', '158', '司法所风格', '2018-04-24 10:02:44');
INSERT INTO `m_message_comm` VALUES ('14', '1', '248', '什么东西', '2018-04-24 11:17:49');
INSERT INTO `m_message_comm` VALUES ('15', '29', '230', '厉害了', '2018-04-24 12:35:18');
INSERT INTO `m_message_comm` VALUES ('16', '12', '249', '司法所风格', '2018-04-24 13:11:08');
INSERT INTO `m_message_comm` VALUES ('17', '2', '230', '真棒', '2018-04-24 15:06:42');
INSERT INTO `m_message_comm` VALUES ('18', '1', '250', '同桌好文笔。', '2018-04-24 15:47:17');
INSERT INTO `m_message_comm` VALUES ('19', '28', '248', 'world', '2018-04-24 17:36:24');
INSERT INTO `m_message_comm` VALUES ('20', '28', '250', '好的', '2018-04-24 19:28:58');
INSERT INTO `m_message_comm` VALUES ('21', '9', '250', '老司机带带我', '2018-04-24 19:29:37');
INSERT INTO `m_message_comm` VALUES ('22', '9', '220', '什么情况', '2018-04-24 19:36:22');
INSERT INTO `m_message_comm` VALUES ('23', '9', '230', '哦<br>哦', '2018-04-24 19:44:34');
INSERT INTO `m_message_comm` VALUES ('24', '1', '227', '加油', '2018-04-24 20:02:50');
INSERT INTO `m_message_comm` VALUES ('25', '1', '230', '低调', '2018-04-24 20:05:09');
INSERT INTO `m_message_comm` VALUES ('26', '34', '253', '对', '2018-04-24 20:25:40');
INSERT INTO `m_message_comm` VALUES ('27', '34', '250', '啊大神', '2018-04-24 20:38:35');
INSERT INTO `m_message_comm` VALUES ('28', '34', '227', 'gogo', '2018-04-24 21:13:02');
INSERT INTO `m_message_comm` VALUES ('29', '34', '252', '好诗', '2018-04-24 21:13:56');
INSERT INTO `m_message_comm` VALUES ('30', '34', '229', '0', '2018-04-24 21:14:59');
INSERT INTO `m_message_comm` VALUES ('31', '34', '177', '略略略', '2018-04-24 21:15:50');
INSERT INTO `m_message_comm` VALUES ('32', '34', '261', '阿三', '2018-04-24 21:28:13');
INSERT INTO `m_message_comm` VALUES ('33', '34', '261', '撒', '2018-04-24 21:28:25');
INSERT INTO `m_message_comm` VALUES ('34', '34', '261', '撒', '2018-04-24 21:28:54');
INSERT INTO `m_message_comm` VALUES ('35', '34', '261', '撒', '2018-04-24 21:29:31');
INSERT INTO `m_message_comm` VALUES ('36', '34', '277', 'wow', '2018-04-24 21:58:02');
INSERT INTO `m_message_comm` VALUES ('37', '28', '211', 'okc', '2018-04-25 09:32:34');
INSERT INTO `m_message_comm` VALUES ('38', '28', '194', 'lueluelue', '2018-04-25 09:58:03');
INSERT INTO `m_message_comm` VALUES ('39', '1', '220', '。。。', '2018-04-25 11:35:39');
INSERT INTO `m_message_comm` VALUES ('40', '1', '194', '是', '2018-04-25 11:36:53');
INSERT INTO `m_message_comm` VALUES ('41', '1', '195', '是', '2018-04-25 11:41:13');
INSERT INTO `m_message_comm` VALUES ('42', '1', '222', 'w', '2018-04-25 11:41:34');
INSERT INTO `m_message_comm` VALUES ('43', '1', '196', 'e', '2018-04-25 11:41:45');
INSERT INTO `m_message_comm` VALUES ('44', '1', '172', 'e', '2018-04-25 11:42:46');
INSERT INTO `m_message_comm` VALUES ('45', '1', '211', 'ccccccccccccccccccccccccc', '2018-04-25 11:44:08');
INSERT INTO `m_message_comm` VALUES ('46', '1', '181', '131', '2018-04-25 11:44:40');
INSERT INTO `m_message_comm` VALUES ('47', '1', '210', 'sas', '2018-04-25 11:46:01');
INSERT INTO `m_message_comm` VALUES ('48', '1', '212', ',', '2018-04-25 11:56:42');
INSERT INTO `m_message_comm` VALUES ('49', '1', '218', '额', '2018-04-25 12:42:55');
INSERT INTO `m_message_comm` VALUES ('50', '28', '280', '看好你哦', '2018-04-25 14:28:32');
INSERT INTO `m_message_comm` VALUES ('51', '28', '215', ' 10086', '2018-04-25 16:09:22');
INSERT INTO `m_message_comm` VALUES ('52', '1', '228', '顶一个', '2018-04-25 22:14:38');
INSERT INTO `m_message_comm` VALUES ('53', '28', '230', '66', '2018-04-26 14:18:45');
INSERT INTO `m_message_comm` VALUES ('54', '28', '294', '对的', '2018-04-26 15:37:55');
INSERT INTO `m_message_comm` VALUES ('55', '1', '296', '说的真棒', '2018-04-27 14:46:45');
INSERT INTO `m_message_comm` VALUES ('56', '1', '180', 'abcdefghijklmn', '2018-04-27 22:00:43');
INSERT INTO `m_message_comm` VALUES ('57', '1', '183', '不是', '2018-04-27 22:01:42');
INSERT INTO `m_message_comm` VALUES ('58', '1', '166', '额', '2018-04-27 22:05:41');
INSERT INTO `m_message_comm` VALUES ('59', '1', '181', '123123', '2018-04-27 22:07:19');
INSERT INTO `m_message_comm` VALUES ('60', '1', '178', '哦', '2018-04-27 22:07:42');
INSERT INTO `m_message_comm` VALUES ('61', '1', '181', '1', '2018-04-27 22:14:31');
INSERT INTO `m_message_comm` VALUES ('62', '1', '181', '2', '2018-04-27 22:14:54');
INSERT INTO `m_message_comm` VALUES ('63', '1', '181', '3', '2018-04-27 22:17:22');
INSERT INTO `m_message_comm` VALUES ('64', '1', '181', '4', '2018-04-27 22:18:15');
INSERT INTO `m_message_comm` VALUES ('65', '1', '181', '5', '2018-04-27 22:18:44');
INSERT INTO `m_message_comm` VALUES ('66', '28', '296', 'Come on', '2018-04-28 10:01:29');
INSERT INTO `m_message_comm` VALUES ('67', '28', '295', '对', '2018-04-28 10:02:15');
INSERT INTO `m_message_comm` VALUES ('68', '28', '220', '哦', '2018-04-28 10:02:48');
INSERT INTO `m_message_comm` VALUES ('69', '28', '214', '额', '2018-04-28 10:04:13');
INSERT INTO `m_message_comm` VALUES ('70', '28', '210', 'OKC', '2018-04-28 14:46:37');
INSERT INTO `m_message_comm` VALUES ('71', '28', '212', '十一号', '2018-04-28 18:29:43');
INSERT INTO `m_message_comm` VALUES ('72', '28', '162', '什么什么什么啊', '2018-04-28 21:57:46');
INSERT INTO `m_message_comm` VALUES ('79', '28', '220', '333', '2018-04-29 15:06:10');
INSERT INTO `m_message_comm` VALUES ('80', '28', '220', '32', '2018-04-29 15:06:34');
INSERT INTO `m_message_comm` VALUES ('81', '28', '220', 'f', '2018-04-29 15:08:16');
INSERT INTO `m_message_comm` VALUES ('82', '28', '220', '213', '2018-04-29 15:08:20');
INSERT INTO `m_message_comm` VALUES ('83', '28', '220', '12312312', '2018-04-29 15:10:48');
INSERT INTO `m_message_comm` VALUES ('84', '28', '220', 'das asd asdasd adasd asd sdas', '2018-04-29 15:12:06');
INSERT INTO `m_message_comm` VALUES ('85', '28', '227', '21312313', '2018-04-29 15:26:23');
INSERT INTO `m_message_comm` VALUES ('86', '28', '228', 'qwe', '2018-04-29 15:40:11');
INSERT INTO `m_message_comm` VALUES ('87', '28', '228', 'qweqweqweqweqwewe', '2018-04-29 15:40:17');
INSERT INTO `m_message_comm` VALUES ('88', '28', '229', '11111111', '2018-04-29 16:10:40');
INSERT INTO `m_message_comm` VALUES ('89', '28', '230', 'asdasdasdasd', '2018-04-29 16:14:54');
INSERT INTO `m_message_comm` VALUES ('90', '1', '181', '破', '2018-04-29 16:18:08');
INSERT INTO `m_message_comm` VALUES ('91', '28', '181', 'askdasldasldadasdasds', '2018-04-29 16:19:48');
INSERT INTO `m_message_comm` VALUES ('92', '28', '181', 'asdasd123123123123123123123123123123123123123123jhsadjkas kjkl sakl dklask ldalkjsd klask dalaskj klas dkalsklj dsjkd kasdk akjsldlkaskjldkls sad', '2018-04-29 16:20:39');
INSERT INTO `m_message_comm` VALUES ('93', '28', '181', 'sadSL;Dk;ls;das;fkasklasda;sdkaskdasdasdSDADS', '2018-04-29 16:21:20');
INSERT INTO `m_message_comm` VALUES ('94', '28', '210', '123', '2018-04-29 20:02:34');
INSERT INTO `m_message_comm` VALUES ('95', '28', '296', '123', '2018-04-29 20:12:15');
INSERT INTO `m_message_comm` VALUES ('96', '28', '296', '加油', '2018-04-29 20:29:43');
INSERT INTO `m_message_comm` VALUES ('97', '2', '298', 'e e', '2018-04-29 20:46:39');
INSERT INTO `m_message_comm` VALUES ('98', '28', '300', '恩', '2018-04-30 21:25:59');
INSERT INTO `m_message_comm` VALUES ('99', '1', '301', '是的', '2018-04-30 22:06:32');
INSERT INTO `m_message_comm` VALUES ('100', '23', '300', '说的很对', '2018-04-30 22:08:51');
INSERT INTO `m_message_comm` VALUES ('101', '23', '301', '对', '2018-04-30 22:09:30');
INSERT INTO `m_message_comm` VALUES ('102', '23', '301', '111', '2018-04-30 22:12:28');
INSERT INTO `m_message_comm` VALUES ('103', '23', '301', '123213', '2018-04-30 22:16:39');
INSERT INTO `m_message_comm` VALUES ('104', '23', '301', '123', '2018-04-30 22:17:00');
INSERT INTO `m_message_comm` VALUES ('105', '23', '301', '12', '2018-04-30 22:17:23');
INSERT INTO `m_message_comm` VALUES ('121', '2', '301', 'lueluelue', '2018-05-01 09:43:23');
INSERT INTO `m_message_comm` VALUES ('122', '2', '301', 'asd', '2018-05-01 09:47:00');
INSERT INTO `m_message_comm` VALUES ('123', '2', '296', 'qw', '2018-05-01 09:47:45');
INSERT INTO `m_message_comm` VALUES ('124', '2', '296', '1', '2018-05-01 09:48:06');
INSERT INTO `m_message_comm` VALUES ('125', '2', '301', '1', '2018-05-01 09:48:12');
INSERT INTO `m_message_comm` VALUES ('126', '2', '301', '213', '2018-05-01 09:50:55');
INSERT INTO `m_message_comm` VALUES ('127', '2', '300', '21', '2018-05-01 09:51:15');
INSERT INTO `m_message_comm` VALUES ('128', '2', '300', '123', '2018-05-01 09:52:21');
INSERT INTO `m_message_comm` VALUES ('129', '2', '300', '12', '2018-05-01 09:52:50');
INSERT INTO `m_message_comm` VALUES ('130', '2', '300', '12', '2018-05-01 09:54:31');
INSERT INTO `m_message_comm` VALUES ('131', '2', '300', '12', '2018-05-01 09:55:46');
INSERT INTO `m_message_comm` VALUES ('132', '2', '300', '1', '2018-05-01 09:55:57');
INSERT INTO `m_message_comm` VALUES ('133', '2', '296', '1', '2018-05-01 09:56:30');
INSERT INTO `m_message_comm` VALUES ('134', '2', '300', '1231', '2018-05-01 09:57:26');
INSERT INTO `m_message_comm` VALUES ('135', '2', '296', '123', '2018-05-01 10:00:29');
INSERT INTO `m_message_comm` VALUES ('136', '2', '300', '123', '2018-05-01 10:00:59');
INSERT INTO `m_message_comm` VALUES ('137', '2', '300', '112', '2018-05-01 10:01:51');
INSERT INTO `m_message_comm` VALUES ('138', '2', '250', '1231', '2018-05-01 10:02:52');
INSERT INTO `m_message_comm` VALUES ('139', '2', '277', '12', '2018-05-01 10:04:06');
INSERT INTO `m_message_comm` VALUES ('140', '2', '301', '1231', '2018-05-01 10:04:23');
INSERT INTO `m_message_comm` VALUES ('141', '2', '301', '123', '2018-05-01 10:04:37');
INSERT INTO `m_message_comm` VALUES ('142', '2', '211', '12ddd', '2018-05-01 10:05:30');
INSERT INTO `m_message_comm` VALUES ('143', '2', '183', '213123', '2018-05-01 10:05:58');
INSERT INTO `m_message_comm` VALUES ('144', '2', '214', '123', '2018-05-01 10:06:42');
INSERT INTO `m_message_comm` VALUES ('145', '2', '185', '12312', '2018-05-01 10:07:26');
INSERT INTO `m_message_comm` VALUES ('146', '2', '185', '11111', '2018-05-01 10:07:43');
INSERT INTO `m_message_comm` VALUES ('147', '2', '212', 'e', '2018-05-01 10:09:35');
INSERT INTO `m_message_comm` VALUES ('148', '2', '212', 'e', '2018-05-01 10:09:53');
INSERT INTO `m_message_comm` VALUES ('149', '2', '250', 'e', '2018-05-01 10:10:04');
INSERT INTO `m_message_comm` VALUES ('150', '2', '250', 'e as', '2018-05-01 10:11:06');
INSERT INTO `m_message_comm` VALUES ('151', '2', '183', '111111111111111', '2018-05-01 10:11:21');
INSERT INTO `m_message_comm` VALUES ('152', '2', '301', 'zzzzzzzzzzzz', '2018-05-01 10:11:56');
INSERT INTO `m_message_comm` VALUES ('153', '2', '183', '2134', '2018-05-01 10:12:39');
INSERT INTO `m_message_comm` VALUES ('154', '2', '188', '123', '2018-05-01 10:12:59');
INSERT INTO `m_message_comm` VALUES ('155', '2', '188', 'e', '2018-05-01 10:13:38');
INSERT INTO `m_message_comm` VALUES ('156', '2', '188', 'e e e e', '2018-05-01 10:14:15');
INSERT INTO `m_message_comm` VALUES ('157', '2', '183', 'e', '2018-05-01 10:18:02');
INSERT INTO `m_message_comm` VALUES ('158', '2', '183', 'sds sc a asxca', '2018-05-01 10:24:42');
INSERT INTO `m_message_comm` VALUES ('159', '2', '162', 'what', '2018-05-01 10:25:03');
INSERT INTO `m_message_comm` VALUES ('160', '2', '187', 'a', '2018-05-01 10:25:21');
INSERT INTO `m_message_comm` VALUES ('161', '2', '301', 'xx', '2018-05-01 10:26:13');
INSERT INTO `m_message_comm` VALUES ('162', '2', '303', 'e', '2018-05-01 10:27:16');
INSERT INTO `m_message_comm` VALUES ('163', '2', '303', 'e', '2018-05-01 10:27:20');
INSERT INTO `m_message_comm` VALUES ('164', '2', '303', '123123', '2018-05-01 10:27:44');
INSERT INTO `m_message_comm` VALUES ('165', '2', '303', 'e', '2018-05-01 10:28:04');
INSERT INTO `m_message_comm` VALUES ('166', '2', '303', 'mmmmm', '2018-05-01 10:28:35');
INSERT INTO `m_message_comm` VALUES ('167', '2', '303', 'hjkjkh', '2018-05-01 10:28:47');
INSERT INTO `m_message_comm` VALUES ('168', '2', '303', 'bbbbbbbbbb', '2018-05-01 10:29:36');
INSERT INTO `m_message_comm` VALUES ('169', '2', '304', 'e', '2018-05-01 10:30:56');
INSERT INTO `m_message_comm` VALUES ('170', '2', '304', 'as das', '2018-05-01 10:31:10');
INSERT INTO `m_message_comm` VALUES ('171', '2', '304', '31231231312312', '2018-05-01 10:31:32');
INSERT INTO `m_message_comm` VALUES ('172', '2', '304', '2', '2018-05-01 10:31:58');
INSERT INTO `m_message_comm` VALUES ('173', '28', '304', 'BBVBNXFGS', '2018-05-01 10:50:41');
INSERT INTO `m_message_comm` VALUES ('174', '28', '215', '11', '2018-05-01 10:51:11');
INSERT INTO `m_message_comm` VALUES ('175', '28', '215', 'asdasdadsd', '2018-05-01 10:51:58');
INSERT INTO `m_message_comm` VALUES ('176', '28', '305', 'asd', '2018-05-01 10:52:24');
INSERT INTO `m_message_comm` VALUES ('177', '28', '306', 'asd', '2018-05-01 10:58:34');
INSERT INTO `m_message_comm` VALUES ('178', '28', '277', '恩', '2018-05-01 10:59:18');
INSERT INTO `m_message_comm` VALUES ('179', '28', '304', '呃呃呃呃呃呃鹅鹅鹅鹅鹅鹅饿', '2018-05-01 11:01:02');
INSERT INTO `m_message_comm` VALUES ('180', '28', '304', '1', '2018-05-01 11:02:19');
INSERT INTO `m_message_comm` VALUES ('181', '28', '304', '驱蚊器翁群', '2018-05-01 11:02:44');
INSERT INTO `m_message_comm` VALUES ('182', '28', '164', '按时', '2018-05-01 11:03:08');
INSERT INTO `m_message_comm` VALUES ('183', '28', '164', '在', '2018-05-01 11:04:42');
INSERT INTO `m_message_comm` VALUES ('184', '28', '164', '重新做', '2018-05-01 11:04:57');
INSERT INTO `m_message_comm` VALUES ('185', '28', '164', '12312', '2018-05-01 11:05:15');
INSERT INTO `m_message_comm` VALUES ('186', '28', '164', '1', '2018-05-01 11:05:53');
INSERT INTO `m_message_comm` VALUES ('187', '28', '164', '2', '2018-05-01 11:06:27');
INSERT INTO `m_message_comm` VALUES ('188', '28', '185', '是a', '2018-05-01 11:06:44');
INSERT INTO `m_message_comm` VALUES ('189', '28', '188', '1', '2018-05-01 11:07:01');
INSERT INTO `m_message_comm` VALUES ('190', '28', '188', '2', '2018-05-01 11:07:04');
INSERT INTO `m_message_comm` VALUES ('191', '28', '185', '1', '2018-05-01 11:08:13');
INSERT INTO `m_message_comm` VALUES ('192', '28', '277', '1', '2018-05-01 11:09:13');
INSERT INTO `m_message_comm` VALUES ('193', '28', '277', '2', '2018-05-01 11:09:52');
INSERT INTO `m_message_comm` VALUES ('194', '28', '215', '1', '2018-05-01 11:10:23');
INSERT INTO `m_message_comm` VALUES ('195', '28', '304', '安全', '2018-05-01 11:10:59');
INSERT INTO `m_message_comm` VALUES ('196', '28', '304', '这些', '2018-05-01 11:12:01');
INSERT INTO `m_message_comm` VALUES ('197', '28', '277', '3', '2018-05-01 11:12:45');
INSERT INTO `m_message_comm` VALUES ('198', '28', '277', '4', '2018-05-01 11:13:27');
INSERT INTO `m_message_comm` VALUES ('199', '28', '277', '5', '2018-05-01 11:14:01');
INSERT INTO `m_message_comm` VALUES ('200', '28', '277', '6', '2018-05-01 11:14:40');
INSERT INTO `m_message_comm` VALUES ('201', '28', '277', '7', '2018-05-01 11:15:13');
INSERT INTO `m_message_comm` VALUES ('202', '28', '277', '8', '2018-05-01 11:16:53');
INSERT INTO `m_message_comm` VALUES ('203', '28', '277', '9', '2018-05-01 11:19:42');
INSERT INTO `m_message_comm` VALUES ('204', '28', '250', '1', '2018-05-01 11:20:26');
INSERT INTO `m_message_comm` VALUES ('205', '28', '304', '123', '2018-05-01 11:20:41');
INSERT INTO `m_message_comm` VALUES ('206', '28', '304', '123123214', '2018-05-01 11:29:18');
INSERT INTO `m_message_comm` VALUES ('207', '28', '304', '都是啊啊撒', '2018-05-01 12:00:44');
INSERT INTO `m_message_comm` VALUES ('208', '28', '304', 'a', '2018-05-01 12:01:22');
INSERT INTO `m_message_comm` VALUES ('209', '4', '301', 'asd asd asd', '2018-05-01 12:37:23');
INSERT INTO `m_message_comm` VALUES ('210', '4', '331', '哈哈', '2018-05-01 13:12:16');
INSERT INTO `m_message_comm` VALUES ('211', '4', '331', '哦', '2018-05-01 13:13:09');
INSERT INTO `m_message_comm` VALUES ('212', '4', '331', '啊', '2018-05-01 13:13:44');
INSERT INTO `m_message_comm` VALUES ('213', '1', '331', 'o', '2018-05-01 13:46:24');
INSERT INTO `m_message_comm` VALUES ('214', '2', '331', '略', '2018-05-01 13:47:28');
INSERT INTO `m_message_comm` VALUES ('215', '2', '212', 'QA', '2018-05-01 13:48:18');
INSERT INTO `m_message_comm` VALUES ('216', '2', '331', '1', '2018-05-01 14:12:55');
INSERT INTO `m_message_comm` VALUES ('217', '2', '111', '按时', '2018-05-01 14:18:10');
INSERT INTO `m_message_comm` VALUES ('244', '2', '331', '12312V', '2018-05-01 15:47:14');
INSERT INTO `m_message_comm` VALUES ('245', '2', '277', '3123123131', '2018-05-01 15:47:57');
INSERT INTO `m_message_comm` VALUES ('246', '2', '277', '1KJLJKLHLHK', '2018-05-01 15:48:12');
INSERT INTO `m_message_comm` VALUES ('253', '2', '331', '按时', '2018-05-01 16:11:51');
INSERT INTO `m_message_comm` VALUES ('254', '2', '211', '阿萨德', '2018-05-01 16:13:16');
INSERT INTO `m_message_comm` VALUES ('255', '1', '331', '对', '2018-05-01 16:14:01');
INSERT INTO `m_message_comm` VALUES ('256', '1', '331', '恩', '2018-05-01 16:14:40');
INSERT INTO `m_message_comm` VALUES ('257', '1', '250', '1', '2018-05-01 16:14:51');
INSERT INTO `m_message_comm` VALUES ('280', '1', '277', 'asd asd as d', '2018-05-01 17:10:48');
INSERT INTO `m_message_comm` VALUES ('283', '1', '331', '1额da', '2018-05-01 17:23:57');
INSERT INTO `m_message_comm` VALUES ('285', '28', '212', '阿萨德', '2018-05-01 18:28:23');
INSERT INTO `m_message_comm` VALUES ('291', '28', '331', '嗯', '2018-05-02 17:19:19');
INSERT INTO `m_message_comm` VALUES ('292', '28', '194', 'sad', '2018-05-02 21:06:04');
INSERT INTO `m_message_comm` VALUES ('293', '28', '331', '说的对', '2018-05-02 21:10:46');
INSERT INTO `m_message_comm` VALUES ('294', '28', '212', '额', '2018-05-02 21:11:23');
INSERT INTO `m_message_comm` VALUES ('295', '28', '211', '13123131', '2018-05-02 21:49:18');
INSERT INTO `m_message_comm` VALUES ('296', '28', '211', '18', '2018-05-02 21:49:37');
INSERT INTO `m_message_comm` VALUES ('297', '28', '211', 'as das das', '2018-05-02 22:00:30');
INSERT INTO `m_message_comm` VALUES ('298', '28', '211', '1', '2018-05-02 22:05:06');
INSERT INTO `m_message_comm` VALUES ('299', '28', '211', 'asd', '2018-05-02 22:05:21');
INSERT INTO `m_message_comm` VALUES ('300', '28', '180', 'as', '2018-05-02 22:07:07');
INSERT INTO `m_message_comm` VALUES ('301', '28', '188', '123', '2018-05-02 22:09:54');
INSERT INTO `m_message_comm` VALUES ('302', '27', '331', '有道理', '2018-05-02 22:10:42');
INSERT INTO `m_message_comm` VALUES ('303', '27', '212', '什么东西', '2018-05-02 22:10:57');
INSERT INTO `m_message_comm` VALUES ('304', '27', '228', '六六六', '2018-05-02 22:13:31');
INSERT INTO `m_message_comm` VALUES ('305', '27', '180', '111', '2018-05-02 22:16:41');
INSERT INTO `m_message_comm` VALUES ('306', '27', '212', '11', '2018-05-02 22:36:46');
INSERT INTO `m_message_comm` VALUES ('307', '27', '212', 'ads a  a', '2018-05-03 09:28:00');
INSERT INTO `m_message_comm` VALUES ('308', '27', '212', '1', '2018-05-03 09:37:00');
INSERT INTO `m_message_comm` VALUES ('309', '27', '222', '12313', '2018-05-03 09:41:53');
INSERT INTO `m_message_comm` VALUES ('310', '28', '277', 'e', '2018-05-03 13:22:08');
INSERT INTO `m_message_comm` VALUES ('311', '28', '212', 'e', '2018-05-03 20:44:35');
INSERT INTO `m_message_comm` VALUES ('312', '2', '277', 'sa dsd', '2018-05-03 20:53:56');
INSERT INTO `m_message_comm` VALUES ('313', '28', '212', 'as', '2018-05-04 12:31:09');
INSERT INTO `m_message_comm` VALUES ('314', '28', '300', 'e', '2018-05-04 13:06:46');
INSERT INTO `m_message_comm` VALUES ('315', '28', '300', 'ew', '2018-05-04 13:06:57');
INSERT INTO `m_message_comm` VALUES ('316', '28', '277', 'abc', '2018-05-04 13:10:45');
INSERT INTO `m_message_comm` VALUES ('317', '28', '212', 'e', '2018-05-04 13:13:54');
INSERT INTO `m_message_comm` VALUES ('318', '28', '212', 'e', '2018-05-04 13:15:06');
INSERT INTO `m_message_comm` VALUES ('319', '28', '214', 'sad', '2018-05-04 13:17:27');
INSERT INTO `m_message_comm` VALUES ('320', '28', '212', 'aasdasdasdadsd', '2018-05-04 13:18:14');
INSERT INTO `m_message_comm` VALUES ('321', '28', '180', 'aasdasda', '2018-05-04 13:23:12');
INSERT INTO `m_message_comm` VALUES ('322', '28', '277', 'as ad s as', '2018-05-04 13:29:00');
INSERT INTO `m_message_comm` VALUES ('328', '28', '331', '嗯', '2018-05-04 20:21:00');
INSERT INTO `m_message_comm` VALUES ('331', '28', '195', '恩', '2018-05-05 18:26:38');
INSERT INTO `m_message_comm` VALUES ('332', '28', '195', '1', '2018-05-05 18:27:02');
INSERT INTO `m_message_comm` VALUES ('333', '28', '352', '有道理', '2018-05-05 19:01:53');
INSERT INTO `m_message_comm` VALUES ('337', '28', '301', '21312312312311', '2018-05-06 09:42:26');
INSERT INTO `m_message_comm` VALUES ('338', '28', '349', '嗯', '2018-05-06 15:39:11');
INSERT INTO `m_message_comm` VALUES ('339', '28', '354', 'as das', '2018-05-06 21:00:39');
INSERT INTO `m_message_comm` VALUES ('340', '28', '277', '123123123', '2018-05-08 14:43:35');
INSERT INTO `m_message_comm` VALUES ('341', '28', '296', 'sffsd', '2018-05-08 19:37:57');
INSERT INTO `m_message_comm` VALUES ('342', '28', '356', '阿斯达所多', '2018-05-09 08:27:26');
INSERT INTO `m_message_comm` VALUES ('343', '28', '353', '213123', '2018-05-09 09:49:49');
INSERT INTO `m_message_comm` VALUES ('344', '28', '250', '21312', '2018-05-09 10:24:53');

-- ----------------------------
-- Table structure for m_photowall
-- ----------------------------
DROP TABLE IF EXISTS `m_photowall`;
CREATE TABLE `m_photowall` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `sex` text CHARACTER SET utf8 NOT NULL COMMENT '性别  1-男   0-女',
  `age` varchar(255) NOT NULL COMMENT '年龄',
  `phone` varchar(18) NOT NULL COMMENT '联系方式',
  `email` varchar(255) NOT NULL COMMENT '电子邮箱',
  `address` varchar(255) NOT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  `sort` bigint(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of m_photowall
-- ----------------------------
INSERT INTO `m_photowall` VALUES ('1', '陈佩伟', '1', '1997/4/16', '123456456', '666@126.com', '', '21212', '0', '');
INSERT INTO `m_photowall` VALUES ('2', '陈品', '1', '1997/2/13', '15868077361', '985623@qq.com', '浙江省温州市乐清市柳市镇七前村陈立新收', '', '0', '');
INSERT INTO `m_photowall` VALUES ('3', '陈通吉', '1', '1997/2/2', '15167875126', '7893452@qq.com', '浙江省乐清市虹桥镇钱家垟村雁荡山啤酒仓库', null, '0', '');
INSERT INTO `m_photowall` VALUES ('4', '陈中齐', '1', '1997/4/7', '15167813919', '235643@qq.com', '浙江省温州市苍南县钱库镇浃底园村387号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('5', '程增博', '1', '1995/12/3', '18757072032', '112312@qq.com', '浙江省温州市乐清市柳市镇南沙岙岙底村中南八路21号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('6', '董林凯', '1', '1997/3/29', '15382522336', '432121@qq.com', '浙江省温州市瑞安市陶山镇碧山前河村建设路7号', '浙江魔豆科技有限公司', '0', 'content.......');
INSERT INTO `m_photowall` VALUES ('7', '封潇庆', '0', '1996/10/1', '13106083771', '12314@qq.com', '浙江省衢州市常山县职业中等专业学校', null, '0', '');
INSERT INTO `m_photowall` VALUES ('8', '洪道森', '1', '1997/9/30', '13868538401', '48635@qq.com', '浙江省温州市平阳县', '', '0', '');
INSERT INTO `m_photowall` VALUES ('9', '胡嘉琪', '1', '1997/5/28', '13819008963', '456832@qq.com', '浙江省衢州市柯城区新新街道 思源路289号足来足往', null, '0', '');
INSERT INTO `m_photowall` VALUES ('10', '胡志飞', '1', '1997/3/3', '18857820949', '768413@qq.com', '丽水市庆元县横成北路三弄七号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('11', '华烽', '1', '1996/6/3', '13868831446', '123137@qq.com', '浙江省温州市苍南县马站镇朝阳路158号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('12', '黄李民', '1', '1996/10/30', '15967756144', '13647@qq.com', '浙江省永嘉县乌牛街道杨家山村6幢1号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('13', '黄益发', '1', '1997/7/7', '13858700131', '1247834@qq.com', '浙江省温州市苍南县灵溪镇凤池乡白水村014号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('14', '赖正飞', '1', '1995/10/23', '18958614283', '1243241@qq.com', '浙江省台州市黄岩区 宁溪镇中宅巷25-11', null, '0', '');
INSERT INTO `m_photowall` VALUES ('15', '李祖旭', '1', '1997/4/5', '15267714583', '8762324@qq.com', '浙江省苍南县马站镇仪表宿舍308号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('16', '林朝阳', '1', '1997/8/8', '15067807121', '563351@qq.com', '浙江省平阳县昆阳镇练川社区柳垟村', null, '0', '');
INSERT INTO `m_photowall` VALUES ('17', '林锦勇', '1', '1995/11/20', '15067807121', '4622213@qq.com', '浙江省温州市鹿城区南汇街道南郊乡里垟村丽庆路39号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('18', '林伟杰', '1', '1997/1/20', '13806864432', '896356@qq.com', '浙江省乐清市芙蓉镇海口路4号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('19', '林武', '1', '1997/4/18', '13736361469', '4254625@qq.com', '浙江省温州市瓯海区郭溪镇塘下上村巷86号601室', null, '0', '');
INSERT INTO `m_photowall` VALUES ('20', '林夏', '0', '1997/6/22', '18357765116', '352326@qq.com', '浙江省温州市苍南县灵溪镇新兴路11号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('21', '陆玉浩', '1', '1997/1/13', '13777763044', '623442423@qq.com', '浙江省温州市瓯海区新桥镇府西堡锦园16栋404', null, '0', '');
INSERT INTO `m_photowall` VALUES ('22', '缪锦强', '1', '1997/8/30', '15988792421', '342341243@qq.com', '浙江省温州市永嘉县瓯北镇三江街道新木桥村3号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('23', '缪克国', '1', '1995/3/22', '13221150388', '5734513@qq.com', '苍南县龙港镇人民路438号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('24', '缪茂可', '1', '1996/12/9', '13868831976', '51343312@qq.com', '浙江省温州市苍南县海城乡海头村华百小区A栋一单元501', null, '0', '');
INSERT INTO `m_photowall` VALUES ('25', '潘晓武', '1', '1996/7/2', '15825607504', '52341254@qq.com', '浙江省永嘉县沙头镇泰石村新建路128号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('26', '沈官良', '1', '1997/2/26', '15825607504', '4546547@qq.com', '杭州市萧山区瓜沥镇（坎山片）工农村13组10户', null, '0', '');
INSERT INTO `m_photowall` VALUES ('27', '汤伟伟', '1', '1997/1/24', '15157813158', '78956753@qq.com', '丽水市莲都区灯塔工业区16号1楼棋牌室', null, '0', '');
INSERT INTO `m_photowall` VALUES ('28', '王斌洋', '1', '1997/6/13', '18867791867', '433445@qq.com', '浙江省温州市瓯海区南白象街道新象街72弄16号', '', '0', '');
INSERT INTO `m_photowall` VALUES ('29', '翁超鹏', '1', '1997/9/28', '18268913092', '78234321@qq.com', '丽水市莲都区丽阳街572号', '1', '0', '');
INSERT INTO `m_photowall` VALUES ('30', '巫明杰', '1', '1997/2/14', '13957006015', '45327534@qq.com', '浙江省衢州市衢江区全旺镇幸福源管家12号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('31', '吴志强', '1', '1997/7/19', '15158671600\r\n', '324241@qq.com', '浙江省乐清市乐成街道宁康西路157号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('32', '杨邦城', '1', '1997/4/27', '13695882930', '25435234@qq.com', '浙江省温州市苍南县龙港镇吴家弄183号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('33', '杨春艳', '0', '1996/10/16', '18857790524', '4353452@qq.com', '浙江省温州市洞头县', null, '0', '');
INSERT INTO `m_photowall` VALUES ('34', '杨国镭', '1', '1997/2/2', '13059658022', '4134232@qq.com', '浙江省丽水市莲都区灯塔街173号一幢401室', '', '0', '');
INSERT INTO `m_photowall` VALUES ('35', '叶劲赛', '1', '1997/3/5', '18606773980', '456424@qq.com', '浙江省温州市泰顺县龟湖镇新湖村', null, '0', '');
INSERT INTO `m_photowall` VALUES ('36', '叶思义', '1', '1997/4/22', '18858800073', '1241245@qq.com', '浙江省温州市苍南县马站镇路尾', null, '0', '');
INSERT INTO `m_photowall` VALUES ('37', '叶挺', '1', '1997/8/22', '13989760256', '34632@qq.com', '浙江省乐清城西路170弄10号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('38', '郑豪', '1', '1996/2/24', '13656513752', '4362341@qq.com', '浙江省瑞安市塘下镇鲍田村北新街55号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('39', '郑凯宇', '1', '1996/7/1', '15167787195', '124464@qq.com', '浙江省乐清市清江镇菜岙村', null, '0', '');
INSERT INTO `m_photowall` VALUES ('40', '钟天经', '1', '1997/7/21', '13587174234', '7537425@qq.com', '浙江省丽水市莲都区东银苑227幢1单元101', null, '0', '');
INSERT INTO `m_photowall` VALUES ('41', '周斌', '1', '1997/12/11', '15168728284', '12454627@qq.com', '浙江省平阳县昆阳镇郭庄路100号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('42', '周丽丹', '0', '1996/5/30', '13806868615', '63231123@qq.com', '浙江省温州市乐清市虹桥石帆街道金钟路发鑫批发超市', null, '0', '');
INSERT INTO `m_photowall` VALUES ('43', '周月翰', '1', '1997/1/19', '13221119623', '7534523@qq.com', '浙江省温州市苍南县龙港镇龙江路242号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('44', '朱启泉', '1', '1997/2/5', '13587544016', '547624@qq.com', '浙江省温州市平阳县昆阳镇后洋村179-2号', null, '0', '');
INSERT INTO `m_photowall` VALUES ('45', '徐武强', '1', '1995/10/8', '13958609351', '436451@qq.com', '浙江省温岭市坞根镇白璧村180号', null, '0', '');
