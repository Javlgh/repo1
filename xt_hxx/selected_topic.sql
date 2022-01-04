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

 Date: 31/12/2021 12:36:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
