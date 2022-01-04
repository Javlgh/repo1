/*
 Navicat Premium Data Transfer

 Source Server         : 19_db
 Source Server Type    : MySQL
 Source Server Version : 50558
 Source Host           : localhost:3306
 Source Schema         : dev_xt

 Target Server Type    : MySQL
 Target Server Version : 50558
 File Encoding         : 65001

 Date: 30/12/2021 21:14:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for selection
-- ----------------------------
DROP TABLE IF EXISTS `selection`;
CREATE TABLE `selection`  (
  `sel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导师选择id',
  `sel_tea_id` int(11) NULL DEFAULT NULL COMMENT '导师id',
  `sel_stu_id` int(20) NULL DEFAULT NULL COMMENT '学生id',
  `sel_state` int(20) NULL DEFAULT 0 COMMENT '选择状态1表示成立0表示不成立',
  `sel_dir_id` int(20) NULL DEFAULT NULL COMMENT '选题方向id',
  `sel_subject` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选题题目',
  `sel_stu_grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '届\r\n年级',
  `sel_stu_del` int(10) NULL DEFAULT 1 COMMENT '逻辑删除',
  PRIMARY KEY (`sel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
