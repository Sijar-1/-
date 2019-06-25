/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : gaoxiaoxlsc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-04-21 00:55:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(13) NOT NULL,
  `bname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 NOT NULL,
  `publisher` varchar(20) CHARACTER SET utf8 NOT NULL,
  `publish_year` int(4) NOT NULL,
  `course_id` int(11) NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '9787307099562', '网络攻防技术教程第二版', '杜晔，张大伟，范艳芳', '武汉大学出版社', '2012', '0', 'http://img3m8.ddimg.cn/98/21/22881968-1_w_1.jpg');
INSERT INTO `book` VALUES ('2', '9787040272352', '高等数学上册', '殷锡鸣', '高等教育出版社', '2010', '0', 'img/book/2gaoshushang.jpg');
INSERT INTO `book` VALUES ('3', '9787040396638', '高等数学第七版上册', '同济大学数学系', '高等教育出版社', '2014', '0', 'http://img3m4.ddimg.cn/77/5/25205774-1_w_3.jpg');
INSERT INTO `book` VALUES ('4', '9787111491934', '黑客攻防从入门到精通（攻防与脚本编程篇）', '天和文化', '机械工业出版社', '2015', '0', 'http://img3m6.ddimg.cn/66/24/23679876-1_w_2.jpg');
INSERT INTO `book` VALUES ('5', '9787543222649', '文献检索与知识发现指南第二版', '吉久明，孙济庆', '格致出版社，上海人民出版社', '2013', '0', 'http://img3m3.ddimg.cn/71/4/23339123-1_w_2.jpg');
INSERT INTO `book` VALUES ('6', '9787532742936', '且听风吟', '村上春树', '上海译文出版社', '2017', '0', 'http://img3m2.ddimg.cn/30/29/24186522-1_w_1.jpg');
INSERT INTO `book` VALUES ('7', '9787111504825', '计算机组成与设计：硬件/软件接口', '(美)帕特森,(美）亨尼斯，王党辉 等', '机械工业出版社', '2015', '0', 'http://img3m1.ddimg.cn/95/19/23735741-1_w_1.jpg');
INSERT INTO `book` VALUES ('8', '9787302381419', '编译原理', ' 王生原', '清华大学出版社', '2015', '0', 'http://img3m4.ddimg.cn/11/14/23751794-1_w_1.jpg');
INSERT INTO `book` VALUES ('9', '9787111407470', '人机交互——软件工程视角', '骆斌，冯桂焕', '机械工业出版社', '2012', '0', 'http://img3m7.ddimg.cn/27/3/23238297-1_w_1.jpg');
INSERT INTO `book` VALUES ('10', '9787040451108', '数据结构', '陈越', '高等教育出版社', '2016', '0', 'http://img3m9.ddimg.cn/8/35/24015329-1_w_2.jpg');
INSERT INTO `book` VALUES ('11', '9787111391401', '数据挖掘概念与技术', '（美）韩家炜等著，范明等译', '机械工业出版社', '2012', '0', 'http://img3m0.ddimg.cn/70/21/22846300-1_w_7.jpg');
INSERT INTO `book` VALUES ('12', '9787561920916', '最新日语语法大全                      ', '钱红日编著               ', '北京语言大学出版社      ', '2008', '0', 'http://img3m0.ddimg.cn/93/6/20714160-1_w_2.jpg');
INSERT INTO `book` VALUES ('13', '9787115424211', '走近2050                        ', '集智俱乐部著              ', '人民邮电出版社          ', '2016', '0', 'http://img3m0.ddimg.cn/17/32/23982470-1_w_27.jpg');
INSERT INTO `book` VALUES ('14', '9787302214434', '自动控制原理习题详解                    ', '王建辉等编著             ', '清华大学出版社          ', '2010', '0', 'http://img3m1.ddimg.cn/67/26/9207661-1_w.jpg');
INSERT INTO `book` VALUES ('15', '9787563545681', '自动控制原理考研宝典                    ', '张明君主编               ', '北京邮电大学出版社      ', '2016', '0', 'http://img3m9.ddimg.cn/16/20/1147930459-1_w_1.jpg');
INSERT INTO `book` VALUES ('16', '7505412140', '诛仙                            ', '萧鼎著                 ', '朝华出版社              ', '2005', '0', 'http://img3m8.ddimg.cn/68/19/23981828-1_w_6.jpg');
INSERT INTO `book` VALUES ('17', '7505413201', '诛仙                            ', '萧鼎著                 ', '朝华出版社              ', '2005', '0', 'http://img3m8.ddimg.cn/68/19/23981828-1_w_6.jpg');
INSERT INTO `book` VALUES ('18', '750541321X   ', '诛仙                            ', '萧鼎著                 ', '朝华出版社              ', '2005', '0', 'http://img3m8.ddimg.cn/68/19/23981828-1_w_6.jpg');
INSERT INTO `book` VALUES ('19', '9787509321171', '中华人民共和国票据法                    ', '中国法制出版社编            ', '中国法制出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('20', '9787020090587', '中国诗歌通史                        ', '赵敏俐, 吴思敬主编;韩经太[卷]主编 ', '人民文学出版社          ', '2012', '0', 'http://img3m7.ddimg.cn/2/10/1236165977-1_w_1.jpg');
INSERT INTO `book` VALUES ('21', '9787509767689', '中国社会组织发展战略                    ', '马庆钰, 廖鸿主编           ', '社会科学文献出版社      ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('22', '7500441622', '中国社会思想史                       ', '(韩) 宋荣培著            ', '中国社会科学出版社      ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('23', '9787560960500', '中国社会思想史                       ', '庞绍堂,季芳桐 著           ', '华中科技大学出版社      ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('24', '9787564215750', '中国对外投资                        ', '何帆, 姚枝仲等著           ', '上海财经大学出版社      ', '2013', '0', 'http://img3m9.ddimg.cn/7/23/1406340349-1_k_1.jpg');
INSERT INTO `book` VALUES ('25', '9787514158236', '中国对东盟直接投资研究                   ', '郑磊著                 ', '经济科学出版社          ', '2015', '0', 'http://img3m5.ddimg.cn/9/28/1318139865-1_w_2.jpg');
INSERT INTO `book` VALUES ('26', '9787560092331', '中高级日语语法精解                     ', '(日)庵功雄[等]著;巴玺维,陈娟翻译 ', '外语教学与研究出版社    ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('27', '9787530209660', '雨季不再来                         ', '三毛著                 ', '北京十月文艺出版社      ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('28', '9787548105770', '有机化学学习指南                      ', '主编王乐平, 许凤, 王海君      ', '人民军医出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('29', '9787117089951', '有机化学学习指导与题集                   ', '陆 涛主编               ', '人民卫生出版社          ', '2008', '0', 'http://img3m1.ddimg.cn/19/27/22463911-1_w_2.jpg');
INSERT INTO `book` VALUES ('30', '7310018907', '有机化学学习指导                      ', '王世润等编著              ', '南开大学出版社          ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('31', '9787122212214', '有机化学精要与解题指导                   ', '李晓丽主编               ', '化学工业出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('32', '9787122016249', '有机化学标准化习题及解答                  ', '董 伟,宗红鹰主编           ', '化学工业出版社          ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('33', '9787030185310', '有机化学                          ', '谷文祥主编               ', '科学出版社              ', '2007', '0', 'img/book/youjihuaxue.jpg');
INSERT INTO `book` VALUES ('34', '9787122228659', '有机化学                          ', '杨建奎, 张薇主编           ', '化学工业出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('35', '9787122002914', '有机波谱及性能分析法                    ', '朱为宏, 杨雪艳, 李晶等编      ', '化学工业出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('36', '9787561843635', '影响全球的美国总统演讲精选                 ', '檀琦编译                ', '天津大学出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('37', '7111182138', '液压与气压传动习题集                    ', '王积伟主编               ', '机械工业出版社          ', '2006', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('38', '9787122108784', '压力容器与过程设备                     ', '喻九阳,徐建民 主编          ', '化学工业出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('39', '9787115342485', '学Arduino玩转Kinect制作项目          ', '(英)(Enrique Ramos Me', '人民邮电出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('40', '7020046150', '许三观卖血记                        ', '余华                  ', '人民文学出版社          ', '2004', '0', 'http://img3m4.ddimg.cn/15/25/8841804-1_w.jpg');
INSERT INTO `book` VALUES ('41', '9787544708548', '信                             ', '(日) 东野圭吾著;赵江译       ', '译林出版社              ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('42', '7111203801', '新雅思模板写作与实战点评                  ', '钟钰编著                ', '机械工业出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('43', '9787544255264', '新参者                           ', '(日) 东野圭吾著;岳远坤译      ', '南海出版公司            ', '2011', '0', 'http://img3m1.ddimg.cn/40/15/1182965791-1_w_1.jpg');
INSERT INTO `book` VALUES ('44', '9787518017119', '心理学与销售策略                      ', '谭芳编著                ', '中国纺织出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('45', '7502539506', '项目管理精要                        ', '毕 星主编               ', '化学工业出版社          ', '2002', '0', 'http://img3m9.ddimg.cn/52/15/8970739-1_w.jpg');
INSERT INTO `book` VALUES ('46', '9787508663739', '想象共和国                         ', '(美)阿扎尔·纳菲西(Azar Nafi', '中信出版社股份有限公司  ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('47', '9787309108538', '线性代数同步辅导与复习提高                 ', '金路编                 ', '复旦大学出版社          ', '2014', '0', 'http://img3m2.ddimg.cn/59/22/23593442-1_w_1.jpg');
INSERT INTO `book` VALUES ('48', '7560908942', '线性代数解题方法技巧归纳                  ', '毛纲源                 ', '华中理工大学出版社      ', '2000', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('49', '9787308083782', '西藏生死书                         ', '索甲仁波切著;郑振煌译         ', '浙江大学出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('50', '9787122058553', '无机化学学习指导                      ', '周祖新 主编              ', '化学工业出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('51', '9787030456311', '无机化学核心教程                      ', '徐家宁 … [等] 编         ', '科学出版社              ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('52', '9787030315168', '无机化学                          ', '龚孟濂 主编;巢晖 … [等] 编著  ', '科学出版社              ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('53', '9787505994232', '我的大学我的梦                       ', '杨国欣主编               ', '中国文联出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('54', '9787544765695', '涡堤孩                           ', '(德国) 莫特·福凯著;徐志摩译    ', '译林出版社              ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('55', '9787308076432', '为什么是欧洲?                       ', '(美)杰克·戈德斯通(Jack Gold', '浙江大学出版社          ', '2010', '0', 'http://img3m0.ddimg.cn/23/30/20903180-1_w_2.jpg');
INSERT INTO `book` VALUES ('56', '9787121273131', '微信运营手册                        ', '斯瓦西里, 关硕编著          ', '电子工业出版社          ', '2015', '0', 'http://img3m8.ddimg.cn/83/22/23806118-1_w_1.jpg');
INSERT INTO `book` VALUES ('57', '9787111450245', '微信营销应该这样做                     ', '夏雪峰著                ', '机械工业出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('58', '9787111520054', '微信品牌营销                        ', '柯桦龙著                ', '机械工业出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('59', '9787121205033', '微信力                           ', '石建鹏, 文丹枫著           ', '电子工业出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('60', '9787562830504', '微积分同步辅导与习题全解                  ', '李红英 主编              ', '华东理工大学出版社      ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('61', '9787562832713', '微积分同步辅导与习题全解                  ', '李红英主编               ', '华东理工大学出版社      ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('62', '9787040389005', '微分几何引论                        ', '陈维桓编著               ', '高等教育出版社          ', '2013', '0', 'http://img3m1.ddimg.cn/83/31/1182965141-1_w_1.jpg');
INSERT INTO `book` VALUES ('63', '711119408X   ', '网络营销                          ', '郭笑文,裴艳丽,曹鸿星编著       ', '机械工业出版社          ', '2006', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('64', '9787313128287', '玩转微时代                         ', '王弘张编著               ', '上海交通大学出版社      ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('65', '9787030254054', '拓扑学                           ', '周振荣,宋冰玉 编著          ', '科学出版社              ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('66', '9787564113902', '透视前后的空间体验与建构                  ', '(英)冯 炜 著者;译者李开然     ', '东南大学出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('67', '9787513912068', '天皇与日本国命                       ', '(美) 戴维·贝尔加米尼(David B', '民主与建设出版社有限责任', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('68', '9787801738394', '唐宁街岁月                         ', '(英) 玛格丽特·撒切尔著;李宏强译  ', '国际文化出版公司        ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('69', '9787543323643', '苏菲的世界                         ', '(挪) Jostein Gaarder(', '天津科技翻译出版公司    ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('70', '9787030368058', '数学分析教程                        ', '崔尚斌编著               ', '科学出版社              ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('71', '7040118807', '数学分析讲义                        ', '刘玉琏 … [等] 编         ', '高等教育出版社          ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('72', '9787030455956', '数学分析讲义                        ', '龚循华, 董秋仙编           ', '科学出版社              ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('73', '9787564506391', '实用有机光谱解析                      ', '主编刘宏民               ', '郑州大学出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('74', '7561701721', '实用多元统计分析                      ', '方开泰编著               ', '华东师范大学出版社      ', '1989', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('75', '9787542644916', '诗人的迟缓                         ', '范晔著                 ', '上海三联书店            ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('76', '7806553320', '神雕侠侣                          ', '金庸著                 ', '广州出版社              ', '2004', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('77', '9787512322233', '深入浅出Python                    ', '(英) Paul Barry著;林琪, ', '中国电力出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('92', '9787506391542', '我喜欢生命本来的样子', '周国平', '作家出版社', '2017', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('94', '9787544704601', '飘                             ', '(美)玛格丽特·米切尔著;李美华译   ', '译林出版社              ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('95', '9787201102849', '你是人间的四月天                      ', '林徽因著                ', '天津人民出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('96', '9787550230064', '明日绽放的花蕾                       ', '(日)朱川湊人著;高璐璐译       ', '北京联合出版公司        ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('97', '9787801655738', '明朝那些事儿                        ', '当年明月著               ', '中国海关出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('98', '9787801655745', '明朝那些事儿                        ', '当年明月著               ', '中国海关出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('99', '9787548724230', '民事诉讼法典型案例评析                   ', '颜运秋, 余彦主编           ', '中南大学出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('100', '9787305102721', '民事诉讼法                         ', '编著吴英姿               ', '南京大学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('101', '9787547217894', '迷糊丫头团团闹                       ', '西瓜甜笑著               ', '吉林文史出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('102', '9787511720283', '美联社新闻报道手册                     ', '(美) 杰里·施瓦茨著;曹俊, 王蕊译 ', '中央编译出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('103', '9787540471835', '美国人天天在用的15000单词               ', '(美) 莫里斯·希尔著         ', '湖南文艺出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('104', '9787121141676', '漫步英国设计                        ', '王绍强 编著              ', '电子工业出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('105', '9787300179322', '罗宾斯《管理学》 (第11版) 学习指导          ', '斯蒂芬·P·罗宾斯, 玛丽·库尔特著;贾', '中国人民大学出版社      ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('106', '9787020066377', '零时                            ', '(英)阿加莎·克里斯蒂(Agatha C', '人民文学出版社          ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('107', '9787530212622', '莲花                            ', '安妮宝贝                ', '北京十月文艺出版社      ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('108', '9787507542295', '历史深处的民国                       ', '江城著                 ', '华文出版社              ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('109', '9787560512884', '理论力学学习指导典型题解                  ', '周纪卿,韩省亮,何望云         ', '西安交通大学出版社      ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('110', '9787564506728', '理论力学解题分析与指导                   ', '主编苗同臣               ', '郑州大学出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('111', '9787501234578', '李宗吾厚黑处世智慧全书                   ', '李宗吾原著;金志文译著         ', '世界知识出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('112', '7561218532', '快乐英语岛·词汇                      ', '总主编孔翔兰, 赵东林         ', '西北工业大学出版社      ', '2006', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('113', '9787101059861', '康震评说苏东坡                       ', '康 震著                ', '中华书局                ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('114', '9787540476755', '爵迹                            ', '郭敬明著                ', '湖南文艺出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('115', '9787030242228', '聚合物纳米复合材料                     ', '柯扬船 编著              ', '科学出版社              ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('116', '7030120582', '聚合物基复合材料及工艺                   ', '王汝敏, 郑水蓉, 郑亚萍编著     ', '科学出版社              ', '2004', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('117', '9787115331038', '精通Excel数据统计与分析                ', '蒲括, 邵朋编著            ', '人民邮电出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('118', '9787543893917', '经济学统治世界                       ', '(美)海尔布隆纳(Robert L. H', '湖南人民出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('119', '9787220096396', '经济数学基础                        ', '主编龚德恩;编写者胡显佑, 靳云汇   ', '四川人民出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('120', '9787517021025', '经济数学                          ', '主编黄玉娟               ', '中国水利水电出版社      ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('121', '9787532742189', '寂静的春天                         ', '(美) 切尔·卡森著;吕瑞兰,李长生译 ', '上海译文出版社          ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('122', '9787564153601', '吉米多维奇数学分析习题集精选精解              ', '主编滕加俊               ', '东南大学出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('123', '9787030282729', '基础化学实验教程                      ', '古凤才 主编              ', '科学出版社              ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('124', '9787111247395', '机械设计习题与指导                     ', '侯文英 主编              ', '机械工业出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('125', '9787040359251', '机械设计基础                        ', '主编伍驭美, 秦伟;副主编陈小强    ', '高等教育出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('126', '9787302281061', '机械设计复习思考题详解                   ', '陆宁主编                ', '清华大学出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('127', '9787122240309', '化工原理                          ', '管国锋, 赵汝溥主编          ', '化学工业出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('128', '9787122125361', '化工热力学                         ', '陈钟秀,顾飞燕,胡望明 编著      ', '化学工业出版社          ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('129', '7801838963', '呼啸山庄                          ', '原著 (英) 艾米莉·勃朗特;改编Bes', '航空工业出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('130', '9787221099969', '红楼启示录                         ', '王蒙著                 ', '贵州人民出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('131', '9787509351963', '合同法典型案例与法律适用                  ', '杨立新主编               ', '中国法制出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('132', '7502013040', '行星传动设计与计算                     ', '胡来Rong主编            ', '煤炭工业出版社          ', '1997', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('133', '9787020063659', '哈利·波特与死亡圣器                    ', '(英)J. K. 罗琳(J. K. Ro', '人民文学出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('134', '9787020033447', '哈利·波特与密室                      ', '(英)J.K.罗琳著          ', '人民文学出版社          ', '2000', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('135', '9787020034635', '哈利·波特与火焰杯                     ', '(英)J.K.罗琳著          ', '人民文学出版社          ', '2001', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('136', '9787020043279', '哈利·波特与凤凰社                     ', '(英)J.K.罗琳著作         ', '人民文学出版社          ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('137', '9787020103317', '哈利·波特与阿兹卡班囚徒                  ', '(英)罗琳著;马爱农, 马爱新译    ', '人民文学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('138', '7502533443', '过程设备设计                        ', '郑津洋, 董其伍, 桑芝富主编     ', '化学工业出版社          ', '2001', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('139', '9787539633558', '鬼吹灯之三云南虫谷                     ', '天下霸唱著               ', '安徽文艺出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('140', '9787539633541', '鬼吹灯之二龙岭迷窟                     ', '天下霸唱著               ', '安徽文艺出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('141', '9787229045975', '宫本武藏                          ', '(日) 吉川英治著;颜世俊, 刘仲达译 ', '重庆出版社              ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('142', '9787121266157', '工业机器人应用案例入门                   ', '余任冲编著               ', '电子工业出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('143', '9787111528470', '工业机器人从入门到应用                   ', '龚仲华编著               ', '机械工业出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('144', '9787811024708', '工业机器人                         ', '刘文波,陈白宁,段智敏编著       ', '东北大学出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('145', '9787532763610', '跟大卫·哈维读《资本论》                  ', '(美) 大卫·哈维著;刘英译      ', '上海译文出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('146', '7806650911', '格律诗词写作                        ', '余浩然著                ', '岳麓书社                ', '2001', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('147', '7801838602', '歌剧魅影                          ', '(法)卡斯顿·勒胡(Gaston Ler', '航空工业出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('148', '9787500695356', '高效能人士的七个习惯                    ', '(美)史蒂芬·柯维(Stephen R.', '中国青年出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('149', '7308047601', '高等有机化学                        ', '斐文编                 ', '浙江大学出版社          ', '2006', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('150', '9787502173197', '高等数学习题详解                      ', '宋国华,程士珍主编           ', '石油工业出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('151', '9787568200585', '高等数学辅导                        ', '张天德主编               ', '北京理工大学出版社      ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('152', '7302068828', '高等数学辅导                        ', '盛祥耀等编               ', '清华大学出版社          ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('153', '9787564214067', '高等数学——分层教学教程                  ', '主编李瑞                ', '上海财经大学出版社      ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('154', '9787030417428', '高等数学                          ', '主编程贤锋, 金本清          ', '科学出版社              ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('155', '9787111399803', '高等代数教程                        ', '陈希镇编著               ', '机械工业出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('156', '9787511343178', '感谢自己的不完美                      ', '武志红著                ', '中国华侨出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('157', '704011951X   ', '复变函数与积分变换学习辅导与习题全解            ', '李红, 谢松法             ', '高等教育出版社          ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('158', '9787517008934', '复变函数·积分变换 (第四版) 同步辅导及习题全解     ', '主编苏志平, 郭志梅          ', '中国水利水电出版社      ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('159', '9787510089282', '弗洛伊德与荣格                       ', '(美)亨利·艾伦伯格(Henri Ell', '世界图书出版公司北京公司', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('160', '9787111414230', '风力发电机组设计、制造及风电场设计、施工          ', '苏绍禹, 苏刚编著           ', '机械工业出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('161', '9787547815403', '风电传动系统的设计与分析                  ', '诺迈士编著               ', '上海科学技术出版社      ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('162', '9787030187086', '分子生物学学习指导                     ', '曲志才主编               ', '科学出版社              ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('163', '9787030377593', '分子生物学精要                       ', '赵亚华编著               ', '科学出版社              ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('164', '9787549408252', '费顿·焦点艺术家                      ', '著 (美) 马丁·哈默尔;译张帆    ', '广西美术出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('165', '9787549408238', '费顿·焦点艺术家                      ', '著 (美) 约瑟夫·D. 凯特纳二世;译', '广西美术出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('166', '9787509347454', '法律英语阅读教程                      ', '中国政法大学法律英语教学与测试研究中心编', '中国法制出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('167', '9787302320999', '电子商务管理概论                      ', '高健, 王晓静编著           ', '清华大学出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('168', '9787121297915', '电子商务概论                        ', '郭献强 … [等] 编著        ', '电子工业出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('169', '9787507525304', '第12夜                          ', '璇儿著                 ', '华文出版社              ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('170', '9787510416101', '狄仁杰之幽兰劫                       ', '安娜芳芳著               ', '新世界出版社            ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('171', '9787542637246', '当世界向右的时候                      ', '毛尖著                 ', '上海三联书店            ', '2012', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('172', '7563508341', '大学物理学习指导                      ', '罗益民, 余 燕主编          ', '北京邮电大学出版社      ', '2004', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('173', '9787509614143', '大学生数学竞赛指南                     ', '李晋明 主编              ', '经济管理出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('174', '9787030414892', '大学计算机基础                       ', '刘月凡, 李瑞, 陈鑫影主编      ', '科学出版社              ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('175', '9787511540904', '从零快学日语入门                      ', '语阅图书主编              ', '人民日报出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('176', '9787121265778', '冲压工艺和级进模设计                    ', '李晓达, 窦沙沙, 倪骁骅主编     ', '电子工业出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('177', '9787122022363', '承压容器                          ', '中国石化集团上海有工程有限公司 组织编写', '化学工业出版社          ', '2008', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('178', '9787564629861', '材料成型专业实践认识                    ', '主编陈正, 樊宇, 王延庆       ', '中国矿业大学出版社      ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('179', '9787513555661', '不要害怕独自前行                      ', '王瑞泽编                ', '外语教学与研究出版社    ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('180', '7030115686', '波谱分析教程                        ', '邓芹英, 刘 岚, 邓慧敏编著     ', '科学出版社              ', '2003', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('181', '7108001225', '变化社会中的政治秩序                    ', '(美)享廷顿(Huntington,S.', '三联书店                ', '1989', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('182', '9787115350541', '笨办法学Python                    ', '(美) Zed A. Shaw著;王巍巍', '人民邮电出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('183', '9787532742400', '被伤害与侮辱的人们                     ', '(俄)陀思妥耶夫斯基著;娄自良译    ', '上海译文出版社          ', '2007', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('184', '9787532754717', '爱情故事                          ', '(美) 埃里奇·西格尔著;舒心, 鄂以迪', '上海译文出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('185', '7805675996', 'Women in love                 ', 'Lawrence, D. H      ', 'Yilin Press         ', '1996', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('186', '9787894300294', 'Windows 7+Office2010从入门到精通    ', '牛金鑫 编著              ', '印刷工业出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('187', '9787030482372', 'Unity游戏开发实例指南                 ', '(加) Ryan Henson Crei', '科学出版社              ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('188', '9787302232391', 'TCP/IP 协议族                    ', 'Behrouz A. Forouzan著', '清华大学出版社          ', '2011', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('189', '9787111259800', 'Java实例精通                      ', '李相国 等编著             ', '机械工业出版社          ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('190', '9787302369936', 'JavaScript实战: JavaScript、jQuer', '张泽娜编著               ', '清华大学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('191', '9787115313515', 'JavaScript核心概念及实践             ', '邱俊涛著                ', '人民邮电出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('192', '9787301243084', 'JavaScript程序设计案例教程            ', '主编许旻, 孙赢, 陈珂        ', '北京大学出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('193', '9787121107481', 'Java Web项目开发案例精粹              ', '李兆锋,卜 炟,张得生 等编著     ', '电子工业出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('194', '9787121107481', 'Java Web项目开发案例精粹              ', '李兆锋,卜 炟,张得生 等编著     ', '电子工业出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('195', '9787302318934', 'Java Web开发实战                  ', '软件开发技术联盟编著          ', '清华大学出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('196', '9787302318934', 'Java Web开发实战                  ', '软件开发技术联盟编著          ', '清华大学出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('197', '9787115338365', 'HTML5权威指南                     ', '(美) Adam Freeman著;谢廷', '人民邮电出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('198', '9787030433909', 'GPS原理及应用                      ', '李天文等编著              ', '科学出版社              ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('199', '9787111421115', 'Excel 2013应用技巧实例大全            ', '崔杰, 柴延伟等编著          ', '机械工业出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('200', '9787300099118', 'C语言程序设计基础与项目实训                ', '文 东,孙鹏飞,潘 钧 主编      ', '中国人民大学出版社      ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('201', '9787115417756', 'C现代编程                         ', '(日) 花井志生著;杨文轩译      ', '人民邮电出版社          ', '2016', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('202', '9787302350033', 'AutoCAD 2014中文版基础教程           ', '肖静编著                ', '清华大学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('203', '9787111458395', 'Arduino与LabVIEW开发实战           ', '沈金鑫编著               ', '机械工业出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('204', '9787115311924', 'Arduino技术内幕                   ', '(美)惠特(Wheat, Dale)著 ', '人民邮电出版社          ', '2013', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('205', '9787115361318', 'Adobe Premiere Pro CC经典教程     ', '(美) Adobe公司著;裴强, 宋松译', '人民邮电出版社          ', '2015', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('206', '9787121110634', 'ACM国际大学生程序设计竞赛题解              ', '赵端阳,袁 鹤 编著          ', '电子工业出版社          ', '2010', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('207', '9787302349587', 'Access数据库应用基础                 ', '黎红,崔彦君主编            ', '清华大学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('208', '9787302327998', 'Access 2010数据库管理与应用从新手到高手     ', '宋强,刘凌霞等编著           ', '清华大学出版社          ', '2014', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('209', '9787543215900', '《微观经济学:现代观点》练习册               ', '(美)西奥多·C. 伯格斯特龙(Theo', '格致出版社              ', '2009', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('210', '7100011329', '[傲慢与偏见]                       ', 'Jane Austen         ', '商务印书馆              ', '1996', '0', 'img/book/shuzhishu.jpg');
INSERT INTO `book` VALUES ('216', '9787506387873', '雪落香杉树', '戴维.伽特森', '作家出版社', '2017', '0', 'img/book/IMG_PITU_20180114_114509.jpg');
INSERT INTO `book` VALUES ('217', '9787115478702', '鬼刀', 'WLOP', '人民邮电出版社', '2018', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('218', '9787563345816', '西洋世界军事史', 'J.F.C.富勒 著，钮先钟 译', '广西师范大学出版社', '2012', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('219', '9787516902110', '天文百科', '谢宇', '华龄出版社', '2013', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('220', '9787312037030', '地球与行星科学中的热力学', 'Jibamitra Ganguly', '中国科学技术大学出版社', '2016', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('221', '9787117249553', '急诊内科学', '张文武', '人民卫生出版社', '2017', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('222', '9787030565556', '肺部疾病临床与影像分析', '张嵩', '科学出版社', '2018', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('223', '9787802337312', '植物保护与农产品质量安全', '浙江省植物保护学会，浙江省植物病理学会，', '中国农业科学技术出版社', '2008', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('224', '9787511619723', '青岛市园林树木病害图鉴', '刘晓东，陈保光，赖永梅', '中国农业科学技术出版社', '2015', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('225', '9787530489109', '陈鑫陈氏太极拳图说', '陈鑫著', '北京科学技术出版社', '2017', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('226', '9787553750491', '普拉提教程：初学到高手（汉竹）', '韩俊', '江苏科学技术出版社', '2016', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('227', '9787213062605', '丹尼尔斯经典跑步训练法', '[美]丹尼尔斯 著，沈慧 译', '浙江人民出版社', '2014', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('228', '9787122278746', '枪支中的科学', '（日）狩之 良典 著', '化学工业出版社', '2017', '0', 'img/book/3efc38d0368f6894.jpg');
INSERT INTO `book` VALUES ('229', '9787540477660', '且以优雅过一生：杨绛传', '桑妮', '湖南文艺出版社', '2016', '0', 'img/book/IMG_20180420_194110.png');

-- ----------------------------
-- Table structure for bookcategory
-- ----------------------------
DROP TABLE IF EXISTS `bookcategory`;
CREATE TABLE `bookcategory` (
  `bcid` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `category` varchar(15) NOT NULL,
  PRIMARY KEY (`bcid`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bookcategory
-- ----------------------------
INSERT INTO `bookcategory` VALUES ('1', '1', '9');
INSERT INTO `bookcategory` VALUES ('2', '2', '12');
INSERT INTO `bookcategory` VALUES ('3', '3', '12');
INSERT INTO `bookcategory` VALUES ('4', '4', '9');
INSERT INTO `bookcategory` VALUES ('5', '5', '12');
INSERT INTO `bookcategory` VALUES ('6', '5', '16');
INSERT INTO `bookcategory` VALUES ('7', '6', '5');
INSERT INTO `bookcategory` VALUES ('8', '7', '9');
INSERT INTO `bookcategory` VALUES ('9', '8', '9');
INSERT INTO `bookcategory` VALUES ('10', '9', '9');
INSERT INTO `bookcategory` VALUES ('11', '10', '9');
INSERT INTO `bookcategory` VALUES ('12', '11', '9');
INSERT INTO `bookcategory` VALUES ('13', '12', '4');
INSERT INTO `bookcategory` VALUES ('14', '13', '5');
INSERT INTO `bookcategory` VALUES ('15', '13', '9');
INSERT INTO `bookcategory` VALUES ('16', '14', '8');
INSERT INTO `bookcategory` VALUES ('17', '14', '11');
INSERT INTO `bookcategory` VALUES ('18', '15', '8');
INSERT INTO `bookcategory` VALUES ('19', '15', '11');
INSERT INTO `bookcategory` VALUES ('20', '16', '5');
INSERT INTO `bookcategory` VALUES ('21', '17', '5');
INSERT INTO `bookcategory` VALUES ('22', '18', '5');
INSERT INTO `bookcategory` VALUES ('23', '19', '1');
INSERT INTO `bookcategory` VALUES ('24', '20', '5');
INSERT INTO `bookcategory` VALUES ('25', '20', '6');
INSERT INTO `bookcategory` VALUES ('26', '21', '0');
INSERT INTO `bookcategory` VALUES ('27', '22', '0');
INSERT INTO `bookcategory` VALUES ('28', '22', '10');
INSERT INTO `bookcategory` VALUES ('29', '23', '0');
INSERT INTO `bookcategory` VALUES ('30', '23', '10');
INSERT INTO `bookcategory` VALUES ('31', '24', '2');
INSERT INTO `bookcategory` VALUES ('32', '25', '2');
INSERT INTO `bookcategory` VALUES ('33', '25', '1');
INSERT INTO `bookcategory` VALUES ('34', '26', '4');
INSERT INTO `bookcategory` VALUES ('35', '26', '16');
INSERT INTO `bookcategory` VALUES ('36', '27', '5');
INSERT INTO `bookcategory` VALUES ('37', '28', '12');
INSERT INTO `bookcategory` VALUES ('38', '28', '16');
INSERT INTO `bookcategory` VALUES ('39', '29', '12');
INSERT INTO `bookcategory` VALUES ('40', '29', '16');
INSERT INTO `bookcategory` VALUES ('41', '30', '12');
INSERT INTO `bookcategory` VALUES ('42', '30', '16');
INSERT INTO `bookcategory` VALUES ('43', '31', '12');
INSERT INTO `bookcategory` VALUES ('44', '31', '16');
INSERT INTO `bookcategory` VALUES ('45', '32', '12');
INSERT INTO `bookcategory` VALUES ('46', '32', '16');
INSERT INTO `bookcategory` VALUES ('47', '33', '12');
INSERT INTO `bookcategory` VALUES ('48', '33', '16');
INSERT INTO `bookcategory` VALUES ('49', '34', '12');
INSERT INTO `bookcategory` VALUES ('50', '34', '16');
INSERT INTO `bookcategory` VALUES ('51', '35', '12');
INSERT INTO `bookcategory` VALUES ('52', '35', '16');
INSERT INTO `bookcategory` VALUES ('53', '36', '4');
INSERT INTO `bookcategory` VALUES ('54', '36', '16');
INSERT INTO `bookcategory` VALUES ('55', '37', '12');
INSERT INTO `bookcategory` VALUES ('56', '37', '16');
INSERT INTO `bookcategory` VALUES ('57', '38', '12');
INSERT INTO `bookcategory` VALUES ('58', '38', '8');
INSERT INTO `bookcategory` VALUES ('59', '39', '9');
INSERT INTO `bookcategory` VALUES ('60', '39', '8');
INSERT INTO `bookcategory` VALUES ('61', '40', '5');
INSERT INTO `bookcategory` VALUES ('62', '41', '5');
INSERT INTO `bookcategory` VALUES ('63', '42', '4');
INSERT INTO `bookcategory` VALUES ('64', '43', '5');
INSERT INTO `bookcategory` VALUES ('65', '44', '16');
INSERT INTO `bookcategory` VALUES ('66', '43', '18');
INSERT INTO `bookcategory` VALUES ('67', '45', '2');
INSERT INTO `bookcategory` VALUES ('68', '46', '5');
INSERT INTO `bookcategory` VALUES ('69', '47', '12');
INSERT INTO `bookcategory` VALUES ('70', '48', '12');
INSERT INTO `bookcategory` VALUES ('71', '49', '5');
INSERT INTO `bookcategory` VALUES ('72', '50', '12');
INSERT INTO `bookcategory` VALUES ('73', '51', '12');
INSERT INTO `bookcategory` VALUES ('74', '52', '12');
INSERT INTO `bookcategory` VALUES ('75', '53', '18');
INSERT INTO `bookcategory` VALUES ('76', '54', '5');
INSERT INTO `bookcategory` VALUES ('77', '55', '10');
INSERT INTO `bookcategory` VALUES ('78', '56', '9');
INSERT INTO `bookcategory` VALUES ('79', '57', '2');
INSERT INTO `bookcategory` VALUES ('80', '58', '2');
INSERT INTO `bookcategory` VALUES ('81', '59', '2');
INSERT INTO `bookcategory` VALUES ('82', '60', '12');
INSERT INTO `bookcategory` VALUES ('83', '61', '12');
INSERT INTO `bookcategory` VALUES ('84', '62', '12');
INSERT INTO `bookcategory` VALUES ('85', '63', '2');
INSERT INTO `bookcategory` VALUES ('86', '218', '3');
INSERT INTO `bookcategory` VALUES ('87', '218', '10');
INSERT INTO `bookcategory` VALUES ('88', '219', '7');
INSERT INTO `bookcategory` VALUES ('89', '220', '7');
INSERT INTO `bookcategory` VALUES ('90', '221', '13');
INSERT INTO `bookcategory` VALUES ('91', '222', '13');
INSERT INTO `bookcategory` VALUES ('92', '223', '15');
INSERT INTO `bookcategory` VALUES ('93', '224', '15');
INSERT INTO `bookcategory` VALUES ('94', '223', '14');
INSERT INTO `bookcategory` VALUES ('95', '224', '14');
INSERT INTO `bookcategory` VALUES ('96', '225', '17');
INSERT INTO `bookcategory` VALUES ('97', '226', '17');
INSERT INTO `bookcategory` VALUES ('98', '227', '17');
INSERT INTO `bookcategory` VALUES ('99', '228', '3');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `senduid` int(8) NOT NULL,
  `receiveuid` int(8) NOT NULL,
  `content` varchar(300) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '10161861', '10161825', '你好( ^_^)／', '2018-03-22 19:16:18');
INSERT INTO `chat` VALUES ('2', '10161861', '10161825', '嗨', '2018-03-22 19:26:29');
INSERT INTO `chat` VALUES ('3', '10161861', '10161825', '嗨', '2018-03-22 19:26:31');
INSERT INTO `chat` VALUES ('4', '10161861', '10161825', '嗨', '2018-03-22 19:26:32');
INSERT INTO `chat` VALUES ('5', '10161825', '10161861', '嘻嘻嘻嘻嘻', '2018-03-22 19:27:39');
INSERT INTO `chat` VALUES ('6', '10161825', '10161861', '嘻嘻嘻嘻嘻', '2018-03-22 19:27:41');
INSERT INTO `chat` VALUES ('7', '10161916', '10131868', '你好', '2018-03-22 21:29:22');
INSERT INTO `chat` VALUES ('9', '10161916', '10131868', '你好', '2018-03-22 21:29:25');
INSERT INTO `chat` VALUES ('10', '10161916', '10131868', '你好', '2018-03-22 21:29:27');
INSERT INTO `chat` VALUES ('11', '10161916', '10131868', '你好', '2018-03-22 21:29:27');
INSERT INTO `chat` VALUES ('12', '10161916', '10131868', '你好', '2018-03-22 21:29:28');
INSERT INTO `chat` VALUES ('13', '10161916', '10131868', '你好', '2018-03-22 21:29:29');
INSERT INTO `chat` VALUES ('14', '10161916', '10131868', '你好', '2018-03-22 21:29:30');
INSERT INTO `chat` VALUES ('15', '10161916', '10131868', '你好', '2018-03-22 21:29:32');
INSERT INTO `chat` VALUES ('16', '10161916', '10131868', '你好', '2018-03-22 21:29:33');
INSERT INTO `chat` VALUES ('17', '10161916', '10131868', '你好', '2018-03-22 21:29:35');
INSERT INTO `chat` VALUES ('18', '10161916', '10131868', '你好', '2018-03-22 21:29:39');
INSERT INTO `chat` VALUES ('19', '10161916', '10131868', '你好', '2018-03-22 21:29:39');
INSERT INTO `chat` VALUES ('20', '10161916', '10131868', '你好', '2018-03-22 21:29:40');
INSERT INTO `chat` VALUES ('21', '10161916', '10110000', '你好', '2018-03-22 21:30:01');
INSERT INTO `chat` VALUES ('23', '10161825', '10161861', '好看吗', '2018-03-22 22:05:24');
INSERT INTO `chat` VALUES ('24', '10161825', '10161861', '好看吗', '2018-03-22 22:05:25');
INSERT INTO `chat` VALUES ('25', '10161825', '10161861', '好看吗', '2018-03-22 22:05:28');
INSERT INTO `chat` VALUES ('26', '10161825', '10161861', '好看吗', '2018-03-22 22:05:28');
INSERT INTO `chat` VALUES ('27', '10161825', '10161861', '好看吗', '2018-03-22 22:05:29');
INSERT INTO `chat` VALUES ('28', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:56');
INSERT INTO `chat` VALUES ('29', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:56');
INSERT INTO `chat` VALUES ('30', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:57');
INSERT INTO `chat` VALUES ('31', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:57');
INSERT INTO `chat` VALUES ('32', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:58');
INSERT INTO `chat` VALUES ('33', '10161825', '10161861', '哈哈哈', '2018-03-22 22:05:59');
INSERT INTO `chat` VALUES ('34', '10161825', '10161861', '多多指教', '2018-03-22 22:06:40');
INSERT INTO `chat` VALUES ('35', '10161825', '10161861', '多多指教', '2018-03-22 22:06:41');
INSERT INTO `chat` VALUES ('40', '10161825', '10161853', '一起嗨皮????', '2018-03-22 22:07:37');
INSERT INTO `chat` VALUES ('41', '10161825', '10161856', '那还好英语怎么说', '2018-03-22 22:08:32');
INSERT INTO `chat` VALUES ('42', '10161825', '10161861', '????', '2018-03-22 22:08:36');
INSERT INTO `chat` VALUES ('43', '10161825', '10171703', '你是？', '2018-03-22 22:08:44');
INSERT INTO `chat` VALUES ('44', '10161825', '10171703', '(▼皿▼#)', '2018-03-22 22:08:54');
INSERT INTO `chat` VALUES ('45', '10161825', '10161861', '我居然发不了emoji', '2018-03-22 22:09:05');
INSERT INTO `chat` VALUES ('46', '10161825', '10000008', '好', '2018-03-22 22:09:10');
INSERT INTO `chat` VALUES ('47', '10161861', '10161825', '我来跟你聊天了！', '2018-03-22 22:09:57');
INSERT INTO `chat` VALUES ('48', '10161861', '10161825', '我来跟你聊天了！', '2018-03-22 22:09:58');
INSERT INTO `chat` VALUES ('49', '10161861', '10161825', '我来跟你聊天了！', '2018-03-22 22:09:59');
INSERT INTO `chat` VALUES ('50', '10161861', '10161825', '我们可以在这里聊了嘻嘻嘻(♡˙︶˙♡)', '2018-03-22 22:10:51');
INSERT INTO `chat` VALUES ('51', '10161861', '10161825', '(☝｀˘ω˘)☝', '2018-03-22 22:11:06');
INSERT INTO `chat` VALUES ('52', '10161861', '10161825', '埃？这么这个表情可以????????', '2018-03-22 22:11:39');
INSERT INTO `chat` VALUES ('53', '10161916', '10161825', '啊我怎么看不到你给我发的消息', '2018-03-22 22:13:22');
INSERT INTO `chat` VALUES ('54', '10161825', '10161861', '哈哈哈哈哈好棒', '2018-03-22 22:15:29');
INSERT INTO `chat` VALUES ('55', '10161825', '10161861', '我也来????????????????????????????????????????????????????????????????????✋️????????✋️', '2018-03-22 22:15:44');
INSERT INTO `chat` VALUES ('56', '10161861', '10161825', '٩(๑^o^๑)۶', '2018-03-22 22:15:54');
INSERT INTO `chat` VALUES ('57', '10161825', '10161861', '☝️☝????☝????☝????☝????????☝????', '2018-03-22 22:16:11');
INSERT INTO `chat` VALUES ('58', '10161825', '10161861', '啊我的天这个居然会超出宽度', '2018-03-22 22:16:43');
INSERT INTO `chat` VALUES ('59', '10161825', '10161861', '所以我们是不是要做一个消息提示', '2018-03-22 22:17:04');
INSERT INTO `chat` VALUES ('60', '10161861', '10161825', '哇，随着聊天变多，好难翻呀', '2018-03-22 22:17:25');
INSERT INTO `chat` VALUES ('61', '10161861', '10161825', '不能自适应吗？根据文字多少', '2018-03-22 22:18:05');
INSERT INTO `chat` VALUES ('62', '10161861', '10161890', '唔', '2018-03-22 22:20:23');
INSERT INTO `chat` VALUES ('63', '10161861', '10161890', '唔', '2018-03-22 22:20:24');
INSERT INTO `chat` VALUES ('64', '10161861', '10161899', '你是谁→_→', '2018-03-22 22:20:41');
INSERT INTO `chat` VALUES ('65', '10161825', '10161861', '谁好', '2018-03-22 22:45:12');
INSERT INTO `chat` VALUES ('66', '10161825', '10161861', '好(✪▽✪)', '2018-03-22 22:45:20');
INSERT INTO `chat` VALUES ('67', '10161825', '10161861', '????????????!(^O^)y????', '2018-03-22 22:45:45');
INSERT INTO `chat` VALUES ('68', '10161825', '10161861', '以上', '2018-03-22 22:45:59');
INSERT INTO `chat` VALUES ('69', '10161825', '10161861', '以上第一', '2018-03-22 22:46:04');
INSERT INTO `chat` VALUES ('70', '10161825', '10161861', '以上第一手掌鼓掌????', '2018-03-22 22:46:16');
INSERT INTO `chat` VALUES ('71', '10161825', '10161856', '科科', '2018-03-22 22:46:29');
INSERT INTO `chat` VALUES ('72', '10161825', '10161856', 'hey man', '2018-03-22 22:46:36');
INSERT INTO `chat` VALUES ('73', '10161825', '10161856', '棒棒哒', '2018-03-22 22:46:46');
INSERT INTO `chat` VALUES ('74', '10161825', '10161856', '我有一头小毛驴', '2018-03-22 22:46:54');
INSERT INTO `chat` VALUES ('75', '10161825', '10161856', '我有一头小毛驴', '2018-03-22 22:46:55');
INSERT INTO `chat` VALUES ('76', '10161825', '10161856', '七月 [先秦] 诗经 七月流火，九月授衣。 一之日觱发，二之日栗烈。 无衣无褐，何以卒岁？ 三之日于耜，四之日举趾。 同我妇子，馌彼南亩，田畯至喜。  七月流火，九月授衣。 春日载阳，有鸣仓庚。 女执懿筐，遵彼微行，爰求柔桑。 春日迟迟，采蘩祁祁。 女心伤悲，殆及公子同归。  七月流火，八月萑苇。 蚕月条桑，取彼斧斨。 以伐远扬，猗彼女桑。  七月鸣鵙，八月载绩。 载玄载黄，我朱孔阳，为公子裳。 四月秀葽，五月鸣蜩。  八月其获，十月陨萚。 一之日于貉，取彼狐狸，为公子裘。 二之日其同，载缵武功，言私其豵，献豣于公。 五月斯螽动股，六月莎鸡振羽。  七月在野，八月在宇，九月在户，十月蟋蟀入我床', '2018-03-22 22:47:56');
INSERT INTO `chat` VALUES ('77', '10161861', '10161861', '嗯', '2018-03-22 22:49:51');
INSERT INTO `chat` VALUES ('78', '10161861', '10161825', '七月 [先秦] 诗经 七月流火，九月授衣。 一之日觱发，二之日栗烈。 无衣无褐，何以卒岁？ 三之日于耜，四之日举趾。 同我妇子，馌彼南亩，田畯至喜。  七月流火，九月授衣。 春日载阳，有鸣仓庚。 女执懿筐，遵彼微行，爰求柔桑。 春日迟迟，采蘩祁祁。 女心伤悲，殆及公子同归。  七月流火，八月萑苇。 蚕月条桑，取彼斧斨。 以伐远扬，猗彼女桑。  七月鸣鵙，八月载绩。 载玄载黄，我朱孔阳，为公子裳。 四月秀葽，五月鸣蜩。  八月其获，十月陨萚。 一之日于貉，取彼狐狸，为公子裘。 二之日其同，载缵武功，言私其豵，献豣于公。 五月斯螽动股，六月莎鸡振羽。  七月在野，八月在宇，九月在户，十月蟋蟀入我床', '2018-03-22 22:50:11');
INSERT INTO `chat` VALUES ('79', '10161825', '10161861', '哈喽kitty', '2018-03-23 13:17:34');
INSERT INTO `chat` VALUES ('80', '10161825', '10161853', '好天气', '2018-03-23 13:17:50');
INSERT INTO `chat` VALUES ('81', '10161825', '10161853', '　(￣ε(#￣)☆╰╮o(￣▽￣///)', '2018-03-23 13:21:19');
INSERT INTO `chat` VALUES ('82', '10161825', '10161861', 't', '2018-03-23 16:15:21');
INSERT INTO `chat` VALUES ('84', '10161825', '10161853', '啥', '2018-03-23 16:15:40');
INSERT INTO `chat` VALUES ('85', '10161825', '10161853', '哦(´-ω-`)', '2018-03-23 16:42:03');
INSERT INTO `chat` VALUES ('86', '10161825', '10161861', '刷屏', '2018-03-23 18:48:17');
INSERT INTO `chat` VALUES ('87', '10161825', '0', '好神奇啊我们已经完成这么多了', '2018-03-23 18:48:38');
INSERT INTO `chat` VALUES ('88', '10161825', '10161861', '再发一条', '2018-03-23 18:48:55');
INSERT INTO `chat` VALUES ('89', '10161825', '0', '好开心', '2018-03-23 18:49:01');
INSERT INTO `chat` VALUES ('90', '10161825', '0', '哦现在居然可以直接发消息了', '2018-03-23 18:49:14');
INSERT INTO `chat` VALUES ('92', '10161825', '10161861', '刷屏', '2018-03-23 18:49:27');
INSERT INTO `chat` VALUES ('93', '10161825', '10161861', '刷屏', '2018-03-23 18:49:35');
INSERT INTO `chat` VALUES ('94', '10161825', '10161861', '成功', '2018-03-23 18:49:43');
INSERT INTO `chat` VALUES ('95', '10161825', '10161861', '啊啊啊啊啊啊啊啊啊啊啊啊阿啊阿啊阿啊阿啊阿', '2018-03-23 19:48:17');
INSERT INTO `chat` VALUES ('96', '10161825', '0', '', '2018-03-23 19:48:19');
INSERT INTO `chat` VALUES ('97', '10161825', '10161861', '哦', '2018-03-23 19:48:34');
INSERT INTO `chat` VALUES ('98', '10161825', '10161853', 'u', '2018-03-23 19:49:10');
INSERT INTO `chat` VALUES ('99', '10161825', '0', '', '2018-03-23 19:49:21');
INSERT INTO `chat` VALUES ('100', '10161825', '0', '', '2018-03-23 19:49:23');
INSERT INTO `chat` VALUES ('101', '10161825', '10161861', '你们老师怎么样', '2018-03-23 19:50:44');
INSERT INTO `chat` VALUES ('102', '10161861', '10161825', '我觉得ok', '2018-03-23 19:51:14');
INSERT INTO `chat` VALUES ('103', '10161861', '10161825', '你们的呢？', '2018-03-23 19:51:42');
INSERT INTO `chat` VALUES ('104', '10161825', '10161861', '讲得挺快', '2018-03-23 19:52:30');
INSERT INTO `chat` VALUES ('105', '10161825', '10161861', '我跟不上(ಥ_ಥ)', '2018-03-23 19:53:01');
INSERT INTO `chat` VALUES ('106', '10161861', '10161825', '我们这个挺细致的，那你退改选来我们这儿吧(ง •̀_•́)ง', '2018-03-23 19:54:25');
INSERT INTO `chat` VALUES ('107', '10161825', '10161861', '现在聊天框大小可以根据文字自动调整了。你们试试看？', '2018-03-23 20:28:21');
INSERT INTO `chat` VALUES ('108', '10161825', '10161861', '七月 [先秦] 诗经 七月流火，九月授衣。 一之日觱发，二之日栗烈。 无衣无褐，何以卒岁？ 三之日于耜，四之日举趾。 同我妇子，馌彼南亩，田畯至喜。 七月流火，九月授衣。 春日载阳，有鸣仓庚。 女执懿筐，遵彼微行，爰求柔桑。 春日迟迟，采蘩祁祁。 女心伤悲，殆及公子同归。 七月流火，八月萑苇。 蚕月条桑，取彼斧斨。 以伐远扬，猗彼女桑。 七月鸣鵙，八月载绩。 载玄载黄，我朱孔阳，为公子裳。 四月秀葽，五月鸣蜩。 八月其获，十月陨萚。 一之日于貉，取彼狐狸，为公子裘。 二之日其同，载缵武功，言私其豵，献豣于公。 五月斯螽动股，六月莎鸡振羽。 七月在野，八月在宇，九月在户，十月蟋蟀入我床', '2018-03-23 20:32:19');
INSERT INTO `chat` VALUES ('109', '10161825', '10161861', '七月 [先秦] 诗经 七月流火，九月授衣。 一之日觱发，二之日栗烈。 无衣无褐，何以卒岁？ 三之日于耜，四之日举趾。 同我妇子，馌彼南亩，田畯至喜。 七月流火，九月授衣。 春日载阳，有鸣仓庚。 女执懿筐，遵彼微行，爰求柔桑。 春日迟迟，采蘩祁祁。 女心伤悲，殆及公子同归。 七月流火，八月萑苇。 蚕月条桑，取彼斧斨。 以伐远扬，猗彼女桑。 七月鸣鵙，八月载绩。 载玄载黄，我朱孔阳，为公子裳。 四月秀葽，五月鸣蜩。 八月其获，十月陨萚。 一之日于貉，取彼狐狸，为公子裘。 二之日其同，载缵武功，言私其豵，献豣于公。 五月斯螽动股，六月莎鸡振羽。 七月在野，八月在宇，九月在户，十月蟋蟀入七月 [先秦床', '2018-03-23 20:32:40');
INSERT INTO `chat` VALUES ('111', '10171758', '10171703', '泥嚎', '2018-03-23 22:51:25');
INSERT INTO `chat` VALUES ('112', '10161856', '10161825', '你好', '2018-03-23 23:20:13');
INSERT INTO `chat` VALUES ('113', '10161856', '10161825', '嗯', '2018-03-23 23:24:59');
INSERT INTO `chat` VALUES ('114', '10161856', '10161825', '哈哈哈', '2018-03-23 23:25:51');
INSERT INTO `chat` VALUES ('116', '10161856', '10131870', '可乐好听', '2018-03-23 23:34:35');
INSERT INTO `chat` VALUES ('119', '10161856', '10161825', '今天天气好', '2018-03-23 23:37:41');
INSERT INTO `chat` VALUES ('120', '10161856', '10141636', '埃？', '2018-03-23 23:39:13');
INSERT INTO `chat` VALUES ('121', '10161856', '10171758', '好的', '2018-03-23 23:39:31');
INSERT INTO `chat` VALUES ('123', '10161856', '10161825', '馄饨', '2018-03-23 23:46:15');
INSERT INTO `chat` VALUES ('125', '10161856', '10161825', '哦', '2018-03-23 23:54:39');
INSERT INTO `chat` VALUES ('126', '10161856', '10161825', '嗯', '2018-03-23 23:55:01');
INSERT INTO `chat` VALUES ('127', '10161856', '10161825', '傻', '2018-03-23 23:58:58');
INSERT INTO `chat` VALUES ('128', '10161856', '10131870', '唔', '2018-03-24 00:01:58');
INSERT INTO `chat` VALUES ('129', '10161856', '10141631', 'hh', '2018-03-24 00:04:02');
INSERT INTO `chat` VALUES ('130', '10161856', '10131870', '嗯', '2018-03-24 00:13:30');
INSERT INTO `chat` VALUES ('131', '10161856', '10131870', '看', '2018-03-24 00:15:22');
INSERT INTO `chat` VALUES ('132', '10161856', '10131870', '唔', '2018-03-24 00:24:05');
INSERT INTO `chat` VALUES ('133', '10161856', '10141631', '嗯？', '2018-03-24 00:24:24');
INSERT INTO `chat` VALUES ('134', '10161856', '10131870', '哦', '2018-03-24 00:24:56');
INSERT INTO `chat` VALUES ('135', '10161856', '10131870', '呵', '2018-03-24 00:25:12');
INSERT INTO `chat` VALUES ('136', '10161856', '10141631', 'ojkkk', '2018-03-24 00:25:39');
INSERT INTO `chat` VALUES ('137', '10161856', '10141631', '呼呼呼', '2018-03-24 00:25:45');
INSERT INTO `chat` VALUES ('138', '10161856', '10000006', '你好', '2018-03-24 00:27:54');
INSERT INTO `chat` VALUES ('139', '10161856', '10000006', '呵呵呵', '2018-03-24 00:28:00');
INSERT INTO `chat` VALUES ('140', '10161856', '10161825', '', '2018-03-24 00:28:13');
INSERT INTO `chat` VALUES ('141', '10161856', '10161825', '啥', '2018-03-24 00:28:58');
INSERT INTO `chat` VALUES ('142', '10161856', '10131870', 'll', '2018-03-24 00:29:18');
INSERT INTO `chat` VALUES ('143', '10161856', '10161825', '唔', '2018-03-24 00:29:40');
INSERT INTO `chat` VALUES ('144', '10161856', '10161825', '和', '2018-03-24 00:30:36');
INSERT INTO `chat` VALUES ('145', '10161856', '10161825', '', '2018-03-24 00:30:59');
INSERT INTO `chat` VALUES ('146', '0', '0', '', '2018-03-24 01:50:19');
INSERT INTO `chat` VALUES ('147', '10161856', '10161825', '按', '2018-03-24 09:36:03');
INSERT INTO `chat` VALUES ('148', '10161856', '10131870', '恩人????', '2018-03-24 09:37:04');
INSERT INTO `chat` VALUES ('149', '10161856', '10131870', '哈哈', '2018-03-24 09:37:39');
INSERT INTO `chat` VALUES ('150', '10161856', '10161825', '也是', '2018-03-24 09:37:51');
INSERT INTO `chat` VALUES ('151', '10161856', '10161825', 'good', '2018-03-24 09:38:13');
INSERT INTO `chat` VALUES ('152', '10161856', '10141631', 'aabc的四字词语', '2018-03-24 09:41:24');
INSERT INTO `chat` VALUES ('153', '10161856', '10141631', 'aabc的四字词语', '2018-03-24 09:41:25');
INSERT INTO `chat` VALUES ('154', '10161856', '10131870', '嗯', '2018-03-24 09:41:44');
INSERT INTO `chat` VALUES ('155', '10161856', '10131870', '可是', '2018-03-24 09:42:59');
INSERT INTO `chat` VALUES ('156', '10161856', '10161825', '可是', '2018-03-24 09:43:08');
INSERT INTO `chat` VALUES ('157', '10161856', '10161825', '嗯', '2018-03-24 09:57:10');
INSERT INTO `chat` VALUES ('158', '10161856', '10161825', '快快快', '2018-03-24 09:59:59');
INSERT INTO `chat` VALUES ('159', '10161856', '10161825', '好', '2018-03-24 10:00:15');
INSERT INTO `chat` VALUES ('160', '10161856', '10161825', '惹爱成瘾', '2018-03-24 10:00:30');
INSERT INTO `chat` VALUES ('161', '10161856', '10161825', '', '2018-03-24 10:00:31');
INSERT INTO `chat` VALUES ('162', '10161856', '10161825', '人', '2018-03-24 10:02:38');
INSERT INTO `chat` VALUES ('163', '10161856', '10161825', '课', '2018-03-24 10:04:02');
INSERT INTO `chat` VALUES ('164', '10161856', '10161825', '人', '2018-03-24 10:04:18');
INSERT INTO `chat` VALUES ('165', '10161856', '10161825', '好', '2018-03-24 10:04:31');
INSERT INTO `chat` VALUES ('166', '10161856', '10161825', '哦', '2018-03-24 10:04:41');
INSERT INTO `chat` VALUES ('167', '10161856', '10161825', '嘻嘻是什么意思', '2018-03-24 10:05:36');
INSERT INTO `chat` VALUES ('168', '10161856', '10161825', '嘻嘻是什么意思', '2018-03-24 10:05:37');
INSERT INTO `chat` VALUES ('169', '10161856', '10161825', '啥啊', '2018-03-24 10:05:52');
INSERT INTO `chat` VALUES ('170', '10161856', '10161825', '嗯', '2018-03-24 10:10:06');
INSERT INTO `chat` VALUES ('171', '10161856', '10131870', '哦', '2018-03-24 10:17:28');
INSERT INTO `chat` VALUES ('172', '10161856', '10161825', '哦', '2018-03-24 10:17:53');
INSERT INTO `chat` VALUES ('173', '10161856', '10161825', '行', '2018-03-24 10:19:37');
INSERT INTO `chat` VALUES ('174', '10161856', '10161825', '可以', '2018-03-24 10:20:07');
INSERT INTO `chat` VALUES ('175', '10161856', '10161825', '哦', '2018-03-24 10:20:26');
INSERT INTO `chat` VALUES ('176', '10161856', '10161825', '哇', '2018-03-24 10:25:28');
INSERT INTO `chat` VALUES ('177', '10161856', '10161825', '和', '2018-03-24 10:26:09');
INSERT INTO `chat` VALUES ('178', '10161856', '10161825', '和', '2018-03-24 10:36:12');
INSERT INTO `chat` VALUES ('179', '10161856', '10161825', '去', '2018-03-24 10:36:23');
INSERT INTO `chat` VALUES ('180', '10161856', '10161825', '', '2018-03-24 10:37:51');
INSERT INTO `chat` VALUES ('181', '10161856', '10161825', '', '2018-03-24 10:38:01');
INSERT INTO `chat` VALUES ('182', '10161856', '10161825', '是', '2018-03-24 10:38:20');
INSERT INTO `chat` VALUES ('183', '10161856', '10161825', '忙', '2018-03-24 10:40:24');
INSERT INTO `chat` VALUES ('184', '10161856', '10161825', '好', '2018-03-24 10:58:18');
INSERT INTO `chat` VALUES ('185', '10161856', '0', '再不买', '2018-03-24 11:01:16');
INSERT INTO `chat` VALUES ('186', '10161856', '10161825', '再不买', '2018-03-24 11:01:47');
INSERT INTO `chat` VALUES ('187', '0', '0', '', '2018-03-24 11:58:19');
INSERT INTO `chat` VALUES ('188', '10161856', '10171758', '在啊', '2018-03-24 13:02:13');
INSERT INTO `chat` VALUES ('189', '10171758', '10171703', '泥嚎', '2018-03-24 13:02:19');
INSERT INTO `chat` VALUES ('190', '10171758', '10161856', '泥嚎', '2018-03-24 13:02:56');
INSERT INTO `chat` VALUES ('191', '10161856', '10171758', '你好啊', '2018-03-24 13:02:58');
INSERT INTO `chat` VALUES ('192', '10171758', '10161856', '你好', '2018-03-24 13:03:17');
INSERT INTO `chat` VALUES ('193', '10171758', '10161856', '你好', '2018-03-24 13:13:57');
INSERT INTO `chat` VALUES ('194', '10171703', '10171758', '你好', '2018-03-24 13:20:23');
INSERT INTO `chat` VALUES ('195', '10000009', '10141628', '有', '2018-03-24 20:54:11');
INSERT INTO `chat` VALUES ('196', '0', '0', '', '2018-03-25 00:17:58');
INSERT INTO `chat` VALUES ('197', '10161825', '10161916', '喂', '2018-04-11 08:55:54');
INSERT INTO `chat` VALUES ('198', '10161856', '10161825', '蛇哥', '2018-04-19 12:27:21');
INSERT INTO `chat` VALUES ('199', '10161856', '10161825', '', '2018-04-19 12:27:22');
INSERT INTO `chat` VALUES ('200', '10161825', '0', '。', '2018-04-19 17:47:50');
INSERT INTO `chat` VALUES ('201', '0', '0', '', '2018-04-19 19:46:09');
INSERT INTO `chat` VALUES ('202', '10161825', '0', '哈哈哈哈', '2018-04-19 20:47:40');
INSERT INTO `chat` VALUES ('203', '10161825', '10161861', '你好', '2018-04-19 20:48:37');
INSERT INTO `chat` VALUES ('204', '10161825', '10161861', '你好', '2018-04-19 20:49:06');
INSERT INTO `chat` VALUES ('205', '10161852', '10161825', '谢佳嘉', '2018-04-20 10:52:32');
INSERT INTO `chat` VALUES ('206', '10161852', '10161825', '', '2018-04-20 10:52:34');
INSERT INTO `chat` VALUES ('207', '10161852', '10161825', '小傻子', '2018-04-20 10:52:42');
INSERT INTO `chat` VALUES ('208', '10161852', '10161825', '', '2018-04-20 10:52:46');
INSERT INTO `chat` VALUES ('209', '10161825', '10161852', '打反了', '2018-04-20 10:52:49');
INSERT INTO `chat` VALUES ('210', '10161825', '10161852', '大傻子', '2018-04-20 10:53:02');
INSERT INTO `chat` VALUES ('211', '0', '0', '', '2018-04-20 12:49:43');
INSERT INTO `chat` VALUES ('212', '10161825', '10161861', '哈哈哈', '2018-04-20 14:30:11');
INSERT INTO `chat` VALUES ('213', '10161825', '0', '你好', '2018-04-20 21:54:17');
INSERT INTO `chat` VALUES ('214', '10161825', '10161861', '你好', '2018-04-20 22:20:59');
INSERT INTO `chat` VALUES ('215', '10161825', '0', '', '2018-04-20 22:28:21');
INSERT INTO `chat` VALUES ('216', '10161825', '0', '你好', '2018-04-20 23:12:11');
INSERT INTO `chat` VALUES ('217', '10161825', '0', '你好', '2018-04-20 23:20:08');
INSERT INTO `chat` VALUES ('218', '10161825', '10161861', '你好', '2018-04-20 23:30:49');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `difficulty` int(5) NOT NULL,
  `interest` int(5) NOT NULL,
  `value` int(5) NOT NULL,
  `tempo` int(5) NOT NULL,
  `style` varchar(100) CHARACTER SET utf8 NOT NULL,
  `shower` tinyint(10) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', '1', '10161825', '0', '0', '\r\nX\r\n老师以渊博的知识，青春的激昂，璀璨的语言，悦耳的语音，扮演者精典\r\n式的演讲，令人心悦诚服，耳目一新，有身临其境之感，真是众妙毕绝啊。本节\r\n课引经据典，恰如其分，启发深思，事半功倍，旁敲侧击，循循善诱。无粉饰之\r\n患，无喧宾夺主之影。', '2018-03-20', '10', '10', '10', '1', '不拘、幽默', '0');
INSERT INTO `comment` VALUES ('3', '2', '10161856', '12', '0', '\r\nX\r\n老师注重读，读是语文教学的根，抓住了读，就抓住了整个语；书读百遍，\r\n其义自见，这是睿智的选择。', '2018-03-14', '10', '10', '10', '1', '幽默', '1');
INSERT INTO `comment` VALUES ('4', '3', '10161856', '11', '0', '“请坐，请读，请„„”\r\n，\r\n“请”字拉近了师生的互敬情谊，道出了教师关爱学\r\n生之心声，\r\n再现了和谐的课堂，\r\n忠诚党的教育事业，\r\n热爱学生是教师本能的素质。\r\n', '2018-03-16', '10', '10', '10', '10', '风趣', '1');
INSERT INTO `comment` VALUES ('5', '4', '10161856', '23', '0', '本节课学习内容是与学生生活、学习紧密结合、息息相关的课题，教师授课\r\n中有针对性地探讨了学生面临的问题及相应对策，\r\n教学中能密切结合校园内及学\r\n生身边熟悉的事件开展教学，深入浅出，启发学生进行思考，开展讨论。教师语\r\n言表述清晰、精要、幽默。建议教师要对学生的分析、提炼、总结问题的能力加\r\n强培养，提高要求。\r\n  ', '2018-03-12', '10', '10', '10', '10', '有意思', '1');
INSERT INTO `comment` VALUES ('6', '5', '10161825', '22', '0', '教师教态自然，语调亲切，并不断鼓励学生，充分发挥学生的主体作用。使\r\n学生在和谐融洽的课堂氛围中学习，\r\n推进了知识的掌握和智力的发展，\r\n达到了良\r\n好的教学效果。\r\n教师准确的把握了设疑的方向，\r\n调动了学生学习的兴趣，\r\n使学生\r\n进入积极的的思维状态。', '2018-03-15', '10', '10', '10', '10', '好玩', '1');
INSERT INTO `comment` VALUES ('7', '6', '10161856', '12', '0', '其义自见，这是睿智的选择。', '2018-03-16', '10', '10', '10', '1', '还行', '1');
INSERT INTO `comment` VALUES ('15', '1', '10161856', '0', '0', '我很喜欢这节课', '2018-03-22', '5', '5', '5', '1', '不拘', '1');
INSERT INTO `comment` VALUES ('16', '1', '10161856', '0', '0', '能考进你看', '2018-03-22', '5', '5', '5', '1', '不拘', '0');
INSERT INTO `comment` VALUES ('17', '1', '10161856', '0', '0', '123', '2018-03-22', '5', '5', '5', '1', '不拘', '0');
INSERT INTO `comment` VALUES ('18', '1', '10161856', '0', '0', '123456', '2018-03-22', '5', '5', '5', '1', '细致', '1');
INSERT INTO `comment` VALUES ('19', '1', '10161856', '0', '0', '不够花巨款', '2018-03-22', '5', '5', '5', '1', '不拘', '1');
INSERT INTO `comment` VALUES ('21', '1', '10000008', '0', '0', '我觉得很好呀。可惜第二学期选不上老师的课了', '2018-03-22', '5', '9', '10', '1', '不拘', '0');
INSERT INTO `comment` VALUES ('22', '1', '10161916', '0', '0', '哈哈哈', '2018-03-22', '4', '5', '2', '1', '细致', '1');
INSERT INTO `comment` VALUES ('23', '0', '0', '0', '0', '', '0000-00-00', '0', '0', '0', '0', '', '1');
INSERT INTO `comment` VALUES ('24', '0', '0', '0', '0', '', '0000-00-00', '0', '0', '0', '0', '', '0');
INSERT INTO `comment` VALUES ('25', '1', '10161825', '0', '0', '一个字：好！', '2018-03-23', '5', '6', '9', '1', '不拘', '0');
INSERT INTO `comment` VALUES ('26', '1', '10161825', '0', '0', '适合脑子灵活的学生', '2018-03-23', '7', '5', '10', '1', '细致、幽默', '1');
INSERT INTO `comment` VALUES ('27', '0', '0', '0', '0', '', '0000-00-00', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(25) CHARACTER SET utf8 NOT NULL,
  `teacher` varchar(6) CHARACTER SET utf8 NOT NULL,
  `credit` float DEFAULT NULL,
  `course_hour` int(5) DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 NOT NULL,
  `school` varchar(20) CHARACTER SET utf8 NOT NULL,
  `examination` varchar(50) CHARACTER SET utf8 NOT NULL,
  `textbook` varchar(50) CHARACTER SET utf8 NOT NULL,
  `course_nature` varchar(2) CHARACTER SET utf8 NOT NULL,
  `picture` varchar(200) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '高等数学A（上）', '赵瑞芳', '6', '120', '学习函数、导数与极限、微积分、无穷级数', '华东理工大学', '平时分30%+期末考试闭卷70%', '高等数学上册（殷锡鸣）', '必修', 'img/course/gaoshu.jpg');
INSERT INTO `course` VALUES ('2', '高等数学（上）', '吴任', '6', '120', '学习函数、导数与极限、微积分、无穷级数', '同济大学', '平时分30%+期末考试闭卷70%', '高等数学第七版（同济）', '必修', 'img/course/gaoshu2.jpg');
INSERT INTO `course` VALUES ('3', '网络攻防与实践', '杨建国', '2', '32', '讲解黑客历史、建立虚拟机、组网、漏洞扫描技术。有教室授课和上机，上机是一步一步示范如何做。', '华东理工大学', '课程大作业（一个作品）+开卷试卷', '网络攻防技术教程第二版', '选修', 'img/course/wangluogongfang.jpg');
INSERT INTO `course` VALUES ('4', '文献检索', '吉久明', '1', '16', '如何使用各大数据库检索文献，例如万方、SpringLinker、维普期刊等等。', '华东理工大学', '平时成绩+上机考试（单选+多选）', '文献检索与知识发现指南', '选修', 'img/course/wenxianjiansuo.jpg');
INSERT INTO `course` VALUES ('5', '嵌入式系统原理与实验（A类）', '田社平', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('6', '半导体物理与器件', '冯洁', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('7', '电子技术实验', '许巧燕', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('8', '信号与系统（B类）', '文玉梅', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('9', '电工与电子技术（G类）', '许巧燕', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('10', '单片机与嵌入式仪器', '毛义梅', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('11', '工程实践与科技创新Ⅲ-F', '周越', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('12', '人机界面与交互', '肖双九', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('13', '计算机系统结构（A类）', '邓倩妮', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('14', '电工与电子技术（C类）实验	', '许巧燕 ', '2', '24', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('15', '互联网工程', '唐飞龙', '2', '32', '', '上海交通大学', '', '', '', 'http://mpic.tiankong.com/4a0/648/4a06489cfeefc9167cbfbd69cfc41bf5/640.jpg@!670w');
INSERT INTO `course` VALUES ('16', '数理方法', '许德良', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('17', '数学规划', '吴耀琨', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('18', '数理方法', '唐异垒', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('19', '大学医科数学（A类）（1）	', '咸进国', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('20', '偏微分方程', '李亚纯', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('21', '微分流形', '戎锋 ', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('22', '微积分I', '王维克', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('23', '数理方法', '方北香 ', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('24', '概率统计', '仇璘', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('25', '线性代数	', '姜翠波', '5', '80', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('26', '线性代数 I	', '张跃辉', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('27', '大学文科数学（1）', '魏星 ', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('28', '大学物理实验（2）', '周红', '1', '16', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('29', '量子波澜：历史与概念', '顾卫华', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('30', '会计学', '石桂峰', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('31', '投资学', '王宇曦', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('32', '中级财务会计	', '傅仁辉', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('33', '管理基础', '胡巍', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('34', '经济优化方法', '施浩', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('35', '管理学原理（B类）', '汤石章', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('36', '管理学原理（C类）', '汤石章', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('37', '金融学论文报告（A类）', '朱喜', '4', '64', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('38', '程序设计基础', '江明', '2', '32', '安泰经济与管理学院开设的针对本学院学生的程序课', '上海交通大学', '', '', '', 'http://img3m1.ddimg.cn/56/36/488621-1_w.jpg');
INSERT INTO `course` VALUES ('39', '国际经济学（1）', '周瑜', '2', '32', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('40', '宏微观经济学', '胥莉', '3', '48', '', '上海交通大学', '', '', '', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('41', '毛泽东思想和中国特色社会主义理论体系（下）', '叶敏', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('42', '毛泽东思想和中国特色社会主义理论体系（下）', '汪碧云', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('43', '毛泽东思想和中国特色社会主义理论体系（下）', '徐雪明', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('44', '毛泽东思想和中国特色社会主义理论体系（下）', '闫彩霞', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('45', '毛泽东思想和中国特色社会主义理论体系（下）', '易如', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('46', '毛泽东思想和中国特色社会主义理论体系（下）', '奚建武', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('47', '毛泽东思想和中国特色社会主义理论体系（下）', '徐国民', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('48', '毛泽东思想和中国特色社会主义理论体系（下）', '邱卫东', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('49', '毛泽东思想和中国特色社会主义理论体系（下）', '方以启', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('50', '毛泽东思想和中国特色社会主义理论体系（下）', '金家厚', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('51', '毛泽东思想和中国特色社会主义理论体系（下）', '程群', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('52', '毛泽东思想和中国特色社会主义理论体系（下）', '卢杨', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('53', '毛泽东思想和中国特色社会主义理论体系（下）', '米丹', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/maogai.jpg');
INSERT INTO `course` VALUES ('54', '概率论与数理统计8', '李红英', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('55', '概率论与数理统计', '马先锋', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('56', '概率论与数理统计', '刘培海', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('57', '概率论与数理统计', '朱坤平', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('58', '概率论与数理统计', '黄文亮', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('59', '概率论与数理统计14', '史劲松', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('60', '概率论与数理统计', '郭继明', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('61', '概率论与数理统计', '俞绍文', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('62', '概率论与数理统计', '林爱红', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('63', '概率论与数理统计', '王薇', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('64', '算法与数据结构', '叶琪', '4', '64', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('65', '算法与数据结构（全英文）3', '胡国玲', '4', '64', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('66', '计算机图形学', '谢晓玲', '2', '40', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('67', '计算机图形学（双语）', '何高奇', '2', '40', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('68', '编译技术', '徐贤', '2', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('69', '纳米催化剂合成技术', '陈立芳', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('70', '化工产品的多尺度模拟入门', '何雪莲', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('71', 'Matlab基础与应用', '黄子宾', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/matlab.jpg');
INSERT INTO `course` VALUES ('72', '高分子表面科学及应用', '王杰', '1', '16', '', '华东理工大学', '', '', '选修', 'http://images.china.cn/news/attachement/jpg/site3/20150525/2213552821760574829.jpg');
INSERT INTO `course` VALUES ('73', '碳纤维', '李忠辉', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('74', '膜科学与技术', '马晓华', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('75', '化工环境保护概论', '王际童', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('76', '能源存储与转化', '龙东辉', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('77', '蛋白质的生物信息学探索', '陈琦', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('78', '生命科学导论', '高淑红', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('79', '生态学', '李春秀', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('80', '常见病与生物药物', '周洋', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('81', '积极心理与生理学基础', '李素霞', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('82', '食品标准与法规', '刘少伟', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('83', '食品营养与健康', '谢静莉', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('84', '化学史', '俞善辉', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('85', '邮票欣赏与收藏', '史超欧', '2', '24', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('86', '绿色化学与催化', '侯震山', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('87', '艺术与化学', '王利民', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('88', '多孔材料化学', '王灵芝', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('89', '现代显示技术与发光材料', '袁双龙', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('90', '宝石学与宝石鉴赏', '毛荐', '2', '24', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('91', 'solidworks三维设计及应用', '郭慧', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('92', 'solidworks三维设计及应用', '马惠仙', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('93', 'UG三维造型及二次开发技术', '刘晶', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('94', '计算机绘图基础（2学分）', '赵菊娣', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/huitujichu.jpg');
INSERT INTO `course` VALUES ('95', '计算机绘图基础（2学分）', '马惠仙', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/huitujichu.jpg');
INSERT INTO `course` VALUES ('96', '纳米技术', '栾伟玲', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('97', '传递与反应过程的多物理场耦合数值仿真', '曹军', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('98', '创新思维训练（MOOC）', '黄泽炀', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/chuangxinsiwei.jpg');
INSERT INTO `course` VALUES ('99', '创业管理实战（MOOC）', '黄泽炀', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('100', '军事理论', '何久勇', '1', '18', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('101', '军事理论', '蔡跃明', '1', '18', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('102', '大学英语||', '公维光', '2', '32', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('103', '德语会话（1）', '梁小露', '2', '32', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('104', '日本儿童文学', '黄育红', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('105', '日本文化漫谈', '俞慰刚', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('106', '文学名著影视欣赏', '任家瑜', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('107', '红楼梦研究', '吴思增', '1.5', '24', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('108', '电影艺术欣赏', '任家瑜', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('109', '中国地域环境与城市变迁', '赵赟', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('110', '机械制造工程学', '王庆明', '4', '64', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('111', '控制理论基础', '束雯', '2', '32', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('112', '过程装备与系统（双语）', '周绍萍', '2', '32', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('113', '制药工艺学', '冀亚飞', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('114', '药剂学', '任福正', '3', '48', '', '华东理工大学', '', '', '必修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('115', '形体塑身', '杨清', '1', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('116', '篮球竞赛规则与裁判法', '王烈', '2', '32', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('117', '舞动身心成长小组', '李永慧', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('118', '大学生职业生涯规划与管理', '贾维华', '1', '16', '', '华东理工大学', '', '', '选修', 'img/course/moren.jpg');
INSERT INTO `course` VALUES ('119', '近代中国法治名人名案的当代解读', '秦涛', '1.5', '24', '', '华东理工大学', '', '', '选修', 'img/course/1-140R20QR023111-33-55-.jpg');
INSERT INTO `course` VALUES ('120', '知识产权法概论', '张晓东', '1.5', '24', '', '华东理工大学', '', '', '选修', 'img/course/23-10-56-timg.jpg');
INSERT INTO `course` VALUES ('138', '劳动法概论', '莫神星', '1.5', '24', '', '华东理工大学', '', '', '选修', 'img/course/23-54-53-u=755884059,4119906275&fm=27&gp=0.jpg');

-- ----------------------------
-- Table structure for coursecategory
-- ----------------------------
DROP TABLE IF EXISTS `coursecategory`;
CREATE TABLE `coursecategory` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `category` int(15) NOT NULL,
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coursecategory
-- ----------------------------
INSERT INTO `coursecategory` VALUES ('1', '1', '12');
INSERT INTO `coursecategory` VALUES ('2', '2', '12');
INSERT INTO `coursecategory` VALUES ('3', '3', '9');
INSERT INTO `coursecategory` VALUES ('4', '4', '12');
INSERT INTO `coursecategory` VALUES ('5', '4', '16');
INSERT INTO `coursecategory` VALUES ('6', '5', '12');
INSERT INTO `coursecategory` VALUES ('7', '6', '12');
INSERT INTO `coursecategory` VALUES ('8', '7', '12');
INSERT INTO `coursecategory` VALUES ('9', '8', '12');
INSERT INTO `coursecategory` VALUES ('10', '9', '12');
INSERT INTO `coursecategory` VALUES ('11', '10', '12');
INSERT INTO `coursecategory` VALUES ('12', '11', '7');
INSERT INTO `coursecategory` VALUES ('13', '12', '9');
INSERT INTO `coursecategory` VALUES ('14', '13', '9');
INSERT INTO `coursecategory` VALUES ('15', '14', '12');
INSERT INTO `coursecategory` VALUES ('16', '15', '9');
INSERT INTO `coursecategory` VALUES ('17', '16', '12');
INSERT INTO `coursecategory` VALUES ('18', '17', '12');
INSERT INTO `coursecategory` VALUES ('19', '18', '12');
INSERT INTO `coursecategory` VALUES ('20', '19', '13');
INSERT INTO `coursecategory` VALUES ('21', '20', '12');
INSERT INTO `coursecategory` VALUES ('22', '21', '12');
INSERT INTO `coursecategory` VALUES ('23', '22', '12');
INSERT INTO `coursecategory` VALUES ('24', '23', '12');
INSERT INTO `coursecategory` VALUES ('25', '24', '12');
INSERT INTO `coursecategory` VALUES ('26', '25', '12');
INSERT INTO `coursecategory` VALUES ('27', '26', '12');
INSERT INTO `coursecategory` VALUES ('28', '27', '12');
INSERT INTO `coursecategory` VALUES ('29', '28', '12');
INSERT INTO `coursecategory` VALUES ('30', '29', '12');
INSERT INTO `coursecategory` VALUES ('31', '29', '7');
INSERT INTO `coursecategory` VALUES ('32', '29', '10');
INSERT INTO `coursecategory` VALUES ('33', '30', '2');
INSERT INTO `coursecategory` VALUES ('34', '31', '2');
INSERT INTO `coursecategory` VALUES ('35', '32', '2');
INSERT INTO `coursecategory` VALUES ('36', '33', '2');
INSERT INTO `coursecategory` VALUES ('37', '34', '2');
INSERT INTO `coursecategory` VALUES ('38', '35', '2');
INSERT INTO `coursecategory` VALUES ('39', '36', '2');
INSERT INTO `coursecategory` VALUES ('40', '37', '2');
INSERT INTO `coursecategory` VALUES ('41', '38', '9');
INSERT INTO `coursecategory` VALUES ('42', '39', '2');
INSERT INTO `coursecategory` VALUES ('43', '41', '2');
INSERT INTO `coursecategory` VALUES ('44', '42', '0');
INSERT INTO `coursecategory` VALUES ('45', '43', '0');
INSERT INTO `coursecategory` VALUES ('46', '44', '0');
INSERT INTO `coursecategory` VALUES ('47', '45', '0');
INSERT INTO `coursecategory` VALUES ('48', '46', '0');
INSERT INTO `coursecategory` VALUES ('49', '47', '0');
INSERT INTO `coursecategory` VALUES ('50', '48', '0');
INSERT INTO `coursecategory` VALUES ('51', '49', '0');
INSERT INTO `coursecategory` VALUES ('52', '50', '0');
INSERT INTO `coursecategory` VALUES ('53', '51', '0');
INSERT INTO `coursecategory` VALUES ('54', '52', '0');
INSERT INTO `coursecategory` VALUES ('55', '53', '0');
INSERT INTO `coursecategory` VALUES ('56', '41', '1');
INSERT INTO `coursecategory` VALUES ('57', '42', '1');
INSERT INTO `coursecategory` VALUES ('58', '43', '1');
INSERT INTO `coursecategory` VALUES ('59', '44', '1');
INSERT INTO `coursecategory` VALUES ('60', '45', '1');
INSERT INTO `coursecategory` VALUES ('61', '46', '1');
INSERT INTO `coursecategory` VALUES ('62', '47', '1');
INSERT INTO `coursecategory` VALUES ('63', '48', '1');
INSERT INTO `coursecategory` VALUES ('64', '49', '1');
INSERT INTO `coursecategory` VALUES ('65', '50', '1');
INSERT INTO `coursecategory` VALUES ('66', '51', '1');
INSERT INTO `coursecategory` VALUES ('67', '52', '1');
INSERT INTO `coursecategory` VALUES ('68', '53', '1');
INSERT INTO `coursecategory` VALUES ('69', '54', '12');
INSERT INTO `coursecategory` VALUES ('70', '55', '12');
INSERT INTO `coursecategory` VALUES ('71', '56', '12');
INSERT INTO `coursecategory` VALUES ('72', '57', '12');
INSERT INTO `coursecategory` VALUES ('73', '58', '12');
INSERT INTO `coursecategory` VALUES ('74', '59', '12');
INSERT INTO `coursecategory` VALUES ('75', '60', '12');
INSERT INTO `coursecategory` VALUES ('76', '61', '12');
INSERT INTO `coursecategory` VALUES ('77', '62', '12');
INSERT INTO `coursecategory` VALUES ('78', '63', '12');
INSERT INTO `coursecategory` VALUES ('79', '64', '9');
INSERT INTO `coursecategory` VALUES ('80', '65', '9');
INSERT INTO `coursecategory` VALUES ('81', '66', '9');
INSERT INTO `coursecategory` VALUES ('82', '67', '9');
INSERT INTO `coursecategory` VALUES ('83', '68', '9');
INSERT INTO `coursecategory` VALUES ('84', '69', '12');
INSERT INTO `coursecategory` VALUES ('85', '70', '12');
INSERT INTO `coursecategory` VALUES ('86', '71', '9');
INSERT INTO `coursecategory` VALUES ('87', '72', '12');
INSERT INTO `coursecategory` VALUES ('88', '73', '12');
INSERT INTO `coursecategory` VALUES ('89', '74', '12');
INSERT INTO `coursecategory` VALUES ('90', '75', '12');
INSERT INTO `coursecategory` VALUES ('91', '75', '14');
INSERT INTO `coursecategory` VALUES ('92', '76', '12');
INSERT INTO `coursecategory` VALUES ('93', '77', '15');
INSERT INTO `coursecategory` VALUES ('94', '78', '15');
INSERT INTO `coursecategory` VALUES ('95', '79', '15');
INSERT INTO `coursecategory` VALUES ('96', '80', '13');
INSERT INTO `coursecategory` VALUES ('97', '81', '13');
INSERT INTO `coursecategory` VALUES ('98', '82', '15');
INSERT INTO `coursecategory` VALUES ('99', '83', '15');
INSERT INTO `coursecategory` VALUES ('100', '84', '12');
INSERT INTO `coursecategory` VALUES ('101', '85', '6');
INSERT INTO `coursecategory` VALUES ('102', '86', '12');
INSERT INTO `coursecategory` VALUES ('103', '87', '12');
INSERT INTO `coursecategory` VALUES ('104', '88', '12');
INSERT INTO `coursecategory` VALUES ('105', '89', '12');
INSERT INTO `coursecategory` VALUES ('106', '90', '12');
INSERT INTO `coursecategory` VALUES ('107', '91', '0');
INSERT INTO `coursecategory` VALUES ('108', '85', '18');
INSERT INTO `coursecategory` VALUES ('109', '87', '6');
INSERT INTO `coursecategory` VALUES ('110', '90', '6');
INSERT INTO `coursecategory` VALUES ('111', '91', '9');
INSERT INTO `coursecategory` VALUES ('112', '92', '9');
INSERT INTO `coursecategory` VALUES ('113', '93', '9');
INSERT INTO `coursecategory` VALUES ('114', '94', '9');
INSERT INTO `coursecategory` VALUES ('115', '95', '9');
INSERT INTO `coursecategory` VALUES ('116', '96', '12');
INSERT INTO `coursecategory` VALUES ('117', '97', '12');
INSERT INTO `coursecategory` VALUES ('118', '98', '16');
INSERT INTO `coursecategory` VALUES ('119', '99', '16');
INSERT INTO `coursecategory` VALUES ('120', '100', '3');
INSERT INTO `coursecategory` VALUES ('121', '101', '3');
INSERT INTO `coursecategory` VALUES ('122', '102', '4');
INSERT INTO `coursecategory` VALUES ('123', '103', '4');
INSERT INTO `coursecategory` VALUES ('124', '104', '5');
INSERT INTO `coursecategory` VALUES ('125', '105', '18');
INSERT INTO `coursecategory` VALUES ('126', '106', '5');
INSERT INTO `coursecategory` VALUES ('127', '107', '5');
INSERT INTO `coursecategory` VALUES ('128', '108', '6');
INSERT INTO `coursecategory` VALUES ('129', '109', '10');
INSERT INTO `coursecategory` VALUES ('130', '110', '0');
INSERT INTO `coursecategory` VALUES ('131', '96', '8');
INSERT INTO `coursecategory` VALUES ('132', '89', '8');
INSERT INTO `coursecategory` VALUES ('133', '69', '8');
INSERT INTO `coursecategory` VALUES ('134', '109', '14');
INSERT INTO `coursecategory` VALUES ('135', '110', '11');
INSERT INTO `coursecategory` VALUES ('136', '111', '11');
INSERT INTO `coursecategory` VALUES ('137', '112', '11');
INSERT INTO `coursecategory` VALUES ('138', '113', '13');
INSERT INTO `coursecategory` VALUES ('139', '114', '13');
INSERT INTO `coursecategory` VALUES ('140', '115', '17');
INSERT INTO `coursecategory` VALUES ('141', '116', '17');
INSERT INTO `coursecategory` VALUES ('142', '117', '16');
INSERT INTO `coursecategory` VALUES ('143', '118', '16');
INSERT INTO `coursecategory` VALUES ('144', '0', '0');

-- ----------------------------
-- Table structure for course_assess
-- ----------------------------
DROP TABLE IF EXISTS `course_assess`;
CREATE TABLE `course_assess` (
  `course_id` int(11) NOT NULL,
  `difficulty` float(10,0) DEFAULT NULL,
  `interest` float(10,0) DEFAULT NULL,
  `value` float(10,0) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of course_assess
-- ----------------------------
INSERT INTO `course_assess` VALUES ('1', '8', '9', '6');

-- ----------------------------
-- Table structure for course_similarity
-- ----------------------------
DROP TABLE IF EXISTS `course_similarity`;
CREATE TABLE `course_similarity` (
  `uid_1` int(11) DEFAULT NULL,
  `uid_2` int(11) DEFAULT NULL,
  `degree` float(5,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of course_similarity
-- ----------------------------

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `discuss_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of discuss
-- ----------------------------

-- ----------------------------
-- Table structure for dislikes
-- ----------------------------
DROP TABLE IF EXISTS `dislikes`;
CREATE TABLE `dislikes` (
  `dislike_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`dislike_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dislikes
-- ----------------------------

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid1` int(11) NOT NULL,
  `uid2` int(11) NOT NULL,
  `verify` int(1) NOT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '10161825', '10161861', '1');
INSERT INTO `friend` VALUES ('2', '10161825', '10161853', '1');
INSERT INTO `friend` VALUES ('3', '10161853', '10161855', '1');
INSERT INTO `friend` VALUES ('4', '10161856', '10161825', '1');
INSERT INTO `friend` VALUES ('5', '10161856', '10131870', '1');
INSERT INTO `friend` VALUES ('6', '10161856', '10141631', '1');
INSERT INTO `friend` VALUES ('7', '10161856', '10141636', '1');
INSERT INTO `friend` VALUES ('8', '10171758', '10171335', '0');
INSERT INTO `friend` VALUES ('9', '10171758', '10172653', '0');
INSERT INTO `friend` VALUES ('10', '10171703', '10171758', '1');
INSERT INTO `friend` VALUES ('11', '10171703', '10172653', '0');
INSERT INTO `friend` VALUES ('12', '10171335', '10172653', '0');
INSERT INTO `friend` VALUES ('13', '10171758', '10161856', '1');
INSERT INTO `friend` VALUES ('14', '10171703', '10161856', '1');
INSERT INTO `friend` VALUES ('16', '10172653', '10161856', '1');
INSERT INTO `friend` VALUES ('17', '10171703', '10161825', '1');
INSERT INTO `friend` VALUES ('18', '10161856', '10000008', '1');
INSERT INTO `friend` VALUES ('23', '10161856', '10110000', '0');
INSERT INTO `friend` VALUES ('24', '10000008', '10000006', '0');
INSERT INTO `friend` VALUES ('25', '10000008', '10131868', '1');
INSERT INTO `friend` VALUES ('26', '10171334', '10171758', '0');
INSERT INTO `friend` VALUES ('27', '10171758', '10171334', '0');
INSERT INTO `friend` VALUES ('28', '10171334', '10171758', '0');
INSERT INTO `friend` VALUES ('29', '10000009', '10161825', '1');
INSERT INTO `friend` VALUES ('30', '10000009', '10000008', '0');
INSERT INTO `friend` VALUES ('31', '10000009', '10000006', '0');
INSERT INTO `friend` VALUES ('32', '10000009', '10141628', '0');
INSERT INTO `friend` VALUES ('33', '10161808', '10131876', '0');
INSERT INTO `friend` VALUES ('34', '10161808', '10161825', '1');
INSERT INTO `friend` VALUES ('35', '10000006', '10161825', '0');
INSERT INTO `friend` VALUES ('36', '0', '0', '1');
INSERT INTO `friend` VALUES ('37', '10171855', '10131872', '0');
INSERT INTO `friend` VALUES ('38', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('39', '0', '0', '1');
INSERT INTO `friend` VALUES ('40', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('41', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('42', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('43', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('44', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('45', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('46', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('47', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('48', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('49', '10161916', '10000006', '0');
INSERT INTO `friend` VALUES ('50', '10161916', '10131868', '0');
INSERT INTO `friend` VALUES ('51', '10161916', '10131868', '0');
INSERT INTO `friend` VALUES ('52', '10161852', '10161825', '1');
INSERT INTO `friend` VALUES ('53', '10161852', '10161825', '1');
INSERT INTO `friend` VALUES ('54', '10161852', '10161825', '1');

-- ----------------------------
-- Table structure for interest_category
-- ----------------------------
DROP TABLE IF EXISTS `interest_category`;
CREATE TABLE `interest_category` (
  `iccd` int(50) NOT NULL,
  `icname` varchar(15) NOT NULL,
  PRIMARY KEY (`iccd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of interest_category
-- ----------------------------
INSERT INTO `interest_category` VALUES ('0', '社会主义思想理论');
INSERT INTO `interest_category` VALUES ('1', '政治法律');
INSERT INTO `interest_category` VALUES ('2', '经济金融');
INSERT INTO `interest_category` VALUES ('3', '军事');
INSERT INTO `interest_category` VALUES ('4', '语言文字');
INSERT INTO `interest_category` VALUES ('5', '文学');
INSERT INTO `interest_category` VALUES ('6', '艺术');
INSERT INTO `interest_category` VALUES ('7', '科学');
INSERT INTO `interest_category` VALUES ('8', '工业技术');
INSERT INTO `interest_category` VALUES ('9', '计算机科学与软件开发');
INSERT INTO `interest_category` VALUES ('10', '历史地理');
INSERT INTO `interest_category` VALUES ('11', '机械工业');
INSERT INTO `interest_category` VALUES ('12', '数理科学和化学');
INSERT INTO `interest_category` VALUES ('13', '医学医药');
INSERT INTO `interest_category` VALUES ('14', '环境安全');
INSERT INTO `interest_category` VALUES ('15', '农业');
INSERT INTO `interest_category` VALUES ('16', '教育');
INSERT INTO `interest_category` VALUES ('17', '体育竞技');
INSERT INTO `interest_category` VALUES ('18', '文化');

-- ----------------------------
-- Table structure for interest_label
-- ----------------------------
DROP TABLE IF EXISTS `interest_label`;
CREATE TABLE `interest_label` (
  `iid` int(11) NOT NULL,
  `iname` varchar(15) CHARACTER SET utf8 NOT NULL,
  `category` varchar(15) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of interest_label
-- ----------------------------
INSERT INTO `interest_label` VALUES ('0', '毛泽东思想理论', '0');
INSERT INTO `interest_label` VALUES ('1', '邓小平理论', '0');
INSERT INTO `interest_label` VALUES ('2', '马克思主义', '0');
INSERT INTO `interest_label` VALUES ('3', '宪法', '1');
INSERT INTO `interest_label` VALUES ('4', '民法', '1');
INSERT INTO `interest_label` VALUES ('5', '国际法', '1');
INSERT INTO `interest_label` VALUES ('6', '会计', '2');
INSERT INTO `interest_label` VALUES ('7', '国际金融形势', '2');
INSERT INTO `interest_label` VALUES ('8', '国际形势', '3');
INSERT INTO `interest_label` VALUES ('9', '空军建设', '3');
INSERT INTO `interest_label` VALUES ('10', '我国武器装备发展水平', '3');
INSERT INTO `interest_label` VALUES ('11', '韩语', '4');
INSERT INTO `interest_label` VALUES ('12', '德语', '4');
INSERT INTO `interest_label` VALUES ('13', '英语', '4');
INSERT INTO `interest_label` VALUES ('14', '法语', '4');
INSERT INTO `interest_label` VALUES ('15', '美术', '6');
INSERT INTO `interest_label` VALUES ('16', '摄影', '6');
INSERT INTO `interest_label` VALUES ('17', '音乐', '6');
INSERT INTO `interest_label` VALUES ('18', '吉他', '6');
INSERT INTO `interest_label` VALUES ('19', '钢琴', '6');
INSERT INTO `interest_label` VALUES ('20', '黑洞', '7');
INSERT INTO `interest_label` VALUES ('21', '万有引力', '7');
INSERT INTO `interest_label` VALUES ('22', '工业石油提炼', '8');
INSERT INTO `interest_label` VALUES ('23', '化学工业', '8');
INSERT INTO `interest_label` VALUES ('24', '工业萃取', '8');
INSERT INTO `interest_label` VALUES ('25', '数据结构', '8');
INSERT INTO `interest_label` VALUES ('26', 'c语言', '9');
INSERT INTO `interest_label` VALUES ('27', 'JAVA语言', '9');
INSERT INTO `interest_label` VALUES ('28', 'Python语言', '9');
INSERT INTO `interest_label` VALUES ('29', '面向对象的编程', '9');
INSERT INTO `interest_label` VALUES ('30', '计算机组成与技术', '9');
INSERT INTO `interest_label` VALUES ('31', '编译技术', '9');
INSERT INTO `interest_label` VALUES ('32', '汉代历史', '10');
INSERT INTO `interest_label` VALUES ('33', '封建制度的兴衰', '10');
INSERT INTO `interest_label` VALUES ('34', '朝代的变迁', '10');
INSERT INTO `interest_label` VALUES ('35', '秦始皇', '10');
INSERT INTO `interest_label` VALUES ('36', '《西游记》', '5');
INSERT INTO `interest_label` VALUES ('37', '《黑客》', '5');
INSERT INTO `interest_label` VALUES ('38', '《童话》', '5');
INSERT INTO `interest_label` VALUES ('39', '《十万个为什么》', '5');
INSERT INTO `interest_label` VALUES ('40', '《明朝的那些事》', '5');
INSERT INTO `interest_label` VALUES ('41', '《路从今夜白》', '5');
INSERT INTO `interest_label` VALUES ('42', '麻醉学', '13');
INSERT INTO `interest_label` VALUES ('43', '预防医学', '13');
INSERT INTO `interest_label` VALUES ('44', '临床医学', '13');
INSERT INTO `interest_label` VALUES ('45', '医学检验学', '13');
INSERT INTO `interest_label` VALUES ('46', '口腔学', '13');
INSERT INTO `interest_label` VALUES ('47', '医学影像学', '13');
INSERT INTO `interest_label` VALUES ('48', '机器人', '11');
INSERT INTO `interest_label` VALUES ('49', '车辆制造', '11');
INSERT INTO `interest_label` VALUES ('50', '工程制图', '11');
INSERT INTO `interest_label` VALUES ('51', 'CAD', '11');
INSERT INTO `interest_label` VALUES ('52', 'solidworks', '11');
INSERT INTO `interest_label` VALUES ('53', '线性代数', '12');
INSERT INTO `interest_label` VALUES ('54', '概率统计', '12');
INSERT INTO `interest_label` VALUES ('55', '离散数学', '12');
INSERT INTO `interest_label` VALUES ('56', '物理化学', '12');
INSERT INTO `interest_label` VALUES ('57', '现代化学', '12');
INSERT INTO `interest_label` VALUES ('58', '生物化学', '12');
INSERT INTO `interest_label` VALUES ('59', '环境治理', '14');
INSERT INTO `interest_label` VALUES ('60', '生物治理', '14');
INSERT INTO `interest_label` VALUES ('61', '污水治理', '14');
INSERT INTO `interest_label` VALUES ('62', '畜牧业', '15');
INSERT INTO `interest_label` VALUES ('63', '转基因大豆', '15');
INSERT INTO `interest_label` VALUES ('64', '杂交水稻', '15');
INSERT INTO `interest_label` VALUES ('65', '学前教育', '16');
INSERT INTO `interest_label` VALUES ('66', 'IT培训', '16');
INSERT INTO `interest_label` VALUES ('67', '英语培训', '16');
INSERT INTO `interest_label` VALUES ('68', '电子竞技', '17');
INSERT INTO `interest_label` VALUES ('69', 'NBA', '17');
INSERT INTO `interest_label` VALUES ('70', '田径', '17');
INSERT INTO `interest_label` VALUES ('71', '网球', '17');
INSERT INTO `interest_label` VALUES ('72', '羽毛球', '17');
INSERT INTO `interest_label` VALUES ('73', '乒乓球', '17');
INSERT INTO `interest_label` VALUES ('74', '孔子儒家文化', '18');
INSERT INTO `interest_label` VALUES ('75', '西方文化', '18');
INSERT INTO `interest_label` VALUES ('76', '老子道家文化', '18');
INSERT INTO `interest_label` VALUES ('77', '日本文化', '18');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('1', '1', '10161825');
INSERT INTO `likes` VALUES ('2', '1', '10161853');

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `story` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `picname` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pic
-- ----------------------------
INSERT INTO `pic` VALUES ('3572700', '王11', '921636606', '我和张帆的故事', '003397200 1523350420.gif');
INSERT INTO `pic` VALUES ('19210800', '张帆', '13167180903', '我和王11的夏天', '019029700 1523350084.png');
INSERT INTO `pic` VALUES ('70556400', '李大钊', '921636606', '人体各处', '070323300 1523350819.png');

-- ----------------------------
-- Table structure for textbook
-- ----------------------------
DROP TABLE IF EXISTS `textbook`;
CREATE TABLE `textbook` (
  `textbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`textbook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of textbook
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `personality_signature` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(80) NOT NULL,
  `score` int(20) NOT NULL,
  `touxiang` varchar(200) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11061257 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10000006', '释梦', '0', '懒', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10000008', '喵呜', '0', '一起来吸猫', 'c33367701511b4f6020ec61ded352059', '0', '', '0');
INSERT INTO `user` VALUES ('10000009', '你', '1', '嗨', 'c33367701511b4f6020ec61ded352059', '0', '', '0');
INSERT INTO `user` VALUES ('10000010', '可可西里', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10110000', '李钊熠', '1', '心有猛虎，细嗅蔷薇', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131867', '李大钊', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131868', '阳光下的微风', '0', '害怕未来。', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131870', '汪同学', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131871', '连同学', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131872', '王同学', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131873', '罗同学', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131874', '刘同学', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131875', '安同学', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131876', '张之洞', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131877', '安同礼', '1', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10131878', '汪同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10131879', '朱歆玥', '0', 'Chasing the sky flying so high', '', '0', '', '0');
INSERT INTO `user` VALUES ('10131880', '刘同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141414', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10141625', '帅不过你', '1', '别看了，你最帅好吧', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141626', '王乐晗', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141627', '方以启', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141628', '吴亦凡', '1', '你有freestyle吗', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141629', '刘同学', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10141630', 'fancy', '0', '中意类', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141631', '聂风', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141632', '棋圣', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141633', '曹方', '0', '爱民谣爱吉他爱生活', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141634', '慕夏', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141635', '王阿姨', '0', '大家好，我是王阿姨。', '', '0', '', '0');
INSERT INTO `user` VALUES ('10141636', '吴同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151033', '李同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151034', '王同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151035', '滕同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151036', '裴同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151037', '肖', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151038', 'hello world！', '1', '我可能有点秃头了', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151039', '亦正亦邪', '1', '他都分不清醒着还是睡着', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151040', '树', '1', '一花一世界', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151041', '杨同学', '1', '两桶水', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151042', '假如生活欺骗了你', '1', '普希金', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151043', '四大皆空', '0', '佛系少女', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151045', '域藉', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151046', 'lollipop', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151047', 'Ancy', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151048', '杜苇新', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151049', '同', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151051', '连同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10151052', '蒯同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10160000', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10160405', '带着南瓜头的小仙女', '0', '', 'ca245d919bc0a5b97052651ef95cabec', '0', '', '0');
INSERT INTO `user` VALUES ('10161000', '李同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161001', '肖同学', '1', '我想转高材', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161002', '李同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161003', '潘同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161004', '姚同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161005', '古同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161006', '汪同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161007', '吴同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161008', '庄同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161009', '在云端', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161010', '大五', '1', '有要转专业的吗', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161011', '花火', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161012', '翁同学', '1', '对珠宝有兴趣', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161013', '肖像不像', '1', '没有人会在意你的内在', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161014', '马同学', '0', '伯乐？', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161015', '沙特人', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161016', '三刀秋叶', '1', '什么时候去一趟秋叶原', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161018', '陈同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161020', '下巴不是脚后跟', '0', '情爱是世间最美的事', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161023', '王饼饼', '0', '大爱库里', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161024', '刘同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161025', '吴同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161026', '王同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161027', '邢法', '0', '在变优秀的路上！', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161028', '张同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161029', '胡同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161030', '赵同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161031', '赵同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161032', '爱上红荷花的夏鸥', '0', '别', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161033', '北海道的村姑', '0', '采蘑菇的小姑娘', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161034', '徐梁', '1', '我知道了', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161035', '徐梁', '1', '有缘', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161036', '小垃圾Neo', '1', '爱摄影', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161037', '老干妈', '1', '爱电影书评', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161110', '无名', '0', '这个同学很懒，什么也没写', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10161111', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161200', '小可ai已上线', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161201', '罗总', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161202', '牛泽润', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161203', '贺同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161204', '花吃了那女孩', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161205', '我爱蹦迪', '0', '我爱蹦迪！', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161206', '高数不100不改名', '1', '好好学习，天天向上！', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161207', 'Clover', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161208', '夏季的风', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161210', '午晴', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161212', '叶之柠', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161213', 'Jomo', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161214', 'HELLO_thin', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161215', '小猪仔', '0', '混吃等死小猪仔', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161218', '刘同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161219', '商茜雯', '0', '同学你好，想认识你一下奥', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161220', '之之卷之之', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161221', 'Chafferer', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161222', '韩妹儿', '0', '沐浴重生，自回归来', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161223', '张同学', '1', '', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161224', '姚同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161225', '赵同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161226', '唯', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161227', '树先生', '1', '维密粉。', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161228', '刘氏', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161229', '故乡', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161230', '高帆', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161231', '王子', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161232', '孙悟空', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161234', '无名', '0', '这个同学很懒，什么也没写', 'b2313a75da8ddac908c8d0eeab5d78f9', '0', '', '0');
INSERT INTO `user` VALUES ('10161400', '谭同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161401', '张同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161402', '伦同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161404', '张同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161405', '胡同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161406', '安同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161407', '万同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161408', '王同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161409', '马同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161410', '许同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161411', '吴同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161412', '郭同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161413', '王同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161414', '蔡同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161415', '紫菜', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161416', '王同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161417', '刘同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161418', '何同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161419', '周同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161420', '23333', '0', '23333', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161421', '肖同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161422', '李同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161423', '王思聪', '1', '我叫王思聪', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161425', '李同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161426', '明同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161427', '肖同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161428', '古世', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161429', '狐狸不爱吃鸡', '1', '狗爱吃鸡', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161430', '咯咯哒？', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161431', 'Van', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161433', '闯码头.', '0', '有些人啊，装逼到骨子里。', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161434', '肖同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161435', '张同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10161436', '肖同学', '1', '这个同学很懒，什么也没写', '', '5', '', '0');
INSERT INTO `user` VALUES ('10161808', '懒蛋蛋', '0', '你知道我不会理你', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161825', '心青书！', '0', '想要好心情', 'e10adc3949ba59abbe56e057f20f883e', '8', '', '0');
INSERT INTO `user` VALUES ('10161850', '无名', '0', '这个同学很懒，什么也没写', '4297f44b13955235245b2497399d7a93', '0', '', '0');
INSERT INTO `user` VALUES ('10161852', '林豆豆', '0', '喵喵喵', '011a4f250c23c61212740717999778db', '0', '', '0');
INSERT INTO `user` VALUES ('10161853', '徐倩倩', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161855', '唐梓璇', '0', '命', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161856', '张帆', '1', '心有猛虎，细嗅蔷薇', 'e10adc3949ba59abbe56e057f20f883e', '6', '', '1');
INSERT INTO `user` VALUES ('10161861', 'lavaaa', '1', '面对压迫、掠夺和孤独，我们的回答是生活', 'e10adc3949ba59abbe56e057f20f883e', '90', '', '1');
INSERT INTO `user` VALUES ('10161890', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161899', '无名', '0', '这个同学很懒，什么也没写', '96e79218965eb72c92a549dd5a330112', '7', '', '0');
INSERT INTO `user` VALUES ('10161900', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161916', 'zzy', '1', '哈哈哈', 'e10adc3949ba59abbe56e057f20f883e', '90', '', '0');
INSERT INTO `user` VALUES ('10161918', '', '0', '', '0cb22e6b058dd6e6f73edca7c3a15221', '0', '', '0');
INSERT INTO `user` VALUES ('10161919', '橙汁分汝一半', '0', '', '1ec92c6b65e0bfb45c1522efa2ad7021', '0', '', '0');
INSERT INTO `user` VALUES ('10161956', '楼上加一', '0', '+1续命', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10161988', '大概是张扬的帆船吧', '0', '我猜的', 'e10adc3949ba59abbe56e057f20f883e', '2', '', '0');
INSERT INTO `user` VALUES ('10162345', '张帆是谁', '0', '好奇', '12b2a9d0b5d5e24768c41881602cfd58', '0', '', '0');
INSERT INTO `user` VALUES ('10163186', '凡言', '0', '', '16d32a0a054abc109287281de4c7f2c1', '0', '', '0');
INSERT INTO `user` VALUES ('10168888', '张帆不要脸', '0', '我比张帆帅', 'f5e5fdd4f6e45a356bee2192958a05bf', '0', '', '0');
INSERT INTO `user` VALUES ('10171000', '张帆的小跟班', '1', '张帆最帅', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171111', '赞', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171227', '潘潘', '0', '懒', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171334', '呼啦啦', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171336', '潘潘', '0', '懒', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171339', '潘潘', '0', '懒', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171355', '潘雅慧', '0', '可以自己去改签名', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171500', '', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171564', '李小龙', '1', '功夫很棒！', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171565', '姚同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171566', '王同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171568', '卜同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171569', '吴同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171572', '李同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171573', '周同学', '1', '可以找我算命', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171574', 'TaeYang', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171575', '陈同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171576', '肖同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171577', '邢同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171578', '刘同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171579', '马同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171580', 'hin', '1', '苦逼药学狗', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171581', 'LAY', '1', '：）', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171582', '嘟嘟_mua', '0', 'mua爱你', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171583', 'Stupid.', '0', 'sha', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171584', '米同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171585', '汪', '0', '生而不为人，我很抱歉', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171586', '肖同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171589', '陈同学', '0', '有约自习的小伙伴嘛？', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171590', '陈同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171591', '马同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171593', '向天笑', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171596', '李同学', '0', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171597', '伦同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171598', '张同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171599', '竺同学', '1', '这个同学很懒，什么也没写', '', '0', '', '0');
INSERT INTO `user` VALUES ('10171703', '潘潘', '0', '签名自己去改', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171758', '二', '0', '仙女本人', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171855', '张帆的小迷妹', '0', '我去', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171856', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171888', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171956', '张帆帅锅', '1', '社会社会', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10171985', '小清新', '0', '我们都要好好的', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10172653', '王琦璟', '0', '自己更换一下标签', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10179805', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10179806', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10180001', '', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10180002', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10180003', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10181888', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10190004', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10190005', '', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10190006', '', '0', '', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');
INSERT INTO `user` VALUES ('10190007', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10190009', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('10190010', '', '0', '', '96e79218965eb72c92a549dd5a330112', '0', '', '0');
INSERT INTO `user` VALUES ('11061256', '无名', '0', '这个同学很懒，什么也没写', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0');

-- ----------------------------
-- Table structure for user_book
-- ----------------------------
DROP TABLE IF EXISTS `user_book`;
CREATE TABLE `user_book` (
  `ubid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `borrowing_number` int(2) NOT NULL,
  `borrowing_time` date NOT NULL,
  `return_time` date NOT NULL,
  `book_rate` int(2) NOT NULL,
  PRIMARY KEY (`ubid`),
  KEY `book_id` (`book_id`),
  KEY `uid` (`uid`),
  CONSTRAINT `user_book_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_book
-- ----------------------------
INSERT INTO `user_book` VALUES ('2', '10161825', '2', '0', '1', '2017-11-11', '2018-03-06', '8');
INSERT INTO `user_book` VALUES ('3', '10161825', '11', '0', '1', '2017-11-11', '2018-03-06', '7');
INSERT INTO `user_book` VALUES ('4', '10161825', '3', '0', '2', '2017-11-11', '2018-03-06', '7');
INSERT INTO `user_book` VALUES ('6', '10131867', '82', '0', '2', '2014-11-12', '2015-03-06', '9');
INSERT INTO `user_book` VALUES ('7', '10131868', '83', '0', '3', '2014-11-11', '2015-03-05', '8');
INSERT INTO `user_book` VALUES ('8', '10131868', '84', '0', '5', '2017-11-11', '2018-03-06', '9');
INSERT INTO `user_book` VALUES ('9', '10131870', '85', '0', '5', '2014-12-13', '2018-03-11', '7');
INSERT INTO `user_book` VALUES ('10', '10131871', '86', '0', '2', '2017-11-11', '2018-03-06', '6');
INSERT INTO `user_book` VALUES ('11', '10131872', '87', '0', '1', '2014-04-11', '2014-05-06', '5');
INSERT INTO `user_book` VALUES ('12', '10131873', '88', '0', '2', '2014-04-11', '2014-05-06', '4');
INSERT INTO `user_book` VALUES ('13', '10131874', '89', '0', '3', '2014-04-11', '2014-05-06', '8');
INSERT INTO `user_book` VALUES ('14', '10131875', '90', '0', '1', '2014-04-19', '2014-05-19', '8');
INSERT INTO `user_book` VALUES ('15', '10131876', '91', '0', '1', '2014-04-11', '2014-05-06', '7');
INSERT INTO `user_book` VALUES ('16', '10131877', '92', '0', '1', '2014-04-11', '2014-05-06', '8');
INSERT INTO `user_book` VALUES ('17', '10131878', '93', '0', '2', '2014-04-11', '2014-05-06', '8');
INSERT INTO `user_book` VALUES ('18', '10131879', '93', '0', '1', '2014-04-11', '2014-05-06', '8');
INSERT INTO `user_book` VALUES ('19', '10131880', '94', '0', '1', '2014-04-11', '2014-05-06', '8');
INSERT INTO `user_book` VALUES ('20', '10141625', '70', '0', '1', '2015-04-11', '2015-05-06', '8');
INSERT INTO `user_book` VALUES ('21', '10141626', '71', '0', '1', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('22', '10141627', '72', '0', '2', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('23', '10141628', '73', '0', '2', '2015-09-11', '2015-12-06', '5');
INSERT INTO `user_book` VALUES ('24', '10141629', '74', '0', '2', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('25', '10141630', '75', '0', '2', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('26', '10141631', '76', '0', '1', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('27', '10141632', '77', '0', '1', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('28', '10141633', '78', '0', '2', '2015-09-11', '2015-12-06', '4');
INSERT INTO `user_book` VALUES ('29', '10141634', '79', '0', '2', '2015-09-11', '2015-12-06', '8');
INSERT INTO `user_book` VALUES ('30', '10141635', '80', '0', '1', '2015-09-11', '2015-12-06', '10');
INSERT INTO `user_book` VALUES ('31', '10141636', '81', '0', '1', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('32', '10151033', '47', '0', '1', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('33', '10151034', '48', '0', '1', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('34', '10151035', '49', '0', '1', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('35', '10151036', '50', '0', '1', '2016-03-14', '2018-03-16', '9');
INSERT INTO `user_book` VALUES ('36', '10151037', '51', '0', '1', '2016-03-14', '2018-03-15', '9');
INSERT INTO `user_book` VALUES ('37', '10151038', '52', '0', '2', '2016-03-14', '2018-03-31', '9');
INSERT INTO `user_book` VALUES ('38', '10151039', '53', '0', '2', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('39', '10151040', '54', '0', '2', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('40', '10151041', '55', '0', '2', '2016-03-14', '2018-03-30', '9');
INSERT INTO `user_book` VALUES ('41', '10151042', '56', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('42', '10151042', '57', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('43', '10151042', '58', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('44', '10151042', '59', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('45', '10151043', '60', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('46', '10151043', '61', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('47', '10151045', '62', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('48', '10151046', '63', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('49', '10151047', '64', '0', '2', '2015-10-11', '2015-12-31', '9');
INSERT INTO `user_book` VALUES ('50', '10151048', '65', '0', '2', '2015-10-11', '2015-12-31', '10');
INSERT INTO `user_book` VALUES ('51', '10151049', '66', '0', '2', '2015-11-28', '2016-03-06', '4');
INSERT INTO `user_book` VALUES ('52', '10151049', '67', '0', '2', '2015-11-28', '2016-03-06', '4');
INSERT INTO `user_book` VALUES ('53', '10151051', '68', '0', '2', '2015-11-28', '2016-03-06', '4');
INSERT INTO `user_book` VALUES ('54', '10151052', '69', '0', '2', '2015-11-28', '2016-03-06', '4');
INSERT INTO `user_book` VALUES ('55', '10161000', '173', '0', '2', '2015-11-28', '2016-03-06', '10');
INSERT INTO `user_book` VALUES ('56', '10161001', '174', '0', '2', '2015-11-28', '2016-03-06', '6');
INSERT INTO `user_book` VALUES ('57', '10161002', '175', '0', '2', '2015-11-28', '2016-03-06', '6');
INSERT INTO `user_book` VALUES ('58', '10161003', '176', '0', '2', '2015-11-28', '2016-03-06', '6');
INSERT INTO `user_book` VALUES ('59', '10161004', '177', '0', '2', '2015-11-28', '2016-03-06', '6');
INSERT INTO `user_book` VALUES ('60', '10161005', '178', '0', '2', '2015-11-28', '2016-03-06', '10');
INSERT INTO `user_book` VALUES ('61', '10161006', '179', '0', '2', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('62', '10161007', '180', '0', '2', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('63', '10161008', '181', '0', '2', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('64', '10161009', '182', '0', '2', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('65', '10161010', '183', '0', '2', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('66', '10161011', '184', '0', '1', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('67', '10161012', '185', '0', '1', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('68', '10161013', '186', '0', '3', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('69', '10161014', '187', '0', '1', '2016-12-01', '2016-01-06', '2');
INSERT INTO `user_book` VALUES ('70', '10161015', '188', '0', '1', '2016-12-01', '2016-01-06', '10');
INSERT INTO `user_book` VALUES ('71', '10161016', '189', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('72', '10161016', '190', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('73', '10161018', '191', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('74', '10161018', '192', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('75', '10161020', '193', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('76', '10161020', '194', '0', '1', '2017-03-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('77', '10161020', '195', '0', '1', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('78', '10161023', '196', '0', '2', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('79', '10161024', '197', '0', '2', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('80', '10161025', '198', '0', '2', '2017-04-03', '2018-04-06', '10');
INSERT INTO `user_book` VALUES ('81', '10161026', '199', '0', '2', '2017-05-01', '2017-09-06', '10');
INSERT INTO `user_book` VALUES ('82', '10161027', '200', '0', '2', '2017-05-01', '2017-09-06', '10');
INSERT INTO `user_book` VALUES ('83', '10161028', '201', '0', '1', '2017-05-01', '2017-09-06', '0');
INSERT INTO `user_book` VALUES ('84', '10161029', '202', '0', '2', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('85', '10161030', '203', '0', '1', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('86', '10161031', '204', '0', '1', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('87', '10161032', '205', '0', '1', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('88', '10161033', '206', '0', '3', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('89', '10161034', '207', '0', '2', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('90', '10161035', '208', '0', '4', '2017-05-01', '2017-09-06', '4');
INSERT INTO `user_book` VALUES ('91', '10161036', '209', '0', '2', '2018-11-11', '2018-12-27', '4');
INSERT INTO `user_book` VALUES ('92', '10161037', '210', '0', '1', '2018-11-11', '2018-12-27', '4');
INSERT INTO `user_book` VALUES ('93', '10161200', '12', '0', '2', '2018-11-11', '2018-12-27', '4');
INSERT INTO `user_book` VALUES ('94', '10161201', '13', '0', '1', '2018-11-11', '2018-12-27', '4');
INSERT INTO `user_book` VALUES ('95', '10161202', '14', '0', '1', '2018-11-11', '2018-12-27', '4');
INSERT INTO `user_book` VALUES ('96', '10161203', '15', '0', '1', '2018-11-11', '2018-12-27', '6');
INSERT INTO `user_book` VALUES ('97', '10161204', '16', '0', '1', '2018-11-11', '2018-12-27', '6');
INSERT INTO `user_book` VALUES ('98', '10161204', '17', '0', '1', '2018-11-11', '2018-12-27', '6');
INSERT INTO `user_book` VALUES ('99', '10161204', '18', '0', '1', '2018-11-11', '2018-12-27', '6');
INSERT INTO `user_book` VALUES ('100', '10161205', '19', '0', '2', '2018-11-11', '2018-12-27', '6');
INSERT INTO `user_book` VALUES ('101', '10161206', '20', '0', '1', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('102', '10161207', '21', '0', '2', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('103', '10161208', '22', '0', '2', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('104', '10161208', '23', '0', '2', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('105', '10161210', '24', '0', '2', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('106', '10161210', '25', '0', '2', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('107', '10161212', '26', '0', '1', '2017-11-01', '2017-12-07', '2');
INSERT INTO `user_book` VALUES ('108', '10161213', '27', '0', '2', '2017-11-01', '2017-12-07', '10');
INSERT INTO `user_book` VALUES ('109', '10161214', '28', '0', '1', '2017-11-01', '2017-12-07', '10');
INSERT INTO `user_book` VALUES ('110', '10161215', '29', '0', '1', '2017-11-01', '2017-12-07', '10');
INSERT INTO `user_book` VALUES ('111', '10161215', '30', '0', '1', '2017-11-21', '2017-11-28', '10');
INSERT INTO `user_book` VALUES ('112', '10161215', '31', '0', '1', '2017-11-21', '2017-11-28', '10');
INSERT INTO `user_book` VALUES ('113', '10161218', '32', '0', '1', '2017-11-21', '2017-11-28', '10');
INSERT INTO `user_book` VALUES ('114', '10161219', '33', '0', '1', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('115', '10161220', '34', '0', '1', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('116', '10161221', '35', '0', '2', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('117', '10161222', '36', '0', '1', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('118', '10161223', '37', '0', '2', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('119', '10161224', '38', '0', '1', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('120', '10161225', '39', '0', '2', '2017-11-21', '2017-11-28', '4');
INSERT INTO `user_book` VALUES ('121', '10161226', '40', '0', '1', '2017-12-11', '2018-03-10', '4');
INSERT INTO `user_book` VALUES ('122', '10161227', '41', '0', '1', '2017-12-11', '2018-03-10', '4');
INSERT INTO `user_book` VALUES ('123', '10161228', '42', '0', '2', '2017-12-11', '2018-03-10', '4');
INSERT INTO `user_book` VALUES ('124', '10161229', '43', '0', '1', '2017-12-11', '2018-03-10', '4');
INSERT INTO `user_book` VALUES ('125', '10161230', '44', '0', '2', '2017-12-11', '2018-03-10', '4');
INSERT INTO `user_book` VALUES ('126', '10161231', '45', '0', '1', '2017-12-11', '2018-03-10', '6');
INSERT INTO `user_book` VALUES ('127', '10161232', '46', '0', '1', '2017-12-11', '2018-03-10', '6');
INSERT INTO `user_book` VALUES ('128', '10161400', '95', '0', '1', '2017-12-11', '2018-03-10', '6');
INSERT INTO `user_book` VALUES ('129', '10161401', '96', '0', '2', '2017-12-11', '2018-03-10', '6');
INSERT INTO `user_book` VALUES ('130', '10161402', '97', '0', '1', '2017-12-11', '2018-03-10', '6');
INSERT INTO `user_book` VALUES ('131', '10161402', '98', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('132', '10161404', '99', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('133', '10161405', '100', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('134', '10161406', '101', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('135', '10161407', '102', '0', '2', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('136', '10161408', '103', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('137', '10161409', '104', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('138', '10161410', '105', '0', '2', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('139', '10161411', '106', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('140', '10161412', '107', '0', '1', '2017-09-11', '2017-09-11', '6');
INSERT INTO `user_book` VALUES ('141', '10161413', '108', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('142', '10161414', '109', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('143', '10171355', '110', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('144', '10161416', '111', '0', '2', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('145', '10161417', '112', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('146', '10161418', '113', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('147', '10161419', '114', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('148', '10161420', '115', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('149', '10161420', '116', '0', '2', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('150', '10161421', '117', '0', '1', '2017-09-21', '2017-10-16', '2');
INSERT INTO `user_book` VALUES ('151', '10171703', '118', '0', '2', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('152', '10171703', '119', '0', '1', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('153', '10171703', '120', '0', '1', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('154', '10171703', '121', '0', '2', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('155', '10171703', '122', '0', '1', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('156', '10171703', '123', '0', '1', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('157', '10161428', '124', '0', '1', '2017-09-24', '2017-12-01', '2');
INSERT INTO `user_book` VALUES ('158', '10161429', '125', '0', '1', '2017-09-24', '2017-12-01', '10');
INSERT INTO `user_book` VALUES ('159', '10161430', '126', '0', '1', '2017-09-24', '2017-12-01', '10');
INSERT INTO `user_book` VALUES ('160', '10161431', '127', '0', '1', '2017-11-26', '2018-01-15', '10');
INSERT INTO `user_book` VALUES ('161', '10161431', '128', '0', '1', '2017-11-24', '2018-01-10', '10');
INSERT INTO `user_book` VALUES ('162', '10161433', '129', '0', '3', '2017-11-26', '2018-01-15', '10');
INSERT INTO `user_book` VALUES ('163', '10161434', '130', '0', '1', '2017-11-26', '2018-01-15', '10');
INSERT INTO `user_book` VALUES ('164', '10171758', '131', '0', '1', '2017-09-20', '2018-01-11', '4');
INSERT INTO `user_book` VALUES ('165', '10171758', '132', '0', '1', '2017-09-26', '2018-01-04', '4');
INSERT INTO `user_book` VALUES ('166', '10171758', '133', '0', '1', '2017-11-26', '2018-01-15', '4');
INSERT INTO `user_book` VALUES ('167', '10171758', '134', '0', '1', '2017-11-26', '2018-01-15', '4');
INSERT INTO `user_book` VALUES ('168', '10171758', '135', '0', '1', '2017-11-26', '2018-01-15', '4');
INSERT INTO `user_book` VALUES ('170', '10171564', '137', '0', '2', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('171', '10171565', '138', '0', '2', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('172', '10171566', '139', '0', '1', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('173', '10171566', '140', '0', '1', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('174', '10171568', '141', '0', '1', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('175', '10171569', '142', '0', '2', '2017-10-09', '2017-10-26', '4');
INSERT INTO `user_book` VALUES ('176', '10171569', '143', '0', '2', '2017-10-09', '2017-10-26', '6');
INSERT INTO `user_book` VALUES ('177', '10171569', '144', '0', '2', '2017-10-09', '2017-10-26', '6');
INSERT INTO `user_book` VALUES ('178', '10171572', '145', '0', '2', '2017-10-09', '2017-10-26', '6');
INSERT INTO `user_book` VALUES ('179', '10171573', '146', '0', '2', '2017-10-09', '2017-10-26', '6');
INSERT INTO `user_book` VALUES ('180', '10171574', '147', '0', '2', '2018-03-05', '2018-03-06', '6');
INSERT INTO `user_book` VALUES ('181', '10171575', '148', '0', '2', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('182', '10171576', '149', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('183', '10171577', '150', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('184', '10171578', '151', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('185', '10171579', '152', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('186', '10171580', '153', '0', '2', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('187', '10171581', '154', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('188', '10171582', '155', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('189', '10171583', '156', '0', '1', '2018-03-05', '2018-03-06', '2');
INSERT INTO `user_book` VALUES ('190', '10171584', '157', '0', '2', '2017-11-19', '2017-12-02', '2');
INSERT INTO `user_book` VALUES ('191', '10171585', '158', '0', '1', '2017-11-19', '2017-12-02', '2');
INSERT INTO `user_book` VALUES ('192', '10171586', '159', '0', '2', '2017-11-30', '2017-12-08', '2');
INSERT INTO `user_book` VALUES ('193', '10171586', '160', '0', '2', '2017-11-19', '2017-12-02', '2');
INSERT INTO `user_book` VALUES ('194', '10171586', '161', '0', '2', '2017-11-19', '2017-12-02', '2');
INSERT INTO `user_book` VALUES ('195', '10171589', '162', '0', '2', '2017-11-19', '2017-12-02', '2');
INSERT INTO `user_book` VALUES ('196', '10171590', '163', '0', '2', '2017-11-28', '2017-12-15', '2');
INSERT INTO `user_book` VALUES ('197', '10171591', '164', '0', '2', '2017-11-23', '2017-12-31', '2');
INSERT INTO `user_book` VALUES ('198', '10171591', '165', '0', '2', '2017-11-19', '2017-12-02', '10');
INSERT INTO `user_book` VALUES ('199', '10171593', '166', '0', '2', '2017-11-22', '2017-12-02', '10');
INSERT INTO `user_book` VALUES ('200', '10171593', '167', '0', '1', '2017-12-08', '2018-03-07', '10');
INSERT INTO `user_book` VALUES ('201', '10171593', '168', '0', '1', '2017-12-03', '2018-03-07', '10');
INSERT INTO `user_book` VALUES ('202', '10172653', '169', '0', '1', '2017-12-03', '2018-03-07', '10');
INSERT INTO `user_book` VALUES ('203', '10172653', '170', '0', '1', '2017-12-07', '2018-03-07', '10');
INSERT INTO `user_book` VALUES ('204', '10172653', '171', '0', '1', '2017-12-03', '2018-03-07', '7');
INSERT INTO `user_book` VALUES ('205', '10172653', '172', '0', '1', '2017-12-03', '2018-03-07', '6');
INSERT INTO `user_book` VALUES ('206', '10161825', '5', '0', '1', '2017-12-04', '2018-03-07', '4');
INSERT INTO `user_book` VALUES ('207', '10161825', '6', '0', '2', '2017-12-03', '2018-03-07', '5');
INSERT INTO `user_book` VALUES ('208', '10161825', '7', '0', '4', '2017-12-03', '2018-03-07', '9');
INSERT INTO `user_book` VALUES ('209', '10161825', '8', '0', '2', '2017-12-03', '2018-03-07', '8');
INSERT INTO `user_book` VALUES ('210', '10161825', '9', '0', '1', '2017-12-03', '2018-03-07', '9');
INSERT INTO `user_book` VALUES ('211', '10161825', '10', '0', '2', '2017-12-03', '2018-03-07', '7');
INSERT INTO `user_book` VALUES ('214', '10161825', '6', '0', '0', '0000-00-00', '0000-00-00', '3');
INSERT INTO `user_book` VALUES ('215', '10161825', '11', '0', '0', '0000-00-00', '0000-00-00', '8');
INSERT INTO `user_book` VALUES ('216', '10161825', '212', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('217', '10161825', '213', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('218', '10161825', '214', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('219', '10161825', '215', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('220', '10161825', '211', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('221', '10161825', '212', '0', '0', '0000-00-00', '0000-00-00', '4');
INSERT INTO `user_book` VALUES ('222', '10161825', '213', '0', '0', '0000-00-00', '0000-00-00', '1');
INSERT INTO `user_book` VALUES ('223', '10161825', '214', '0', '0', '0000-00-00', '0000-00-00', '1');
INSERT INTO `user_book` VALUES ('224', '10161825', '215', '0', '0', '0000-00-00', '0000-00-00', '1');
INSERT INTO `user_book` VALUES ('225', '10161825', '216', '0', '0', '0000-00-00', '0000-00-00', '1');
INSERT INTO `user_book` VALUES ('226', '10161916', '1', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('227', '10161916', '1', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('228', '10161916', '1', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('229', '10161916', '1', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('230', '10161916', '1', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('231', '10161916', '4', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('232', '10161856', '34', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('233', '10161856', '32', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('234', '10161856', '32', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('235', '10161861', '39', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('236', '10161861', '11', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('237', '10172653', '50', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('238', '10172653', '51', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('239', '10161861', '6', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('240', '10171355', '8', '1', '0', '2018-03-22', '2018-03-24', '0');
INSERT INTO `user_book` VALUES ('241', '10161916', '35', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('242', '10161825', '39', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('243', '10171758', '7', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('244', '10161825', '217', '0', '0', '0000-00-00', '0000-00-00', '6');
INSERT INTO `user_book` VALUES ('245', '10161825', '218', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('246', '10160405', '2', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('247', '10160405', '228', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('248', '10160405', '228', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('249', '10160405', '23', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('250', '10161825', '22', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('251', '10161825', '21', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('252', '10161825', '6', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('253', '10161825', '23', '1', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('254', '10161825', '229', '0', '0', '0000-00-00', '0000-00-00', '6');
INSERT INTO `user_book` VALUES ('255', '10161825', '230', '0', '0', '0000-00-00', '0000-00-00', '0');
INSERT INTO `user_book` VALUES ('256', '10161825', '231', '0', '0', '0000-00-00', '0000-00-00', '6');

-- ----------------------------
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
CREATE TABLE `user_course` (
  `ucid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `cname` varchar(25) CHARACTER SET utf8 NOT NULL,
  `teacher` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `credit` int(2) DEFAULT NULL,
  `course_hour` int(5) DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `examination` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `textbook` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `course_nature` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ucid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_course
-- ----------------------------
INSERT INTO `user_course` VALUES ('1', '10161825', '1', '0', '高等数学（上）', '赵瑞芳', '6', '120', '学习函数、导数与极限、微积分、无穷级数', '华东理工大学', '平时分30%+期末考试闭卷70%', '高等数学上册（殷锡鸣）', '必修');
INSERT INTO `user_course` VALUES ('2', '10161825', '3', '0', '网络攻防与实践', '杨建国', '2', '32', '讲解黑客历史、建立虚拟机、组网、漏洞扫描技术。有教室授课和上机，上机是一步一步示范如何做。', '华东理工大学', '课程大作业（一个作品）+开卷试卷', '网络攻防技术教程第二版', '必修');
INSERT INTO `user_course` VALUES ('3', '10161825', '4', '0', '文献检索', '', '1', '16', null, '上海交通大学', '平时成绩+上机考试（单选+多选）', '文献检索与知识发现指南', '选修');
INSERT INTO `user_course` VALUES ('4', '10161853', '1', '0', '高等数学（上）', '赵瑞芳', '6', '120', '学习函数、导数与极限、微积分、无穷级数', '华东理工大学', '平时分30%+期末考试闭卷70%', '高等数学上册（殷锡鸣）', '选修');
INSERT INTO `user_course` VALUES ('5', '10171758', '0', '0', '', null, null, null, null, null, null, null, null);
INSERT INTO `user_course` VALUES ('6', '0', '0', '0', '', null, null, null, null, null, null, null, null);
INSERT INTO `user_course` VALUES ('7', '0', '0', '0', '', null, null, null, null, null, null, null, null);
INSERT INTO `user_course` VALUES ('8', '0', '0', '0', '', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_favorite_book
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_book`;
CREATE TABLE `user_favorite_book` (
  `ufbid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  PRIMARY KEY (`ufbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_favorite_book
-- ----------------------------

-- ----------------------------
-- Table structure for user_favorite_course
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_course`;
CREATE TABLE `user_favorite_course` (
  `ufcid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  PRIMARY KEY (`ufcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_favorite_course
-- ----------------------------

-- ----------------------------
-- Table structure for user_interest_label
-- ----------------------------
DROP TABLE IF EXISTS `user_interest_label`;
CREATE TABLE `user_interest_label` (
  `uiid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `iid` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  PRIMARY KEY (`uiid`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_interest_label
-- ----------------------------
INSERT INTO `user_interest_label` VALUES ('2', '10161861', '2', '0');
INSERT INTO `user_interest_label` VALUES ('11', '10161916', '7', '0');
INSERT INTO `user_interest_label` VALUES ('12', '10161916', '7', '0');
INSERT INTO `user_interest_label` VALUES ('13', '10161916', '9', '0');
INSERT INTO `user_interest_label` VALUES ('14', '10161916', '6', '0');
INSERT INTO `user_interest_label` VALUES ('15', '10161916', '8', '0');
INSERT INTO `user_interest_label` VALUES ('40', '10171985', '7', '0');
INSERT INTO `user_interest_label` VALUES ('41', '10171985', '9', '0');
INSERT INTO `user_interest_label` VALUES ('42', '10171985', '11', '0');
INSERT INTO `user_interest_label` VALUES ('43', '10171985', '13', '0');
INSERT INTO `user_interest_label` VALUES ('44', '10110000', '7', '0');
INSERT INTO `user_interest_label` VALUES ('45', '10110000', '9', '0');
INSERT INTO `user_interest_label` VALUES ('46', '10110000', '11', '0');
INSERT INTO `user_interest_label` VALUES ('47', '10110000', '13', '0');
INSERT INTO `user_interest_label` VALUES ('48', '10110000', '11', '0');
INSERT INTO `user_interest_label` VALUES ('49', '10110000', '13', '0');
INSERT INTO `user_interest_label` VALUES ('50', '10171000', '5', '0');
INSERT INTO `user_interest_label` VALUES ('51', '10171000', '7', '0');
INSERT INTO `user_interest_label` VALUES ('52', '10171000', '9', '0');
INSERT INTO `user_interest_label` VALUES ('53', '10000006', '0', '0');
INSERT INTO `user_interest_label` VALUES ('54', '10000006', '3', '0');
INSERT INTO `user_interest_label` VALUES ('55', '10000006', '4', '0');
INSERT INTO `user_interest_label` VALUES ('56', '10000006', '5', '0');
INSERT INTO `user_interest_label` VALUES ('57', '10000006', '6', '0');
INSERT INTO `user_interest_label` VALUES ('58', '10000006', '7', '0');
INSERT INTO `user_interest_label` VALUES ('59', '10000006', '8', '0');
INSERT INTO `user_interest_label` VALUES ('60', '10000006', '9', '0');
INSERT INTO `user_interest_label` VALUES ('61', '10171758', '5', '0');
INSERT INTO `user_interest_label` VALUES ('62', '10171758', '6', '0');
INSERT INTO `user_interest_label` VALUES ('63', '10171355', '2', '0');
INSERT INTO `user_interest_label` VALUES ('64', '10171355', '12', '0');
INSERT INTO `user_interest_label` VALUES ('65', '10172653', '5', '0');
INSERT INTO `user_interest_label` VALUES ('66', '10172653', '12', '0');
INSERT INTO `user_interest_label` VALUES ('67', '10172653', '17', '0');
INSERT INTO `user_interest_label` VALUES ('68', '10171703', '5', '0');
INSERT INTO `user_interest_label` VALUES ('69', '10171703', '6', '0');
INSERT INTO `user_interest_label` VALUES ('70', '10171703', '10', '0');
INSERT INTO `user_interest_label` VALUES ('71', '10000008', '2', '0');
INSERT INTO `user_interest_label` VALUES ('72', '10000008', '3', '0');
INSERT INTO `user_interest_label` VALUES ('73', '10000008', '5', '0');
INSERT INTO `user_interest_label` VALUES ('74', '10000008', '7', '0');
INSERT INTO `user_interest_label` VALUES ('75', '10000008', '9', '0');
INSERT INTO `user_interest_label` VALUES ('76', '10000008', '12', '0');
INSERT INTO `user_interest_label` VALUES ('77', '10000008', '13', '0');
INSERT INTO `user_interest_label` VALUES ('78', '10000008', '16', '0');
INSERT INTO `user_interest_label` VALUES ('79', '10181888', '5', '0');
INSERT INTO `user_interest_label` VALUES ('80', '10181888', '6', '0');
INSERT INTO `user_interest_label` VALUES ('81', '10141414', '16', '0');
INSERT INTO `user_interest_label` VALUES ('82', '10141414', '18', '0');
INSERT INTO `user_interest_label` VALUES ('83', '10171336', '2', '0');
INSERT INTO `user_interest_label` VALUES ('84', '10171336', '4', '0');
INSERT INTO `user_interest_label` VALUES ('85', '10171336', '7', '0');
INSERT INTO `user_interest_label` VALUES ('86', '10171227', '2', '0');
INSERT INTO `user_interest_label` VALUES ('87', '10171227', '4', '0');
INSERT INTO `user_interest_label` VALUES ('88', '10171227', '5', '0');
INSERT INTO `user_interest_label` VALUES ('89', '10171227', '7', '0');
INSERT INTO `user_interest_label` VALUES ('90', '10171339', '2', '0');
INSERT INTO `user_interest_label` VALUES ('91', '10171339', '4', '0');
INSERT INTO `user_interest_label` VALUES ('92', '10171339', '6', '0');
INSERT INTO `user_interest_label` VALUES ('93', '10171339', '7', '0');
INSERT INTO `user_interest_label` VALUES ('94', '10000009', '0', '0');
INSERT INTO `user_interest_label` VALUES ('95', '10000009', '2', '0');
INSERT INTO `user_interest_label` VALUES ('96', '10000009', '4', '0');
INSERT INTO `user_interest_label` VALUES ('97', '10000009', '9', '0');
INSERT INTO `user_interest_label` VALUES ('98', '10000009', '13', '0');
INSERT INTO `user_interest_label` VALUES ('99', '10000009', '14', '0');
INSERT INTO `user_interest_label` VALUES ('100', '10000009', '16', '0');
INSERT INTO `user_interest_label` VALUES ('101', '10000009', '17', '0');
INSERT INTO `user_interest_label` VALUES ('102', '10000010', '0', '0');
INSERT INTO `user_interest_label` VALUES ('103', '10000010', '3', '0');
INSERT INTO `user_interest_label` VALUES ('104', '10000010', '5', '0');
INSERT INTO `user_interest_label` VALUES ('105', '10000010', '8', '0');
INSERT INTO `user_interest_label` VALUES ('106', '10000010', '16', '0');
INSERT INTO `user_interest_label` VALUES ('107', '10000010', '18', '0');
INSERT INTO `user_interest_label` VALUES ('108', '10171500', '9', '0');
INSERT INTO `user_interest_label` VALUES ('109', '10171500', '11', '0');
INSERT INTO `user_interest_label` VALUES ('110', '10171956', '13', '0');
INSERT INTO `user_interest_label` VALUES ('111', '10171956', '15', '0');
INSERT INTO `user_interest_label` VALUES ('112', '10171855', '7', '0');
INSERT INTO `user_interest_label` VALUES ('113', '10171855', '9', '0');
INSERT INTO `user_interest_label` VALUES ('114', '10171855', '11', '0');
INSERT INTO `user_interest_label` VALUES ('115', '10171855', '13', '0');
INSERT INTO `user_interest_label` VALUES ('116', '10160405', '2', '0');
INSERT INTO `user_interest_label` VALUES ('117', '10160405', '3', '0');
INSERT INTO `user_interest_label` VALUES ('118', '10160405', '5', '0');
INSERT INTO `user_interest_label` VALUES ('119', '10160405', '6', '0');
INSERT INTO `user_interest_label` VALUES ('120', '10160405', '9', '0');
INSERT INTO `user_interest_label` VALUES ('184', '10163186', '0', '0');
INSERT INTO `user_interest_label` VALUES ('185', '10163186', '1', '0');
INSERT INTO `user_interest_label` VALUES ('186', '10163186', '2', '0');
INSERT INTO `user_interest_label` VALUES ('187', '10163186', '3', '0');
INSERT INTO `user_interest_label` VALUES ('188', '10163186', '9', '0');
INSERT INTO `user_interest_label` VALUES ('189', '10163186', '16', '0');
INSERT INTO `user_interest_label` VALUES ('190', '10163186', '18', '0');
INSERT INTO `user_interest_label` VALUES ('191', '10161852', '4', '0');
INSERT INTO `user_interest_label` VALUES ('192', '10161852', '5', '0');
INSERT INTO `user_interest_label` VALUES ('193', '10161852', '6', '0');
INSERT INTO `user_interest_label` VALUES ('194', '10161852', '10', '0');
INSERT INTO `user_interest_label` VALUES ('195', '10161852', '18', '0');
INSERT INTO `user_interest_label` VALUES ('196', '10180001', '0', '0');
INSERT INTO `user_interest_label` VALUES ('213', '10161856', '1', '0');
INSERT INTO `user_interest_label` VALUES ('214', '10161856', '4', '0');
INSERT INTO `user_interest_label` VALUES ('215', '10161856', '5', '0');
INSERT INTO `user_interest_label` VALUES ('216', '10161856', '6', '0');
INSERT INTO `user_interest_label` VALUES ('217', '10161856', '7', '0');
INSERT INTO `user_interest_label` VALUES ('218', '10161856', '13', '0');
INSERT INTO `user_interest_label` VALUES ('219', '10161856', '14', '0');
INSERT INTO `user_interest_label` VALUES ('220', '10161856', '18', '0');
INSERT INTO `user_interest_label` VALUES ('230', '10161919', '2', '0');
INSERT INTO `user_interest_label` VALUES ('231', '10161919', '4', '0');
INSERT INTO `user_interest_label` VALUES ('232', '10161919', '5', '0');
INSERT INTO `user_interest_label` VALUES ('233', '10161919', '6', '0');
INSERT INTO `user_interest_label` VALUES ('234', '10161919', '18', '0');
INSERT INTO `user_interest_label` VALUES ('241', '10161918', '4', '0');
INSERT INTO `user_interest_label` VALUES ('242', '10161918', '5', '0');
INSERT INTO `user_interest_label` VALUES ('243', '10161918', '6', '0');
INSERT INTO `user_interest_label` VALUES ('244', '10161918', '9', '0');
INSERT INTO `user_interest_label` VALUES ('245', '10161918', '10', '0');
INSERT INTO `user_interest_label` VALUES ('246', '10161918', '18', '0');
INSERT INTO `user_interest_label` VALUES ('260', '10161825', '0', '0');
INSERT INTO `user_interest_label` VALUES ('261', '10161825', '1', '0');
INSERT INTO `user_interest_label` VALUES ('262', '10161825', '2', '0');
INSERT INTO `user_interest_label` VALUES ('263', '10161825', '3', '0');
INSERT INTO `user_interest_label` VALUES ('264', '10161825', '7', '0');
INSERT INTO `user_interest_label` VALUES ('265', '10161825', '9', '0');
INSERT INTO `user_interest_label` VALUES ('266', '10161825', '11', '0');
INSERT INTO `user_interest_label` VALUES ('267', '10161825', '16', '0');
