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

 Date: 21/07/2020 17:16:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Me', '$2a$10$C5ThymykM0PUkzgGxt0AEe/1p./EDGfhBn5h/2JJcDYXh00ZkijtC', 'Me@short.url', 0);
INSERT INTO `users` VALUES (2, 'ShorturlUser', '$2a$10$LddatyzDBbb7XlnbDN/Jru7GTPJn7og4vIaUAUEtj5R4Eeqcwy4TW', 'ShorturlUser@short.url', 0);
INSERT INTO `users` VALUES (3, 'admin', '$2a$10$cZX5bcsTlys.0ejXUFqacuhlRZMtRlxKhEZWFqW/Kfd9VvFPtKzb.', 'admin@short.url', 1);

SET FOREIGN_KEY_CHECKS = 1;
