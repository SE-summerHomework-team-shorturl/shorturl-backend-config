/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : shorturl

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 21/07/2020 17:16:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for short_urls
-- ----------------------------
DROP TABLE IF EXISTS `short_urls`;
CREATE TABLE `short_urls`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` int(11) NOT NULL,
  `clicks` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user`(`user`) USING BTREE,
  CONSTRAINT `short_urls_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of short_urls
-- ----------------------------
INSERT INTO `short_urls` VALUES (1, 'https://ipads.se.sjtu.edu.cn/courses/cdm/', 1, 0);
INSERT INTO `short_urls` VALUES (2, 'https://ipads.se.sjtu.edu.cn/courses/sep/', 1, 0);
INSERT INTO `short_urls` VALUES (3, 'https://ipads.se.sjtu.edu.cn/courses/ics/', 1, 0);
INSERT INTO `short_urls` VALUES (4, 'https://ipads.se.sjtu.edu.cn/courses/cse/', 1, 0);
INSERT INTO `short_urls` VALUES (5, 'https://ipads.se.sjtu.edu.cn/courses/os/', 1, 0);
INSERT INTO `short_urls` VALUES (6, 'https://reactjs.org/', 2, 0);
INSERT INTO `short_urls` VALUES (7, 'https://vuejs.org/', 2, 0);
INSERT INTO `short_urls` VALUES (8, 'https://angularjs.org/', 2, 0);
INSERT INTO `short_urls` VALUES (9, 'https://ant.design/', 2, 0);
INSERT INTO `short_urls` VALUES (10, 'https://antv.vision/', 2, 0);
INSERT INTO `short_urls` VALUES (11, 'https://element.eleme.io/', 2, 0);
INSERT INTO `short_urls` VALUES (12, 'https://jestjs.io/', 2, 0);
INSERT INTO `short_urls` VALUES (13, 'https://cypress.io/', 2, 0);

SET FOREIGN_KEY_CHECKS = 1;
