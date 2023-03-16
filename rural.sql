/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : rural

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 16/03/2023 23:10:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin` VALUES (1, 'test', '$2a$10$G2EIYPsk0cPJKWZ7xoVlP.VY3P82/ghIC7f..HgET7B6X7YomPWLK', 'string', '1060094938@qq.com', '测试账号', 'test', '2023-03-13 23:42:56', NULL, 1);
INSERT INTO `ums_admin` VALUES (2, 'admin', '$2a$10$kZbrKgRZ08ylM8n.J.P.3uU398GleW.f.AsndQuN11aPwazM5bbkK', 'https://avatars.githubusercontent.com/u/59273679?s=400&u=74db296f9babe437d71207cdc1997e01cdbc7038&v=4', '1060094938@qq.com', '超级管理员', 'string', '2023-03-15 23:03:45', '2023-03-16 21:57:17', 1);
INSERT INTO `ums_admin` VALUES (3, 'test2', '$2a$10$P.lxfSREWFjJwDiB31vomeAsi5fi1VzgamQPHZEvOkIYKgTvru6Iy', NULL, '1060094938@qq.com', '测试账号2', NULL, '2023-03-16 21:36:34', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户登录日志表';

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin_login_log` VALUES (1, 11, '2023-03-13 23:52:06', '192.168.1.2', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (2, 1, '2023-03-14 22:42:17', '192.168.1.2', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (3, 2, '2023-03-14 22:44:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (4, 2, '2023-03-14 22:52:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (5, 2, '2023-03-14 22:52:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (6, 2, '2023-03-14 22:53:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (7, 2, '2023-03-14 23:00:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (8, 2, '2023-03-14 23:02:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (9, 2, '2023-03-14 23:03:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (10, 2, '2023-03-14 23:03:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (11, 2, '2023-03-14 23:04:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (12, 2, '2023-03-14 23:05:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (13, 2, '2023-03-14 23:07:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (14, 2, '2023-03-14 23:07:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (15, 2, '2023-03-14 23:10:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (16, 2, '2023-03-14 23:10:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (17, 2, '2023-03-14 23:14:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (18, 2, '2023-03-14 23:14:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (19, 2, '2023-03-14 23:15:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (20, 2, '2023-03-14 23:15:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (21, 2, '2023-03-14 23:15:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (22, 2, '2023-03-14 23:15:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (23, 2, '2023-03-14 23:18:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (24, 2, '2023-03-14 23:18:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (25, 2, '2023-03-14 23:19:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (26, 2, '2023-03-14 23:19:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (27, 2, '2023-03-14 23:19:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (28, 2, '2023-03-14 23:19:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (29, 2, '2023-03-14 23:21:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (30, 2, '2023-03-14 23:30:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (31, 2, '2023-03-14 23:36:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (32, 2, '2023-03-14 23:37:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (33, 2, '2023-03-15 00:10:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (34, 2, '2023-03-15 00:17:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (35, 2, '2023-03-15 00:20:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (36, 2, '2023-03-15 00:28:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (37, 2, '2023-03-15 00:29:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (38, 2, '2023-03-15 00:30:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (39, 2, '2023-03-15 00:31:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (40, 2, '2023-03-15 00:32:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (41, 2, '2023-03-15 00:34:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (42, 2, '2023-03-15 00:34:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (43, 2, '2023-03-15 00:37:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (44, 2, '2023-03-15 00:39:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (45, 2, '2023-03-15 00:44:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (46, 2, '2023-03-15 21:44:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (47, 2, '2023-03-15 22:59:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (48, 2, '2023-03-15 22:59:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (49, 2, '2023-03-15 23:05:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (50, 2, '2023-03-16 21:38:20', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (51, 2, '2023-03-16 21:57:17', '127.0.0.1', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ums_admin_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_permission_relation`;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户和权限关系表(除角色中定义的权限以外的加减权限)';

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关系表';

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin_role_relation` VALUES (1, 1, 1);
INSERT INTO `ums_admin_role_relation` VALUES (2, 2, 1);
INSERT INTO `ums_admin_role_relation` VALUES (3, 3, 2);
COMMIT;

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '菜单名称',
  `level` int DEFAULT NULL COMMENT '菜单级数',
  `sort` int DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '前端图标',
  `hidden` int DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
BEGIN;
INSERT INTO `ums_menu` VALUES (1, 0, '2023-03-14 00:14:59', '人口管理', 0, 0, 'pms', 'pms', 0);
INSERT INTO `ums_menu` VALUES (2, 0, '2023-03-15 22:04:14', '权限', 0, 0, 'ums', 'ums', 0);
INSERT INTO `ums_menu` VALUES (3, 2, '2023-03-15 23:16:33', '用户列表', 1, 0, 'admin', 'ums-admin', 0);
INSERT INTO `ums_menu` VALUES (4, 2, '2023-03-15 23:46:24', '角色列表', 1, 0, 'role', 'ums-role', 0);
INSERT INTO `ums_menu` VALUES (5, 2, '2023-03-16 22:04:29', '菜单列表', 1, 0, 'menu', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (6, 1, '2023-03-16 22:35:34', '按户查询', 1, 0, 'household', 'pms-household', 0);
INSERT INTO `ums_menu` VALUES (7, 1, '2023-03-16 23:04:46', '按人查询', 1, 0, 'individual', 'pms-individual', 0);
COMMIT;

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '图标',
  `type` int DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '前端资源路径',
  `status` int DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户权限表';

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '描述',
  `category_id` bigint DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='资源表';

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '分类名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='资源分类表';

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '描述',
  `admin_count` int DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of ums_role
-- ----------------------------
BEGIN;
INSERT INTO `ums_role` VALUES (1, '超级管理员', '拥有所有查看和操作功能', 0, '2023-03-13 23:46:13', 1, 0);
INSERT INTO `ums_role` VALUES (2, '操作员', '只能进行业务操作，无法进行权限操作', 0, '2023-03-16 21:40:24', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关系表';

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
BEGIN;
INSERT INTO `ums_role_menu_relation` VALUES (36, 1, 1);
INSERT INTO `ums_role_menu_relation` VALUES (37, 1, 6);
INSERT INTO `ums_role_menu_relation` VALUES (38, 1, 7);
INSERT INTO `ums_role_menu_relation` VALUES (39, 1, 2);
INSERT INTO `ums_role_menu_relation` VALUES (40, 1, 3);
INSERT INTO `ums_role_menu_relation` VALUES (41, 1, 4);
INSERT INTO `ums_role_menu_relation` VALUES (42, 1, 5);
COMMIT;

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色资源关系表';

SET FOREIGN_KEY_CHECKS = 1;
