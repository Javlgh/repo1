/*
 Navicat Premium Data Transfer

 Source Server         : 39.105.145.195_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 39.105.145.195:3306
 Source Schema         : dev_xt

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 31/12/2021 12:36:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学号',
  `student_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `student_pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '888888' COMMENT '学生密码默认888888',
  `student_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `student_phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `pd` int(20) NULL DEFAULT 0 COMMENT '判断值0表示选了1表示未选',
  `college` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `student_updater` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `class_teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班主任n(new)',
  `dy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导',
  `new_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新班级',
  `old_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '旧班级',
  `old_teacher_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班主任（old）',
  PRIMARY KEY (`student_id`) USING BTREE,
  INDEX `major_id_fk`(`major`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201601020112', '刘兴泽', '888888', '男', '18655367778', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J02', '1812', NULL);
INSERT INTO `student` VALUES ('2017020509', '李文静', '888888', NULL, '18184189428', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2017020722', '梁佳雪', '888888', '女', '15946218172', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H01', '计科1812', NULL);
INSERT INTO `student` VALUES ('2018020101', '李想', '888888', NULL, '15765095799', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020102', '陈俊吉', '888888', '男', '17361433689', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J01', '计科1801', NULL);
INSERT INTO `student` VALUES ('2018020103', '邓帅', '888888', '男', '13198750501', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J01', '1801', NULL);
INSERT INTO `student` VALUES ('2018020104', '郭婉莹', '888888', NULL, '13763470726', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020105', '侯颖', '888888', NULL, '19845061576', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020106', '李存兴', '888888', NULL, '13687993350', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020107', '刘东衢', '888888', NULL, '15108492481', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020108', '刘家澳', '888888', NULL, '13796324593', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020109', '刘湘', '888888', NULL, '15093936667', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020110', '刘小嘉', '888888', '', '17788186687', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '', '计科18H01', '', NULL);
INSERT INTO `student` VALUES ('2018020111', '刘雨薇', '888888', NULL, '18724358399', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020113', '罗忠诚', '888888', NULL, '18581777903', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020114', '米海连', '888888', NULL, '18599923971', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020116', '乔一峰', '888888', NULL, '15688173909', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020117', '宋进', '888888', NULL, '17737819507', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020118', '唐杰', '888888', NULL, '18382080289', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', NULL, '计科18游01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020119', '王浩阳', '888888', '', '18839510398', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '', '计科18网01', '', NULL);
INSERT INTO `student` VALUES ('2018020120', '王皓', '888888', NULL, '18804620407', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020121', '王宏伟', '888888', NULL, '18804609495', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020122', '王继伟', '888888', NULL, '18804620247', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020123', '熊家海', '888888', NULL, '18845150492', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020124', '徐晓倩', '888888', '女', '18111295372', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J01', '计科1801', NULL);
INSERT INTO `student` VALUES ('2018020125', '杨洁', '888888', NULL, '17828812320', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020126', '张海霞', '888888', NULL, '18030607649', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020127', '张鸿基', '888888', '男', '15045827522', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '张兴河', '计科18H01', '计科1801', NULL);
INSERT INTO `student` VALUES ('2018020128', '赵立志', '888888', '男', '19845061297', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '姜久鑫', '计科18网01', '', NULL);
INSERT INTO `student` VALUES ('2018020129', '赵薪博', '888888', NULL, NULL, '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020130', '钟浩', '888888', NULL, '13624623093', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020201', '陈思思', '888888', NULL, '14708573494', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020202', '陈翔', '888888', NULL, '18970823516', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020203', '冯平安', '888888', NULL, '14780209266', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020204', '黄建名', '888888', NULL, '15681483817', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020205', '黄梦蕾', '888888', NULL, '18387169351', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020206', '江德鸿', '888888', NULL, '15881883011', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020207', '晋洵昆', '888888', NULL, '17638376631', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020208', '雷晨栋', '888888', '男', '18804635778', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '姜久鑫', '计科18云01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020209', '李家乐', '888888', NULL, '18804621508', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020210', '李松', '888888', '男', '15284112049', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020211', '李欣如', '888888', NULL, '18204697881', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020212', '李志超', '888888', NULL, '13091318176', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020213', '李紫微', '888888', NULL, '17779367638', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020214', '刘迪', '888888', NULL, '13846536340', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020215', '刘航', '888888', NULL, '13244554253', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020216', '刘诗童', '888888', NULL, '15649926572', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020217', '邵泓杰', '888888', '男', '15282326008', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020218', '唐翊棥', '888888', '男', '17608154484', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020219', '王宁', '888888', NULL, '16645522979', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020220', '王盼如', '888888', '女', '18642692085', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020221', '王鑫鑫', '888888', NULL, '18804610140', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020222', '徐佳茵', '888888', '女', '13796229083', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020223', '杨国庆', '888888', NULL, '17866042007', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020224', '杨杰', '888888', NULL, '18845045749', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020225', '杨昭银', '888888', NULL, '16603625990', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020226', '应允涛', '888888', NULL, '17633378968', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020227', '余思毅', '888888', '男', '18090389130', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '姜久鑫', '计科18网01', '计科1802', NULL);
INSERT INTO `student` VALUES ('2018020228', '张舒童', '888888', NULL, '18804621686', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020229', '赵浩然', '888888', NULL, '15397946513', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020230', '郑怀钰', '888888', NULL, '18646640762', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020301', '白鑫', '888888', '', '19845061745', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '姜久鑫', '计科18网01', '', NULL);
INSERT INTO `student` VALUES ('2018020302', '陈英凯', '888888', '', '13704567210', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '', NULL);
INSERT INTO `student` VALUES ('2018020303', '代冲波', '888888', '男', '15288015868', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '', '计科18嵌01', '', NULL);
INSERT INTO `student` VALUES ('2018020304', '丁佩东', '888888', NULL, '18346902508', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020305', '高鑫', '888888', NULL, '13163476167', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020306', '葛开源', '888888', '', '18845045715', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '', '计科18网01', '', NULL);
INSERT INTO `student` VALUES ('2018020307', '韩士富', '888888', NULL, '19845061864', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020308', '胡焱焱', '888888', NULL, '19845062124', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020309', '黄寿海', '888888', NULL, '19845062103', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020310', '吉新岩', '888888', '男', '15164572568', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '计科1803', NULL);
INSERT INTO `student` VALUES ('2018020311', '蒋辰萱', '888888', '女', '18277301177', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1803', NULL);
INSERT INTO `student` VALUES ('2018020312', '李佳凝', '888888', NULL, '18846938362', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020313', '刘明思', '888888', NULL, '13557849175', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020314', '刘雅', '888888', '女', '17724046004', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '张兴和', '计科18H02', '计科1803', NULL);
INSERT INTO `student` VALUES ('2018020315', '马安庄园', '888888', NULL, '13796316747', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020316', '马梓轩', '888888', NULL, NULL, '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020317', '欧潘婷', '888888', NULL, '19845061996', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020320', '王峰', '888888', NULL, '13836726072', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020321', '王金成', '888888', NULL, '13555337624', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020323', '徐荣洋', '888888', NULL, '18946265172', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020324', '杨仲宇', '888888', NULL, '15946455532', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020325', '叶胜雄', '888888', NULL, '19845061286', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020326', '殷爽', '888888', '女', '18045276726', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1803', NULL);
INSERT INTO `student` VALUES ('2018020327', '尹馨柔', '888888', NULL, '18804624598', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020328', '于连泽', '888888', NULL, '15734589262', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020329', '于洋', '888888', NULL, '18346076165', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020330', '羽锂', '888888', NULL, NULL, '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020401', '敖旌旗', '888888', NULL, '18227243997', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020402', '曹治冲', '888888', '男', '19845061539', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J05', '1804', NULL);
INSERT INTO `student` VALUES ('2018020403', '常焕昇', '888888', NULL, '13936766651', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020404', '陈亚安', '888888', NULL, '18290046930', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020405', '董新宇', '888888', NULL, '15174509940', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020406', '樊晓雪', '888888', NULL, '15845710527', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020407', '郭景伟', '888888', NULL, '17513535209', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020408', '韩佳乐', '888888', NULL, NULL, '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020409', '何明虎', '888888', NULL, '18687192127', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020410', '黄勇文', '888888', '', '15878062232', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '', '计科18J05', '', NULL);
INSERT INTO `student` VALUES ('2018020411', '荆叹', '888888', '男', '18333985187', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', '姜久鑫', '计科18游01', '计科1804', NULL);
INSERT INTO `student` VALUES ('2018020412', '李冠澎', '888888', NULL, NULL, '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020413', '李经嘉', '888888', NULL, '18077372579', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020414', '李文韬', '888888', NULL, '13687719531', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020415', '李阳', '888888', '男', '15278926296', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', '张兴和', '计科18H03', '计科1804', NULL);
INSERT INTO `student` VALUES ('2018020416', '林书宇', '888888', NULL, '19845062056', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020417', '林彦斌', '888888', NULL, '18287891215', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020418', '马昕蕊', '888888', NULL, '18346287422', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020419', '宋祥龙', '888888', '男', '15545588612', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J05', '1804', NULL);
INSERT INTO `student` VALUES ('2018020420', '王德灿', '888888', NULL, '19845061254', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020421', '王俊骁', '888888', NULL, '19845061361', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020423', '王伟业', '888888', NULL, '19845061229', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020424', '吴健', '888888', NULL, '19845061295', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020425', '杨慧莹', '888888', NULL, '19845061852', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020426', '杨杰辉', '888888', NULL, '18804652603', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020427', '杨明', '888888', NULL, '15665009806', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020428', '赵相东', '888888', '', '18845045395', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', '', '计科18H03', '', NULL);
INSERT INTO `student` VALUES ('2018020429', '周立佳', '888888', NULL, '19845062074', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020430', '朱玉林', '888888', NULL, '19845061484', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020501', '陈明扬', '888888', NULL, '19845061621', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020502', '冯昌义', '888888', NULL, '18804652530', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020503', '付佳诺', '888888', NULL, '18404085805', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020504', '郭栋文', '888888', NULL, '18567868179', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020505', '何顺', '888888', NULL, '13877835102', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020506', '来志梅', '888888', '女', '19845061769', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '姜久鑫', '计科18网01', '计科1805', NULL);
INSERT INTO `student` VALUES ('2018020507', '李行磊', '888888', NULL, '15246939775', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020508', '李嘉宁', '888888', NULL, '18804650118', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020509', '李鑫', '888888', NULL, '13945852012', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020510', '廖家明', '888888', NULL, '15983830114', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020511', '马福庆', '888888', NULL, '19845061334', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020512', '马爽', '888888', NULL, '18846605071', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020513', '蒙小龙', '888888', NULL, '16607737759', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020514', '莫非', '888888', NULL, '18103668092', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020515', '宁诚', '888888', NULL, '19845061623', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020516', '齐玉璇', '888888', NULL, '19845061675', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020517', '邱天锋', '888888', NULL, '18945487888', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020518', '任仕博', '888888', NULL, '15146806887', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020519', '宋春锋', '888888', NULL, '13136957357', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020520', '孙骁', '888888', NULL, '13354598259', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020521', '田渤', '888888', NULL, '18403829099', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020522', '魏龙', '888888', '男', '15045561312', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1805', NULL);
INSERT INTO `student` VALUES ('2018020523', '吴琼', '888888', NULL, '18845045598', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020524', '余应平', '888888', NULL, '19845061413', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020525', '原董铧', '888888', NULL, '18776477102', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020526', '张广', '888888', NULL, '18738582011', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020527', '张茹雪', '888888', NULL, '15890567119', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020528', '张鑫怡', '888888', '女', '19845061524', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '姜久鑫', '计科18网01', '计科1805', NULL);
INSERT INTO `student` VALUES ('2018020529', '钟关俊', '888888', NULL, '18804627464', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020530', '朱俊廷', '888888', NULL, '13981412810', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', NULL, '计科18游01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020601', '曹  聪', '888888', '', '18839623293', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '', '计科18网01', '', NULL);
INSERT INTO `student` VALUES ('2018020602', '崔泊巍', '888888', NULL, '18745637616', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020603', '崔景越', '888888', '男', '13763525714', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '张兴河', '计科18网01', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020604', '代平旭', '888888', NULL, '18804620214', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020605', '丁祥千', '888888', '男', '18804620248', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '张兴河', '计科18网01', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020606', '段斯琪', '888888', NULL, '17645507840', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020607', '冯志鑫', '888888', NULL, '18804608690', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020608', '付  天', '888888', NULL, '15765536685', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020609', '李贤伟', '888888', '男', '18804651158', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', '姜久鑫', '计科18H03', '1806', NULL);
INSERT INTO `student` VALUES ('2018020610', '刘成龙', '888888', '男', '18246648068', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '张兴河', '计科18J05', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020611', '刘婷婷', '888888', NULL, '18804621057', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020612', '马欣宇', '888888', '男', '18804609249', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', '张兴河', '计科18H03', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020613', '秦修良', '888888', '男', '18845045584', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J05', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020614', '邵志航', '888888', NULL, '18704582529', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020615', '孙文博', '888888', NULL, '19845062090', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020616', '孙  阳', '888888', NULL, '13846463990', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020617', '王国峰', '888888', NULL, '13946015869', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020618', '王麒凯', '888888', NULL, '18804627452', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020619', '王喜凤', '888888', NULL, '13194559680', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020620', '王欣雨', '888888', '女', '18845044669', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '', '计科18嵌01', '', NULL);
INSERT INTO `student` VALUES ('2018020621', '王智辉', '888888', '男', '19845062097', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', '张兴河', '计科18网01', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020623', '吴宇航', '888888', '男', '18804621608', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J05', '', NULL);
INSERT INTO `student` VALUES ('2018020624', '肖  帅', '888888', NULL, '18845045275', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020625', '殷启涵', '888888', NULL, '13846331883', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020626', '于浩洋', '888888', '男', '15845042941', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J05', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020627', '张洪飞', '888888', '男', '15663779475', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '张兴河', '计科18J05', '计科1806', NULL);
INSERT INTO `student` VALUES ('2018020628', '张泽明', '888888', NULL, '13251538936', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J05', NULL, NULL);
INSERT INTO `student` VALUES ('2018020629', '赵莉莉', '888888', NULL, '19845061417', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020630', '祝永成', '888888', NULL, '15561668177', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020701', '别嘉宁', '888888', NULL, '18404472094', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020702', '曾佳骏', '888888', NULL, '18845045201', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', NULL, '计科18游01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020703', '曾祥国', '888888', NULL, '18785248612', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020704', '陈鑫瑞', '888888', NULL, '18804621009', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020705', '程丹红', '888888', NULL, '18804651368', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020706', '戴翱鸿', '888888', NULL, '13208787176', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020707', '董佳浩', '888888', NULL, '18845044476', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020708', '高铭焱', '888888', NULL, '18845045035', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020709', '龚俊嘉', '888888', NULL, '13778942568', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', NULL, '计科18游01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020710', '韩汭哲', '888888', NULL, '15846907093', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020711', '何贡邦', '888888', '男', '19845061643', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1807', NULL);
INSERT INTO `student` VALUES ('2018020713', '敬鑫', '888888', NULL, '13458264878', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020715', '李佳贺', '888888', NULL, '15846648127', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020716', '李天顺', '888888', NULL, '18845044993', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020717', '刘明琦', '888888', NULL, '18304643452', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020718', '刘宇昕', '888888', NULL, '15845270948', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020719', '龙晨', '888888', NULL, '19845061629', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020720', '卢美琦', '888888', NULL, '17845032377', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020721', '毛一鸣', '888888', NULL, '18137490255', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020722', '石兆洋', '888888', NULL, '19845061915', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020724', '孙达', '888888', NULL, '18545075753', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020725', '宿宝奇', '888888', NULL, '18845044589', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020726', '勇政', '888888', NULL, '19845061947', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020727', '张洪东', '888888', '男', '13846222892', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1807', NULL);
INSERT INTO `student` VALUES ('2018020728', '赵斌', '888888', NULL, '18786526854', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020729', '赵瑞', '888888', NULL, '18804609382', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020730', '周大勇', '888888', '男', '15145470906', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J04', '', NULL);
INSERT INTO `student` VALUES ('2018020801', '才荆玉', '888888', NULL, '15145959533', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020802', '程郁涵', '888888', NULL, '18845045563', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020803', '褚义同', '888888', NULL, '13836972356', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020804', '杜志明', '888888', NULL, '19845062528', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020805', '樊珊珊', '888888', NULL, '18212555907', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020806', '冯壮飞', '888888', '男', '18746254510', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020807', '付依平', '888888', '男', '18604582904', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J04', '', NULL);
INSERT INTO `student` VALUES ('2018020808', '韩琪', '888888', NULL, '18845045148', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020809', '李芳一', '888888', NULL, '13763773059', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020810', '李志琦', '888888', NULL, '13329394708', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020811', '刘松', '888888', NULL, '18388724480', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020812', '刘淞源', '888888', NULL, '13669789284', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020813', '刘相霆', '888888', '男', '19845061686', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020814', '潘岩松', '888888', '男', '18846759981', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020815', '乔支鹏', '888888', NULL, '18246551282', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020816', '沙文博', '888888', NULL, '15636007947', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020817', '沈贺', '888888', NULL, '18845045747', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020818', '施翌姝', '888888', NULL, '18845044995', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020819', '滕翔', '888888', '男', '14795762585', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J04', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020820', '王佳雨', '888888', '男', '13263633167', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J04', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020821', '王嘉欣', '888888', NULL, '18804651258', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020822', '王斯冬', '888888', NULL, '15776625332', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020823', '韦君鹏', '888888', '男', '18804610340', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020824', '吴铮', '888888', NULL, '15776238122', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020825', '邢宇', '888888', NULL, '19845061650', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020826', '颜瑞君', '888888', NULL, '18387426864', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020827', '张喜瑞', '888888', NULL, '15045443788', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020828', '张宇航', '888888', '女', '13555351763', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J04', '计科1808', NULL);
INSERT INTO `student` VALUES ('2018020829', '张志昊', '888888', '', '18845045107', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '', '计科18嵌01', '', NULL);
INSERT INTO `student` VALUES ('2018020830', '庄庆彪', '888888', NULL, '15845079636', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J04', NULL, NULL);
INSERT INTO `student` VALUES ('2018020901', '安宜龙', '888888', '男', '15036350448', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J03', '', NULL);
INSERT INTO `student` VALUES ('2018020902', '白伟东', '888888', NULL, '18944653093', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020903', '杜智', '888888', NULL, '13547318974', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020904', '郜欣茹', '888888', NULL, '18704561235', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020905', '韩佳琦', '888888', NULL, '18804621594', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020906', '胡叶谞', '888888', NULL, '18503391960', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020908', '李佳欣', '888888', NULL, '13804830921', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020909', '李小斌', '888888', NULL, '19845061197', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020910', '李晓龙', '888888', NULL, '18246967608', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', NULL, '计科18游01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020911', '梁志强', '888888', NULL, '15084532458', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020912', '林孟宇', '888888', '男', '18845045751', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '计科1809', NULL);
INSERT INTO `student` VALUES ('2018020913', '刘念', '888888', NULL, '13684566335', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020914', '鲁红锦', '888888', NULL, '18804609462', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020915', '庞杨', '888888', NULL, '18746115417', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020916', '彭磊', '888888', NULL, '15836250526', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020917', '齐鑫', '888888', NULL, '18845045661', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020918', '孙默喆', '888888', NULL, '18804621660', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020920', '孙源', '888888', NULL, '18814560463', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020921', '田佳兴', '888888', NULL, '13199620687', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020922', '王润泽', '888888', NULL, '13614615641', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020923', '王一涵', '888888', NULL, '13351846789', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020924', '魏东', '888888', NULL, '18804609251', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020925', '吴振缘', '888888', NULL, '18845045409', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018020926', '徐玉国', '888888', '男', '19845061930', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J03', '计科1809', NULL);
INSERT INTO `student` VALUES ('2018020927', '杨立宝', '888888', NULL, '19845061932', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018020928', '杨思龙', '888888', NULL, '15519510925', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020929', '张凤凤', '888888', NULL, '18249173746', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018020930', '张智泓', '888888', NULL, '17634605231', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021001', '陈思语', '888888', NULL, '18804620316', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021002', '邓鉴振', '888888', '男', '18008104985', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J03', '1810', NULL);
INSERT INTO `student` VALUES ('2018021003', '丁佳伟', '888888', NULL, '17614502074', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021004', '董世龙', '888888', NULL, '18668107892', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021005', '樊昱成', '888888', NULL, '15245875858', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021006', '何晓波', '888888', NULL, '18804609227', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021007', '黄鸿运', '888888', NULL, '18377009655', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021008', '黄鑫', '888888', NULL, '15545092388', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021009', '贾昊霖', '888888', NULL, '18346989505', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021010', '贾宏伟', '888888', NULL, '15124544148', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021011', '李嘉乐', '888888', NULL, '18845045369', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021012', '李明轩', '888888', NULL, '15765583480', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021013', '李琪', '888888', '男', '13089883015', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J03', '1810', NULL);
INSERT INTO `student` VALUES ('2018021014', '李迎新', '888888', NULL, '18804620396', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021015', '廖诗夏', '888888', NULL, '15577082042', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021016', '刘隆飞', '888888', NULL, '15236611920', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021017', '刘荣博', '888888', NULL, '18804620319', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021018', '卢福祺', '888888', NULL, '18804606808', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021019', '裴帅', '888888', NULL, '15716695253', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021020', '任雨鑫', '888888', NULL, '18804606509', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021021', '王子腾', '888888', '男', '15937515596', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', '姜久鑫', '计科18嵌01', '1810', NULL);
INSERT INTO `student` VALUES ('2018021022', '魏子傲', '888888', NULL, '16603965989', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021023', '吴昊', '888888', NULL, '18346199010', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021025', '张博凯', '888888', '男', '15774508213', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', '姜久鑫', '计科18H02', '计科1810', NULL);
INSERT INTO `student` VALUES ('2018021026', '张雪秋', '888888', NULL, '18804607436', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021027', '赵德朋', '888888', NULL, '18804606802', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021030', '赵雨萱', '888888', NULL, '13845268452', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021101', '陈强', '888888', NULL, '18645663785', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021102', '崔翼翔', '888888', NULL, '13939187651', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021103', '邓博文', '888888', NULL, '18481821949', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021105', '韩文龙', '888888', NULL, '15612799929', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021106', '蒿岩松', '888888', NULL, '18804619319', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021107', '呼建飞', '888888', NULL, '18646609129', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021109', '姜国栋', '888888', NULL, '18746639908', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021110', '姜敏龙', '888888', '男', '18745970637', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '', '计科18J02', '', NULL);
INSERT INTO `student` VALUES ('2018021111', '金帅臣', '888888', NULL, '18804621627', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021112', '李思绪', '888888', NULL, '15046274131', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021113', '李祉函', '888888', NULL, '13707674140', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021114', '刘贺', '888888', NULL, '13206916589', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021115', '宋健', '888888', NULL, '18645572633', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021116', '苏新益', '888888', NULL, '18314161048', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021117', '王丹', '888888', NULL, '18845871082', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '王晖（网站）', NULL, '计科18H03', NULL, NULL);
INSERT INTO `student` VALUES ('2018021119', '王俊程', '888888', NULL, '15145331531', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021120', '王宇杰', '888888', NULL, '18214361921', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021121', '王治恒', '888888', NULL, '13845355105', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021122', '魏云琪', '888888', '女', '18213599502', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J02', '计科1811', NULL);
INSERT INTO `student` VALUES ('2018021123', '肖天阳', '888888', NULL, '15938068928', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021124', '由浩江', '888888', NULL, '18804618050', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021125', '于洪顺', '888888', NULL, '18845045363', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021126', '张春龙', '888888', '男', '18804606313', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', '张兴河', '计科18云01', '计科1811', NULL);
INSERT INTO `student` VALUES ('2018021127', '张艺涵', '888888', NULL, '18804626268', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18智01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021128', '赵明明', '888888', NULL, '15936092765', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021129', '周博雅', '888888', NULL, '19845061264', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021130', '周子龙', '888888', NULL, '17645775387', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021201', '郭吉安', '888888', NULL, '18845045153', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021202', '李林峰', '888888', '男', '18045872277', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '孙力', '姜久鑫，张兴河', '计科18游01', '计科1812', NULL);
INSERT INTO `student` VALUES ('2018021203', '廖思璟', '888888', NULL, '18804625768', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021204', '刘婷', '888888', NULL, '18311794017', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021205', '卢圆圆', '888888', NULL, '18845045440', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021206', '任培诚', '888888', NULL, '17329219109', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021207', '商晔', '888888', NULL, '18345665716', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021208', '石浩然', '888888', NULL, '15776379838', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李刚', NULL, '计科18嵌01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021209', '杨昌乐', '888888', NULL, '18804652532', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '彭天彬', NULL, '计科18网01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021211', '赵婉竹', '888888', NULL, '13836398605', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', NULL, '计科18J02', NULL, NULL);
INSERT INTO `student` VALUES ('2018021212', '周雪莉', '888888', NULL, '15196646626', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '谷丹丹', NULL, '计科18H01', NULL, NULL);
INSERT INTO `student` VALUES ('2018021213', '朱家满', '888888', NULL, '18804609609', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '刘力岩', NULL, '计科18云01', NULL, NULL);
INSERT INTO `student` VALUES ('2018070505', '刘斌', '888888', '男', '17375695256', '计算机科学与技术', 1, '软件学院', NULL, NULL, NULL, '李月辉', '姜久鑫', '计科18J02', '1812', NULL);

SET FOREIGN_KEY_CHECKS = 1;
