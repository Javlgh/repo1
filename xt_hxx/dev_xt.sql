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

 Date: 27/12/2021 20:13:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class_all
-- ----------------------------
DROP TABLE IF EXISTS `class_all`;
CREATE TABLE `class_all`  (
  `class_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `class_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级name',
  `new_old_ps` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '判断新旧',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_all
-- ----------------------------
INSERT INTO `class_all` VALUES (1, '19j04', '新');
INSERT INTO `class_all` VALUES (2, '1910', '旧');

-- ----------------------------
-- Table structure for class_o_n
-- ----------------------------
DROP TABLE IF EXISTS `class_o_n`;
CREATE TABLE `class_o_n`  (
  `class_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `class_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名',
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生id',
  `old_class_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父班级',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_o_n
-- ----------------------------
INSERT INTO `class_o_n` VALUES (1, '1910', '', NULL);
INSERT INTO `class_o_n` VALUES (2, '19J04', '2019021010', '1910');
INSERT INTO `class_o_n` VALUES (4, '19J04', '2019021017', '1910');
INSERT INTO `class_o_n` VALUES (5, '19J04', '123', '1910');
INSERT INTO `class_o_n` VALUES (6, '19J04', '12345', '1910');

-- ----------------------------
-- Table structure for class_teacher
-- ----------------------------
DROP TABLE IF EXISTS `class_teacher`;
CREATE TABLE `class_teacher`  (
  `new_teacher` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现班主任',
  `old_teacher` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原班主任',
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `counselor` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导员'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_teacher
-- ----------------------------
INSERT INTO `class_teacher` VALUES ('李月辉', '李刚', '2019021010', '吴昊');
INSERT INTO `class_teacher` VALUES ('李月辉', '李刚', '2019021017', '吴昊');
INSERT INTO `class_teacher` VALUES ('1', '1', '123', '1');
INSERT INTO `class_teacher` VALUES ('1', '1', '12345', '1');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `college_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '学院id',
  `college_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院名',
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1, '软件学院');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `major_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `major_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名',
  `college_id_fk` int(10) NULL DEFAULT NULL COMMENT '关联学院的外键',
  PRIMARY KEY (`major_id`) USING BTREE,
  INDEX `college_id_fk`(`college_id_fk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '计算机科学与技术', 1);

-- ----------------------------
-- Table structure for selected_topic
-- ----------------------------
DROP TABLE IF EXISTS `selected_topic`;
CREATE TABLE `selected_topic`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生id',
  `tutor_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师姓名',
  `topic` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '论文题目',
  `direction` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选题方向',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `sel_updater` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `pd` int(10) NULL DEFAULT 0 COMMENT '是否成立1表示成立',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_id_fk`(`student_id`) USING BTREE,
  INDEX `tutor_id_fk`(`tutor_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1990 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of selected_topic
-- ----------------------------
INSERT INTO `selected_topic` VALUES (1360, '2018021011', '彭天彬', '待选', '待选', '2021-12-13 10:02:49', '2021-12-13 10:02:49', NULL, 1);
INSERT INTO `selected_topic` VALUES (1361, '2018020302', '彭天彬', '待选', '待选', '2021-12-13 10:09:33', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1363, '2018020206', '姜海红', '待选', '待选', '2021-12-13 10:11:43', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1365, '2018020613', '李月辉', '基于SpringBoot的医院在线挂号系统', '软件设计', '2021-12-13 10:16:48', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1366, '2018020929', '欧阳广婧', '待选', '待选', '2021-12-13 10:17:56', '2021-12-13 10:17:56', NULL, 1);
INSERT INTO `selected_topic` VALUES (1367, '2018020914', '欧阳广婧', '待选', '待选', '2021-12-13 10:22:39', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1368, '2018020106', '李月辉', '待选', '待选', '2021-12-13 10:24:16', '2021-12-13 10:24:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1370, '2018020727', '李刚', '待选', '待选', '2021-12-13 10:25:59', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1371, '2018021026', '欧阳广婧', '待选', '待选', '2021-12-13 10:29:33', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1374, '2018070505', '刘贵君', '基于SSM方向的在线课程管理系统', '软件设计方向', '2021-12-13 10:33:49', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1376, '2018020820', '张娟', '待选', '待选', '2021-12-13 10:37:51', '2021-12-13 10:37:51', NULL, 1);
INSERT INTO `selected_topic` VALUES (1379, '2018020202', '李月辉', '', '', '2021-12-13 10:40:28', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1382, '2018020123', '姜海红', '待选', '软件设计方向', '2021-12-13 10:44:37', '2021-12-13 10:44:37', NULL, 1);
INSERT INTO `selected_topic` VALUES (1385, '2018020310', '谷丹丹', '待选', '待选', '2021-12-13 10:45:07', '2021-12-13 10:45:07', NULL, 1);
INSERT INTO `selected_topic` VALUES (1390, '2018021126', '马艳丽', '待选', '待选', '2021-12-13 10:52:51', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1392, '2018021013', '张绍兵', '待选', '待选', '2021-12-13 10:56:32', '2021-12-13 10:56:32', NULL, 1);
INSERT INTO `selected_topic` VALUES (1393, '2018021003', '欧阳广婧', '待选', '待选', '2021-12-13 10:59:32', '2021-12-13 10:59:32', NULL, 1);
INSERT INTO `selected_topic` VALUES (1394, '2018020220', '姜海红', '待选', '待选', '2021-12-13 11:00:59', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1397, '2018020512', '赵艳芹', '待选', '软件设计方向', '2021-12-13 11:08:02', '2021-12-13 11:08:02', NULL, 1);
INSERT INTO `selected_topic` VALUES (1399, '2018020225', '李文龙', '待选', '待选', '2021-12-13 11:08:23', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1401, '2018021006', '邹声宇', '待选', '待选', '2021-12-13 11:11:15', '2021-12-13 11:11:15', NULL, 1);
INSERT INTO `selected_topic` VALUES (1402, '2018020211', '李月辉', '待选', '待选', '2021-12-13 11:11:50', '2021-12-13 11:11:50', NULL, 1);
INSERT INTO `selected_topic` VALUES (1404, '2018021030', '邹声宇', '待选', '待选', '2021-12-13 11:13:11', '2021-12-13 11:13:11', NULL, 1);
INSERT INTO `selected_topic` VALUES (1405, '2018021110', '赵艳芹', '待选', '待选', '2021-12-13 11:14:15', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1407, '2018020121', '赵艳芹', '待选', '待选', '2021-12-13 11:15:32', '2021-12-13 11:15:32', NULL, 1);
INSERT INTO `selected_topic` VALUES (1410, '2018020913', '欧阳广婧', '待选', '待选', '2021-12-13 11:17:21', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1412, '2018021113', '马艳丽', '待选', '待选', '2021-12-13 11:17:47', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1413, '2018020529', '邓红', '待选', '待选', '2021-12-13 11:18:02', '2021-12-13 11:18:02', NULL, 1);
INSERT INTO `selected_topic` VALUES (1415, '2018020214', '马艳丽', '待选', '待选', '2021-12-13 11:19:11', '2021-12-13 11:19:11', NULL, 1);
INSERT INTO `selected_topic` VALUES (1416, '2018020117', '张继旺', '待选', '待选', '2021-12-13 11:19:46', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1417, '2018021005', '谷丹丹', '待选', '待选', '2021-12-13 11:19:57', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1421, '2018020102', '刘贵君', '待选', '待选', '2021-12-13 11:21:09', '2021-12-13 11:21:09', NULL, 1);
INSERT INTO `selected_topic` VALUES (1424, '2018021112', '邓红', '待选', '待选', '2021-12-13 11:22:18', '2021-12-13 11:22:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1429, '2018020909', '欧阳广婧', '待选', '待选', '2021-12-13 11:25:15', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1430, '2018020821', '李天昊', '待选', '待选', '2021-12-13 11:25:55', '2021-12-13 11:25:55', NULL, 1);
INSERT INTO `selected_topic` VALUES (1431, '2018021127', '邓红', '待选', '待选', '2021-12-13 11:26:16', '2021-12-13 11:26:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1432, '2018020829', '李天昊', '待选', '待选', '2021-12-13 11:26:29', '2021-12-13 11:26:29', NULL, 1);
INSERT INTO `selected_topic` VALUES (1434, '2018020809', '李文龙', '待选', '待选', '2021-12-13 11:27:19', '2021-12-13 11:27:19', NULL, 1);
INSERT INTO `selected_topic` VALUES (1436, '2018020612', '邹声宇', '', '软件设计方向', '2021-12-13 11:28:10', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1438, '2018020205', '李月辉', '待选', '待选', '2021-12-13 11:29:37', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1439, '2018021015', '李天昊', '待选', '待选', '2021-12-13 11:29:59', '2021-12-13 11:29:59', NULL, 1);
INSERT INTO `selected_topic` VALUES (1440, '2018020301', '彭天彬', '待选', '待选', '2021-12-13 11:31:30', '2021-12-13 11:31:30', NULL, 1);
INSERT INTO `selected_topic` VALUES (1441, '2018021014', '李天昊', '待选', '待选', '2021-12-13 11:31:40', '2021-12-13 11:31:40', NULL, 1);
INSERT INTO `selected_topic` VALUES (1442, '2018020902', '李刚', '基于龙芯2k1000的智能无人花卉养殖系统', '嵌入式方向', '2021-12-13 11:31:41', '2021-12-13 11:31:41', NULL, 1);
INSERT INTO `selected_topic` VALUES (1445, '2018021114', '赵艳芹', '待选', '待选', '2021-12-13 11:32:03', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1447, '2018020523', '谷丹丹', '待选', '', '2021-12-13 11:33:25', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1448, '2018020127', '李文龙', '待选', '待选', '2021-12-13 11:33:32', '2021-12-13 11:33:32', NULL, 1);
INSERT INTO `selected_topic` VALUES (1450, '2018021010', '张亮', '待选', '待选', '2021-12-13 11:34:26', '2021-12-13 11:34:26', NULL, 1);
INSERT INTO `selected_topic` VALUES (1453, '2018020109', '李文龙', '待选', '待选', '2021-12-13 11:35:12', '2021-12-13 11:35:12', NULL, 1);
INSERT INTO `selected_topic` VALUES (1455, '2018021020', '李天昊', '待选', '待选', '2021-12-13 11:36:17', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1457, '2018020725', '李刚', '智能门锁', '嵌入式方向', '2021-12-13 11:36:53', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1458, '2018020711', '李天昊', '待选', '嵌入式', '2021-12-13 11:37:17', '2021-12-13 11:37:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1464, '2018020926', '欧阳广婧', '待选', '待选', '2021-12-13 11:40:32', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1465, '2018020603', '彭天彬', '待选', '待选', '2021-12-13 11:40:49', '2021-12-13 11:40:49', NULL, 1);
INSERT INTO `selected_topic` VALUES (1468, '2018020715', '刘彦君', '待选', '待选', '2021-12-13 11:45:46', '2021-12-13 11:45:46', NULL, 1);
INSERT INTO `selected_topic` VALUES (1469, '2018020501', '彭天彬', '待选', '待选', '2021-12-13 11:46:05', '2021-12-13 11:46:05', NULL, 1);
INSERT INTO `selected_topic` VALUES (1471, '2018020617', '邹声宇', '待选', '待选', '2021-12-13 11:48:26', '2021-12-13 11:48:26', NULL, 1);
INSERT INTO `selected_topic` VALUES (1472, '2018020110', '张继旺', '待选', '软件设计方向', '2021-12-13 11:48:52', '2021-12-13 11:48:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1473, '2018020221', '丁康健', '待选', '待选', '2021-12-13 11:49:30', '2021-12-13 11:49:30', NULL, 1);
INSERT INTO `selected_topic` VALUES (1474, '2018020405', '李刚', '待选', '待选', '2021-12-13 11:49:41', '2021-12-13 11:49:41', NULL, 1);
INSERT INTO `selected_topic` VALUES (1476, '2018020224', '李刚', '基于FreeRTOS的四轴飞行器飞控硬件设计及算法实现', '嵌入式方向', '2021-12-13 11:51:55', '2021-12-13 11:51:55', NULL, 1);
INSERT INTO `selected_topic` VALUES (1478, '2018020105', '谷丹丹', '待选', '待选', '2021-12-13 11:54:03', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1479, '2018020911', '张继旺', '待选', '待选', '2021-12-13 11:54:25', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1481, '2018021018', '张绍兵', '待选', '待选', '2021-12-13 11:56:24', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1485, '2018020618', '邹声宇', '房产中介系统', 'web前端', '2021-12-13 12:03:43', '2021-12-13 12:03:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1487, '2018021204', '张继旺', '待选', '待选', '2021-12-13 12:04:30', '2021-12-13 12:04:30', NULL, 1);
INSERT INTO `selected_topic` VALUES (1488, '2018020329', '韩建军', '待选', '待选', '2021-12-13 12:10:00', '2021-12-13 12:10:00', NULL, 1);
INSERT INTO `selected_topic` VALUES (1489, '2018020216', '谷丹丹', '待选', '待选', '2021-12-13 12:10:20', '2021-12-13 12:10:20', NULL, 1);
INSERT INTO `selected_topic` VALUES (1492, '2018021207', '张继旺', '待选', '待选', '2021-12-13 12:15:00', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1493, '2018020717', '刘彦君', '待选', '待选', '2021-12-13 12:15:57', '2021-12-13 12:15:57', NULL, 1);
INSERT INTO `selected_topic` VALUES (1494, '2018021201', '赵艳芹', '待选', '待选', '2021-12-13 12:16:47', '2021-12-13 12:16:47', NULL, 1);
INSERT INTO `selected_topic` VALUES (1495, '2018020916', '欧阳广婧', '待选', '待选', '2021-12-13 12:17:57', '2021-12-13 12:17:57', NULL, 1);
INSERT INTO `selected_topic` VALUES (1496, '2018020306', '彭天彬', '待选', '待选', '2021-12-13 12:18:43', '2021-12-13 12:18:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1497, '2018021211', '赵艳芹', '待选', '待选', '2021-12-13 12:18:43', '2021-12-13 12:18:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1501, '2018020113', '李天昊', '待选', '人工智能方向', '2021-12-13 12:22:29', '2021-12-13 12:22:29', NULL, 1);
INSERT INTO `selected_topic` VALUES (1504, '2018020320', '彭天彬', '待选', '待选', '2021-12-13 12:23:07', '2021-12-13 12:23:07', NULL, 1);
INSERT INTO `selected_topic` VALUES (1506, '2018020325', '张继旺', '待选', '待选', '2021-12-13 12:24:27', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1510, '2018020407', '姜海红', '待选', '待选', '2021-12-13 12:25:50', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1516, '2018021212', '马艳丽', '待选', '待选', '2021-12-13 12:27:36', '2021-12-13 12:27:36', NULL, 1);
INSERT INTO `selected_topic` VALUES (1519, '2018020217', '姜海红', '基于SpringBoot框架的商城网站管理系统的设计与实现', '软件设计方向', '2021-12-13 12:29:08', '2021-12-13 12:29:08', NULL, 1);
INSERT INTO `selected_topic` VALUES (1523, '2018020114', '姜海红', '待选', '待选', '2021-12-13 12:30:07', '2021-12-13 12:30:07', NULL, 1);
INSERT INTO `selected_topic` VALUES (1526, '2018020830', '张宏', '待选', '待选', '2021-12-13 12:30:55', '2021-12-13 12:30:55', NULL, 1);
INSERT INTO `selected_topic` VALUES (1527, '2018020906', '张亮', '待选', '待选', '2021-12-13 12:33:00', '2021-12-13 12:33:00', NULL, 1);
INSERT INTO `selected_topic` VALUES (1528, '2018020317', '韩建军', '待选', '待选', '2021-12-13 12:34:19', '2021-12-13 12:34:19', NULL, 1);
INSERT INTO `selected_topic` VALUES (1531, '2018020125', '李文龙', '待选', '软件设计方向', '2021-12-13 12:38:34', '2021-12-13 12:38:34', NULL, 1);
INSERT INTO `selected_topic` VALUES (1538, '2018021125', '邓红', '待选', '待选', '2021-12-13 12:42:05', '2021-12-13 12:42:05', NULL, 1);
INSERT INTO `selected_topic` VALUES (1542, '2018020307', '韩建军', '待选', '待选', '2021-12-13 12:44:06', '2021-12-13 12:44:06', NULL, 1);
INSERT INTO `selected_topic` VALUES (1544, '2018021213', '马艳丽', '待选', '待选', '2021-12-13 12:45:16', '2021-12-13 12:45:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1546, '2018020328', '韩建军', '待选', '待选', '2021-12-13 12:45:34', '2021-12-13 12:45:34', NULL, 1);
INSERT INTO `selected_topic` VALUES (1548, '2018020704', '张娟', '待选', '待选', '2021-12-13 12:46:28', '2021-12-13 12:46:28', NULL, 1);
INSERT INTO `selected_topic` VALUES (1549, '2018020213', '谷丹丹', '待选', '待选', '2021-12-13 12:46:52', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1550, '2018020718', '张娟', '待选', '软件设计', '2021-12-13 12:47:30', '2021-12-13 12:47:30', NULL, 1);
INSERT INTO `selected_topic` VALUES (1551, '2018020201', '马艳丽', '待选', '待选', '2021-12-13 12:48:02', '2021-12-13 12:48:02', NULL, 1);
INSERT INTO `selected_topic` VALUES (1555, '2018021109', '丁康健', '待选', '待选', '2021-12-13 12:49:51', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1557, '2018020321', '韩建军', '待选', '软件设计', '2021-12-13 12:50:37', '2021-12-13 12:50:37', NULL, 1);
INSERT INTO `selected_topic` VALUES (1559, '2018020726', '戚爱斌', '待选', '待选', '2021-12-13 12:52:53', '2021-12-13 12:52:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1563, '2018020312', '赵艳芹', '待选', '待选', '2021-12-13 12:53:49', '2021-12-13 12:53:49', NULL, 1);
INSERT INTO `selected_topic` VALUES (1566, '2018020315', '邢传军', '待选', '待选', '2021-12-13 12:55:31', '2021-12-13 12:55:31', NULL, 1);
INSERT INTO `selected_topic` VALUES (1570, '2018020604', '邹声宇', '基于Springboot+Vue的教学辅助系统', '软件设计', '2021-12-13 12:58:04', '2021-12-13 12:58:04', NULL, 1);
INSERT INTO `selected_topic` VALUES (1571, '2018020708', '张娟', '待选', '待选', '2021-12-13 12:59:00', '2021-12-13 12:59:00', NULL, 1);
INSERT INTO `selected_topic` VALUES (1573, '2018020720', '张娟', '基于SSM的医院在线预约挂号系统', '软件设计', '2021-12-13 13:00:44', '2021-12-13 13:00:44', NULL, 1);
INSERT INTO `selected_topic` VALUES (1574, '2018020728', '邓红', '待选', '待选', '2021-12-13 13:02:11', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1576, '2018020404', '李刚', '基于深度学习的疫情防控口罩佩戴检测', '嵌入式方向', '2021-12-13 13:02:48', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1580, '2018021120', '丁康健', '待选', '待选', '2021-12-13 13:05:00', '2021-12-13 13:05:00', NULL, 1);
INSERT INTO `selected_topic` VALUES (1582, '2018020722', '张亮', '待选', '待选', '2021-12-13 13:06:22', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1587, '2018020303', '张爱文', '待选', '嵌入式', '2021-12-13 13:11:10', '2021-12-13 13:11:10', NULL, 1);
INSERT INTO `selected_topic` VALUES (1590, '2018020208', '姜海红', '待选', '待选', '2021-12-13 13:13:36', '2021-12-13 13:13:36', NULL, 1);
INSERT INTO `selected_topic` VALUES (1592, '2018021103', '马艳丽', '待选', '待选', '2021-12-13 13:14:40', '2021-12-13 13:14:40', NULL, 1);
INSERT INTO `selected_topic` VALUES (1593, '2018020412', '戚爱斌', '待选', '待选', '2021-12-13 13:15:33', '2021-12-13 13:15:33', NULL, 1);
INSERT INTO `selected_topic` VALUES (1595, '2018020615', '戚爱斌', '待选', '待选', '2021-12-13 13:17:07', '2021-12-13 13:17:07', NULL, 1);
INSERT INTO `selected_topic` VALUES (1597, '2018020323', '戚爱斌', '待选', '待选', '2021-12-13 13:17:22', '2021-12-13 13:17:22', NULL, 1);
INSERT INTO `selected_topic` VALUES (1599, '2018021105', '丁康健', '待选', '待选', '2021-12-13 13:19:03', '2021-12-13 13:19:03', NULL, 1);
INSERT INTO `selected_topic` VALUES (1600, '2018020130', '谷丹丹', '待选', '待选', '2021-12-13 13:19:53', '2021-12-13 13:19:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1601, '2018020104', '谷丹丹', '待选', '', '2021-12-13 13:20:43', '2021-12-13 13:20:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1602, '2018020327', '戚爱斌', '待选', '待选', '2021-12-13 13:21:16', '2021-12-13 13:21:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1606, '2018020609', '姜海红', '', '软件设计', '2021-12-13 13:25:54', '2021-12-13 13:25:54', NULL, 1);
INSERT INTO `selected_topic` VALUES (1608, '2018020818', '张继旺', '待选', '待选', '2021-12-13 13:27:05', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1609, '2018020420', '李刚', '待选', '待选', '2021-12-13 13:27:35', '2021-12-13 13:27:35', NULL, 1);
INSERT INTO `selected_topic` VALUES (1610, '2018021007', '张骞中', '待选', '待选', '2021-12-13 13:28:34', '2021-12-13 13:28:34', NULL, 1);
INSERT INTO `selected_topic` VALUES (1613, '2018020509', '邢传军', '待选', '软件设计方向', '2021-12-13 13:30:17', '2021-12-13 13:30:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1614, '2018021019', '张骞中', '待选', '待选', '2021-12-13 13:30:18', '2021-12-13 13:30:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1617, '2018020517', '邓红', '待选', '待选', '2021-12-13 13:32:58', '2021-12-13 13:32:58', NULL, 1);
INSERT INTO `selected_topic` VALUES (1618, '2018020226', '张娟', '基于Jfinal的矿池后台管理设计与实现', '软件设计方向', '2021-12-13 13:33:46', '2021-12-13 13:33:46', NULL, 1);
INSERT INTO `selected_topic` VALUES (1622, '2018020413', '韩建军', '待选', '待选', '2021-12-13 13:34:55', '2021-12-13 13:34:55', NULL, 1);
INSERT INTO `selected_topic` VALUES (1624, '2018020525', '崔鹏', '待选', '待选', '2021-12-13 13:36:19', '2021-12-13 13:36:19', NULL, 1);
INSERT INTO `selected_topic` VALUES (1626, '2018020828', '刘贵君', '待选', '待选', '2021-12-13 13:37:39', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1632, '2018020427', '戚爱斌', '基于Web的网上花店的设计与实现', 'Web全栈开发', '2021-12-13 13:41:36', '2021-12-13 13:41:36', NULL, 1);
INSERT INTO `selected_topic` VALUES (1637, '2018020311', '张亮', '待选', '待选', '2021-12-13 13:46:13', '2021-12-13 13:46:13', NULL, 1);
INSERT INTO `selected_topic` VALUES (1643, '2018020326', '张亮', '待选', '待选', '2021-12-13 13:48:11', '2021-12-13 13:48:11', NULL, 1);
INSERT INTO `selected_topic` VALUES (1653, '2018020810', '邹声宇', '待选', '待选', '2021-12-13 13:51:37', '2021-12-13 13:51:37', NULL, 1);
INSERT INTO `selected_topic` VALUES (1660, '2018020921', '李刚', '待选', '待选', '2021-12-13 13:54:42', '2021-12-13 13:54:42', NULL, 1);
INSERT INTO `selected_topic` VALUES (1662, '2018020701', '滕怀江', '待选', '待选', '2021-12-13 13:57:09', '2021-12-13 13:57:09', NULL, 1);
INSERT INTO `selected_topic` VALUES (1668, '2018020103', '赵艳芹', '基于SSM的防疫工作站管理系统', '软件设计方向', '2021-12-13 14:02:00', '2021-12-13 14:02:00', NULL, 1);
INSERT INTO `selected_topic` VALUES (1676, '2018020222', '马艳丽', '待选', '待选', '2021-12-13 14:12:59', '2021-12-13 14:12:59', NULL, 1);
INSERT INTO `selected_topic` VALUES (1677, '2018020908', '李文龙', '待选', '待选', '2021-12-13 14:13:29', '2021-12-13 14:13:29', NULL, 1);
INSERT INTO `selected_topic` VALUES (1679, '2018020920', '李文龙', '待选', '待选', '2021-12-13 14:14:43', '2021-12-13 14:14:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1680, '2018021023', '邹声宇', '待选', '待选', '2021-12-13 14:15:13', '2021-12-13 14:15:13', NULL, 1);
INSERT INTO `selected_topic` VALUES (1687, '2018020520', '张继旺', '待选', '待选', '2021-12-13 14:22:53', '2021-12-13 14:22:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1688, '2018020124', '李月辉', '待选', '待选', '2021-12-13 14:24:47', '2021-12-13 14:24:47', NULL, 1);
INSERT INTO `selected_topic` VALUES (1689, '2018020408', '张亮', '待选', '待选', '2021-12-13 14:28:05', '2021-12-13 14:28:05', NULL, 1);
INSERT INTO `selected_topic` VALUES (1697, '2018021123', '丁康健', '待选', '待选', '2021-12-13 14:35:37', '2021-12-13 14:35:37', NULL, 1);
INSERT INTO `selected_topic` VALUES (1698, '2018020511', '邢传军', '待选', '待选', '2021-12-13 14:36:03', '2021-12-13 14:36:03', NULL, 1);
INSERT INTO `selected_topic` VALUES (1701, '2018020410', '韩建军', '待选', '待选', '2021-12-13 14:40:29', '2021-12-13 14:40:29', NULL, 1);
INSERT INTO `selected_topic` VALUES (1702, '2018020621', '彭天彬', '待选', '待选', '2021-12-13 14:40:55', '2021-12-13 14:40:55', NULL, 1);
INSERT INTO `selected_topic` VALUES (1703, '2018020518', '戚爱斌', '待选', '软件设计', '2021-12-13 14:43:22', '2021-12-13 14:43:22', NULL, 1);
INSERT INTO `selected_topic` VALUES (1706, '2018020424', '韩建军', '待选', '待选', '2021-12-13 14:45:51', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1710, '2018020426', '张亮', '待选', '待选', '2021-12-13 14:49:59', '2021-12-13 14:49:59', NULL, 1);
INSERT INTO `selected_topic` VALUES (1716, '2018020507', '张绍兵', '待选', '待选', '2021-12-13 15:00:15', '2021-12-13 15:00:15', NULL, 1);
INSERT INTO `selected_topic` VALUES (1717, '2018020526', '张绍兵', '待选', '待选', '2021-12-13 15:00:26', '2021-12-13 15:00:26', NULL, 1);
INSERT INTO `selected_topic` VALUES (1719, '2018020724', '张娟', '待选', '待选', '2021-12-13 15:03:22', '2021-12-13 15:03:22', NULL, 1);
INSERT INTO `selected_topic` VALUES (1720, '2018020120', '戚爱斌', '待选', '待选', '2021-12-13 15:04:35', '2021-12-13 15:04:35', NULL, 1);
INSERT INTO `selected_topic` VALUES (1721, '2018021101', '邓红', '待选', '待选', '2021-12-13 15:15:47', '2021-12-13 15:15:47', NULL, 1);
INSERT INTO `selected_topic` VALUES (1722, '2018021107', '邓红', '待选', '待选', '2021-12-13 15:17:02', '2021-12-13 15:17:02', NULL, 1);
INSERT INTO `selected_topic` VALUES (1725, '2018020415', '张绍兵', '待选', '待选', '2021-12-13 15:25:59', '2021-12-13 15:25:59', NULL, 1);
INSERT INTO `selected_topic` VALUES (1727, '2018020207', '邢传军', '基于CMS的校园二手商场小程序', '软件设计方向', '2021-12-13 15:30:43', '2021-12-13 15:30:43', NULL, 1);
INSERT INTO `selected_topic` VALUES (1729, '2018020703', '李天昊', '待选', '嵌入式方向', '2021-12-13 15:40:42', '2021-12-13 15:40:42', NULL, 1);
INSERT INTO `selected_topic` VALUES (1733, '2018020519', '张亮', '待选', '待选', '2021-12-13 15:47:14', '2021-12-13 15:47:14', NULL, 1);
INSERT INTO `selected_topic` VALUES (1741, '2018020430', '李文龙', '待选', '待选', '2021-12-13 16:37:59', '2021-12-13 16:37:59', NULL, 1);
INSERT INTO `selected_topic` VALUES (1742, '2018020923', '李月辉', '待选', '待选', '2021-12-13 16:40:49', '2021-12-13 16:40:49', NULL, 1);
INSERT INTO `selected_topic` VALUES (1743, '2018020212', '李月辉', '待选', '待选', '2021-12-13 16:51:13', '2021-12-13 16:51:13', NULL, 1);
INSERT INTO `selected_topic` VALUES (1749, '2018020719', '刘贵君', '待选', '待选', '2021-12-13 17:55:42', '2021-12-13 17:55:42', NULL, 1);
INSERT INTO `selected_topic` VALUES (1750, '2018020721', '刘贵君', '待选', '待选', '2021-12-13 17:58:29', '2021-12-13 17:58:29', NULL, 1);
INSERT INTO `selected_topic` VALUES (1755, '2018021001', '张娟', '待选', '待选', '2021-12-13 21:07:16', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1757, '2018020608', '陈超', '待选', '待选', '2021-12-13 22:03:33', NULL, NULL, 1);
INSERT INTO `selected_topic` VALUES (1762, '2018020924', '张宏', '待选', '嵌入式方向', '2021-12-14 14:47:01', '2021-12-14 14:47:01', NULL, 1);
INSERT INTO `selected_topic` VALUES (1765, '2018021009', '张骞中', '待选', '待选', '2021-12-15 10:29:49', '2021-12-15 10:29:49', NULL, 1);
INSERT INTO `selected_topic` VALUES (1766, '2018021129', '丁康健', '待选', '待选', '2021-12-15 12:39:06', '2021-12-15 12:39:06', NULL, 1);
INSERT INTO `selected_topic` VALUES (1829, '2018020804', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1830, '2018021012', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1831, '2018020515', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1832, '2018021121', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1833, '2018020803', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1834, '2018020223', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1835, '2018020827', '滕怀江', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1836, '2018020619', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1837, '2018020903', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1838, '2018020403', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1839, '2018020626', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1840, '201601020112', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1841, '2018021106', '刘彦君', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1842, '2018020107', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1843, '2018020411', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1844, '2018020819', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1845, '2018020811', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1846, '2018020402', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1847, '2018020111', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1848, '2018020814', '陈超', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1849, '2018020316', '隋毅', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1850, '2018020812', '隋毅', '未知', '未知', '2021-12-15 16:15:16', '2021-12-15 16:15:16', NULL, 1);
INSERT INTO `selected_topic` VALUES (1851, '2018020428', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1852, '2018020305', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1853, '2018020629', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1854, '2018020429', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1855, '2018020630', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1856, '2018020101', '隋毅', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1857, '2018021202', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1858, '2018020802', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1859, '2018020925', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1860, '2018020729', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1861, '2018020816', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1862, '2018020505', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1863, '2018020308', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1864, '2018020915', '郭兴凯', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1865, '2018021203', '邢传军', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1866, '2018021209', '邢传军', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1867, '2018020808', '邢传军', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1868, '2018020905', '邢传军', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1869, '2018021004', '刘贵君', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1870, '2018020229', '刘贵君', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1871, '2018020904', '刘贵君', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1872, '2018020406', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1873, '2018021025', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1874, '2018020228', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1875, '2018021016', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1876, '2018021002', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1877, '2018021128', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1878, '2018020807', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1879, '2018020815', '许宪东', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1880, '2018020930', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1881, '2018020423', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1882, '2017020509', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1883, '2018020330', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1884, '2018020805', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1885, '2018020824', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1886, '2018020510', '崔鹏', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1887, '2018020215', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1888, '2018020419', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1889, '2018020825', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1890, '2018020324', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1891, '2018020706', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1892, '2018020203', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1893, '2018020409', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1894, '2018020730', '刘嘉辉', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1895, '2018020126', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1896, '2018020504', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1897, '2018020702', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1898, '2018020623', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1899, '2018020219', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1900, '2018020521', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1901, '2018020713', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1902, '2018020508', '崔永利', '未知', '未知', '2021-12-15 16:15:17', '2021-12-15 16:15:17', NULL, 1);
INSERT INTO `selected_topic` VALUES (1903, '2018020628', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1904, '2018020614', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1905, '2018020910', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1906, '2018020401', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1907, '2018021027', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1908, '2018020912', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1909, '2018020823', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1910, '2018020710', '叶飞', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1911, '2018021022', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1912, '2018020901', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1913, '2018020822', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1914, '2018021111', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1915, '2018021119', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1916, '2018020813', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1917, '2018020801', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1918, '2018020414', '王伟峰', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1919, '2018020530', '丁康健', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1920, '2018020817', '丁康健', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1921, '2018020625', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1922, '2018020304', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1923, '2018020309', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1924, '2018020129', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1925, '2018020918', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1926, '2018020624', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1927, '2018020927', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1928, '2018020917', '李万武', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1929, '2018020230', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1930, '2018021124', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1931, '2018020707', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1932, '2018020513', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1933, '2018020108', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1934, '2017020722', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1935, '2018020928', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1936, '2018020605', '李军', '未知', '未知', '2021-12-15 16:15:18', '2021-12-15 16:15:18', NULL, 1);
INSERT INTO `selected_topic` VALUES (1937, '2018021017', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1938, '2018021208', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1939, '2018020522', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1940, '2018020611', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1941, '2018021021', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1942, '2018020602', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1943, '2018020709', '张爱文', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1944, '2018020122', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1945, '2018020416', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1946, '2018020528', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1947, '2018020616', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1948, '2018020118', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1949, '2018020606', '张宏', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1950, '2018020421', '付立平', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1951, '2018020313', '付立平', '未知', '未知', '2021-12-15 16:15:52', '2021-12-15 16:15:52', NULL, 1);
INSERT INTO `selected_topic` VALUES (1952, '2018020116', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1953, '2018020119', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1954, '2018020128', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1955, '2018021122', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1956, '2018020502', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1957, '2018021205', '付立平', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1958, '2018020601', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1959, '2018021116', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1960, '2018021206', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1961, '2018020922', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1962, '2018020417', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1963, '2018020506', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1964, '2018020503', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1965, '2018020806', '单振辉', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1966, '2018020204', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1967, '2018021117', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1968, '2018020314', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1969, '2018020210', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1970, '2018020627', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1971, '2018020425', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1972, '2018020227', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1973, '2018020418', '刘勇贤', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1974, '2018020620', '张骞中', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1975, '2018020607', '张骞中', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1976, '2018020524', '张骞中', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1977, '2018020209', '张骞中', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1978, '2018020218', '张骞中', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1979, '2018020514', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1980, '2018020516', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1981, '2018020610', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1982, '2018021008', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1983, '2018020826', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1984, '2018020705', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1985, '2018021115', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1986, '2018021130', '罗智勇', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1987, '2018021102', '张绍兵', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1988, '2018020716', '张绍兵', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);
INSERT INTO `selected_topic` VALUES (1989, '2018020527', '张绍兵', '未知', '未知', '2021-12-15 16:15:53', '2021-12-15 16:15:53', NULL, 1);

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

-- ----------------------------
-- Table structure for tutor
-- ----------------------------
DROP TABLE IF EXISTS `tutor`;
CREATE TABLE `tutor`  (
  `tutor_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '导师简介',
  `job_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `tutor_pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1234' COMMENT '密码',
  `tutor_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导师id',
  `tutor_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师姓名',
  `tutor_student_judge` int(2) NULL DEFAULT 0 COMMENT '判断是否满足继续选学生0满足，1不满足',
  `work` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工作',
  `tutor_judge` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否为课题导师0表示不为导师1表示导师',
  `admin_judge` int(10) NULL DEFAULT 0 COMMENT '是否为管理员',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updater` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `student_size` int(20) NULL DEFAULT 0 COMMENT '已经选择几名学生',
  PRIMARY KEY (`tutor_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tutor
-- ----------------------------
INSERT INTO `tutor` VALUES ('女，硕士，副教授，主持和参与黑龙江省十二五规划、教改项目7项。发表科研、教研论文20余篇。完成使用新型专利3项，主编、参编教材4部。主要研究方向：软件工程技术及应用；数据库技术及应用；大数据技术及应用。', '副教授', '18', '0bc8d13da0eeb2236c5bd59fb1a259f6', '姜海红', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，高级工程师，黑龙江信息产业技术能手，黑龙江省高职高专电子信息类专业教学指导委员会委员；曾获黑龙江省高等教育学会科研成果二等奖、省教育厅优秀指导教师等奖项。主持多项科研课题、获得多项国家专利；主持哈尔滨市建设工程招投标办公室“招标代理机构备选库”、诚信公司“招投标管理系统”、多家企业的企业网站等软件系统项目开发与维护工作。', '高级工程师', '1234', '0c240a46052f5f681ae6aad22560c744', '滕怀江', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('博士，副教授，硕士生导师，本科毕业设计主要指导Web网站开发，信息管理系统等。', '副教授', '750831', '0c4704078a6956e6c4de64124e708463', '赵艳芹', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，副教授；本科毕业于吉林工业大学，主讲Java语言、计算机网络等课程，编写过多部教材，承担过多项电子商务、电子政务系统开发设计工作。主要研究方向计算机应用、网络编程等。', '副教授', '1234', '0e7f04230be3eb79435d80a4595ea80f', '刘彦君', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，工程硕士，副教授，计算机科学与技术专业主任，持并参与省级科研课题7项，校级科研课题5项，横向课题4项，国家专利3项，公开出版教材6部,实训指导教材10余本，公开发表论文20余篇，校级教学成果奖5项。具有16年高校授课经验，曾荣获哈尔滨市优秀教师，哈尔滨市“四有好老师”，哈尔滨市“身边的好老师”，校级优秀共产党员，校级优秀教师，校级优秀班主任等荣誉称号。多次带领学生参加省级、国家级计算机大赛，取得优异成绩，多次荣获优秀指导教师称号。曾作为项目负责人，设计并开发“高校综合测评管理系统”、“毕业生就业管理系统”、“哈信息图书馆管理系统”、“请假管理系统”、“专业方向选择管理系统”等多个学校信息化项目。研究方向：软件工程、数据库理论与系统、互联网软件与服务。', '副教授', '1234', '0f96ffa66ac4134c86a4e0aeb209a0d2', '李月辉', 0, '导师', '1', 1, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，东北林业大学 硕士研究生，中级职称，擅长数据库相关，参与过大量如资源管理系统、校园包裹系统、邮政报刊个性化推荐平台系统、中邮保险系统、11185系统、资产租赁系统、省局企发部资产清分系统、资金管理系统等等项目开发工作，并且获得过多项创新奖励，目前承担课程包括《Hadoop组件技术》，《虚拟化基础架构与实现》等。目前主要研究方向，大数据背景下的Elasticsearch搜索引擎相关技术研究；人工智能背景下的基于深度学习技术的人脸识别与图像分类的研究。', '讲师', '1234', '129a3370e785ab5b61cd0c4c2d357d0e', '马艳丽', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，本科，中级工程师Oracle课程设计者。15年企业软件开发经验，擅长依据具体业务场景给出解决方案；擅长搭建系统实现核心构架；擅长软件系统体系架构的分析与设计；50+以上的大型项目经验。所授学员遍布阿里巴巴、京东、百度、美团等一线互联网公司。', '中级工程师', '1234', '3044a33023eb0020bb32ffc247e6b0cd', '戚爱斌', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，副教授。 在教学科研工作中参加了多项各级教改项目，并获得过黑龙江省教学成果二等奖等多个奖项。目前主要讲授数据结构与算法，数值分析课程；讲授计算机图形学，C语言等课程多遍。', '副教授', '1234', '3615e4bf084c79134ba16ba9ffaae623', '陈超', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，副教授 、硕士研究生导师，1997年考入哈尔滨理工大学计算机学院计算机及应用专业，2001年获工学学士学位；同年任教于哈尔滨师范大学教育技术系，担任多媒体技术、计算机硬件实验及教育统计学三门课程的本科教学工作。2003年考取教育技术学专业硕士研究生，研究方向”现代教学媒体设计及开发”，于2006年硕士研究生毕业，获教育学硕士学位；2006年晋升讲师职称；2008年晋升数字媒体与网络工程教研室主任；2013年受聘硕士研究生导师，研究方向：数字媒体的教育研究（学硕专硕两个方向）；2009考入哈尔滨工程大学信息与通信工程学院攻读博士学位，2013年11月博士毕业，获工学博士学位。工作以来先后发表省级以上论文30余篇（EI检索5篇，CSSCI检索1篇），著作5部，主持并参与各级课题10余项（参与国家863课题1项，主持并参与国家级、省部级、厅局级项目、校级项目多项，项目经费近20万元），获省级论文奖2项，电子出版物3部；软件著作权102项。', '副教授', '1234', '36e95f1667c976181b0faf84d39dbecd', '隋毅', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士研究生，工程师。发表论文五篇，包括北大核心期刊一篇。主讲课程：基于Linux的嵌入式系统设计，单片机原理与应用等。主要研究方向：计算机视觉，嵌入式。', '工程师', '1234', '381d02b4c07d052fa4739b01d149f101', '李天昊', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，副教授。自1986年参加工作，一直工作在教学科研第一线。获得过黑龙江省教学成果二等奖一次，获得黑龙江大学优秀教学成果二等奖若干次，并发表多篇教改论文。主讲程序设计基础、面向对象程序设计和linux操作系统等专业基础课。', '副教授', '1234', '3ab8d6f81c341128808b8f773efc1e66', '郭兴凯', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('自2003年工作以来，从事IT工作17年，其中8年的品牌设计开发经验，9年教育教学培训经验。擅长把实战项目融入课堂，每年教授学员300人左右，已教就业学员2300余人。2010年曾获得黑龙江青年设计大赛优秀奖。曾就职于：甲骨文实训基地担任UI项目经理 、淘宝大学担任电商视觉营销讲师、新东方职业培训学校担任IT讲师、华夏焦点传媒公司担任设计部门主管。主要研究方向：WEB前端设计开发：曾主导参与项目包括联通系统WEB设计、移动系统项目设计、黑龙江审计局WEB建设、黑龙江信息港网站建设等。UI交互设计：精通APP原型设计，参与药品行业盘点助手APP设计开发、易步骑林校园单车APP、后勤管理系统APP设计等；品牌形象设计推广：精通互联网新媒体宣传推广、IP打造，黑龙江绿色食品博览会会刊设计、御龙水高端包装设计、黑土乡野绿色食品包装、碾子山登山节策划设计、中环广场品牌形象推广等多个项目。', '讲师', '1234', '41ac13bb37dcba0a68924b14e59dd173', '谷丹丹', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，高级工程师，近20年的教学与研发经验，擅长网站设计与开发、网站的优化、服务器的搭建；参加科技厅（雏鹰计划）主持的长租平台APP整体程序框架的策划与制作。曾主持与参与多家企、事业单位门户网站、APP程序、办公平台、新媒体等项目的设计与开发。', '高级工程师', 'a1b2c3d4e5', '4215c8cb855b1283dd470d1c6bac308c', '张继旺', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，本科毕业于哈尔滨工程大学计算机科学与技术学院，计算机科学与技术专业。硕士毕业于哈尔滨工业大学计算机科学与技术学院，计算机科学与技术专业。1997年7月始就职于黑龙江工程学院计算机科学与技术系。2013年9月晋升副教授。主讲课程：操作系统、计算机网络（双语教学）、Linux操作系统等。研究方向：计算机应用技术、计算机软件与理论、嵌入式系统应用开发。主持参与省厅级科研项目多项，发表学术论文十余篇，参与编写计算机专业教材两部二十余万字，获国家实用新型专利两项，科研获奖四项。在2011年指导学生参加“第七届博创杯全国大学生嵌入式设计大赛”进入全国总决赛，并最终荣获全国一等奖，黑龙江省新闻联播、哈尔滨电视台都市发现、新晚报、交通广播都有报道。曾获得校优秀教师，校优秀学科竞赛指导教师等荣誉称号，并有多年互联网SNS网站实际开发和运营经验。', '副教授', '1234', '43fae453839ecaaddc14e31605d387a2', '张爱文', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，硕士研究生，讲师，计算机科学与技术教研室教师，2005年3月来哈尔滨信息工程学院工作，研究方向为软件开发技术，近年，国内外期刊上发表学术论文共计7篇。出版专业教材4部。主讲课程：《C语言程序设计》、《java程序设计》、《数据结构》、《数据库原理与应用》等。', '讲师', '1234', '46c72d43945259351517338cf7b61c43', '张娟', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，高级工程师Oracle课程设计者。15年企业软件开发经验，精通java，python编程语言，擅长java底层技术研究，对大数据技术hadoop，HBASE，Hive，Spark有深入理解，熟练掌握分布式平台的系统设计。曾主持研发北京市、哈尔滨等多个城市的大型国企信息系统建设。', '高级工程师', '1234', '49669f2a049088800f1ed366415a6826', '韩建军', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('副教授、硕士研究生。研究方向与技术专长：计算机应用；互联网应用、web应用、移动应用；熟悉java/HTML/CSS语言及应用；了解系统业务流程分析常用工具及表达方法；熟悉MySQL/PostgreSQL安装部署和应用。科研经历：2011年，国家无线电监测中心项目《无线电发射设备型号核准管理系统》；2013年，东方通信集团项目《eTRA AUTO生产测试系统》；2015年，应用创新项目《阀门一站台通》；2017年，应用创新项目《演艺中介服务平台系统》；2018年，应用创新项目《基于微信小程序的车辆维修服务系统》。获奖经历：2005年获黑龙江省科技进步三等奖。', '副教授', '1234', '4a69c2d9af59cea4cc157cd0adddd225', '邢传军', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，博士，教授，硕士生导师。作为项目核心成员参与完成了国家863项目，黑龙江省教育厅科学研究项目1项，横向课题多项。近期在国内外重要刊物和学术会议上发表学术论文有10余篇，获得实用新型专利、以及软件著作权多项，参加编写著作2部。指导国家大学生创新创业项目多项、省级大学生创新创业项目多项。研究方向：计算机系统设计、测控、通信系统设计。', '教授', '1234', '5000216980f4d38618038507ef0f726b', '张宏', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，1979年生，工程师，硕士，毕业于东北大学控制理论与控制工程专业，计算机科学与技术专业教研室教师，主持、参与黑龙江省教育厅科研、教研课题5项，其中重点课题1项，发表论文7篇。主持完成电机保护器、发射机监控系统、可重构片上路由器、智能大棚、智能点餐系统、智能玩具熊iOS App、高联网、业主助手、幼苗教育等二十多个项目。主要研究方向有智能机器人、集成电路设计、嵌入式系统开发、移动App开发等。', '工程师', '1234', '50c1813a66c4de4410299c5f0a8bfb8b', '李刚', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，硕士， 教授， 硕士生导师。主编《数据库原理与应用》 “十一五”国家级规划教材（第三版）高等教育出版社,主编《数据库原理与应用》“十五”国家级规划教材（第二版）高等教育出版社。《数据库系统原理》获国家级精品课程、省级精品课程,《数据库系统原理》获国家级教学团队、省级教学团队主要成员。 多次荣获黑龙江省高等教育教学成果奖一等奖和二等奖，黑龙江大学本科教学工作标兵奖。黑龙江省三育人积极分子。', '教授', '1234', '5e5f287d33f98ccf5a7848b0092d8485', '付立平', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，1977年9月生，副教授，高级工程师；本科毕业于东北农业大学，硕士毕业于黑龙江大学，2000年7月起任职本校计算机专业教师，主要研究方向计算机应用、网络工程等。', '副教授', '1234', '65e0587378fbe4b39753008405d4f990', '单振辉', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，高级实验师。作为项目核心成员参与完成了黑龙江省科技厅、教育厅、交通厅科学研究项目多项，并获哈尔滨市科技进步奖、交通协会科技进步奖各一项。近期在国内重要学术期刊发表学术论文多篇，获得实用新型专利两项。指导多项大学生创新创业项目。研究方向：计算机管理信息系统、网络工程、电子商务。', '高级实验师', '1234', '77f702f2a8cbaa8845731ce1ce6faa5a', '刘勇贤', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士研究生，副教授。公开发表论文14篇，EI检索论文2篇，实用新型专利4项，发明专利1项，主持省级课题3项，出版教材专著4部。主要研究方向：综合调度、数据分析、算法设计、智能制造。', '副教授', '116218', '80a8c1c008291e02e708f160eee96faf', '张骞中', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士，教授，主要研究方向：软件工程、大数据应用，独立公开发表论文20余篇，编写教材5部，黑龙江省基金项目1项，黑龙江省高教学会“十二五”规划课题2项，教育厅规划课题项目4项，实用新型专利6项，软件著作6部，讲授20余门课程。企业培训兼职讲师，曾独立开发哈尔滨珏晟贸易公司网站项目。', '教授', '1234', '8a06d4bedab8d895fe7b51641b0350fe', '刘贵君', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('副教授，博士。主要研究方向人工智能、计算机视觉等。主持、参与黑龙江省教育厅科研立项、省自然科学基金、国家重点实验室基金项目等多项。已在国内外刊物发表论文10余篇。指导学生在全国机器人大赛等多次获奖。熟悉嵌入式、WEB开发。', '副教授', '1234', '8ad38f160232dbb813609012b80a0476', '许宪东', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，博士，教授，硕士生导师。研究方向为企业智能计算和网络安全。在任教期间一直从事科研任务，熟练使用.Net C#工具和SQL Server数据库管理系统完成了企业委托的大量科研任务如：华能大庆、伊春热电厂基建MIS系统开发、绥化自来水公司管理系统、大庆炼油厂工艺设计及调度系统开发、黑龙江国脉集团企业信息化平台等项目，累计进款400多万；参加国家自然科学青年基金项目2项，黑龙江省自然科学面上项目3项；目前以第一作者或通讯作者在国内外期刊上发表SCI论文3篇，EI期刊论文16余篇，编写教材3部，实用新型专利7个，软件著作权4个。', '教授', '1234', '91f86bf534410bffdedaa13c58a5a3a9', '罗智勇', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，博士，副教授，硕士生导师。主讲数据结构、计算机系统结构、离散数学、编译原理等课程。承担过多项国家自然科学基金项目、黑龙江省自然基金项目、黑龙江省教育厅项目，参加过伊朗阿拉克电厂的性能测试、河北滦南电厂性能测试，科技部“国家科技攻关项目管理信息系统”以及相关多个网站的设计开发，参与编写多部教材，国内外核心期刊发表论文30篇。指导本科生、研究生参加多项竞赛并多次获奖。研究的主要方向是机器学习、数据挖掘、图像处理以及模式识别以及MIS系统的设计与开发。', '副教授', 'Hailong72', '95978745478945ds', '崔鹏', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，博士，教授，硕士生导师。主讲：C#程序设计、离散数学、Unix程序设计、防火墙原理与技术等方面的课程。主持2项黑龙江省自然科学基金，1项教育厅海外学人科学研究项目，2015-2016年国家公派莫斯科大学访问学者。参与国家863、973项目、黑龙江省自然科学基金、黑龙江省教育厅项目5项。主持企业委托项目5项，累计科研进款100余万元，参与企业委托项目3项，累计进款30余万元。第一作者和通信作者在国内外期刊上发表SCI论文1篇，EI论文8篇，合作发表EI论文4篇，国内核心期刊论文5篇，编写教材1部，获得国家授权发明专利8项，申请国家发明专利9项。研究方向为并行计算、混沌理论、信息安全，计算机软件、量子计算等。', '教授', '1234', '9ff1bf7fbbf32d14c0013b82355c861d', '刘嘉辉', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，本科，高级工程师。14年软件开发经验，擅长电子政务软件、企业软件开发。曾主持研发省、市政府及所属部门的OA办公自动化系统、政府门户网站、政务业务系统平台等。拥有大量的项目实战经验。', '高级工程师', '1234', 'a1bfe2410fa7c78ca3c3d17273093130', '欧阳广婧', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，本科，高级工程师。15年软件开发经验，精通Java系统的故障排查和性能调优、熟悉sql、nosql、中间件、spring cloud、mybatis、js等相关技术等技术。掌握多线程及高性能的设计与编码及性能调优，有高并发、高可用应用开发经验。有大型复杂分布式系统追踪、监控、报警经验。', '高级工程师', '1234', 'a20b0199e1c79aecf2243574abbca541', '邹声宇', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，硕士，讲师。作为项目核心成员参与国家自然基金项目1项，省级项目4项，其它项目多项；近期发表EI检索论文1篇，发表国内期刊论文8篇；获得实用新型专利4项；编写教材2部；参与建设省级精品课程1门，参与建设省一流课程1门，参与录制线上课程2门；多次带学生参加竞赛并获奖。研究方向：计算机应用技术，大数据技术。', '讲师', '1234', 'b365618d6bbf570599f339377b17bbfa', '邓红', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，硕士，主要从事实验教学工作。包括计算机组成原理、微机系统与接口技术、数字电路及逻辑、编译原理、Java语言、程序设计基础、嵌入式技术基础、嵌入式Linux系统设计、ARM体系结构与编程、SOPC原理及应用、物联网工程导论、大数据基础、云计算与架构、移动终端软件开发、Spark数据处理技术、模式识别、人工智能基础等实验课程。主持并参与省级教改项目3项，主持横向科研项目1项，获得国家授权实用新型专利4项，获得国家级和省级大学生竞赛优秀指导教30余项，指导省级大学生创新创业训练项目1项，发表教研论文多篇。主要研究方向计算机应用、嵌入式系统应用等。', '讲师', '1234', 'b6356b0e11169b6e03420b797b84fc9b', '崔永利', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，副教授，ACM程序设计竞赛和中国大学生程序设计竞赛教练，指导学生多次获国家级金银铜奖。主要研究方向计算机应用，网络编程等。', '副教授', '1234', 'c463721b6deaebb27c9130b5e17c4943', '叶飞', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，毕业于黑龙江大中医药大学，学士学位，高级工程师，曾就职于甲骨文等多家公司。研究方向：主要进行应用软件开发方向，主讲Java程序设计，JavaEE框架应用，分布式程序设计部分课程内容。', '高级工程师', '1234', 'c649a86abf345437508eff2241e14c91', '李文龙', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，双师型教师/硕士，硕士研究方向为计算机技术方向，曾获得联想金牌服务工程师、联想集团优秀大客户服务工程师、联想集团十佳大客户主管工程师等荣誉。重点开展服务器技术、存储技术、计算机运维技术等研究。先后参与完成黑龙江省《黑龙江省职教集团社会服务能力研究》、《信息技术职业教育集团办学研究与实践》等省级课题研究，为黑龙江省职教事业作出积极贡献。同时，在教学改革中取得优异成绩，2013年主持编写《网络存储与虚拟化技术》教材，同年教材入选物联网“落地有声”系列丛书； 2015年参编《大学计算机基础》教材。主持开发《服务器与存储技术》、《计算机维修原理》、《联想LCPE认证综合实训》等教学课程。', '讲师', '1234', 'd2e779069b6777d95d87a23a0205d9ce', '王伟峰', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('女，硕士，副教授，主要从事计算机软件方面和网络安全方面的研究，主讲电子商务网站建设、程序设计基础、数据库管理系统等课程。在任教期间一直从事科研任务，发表国家级刊物10余篇，主持和参与省级课题5项，获批软件著作权多项，参与编写教材2部', '副教授', '621813', 'd49e4f94b09069a8f299ccc2ad7409ad', '丁康健', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，副教授，硕士，黑龙江科技大学计算机与信息工程学院工作，参加工作20年，发表论文多篇，主持和参与多项项目，擅长计算机软件开发以及物联网等方面的教学与科研工作。', '副教授', '337466', 'e89c0fe7bc37bbbd96f3d980ecc2eb85', '张绍兵', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，高级工程师；计算机科学与技术教研室教师。研究方向：网络技术、网络安全。自2010年起开始在企业从事项目管理工作，并作为讲师多次参与省市各级政府部门的网络安全培训工作，并参与了国家发改委信息安全专项2项、科技局科技攻关2项。', '高级工程师', 'ptb8426', 'ec6bc8e5319d96c89dde1aeba3997d66', '彭天彬', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，哈尔滨工程大学软件工程专业学术型硕士研究生、中级工程师、中国计算机学会会员。曾先后就职于八达集团哈尔滨工业大学软件工程有限公司和哈工大大数据集团，参与研发《计算机网络环境监测系统》和《作业调度系统》，主持研发《智慧学习云平台》。研究方向主要包括：大数据处理、机器学习、社会网络分析与挖掘、自然语言处理等。', '中级工程师', '123light', 'ec76f1128aabb3153c1758cc6d68ea6c', '张亮', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，1966年11月出生，现工作于黑龙江科技大学计算机学院，职称是高级工程师，主要担当物联网专业本科生课程和计算机专业研究生的授课任务，同时从事校科研活动。本科毕业于黑龙江矿业学院，研究生毕业于哈尔滨工程大学。在校曾讲过Java、C++、计算机网络、云计算、分布式数据库、数据挖掘和Android等课程，主持完成过煤矿企业的考勤、煤矿数字化和数据挖掘等科研活动。指导过的学生毕业设计涉及物联网、网站设计、计算机网络建设、手机APP和数据挖掘等内容。', '高级工程师', '1234', 'f4b0dbd0b418103ab198b38cd936b12b', '李万武', 0, '导师', '1', 0, NULL, NULL, NULL, 0);
INSERT INTO `tutor` VALUES ('男，硕士学位，副教授，研究方向为自然语言处理、软件工程。主持或参与国家级、省部级科研及教研项目10余项。发表学术论文20余篇。男，硕士学位，副教授，研究方向为自然语言处理、软件工程。主持或参与国家级、省部级科研及教研项目10余项。发表学术论文20余篇。', '副教授', '3721qwer', 'f7955fbe2ed8e0033a1211072f6f8ba1', '李军', 0, '导师', '1', 0, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for x_time
-- ----------------------------
DROP TABLE IF EXISTS `x_time`;
CREATE TABLE `x_time`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `student_size` int(20) NULL DEFAULT NULL COMMENT '每位教师最多选择人数',
  `first_time` datetime(0) NULL DEFAULT NULL COMMENT '第一次开始时间',
  `two_time` datetime(0) NULL DEFAULT NULL COMMENT '第二次开始时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of x_time
-- ----------------------------
INSERT INTO `x_time` VALUES ('1', 8, '2021-12-03 00:00:00', '2021-12-29 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
