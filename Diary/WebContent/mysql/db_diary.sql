/*
 Navicat Premium Data Transfer

 Source Server         : chen
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : db_diary

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 01/05/2021 03:31:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_diary
-- ----------------------------
DROP TABLE IF EXISTS `t_diary`;
CREATE TABLE `t_diary`  (
  `diaryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `typeId` int(11) NULL DEFAULT NULL,
  `releaseDate` datetime NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`diaryId`) USING BTREE,
  INDEX `FK_t_diary`(`typeId`) USING BTREE,
  CONSTRAINT `FK_t_diary` FOREIGN KEY (`typeId`) REFERENCES `t_diarytype` (`diaryTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_diary
-- ----------------------------
INSERT INTO `t_diary` VALUES (1, '加班', '<p>是</p>\r\n', 1, '2014-01-01 00:00:00', 1);
INSERT INTO `t_diary` VALUES (4, '我爱老婆', '<p>&nbsp;的</p>\r\n', 2, '2013-10-01 00:00:00', 1);
INSERT INTO `t_diary` VALUES (8, '6', NULL, 1, '2013-01-01 00:00:00', 1);
INSERT INTO `t_diary` VALUES (12, '10', NULL, 1, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (13, '11', NULL, 1, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (14, '12', NULL, 1, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (15, '13', NULL, 2, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (16, '14', NULL, 2, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (17, '15', NULL, 2, '2013-01-01 00:00:00', 5);
INSERT INTO `t_diary` VALUES (19, '苦逼的一天', '<p>我</p>\r\n', 2, '2014-01-09 16:42:32', 5);
INSERT INTO `t_diary` VALUES (28, '狗逼的一天ss', '<p>我曹sss</p>\r\n', 3, '2014-01-11 14:06:05', 5);
INSERT INTO `t_diary` VALUES (35, '网游程序员转行卖烧饼 买房买车娶绝对领域美女妹纸', '<p>近日，网上爆红的一段视频让码代码的程序员再次进入网友的视线，在这个拍客视频里，拍客拍到：原来在一家网游公司辛苦工作的高级程序员，因为身体原因离开网游公司，转行卖烧饼，不仅在深圳买房买车，还娶了个漂亮老婆&ldquo;烧饼西施&rdquo;，可谓财色兼收，让原来的兄弟艳羡不已。<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C635%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C643/sign=ea2429208d5494ee87220f111dce838e/4844bc003af33a87f0aaa885c75c10385143b5e3.jpg\" style=\"height:644px; margin-top:8px; width:560px\" /><br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C696%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C704/sign=b5446d71b58f8c54e3d3c5270a124e85/a78e3087e950352adc498e975243fbf2b3118b86.jpg\" style=\"height:704px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C744%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C752/sign=257f4cb40ff41bd5da53e8fc61e1e2bb/214c566034a85edfd5d055bc48540923dc54754a.jpg\" style=\"height:749px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C337%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C345/sign=fdb337d83812b31bc76ccd21b623550a/1ae9aec27d1ed21b80ca857aac6eddc450da3faf.jpg\" style=\"height:356px; margin-top:8px; width:560px\" /><br />\r\n<br />\r\n<br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C497%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C505/sign=e2b337d83812b31bc76ccd21b623550a/4f6604f41bd5ad6e4cfacf7580cb39dbb7fd3caf.jpg\" style=\"height:512px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C312%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C320/sign=8a5e193ba5c27d1ea5263bcc2beece1e/d4290323dd54564ecc394fa6b2de9c82d0584f4a.jpg\" style=\"height:344px; margin-top:8px; width:550px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C382%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C390/sign=1c3f3f2486d6277fe912323018037c40/4d6b0324ab18972b4f39ab55e7cd7b899f510aaf.jpg\" style=\"height:401px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C355%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C363/sign=f741c8e19358d109c4e3a9bae163afcf/3c39a7345982b2b7fab7925b30adcbef77099b86.jpg\" style=\"height:375px; margin-top:8px; width:560px\" /><br />\r\n<br />\r\n在这个时代，高学历的你们还敢嘲笑搬砖的民工，和卖烧饼的大爷大妈吗？<br />\r\n<br />\r\n其实，中国的程序员有一个统一的外号&mdash;&mdash;&ldquo;码农&rdquo;，这一外号形象的表现了程序员工作的境况。如果你周围有一名程序员朋友你就会知道，他们的工作异常辛苦：加班，加班，还是加班！视频里的主人公&ldquo;烧饼哥&rdquo;也有些痛心的告诉我：&ldquo;程序员就是不停的工作，工作很累很累。不过做网游程序开发的时候还是很开心的，兄弟们一起加班解决问题，下班也常去唱唱K打打球，很快乐。可惜后来身体有点吃不消，就离职了。&rdquo;<br />\r\n<br />\r\n这位程序员在身体状况好了些后，也认识了现在的女朋友，&ldquo;之后我找了个漂亮的女朋友。就是你们说的&lsquo;烧饼西施&rsquo;她会做烧饼，然后教给了我，我们又用了一段时间研究和尝试如何把烧饼做的更好吃，成功之后试着就摆了这个烧饼摊。<br />\r\n<br />\r\n<br />\r\n&ldquo;最初的时候一天就卖了一百多张，没想到后来生意越来越好，到现在有时候都忙不过来，甚至还火到网上去了。现在我们俩一起赚了套房子，准备年底就结婚，这在以前我是想都不敢想的！&rdquo;<br />\r\n<br />\r\n&ldquo;烧饼哥&rdquo;的发家致富其实并非偶然，也并不是所有的程序员都要改行去卖烧饼才能获得成功。这使记者想起一句话：没有可以成功的行业，只有在哪个行业都可以成功的人。在此，希望&ldquo;烧饼哥&rdquo;和&ldquo;烧饼西施&rdquo;早结良缘，生活幸福美满；也希望那些还在加班奋斗的码农们，能多给自己一点喘息的空间。<br />\r\n<br />\r\n注意：程序员虽然被叫做苦逼的程序猿，但是，实际上，做IT开发的收入高的人，收入还是比买收入的高多了，这个故事是要告诉大家，做哪行都要努力，但是，也不要轻易放弃自己的本行，个例可以用来鼓舞精神</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2014-01-13 00:24:24', 1);
INSERT INTO `t_diary` VALUES (36, '今天很开心', '<p>解决了客户的一些系统问题。啊发撒法</p>\r\n', 1, '2014-01-13 08:05:36', 1);
INSERT INTO `t_diary` VALUES (41, '学习java第一课', '<h1><em><strong>学习java的好处学习java的好处</strong></em></h1>\r\n\r\n<h3>学习java的好处学习java的好处学习java的好处</h3>\r\n\r\n<p>很好很好1范德萨发大水分打算发大水发12312312312</p>\r\n\r\n<p>事发地时范德萨发的双方都撒</p>\r\n', 3, '2017-03-26 17:14:22', 5);

-- ----------------------------
-- Table structure for t_diarytype
-- ----------------------------
DROP TABLE IF EXISTS `t_diarytype`;
CREATE TABLE `t_diarytype`  (
  `diaryTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`diaryTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_diarytype
-- ----------------------------
INSERT INTO `t_diarytype` VALUES (1, '工作类');
INSERT INTO `t_diarytype` VALUES (2, '生活类');
INSERT INTO `t_diarytype` VALUES (3, '学习类');
INSERT INTO `t_diarytype` VALUES (10, '测试');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `imageName` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mood` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `is_manage` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'wishwzp', 'wishwzp', '飞飞', '20170113081010.jpg', '快乐的程序员12314520	\r\n									\r\n									\r\n							', 0);
INSERT INTO `t_user` VALUES (2, 'admin', 'admin', '管理员', '20170113081010.jpg', '我是管理员				', 1);

SET FOREIGN_KEY_CHECKS = 1;
