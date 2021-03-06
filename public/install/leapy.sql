/*
 Navicat Premium Data Transfer

 Source Server         : learn
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 182.254.133.82:3306
 Source Schema         : learn_leapy_cn

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/05/2020 13:21:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lea_admin
-- ----------------------------
DROP TABLE IF EXISTS `lea_admin`;
CREATE TABLE `lea_admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) NOT NULL DEFAULT 0 COMMENT '前台用户ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `pwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `realname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `role_id` int(4) NOT NULL DEFAULT 0 COMMENT '角色id',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `status` tinyint(1) NOT NULL COMMENT '状态1:正常0冻结',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册ip',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台人员列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_admin
-- ----------------------------
INSERT INTO `lea_admin` VALUES (1, 1, 'admin', 'admin', '14e1b600b1fd579f47433b88e8d85291', '张三', 'http://file.cos.leapy.cn/image/20200509/29a4a202005092052147675.jpg', 1, '17896852019', 'cfn@leapy.cn', '这家伙很懒，什么也没留下。', 1, NULL, '1', '1580031132', '1', '1590409452');
INSERT INTO `lea_admin` VALUES (57, 0, 'ceshi01', 'ceshi01', '14e1b600b1fd579f47433b88e8d85291', 'ceshi01', '/upload/image/20200216/a297c44d546d17db330b00767c1fedf2.png', 8, '10000000000', 'cfn@leapy.cn', '这家伙很懒，什么也没留下。', 1, '219.156.190.47', '1', '1581846541', '1', '1582548488');
INSERT INTO `lea_admin` VALUES (58, 0, 'pdd', 'pdd', '14e1b600b1fd579f47433b88e8d85291', 'pdd', '/upload/image/20200224/40feac783217d53169858607ce5da8ad.jfif', 6, '11111111111', 'cfn@leapy.cn', '这家伙很懒，什么也没留下。', 1, '219.156.185.197', '1', '1582548473', '1', '1582548592');
INSERT INTO `lea_admin` VALUES (59, 0, 'ceshi02', 'ceshi02', '14e1b600b1fd579f47433b88e8d85291', 'ceshi02', '/upload/image/20200411/cad1ea4cdb68a8179820d6edd30bfdae.ico', 8, '11111111111', 'cfn@leapy.cn', '这家伙很懒，什么也没留下。', 1, '219.156.185.197', '1', '1582549470', '1', '1586673794');

-- ----------------------------
-- Table structure for lea_admin_auth
-- ----------------------------
DROP TABLE IF EXISTS `lea_admin_auth`;
CREATE TABLE `lea_admin_auth`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `pid` int(4) NOT NULL DEFAULT 0 COMMENT '父id',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名',
  `controller` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控制器名称',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名名称',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `font_family` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字体',
  `spreed` tinyint(1) NULL DEFAULT 0 COMMENT 'spreed',
  `is_check` tinyint(1) NULL DEFAULT 0 COMMENT '是否选中',
  `is_menu` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否菜单',
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路径',
  `rank` int(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1可用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_admin_auth
-- ----------------------------
INSERT INTO `lea_admin_auth` VALUES (1, '查看日志', '', 8, 'admin', 'admin.admin_log', 'index', '', 'ok-icon', 0, 0, 1, '/admin/admin.admin_log/index', 0, 1, NULL, NULL, NULL, '1581664102');
INSERT INTO `lea_admin_auth` VALUES (2, '控制台', 'mdi mdi-home', 0, 'admin', 'index', 'main', '', 'ok-icon', 0, 1, 1, '/admin/index/main', 99, 1, NULL, NULL, '1', '1590466572');
INSERT INTO `lea_admin_auth` VALUES (3, '工作流管理', 'mdi mdi-clipboard-flow', 0, 'admin', 'workflow.index', 'index', '', NULL, 0, 0, 1, '/admin/workflow.index/index', 61, 1, NULL, NULL, '1', '1582170237');
INSERT INTO `lea_admin_auth` VALUES (4, '账号管理', 'mdi mdi-account', 0, 'admin', 'admin.admin', 'index', '', 'ok-icon', 0, 0, 1, '/admin/admin.admin/index', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (5, '用户管理', '', 4, 'admin', 'admin.admin', 'index', '', NULL, 0, 0, 1, '/admin/admin.admin/index', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (6, '权限管理', '', 4, 'admin', 'admin.admin_auth', 'index', '', NULL, 0, 0, 1, '/admin/admin.admin_auth/index', 0, 1, NULL, NULL, '1', '1582263685');
INSERT INTO `lea_admin_auth` VALUES (7, '角色管理', '', 4, 'admin', 'admin.admin_role', 'index', '', NULL, 0, 0, 1, '/admin/admin.admin_role/index', 0, 1, NULL, NULL, '1', '1582263652');
INSERT INTO `lea_admin_auth` VALUES (8, '系统管理', 'mdi mdi-settings', 0, 'admin', 'admin.admin_log', 'index', '', 'ok-icon', 1, 1, 1, '/admin/admin.admin_log/index', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (14, '系统图标', '', 8, 'admin', 'admin.admin_icon', 'index', '', NULL, 0, 0, 1, '/admin/admin.admin_icon/index', 99, 1, '1', '1581668876', '1', '1581669026');
INSERT INTO `lea_admin_auth` VALUES (15, '拼多多管理', 'mdi mdi-radar', 0, 'admin', 'pinduoduo.store', 'index', '', NULL, 0, 0, 1, '/admin/pinduoduo.store/index', 70, 1, '1', '1581734454', '1', '1582170179');
INSERT INTO `lea_admin_auth` VALUES (16, '供应商管理', '', 15, 'admin', 'pinduoduo.provider', 'index', '', NULL, 0, 0, 1, '/admin/pinduoduo.provider/index', 0, 1, '1', '1581734513', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (17, '商品操作', '', 15, 'admin', 'pinduoduo.goods', 'index', '', NULL, 0, 0, 1, '/admin/pinduoduo.goods/index', 0, 1, '1', '1581734576', '1', '1581734643');
INSERT INTO `lea_admin_auth` VALUES (18, '订单操作', '', 15, 'admin', 'pinduoduo.order', 'index', '', NULL, 0, 0, 1, '/admin/pinduoduo.order/index', 0, 1, '1', '1581734627', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (19, '店铺信息', '', 15, 'admin', 'pinduoduo.store', 'index', '', NULL, 0, 0, 1, '/admin/pinduoduo.store/index', 99, 1, '1', '1581734906', '1', '1581739298');
INSERT INTO `lea_admin_auth` VALUES (20, '修改密码', '', 8, 'admin', 'admin.admin', 'pwd', '', NULL, 0, 0, 0, '/admin/admin.admin/pwd', 0, 1, '1', '1582093161', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (21, '清理缓存', '', 8, 'admin', 'index', 'clearCache', '', NULL, 0, 0, 0, '/admin/index/clearCache', 0, 1, '1', '1582093658', NULL, '1582093666');
INSERT INTO `lea_admin_auth` VALUES (22, '项目管理', 'mdi mdi-poll-box', 0, 'admin', 'project', 'index', '', NULL, 0, 0, 1, '/admin/project/index', 90, 1, '1', '1582169660', '1', '1582169729');
INSERT INTO `lea_admin_auth` VALUES (23, '数据库管理', 'mdi mdi-database', 0, 'admin', 'database', 'index', '', NULL, 0, 0, 1, '/admin/database/index', 60, 1, '1', '1582169891', '1', '1582170211');
INSERT INTO `lea_admin_auth` VALUES (24, 'CMS管理', 'mdi mdi-file-document-box', 0, 'admin', 'cms', 'index', '', NULL, 0, 0, 1, '/admin/cms/index', 91, 1, '1', '1582170069', '1', '1582170142');
INSERT INTO `lea_admin_auth` VALUES (25, '接口管理', 'mdi mdi-locker-multiple', 0, 'admin', 'api', 'index', '', NULL, 0, 0, 1, '/admin/api/index', 71, 1, '1', '1582196749', '1', '1582196831');
INSERT INTO `lea_admin_auth` VALUES (26, '网站配置', '', 8, 'admin', 'system.system_config', 'base', '', NULL, 0, 0, 1, '/admin/system.system_config/base', 0, 1, '1', '1582266348', '1', '1582781624');
INSERT INTO `lea_admin_auth` VALUES (27, '开发者配置', '', 8, 'admin', 'system.system_config_tab', 'index', '', NULL, 0, 0, 1, '/admin/system.system_config_tab/index', 0, 1, '1', '1582266439', '1', '1590149680');
INSERT INTO `lea_admin_auth` VALUES (28, '项目管理', '', 22, 'admin', 'project.project', 'index', '', NULL, 0, 0, 1, '/admin/project.project/index', 0, 1, '1', '1582526942', '1', '1582529689');
INSERT INTO `lea_admin_auth` VALUES (29, '项目需求', '', 22, 'admin', 'project.project_clausse', 'index', '', NULL, 0, 0, 1, '/admin/project.project_clausse/index', 0, 1, '1', '1582704587', '1', '1582704691');
INSERT INTO `lea_admin_auth` VALUES (30, '项目分工', '', 22, 'admin', 'project.project_role', 'index', '', NULL, 0, 0, 1, '/admin/project.project_role/index', 0, 1, '1', '1582705447', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (31, '项目人员', '', 22, 'admin', 'project.project_person', 'index', '', NULL, 0, 0, 1, '/admin/project.project_person/index', 0, 1, '1', '1582706577', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (33, 'BUG反馈', '', 22, 'admin', 'project.project_bug', 'index', '', NULL, 0, 0, 1, '/admin/project.project_bug/index', 0, 1, '1', '1582706703', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (34, '项目明细', '', 22, 'admin', 'project.project', 'detail', '', NULL, 0, 0, 1, '/admin/project.project/detail', 90, 1, '1', '1582706965', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (35, '后台登录', '', 8, 'admin', 'login', 'login', '', NULL, 0, 0, 0, '/admin/login/login', 0, 1, '1', '1582707133', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (36, '上传配置', '', 8, 'admin', 'system.system_config', 'upload', '', NULL, 0, 0, 0, '/admin/system.system_config/upload', 0, 1, '1', '1582781658', NULL, '1582781667');
INSERT INTO `lea_admin_auth` VALUES (37, '短信配置', '', 8, 'admin', 'system.system_config', 'sms', '', NULL, 0, 0, 0, '/admin/system.system_config/sms', 0, 1, '1', '1582781757', NULL, '1582781796');
INSERT INTO `lea_admin_auth` VALUES (38, '邮件配置', '', 8, 'admin', 'system.system_config', 'email', '', NULL, 0, 0, 0, '/admin/system.system_config/email', 0, 1, '1', '1582781787', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (39, '数据测试', 'mdi mdi-test-tube', 0, 'admin', 'test', 'index', '', NULL, 0, 0, 1, '/admin/test/index', 98, 1, '1', '1583136800', '1', '1588167900');
INSERT INTO `lea_admin_auth` VALUES (40, '微信配置', '', 8, 'admin', 'system.system_config', 'wechat', '', NULL, 0, 0, 1, '/admin/system.system_config/wechat', 80, 1, '1', '1583221636', '1', '1583221816');
INSERT INTO `lea_admin_auth` VALUES (41, 'MYSQL', '', 23, 'admin', 'database.mysql', 'index', '', NULL, 0, 0, 1, '/admin/database.mysql/index', 0, 1, '1', '1583387156', '1', '1583387537');
INSERT INTO `lea_admin_auth` VALUES (42, 'REDIS', '', 23, 'admin', 'database.redis', 'index', '', NULL, 0, 0, 1, '/admin/database.redis/index', 0, 1, '1', '1583387567', '1', '1583392550');
INSERT INTO `lea_admin_auth` VALUES (43, '微信公众号', 'mdi mdi-wechat', 0, 'admin', 'wechat.wechat_menu', 'index', '', NULL, 0, 0, 1, '/admin/wechat.wechat_menu/index', 65, 1, '1', '1583414051', '1', '1583414216');
INSERT INTO `lea_admin_auth` VALUES (44, '菜单管理', '', 43, 'admin', 'wechat.wechat_menu', 'menu', '', NULL, 0, 0, 1, '/admin/wechat.wechat_menu/menu', 0, 1, '1', '1583414106', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (45, '自动回复', '', 43, 'admin', 'wechat.wechat_reply', 'index', '', NULL, 0, 0, 1, '/admin/wechat.wechat_reply/index', 0, 1, '1', '1583414161', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (46, '关注时回复', '', 45, 'admin', 'wechat.wechat_reply', 'focus', '', NULL, 0, 0, 1, '/admin/wechat.wechat_reply/focus', 0, 1, '1', '1583417667', '1', '1584149678');
INSERT INTO `lea_admin_auth` VALUES (47, '栏目管理', '', 24, 'admin', 'cms.cms_category', 'index', '', NULL, 0, 0, 1, '/admin/cms.cms_category/index', 0, 1, '1', '1583421123', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (48, '单页管理', '', 24, 'admin', 'cms.cms_page', 'index', '', NULL, 0, 0, 1, '/admin/cms.cms_page/index', 0, 1, '1', '1583463448', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (49, '文章管理', '', 24, 'admin', 'cms.cms_article', 'index', '', NULL, 0, 0, 1, '/admin/cms.cms_article/index', 0, 1, '1', '1583463481', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (50, '留言反馈', 'mdi mdi-message', 0, 'admin', 'user.user_message', 'index', '', NULL, 0, 0, 1, '/admin/user.user_message/index', 80, 1, '1', '1583464152', '1', '1583558450');
INSERT INTO `lea_admin_auth` VALUES (51, '文章标签', '', 24, 'admin', 'cms.cms_tag', 'index', '', NULL, 0, 0, 1, '/admin/cms.cms_tag/index', 0, 1, '1', '1583464330', '1', '1583510977');
INSERT INTO `lea_admin_auth` VALUES (52, '轮播管理', '', 24, 'admin', 'cms.cms_banner', 'index', '', NULL, 0, 0, 1, '/admin/cms.cms_banner/index', 0, 1, '1', '1583464406', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (53, '留言反馈', '', 50, 'admin', 'user.user_message', 'index', '', NULL, 0, 0, 1, '/admin/user.user_message/index', 0, 1, '1', '1583558491', '1', '1583558582');
INSERT INTO `lea_admin_auth` VALUES (54, '无效词回复', '', 45, 'admin', 'wechat.wechat_reply', 'default', '', NULL, 0, 0, 1, '/admin/wechat.wechat_reply/default', 0, 1, '1', '1584149748', '1', '1584150322');
INSERT INTO `lea_admin_auth` VALUES (55, '关键词回复', '', 45, 'admin', 'wechat.wechat_reply', 'keyword', '', NULL, 0, 0, 1, '/admin/wechat.wechat_reply/keyword', 0, 1, '1', '1584149911', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (56, '附件管理', '', 8, 'admin', 'widget', 'index', '', NULL, 0, 0, 0, '/admin/widget/index', 0, 1, '1', '1584758583', '1', '1584758865');
INSERT INTO `lea_admin_auth` VALUES (57, '选择图标', '', 56, 'admin', 'widget_icon', 'index', '', NULL, 0, 0, 0, '/admin/widget_icon/index', 0, 1, '1', '1584758637', NULL, '1584758874');
INSERT INTO `lea_admin_auth` VALUES (58, '单图片上传1', '', 56, 'admin', 'widget.files', 'image', '', NULL, 0, 0, 0, '/admin/widget.files/image', 0, 1, '1', '1584758709', NULL, '1584758878');
INSERT INTO `lea_admin_auth` VALUES (59, 'bs64上传转图片', '', 56, 'admin', 'widget_files', 'baseToImage', '', NULL, 0, 0, 0, '/admin/widget_files/baseToImage', 0, 1, '1', '1584758783', NULL, '1584758881');
INSERT INTO `lea_admin_auth` VALUES (60, 'tinymce图片上传', '', 56, 'admin', 'widget.files', 'tinymce', '', NULL, 0, 0, 0, '/admin/widget.files/tinymce', 0, 1, '1', '1584758813', NULL, '1584758870');
INSERT INTO `lea_admin_auth` VALUES (62, '视频小程序管理', 'mdi mdi-video', 0, 'admin', 'video.video', 'index', '', NULL, 0, 0, 1, '/admin/video.video/index', 99, 1, '1', '1587786268', '1', '1589012990');
INSERT INTO `lea_admin_auth` VALUES (63, '视频列表', '', 62, 'admin', 'mini.mini_video', 'index', '', NULL, 0, 0, 1, '/admin/mini.mini_video/index', 0, 1, '1', '1587904804', '1', '1588570158');
INSERT INTO `lea_admin_auth` VALUES (64, '视频标签', '', 62, 'admin', 'mini.mini_video_tag', 'index', '', NULL, 0, 0, 1, '/admin/mini.mini_video_tag/index', 0, 1, '1', '1587904881', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (65, '视频轮播', '', 62, 'admin', 'mini.mini_video_banner', 'index', '', NULL, 0, 0, 1, '/admin/mini.mini_video_banner/index', 0, 1, '1', '1588077460', NULL, NULL);
INSERT INTO `lea_admin_auth` VALUES (66, '支付配置', '', 8, 'admin', 'system.system_config', 'base', '?tab_id=38', NULL, 0, 0, 1, '/admin/system.system_config/base', 0, 1, '1', '1588847202', '1', '1588854156');

-- ----------------------------
-- Table structure for lea_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `lea_admin_log`;
CREATE TABLE `lea_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `admin_id` int(10) NOT NULL COMMENT '操作人id',
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人名字',
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名',
  `controller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控制器名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'User-Agent',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10502 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_admin_log
-- ----------------------------
INSERT INTO `lea_admin_log` VALUES (9452, 1, 'admin', 'admin', 'system.system_config', 'wechat', '112.51.118.203', '1590149740', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9453, 1, 'admin', 'admin', 'login', 'login', '1.81.33.32', '1590161597', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9454, 1, 'admin', 'admin', 'index', 'main', '1.81.33.32', '1590161600', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9455, 1, 'admin', 'admin', 'test', 'index', '1.81.33.32', '1590161605', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9456, 1, 'admin', 'admin', 'mini.mini_video', 'index', '1.81.33.32', '1590161607', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9457, 1, 'admin', 'admin', 'cms.cms_category', 'index', '1.81.33.32', '1590161613', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9458, 1, 'admin', 'admin', 'cms.cms_page', 'index', '1.81.33.32', '1590161615', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9459, 1, 'admin', 'admin', 'project.project', 'detail', '1.81.33.32', '1590161618', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9460, 1, 'admin', 'admin', 'project.project', 'index', '1.81.33.32', '1590161620', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9461, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '1.81.33.32', '1590161623', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9462, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '1.81.33.32', '1590161624', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9463, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '1.81.33.32', '1590161627', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9464, 1, 'admin', 'admin', 'workflow.index', 'index', '1.81.33.32', '1590161631', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9465, 1, 'admin', 'admin', 'cms.cms_article', 'index', '1.81.33.32', '1590162756', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9466, 1, 'admin', 'admin', 'login', 'login', '220.152.244.190', '1590246610', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9467, 1, 'admin', 'admin', 'index', 'main', '220.152.244.190', '1590246612', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9468, 1, 'admin', 'admin', 'mini.mini_video', 'index', '220.152.244.190', '1590246621', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9469, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '220.152.244.190', '1590246627', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9470, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '220.152.244.190', '1590246629', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9471, 1, 'admin', 'admin', 'test', 'index', '220.152.244.190', '1590246633', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9472, 1, 'admin', 'admin', 'cms.cms_category', 'index', '220.152.244.190', '1590246637', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9473, 1, 'admin', 'admin', 'cms.cms_article', 'index', '220.152.244.190', '1590246640', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9474, 1, 'admin', 'admin', 'project.project', 'detail', '220.152.244.190', '1590246644', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9475, 1, 'admin', 'admin', 'project.project', 'index', '220.152.244.190', '1590246647', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9476, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '220.152.244.190', '1590246655', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9477, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '220.152.244.190', '1590246661', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9478, 1, 'admin', 'admin', 'system.system_config', 'base', '220.152.244.190', '1590246681', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9479, 1, 'admin', 'admin', 'system.system_config', 'base', '220.152.244.190', '1590246690', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9480, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '220.152.244.190', '1590247530', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9481, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '220.152.244.190', '1590247548', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9482, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '220.152.244.190', '1590247557', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9483, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '220.152.244.190', '1590247583', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9484, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '220.152.244.190', '1590247586', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9485, 1, 'admin', 'admin', 'workflow.index', 'index', '220.152.244.190', '1590247589', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9486, 1, 'admin', 'admin', 'database.mysql', 'index', '220.152.244.190', '1590247616', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9487, 1, 'admin', 'admin', 'admin.admin', 'index', '220.152.244.190', '1590247631', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9488, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '220.152.244.190', '1590247644', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9489, 1, 'admin', 'admin', 'login', 'login', '112.45.195.41', '1590252837', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9490, 1, 'admin', 'admin', 'index', 'main', '112.45.195.41', '1590252840', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9491, 1, 'admin', 'admin', 'cms.cms_category', 'index', '112.45.195.41', '1590252861', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9492, 1, 'admin', 'admin', 'cms.cms_page', 'index', '112.45.195.41', '1590252863', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9493, 1, 'admin', 'admin', 'test', 'index', '112.45.195.41', '1590252878', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9494, 1, 'admin', 'admin', 'login', 'login', '0.0.0.0', '1590287364', '');
INSERT INTO `lea_admin_log` VALUES (9495, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590287365', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9496, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '101.85.7.152', '1590287369', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9497, 1, 'admin', 'admin', 'login', 'login', '111.226.7.25', '1590287371', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9498, 1, 'admin', 'admin', 'index', 'main', '111.226.7.25', '1590287376', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9499, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590287377', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9500, 1, 'admin', 'admin', 'test', 'index', '111.226.7.25', '1590287384', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9501, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '111.226.7.25', '1590287391', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9502, 1, 'admin', 'admin', 'cms.cms_category', 'index', '111.226.7.25', '1590287392', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9503, 1, 'admin', 'admin', 'cms.cms_page', 'index', '111.226.7.25', '1590287400', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9504, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.226.7.25', '1590287401', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9505, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '111.226.7.25', '1590287403', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9506, 1, 'admin', 'admin', 'project.project', 'detail', '111.226.7.25', '1590287407', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9507, 1, 'admin', 'admin', 'project.project', 'index', '111.226.7.25', '1590287409', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9508, 1, 'admin', 'admin', 'user.user_message', 'index', '111.226.7.25', '1590287421', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9509, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '111.226.7.25', '1590287426', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9510, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '111.226.7.25', '1590287427', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9511, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '111.226.7.25', '1590287427', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9512, 1, 'admin', 'admin', 'workflow.index', 'index', '111.226.7.25', '1590287437', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9513, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '111.226.7.25', '1590287440', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9514, 1, 'admin', 'admin', 'admin.admin', 'index', '111.226.7.25', '1590287441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9515, 1, 'admin', 'admin', 'database.mysql', 'index', '111.226.7.25', '1590287443', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9516, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590287450', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9517, 1, 'admin', 'admin', 'system.system_config', 'wechat', '111.226.7.25', '1590287456', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9518, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '111.226.7.25', '1590287457', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9519, 1, 'admin', 'admin', 'system.system_config', 'base', '111.226.7.25', '1590287460', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9520, 1, 'admin', 'admin', 'system.system_config', 'base', '111.226.7.25', '1590287461', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9521, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590287742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9522, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590287773', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9523, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590287871', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9524, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590288305', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9525, 1, 'admin', 'admin', 'login', 'login', '111.36.170.114', '1590288334', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `lea_admin_log` VALUES (9526, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590288334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9527, 1, 'admin', 'admin', 'index', 'main', '111.36.170.114', '1590288337', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `lea_admin_log` VALUES (9528, 1, 'admin', 'admin', 'cms.cms_category', 'index', '111.36.170.114', '1590288344', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `lea_admin_log` VALUES (9529, 1, 'admin', 'admin', 'cms.cms_page', 'index', '111.36.170.114', '1590288361', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `lea_admin_log` VALUES (9530, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.36.170.114', '1590288374', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0');
INSERT INTO `lea_admin_log` VALUES (9531, 1, 'admin', 'admin', 'login', 'login', '219.132.117.20', '1590293894', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9532, 1, 'admin', 'admin', 'index', 'main', '219.132.117.20', '1590293897', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9533, 1, 'admin', 'admin', 'database.mysql', 'index', '219.132.117.20', '1590293906', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9534, 1, 'admin', 'admin', 'system.system_config', 'base', '219.132.117.20', '1590293920', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9535, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '219.132.117.20', '1590293940', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9536, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '219.132.117.20', '1590293952', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9537, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '219.132.117.20', '1590293954', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9538, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '219.132.117.20', '1590293955', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9539, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '219.132.117.20', '1590293957', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9540, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '219.132.117.20', '1590293962', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9541, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '219.132.117.20', '1590293973', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9542, 1, 'admin', 'admin', 'cms.cms_category', 'index', '219.132.117.20', '1590293981', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9543, 1, 'admin', 'admin', 'index', 'main', '219.132.117.20', '1590294003', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9544, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '219.132.117.20', '1590294007', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9545, 1, 'admin', 'admin', 'cms.cms_category', 'index', '219.132.117.20', '1590294010', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9546, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '219.132.117.20', '1590294044', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9547, 1, 'admin', 'admin', 'system.system_config', 'base', '219.132.117.20', '1590294051', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9548, 1, 'admin', 'admin', 'index', 'main', '219.132.117.20', '1590294913', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9549, 1, 'admin', 'admin', 'workflow.index', 'index', '219.132.117.20', '1590294916', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9550, 1, 'admin', 'admin', 'mini.mini_video', 'index', '219.132.117.20', '1590294920', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362');
INSERT INTO `lea_admin_log` VALUES (9551, 1, 'admin', 'admin', 'login', 'login', '103.57.13.9', '1590308398', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9552, 1, 'admin', 'admin', 'index', 'main', '103.57.13.9', '1590308400', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9553, 1, 'admin', 'admin', 'workflow.index', 'index', '103.57.13.9', '1590308403', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9554, 1, 'admin', 'admin', 'cms.cms_article', 'index', '103.57.13.9', '1590308411', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9555, 1, 'admin', 'admin', 'index', 'main', '103.57.13.9', '1590308435', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9556, 1, 'admin', 'admin', 'cms.cms_article', 'index', '103.57.13.9', '1590308452', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1');
INSERT INTO `lea_admin_log` VALUES (9557, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '103.57.13.9', '1590308481', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9558, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '103.57.13.9', '1590308485', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9559, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '103.57.13.9', '1590308487', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9560, 1, 'admin', 'admin', 'admin.admin', 'index', '103.57.13.9', '1590308495', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9561, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '103.57.13.9', '1590308497', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9562, 1, 'admin', 'admin', 'admin.admin_role', 'index', '103.57.13.9', '1590308512', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9563, 1, 'admin', 'admin', 'cms.cms_category', 'index', '103.57.13.9', '1590308547', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9564, 1, 'admin', 'admin', 'cms.cms_page', 'index', '103.57.13.9', '1590308549', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9565, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '103.57.13.9', '1590308551', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9566, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '103.57.13.9', '1590308552', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9567, 1, 'admin', 'admin', 'login', 'login', '113.101.40.95', '1590309933', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9568, 1, 'admin', 'admin', 'index', 'main', '113.101.40.95', '1590309936', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9569, 1, 'admin', 'admin', 'mini.mini_video', 'index', '113.101.40.95', '1590309940', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9570, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '113.101.40.95', '1590309965', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9571, 1, 'admin', 'admin', 'test', 'index', '113.101.40.95', '1590309967', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9572, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '113.101.40.95', '1590309970', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9573, 1, 'admin', 'admin', 'project.project', 'detail', '113.101.40.95', '1590309980', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9574, 1, 'admin', 'admin', 'project.project', 'index', '113.101.40.95', '1590309982', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9575, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '113.101.40.95', '1590310002', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9576, 1, 'admin', 'admin', 'database.mysql', 'index', '113.101.40.95', '1590310008', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9577, 1, 'admin', 'admin', 'database.redis', 'index', '113.101.40.95', '1590310015', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9578, 1, 'admin', 'admin', 'admin.admin', 'index', '113.101.40.95', '1590310021', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9579, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '113.101.40.95', '1590310025', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9580, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '113.101.40.95', '1590310053', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9581, 1, 'admin', 'admin', 'system.system_config', 'base', '113.101.40.95', '1590310056', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9582, 1, 'admin', 'admin', 'system.system_config', 'base', '113.101.40.95', '1590310059', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (9583, 1, 'admin', 'admin', 'login', 'login', '60.185.240.73', '1590370460', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9584, 1, 'admin', 'admin', 'index', 'main', '60.185.240.73', '1590370462', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9585, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '60.185.240.73', '1590370467', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9586, 1, 'admin', 'admin', 'mini.mini_video', 'index', '60.185.240.73', '1590370468', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9587, 1, 'admin', 'admin', 'test', 'index', '60.185.240.73', '1590370470', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9588, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '60.185.240.73', '1590370472', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9589, 1, 'admin', 'admin', 'cms.cms_category', 'index', '60.185.240.73', '1590370472', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9590, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '60.185.240.73', '1590370477', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9591, 1, 'admin', 'admin', 'project.project', 'detail', '60.185.240.73', '1590370484', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9592, 1, 'admin', 'admin', 'workflow.index', 'index', '60.185.240.73', '1590370488', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9593, 1, 'admin', 'admin', 'database.mysql', 'index', '60.185.240.73', '1590370490', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9594, 1, 'admin', 'admin', 'database.redis', 'index', '60.185.240.73', '1590370492', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9595, 1, 'admin', 'admin', 'admin.admin', 'index', '60.185.240.73', '1590370505', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9596, 1, 'admin', 'admin', 'admin.admin_role', 'index', '60.185.240.73', '1590370515', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9597, 1, 'admin', 'admin', 'cms.cms_page', 'index', '60.185.240.73', '1590370547', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9598, 1, 'admin', 'admin', 'cms.cms_article', 'index', '60.185.240.73', '1590370555', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.72');
INSERT INTO `lea_admin_log` VALUES (9599, 1, 'admin', 'admin', 'login', 'login', '61.141.65.242', '1590372530', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9600, 1, 'admin', 'admin', 'index', 'main', '61.141.65.242', '1590372532', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9601, 1, 'admin', 'admin', 'mini.mini_video', 'index', '61.141.65.242', '1590372552', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9602, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '61.141.65.242', '1590372580', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9603, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '61.141.65.242', '1590372605', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9604, 1, 'admin', 'admin', 'test', 'index', '61.141.65.242', '1590372613', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9605, 1, 'admin', 'admin', 'cms.cms_category', 'index', '61.141.65.242', '1590372618', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9606, 1, 'admin', 'admin', 'cms.cms_page', 'index', '61.141.65.242', '1590372620', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9607, 1, 'admin', 'admin', 'cms.cms_article', 'index', '61.141.65.242', '1590372621', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9608, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '61.141.65.242', '1590372622', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9609, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '61.141.65.242', '1590372622', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9610, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '61.141.65.242', '1590372634', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9611, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '61.141.65.242', '1590372635', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9612, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '61.141.65.242', '1590372636', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9613, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '61.141.65.242', '1590372638', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9614, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '61.141.65.242', '1590372640', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9615, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '61.141.65.242', '1590372654', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9616, 1, 'admin', 'admin', 'workflow.index', 'index', '61.141.65.242', '1590372657', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9617, 1, 'admin', 'admin', 'database.mysql', 'index', '61.141.65.242', '1590372662', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9618, 1, 'admin', 'admin', 'database.redis', 'index', '61.141.65.242', '1590372665', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9619, 1, 'admin', 'admin', 'admin.admin', 'index', '61.141.65.242', '1590372670', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9620, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '61.141.65.242', '1590372671', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9621, 1, 'admin', 'admin', 'admin.admin_role', 'index', '61.141.65.242', '1590372672', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9622, 1, 'admin', 'admin', 'system.system_config', 'base', '61.141.65.242', '1590372680', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9623, 1, 'admin', 'admin', 'login', 'login', '1.204.201.148', '1590375227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9624, 1, 'admin', 'admin', 'index', 'main', '1.204.201.148', '1590375230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9625, 1, 'admin', 'admin', 'mini.mini_video', 'index', '1.204.201.148', '1590375232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9626, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '1.204.201.148', '1590375249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9627, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '1.204.201.148', '1590375250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9628, 1, 'admin', 'admin', 'test', 'index', '1.204.201.148', '1590375256', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9629, 1, 'admin', 'admin', 'cms.cms_category', 'index', '1.204.201.148', '1590375264', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9630, 1, 'admin', 'admin', 'project.project', 'detail', '1.204.201.148', '1590375268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9631, 1, 'admin', 'admin', 'project.project', 'index', '1.204.201.148', '1590375270', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9632, 1, 'admin', 'admin', 'user.user_message', 'index', '1.204.201.148', '1590375296', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9633, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '1.204.201.148', '1590375300', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9634, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '1.204.201.148', '1590375302', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9635, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '1.204.201.148', '1590375305', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9636, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '1.204.201.148', '1590375310', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9637, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '1.204.201.148', '1590375313', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9638, 1, 'admin', 'admin', 'workflow.index', 'index', '1.204.201.148', '1590375317', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9639, 1, 'admin', 'admin', 'database.mysql', 'index', '1.204.201.148', '1590375379', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9640, 1, 'admin', 'admin', 'database.redis', 'index', '1.204.201.148', '1590375386', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9641, 1, 'admin', 'admin', 'admin.admin', 'index', '1.204.201.148', '1590375392', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9642, 1, 'admin', 'admin', 'system.system_config', 'wechat', '1.204.201.148', '1590375395', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9643, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '1.204.201.148', '1590375395', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9644, 1, 'admin', 'admin', 'system.system_config', 'base', '1.204.201.148', '1590375400', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9645, 1, 'admin', 'admin', 'system.system_config', 'base', '1.204.201.148', '1590375401', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9646, 1, 'admin', 'admin', 'cms.cms_page', 'index', '1.204.201.148', '1590375472', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9647, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '1.204.201.148', '1590375473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9648, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '1.204.201.148', '1590375473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9649, 1, 'admin', 'admin', 'system.system_config', 'base', '1.204.201.148', '1590375481', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9650, 1, 'admin', 'admin', 'system.system_config', 'base', '1.204.201.148', '1590375481', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9651, 1, 'admin', 'admin', 'system.system_config', 'base', '1.204.201.148', '1590375482', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9652, 1, 'admin', 'admin', 'system.system_config', 'wechat', '1.204.201.148', '1590375486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9653, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '1.204.201.148', '1590375497', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9654, 1, 'admin', 'admin', 'admin.admin_role', 'index', '1.204.201.148', '1590375508', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9655, 1, 'admin', 'admin', 'database.mysql', 'index', '1.204.201.148', '1590375557', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9656, 1, 'admin', 'admin', 'workflow.index', 'index', '1.204.201.148', '1590375755', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9657, 1, 'admin', 'admin', 'login', 'login', '180.175.1.70', '1590385328', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9658, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590385330', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9659, 1, 'admin', 'admin', 'system.system_config', 'wechat', '180.175.1.70', '1590385333', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9660, 1, 'admin', 'admin', 'system.system_config', 'base', '180.175.1.70', '1590385336', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9661, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '180.175.1.70', '1590385345', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9662, 1, 'admin', 'admin', 'admin.admin_role', 'index', '180.175.1.70', '1590385346', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9663, 1, 'admin', 'admin', 'admin.admin', 'index', '180.175.1.70', '1590385348', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9664, 1, 'admin', 'admin', 'login', 'login', '218.4.244.64', '1590392785', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9665, 1, 'admin', 'admin', 'index', 'main', '218.4.244.64', '1590392788', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9666, 1, 'admin', 'admin', 'mini.mini_video', 'index', '218.4.244.64', '1590392800', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9667, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '218.4.244.64', '1590392801', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9668, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '218.4.244.64', '1590392802', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9669, 1, 'admin', 'admin', 'test', 'index', '218.4.244.64', '1590392814', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9670, 1, 'admin', 'admin', 'user.user_message', 'index', '218.4.244.64', '1590392823', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9671, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '218.4.244.64', '1590392830', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9672, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '218.4.244.64', '1590392831', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9673, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '218.4.244.64', '1590392831', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9674, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '218.4.244.64', '1590392838', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9675, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '218.4.244.64', '1590392841', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9676, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '218.4.244.64', '1590392842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9677, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '218.4.244.64', '1590392843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9678, 1, 'admin', 'admin', 'workflow.index', 'index', '218.4.244.64', '1590392844', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9679, 1, 'admin', 'admin', 'database.mysql', 'index', '218.4.244.64', '1590392847', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9680, 1, 'admin', 'admin', 'database.redis', 'index', '218.4.244.64', '1590392854', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9681, 1, 'admin', 'admin', 'admin.admin', 'index', '218.4.244.64', '1590392859', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9682, 1, 'admin', 'admin', 'project.project', 'detail', '218.4.244.64', '1590392865', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9683, 1, 'admin', 'admin', 'project.project', 'index', '218.4.244.64', '1590392867', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9684, 1, 'admin', 'admin', 'login', 'login', '112.45.194.28', '1590397411', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9685, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590397413', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9686, 1, 'admin', 'admin', 'mini.mini_video', 'index', '112.45.194.28', '1590397433', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9687, 1, 'admin', 'admin', 'user.user_message', 'index', '112.45.194.28', '1590397476', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9688, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '112.45.194.28', '1590397487', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9689, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '112.45.194.28', '1590397507', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9690, 1, 'admin', 'admin', 'workflow.index', 'index', '112.45.194.28', '1590397540', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9691, 1, 'admin', 'admin', 'test', 'index', '112.45.194.28', '1590397548', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9692, 1, 'admin', 'admin', 'cms.cms_category', 'index', '112.45.194.28', '1590397554', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9693, 1, 'admin', 'admin', 'cms.cms_article', 'index', '112.45.194.28', '1590397561', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9694, 1, 'admin', 'admin', 'cms.cms_article', 'index', '112.45.194.28', '1590397575', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9695, 1, 'admin', 'admin', 'login', 'login', '112.45.194.28', '1590407683', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9696, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590407686', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9697, 1, 'admin', 'admin', 'mini.mini_video', 'index', '112.45.194.28', '1590407697', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9698, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '112.45.194.28', '1590407738', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9699, 1, 'admin', 'admin', 'project.project', 'detail', '112.45.194.28', '1590407747', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9700, 1, 'admin', 'admin', 'project.project', 'index', '112.45.194.28', '1590407755', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9701, 1, 'admin', 'admin', 'login', 'login', '101.85.7.152', '1590409428', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9702, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590409429', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9703, 1, 'admin', 'admin', 'admin.admin', 'index', '101.85.7.152', '1590409439', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9704, 1, 'admin', 'admin', 'admin.admin', 'index', '101.85.7.152', '1590409454', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9705, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590409457', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9706, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '101.85.7.152', '1590409459', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9707, 1, 'admin', 'admin', 'system.system_config', 'wechat', '101.85.7.152', '1590409461', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9708, 1, 'admin', 'admin', 'system.system_config', 'base', '101.85.7.152', '1590409491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9709, 1, 'admin', 'admin', 'system.system_config', 'base', '101.85.7.152', '1590409492', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9710, 1, 'admin', 'admin', 'system.system_config', 'base', '101.85.7.152', '1590409501', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9711, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '101.85.7.152', '1590409511', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9712, 1, 'admin', 'admin', 'database.mysql', 'index', '101.85.7.152', '1590409512', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9713, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590409517', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9714, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590409584', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9715, 1, 'admin', 'admin', 'database.mysql', 'index', '101.85.7.152', '1590409587', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9716, 1, 'admin', 'admin', 'database.redis', 'index', '101.85.7.152', '1590409588', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9717, 1, 'admin', 'admin', 'admin.admin', 'index', '101.85.7.152', '1590409631', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9718, 1, 'admin', 'admin', 'admin.admin_role', 'index', '101.85.7.152', '1590409632', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9719, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '101.85.7.152', '1590409633', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9720, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '101.85.7.152', '1590409636', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9721, 1, 'admin', 'admin', 'system.system_config', 'wechat', '101.85.7.152', '1590409637', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9722, 1, 'admin', 'admin', 'user.user_message', 'index', '101.85.7.152', '1590409639', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9723, 1, 'admin', 'admin', 'project.project', 'detail', '101.85.7.152', '1590409642', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9724, 1, 'admin', 'admin', 'project.project', 'index', '101.85.7.152', '1590409645', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9725, 1, 'admin', 'admin', 'cms.cms_article', 'index', '101.85.7.152', '1590409648', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9726, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590409650', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9727, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '101.85.7.152', '1590409651', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9728, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '101.85.7.152', '1590409652', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9729, 1, 'admin', 'admin', 'cms.cms_category', 'index', '101.85.7.152', '1590409654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9730, 1, 'admin', 'admin', 'cms.cms_page', 'index', '101.85.7.152', '1590409655', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9731, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '101.85.7.152', '1590409657', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9732, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '101.85.7.152', '1590409658', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9733, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590409740', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9734, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '101.85.7.152', '1590409741', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9735, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '101.85.7.152', '1590409742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9736, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590409755', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9737, 1, 'admin', 'admin', 'login', 'login', '220.152.244.190', '1590413067', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9738, 1, 'admin', 'admin', 'index', 'main', '220.152.244.190', '1590413069', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9739, 1, 'admin', 'admin', 'system.system_config', 'base', '220.152.244.190', '1590413078', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9740, 1, 'admin', 'admin', 'system.system_config', 'base', '220.152.244.190', '1590413081', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9741, 1, 'admin', 'admin', 'system.system_config', 'base', '220.152.244.190', '1590413093', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9742, 1, 'admin', 'admin', 'system.system_config', 'wechat', '220.152.244.190', '1590413113', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9743, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '220.152.244.190', '1590413130', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9744, 1, 'admin', 'admin', 'admin.admin_role', 'index', '220.152.244.190', '1590413139', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9745, 1, 'admin', 'admin', 'admin.admin', 'index', '220.152.244.190', '1590413154', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9746, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '220.152.244.190', '1590413156', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9747, 1, 'admin', 'admin', 'database.mysql', 'index', '220.152.244.190', '1590413188', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9748, 1, 'admin', 'admin', 'database.redis', 'index', '220.152.244.190', '1590413192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (9749, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590420194', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9750, 1, 'admin', 'admin', 'login', 'login', '222.240.59.1', '1590430566', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9751, 1, 'admin', 'admin', 'index', 'main', '222.240.59.1', '1590430568', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9752, 1, 'admin', 'admin', 'index', 'main', '222.240.59.1', '1590430580', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (9753, 1, 'admin', 'admin', 'test', 'index', '222.240.59.1', '1590430585', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (9754, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '222.240.59.1', '1590430591', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (9755, 1, 'admin', 'admin', 'test', 'index', '222.240.59.1', '1590430601', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (9756, 1, 'admin', 'admin', 'mini.mini_video', 'index', '222.240.59.1', '1590430605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (9757, 1, 'admin', 'admin', 'index', 'main', '222.240.59.1', '1590430615', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9758, 1, 'admin', 'admin', 'test', 'index', '222.240.59.1', '1590430617', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9759, 1, 'admin', 'admin', 'mini.mini_video', 'index', '222.240.59.1', '1590430620', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9760, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430646', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9761, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430649', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9762, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430652', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9763, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430652', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9764, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430653', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9765, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430654', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9766, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430658', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9767, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430664', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9768, 1, 'admin', 'admin', 'system.system_config', 'base', '222.240.59.1', '1590430665', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9769, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '222.240.59.1', '1590430668', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9770, 1, 'admin', 'admin', 'system.system_config', 'wechat', '222.240.59.1', '1590430673', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9771, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '222.240.59.1', '1590430677', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9772, 1, 'admin', 'admin', 'admin.admin_role', 'index', '222.240.59.1', '1590430693', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9773, 1, 'admin', 'admin', 'database.mysql', 'index', '222.240.59.1', '1590430696', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9774, 1, 'admin', 'admin', 'database.redis', 'index', '222.240.59.1', '1590430708', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9775, 1, 'admin', 'admin', 'workflow.index', 'index', '222.240.59.1', '1590430713', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9776, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '222.240.59.1', '1590430716', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9777, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '222.240.59.1', '1590430726', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9778, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '222.240.59.1', '1590430730', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9779, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '222.240.59.1', '1590430731', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9780, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '222.240.59.1', '1590430732', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9781, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '222.240.59.1', '1590430739', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9782, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '222.240.59.1', '1590430741', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9783, 1, 'admin', 'admin', 'cms.cms_article', 'index', '222.240.59.1', '1590430742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9784, 1, 'admin', 'admin', 'cms.cms_page', 'index', '222.240.59.1', '1590430744', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9785, 1, 'admin', 'admin', 'cms.cms_category', 'index', '222.240.59.1', '1590430745', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9786, 1, 'admin', 'admin', 'index', 'main', '218.4.244.64', '1590451784', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9787, 1, 'admin', 'admin', 'system.system_config', 'base', '218.4.244.64', '1590451797', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9788, 1, 'admin', 'admin', 'system.system_config', 'base', '218.4.244.64', '1590451797', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9789, 1, 'admin', 'admin', 'system.system_config', 'wechat', '218.4.244.64', '1590451800', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9790, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '218.4.244.64', '1590451801', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9791, 1, 'admin', 'admin', 'admin.admin', 'index', '218.4.244.64', '1590451803', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9792, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '218.4.244.64', '1590451805', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9793, 1, 'admin', 'admin', 'admin.admin_role', 'index', '218.4.244.64', '1590451806', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9794, 1, 'admin', 'admin', 'database.mysql', 'index', '218.4.244.64', '1590451809', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9795, 1, 'admin', 'admin', 'database.redis', 'index', '218.4.244.64', '1590451810', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9796, 1, 'admin', 'admin', 'workflow.index', 'index', '218.4.244.64', '1590451812', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9797, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '218.4.244.64', '1590451814', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9798, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '218.4.244.64', '1590451817', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9799, 1, 'admin', 'admin', 'user.user_message', 'index', '218.4.244.64', '1590451821', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9800, 1, 'admin', 'admin', 'mini.mini_video', 'index', '218.4.244.64', '1590451838', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9801, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '218.4.244.64', '1590451840', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9802, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '218.4.244.64', '1590451840', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9803, 1, 'admin', 'admin', 'test', 'index', '218.4.244.64', '1590451841', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (9804, 1, 'admin', 'admin', 'login', 'login', '101.85.7.152', '1590452439', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9805, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590452440', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9806, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590452446', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9807, 1, 'admin', 'admin', 'system.system_config', 'wechat', '101.85.7.152', '1590452457', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9808, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590452515', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9809, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590452708', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9810, 1, 'admin', 'admin', 'login', 'login', '1.204.114.38', '1590455362', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9811, 1, 'admin', 'admin', 'index', 'main', '1.204.114.38', '1590455364', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9812, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '1.204.114.38', '1590455412', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9813, 1, 'admin', 'admin', 'test', 'index', '1.204.114.38', '1590455462', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9814, 1, 'admin', 'admin', 'cms.cms_category', 'index', '1.204.114.38', '1590455466', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9815, 1, 'admin', 'admin', 'user.user_message', 'index', '1.204.114.38', '1590455475', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9816, 1, 'admin', 'admin', 'login', 'login', '218.104.133.34', '1590458107', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9817, 1, 'admin', 'admin', 'index', 'main', '218.104.133.34', '1590458109', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9818, 1, 'admin', 'admin', 'cms.cms_category', 'index', '218.104.133.34', '1590458113', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9819, 1, 'admin', 'admin', 'cms.cms_article', 'index', '218.104.133.34', '1590458122', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9820, 1, 'admin', 'admin', 'project.project', 'detail', '218.104.133.34', '1590458140', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9821, 1, 'admin', 'admin', 'project.project', 'index', '218.104.133.34', '1590458142', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9822, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '218.104.133.34', '1590458150', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9823, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '218.104.133.34', '1590458152', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9824, 1, 'admin', 'admin', 'login', 'login', '116.7.97.231', '1590458163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9825, 1, 'admin', 'admin', 'index', 'main', '116.7.97.231', '1590458165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9826, 1, 'admin', 'admin', 'cms.cms_page', 'index', '116.7.97.231', '1590458174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9827, 1, 'admin', 'admin', 'cms.cms_page', 'index', '116.7.97.231', '1590458178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9828, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '116.7.97.231', '1590458189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9829, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '218.104.133.34', '1590458193', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9830, 1, 'admin', 'admin', 'system.system_config', 'wechat', '218.104.133.34', '1590458194', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9831, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '116.7.97.231', '1590458207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9832, 1, 'admin', 'admin', 'workflow.index', 'index', '218.104.133.34', '1590458211', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9833, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '218.104.133.34', '1590458220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9834, 1, 'admin', 'admin', 'user.user_message', 'index', '116.7.97.231', '1590458221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9835, 1, 'admin', 'admin', 'project.project', 'detail', '116.7.97.231', '1590458223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9836, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '218.104.133.34', '1590458224', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9837, 1, 'admin', 'admin', 'login', 'login', '14.111.57.15', '1590466511', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9838, 1, 'admin', 'admin', 'index', 'main', '14.111.57.15', '1590466513', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9839, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '14.111.57.15', '1590466518', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9840, 1, 'admin', 'admin', 'project.project', 'detail', '14.111.57.15', '1590466520', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9841, 1, 'admin', 'admin', 'cms.cms_article', 'index', '14.111.57.15', '1590466522', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9842, 1, 'admin', 'admin', 'mini.mini_video', 'index', '14.111.57.15', '1590466525', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9843, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '14.111.57.15', '1590466525', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9844, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '14.111.57.15', '1590466527', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9845, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '14.111.57.15', '1590466551', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9846, 1, 'admin', 'admin', 'system.system_config', 'wechat', '14.111.57.15', '1590466552', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9847, 1, 'admin', 'admin', 'system.system_config', 'base', '14.111.57.15', '1590466556', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9848, 1, 'admin', 'admin', 'system.system_config', 'base', '14.111.57.15', '1590466557', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9849, 1, 'admin', 'admin', 'admin.admin', 'index', '14.111.57.15', '1590466560', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9850, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '14.111.57.15', '1590466561', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9851, 1, 'admin', 'admin', 'test', 'index', '14.111.57.15', '1590466574', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9852, 1, 'admin', 'admin', 'mini.mini_video', 'index', '14.111.57.15', '1590466577', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9853, 1, 'admin', 'admin', 'index', 'main', '14.111.57.15', '1590466586', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9854, 1, 'admin', 'admin', 'login', 'login', '180.175.1.70', '1590470311', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9855, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590470313', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9856, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590470322', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9857, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590470592', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9858, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471003', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9859, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9860, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9861, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471344', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9862, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471392', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9863, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590471923', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9864, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590472286', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9865, 1, 'admin', 'admin', 'login', 'login', '180.175.1.70', '1590475652', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9866, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590475654', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9867, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590475664', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9868, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590475683', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9869, 1, 'admin', 'admin', 'login', 'login', '113.111.128.133', '1590477067', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9870, 1, 'admin', 'admin', 'index', 'main', '113.111.128.133', '1590477069', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9871, 1, 'admin', 'admin', 'login', 'login', '119.130.231.204', '1590477085', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9872, 1, 'admin', 'admin', 'index', 'main', '119.130.231.204', '1590477087', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9873, 1, 'admin', 'admin', 'mini.mini_video', 'index', '113.111.128.133', '1590477092', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9874, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '119.130.231.204', '1590477093', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9875, 1, 'admin', 'admin', 'mini.mini_video', 'index', '119.130.231.204', '1590477094', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9876, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '119.130.231.204', '1590477104', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9877, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '119.130.231.204', '1590477116', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9878, 1, 'admin', 'admin', 'test', 'index', '113.111.128.133', '1590477128', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9879, 1, 'admin', 'admin', 'cms.cms_page', 'index', '113.111.128.133', '1590477130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9880, 1, 'admin', 'admin', 'project.project', 'index', '119.130.231.204', '1590477144', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9881, 1, 'admin', 'admin', 'project.project', 'detail', '113.111.128.133', '1590477147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9882, 1, 'admin', 'admin', 'project.project', 'index', '113.111.128.133', '1590477148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9883, 1, 'admin', 'admin', 'cms.cms_article', 'index', '119.130.231.204', '1590477149', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9884, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '113.111.128.133', '1590477163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9885, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590477182', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9886, 1, 'admin', 'admin', 'admin.admin_role', 'index', '113.111.128.133', '1590477185', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9887, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '113.111.128.133', '1590477186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9888, 1, 'admin', 'admin', 'test', 'index', '119.130.231.204', '1590477517', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9889, 1, 'admin', 'admin', 'mini.mini_video', 'index', '119.130.231.204', '1590477520', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9890, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '119.130.231.204', '1590477521', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9891, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '119.130.231.204', '1590477522', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9892, 1, 'admin', 'admin', 'admin.admin', 'index', '119.130.231.204', '1590477529', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9893, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '119.130.231.204', '1590477550', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9894, 1, 'admin', 'admin', 'admin.admin_role', 'index', '119.130.231.204', '1590477609', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9895, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590477650', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9896, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590477651', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9897, 1, 'admin', 'admin', 'system.system_config', 'wechat', '119.130.231.204', '1590477655', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9898, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '119.130.231.204', '1590477655', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9899, 1, 'admin', 'admin', 'database.mysql', 'index', '119.130.231.204', '1590477679', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9900, 1, 'admin', 'admin', 'database.mysql', 'index', '119.130.231.204', '1590477686', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9901, 1, 'admin', 'admin', 'database.redis', 'index', '119.130.231.204', '1590477687', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9902, 1, 'admin', 'admin', 'index', 'main', '119.130.231.204', '1590477692', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9903, 1, 'admin', 'admin', 'workflow.index', 'index', '119.130.231.204', '1590477694', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9904, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '119.130.231.204', '1590477697', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9905, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '119.130.231.204', '1590477702', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9906, 1, 'admin', 'admin', 'mini.mini_video', 'index', '119.130.231.204', '1590477947', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9907, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590479949', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9908, 1, 'admin', 'admin', 'index', 'main', '119.130.231.204', '1590483159', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9909, 1, 'admin', 'admin', 'admin.admin', 'index', '119.130.231.204', '1590483164', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9910, 1, 'admin', 'admin', 'admin.admin_role', 'index', '119.130.231.204', '1590483166', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9911, 1, 'admin', 'admin', 'mini.mini_video', 'index', '119.130.231.204', '1590483407', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9912, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '119.130.231.204', '1590483414', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9913, 1, 'admin', 'admin', 'index', 'main', '119.130.231.204', '1590483436', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9914, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590483630', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9915, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590483630', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9916, 1, 'admin', 'admin', 'system.system_config', 'wechat', '119.130.231.204', '1590483631', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9917, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '119.130.231.204', '1590483632', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9918, 1, 'admin', 'admin', 'admin.admin', 'index', '119.130.231.204', '1590483639', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9919, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '119.130.231.204', '1590483646', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9920, 1, 'admin', 'admin', 'admin.admin_role', 'index', '119.130.231.204', '1590483647', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9921, 1, 'admin', 'admin', 'workflow.index', 'index', '119.130.231.204', '1590483650', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9922, 1, 'admin', 'admin', 'test', 'index', '119.130.231.204', '1590483671', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9923, 1, 'admin', 'admin', 'project.project', 'detail', '119.130.231.204', '1590483678', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9924, 1, 'admin', 'admin', 'project.project', 'index', '119.130.231.204', '1590483679', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9925, 1, 'admin', 'admin', 'user.user_message', 'index', '119.130.231.204', '1590483684', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9926, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '119.130.231.204', '1590483694', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9927, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '119.130.231.204', '1590483697', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9928, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '119.130.231.204', '1590483704', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9929, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '119.130.231.204', '1590483709', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9930, 1, 'admin', 'admin', 'admin.admin_role', 'index', '119.130.231.204', '1590483709', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9931, 1, 'admin', 'admin', 'admin.admin', 'index', '119.130.231.204', '1590483711', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9932, 1, 'admin', 'admin', 'cms.cms_article', 'index', '119.130.231.204', '1590483719', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9933, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '119.130.231.204', '1590483726', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9934, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '119.130.231.204', '1590483731', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9935, 1, 'admin', 'admin', 'cms.cms_page', 'index', '119.130.231.204', '1590483762', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9936, 1, 'admin', 'admin', 'cms.cms_category', 'index', '119.130.231.204', '1590483767', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9937, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '119.130.231.204', '1590483774', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9938, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '119.130.231.204', '1590483780', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9939, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '119.130.231.204', '1590483781', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9940, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '119.130.231.204', '1590483782', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9941, 1, 'admin', 'admin', 'mini.mini_video', 'index', '119.130.231.204', '1590483799', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9942, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '119.130.231.204', '1590483800', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9943, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '119.130.231.204', '1590483800', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9944, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '119.130.231.204', '1590483832', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9945, 1, 'admin', 'admin', 'system.system_config', 'wechat', '119.130.231.204', '1590483834', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9946, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590483836', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9947, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590483837', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9948, 1, 'admin', 'admin', 'system.system_config', 'base', '119.130.231.204', '1590483839', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3928.4 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9949, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590484903', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9950, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590487327', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9951, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590487411', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9952, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590487520', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9953, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590487523', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9954, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '180.175.1.70', '1590487524', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9955, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '180.175.1.70', '1590487524', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9956, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590487532', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9957, 1, 'admin', 'admin', 'user.user_message', 'index', '180.175.1.70', '1590487570', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9958, 1, 'admin', 'admin', 'project.project', 'index', '180.175.1.70', '1590487571', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9959, 1, 'admin', 'admin', 'project.project', 'detail', '180.175.1.70', '1590487572', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9960, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590487576', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9961, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590487577', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9962, 1, 'admin', 'admin', 'login', 'login', '101.85.7.152', '1590494918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9963, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590494919', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9964, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590495024', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9965, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590495044', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9966, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495045', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9967, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9968, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495263', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9969, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495290', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9970, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495301', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9971, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495320', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9972, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495327', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9973, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495342', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9974, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495365', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9975, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590495374', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9976, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495375', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9977, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495378', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9978, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495382', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9979, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495387', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9980, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495461', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9981, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495462', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9982, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9983, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495505', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9984, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495507', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9985, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495559', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9986, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495573', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9987, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495605', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9988, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590495632', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9989, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590496125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9990, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590496127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9991, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590496136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9992, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590496136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9993, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590496138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9994, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590496236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9995, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590496387', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9996, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590496397', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9997, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497594', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9998, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497690', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (9999, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497718', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10000, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497731', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10001, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497733', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10002, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497746', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10003, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497782', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10004, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497784', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10005, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497797', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10006, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497799', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10007, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497832', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10008, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497834', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10009, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497847', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10010, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497849', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10011, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497870', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10012, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497873', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10013, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497900', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10014, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497920', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10015, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497922', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10016, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497923', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10017, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497929', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10018, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497938', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10019, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590497944', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10020, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498004', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10021, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498005', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10022, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498011', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10023, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498020', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10024, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498043', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10025, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498046', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10026, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10027, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498066', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10028, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10029, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10030, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498238', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10031, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10032, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10033, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498259', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10034, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498329', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10035, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498363', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10036, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498471', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10037, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498624', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10038, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498627', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10039, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498690', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10040, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498693', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10041, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498721', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10042, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498723', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10043, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498724', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10044, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498735', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10045, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498751', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10046, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498753', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10047, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498754', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10048, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498767', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10049, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498783', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10050, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498785', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10051, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498824', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10052, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498973', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10053, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498988', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10054, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590498996', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10055, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499090', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10056, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10057, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10058, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10059, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10060, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10061, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10062, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10063, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10064, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499306', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10065, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499322', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10066, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499417', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10067, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499443', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10068, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499498', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10069, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499502', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10070, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499503', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10071, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499523', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10072, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10073, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499623', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10074, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499625', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10075, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499632', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10076, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499634', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10077, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499636', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10078, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499638', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10079, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499650', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10080, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499661', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10081, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499663', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10082, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499677', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10083, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499694', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10084, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499704', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10085, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499706', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10086, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499727', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10087, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499738', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10088, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499749', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10089, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499750', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10090, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499769', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10091, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499770', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10092, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499804', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10093, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499821', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10094, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499822', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10095, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499823', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10096, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499824', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10097, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499824', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10098, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499825', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10099, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499826', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10100, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499827', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10101, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499827', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10102, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10103, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10104, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499844', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10105, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499845', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10106, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499845', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10107, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499853', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10108, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499867', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10109, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499869', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10110, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499882', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10111, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590499915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10112, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500012', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10113, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500062', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10114, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10115, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10116, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10117, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10118, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10119, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10120, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500298', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10121, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500325', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10122, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500402', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10123, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500404', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10124, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500405', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10125, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10126, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500488', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10127, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500512', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10128, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500526', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10129, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10130, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500550', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10131, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500565', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10132, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500751', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10133, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500789', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10134, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500820', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10135, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500828', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10136, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500894', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10137, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500949', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10138, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590500950', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10139, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501046', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10140, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501055', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10141, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10142, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10143, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10144, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10145, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10146, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10147, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10148, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501290', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10149, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501298', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10150, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501431', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10151, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501432', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10152, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590501433', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10153, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590501435', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10154, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502030', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10155, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502032', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10156, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502034', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10157, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10158, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502099', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10159, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10160, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502331', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10161, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502337', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10162, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502356', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10163, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502431', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10164, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502446', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10165, 1, 'admin', 'admin', 'test', 'index', '101.85.7.152', '1590502453', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10166, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.85.7.152', '1590502464', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10167, 1, 'admin', 'admin', 'login', 'login', '101.88.13.44', '1590507046', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10168, 1, 'admin', 'admin', 'index', 'main', '101.88.13.44', '1590507048', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10169, 1, 'admin', 'admin', 'mini.mini_video', 'index', '101.88.13.44', '1590507056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10170, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '101.88.13.44', '1590507070', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10171, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '101.88.13.44', '1590507076', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10172, 1, 'admin', 'admin', 'test', 'index', '101.88.13.44', '1590507078', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10173, 1, 'admin', 'admin', 'cms.cms_category', 'index', '101.88.13.44', '1590507082', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10174, 1, 'admin', 'admin', 'project.project', 'index', '101.88.13.44', '1590507096', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10175, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '101.88.13.44', '1590507114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10176, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '101.88.13.44', '1590507115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10177, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '101.88.13.44', '1590507116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10178, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '101.88.13.44', '1590507117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10179, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '101.88.13.44', '1590507121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10180, 1, 'admin', 'admin', 'workflow.index', 'index', '101.88.13.44', '1590507125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10181, 1, 'admin', 'admin', 'system.system_config', 'wechat', '101.88.13.44', '1590507139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10182, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '101.88.13.44', '1590507140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10183, 1, 'admin', 'admin', 'system.system_config', 'base', '101.88.13.44', '1590507142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10184, 1, 'admin', 'admin', 'login', 'login', '112.45.194.28', '1590514216', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10185, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590514218', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10186, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590514460', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10187, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590514465', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10188, 1, 'admin', 'admin', 'admin.admin', 'index', '112.45.194.28', '1590514475', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10189, 1, 'admin', 'admin', 'workflow.index', 'index', '112.45.194.28', '1590514546', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10190, 1, 'admin', 'admin', 'database.mysql', 'index', '112.45.194.28', '1590514559', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10191, 1, 'admin', 'admin', 'database.redis', 'index', '112.45.194.28', '1590514575', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10192, 1, 'admin', 'admin', 'database.mysql', 'index', '112.45.194.28', '1590514586', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10193, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '112.45.194.28', '1590514611', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10194, 1, 'admin', 'admin', 'system.system_config', 'base', '112.45.194.28', '1590514619', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10195, 1, 'admin', 'admin', 'system.system_config', 'base', '112.45.194.28', '1590514620', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10196, 1, 'admin', 'admin', 'system.system_config', 'base', '112.45.194.28', '1590514629', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10197, 1, 'admin', 'admin', 'system.system_config', 'base', '112.45.194.28', '1590514651', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10198, 1, 'admin', 'admin', 'system.system_config', 'base', '112.45.194.28', '1590514660', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10199, 1, 'admin', 'admin', 'login', 'login', '58.216.238.35', '1590542207', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10200, 1, 'admin', 'admin', 'index', 'main', '58.216.238.35', '1590542208', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10201, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '58.216.238.35', '1590542219', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10202, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '58.216.238.35', '1590542220', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10203, 1, 'admin', 'admin', 'workflow.index', 'index', '58.216.238.35', '1590542246', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10204, 1, 'admin', 'admin', 'login', 'login', '180.175.1.70', '1590545312', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10205, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590545313', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10206, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590545315', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10207, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590545324', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10208, 1, 'admin', 'admin', 'login', 'login', '120.39.188.77', '1590545425', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10209, 1, 'admin', 'admin', 'index', 'main', '120.39.188.77', '1590545427', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10210, 1, 'admin', 'admin', 'mini.mini_video', 'index', '120.39.188.77', '1590545435', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10211, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '120.39.188.77', '1590545437', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10212, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '120.39.188.77', '1590545438', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10213, 1, 'admin', 'admin', 'test', 'index', '120.39.188.77', '1590545439', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10214, 1, 'admin', 'admin', 'cms.cms_category', 'index', '120.39.188.77', '1590545442', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10215, 1, 'admin', 'admin', 'cms.cms_page', 'index', '120.39.188.77', '1590545460', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10216, 1, 'admin', 'admin', 'cms.cms_article', 'index', '120.39.188.77', '1590545473', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10217, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '120.39.188.77', '1590545486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10218, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '120.39.188.77', '1590545487', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10219, 1, 'admin', 'admin', 'project.project', 'detail', '120.39.188.77', '1590545506', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10220, 1, 'admin', 'admin', 'project.project', 'index', '120.39.188.77', '1590545508', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10221, 1, 'admin', 'admin', 'user.user_message', 'index', '120.39.188.77', '1590545518', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10222, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '120.39.188.77', '1590545529', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10223, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '120.39.188.77', '1590545530', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10224, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '120.39.188.77', '1590545532', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10225, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '120.39.188.77', '1590545534', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10226, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '120.39.188.77', '1590545536', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10227, 1, 'admin', 'admin', 'workflow.index', 'index', '120.39.188.77', '1590545541', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0');
INSERT INTO `lea_admin_log` VALUES (10228, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590545932', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10229, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590545950', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10230, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590545972', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10231, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590546242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10232, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546423', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10233, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546625', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10234, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546636', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10235, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546655', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10236, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546671', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10237, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546699', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10238, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546701', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10239, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546716', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10240, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546803', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10241, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546814', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10242, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546843', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10243, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590546869', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10244, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547065', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10245, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547089', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10246, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547139', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10247, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547141', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10248, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547193', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10249, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547402', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10250, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547407', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10251, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547434', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10252, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547452', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10253, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547512', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10254, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547548', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10255, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547580', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10256, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547610', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10257, 1, 'admin', 'admin', 'login', 'login', '116.24.64.199', '1590547611', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10258, 1, 'admin', 'admin', 'index', 'main', '116.24.64.199', '1590547613', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10259, 1, 'admin', 'admin', 'cms.cms_category', 'index', '116.24.64.199', '1590547616', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10260, 1, 'admin', 'admin', 'cms.cms_page', 'index', '116.24.64.199', '1590547628', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10261, 1, 'admin', 'admin', 'index', 'main', '116.24.64.199', '1590547676', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10262, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547695', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10263, 1, 'admin', 'admin', 'index', 'main', '116.24.64.199', '1590547699', 'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10264, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547702', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10265, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547820', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10266, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547903', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10267, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547934', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10268, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590547949', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10269, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548044', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10270, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548115', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10271, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548189', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10272, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548191', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10273, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548217', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10274, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548218', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10275, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548219', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10276, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548244', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10277, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548289', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10278, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548292', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10279, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548317', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10280, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548368', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10281, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548519', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10282, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548532', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10283, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548586', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10284, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548636', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10285, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548672', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10286, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590548723', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10287, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590549090', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10288, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590549107', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10289, 1, 'admin', 'admin', 'test', 'index', '180.175.1.70', '1590549356', 'PostmanRuntime/7.25.0');
INSERT INTO `lea_admin_log` VALUES (10290, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590549567', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10291, 1, 'admin', 'admin', 'login', 'login', '111.18.37.34', '1590550884', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10292, 1, 'admin', 'admin', 'index', 'main', '111.18.37.34', '1590550886', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10293, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '111.18.37.34', '1590550911', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10294, 1, 'admin', 'admin', 'test', 'index', '111.18.37.34', '1590550916', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10295, 1, 'admin', 'admin', 'mini.mini_video', 'index', '111.18.37.34', '1590550921', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10296, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '111.18.37.34', '1590550982', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10297, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '111.18.37.34', '1590550987', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10298, 1, 'admin', 'admin', 'test', 'index', '111.18.37.34', '1590550994', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10299, 1, 'admin', 'admin', 'cms.cms_category', 'index', '111.18.37.34', '1590550996', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10300, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '111.18.37.34', '1590551004', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10301, 1, 'admin', 'admin', 'cms.cms_page', 'index', '111.18.37.34', '1590551022', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10302, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.18.37.34', '1590551023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10303, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.18.37.34', '1590551026', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10304, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.18.37.34', '1590551028', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10305, 1, 'admin', 'admin', 'cms.cms_article', 'index', '111.18.37.34', '1590551031', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10306, 1, 'admin', 'admin', 'project.project', 'detail', '111.18.37.34', '1590551039', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10307, 1, 'admin', 'admin', 'project.project', 'index', '111.18.37.34', '1590551041', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10308, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590551850', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10309, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590551852', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10310, 1, 'admin', 'admin', 'mini.mini_video', 'index', '180.175.1.70', '1590551884', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10311, 1, 'admin', 'admin', 'index', 'main', '111.18.37.34', '1590552226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10312, 1, 'admin', 'admin', 'mini.mini_video', 'index', '111.18.37.34', '1590552229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10313, 1, 'admin', 'admin', 'mini.mini_video', 'index', '111.18.37.34', '1590552310', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10314, 1, 'admin', 'admin', 'index', 'main', '111.18.37.34', '1590553020', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10315, 1, 'admin', 'admin', 'login', 'login', '113.100.47.181', '1590562539', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10316, 1, 'admin', 'admin', 'index', 'main', '113.100.47.181', '1590562540', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10317, 1, 'admin', 'admin', 'mini.mini_video', 'index', '113.100.47.181', '1590562543', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10318, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '113.100.47.181', '1590562544', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10319, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '113.100.47.181', '1590562546', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10320, 1, 'admin', 'admin', 'test', 'index', '113.100.47.181', '1590562547', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10321, 1, 'admin', 'admin', 'cms.cms_category', 'index', '113.100.47.181', '1590562549', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10322, 1, 'admin', 'admin', 'cms.cms_page', 'index', '113.100.47.181', '1590562551', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10323, 1, 'admin', 'admin', 'cms.cms_article', 'index', '113.100.47.181', '1590562552', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10324, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '113.100.47.181', '1590562554', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10325, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '113.100.47.181', '1590562555', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10326, 1, 'admin', 'admin', 'project.project', 'detail', '113.100.47.181', '1590562558', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10327, 1, 'admin', 'admin', 'project.project', 'index', '113.100.47.181', '1590562559', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10328, 1, 'admin', 'admin', 'user.user_message', 'index', '113.100.47.181', '1590562564', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10329, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '113.100.47.181', '1590562567', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10330, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '113.100.47.181', '1590562568', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10331, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '113.100.47.181', '1590562570', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10332, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '113.100.47.181', '1590562571', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10333, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '113.100.47.181', '1590562573', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10334, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '113.100.47.181', '1590562578', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10335, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '113.100.47.181', '1590562579', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10336, 1, 'admin', 'admin', 'workflow.index', 'index', '113.100.47.181', '1590562580', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10337, 1, 'admin', 'admin', 'workflow.index', 'index', '113.100.47.181', '1590562634', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10338, 1, 'admin', 'admin', 'database.mysql', 'index', '113.100.47.181', '1590562673', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10339, 1, 'admin', 'admin', 'database.redis', 'index', '113.100.47.181', '1590562690', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10340, 1, 'admin', 'admin', 'admin.admin', 'index', '113.100.47.181', '1590562706', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10341, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '113.100.47.181', '1590562713', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10342, 1, 'admin', 'admin', 'admin.admin_role', 'index', '113.100.47.181', '1590562718', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10343, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '113.100.47.181', '1590562729', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10344, 1, 'admin', 'admin', 'system.system_config', 'wechat', '113.100.47.181', '1590562731', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10345, 1, 'admin', 'admin', 'system.system_config', 'wechat', '113.100.47.181', '1590562734', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10346, 1, 'admin', 'admin', 'system.system_config', 'wechat', '113.100.47.181', '1590562739', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10347, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562742', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10348, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562744', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10349, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562746', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10350, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562749', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10351, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562751', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10352, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590562752', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10353, 1, 'admin', 'admin', 'index', 'main', '113.100.47.181', '1590563676', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10354, 1, 'admin', 'admin', 'mini.mini_video', 'index', '113.100.47.181', '1590563678', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10355, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '113.100.47.181', '1590563710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10356, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '113.100.47.181', '1590563712', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10357, 1, 'admin', 'admin', 'mini.mini_video', 'index', '113.100.47.181', '1590563747', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10358, 1, 'admin', 'admin', 'test', 'index', '113.100.47.181', '1590563753', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10359, 1, 'admin', 'admin', 'cms.cms_category', 'index', '113.100.47.181', '1590563757', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10360, 1, 'admin', 'admin', 'cms.cms_page', 'index', '113.100.47.181', '1590563768', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10361, 1, 'admin', 'admin', 'cms.cms_article', 'index', '113.100.47.181', '1590563850', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10362, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '113.100.47.181', '1590563922', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10363, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '113.100.47.181', '1590563932', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10364, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '113.100.47.181', '1590563949', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10365, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '113.100.47.181', '1590563951', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10366, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '113.100.47.181', '1590563963', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10367, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '113.100.47.181', '1590563972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10368, 1, 'admin', 'admin', 'workflow.index', 'index', '113.100.47.181', '1590563983', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10369, 1, 'admin', 'admin', 'database.mysql', 'index', '113.100.47.181', '1590563990', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10370, 1, 'admin', 'admin', 'index', 'main', '113.100.47.181', '1590564538', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10371, 1, 'admin', 'admin', 'admin.admin', 'index', '113.100.47.181', '1590564542', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10372, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '113.100.47.181', '1590564548', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10373, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '113.100.47.181', '1590564638', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10374, 1, 'admin', 'admin', 'system.system_config', 'wechat', '113.100.47.181', '1590564639', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10375, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590564730', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10376, 1, 'admin', 'admin', 'system.system_config', 'base', '113.100.47.181', '1590564733', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10377, 1, 'admin', 'admin', 'login', 'login', '58.16.58.98', '1590569751', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10378, 1, 'admin', 'admin', 'index', 'main', '58.16.58.98', '1590569753', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10379, 1, 'admin', 'admin', 'mini.mini_video', 'index', '58.16.58.98', '1590569759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10380, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '58.16.58.98', '1590569771', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10381, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '58.16.58.98', '1590569772', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10382, 1, 'admin', 'admin', 'test', 'index', '58.16.58.98', '1590569775', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10383, 1, 'admin', 'admin', 'cms.cms_category', 'index', '58.16.58.98', '1590569779', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10384, 1, 'admin', 'admin', 'database.mysql', 'index', '58.16.58.98', '1590569789', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10385, 1, 'admin', 'admin', 'workflow.index', 'index', '58.16.58.98', '1590569801', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10386, 1, 'admin', 'admin', 'user.user_message', 'index', '58.16.58.98', '1590569812', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10387, 1, 'admin', 'admin', 'project.project', 'detail', '58.16.58.98', '1590569819', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10388, 1, 'admin', 'admin', 'project.project', 'index', '58.16.58.98', '1590569821', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10389, 1, 'admin', 'admin', 'index', 'main', '58.16.58.98', '1590570441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10390, 1, 'admin', 'admin', 'index', 'main', '58.16.58.98', '1590570451', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10391, 1, 'admin', 'admin', 'cms.cms_category', 'index', '58.16.58.98', '1590570461', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10392, 1, 'admin', 'admin', 'index', 'main', '58.16.58.98', '1590570476', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (10393, 1, 'admin', 'admin', 'cms.cms_category', 'index', '58.16.58.98', '1590570484', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1');
INSERT INTO `lea_admin_log` VALUES (10394, 1, 'admin', 'admin', 'login', 'login', '112.45.194.28', '1590570672', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10395, 1, 'admin', 'admin', 'index', 'main', '112.45.194.28', '1590570674', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10396, 1, 'admin', 'admin', 'mini.mini_video', 'index', '112.45.194.28', '1590570691', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10397, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '112.45.194.28', '1590570724', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10398, 1, 'admin', 'admin', 'login', 'login', '116.77.33.170', '1590576831', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10399, 1, 'admin', 'admin', 'index', 'main', '116.77.33.170', '1590576833', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10400, 1, 'admin', 'admin', 'mini.mini_video', 'index', '116.77.33.170', '1590576840', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10401, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '116.77.33.170', '1590576841', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10402, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '116.77.33.170', '1590576842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10403, 1, 'admin', 'admin', 'test', 'index', '116.77.33.170', '1590576842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10404, 1, 'admin', 'admin', 'cms.cms_category', 'index', '116.77.33.170', '1590576844', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10405, 1, 'admin', 'admin', 'cms.cms_page', 'index', '116.77.33.170', '1590576846', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10406, 1, 'admin', 'admin', 'cms.cms_article', 'index', '116.77.33.170', '1590576847', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10407, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '116.77.33.170', '1590576847', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10408, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '116.77.33.170', '1590576848', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10409, 1, 'admin', 'admin', 'project.project', 'index', '116.77.33.170', '1590576851', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10410, 1, 'admin', 'admin', 'user.user_message', 'index', '116.77.33.170', '1590576852', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37');
INSERT INTO `lea_admin_log` VALUES (10411, 1, 'admin', 'admin', 'login', 'login', '120.239.179.132', '1590589541', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10412, 1, 'admin', 'admin', 'index', 'main', '120.239.179.132', '1590589543', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10413, 1, 'admin', 'admin', 'workflow.index', 'index', '120.239.179.132', '1590589551', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10414, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '120.239.179.132', '1590589569', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10415, 1, 'admin', 'admin', 'database.mysql', 'index', '120.239.179.132', '1590589577', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10416, 1, 'admin', 'admin', 'system.system_config', 'base', '120.239.179.132', '1590589641', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10417, 1, 'admin', 'admin', 'user.user_message', 'index', '120.239.179.132', '1590589667', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10418, 1, 'admin', 'admin', 'cms.cms_category', 'index', '120.239.179.132', '1590589675', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10419, 1, 'admin', 'admin', 'login', 'login', '180.175.1.70', '1590661140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10420, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590661142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10421, 1, 'admin', 'admin', 'system.system_config', 'base', '180.175.1.70', '1590661148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10422, 1, 'admin', 'admin', 'system.system_config', 'base', '180.175.1.70', '1590661149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10423, 1, 'admin', 'admin', 'system.system_config', 'wechat', '180.175.1.70', '1590661150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10424, 1, 'admin', 'admin', 'index', 'main', '180.175.1.70', '1590661285', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10425, 1, 'admin', 'admin', 'login', 'login', '112.80.35.222', '1590668264', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10426, 1, 'admin', 'admin', 'index', 'main', '112.80.35.222', '1590668265', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10427, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '112.80.35.222', '1590668269', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10428, 1, 'admin', 'admin', 'mini.mini_video', 'index', '112.80.35.222', '1590668270', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10429, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '112.80.35.222', '1590668285', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10430, 1, 'admin', 'admin', 'login', 'login', '101.85.7.152', '1590675039', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10431, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590675041', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10432, 1, 'admin', 'admin', 'system.system_config_tab', 'index', '101.85.7.152', '1590675047', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10433, 1, 'admin', 'admin', 'system.system_config', 'base', '101.85.7.152', '1590675050', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10434, 1, 'admin', 'admin', 'cms.cms_category', 'index', '101.85.7.152', '1590675057', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10435, 1, 'admin', 'admin', 'workflow.index', 'index', '101.85.7.152', '1590675059', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10436, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '101.85.7.152', '1590675072', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10437, 1, 'admin', 'admin', 'login', 'login', '183.11.130.222', '1590675410', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00; HMSCore 4.0.4.307) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.1.301 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10438, 1, 'admin', 'admin', 'index', 'main', '183.11.130.222', '1590675412', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00; HMSCore 4.0.4.307) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.1.301 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10439, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '183.11.130.222', '1590675439', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00; HMSCore 4.0.4.307) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 HuaweiBrowser/10.1.1.301 Mobile Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10440, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590676926', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10441, 1, 'admin', 'admin', 'index', 'main', '101.85.7.152', '1590677362', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10442, 1, 'admin', 'admin', 'login', 'login', '222.244.128.146', '1590682692', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10443, 1, 'admin', 'admin', 'index', 'main', '222.244.128.146', '1590682694', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10444, 1, 'admin', 'admin', 'mini.mini_video', 'index', '222.244.128.146', '1590682697', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10445, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '222.244.128.146', '1590682700', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10446, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '222.244.128.146', '1590682704', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10447, 1, 'admin', 'admin', 'test', 'index', '222.244.128.146', '1590682709', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10448, 1, 'admin', 'admin', 'cms.cms_category', 'index', '222.244.128.146', '1590682712', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10449, 1, 'admin', 'admin', 'cms.cms_page', 'index', '222.244.128.146', '1590682713', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10450, 1, 'admin', 'admin', 'cms.cms_article', 'index', '222.244.128.146', '1590682720', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10451, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '222.244.128.146', '1590682721', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10452, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '222.244.128.146', '1590682721', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10453, 1, 'admin', 'admin', 'project.project', 'detail', '222.244.128.146', '1590682724', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10454, 1, 'admin', 'admin', 'project.project', 'index', '222.244.128.146', '1590682726', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10455, 1, 'admin', 'admin', 'user.user_message', 'index', '222.244.128.146', '1590682735', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10456, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '222.244.128.146', '1590682739', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10457, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '222.244.128.146', '1590682741', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10458, 1, 'admin', 'admin', 'workflow.index', 'index', '222.244.128.146', '1590682753', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10459, 1, 'admin', 'admin', 'database.mysql', 'index', '222.244.128.146', '1590682780', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10460, 1, 'admin', 'admin', 'database.redis', 'index', '222.244.128.146', '1590682790', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10461, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '222.244.128.146', '1590682794', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10462, 1, 'admin', 'admin', 'admin.admin', 'index', '222.244.128.146', '1590682796', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10463, 1, 'admin', 'admin', 'admin.admin_icon', 'index', '222.244.128.146', '1590682803', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10464, 1, 'admin', 'admin', 'system.system_config', 'wechat', '222.244.128.146', '1590682804', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10465, 1, 'admin', 'admin', 'system.system_config', 'base', '222.244.128.146', '1590682807', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10466, 1, 'admin', 'admin', 'system.system_config_tab', 'index', '222.244.128.146', '1590682807', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10467, 1, 'admin', 'admin', 'system.system_config', 'base', '222.244.128.146', '1590682808', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3741.400 QQBrowser/10.5.3863.400');
INSERT INTO `lea_admin_log` VALUES (10468, 1, 'admin', 'admin', 'login', 'login', '120.235.171.74', '1590727047', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10469, 1, 'admin', 'admin', 'index', 'main', '120.235.171.74', '1590727050', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10470, 1, 'admin', 'admin', 'cms.cms_page', 'index', '120.235.171.74', '1590727054', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10471, 1, 'admin', 'admin', 'cms.cms_category', 'index', '120.235.171.74', '1590727055', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10472, 1, 'admin', 'admin', 'cms.cms_article', 'index', '120.235.171.74', '1590727058', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10473, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '120.235.171.74', '1590727058', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10474, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '120.235.171.74', '1590727059', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10475, 1, 'admin', 'admin', 'pinduoduo.store', 'index', '120.235.171.74', '1590727082', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10476, 1, 'admin', 'admin', 'pinduoduo.provider', 'index', '120.235.171.74', '1590727084', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10477, 1, 'admin', 'admin', 'pinduoduo.goods', 'index', '120.235.171.74', '1590727085', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10478, 1, 'admin', 'admin', 'pinduoduo.order', 'index', '120.235.171.74', '1590727086', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10479, 1, 'admin', 'admin', 'login', 'login', '120.235.171.74', '1590727324', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10480, 1, 'admin', 'admin', 'index', 'main', '120.235.171.74', '1590727325', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10481, 1, 'admin', 'admin', 'wechat.wechat_menu', 'menu', '120.235.171.74', '1590727354', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10482, 1, 'admin', 'admin', 'wechat.wechat_reply', 'focus', '120.235.171.74', '1590727365', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10483, 1, 'admin', 'admin', 'wechat.wechat_reply', 'default', '120.235.171.74', '1590727366', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10484, 1, 'admin', 'admin', 'wechat.wechat_reply', 'keyword', '120.235.171.74', '1590727366', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10485, 1, 'admin', 'admin', 'workflow.index', 'index', '120.235.171.74', '1590727367', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10486, 1, 'admin', 'admin', 'mini.mini_video', 'index', '120.235.171.74', '1590727373', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10487, 1, 'admin', 'admin', 'mini.mini_video_tag', 'index', '120.235.171.74', '1590727374', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10488, 1, 'admin', 'admin', 'mini.mini_video_banner', 'index', '120.235.171.74', '1590727375', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10489, 1, 'admin', 'admin', 'test', 'index', '120.235.171.74', '1590727375', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10490, 1, 'admin', 'admin', 'cms.cms_category', 'index', '120.235.171.74', '1590727379', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10491, 1, 'admin', 'admin', 'cms.cms_page', 'index', '120.235.171.74', '1590727380', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10492, 1, 'admin', 'admin', 'cms.cms_article', 'index', '120.235.171.74', '1590727381', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10493, 1, 'admin', 'admin', 'cms.cms_tag', 'index', '120.235.171.74', '1590727382', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10494, 1, 'admin', 'admin', 'cms.cms_banner', 'index', '120.235.171.74', '1590727383', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10495, 1, 'admin', 'admin', 'project.project', 'detail', '120.235.171.74', '1590727387', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10496, 1, 'admin', 'admin', 'project.project', 'index', '120.235.171.74', '1590727388', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko');
INSERT INTO `lea_admin_log` VALUES (10497, 1, 'admin', 'admin', 'database.mysql', 'index', '120.235.171.74', '1590727464', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10498, 1, 'admin', 'admin', 'database.redis', 'index', '120.235.171.74', '1590727465', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10499, 1, 'admin', 'admin', 'admin.admin', 'index', '120.235.171.74', '1590727468', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10500, 1, 'admin', 'admin', 'admin.admin_auth', 'index', '120.235.171.74', '1590727469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');
INSERT INTO `lea_admin_log` VALUES (10501, 1, 'admin', 'admin', 'admin.admin_role', 'index', '120.235.171.74', '1590727469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36');

-- ----------------------------
-- Table structure for lea_admin_notify
-- ----------------------------
DROP TABLE IF EXISTS `lea_admin_notify`;
CREATE TABLE `lea_admin_notify`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `aid` int(10) NOT NULL COMMENT '管理员ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `from` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息来源 谁发的',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型 timer:定时器 system:系统',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转路径 不填写时自动判断',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_admin_notify
-- ----------------------------
INSERT INTO `lea_admin_notify` VALUES (1, 1, 'xxxxxx', 'swwqeqwe131231sdadaadaewqeq', NULL, 'system', NULL, 1, '1590472225');
INSERT INTO `lea_admin_notify` VALUES (2, 1, 'xxxxxx', 'swwqeqwe131231sdadaadaewqeq', NULL, 'system', NULL, 1, '1590472226');
INSERT INTO `lea_admin_notify` VALUES (3, 1, 'xxxxxx', 'swwqeqwe131231sdadaadaewqeq', NULL, 'system', NULL, 1, '1590472227');

-- ----------------------------
-- Table structure for lea_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `lea_admin_role`;
CREATE TABLE `lea_admin_role`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '角色状态',
  `pid` int(4) NOT NULL DEFAULT 0 COMMENT '上级id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `auth` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  `tree_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'treedata',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '角色状态1可用0不用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_admin_role
-- ----------------------------
INSERT INTO `lea_admin_role` VALUES (1, 0, '超级管理员', '2,62,63,64,65,39,24,47,48,49,51,52,22,34,28,29,30,31,33,50,53,25,15,19,16,17,18,43,44,45,46,54,55,3,23,41,42,4,5,6,7,8,14,40,1,20,21,26,27,35,36,37,38,56,57,58,59,60,66', '2,62,63,64,65,39,24,47,48,49,51,52,22,34,28,29,30,31,33,50,53,25,15,19,16,17,18,43,44,45,46,54,55,3,23,41,42,4,5,6,7,8,14,40,1,20,21,26,27,35,36,37,38,56,57,58,59,60,66', 0, 1, '1', '1580031132', '1', '1588847256');
INSERT INTO `lea_admin_role` VALUES (6, 0, '拼多多管理员', '2,15,19,16,17,18', '2,15,19,16,17,18', 0, 1, '1', '1581734943', '1', '1582693298');
INSERT INTO `lea_admin_role` VALUES (8, 6, '拼多多用户', '2,19,17,18,15', '2,19,17,18', 0, 1, '1', '1582548411', '1', '1582700075');

-- ----------------------------
-- Table structure for lea_attachment
-- ----------------------------
DROP TABLE IF EXISTS `lea_attachment`;
CREATE TABLE `lea_attachment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `cid` int(2) NOT NULL COMMENT '所属目录',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件地址',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `mime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'mime',
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `storage` int(2) NULL DEFAULT NULL COMMENT '存储方式1本地2腾讯云',
  `upload_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_attachment
-- ----------------------------
INSERT INTO `lea_attachment` VALUES (1, 17, 'image/20200411/a9850746e62062f8410d7570792c1f68.ico', '/upload/image/20200411/a9850746e62062f8410d7570792c1f68.ico', 'image', 'image/x-icon', '16958.00', 1, '1586581793');
INSERT INTO `lea_attachment` VALUES (2, 17, 'image/20200411/040d6cbe55937baad059d03a9c347eb7.ico', '/upload/image/20200411/040d6cbe55937baad059d03a9c347eb7.ico', 'image', 'image/x-icon', '16958.00', 1, '1586581918');
INSERT INTO `lea_attachment` VALUES (3, 17, 'image/20200411/5c5bd019a5ae55b8ff0fda16821a4536.ico', '/upload/image/20200411/5c5bd019a5ae55b8ff0fda16821a4536.ico', 'image', 'image/x-icon', '16958.00', 1, '1586581935');
INSERT INTO `lea_attachment` VALUES (4, 17, 'image/20200411/11add18dc504d69591a546d5841dc714.ico', '/upload/image/20200411/11add18dc504d69591a546d5841dc714.ico', 'image', 'image/x-icon', '16958.00', 1, '1586581949');
INSERT INTO `lea_attachment` VALUES (5, 17, 'image/20200411/cad1ea4cdb68a8179820d6edd30bfdae.ico', '/upload/image/20200411/cad1ea4cdb68a8179820d6edd30bfdae.ico', 'image', 'image/x-icon', '16958.00', 1, '1586581971');
INSERT INTO `lea_attachment` VALUES (6, 17, 'image/20200411/3e2fbc218579032d8d0fa86fdc314c23.ico', '/upload/image/20200411/3e2fbc218579032d8d0fa86fdc314c23.ico', 'image', 'image/x-icon', '16958.00', 1, '1586582963');
INSERT INTO `lea_attachment` VALUES (7, 17, 'image/20200411/067efc72117d79156b80138939b5b856.ico', '/upload/image/20200411/067efc72117d79156b80138939b5b856.ico', 'image', 'image/x-icon', '16958.00', 1, '1586582996');
INSERT INTO `lea_attachment` VALUES (8, 17, 'image/20200411/985701b102640a0a079f5cd04a682aca.ico', '/upload/image/20200411/985701b102640a0a079f5cd04a682aca.ico', 'image', 'image/x-icon', '16958.00', 1, '1586583067');
INSERT INTO `lea_attachment` VALUES (11, 17, 'image/20200411/21bed8072a2a6e217ce6e7ea586d05ce.ico', '/upload/image/20200411/21bed8072a2a6e217ce6e7ea586d05ce.ico', 'image', 'image/x-icon', '16958.00', 1, '1586583470');
INSERT INTO `lea_attachment` VALUES (16, 19, 'image/20200411/3bb49fbc10645eb3e4a14e5d06fff13b.ico', '/upload/image/20200411/3bb49fbc10645eb3e4a14e5d06fff13b.ico', 'image', 'image/x-icon', '16958.00', 1, '1586598559');
INSERT INTO `lea_attachment` VALUES (23, 19, 'image/20200412/ab05c1954154081b6a06d9ba1e4ce26c.png', '/upload/image/20200412/ab05c1954154081b6a06d9ba1e4ce26c.png', 'image', 'image/png', '120799.00', 1, '1586665629');
INSERT INTO `lea_attachment` VALUES (24, 19, 'image/20200412/feb596998fd1e15d0ca624c47802dce5.png', '/upload/image/20200412/feb596998fd1e15d0ca624c47802dce5.png', 'image', 'image/png', '21842.00', 1, '1586665631');
INSERT INTO `lea_attachment` VALUES (25, 19, 'image/20200412/095d263abec3597b5cd303600977ba0f.png', '/upload/image/20200412/095d263abec3597b5cd303600977ba0f.png', 'image', 'image/png', '120799.00', 1, '1586665634');
INSERT INTO `lea_attachment` VALUES (26, 19, 'image/20200412/d5fbac35e077a654a26a149a1227c5e2.png', '/upload/image/20200412/d5fbac35e077a654a26a149a1227c5e2.png', 'image', 'image/png', '21842.00', 1, '1586665636');
INSERT INTO `lea_attachment` VALUES (27, 19, 'image/20200412/86c4542863146362acf038e1b3a59d27.png', '/upload/image/20200412/86c4542863146362acf038e1b3a59d27.png', 'image', 'image/png', '120799.00', 1, '1586665638');
INSERT INTO `lea_attachment` VALUES (28, 19, 'image/20200412/427a43adca442a787a08de77820236ad.png', '/upload/image/20200412/427a43adca442a787a08de77820236ad.png', 'image', 'image/png', '21842.00', 1, '1586665640');
INSERT INTO `lea_attachment` VALUES (29, 19, 'image/20200412/14aa8b4d6c36e54324c87a14599d8a31.png', '/upload/image/20200412/14aa8b4d6c36e54324c87a14599d8a31.png', 'image', 'image/png', '120799.00', 1, '1586665642');
INSERT INTO `lea_attachment` VALUES (30, 19, 'image/20200412/ed46e6b1a7f2dbd38e0e14a6e4080512.png', '/upload/image/20200412/ed46e6b1a7f2dbd38e0e14a6e4080512.png', 'image', 'image/png', '21842.00', 1, '1586665644');
INSERT INTO `lea_attachment` VALUES (31, 19, 'image/20200412/9690d4821af7630c01cd0eee1d86cad6.png', '/upload/image/20200412/9690d4821af7630c01cd0eee1d86cad6.png', 'image', 'image/png', '120799.00', 1, '1586665646');
INSERT INTO `lea_attachment` VALUES (32, 17, 'image/20200412/1f7fa36c58e24daeff4248aa205cc0d7.png', '/upload/image/20200412/1f7fa36c58e24daeff4248aa205cc0d7.png', 'image', 'image/png', '21842.00', 1, '1586665653');
INSERT INTO `lea_attachment` VALUES (33, 17, 'image/20200412/42f96f5d16243abf35bed2ea08eddcce.png', '/upload/image/20200412/42f96f5d16243abf35bed2ea08eddcce.png', 'image', 'image/png', '120799.00', 1, '1586665657');
INSERT INTO `lea_attachment` VALUES (34, 17, 'image/20200412/c195e92c3e0cb710428f61ebec6cad22.png', '/upload/image/20200412/c195e92c3e0cb710428f61ebec6cad22.png', 'image', 'image/png', '21842.00', 1, '1586665659');
INSERT INTO `lea_attachment` VALUES (35, 17, 'image/20200412/f0ed2a75a1f15d1434e3a968e471ea6e.png', '/upload/image/20200412/f0ed2a75a1f15d1434e3a968e471ea6e.png', 'image', 'image/png', '120799.00', 1, '1586665666');
INSERT INTO `lea_attachment` VALUES (36, 17, 'image/20200412/7261c6744a990fd47dbfeca402f1cb79.png', '/upload/image/20200412/7261c6744a990fd47dbfeca402f1cb79.png', 'image', 'image/png', '21842.00', 1, '1586665668');
INSERT INTO `lea_attachment` VALUES (37, 17, 'image/20200412/6c1273e403bbbae0d94e7e86e978b4b5.png', '/upload/image/20200412/6c1273e403bbbae0d94e7e86e978b4b5.png', 'image', 'image/png', '120799.00', 1, '1586665669');
INSERT INTO `lea_attachment` VALUES (38, 17, 'image/20200416/28297852ea8064edbbd554c0d3ac0bc6.png', '/upload/image/20200416/28297852ea8064edbbd554c0d3ac0bc6.png', 'image', 'image/png', '3704.00', 1, '1587046182');
INSERT INTO `lea_attachment` VALUES (39, 0, 'image/20200417/7ffdacc8789967cd2d32c9ade8e2d74c.jpeg', '/upload/image/20200417/7ffdacc8789967cd2d32c9ade8e2d74c.jpeg', 'image', 'image/jpeg', '33448.00', 1, '1587088282');
INSERT INTO `lea_attachment` VALUES (40, 0, 'image/20200417/45f71819c29a85151806a57609fdade0.jpeg', '/upload/image/20200417/45f71819c29a85151806a57609fdade0.jpeg', 'image', 'image/jpeg', '33448.00', 1, '1587091769');
INSERT INTO `lea_attachment` VALUES (41, 0, 'image/20200417/cc296f7b1de659794f9cffcba7405424.mp4', '/upload/image/20200417/cc296f7b1de659794f9cffcba7405424.mp4', 'video', 'video/mp4', '3360938', 1, '1587092695');
INSERT INTO `lea_attachment` VALUES (42, 0, 'image/20200417/1b7aa91153dcca6efff5e8f96ed367e1.mp4', '/upload/image/20200417/1b7aa91153dcca6efff5e8f96ed367e1.mp4', 'video', 'video/mp4', '3360938', 1, '1587092932');
INSERT INTO `lea_attachment` VALUES (43, 0, 'image/20200417/38565364c3ea5044bbfdf16d98a4ea8e.mp4', '/upload/image/20200417/38565364c3ea5044bbfdf16d98a4ea8e.mp4', 'video', 'video/mp4', '3360938', 1, '1587093077');
INSERT INTO `lea_attachment` VALUES (44, 0, 'image/20200417/70ef6312ba905c5ff817faa20c85a8a4.mp4', '/upload/image/20200417/70ef6312ba905c5ff817faa20c85a8a4.mp4', 'video', 'video/mp4', '3360938', 1, '1587093770');
INSERT INTO `lea_attachment` VALUES (45, 0, 'image/20200417/d0f8c8fced44f3ae0173ad8a37a5a296.mp4', '/upload/image/20200417/d0f8c8fced44f3ae0173ad8a37a5a296.mp4', 'video', 'video/mp4', '3360938', 1, '1587093833');
INSERT INTO `lea_attachment` VALUES (46, 0, 'image/20200417/63952c7cdd196a96363f27ac829bd5cc.mp4', '/upload/image/20200417/63952c7cdd196a96363f27ac829bd5cc.mp4', 'video', 'video/mp4', '3360938', 1, '1587093860');
INSERT INTO `lea_attachment` VALUES (47, 0, 'video/20200417/fd06f33e51b3ec4edfaafa74a6024f35.mp4', '/upload/video/20200417/fd06f33e51b3ec4edfaafa74a6024f35.mp4', 'video', 'video/mp4', '3360938', 1, '1587093890');
INSERT INTO `lea_attachment` VALUES (48, 0, 'video/20200417/70145b0c1b28156b0556251a600b0f75.mp4', '/upload/video/20200417/70145b0c1b28156b0556251a600b0f75.mp4', 'video', 'video/mp4', '3360938', 1, '1587094445');
INSERT INTO `lea_attachment` VALUES (49, 0, 'image/20200417/2330960e20c046ceed820ce1918aaacd.jpeg', '/upload/image/20200417/2330960e20c046ceed820ce1918aaacd.jpeg', 'image', 'image/jpeg', '33448', 1, '1587094599');
INSERT INTO `lea_attachment` VALUES (50, 0, 'image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', 'image', 'image/jpeg', '33448', 1, '1587094718');
INSERT INTO `lea_attachment` VALUES (51, 0, 'video/20200417/1ba1f7ac5d53c874166a056c7bcab21c.mp4', '/upload/video/20200417/1ba1f7ac5d53c874166a056c7bcab21c.mp4', 'video', 'video/mp4', '3360938', 1, '1587094928');
INSERT INTO `lea_attachment` VALUES (52, 0, 'audio/20200417/b0a071f528d423ccffe1f3227450bb8b.mp3', '/upload/audio/20200417/b0a071f528d423ccffe1f3227450bb8b.mp3', 'audio', 'audio/mpeg', '21141', 1, '1587096167');
INSERT INTO `lea_attachment` VALUES (53, 21, 'image/20200424/57cd3a1e9a38289f42207dd69c5b6650.png', '/upload/image/20200424/57cd3a1e9a38289f42207dd69c5b6650.png', 'image', 'image/png', '20134', 1, '1587705666');
INSERT INTO `lea_attachment` VALUES (54, 22, 'image/20200428/b57276202fc3bc914b72ec3e87c46abe.jpg', '/upload/image/20200428/b57276202fc3bc914b72ec3e87c46abe.jpg', 'image', 'image/jpeg', '170914', 1, '1588077711');
INSERT INTO `lea_attachment` VALUES (55, 22, 'image/20200428/c746a78c781e090189a6e93010990b7a.jpg', '/upload/image/20200428/c746a78c781e090189a6e93010990b7a.jpg', 'image', 'image/jpeg', '128124', 1, '1588077714');
INSERT INTO `lea_attachment` VALUES (56, 22, 'image/20200428/da9442b96330999d98364e80f2e0439e.jpg', '/upload/image/20200428/da9442b96330999d98364e80f2e0439e.jpg', 'image', 'image/jpeg', '162265', 1, '1588077717');
INSERT INTO `lea_attachment` VALUES (57, 0, 'image/20200430/b7572ec7b53fdb476cb74978b74aee6e.jpg', '/upload/image/20200430/b7572ec7b53fdb476cb74978b74aee6e.jpg', 'image', 'image/jpeg', '7900', 1, '1588201885');
INSERT INTO `lea_attachment` VALUES (66, 22, 'image/20200507/f1a93c39b0cf13584aad9abc493c6b90.jpg', 'http://file.cos.leapy.cn/image/20200507/716f3202005071331055658.jpg', 'image', 'image/jpeg', '54544', 2, '1588829465');
INSERT INTO `lea_attachment` VALUES (67, 0, 'image/20200509/4e1f2a7c179e4084a93032323db7f8b5.jpg', 'http://file.cos.leapy.cn/image/20200509/898b720200509204528197.jpg', 'image', 'image/jpeg', '7900', 2, '1589028329');
INSERT INTO `lea_attachment` VALUES (68, 0, 'image/20200509/24d3e04cfe50a75eb75e6dd84b9d3fe3.jpg', 'http://file.cos.leapy.cn/image/20200509/a316c202005092050169966.jpg', 'image', 'image/jpeg', '7900', 2, '1589028616');
INSERT INTO `lea_attachment` VALUES (69, 0, 'image/20200509/9799fcb46f1ffc97ae00a067b8fefb8f.jpg', 'http://file.cos.leapy.cn/image/20200509/1af11202005092050505325.jpg', 'image', 'image/jpeg', '7900', 2, '1589028650');
INSERT INTO `lea_attachment` VALUES (70, 0, 'image/20200509/8d0c463bb282d6a26df536b63ff2facc.jpg', 'http://file.cos.leapy.cn/image/20200509/29a4a202005092052147675.jpg', 'image', 'image/jpeg', '7900', 2, '1589028734');
INSERT INTO `lea_attachment` VALUES (71, 22, 'image/20200510/8821d850e19c1866834118e2571aa34a.jpg', 'http://file.cos.leapy.cn/image/20200510/fd9dd202005100903276547.jpg', 'image', 'image/jpeg', '33920', 2, '1589072607');
INSERT INTO `lea_attachment` VALUES (72, 22, 'image/20200510/8465549335452e3bfba0a4b8a6ba4c63.jpg', 'http://file.cos.leapy.cn/image/20200510/50d49202005100906567976.jpg', 'image', 'image/jpeg', '133290', 2, '1589072817');
INSERT INTO `lea_attachment` VALUES (73, 22, 'image/20200510/d32531112e58b1f90f9ae0c97a1963b7.jpg', 'http://file.cos.leapy.cn/image/20200510/166fb202005100910134099.jpg', 'image', 'image/jpeg', '53917', 2, '1589073013');
INSERT INTO `lea_attachment` VALUES (74, 22, 'image/20200510/6dbf5f9e65d0e60303a10ca2566dd9fe.jpg', 'http://file.cos.leapy.cn/image/20200510/c7141202005100913026950.jpg', 'image', 'image/jpeg', '62293', 2, '1589073182');
INSERT INTO `lea_attachment` VALUES (75, 22, 'image/20200510/66d5c51e0222d17575a413fb6425e841.jpg', 'http://file.cos.leapy.cn/image/20200510/53d6c202005102117106983.jpg', 'image', 'image/jpeg', '139312', 2, '1589116630');
INSERT INTO `lea_attachment` VALUES (76, 22, 'image/20200510/9e55370369746ea10396ab9a9ccf493a.jpg', 'http://file.cos.leapy.cn/image/20200510/6b8a4202005102119246531.jpg', 'image', 'image/jpeg', '44962', 2, '1589116765');
INSERT INTO `lea_attachment` VALUES (77, 22, 'image/20200510/2047baa9ab89a29e96f8aa5dcc12a894.jpg', 'http://file.cos.leapy.cn/image/20200510/e570d202005102121265003.jpg', 'image', 'image/jpeg', '109314', 2, '1589116887');
INSERT INTO `lea_attachment` VALUES (78, 22, 'image/20200510/76b9c072f43aa3d7fb3e35a4ce1b6eca.jpg', 'http://file.cos.leapy.cn/image/20200510/bed2b202005102126232634.jpg', 'image', 'image/jpeg', '44678', 2, '1589117183');
INSERT INTO `lea_attachment` VALUES (79, 0, 'image/20200513/dfdf8ecd1e4bfa1d24ea992515441461.jpg', 'http://file.cos.leapy.cn/image/20200513/7c007202005130755013790.jpg', 'image', 'image/jpeg', '47518', 2, '1589327701');
INSERT INTO `lea_attachment` VALUES (80, 0, 'image/20200513/6d8cadd18fb811556e2ae7617262d047.jpg', 'http://file.cos.leapy.cn/image/20200513/8795c202005130757437787.jpg', 'image', 'image/jpeg', '27760', 2, '1589327863');
INSERT INTO `lea_attachment` VALUES (81, 23, 'image/20200516/884685416140006033cdd9e8c516dcd6.jpg', 'http://file.cos.leapy.cn/image/20200516/91f08202005161354061360.jpg', 'image', 'image/jpeg', '65369', 2, '1589608446');
INSERT INTO `lea_attachment` VALUES (82, 0, 'image/20200520/5bf5fa4ed43e553c2f1a30312dc41d40.png', 'http://file.cos.leapy.cn/image/20200520/320b1202005201016139883.png', 'image', 'image/png', '32414', 2, '1589940973');
INSERT INTO `lea_attachment` VALUES (83, 0, 'image/20200520/a30dc27edb97c450bb63c6acf166b290.png', 'http://file.cos.leapy.cn/image/20200520/4870e202005201017078544.png', 'image', 'image/png', '101389', 2, '1589941027');
INSERT INTO `lea_attachment` VALUES (84, 0, 'image/20200520/858b3d63ae65a2842281cecc829642b4.png', 'http://file.cos.leapy.cn/image/20200520/28395202005201017322794.png', 'image', 'image/png', '58868', 2, '1589941052');
INSERT INTO `lea_attachment` VALUES (85, 0, 'image/20200520/a9b8ab59bd31442bb6dfb9ab73ceac6b.png', 'http://file.cos.leapy.cn/image/20200520/99214202005201017522849.png', 'image', 'image/png', '62207', 2, '1589941072');
INSERT INTO `lea_attachment` VALUES (86, 0, 'image/20200520/9ee9fa9dcd8098b649091115d70a5ca8.png', 'http://file.cos.leapy.cn/image/20200520/ebd6420200520101809963.png', 'image', 'image/png', '80940', 2, '1589941089');
INSERT INTO `lea_attachment` VALUES (87, 0, 'image/20200520/3b34d82cc9a5dddd68101df696af2f5d.png', 'http://file.cos.leapy.cn/image/20200520/99c2d202005201018228828.png', 'image', 'image/png', '455887', 2, '1589941105');
INSERT INTO `lea_attachment` VALUES (88, 0, 'image/20200520/d27c2f2b35878b8ce23e7f1a07023cc8.png', 'http://file.cos.leapy.cn/image/20200520/1125e20200520101908339.png', 'image', 'image/png', '55833', 2, '1589941148');
INSERT INTO `lea_attachment` VALUES (89, 0, 'image/20200520/1041685cd361274313b3e05cc2884a7f.png', 'http://file.cos.leapy.cn/image/20200520/befdd202005201019221055.png', 'image', 'image/png', '72239', 2, '1589941163');

-- ----------------------------
-- Table structure for lea_attachment_category
-- ----------------------------
DROP TABLE IF EXISTS `lea_attachment_category`;
CREATE TABLE `lea_attachment_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `pid` int(10) NOT NULL DEFAULT 0 COMMENT '上级分类',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目录名称',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属附件类型',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_attachment_category
-- ----------------------------
INSERT INTO `lea_attachment_category` VALUES (17, 0, '账号管理图片', 'image', '1', '1585490276', '1', '1585490299');
INSERT INTO `lea_attachment_category` VALUES (19, 17, '测试', 'image', '1', '1586160784', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (20, 0, 'CMS管理', 'image', '1', '1587705636', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (21, 20, '轮播', 'image', '1', '1587705653', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (22, 0, '小程序视频', 'image', '1', '1588077700', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (23, 0, '博客', 'image', '1', '1589608434', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (24, 0, '阿斯顿发生的', 'image', '1', '1589966625', NULL, NULL);
INSERT INTO `lea_attachment_category` VALUES (25, 24, '23423', 'image', '1', '1589966632', NULL, NULL);

-- ----------------------------
-- Table structure for lea_cms_article
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_article`;
CREATE TABLE `lea_cms_article`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名称',
  `cid` int(8) NOT NULL COMMENT '所属分类',
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `is_recommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '推荐文章',
  `is_hot` tinyint(1) NOT NULL COMMENT '热门文章',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标签',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐图',
  `abstract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `show_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_article
-- ----------------------------
INSERT INTO `lea_cms_article` VALUES (6, '湖北疫情', 3, '张总1', 1, 1, 1, '1,2,3,', '/upload/image/20200306/76699c48fc52a70cd1d808e7d4649103.png', 'xxxxxxxxxxxx', '&lt;p&gt;666xxx777xxx888xxx&lt;/p&gt;', '1585152000', 0, 1, '1', '1583550013', '1', '1583854199');

-- ----------------------------
-- Table structure for lea_cms_banner
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_banner`;
CREATE TABLE `lea_cms_banner`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '轮播ID',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播名称',
  `position` tinyint(2) NOT NULL COMMENT '位置',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图片',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS轮播' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_banner
-- ----------------------------
INSERT INTO `lea_cms_banner` VALUES (9, '轮播测试', 1, '/upload/image/20200424/57cd3a1e9a38289f42207dd69c5b6650.png', 'xxxxxxxxxxxxxx', 11, 1, '1', '1587705914', '1', '1589961513');
INSERT INTO `lea_cms_banner` VALUES (10, '测试2', 1, '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', 'xxx', 0, 1, '1', '1587707103', NULL, '1587707134');

-- ----------------------------
-- Table structure for lea_cms_category
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_category`;
CREATE TABLE `lea_cms_category`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类目名称',
  `pid` int(8) NOT NULL DEFAULT 0 COMMENT '上级ID',
  `type` tinyint(1) NOT NULL COMMENT '栏目类型 1单页2列表3外链',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `is_menu` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否菜单',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '状态1可用0不可用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS栏目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_category
-- ----------------------------
INSERT INTO `lea_cms_category` VALUES (1, '关于我们', 0, 1, '/about', 1, 20, 1, '1', '1583422620', NULL, '1583854007');
INSERT INTO `lea_cms_category` VALUES (3, '新闻中心', 0, 2, '/news', 1, 0, 1, '1', '1583484025', '1', '1587685306');

-- ----------------------------
-- Table structure for lea_cms_page
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_page`;
CREATE TABLE `lea_cms_page`  (
  `cid` int(8) NOT NULL COMMENT '单页ID-栏目ID',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `show_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS单页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_page
-- ----------------------------
INSERT INTO `lea_cms_page` VALUES (1, '&lt;p&gt;666&lt;/p&gt;', '1583424000', 1, '1', '1587698557', NULL, NULL);

-- ----------------------------
-- Table structure for lea_cms_record
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_record`;
CREATE TABLE `lea_cms_record`  (
  `id` int(8) NOT NULL COMMENT '记录ID',
  `aid` int(8) NOT NULL COMMENT '文章ID',
  `uid` int(8) NOT NULL DEFAULT 0 COMMENT '操作人',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '操作类型 1浏览 2点赞',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user_agent',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS用户阅读点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_record
-- ----------------------------

-- ----------------------------
-- Table structure for lea_cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `lea_cms_tag`;
CREATE TABLE `lea_cms_tag`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'CMS标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_cms_tag
-- ----------------------------
INSERT INTO `lea_cms_tag` VALUES (2, '标签2', '', 2, 1, '1', '1583512673', '1', '1583854463');
INSERT INTO `lea_cms_tag` VALUES (3, '标签3', '', 0, 1, '1', '1583512683', NULL, NULL);

-- ----------------------------
-- Table structure for lea_mini_video
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video`;
CREATE TABLE `lea_mini_video`  (
  `vid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源 qq iqiyi youku',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频类型',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频名称',
  `tinyname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频简称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页图片',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面',
  `skip_sec` int(8) NULL DEFAULT NULL COMMENT '跳过多少秒',
  `fee` decimal(8, 2) NULL DEFAULT NULL COMMENT '费用',
  `discount` decimal(8, 2) NULL DEFAULT NULL COMMENT '折扣',
  `recommend` tinyint(1) NULL DEFAULT NULL COMMENT '是否推荐',
  `love` tinyint(1) NULL DEFAULT NULL COMMENT '猜你喜欢',
  `actor` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '演员',
  `num` int(8) NULL DEFAULT NULL COMMENT '集数',
  `now_num` int(8) NULL DEFAULT NULL COMMENT '更新到第几集',
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `rank` tinyint(2) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '是否启用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`vid`) USING BTREE,
  UNIQUE INDEX `vid`(`vid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video
-- ----------------------------
INSERT INTO `lea_mini_video` VALUES ('06f338d6r1wa3my', 'qq', 'movie', '冰雪奇缘2', '29种语言版强势来袭', NULL, 'http://puui.qpic.cn/tv/0/698157715_1280720/0', '//puui.qpic.cn/vcover_vt_pic/0/06f338d6r1wa3my1574233379/0', 0, 0.01, 0.00, 1, 1, '[[\"\\u514b\\u91cc\\u65af\\u00b7\\u5df4\\u514b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1328901574041323\\/0\"],[\"\\u73cd\\u59ae\\u5f17\\u00b7\\u674e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3629761583984163\\/0\"]]', 0, 0, '2019-11-22', '历经严酷考验，阿伦戴尔王国终于回归往日平静。艾莎女王、安娜公主以及他们的好友雪宝、克里斯托弗、驯鹿斯文过着平静安逸的生活。可是最近一段时间，艾莎总会被一段神秘的吟唱所困扰，为了追寻真相，她义无反顾踏上了征途。担心姐姐的安全，安娜和雪宝、克里斯托弗他们紧紧跟随。在那座常年被浓雾所笼罩的森林里，不仅藏着神秘的自然力量，更隐藏着关于阿伦戴尔王国、艾莎的魔法来源以及两位公主父母丧生等一系列的秘密。艾莎开启了一段寻找自我的旅程……', 99, 1, '1', '1587914407', '1', '1588952632');
INSERT INTO `lea_mini_video` VALUES ('2nnk0mjf3bsk6tt', 'qq', 'tv', '亿万 第三季', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/2nnk0mjf3bsk6tt1573700409/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u8bfa\\u4e9a\\u00b7\\u827e\\u9ed8\\u91cc\\u5947\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/786941565233351\\/0\"],[\"\\u865e\\u7433\\u654f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/861071565078973\\/0\"],[\"\\u6234\\u7c73\\u6069\\u00b7\\u8def\\u6613\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/746451573626016\\/0\"],[\"\\u4fdd\\u7f57\\u00b7\\u5409\\u4e9a\\u739b\\u63d0\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/7\\/8\\/71678.jpg\"],[\"\\u739b\\u59ec\\u00b7\\u4e1d\\u5f17\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/4412781565240125\\/0\"],[\"\\u739b\\u7433\\u00b7\\u963f\\u514b\\u66fc\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/8\\/9\\/7\\/76897.jpg\"]]', 12, 12, '2018', '《亿万》讲述了纽约市政治与经济领域、关于金钱的一场较量。故事主要描述两个华尔街重量级人物之间的战争。精明、强硬的检察官查克·罗兹和才华横溢、极具野心的对冲基金大亨鲍比·阿克塞尔罗德。剧集设定包括了纽约的强权政治和金融活动的权谋诡计，通过错综复杂的叙事特色来编织一个高风险的追捕游戏。', 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('3fvg46217gw800n', 'qq', 'movie', '流浪地球', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/3fvg46217gw800n1566963547/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u90ed\\u5e06\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/793081574319201\\/0\"],[\"\\u5c48\\u695a\\u8427\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/14981551533880693\\/0\"],[\"\\u5434\\u4eac\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/5\\/3\\/72753.jpg\"],[\"\\u674e\\u5149\\u6d01\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/752511577175317\\/0\"],[\"\\u5434\\u5b5f\\u8fbe\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/727801537340050\\/0\"],[\"\\u8d75\\u4eca\\u9ea6\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1582551577178333\\/0\"]]', NULL, NULL, '2019-02-05', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启长大，他带着妹妹朵朵偷偷跑到地表，偷开外公韩子昂的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……本片根据刘慈欣的同名小说改编。', 0, 1, '1', '1587914291', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('41dicgms0277zoz', 'qq', 'tv', '致我们单纯的小美好', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/41dicgms0277zoz1509076237/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6768\\u9f99\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1513853_688t1471415509.jpg\\/0\"],[\"\\u80e1\\u4e00\\u5929\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1479171575268514\\/0\"],[\"\\u6c88\\u6708\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1520240279\\/0\"],[\"\\u738b\\u6893\\u8587\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1510287596\\/0\"],[\"\\u9ad8\\u81f3\\u9706\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15745321577669482\\/0\"],[\"\\u5b59\\u5b81\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16061941567076670\\/0\"]]', 23, 24, '2017', '改编自赵乾乾同名畅销小说，主要讲述了陈小希与江辰19年间共同成长，从青梅竹马到错失后的再次牵手的爱情故事。腹黑傲娇的天才医生，蠢萌逗比的元气少女，全剧气质俏皮幽默，通过展现陈小希倒追江辰一路上啼笑皆非的日常，记录了青春时光里最美好的心动时刻，将专属17岁少男少女之间的青涩感情呈现出来，带领观众重返好时光。', 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('714pdmcrnqdlmdx', 'qq', 'movie', '少年的你', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/714pdmcrnqdlmdx1574668477/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u66fe\\u56fd\\u7965\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/750031530695348\\/0\"],[\"\\u5468\\u51ac\\u96e8\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1517363586\\/0\"],[\"\\u6613\\u70ca\\u5343\\u73ba\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1522031672\\/0\"],[\"\\u5c39\\u6609\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/4686311579416791\\/0\"],[\"\\u9ec4\\u89c9\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/805951577697526\\/0\"],[\"\\u5434\\u8d8a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/933601576897474\\/0\"]]', NULL, NULL, '2019-10-25', '陈念是一名即将参加高考的高三学生，同校女生胡晓蝶的跳楼自杀让她的生活陷入了困顿之中。胡晓蝶死后，陈念遭到了以魏莱为首的三人组的霸凌，魏莱虽然表面上看来是乖巧的优等生，实际上却心思毒辣，胡晓蝶的死和她有着千丝万缕的联系。一次偶然中，陈念邂逅了名为小北的小混混，随着时间的推移，心心相惜的两人之间产生了真挚的感情。小北答应陈念在暗中保护她免受魏莱的欺凌，没想到这一决定引发了一连串的连锁反应。负责调查胡晓蝶死因的警官郑易隐隐察觉到校园里的古怪气氛，可他的调查却屡屡遭到校方的阻挠。', 0, 1, '1', '1589118165', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('agq0ydhoxzitatw', 'qq', 'movie', '勇敢者游戏2：再战巅峰', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/agq0ydhoxzitatw1582617517149/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6770\\u514b\\u00b7\\u5361\\u65af\\u4e39\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/756081582864054\\/0\"],[\"\\u9053\\u6069\\u00b7\\u5f3a\\u68ee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1521107037\\/0\"],[\"\\u51ef\\u4f26\\u00b7\\u5409\\u5170\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/2\\/3\\/72023.jpg\"],[\"\\u6770\\u514b\\u00b7\\u5e03\\u83b1\\u514b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1521166600\\/0\"],[\"\\u51ef\\u6587\\u00b7\\u54c8\\u7279\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/8\\/4\\/132784.jpg\"],[\"\\u5c3c\\u514b\\u00b7\\u4e54\\u7eb3\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1521165535\\/0\"]]', NULL, NULL, '2019-12-06', '四名勇敢者再次穿越回到险象环生的游戏世界中，开启全新冒险。与上次不同的是，变身勇石博士的是斯潘瑟的外公，外公的好友则变身为语言学家，高大威猛的弗里奇变成了中年发福地质学家，只有学霸玛莎依旧化身性感打女，斯潘瑟和贝瑟尼却不知所踪。为营救消失的伙伴，四人必须进入全面失控的未知世界，面对难度爆表危险重重的致命关卡，强森领队挑战极限玩命闯关。山崩石裂的险境中命悬一线，与突如其来的凶猛野兽死战到底，他们唯有绷紧神经并肩作战，才能通过生死考验逃出生天。一场惊险刺激又充满惊喜的冒险之旅即将展开！', 0, 1, '1', '1587914441', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('bv8m91i5jj1w1ww', 'qq', 'movie', '冰雪奇缘', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/bv8m91i5jj1w1ww1574426519/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u514b\\u91cc\\u65af\\u00b7\\u5df4\\u514b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1328901574041323\\/0\"],[\"\\u8a79\\u59ae\\u5f17\\u00b7\\u674e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1328911574042096\\/0\"]]', NULL, NULL, '2014-02-05', '在四面环海、风景如画的阿伦黛尔王国，生活着两位可爱美丽的小公主，艾莎和安娜。艾莎天生具有制造冰雪的能力，随着年龄的增长，她的能力越来越强，甚至险些夺走妹妹的生命。为此国王紧闭宫门，也中断了两姐妹的联系。悲哀的海难过后，艾莎终于到了加冕的年龄，各国王公齐来祝贺。艾莎战战兢兢，唯恐被人识破隐藏了多年的秘密。然而当听说安娜将要和初次见面的南埃尔斯王子汉斯结婚时，依然情绪失控露出了马脚。在此之后她逃到山中，构建了属于自己的冰雪王国，而阿伦黛尔也陷入可怕的寒冷之中。安娜独自来到山中，在山民克斯托夫的帮助下总算来到姐姐的宫殿，她能否让国家重新找回失落的绿意？', 0, 1, '1', '1589118036', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('c0oqsamtnxba64q', 'qq', 'tv', '硅谷第四季', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/c0oqsamtnxba64q1568200614/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u8fc8\\u514b\\u00b7\\u4e54\\u5409\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/9\\/8\\/6\\/78986.jpg\"],[\"\\u6258\\u9a6c\\u65af\\u00b7\\u7c73\\u5fb7\\u8482\\u5947\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/7\\/9\\/336179.jpg\"],[\"T\\u00b7J\\u00b7\\u7c73\\u52d2\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/7\\/8\\/336178.jpg\"],[\"\\u624e\\u514b\\u00b7\\u4f0d\\u5179\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/4\\/9\\/421049.jpg\"],[\"\\u5e93\\u6885\\u5c14\\u00b7\\u5357\\u8d3e\\u5c3c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/4210501565935042\\/0\"],[\"\\u9a6c\\u4e01\\u00b7\\u65af\\u5854\\u5c14\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/866591568265422\\/0\"]]', 10, 10, '2017', '本季中，理查德打算辞职，自己去开发一个新项目，某种意义上，他跟这些人算是“分家”了……魔笛手和Hooli的战争旷日持久，这季当然要继续啦，当然，这帮家伙一般都不会顺利……', 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('d6mvesrx6j2ux4x', 'qq', 'movie', '致命黑兰', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/d6mvesrx6j2ux4xt1444813175.jpg/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5965\\u5229\\u7ef4\\u5c14\\u00b7\\u7c73\\u52a0\\u987f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/8\\/3\\/84183.jpg\"],[\"\\u4f50\\u4f0a\\u00b7\\u7d22\\u5c14\\u8fbe\\u5a1c\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/5\\/7\\/9\\/71579.jpg\"],[\"\\u8fc8\\u514b\\u5c14\\u00b7\\u74e6\\u5c14\\u5766\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/790651586249839\\/0\"],[\"\\u9a6c\\u514b\\u65af\\u00b7\\u9a6c\\u8482\\u5c3c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3285331586250610\\/0\"],[\"\\u8a79\\u8fea\\u00b7\\u83ab\\u62c9\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/914951576742638\\/0\"],[\"\\u8fde\\u5c3c\\u00b7\\u8a79\\u59c6\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/791011586251058\\/0\"]]', NULL, NULL, '2013-06-07', '卡塔丽亚·雷斯特雷波在十岁时目睹自己的父母被哥伦比亚毒品大王唐·路易斯残酷杀害。逃出生天的卡塔丽亚逃到了芝加哥，投奔了叔叔埃米利奥，他也是一个黑帮分子。埃米利奥尽量让卡拉勒娅远离黑帮生活的影响，但卡塔丽亚一心想成为一名职业杀手。25岁的她终于变成了一个经验丰富、冷酷无情的刺客，她平时为叔叔埃米利奥工作，但内心里的目标却是为自己的父母展开复仇，干掉毒品大亨唐·路易斯。为了复仇，没有什么可以阻止卡塔丽亚，不管是叔叔埃米利奥、还是FBI、CIA官员，虽然卡塔丽亚为叔叔埃米利奥全家遇害而内疚，但更坚定了她复仇的决心，也让毒品大亨唐·路易斯和他的同伙陷入了死亡的恐惧中……', 0, 1, '1', '1587914237', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('d8t20577qy9vy13', 'qq', 'movie', '死侍', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/d8t20577qy9vy131555639017/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u63d0\\u59c6\\u00b7\\u7c73\\u52d2\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13025371584955512\\/0\"],[\"\\u745e\\u6069\\u00b7\\u96f7\\u8bfa\\u5179\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1415991574734778\\/0\"],[\"\\u83ab\\u857e\\u5a1c\\u00b7\\u5df4\\u5361\\u6797\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1617681579678262\\/0\"],[\"\\u827e\\u5fb7\\u00b7\\u65af\\u514b\\u6797\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2946141546419072\\/0\"],[\"T\\u00b7J\\u00b7\\u7c73\\u52d2\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/7\\/8\\/336178.jpg\"],[\"\\u5409\\u5a1c\\u00b7\\u5361\\u62c9\\u8bfa\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1519026753\\/0\"]]', NULL, NULL, '2016-02-12', '油嘴滑舌的雇佣兵韦德·威尔森（瑞恩·雷诺兹 Ryan Reynolds 饰）与俏皮可爱的瓦内莎（莫蕾娜·巴卡林 Morena Baccarin 饰）邂逅，但在爱情最美满的时刻，他被诊断患有晚期癌症，留在世上的时间所剩无几。极度绝望之际，他接受了弗朗西斯（艾德·斯克林 Ed Skrein 饰）私人组织的邀请，对其基因做了改造，以谋求体能的突变。在忍受了一系列的残酷折磨后，韦德终于治好了癌症，蜕变成拥有不死之身的超级战士，但是代价却是失去了人类的面容。狡猾的弗朗西斯逃之夭夭，而韦德却无法以恐怖的面容去面对女友。在此之后，他化身死侍，穿梭于每一个黑暗角落，寻找阿贾克斯的踪影……', 0, 1, '1', '1587914505', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('dfg8138lannbyjx', 'qq', 'movie', '僵尸先生', '林正英僵尸片', NULL, 'http://puui.qpic.cn/vcover_hz_pic/0/eazfh1m41s8e3bc1559736640/175', '//puui.qpic.cn/vcover_vt_pic/0/dfg8138lannbyjx1568012681/0', NULL, NULL, NULL, 1, 1, '[[\"\\u5218\\u89c2\\u4f1f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/2\\/6\\/2\\/72262.jpg?1452566521\"],[\"\\u6797\\u6b63\\u82f1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/758611571798247\\/0\"],[\"\\u8bb8\\u51a0\\u82f1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/786671544433394\\/0\"],[\"\\u94b1\\u5c0f\\u8c6a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1521692954\\/0\"],[\"\\u674e\\u8d5b\\u51e4\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/754671548059611\\/0\"]]', NULL, NULL, '1985-12-07', '富贵乡绅任发先父当年威逼利诱求得一块风水宝地，经风水先生指点，其父下葬二十年后起坟迁葬，以利子孙。然九叔察看墓穴得知，当年风水先生与任家私怨在身，在墓穴中做下手脚，二十年后任老太爷尸体已生恶变。九叔提议就地火化，在任老爷请求下才将尸骨移往义庄。虽经小心看护，但任老太爷仍化作僵尸，将其子任发杀害。九叔断定任老太爷和任发的僵尸将再次出现，于是命令徒弟秋生和文才小心应付……', 0, 1, '1', '1587914377', '1', '1588255817');
INSERT INTO `lea_mini_video` VALUES ('dxd1v76tmu0wjuj', 'qq', 'tv', '清平乐', '', NULL, '', '//puui.qpic.cn/vcover_vt_pic/0/dxd1v76tmu0wjuj1586243815025/0', 0, 0.00, 0.00, 1, 0, '[[\"\\u5f20\\u5f00\\u5b99\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_395184_688t1494492154.jpg\\/0\"],[\"\\u738b\\u51ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/854561579417059\\/0\"],[\"\\u6c5f\\u758f\\u5f71\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/853011577324919\\/0\"],[\"\\u4efb\\u654f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3061641589251021\\/0\"],[\"\\u6768\\u738f\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_163081_688t1490149764.jpg\\/0\"],[\"\\u8fb9\\u7a0b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/944821589251049\\/0\"],[\"\\u53f6\\u7956\\u65b0\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_93325_688t1506758409.jpg\\/0\"],[\"\\u55bb\\u6069\\u6cf0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/729841578455740\\/0\"],[\"\\u738b\\u695a\\u7136\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15634861587635029\\/0\"],[\"\\u5218\\u94a7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/949191556936229\\/0\"]]', 70, 70, '2020', '北宋皇帝赵祯得知将自己养大的当朝太后刘娥并非亲生母亲，而自己的生母乃是太后当年的婢女李兰惠，深感愧疚。为了报答李家，赵祯将自己最心爱的女儿徽柔嫁给了李家的子孙李玮。朝堂之上，庆历新政大臣和老派权臣之间针锋相对，斗争风起云涌，赵祯治国如执秤，权衡各方势力，为国事殚精竭虑。徽柔与陪伴自己长大的内侍怀吉建立了深厚的感情，对志趣不和又木讷平庸的李玮万般排斥，终于与婆家起了冲突，不顾一切地夜扣宫门，打破帝国最严苛的规矩，引发滔天非议，司马光甚至要在大殿之上“碎首进谏”。赵祯一生悉心呵护的“言路通畅”、“监督国君”的风气，使得他在爱女之情和维护治国理念之间挣扎得遍体鳞伤。最终，公主以半疯狂的抗争，始终未屈服于“成为李玮真正妻子”的命运，却与怀吉永生不得相见。', 0, 1, '1', '1590287863', '1', '1590288332');
INSERT INTO `lea_mini_video` VALUES ('e3pdjwjjbbcmsow', 'qq', 'movie', '唐伯虎点秋香', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/e3pdjwjjbbcmsow1567404888/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u674e\\u529b\\u6301\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/752591543803545\\/0\"],[\"\\u5468\\u661f\\u9a70\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/8\\/6\\/2\\/72862.jpg\"],[\"\\u5de9\\u4fd0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1516874873\\/0\"],[\"\\u90d1\\u4f69\\u4f69\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/792091578884274\\/0\"],[\"\\u6881\\u5bb6\\u4ec1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/760911578884755\\/0\"]]', NULL, NULL, '1993-07-01', '剧情基本上仍是描述唐伯虎被秋香的三笑迷得失魂落魄，于是施计混入太师府当家奴，期望近水楼台追求秋香，可惜越弄越糟。后来唐伯虎的身份被揭穿，但他却适时以武功搭救了太夫人，因此获得点秋香的机会……', 0, 1, '1', '1589118122', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('eazfh1m41s8e3bc', 'qq', 'movie', '僵尸叔叔', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/eazfh1m41s8e3bc1568115138/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5218\\u89c2\\u4f1f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/2\\/6\\/2\\/72262.jpg?1452566521\"],[\"\\u5348\\u9a6c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/723921541666191\\/0\"],[\"\\u94b1\\u5609\\u4e50\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/795811530258196\\/0\"],[\"\\u674e\\u4e3d\\u73cd\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/752141578620974\\/0\"],[\"\\u9648\\u53cb\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/798021580539099\\/0\"]]', NULL, NULL, '1988-12-22', '偏僻山间，一僧一道比邻而居。和尚随和开朗，更有一女徒菁菁玲珑可爱；道士古板严厉，而徒弟嘉乐却鬼马顽皮。性格不同的两个师傅口角不断，大斗其法，两个冤家徒弟也搞笑连连，笑料频出。某天，一支奇异的丧葬队伍路过此地，某边疆皇族中尸毒死去，幻化成僵尸，千鹤道长及王子护送棺木上京。途中遭遇暴雨，棺木被雷劈开，僵尸破棺而出，大开杀戒。乌侍郎（元华 饰）携王子侥幸逃命，但王子已中尸毒。和尚与道士命徒儿照看王子，两人则冲入树林寻找千鹤道长……', 0, 1, '1', '1589118065', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('f7pqur8uhmzltps', 'qq', 'movie', '环太平洋：雷霆再起', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/f7pqur8uhmzltps1559809738/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u65af\\u8482\\u6587\\u00b7S\\u00b7\\u8fea\\u5948\\u7279\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/9\\/7\\/3\\/132973.jpg\"],[\"\\u7ea6\\u7ff0\\u00b7\\u535a\\u8036\\u52a0\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1310297_688t1507537377.jpg\\/0\"],[\"\\u65af\\u79d1\\u7279\\u00b7\\u4f0a\\u65af\\u7279\\u4f0d\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/847911546325683\\/0\"],[\"\\u5361\\u8389\\u00b7\\u53f2\\u6d3e\\u59ae\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15581361543909093\\/0\"],[\"\\u666f\\u751c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1515034787\\/0\"]]', NULL, NULL, '2018-03-23', '在对抗外星人的入侵并成功封住虫洞的十年后，人类从废墟中站起来。他们忘记了恐惧，纵情狂欢，其中便包括斯特克·潘特考斯特将军的儿子杰克（约翰·博耶加 John Boyega 饰）。在一次偷到废弃机甲零件的过程中，他偶然遭遇以一己之力组装迷你机甲的少女阿玛拉（卡莉·史派妮 Cailee Spaeny 饰）。此后，在姐姐森麻子（菊地凛子 饰）的安排下，杰克和阿玛拉莫玉兰基地接受机甲驾驶员的培训工作。与此同时，总部位于上海的邵氏集团，在总裁邵丽雯（景甜 饰）的主持下，正致力于以无人机甲取代传统机甲。就在这关键时刻，一个与复仇流浪者极其相似的黑色机甲突然出现，并向人类展开了无情杀戮。 人们发现，遥远的外星“先驱”仍在蠢蠢欲动，时刻等待着消灭地球人的时机……', 0, 1, '1', '1589118090', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('fyxgdb78znsgkti', 'qq', 'tv', '九州天空城2', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/fyxgdb78znsgkti1584504719720/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u8d75\\u9526\\u7118\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/2\\/3\\/196023.jpg\"],[\"\\u95f5\\u56fd\\u8f89\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82853831584668666\\/0\"],[\"\\u5f90\\u6b63\\u6eaa\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/745421577256076\\/0\"],[\"\\u738b\\u7389\\u96ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15186861587457519\\/0\"],[\"\\u674e\\u6c90\\u5bb8\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3454191584935788\\/0\"],[\"\\u4ee3\\u6587\\u96ef\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_503692_688t1466767129.jpg\\/0\"],[\"\\u738b\\u5b50\\u5947\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1516608424\\/0\"],[\"\\u67f4\\u683c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1080551584671556\\/0\"]]', 34, 34, '2020', '羽皇风天逸与人族少女易茯苓打破了星流花神的宿命轮回，有情人终成眷属，被后人传为佳话。其女风如澈出生那年，澜州大地最伟大的秘术师雪景空的一滴心头血拯救了被花神杀死的风如澈，由此开启了二人一生的宿命纠葛。澜州各地群雄四起，神谕有云“金翼出，女皇现”，各方势力都在寻找生有金色羽翼的风天逸独女。风如澈十八岁生日那天突然长出一双金色羽翼，命运从此改变。昨天还是走江湖讨生活的小飞贼，今日就成了君临天下的女皇陛下。进入宫中，风如澈却成为权臣明争暗斗的棋子，落难的她再次命运般地邂逅了雪景空……', 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('gfmdwy050xqp85e', 'qq', 'movie', '终结者：黑暗命运', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/gfmdwy050xqp85e1587518522458/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u63d0\\u59c6\\u00b7\\u7c73\\u52d2\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13025371584955512\\/0\"],[\"\\u9ea6\\u80af\\u5179\\u00b7\\u6234\\u7ef4\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2197491587533783\\/0\"],[\"\\u5a1c\\u5854\\u5229\\u5a05\\u00b7\\u96f7\\u8036\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82606341587534344\\/0\"],[\"\\u7433\\u8fbe\\u00b7\\u6c49\\u5bc6\\u5c14\\u987f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1612671587535674\\/0\"],[\"\\u963f\\u8bfa\\u5fb7\\u00b7\\u65bd\\u74e6\\u8f9b\\u683c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1514447959\\/0\"]]', NULL, NULL, '2019-11-01', '《终结者2：审判日》发生的27年后，由于未来天网派来T-800成功杀死年幼的约翰，以致令未来产生变化，一个全新进化的液态金属终结者从未来派出，目的是追杀持有关键讯息的丹妮·拉莫斯、半生化人葛蕾丝和她的朋友。这使莎拉·康纳以及成功杀死约翰的T800终结者前来帮助她们一行人，以共同为了人类的未来而战。', 0, 1, '1', '1587913605', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('gKLoZBH5RnX0UB', 'imgo', 'movie', '阿拉丁 2019', NULL, 'http://www.mgtv.com/b/329206/6240211.html?cxid=90f0zbamf', NULL, 'https://p.ssl.qhimg.com/d/dy_f7c1a49cff298a773eca8b9cae7856e1.jpg', NULL, NULL, NULL, NULL, NULL, '[[\"\\u76d6\\u00b7\\u91cc\\u5947\",\"\"],[\"\\u83ab\\u7eb3\\u00b7\\u9a6c\\u82cf\\u5fb7\",\"\"],[\"\\u5a01\\u5c14\\u00b7\\u53f2\\u5bc6\\u65af\",\"\"],[\"\\u5a1c\\u5965\\u7c73\\u00b7\\u65af\\u79d1\\u7279\",\"\"],[\"\\u6885\\u7eb3\\u00b7\\u739b\\u7d22\\u5fb7\",\"\"]]', NULL, NULL, '2019', '《阿拉丁》取材自《一千零一夜》中的故事，讲述了阿拉伯少年阿拉丁的冒险故事，阿拉丁在宠猴阿布及通灵魔毯的帮助下闯世界，还遇到了神灯精灵……', 0, 1, '1', '1590502462', '1', '1590545322');
INSERT INTO `lea_mini_video` VALUES ('gqPlZBH6Q0L5TB', 'qiyi', 'movie', '恶魔蛙男', '恶魔蛙男', 'http://www.iqiyi.com/v_19rrdpk1iw.html?vfm=f_191_360y&fv=p_09_01', '', 'https://p.ssl.qhimg.com/d/dy_38f20c7dd94dd53d02fd37bbb934b7a5.jpg', 0, 0.00, 0.00, 1, 0, '[[\"\\u5927\\u53cb\\u542f\\u53f2\",\"\"],[\"\\u5c0f\\u6817\\u65ec\",\"\"],[\"\\u5c3e\\u91ce\\u771f\\u5343\\u5b50\",\"\"],[\"\\u91ce\\u6751\\u5468\\u5e73\",\"\"],[\"\\u5927\\u68ee\\u5357\\u670b\",\"\"],[\"\\u4e38\\u5c71\\u667a\\u5df1\",\"\"]]', 0, 0, '2016', '大雨瓢泼的都市，邪恶欲望肆意横行。不经意间残忍而血腥的猎奇案件接连发生，有的人被饿犬撕咬而死，有的人被割掉和出生时同样重量的肉而死掉，有的被平均切成两半分送给妻子与情人，有的则被冻在冰柜中永葆不老的青春，更有人嘴里被塞满了大大小小的钉子。正为家庭矛盾所苦恼的搜查一课刑警泽村久志受命追查此事，随着调查的深入，他发现凶手全系一人所为，而且热衷在雨天行凶作案，之后他更发现所有死者全与许多年前的一起案件有关，偏偏泽村离家出走的妻子也被卷入其中。争分夺秒的追查，凶手已对泽村亮出獠牙……', 0, 1, '1', '1590551882', '1', '1590563745');
INSERT INTO `lea_mini_video` VALUES ('gwz8nqvc78oexgm', 'qq', 'movie', '九品芝麻官', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/gwz8nqvc78oexgm1560168896/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5468\\u661f\\u9a70\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/8\\/6\\/2\\/72862.jpg\"],[\"\\u5434\\u5b5f\\u8fbe\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/727801537340050\\/0\"],[\"\\u5f20\\u654f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/3\\/1\\/5\\/74315.jpg\"],[\"\\u5f90\\u9526\\u6c5f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/745581527910909\\/0\"]]', NULL, NULL, '1994-03-30', '候补县令包龙星（周星驰饰）比较贪，但为人还算正直。张敏嫁给一位富商做妻子，但受到显贵之子常威的调戏，张敏不从常威起了杀机，将张一家上下全部杀害，还嫁祸给张敏。包龙星发现其中蹊跷，但也被方唐镜等人诬陷而逃奔他乡、他们在进京告状的途中，用完了身上的银子，星不得不在妓院打杂。他目睹老板娘的骂街吵架功夫了得，便暗中学习并练就了一身能让死人活过来的斗嘴功夫。一天，偶然遇见皇上前来嫖妓，遂与皇上结下了深厚的友谊。皇上委任星为钦差大臣，重新审理此案。经过一番公堂对质，终于惩治了恶人。', 0, 1, '1', '1589118138', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('hzssbvhzc7xyr95', 'qq', 'movie', '白蛇：缘起', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/hzssbvhzc7xyr951566894411/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u8d75\\u9701\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82269491548321468\\/0\"]]', NULL, NULL, '2019-01-11', '失忆少女小白被捕蛇人阿宣所救，为了解开自己的身份谜团，小白在阿宣的帮助下开始寻找线索。两人历经艰难险阻，年少男女在一路冒险中萌生爱慕之情。同时，小白的蛇妖身份也逐渐揭开，一场围绕人与妖的纠葛爱情故事随之展开。', 0, 1, '1', '1587914189', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('i8wue9gam2mewxf', 'qq', 'tv', '人不彪悍枉少年', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/i8wue9gam2mewxf1542003966/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u9093\\u79d1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/791601555469384\\/0\"],[\"\\u4faf\\u660e\\u660a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15050661583479397\\/0\"],[\"\\u4e07\\u9e4f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82148581577325173\\/0\"],[\"\\u5f20\\u8000\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3472631544667852\\/0\"],[\"\\u4ee3\\u9732\\u5a03\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/14944131542850150\\/0\"],[\"\\u674e\\u660e\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2258611577333205\\/0\"],[\"\\u6f58\\u7f8e\\u70e8\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82165631544668320\\/0\"]]', 24, 24, '2018', '1996 年的夏天,飞毛腿杨夕因为长跑成绩出色喜获父母奖励的新自行车一辆,不想天降横祸，半路杀出飞贼，在众目睽睽之下将新车劫走。杨夕奋身追贼，却意外被中学实验室爆炸波及，炸伤了视若性命的腿，无缘高考加分长跑赛。开学后，杨夕发现爆炸的“罪魁祸首”不但转到了自己的班级，还抢走了她想要连任的班长之职。而这少年就是花彪——一个热血、仗义、有点冲动的理科天才。花彪的突降让整个班的学生都“如临大敌”。随着他用天才大脑挽救了班级的中秋晚会资格、以神乎其技的游戏实力称霸记录、为兄弟不顾安危两肋插刀, 以实际行动证明了自己的仗义率直之后，大家才终于打消了对他的疑忌。花彪正式成为了小团体“飞车五人组”的一员，而杨夕发现他不仅热血仗义，还对花奶奶孝心一片，终于放下成见，与他坦诚相交。于是,“飞车五人组”叱咤校园，在高三最后的日子里一起经历了青春的欢笑与苦涩，共同抵挡了成长的风浪，在这难忘的一年留下了青春彪悍的足迹。', 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('iegjnp9pe9p6fp1', 'qq', 'movie', '花木兰', '', NULL, '', '//puui.qpic.cn/vcover_vt_pic/0/iegjnp9pe9p6fp11571907620/0', 0, 0.00, 0.00, 0, 0, '[]', 0, 0, '1998-06-19', '这部风靡全球、家喻户晓的动画片，取材自中国传统文化中的历史经典“木兰从军”。尽管影片中木兰的形象设计曾引起中国观众的争议，但该片既幽默和动作场面于一体的格局，还是得到了影迷的支持。影片中的插曲——成龙的《男子汉》、COCO的《自己》等等，至今还是让人难以忘却的流行金曲。    在古老的中国，有一位个性爽朗，性情善良的好女孩，名字叫作「花木兰」，身为花家的大女儿，花木兰在父母开明的教悔下，一直很期待自己能花家带来荣耀。不过就在北方匈奴来犯，国家正大举征兵的时候，木兰年迈的父亲竟也被征召上战场，伤心的花木兰害怕父亲会一去不返，便趁着午夜假扮成男装，偷走父亲的盔甲，代替父亲上战场去。花家的祖宗为保护花木兰，于是派出一只心地善良的木须龙去陪伴她，这只讲话像连珠炮又爱生气的小龙，在一路上为木兰带来许多欢笑与协助。 　　从军之后，花木兰靠着自己的坚持的毅力与耐性，通过了许多困难的训练与考验，也成为军中不可或缺的大将。然而，就在赴北方作战时，花木兰的女儿身被军中的同僚发现，众家男子害怕木兰会被朝廷大官判以「欺君之罪」，只好将她遗弃在冰山雪地之中，自行前往匈奴之地作战。幸好在这么艰难的时刻里，木须龙一直陪伴在她身边，不时给她精神上的支持与鼓励，而凭着一股坚强的意志与要为花家带来荣耀的信念，木兰最后协助朝廷大军抵挡了匈奴的来犯，救了国家。', 20, 1, '1', '1587914545', '1', '1588647889');
INSERT INTO `lea_mini_video` VALUES ('iqwvbujgzj5obv1', 'qq', 'movie', '蜘蛛侠：英雄归来', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/iqwvbujgzj5obv11509502957/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u4e54\\u00b7\\u6c83\\u8328\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/12980321568269116\\/0\"],[\"\\u6c64\\u59c6\\u00b7\\u8d6b\\u5170\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/853171542086826\\/0\"],[\"\\u5c0f\\u7f57\\u4f2f\\u7279\\u00b7\\u5510\\u5c3c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/737071542087569\\/0\"],[\"\\u739b\\u4e3d\\u838e\\u00b7\\u6258\\u6885\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/768651569122901\\/0\"],[\"\\u8fc8\\u514b\\u5c14\\u00b7\\u57fa\\u987f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/1\\/8\\/79018.jpg\"],[\"\\u8d5e\\u8fbe\\u4e9a\\u00b7\\u79d1\\u5c14\\u66fc\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1509933463\\/0\"],[\"\\u96c5\\u5404\\u00b7\\u5df4\\u5854\\u4f26\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1509933345\\/0\"]]', NULL, NULL, '2017-09-08', '彼得帕克在内战后受到了钢铁侠托尼斯塔克的赏识，表面上，彼得进入托尼的公司成为了一名实习生，实际上，他和复仇者联盟的成员们一起接受了各种各样的训练。托尼虽然欣赏彼得的勇敢和正直，却并不认为他目前已经拥有加入复联的实力，他派出了特工哈皮暗中观察，这让十分想证明自己的彼得感到万分焦躁。 在对付两个银行劫匪的过程中，彼得发现劫匪们使用的是一种前所未见的新型武器，他孤身一人深入敌后顺藤摸瓜找到了幕后主使秃鹰，让他彼得没有想到的是，秃鹰竟然是他爱慕的女生利兹的父亲。', 0, 1, '1', '1589118178', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('ix6w4wausx518m8', 'qq', 'tv', '切尔诺贝利', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/ix6w4wausx518m81572840383/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u4e54\\u97e9\\u00b7\\u745e\\u514b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3214391572848442\\/0\"],[\"\\u6770\\u745e\\u5fb7\\u00b7\\u54c8\\u91cc\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/757351576220347\\/0\"],[\"\\u65af\\u7279\\u5170\\u00b7\\u65af\\u5361\\u65af\\u52a0\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/748481576029502\\/0\"],[\"\\u827e\\u7c73\\u4e3d\\u00b7\\u6c83\\u68ee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/780451554892701\\/0\"],[\"\\u4fdd\\u7f57\\u00b7\\u91cc\\u7279\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/14834631572842067\\/0\"],[\"\\u5927\\u536b\\u00b7\\u4e39\\u5e2d\\u514b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/731511573092189\\/0\"]]', 5, 5, '2019', '1986年4月26日凌晨，位于乌克兰苏维埃社会主义共和国普里皮亚季的切尔诺贝利核电站发生了严重的爆炸事故。瓦列里·列加索夫，作为一个杰出的苏联核物理学家，成为了处理这场事故的应急小组的一员，同时也成为最先了解并着手组织处理这场事故的负责人之一。苏联部长会议副主席、苏联能源局领导鲍里斯·谢尔比纳在事故发生数小时后，被指派领导事故调查委员会，但当时政府还没意识到反应堆已经爆炸。作为这史无前例人为灾难的高级应对官员，他发现自己身陷政治体系问题，以及得面对这场核灾难不停攀升的伤亡人数。苏联核物理学家乌拉娜·霍缪克致力于调查切尔诺贝利事故的真相，好让未来不会再发生同类事件。但在调查期间她与想埋葬可怕秘密的人产生了未曾预料的冲突，为了真相她得冒着失去自由，甚至生命的危险。', 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('j6b8z5urtg2wj5h', 'qq', 'tv', '将夜2', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/j6b8z5urtg2wj5h1578883206/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6768\\u9633\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/960441578897573\\/0\"],[\"\\u738b\\u9e64\\u68e3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16069881572009677\\/0\"],[\"\\u5b8b\\u4f0a\\u4eba\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_131182_688t1505294671.jpg\\/0\"],[\"\\u8881\\u51b0\\u598d\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3985411540894400\\/0\"],[\"\\u706b\\u7bad\\u5c11\\u5973101\\u6768\\u8d85\\u8d8a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16615171572425487\\/0\"],[\"\\u90d1\\u5c11\\u79cb\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/2\\/3\\/9\\/79239.jpg\"]]', 43, 43, '2020', '传说永夜将至，人间浩劫。书院的十三先生、大唐帝国的守护者宁缺为桑桑治病赶赴盂兰节。世人都怀疑宁缺就是冥王之子，他将会给世间带来永夜，却发现原来他身边的桑桑才是应兆之人。宁缺桑桑四面皆敌，两人相依为命，浪迹天涯。与此同时，世间危局愈演愈烈，阴谋蠢动，举世伐唐一触即发。五国征战，万里平川；四大宗派，纷争再起；荒原之上，夫子化月守护人间；长安城中，万人空巷同仇敌忾。书院的人们为了守护家园和家人誓死而战，唐国重获和平与安宁，宁缺则踏上了寻回爱人桑桑之路。瑰丽恢弘的世界史诗，爱恨情仇的人性婆娑。', 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('l8r3gm1zzu5u3nk', 'qq', 'movie', '海王', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/l8r3gm1zzu5u3nk1567129968/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6e29\\u5b50\\u4ec1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13054561561278263\\/0\"],[\"\\u6770\\u68ee\\u00b7\\u83ab\\u739b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/757221551864377\\/0\"],[\"\\u827e\\u6885\\u67cf\\u00b7\\u5e0c\\u5c14\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/780071544434419\\/0\"],[\"\\u5e15\\u7279\\u91cc\\u514b\\u00b7\\u5a01\\u5c14\\u68ee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1522036464\\/0\"],[\"\\u59ae\\u53ef\\u00b7\\u57fa\\u5fb7\\u66fc\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1515394478\\/0\"],[\"\\u5a01\\u5ec9\\u00b7\\u8fbe\\u798f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/3\\/8\\/9\\/73389.jpg\"],[\"\\u53f6\\u6d77\\u4e9a\\u00b7\\u963f\\u535c\\u675c\\u52d2-\\u8fc8\\u4e01\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82209471545213902\\/0\"]]', NULL, NULL, '2018-12-07', '许多年前，亚特兰蒂斯女王和人类相知相恋，共同孕育了爱情的结晶——后来被陆地人称为海王的亚瑟·库瑞。在成长的过程中，亚瑟接受海底导师维科的严苛训练，时刻渴望去看望母亲，然而作为混血的私生子这却是奢望。与此同时，亚瑟的同母异父兄弟奥姆成为亚特兰蒂斯的国王，他不满陆地人类对大海的荼毒与污染，遂谋划联合其他海底王国发动对陆地的全面战争。为了阻止他的野心，维科和奥姆的未婚妻湄拉将亚瑟带到海底世界。 宿命推动着亚瑟，去寻找失落已久的三叉戟，建立一个更加开明的海底王国……', 0, 1, '1', '1589118291', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mlet450ud9xai1h', 'qq', 'movie', '侏罗纪世界2', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mlet450ud9xai1h1567492063/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u80e1\\u5b89\\u00b7\\u5b89\\u4e1c\\u5c3c\\u5965\\u00b7\\u5df4\\u4e9a\\u7eb3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/778911537925967\\/0\"],[\"\\u514b\\u91cc\\u65af\\u00b7\\u5e15\\u62c9\\u7279\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/8\\/1\\/2\\/71812.jpg\"],[\"\\u5e03\\u83b1\\u4e1d\\u00b7\\u8fbe\\u62c9\\u65af\\u00b7\\u970d\\u534e\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/739781537927026\\/0\"],[\"\\u8d3e\\u65af\\u8482\\u65af\\u00b7\\u53f2\\u5bc6\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16659521537927259\\/0\"],[\"\\u4f0a\\u838e\\u8d1d\\u62c9\\u00b7\\u745f\\u8499\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82185891543818562\\/0\"],[\"\\u6258\\u6bd4\\u00b7\\u743c\\u65af\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/9\\/8\\/74698.jpg\"],[\"\\u62c9\\u83f2\\u00b7\\u65af\\u6ce2\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/5\\/8\\/84758.jpg\"]]', NULL, NULL, '2018-06-15', '自侏罗纪世界的骚乱以来，种类繁多的恐龙在努布拉岛度过了三年无拘无束的时光。然而该岛火山活动频繁，随时有喷发的危险。致力于恐龙保护的克莱尔·戴宁受到班杰明•洛克伍德的邀请。班杰明及其下属伊莱·米尔斯希望她和相关技术人员前往努布拉岛拯救那里的恐龙，并将它们安置在新的栖息地。受到感染的克莱尔设法找来欧文一同前往，欧文则希望救出他亲手驯养的迅猛龙小蓝。当他们踏足这座隔绝之岛时，却发现事情没那么简单。火山蠢蠢欲动，随时爆发，而混乱之中丑恶的阴谋悄然酝酿……', 0, 1, '1', '1589118221', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc0020004c4hf9', 'qq', 'movie', '烈火营救', '消防员带头冲锋火场救人', NULL, 'http://file.cos.leapy.cn/image/20200510/c7141202005100913026950.jpg', '//puui.qpic.cn/vcover_vt_pic/0/mzc0020004c4hf91587884947940/0', 0, 0.00, 0.00, 1, 1, '[[\"\\u8d3e\\u5c0f\\u53cc\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16728951588735947\\/0\"]]', 0, 0, '2020-05-06', '记者白子衿因消防官兵转隶事宜到部队采访。多年前，她因大火烧伤双眼，是一位消防兵救了她。如今，她复明归来，想要找到这位救过自己的“父亲”。这次，她的采访对象——赵建成教导员，正是“父亲”以前的部下。然而赵指导员正因即将脱去这身“橄榄绿”的军装而迷茫。在昔日战友的墓前，赵建成渴望找到该如何面对的答案。但是，这里只有沉默的丰碑。此时，失明的老队长出现了，告诉他：“军装换了，咱的心没有换，责任还在！”而白记者却眼含热泪，因为她终于听见了她寻觅已久的声音……', 0, 1, '1', '1589073125', '1', '1589073210');
INSERT INTO `lea_mini_video` VALUES ('mzc00200189u0ml', 'qq', 'movie', '势不可挡', '悍匪火力凶猛顽抗特种兵', NULL, 'https://puui.qpic.cn/tv/0/853005612_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200189u0ml1585921428267/0', NULL, NULL, NULL, 1, 1, '[[\"\\u8042\\u8c22\\u82b3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16586151584093979\\/0\"],[\"\\u6768\\u76db\\u4e1a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82849321584094547\\/0\"],[\"\\u5434\\u5146\\u52c7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16586171584094642\\/0\"],[\"\\u96f7\\u9526\\u9e4f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82849331584094811\\/0\"]]', NULL, NULL, '2020-04-26', '一支特种小队在空中火力的支援下成功清剿了一处位于边境地带的贩毒武装营地，不料为首头目趁机逃跑同时将追击特种小队引入了一片陌生的林区，而此时一支未知的犯罪组织满怀野心，全副武装的悄悄逼近了特种小队，一场由狙击手率先发动的隐秘伏击即将打响。任务尚未完成而新的危机袭来，面对陌生的地域和未知的敌人，小队的命运将由战斗来决定。', 0, 1, '1', '1588256057', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc002001pvxwzy', 'qq', 'tv', '致我们甜甜的小美满', '舟周CP番外篇绝美大婚', NULL, 'http://puui.qpic.cn/qqvideo_ori/0/s00338kvfqo_228_128/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc002001pvxwzy1587957801108/0', NULL, NULL, NULL, 1, NULL, '[[\"\\u90a2\\u6f47\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/863461542440804\\/0\"],[\"\\u9f9a\\u4fca\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15138491586835767\\/0\"],[\"\\u5218\\u4eba\\u8bed\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16615361586507996\\/0\"],[\"\\u674e\\u6b4c\\u6d0b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15006521586920749\\/0\"],[\"\\u5b8c\\u989c\\u6d1b\\u7ed2\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82197211548831426\\/0\"],[\"\\u5b89\\u6cf3\\u7545\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1513169_688t1500281915.jpg\\/0\"],[\"\\u9ad8\\u79cb\\u6893\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16615411587377268\\/0\"]]', 27, 28, '2020', '改编自小说《舟而复始》，并由原著作者赵乾乾亲任总编剧，讲述了赵泛舟和周筱历经分分合合最终走到一起的校园爱情故事。法医系男神套路满级，中文系少女脑洞清奇，逗萌情侣的互怼日常里，满满都是宠溺。', 0, 1, '1', '1587916163', '1', '1588642377');
INSERT INTO `lea_mini_video` VALUES ('mzc002003qvshpe', 'qq', 'movie', '九州天空城之时光回转', '王玉雯遭负心人暗杀坠崖', NULL, 'https://puui.qpic.cn/tv/0/846629212_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc002003qvshpe1585895541840/0', NULL, NULL, NULL, 1, NULL, '[[\"\\u6e38\\u667a\\u709c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2045551587694444\\/0\"],[\"\\u79cd\\u4e39\\u59ae\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/899231524739417\\/0\"],[\"\\u67f4\\u683c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1080551584671556\\/0\"],[\"\\u738b\\u7389\\u96ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15186861587457519\\/0\"],[\"\\u9ece\\u660e\\u660e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/954771587701185\\/0\"]]', NULL, NULL, '2020-04-24', '天空城之战后，羽皇风刃向人族发动战争。兵至凉州城下，眼看人族已无力翻盘，女爵方祈舞试图经由时光机器“流年转”回到过去，附身于风刃最爱的王妃南音梦，杀死年轻的风刃来扭转战局。然而当她在另一个时空醒来的时候，却被告知风刃已死！方祈舞坚信风刃的死亡只是个谣传。而更令人意外的是，她的意识竟然附到了人族第一美人——和亲公主红鸾的身上。她只能顺利抵达十日后和羽太子风启的婚礼，因为在史书的记载上，风刃会在婚礼上奏琴。一路上方祈舞得到一名自称南风的少年的保护，在这短短的十日中，方祈舞和南风暗生情愫。这一对同样爱好音律的异时空男女共同谱下一曲《音梦》。然而就在琴谱写就的当晚，方祈舞发现了南风的真实身份……', 0, 1, '1', '1587913724', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc0020095tf0wm', 'qq', 'tv', '完美关系', '打折夫妇走向完美终点！', NULL, 'http://puui.qpic.cn/qqvideo_ori/0/i0936zsn0w5_228_128/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc0020095tf0wm1580795235/0', NULL, NULL, NULL, 1, NULL, '[[\"\\u5b89\\u5efa\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/934821539399717\\/0\"],[\"\\u9ec4\\u8f69\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/805971583403382\\/0\"],[\"\\u4f5f\\u4e3d\\u5a05\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_89987_688t1484553176.jpg\\/0\"],[\"\\u9648\\u6570\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/865631582769256\\/0\"],[\"\\u9ad8\\u9732\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/947861577175573\\/0\"]]', 51, 51, '2020', '多次获得“最有价值独立公关人”殊荣的业界高手卫哲，人脉强大手段百出，风采不凡情商高。而临危受命的公关新人江达琳，天性耿直且嘴炮力Max，智商高实战强，是有潜力的行业清流。两人组成“公关合伙人”，与时间赛跑联手征战危机，揭开热点新闻背后。', 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc002009mrek37', 'qq', 'tv', '无心法师3', '韩东君陈瑶续写前传情缘', NULL, 'https://puui.qpic.cn/tv/0/828791669_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc002009mrek371582470415064/0', NULL, NULL, NULL, 1, 1, '[[\"\\u97e9\\u4e1c\\u541b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2970131572009656\\/0\"],[\"\\u9648\\u7476\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1158071570670851\\/0\"],[\"\\u968b\\u548f\\u826f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/2\\/4\\/134124.jpg\"],[\"\\u4e01\\u6865\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1601924_688t1508206089.jpg\\/0\"],[\"\\u6a80\\u5065\\u6b21\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1083161545990444\\/0\"],[\"\\u725b\\u9a8f\\u5cf0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/952101570678069\\/0\"],[\"\\u53f6\\u9752\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_72652_688t1506503082.jpg\\/0\"]]', 28, 28, '2020', '强盛的大唐帝国已经步入黄昏，煊赫的大氏族日渐没落。权贵与百姓都在不甘的挣扎，追求着虚妄的永生，而无心，却一心求死。在此期间，他邂逅了神秘的柳家姐弟，姐姐青鸾英武果决，弟弟玄鹄孱弱腹黑。无心和青鸾联手解决了一系列离奇事件,彼此惺惺相惜。青鸾爱慕无心，却不敢表白，无心欣赏青鸾，却不愿耽误她。一封神秘来信打破了日常生活，无心护送姐弟俩返乡。他们本想查明真相，不料却被卷入种种残酷诡谲的事端。几经艰险，幕后黑手终于浮出水面一一竟是和无心结有宿怨的白琉璃。而白琉璃身后，居然还有着一一个关于长生不老的惊天阴谋。决战中，无心意外找到了取死之法，本可以获得梦寐以求的解脱，却在最后关头为了青鸾而毅然放弃。此时的他还不知道，青鸾玄鹄姐弟和千余年后的岳绮罗，有着千丝万缕的联系。', 0, 1, '1', '1587916266', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200bqxuhqe', 'qq', 'tv', '精英律师', '致敬捍卫正义的法律人！', NULL, 'http://puui.qpic.cn/qqvideo_ori/0/c30517sluf8_228_128/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200bqxuhqe1576815230/0', NULL, NULL, NULL, 1, NULL, '[[\"\\u5218\\u8fdb\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/932861578987381\\/0\"],[\"\\u9773\\u4e1c\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_94722_688t1505976146.jpg\\/0\"],[\"\\u84dd\\u76c8\\u83b9\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1123751577179746\\/0\"],[\"\\u5b59\\u6df3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/734611576894373\\/0\"],[\"\\u7530\\u96e8\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/770851576894731\\/0\"],[\"\\u5218\\u654f\\u6d9b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/932661578297244\\/0\"],[\"\\u6731\\u73e0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/750901576896629\\/0\"],[\"\\u4ee3\\u65ed\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/975391565249874\\/0\"]]', 42, 42, '2019', '罗槟是权璟律师事务所资深合伙人，戴曦为了闺蜜的一场官司去律所找罗槟理论，误打误撞，机缘巧合成了罗槟的助理。在共事过程中，俩人因在为人处世上的见解差异，频发冲突。同时，出于对律师这个职业的热爱，戴曦把过多的时间和精力投入到工作上，最终引起男友的不满，二人分手。在经过几个项目上的相互协作后，戴曦和罗槟对对方都有了更多的了解，戴曦由最初讨厌罗槟，逐渐对他产生尊敬，而罗槟也受戴曦感染，不仅在关心输赢，也变得去关爱他人。历经磨炼，戴曦最终成长为一个优秀富有正义感的律师，在工作上，和罗槟也有了更多的默契，两人成了一对颇得业界认可，所向披靡的最佳搭档。', 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200f995x6t', 'qq', 'tv', '外交风云', '回顾新中国峥嵘外交历程', NULL, 'https://puui.qpic.cn/qqvideo_ori/0/o0032of7aj7_228_128/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200f995x6t1568887239/0', NULL, NULL, NULL, NULL, 1, '[[\"\\u5b8b\\u4e1a\\u660e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3699271556508884\\/0\"],[\"\\u5510\\u56fd\\u5f3a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/933931578296132\\/0\"],[\"\\u5b59\\u7ef4\\u6c11\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/842531576115704\\/0\"],[\"\\u90ed\\u8fde\\u6587\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/945521568881629\\/0\"],[\"\\u738b\\u4f0d\\u798f\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/4\\/8\\/94148.jpg\"],[\"\\u5362\\u5947\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/955291557198675\\/0\"],[\"\\u8463\\u52c7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/860581576723789\\/0\"],[\"\\u8c37\\u4f1f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1131871568881982\\/0\"],[\"\\u9648\\u59d7\\u59d7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1154311555914528\\/0\"],[\"\\u9ec4\\u8587\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1174111555981420\\/0\"],[\"\\u738b\\u667a\\u6167\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82631671568882756\\/0\"],[\"\\u6768\\u7ae5\\u8212\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/850681574216424\\/0\"]]', 48, 48, '2019', '以1949年新中国诞生为起点，以1976年毛泽东第二次会见尼克松为终点，全景式记叙了毛泽东、周恩来、刘少奇、邓小平、陈毅等老一辈无产阶级革命家对开创新中国外交事业的杰出贡献，全方位展现了日内瓦会议、万隆会议、周恩来访非、恢复联合国席位等一系列波澜壮阔的外交史实，讴歌了他们为推动新中国走向国际舞台、使新中国开始屹立于世界民族之林的奠基之功。', 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200fdh9pwh', 'qq', 'movie', '别告诉她', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200fdh9pwh1585028265423/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u738b\\u5b50\\u9038\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1402901589015047\\/0\"],[\"\\u5965\\u5361\\u83f2\\u5a1c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82095991540433687\\/0\"],[\"\\u9a6c\\u5fd7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/802921589015963\\/0\"],[\"\\u8d75\\u6dd1\\u73cd\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/944561589016519\\/0\"],[\"\\u59dc\\u6c38\\u6ce2\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1447261589017140\\/0\"]]', NULL, NULL, '2020-01-10', '影片讲述一个华人家庭的奶奶被诊断罹癌，但家人选择隐瞒奶奶，假借一场婚礼的名义让所有家人回家见奶奶最后一面，但在纽约长大的碧莉认为知道自己病况是奶奶的人权，因此在华人家庭中上演一场中西文化冲突，一部寻根家庭喜剧。故事改编自华裔女导演王子逸自己的家庭故事，她也因本片被《综艺》杂志评选2019年必关注导演之一。', 0, 1, '1', '1589117489', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200gwu2lmt', 'qq', 'movie', '一路不消停', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200gwu2lmt1585812616840/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5218\\u8f69\\u72c4\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15493181573972947\\/0\"],[\"\\u738b\\u5c0f\\u5229\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_95225_688t1489895659.jpg\\/0\"],[\"\\u738b\\u94ed\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/941991586500567\\/0\"],[\"\\u5f20\\u5c27\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82875181586501438\\/0\"],[\"\\u5305\\u5c0f\\u5e73\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1650811586502105\\/0\"]]', NULL, NULL, '2020-04-10', '情场职场双失意的“话痨”司机王德福，工作上屡次碰壁，不受待见，决心踏上“南漂”旅程潇洒走一回。因目睹赵大雷以一敌众的英勇身姿，认为自己交到了能“拿得出手”的朋友。于是决定带上赵大雷，一路同行中发生了一系列惊险、爆笑的奇遇故事……', 0, 1, '1', '1587913746', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200h4tmk4d', 'qq', 'movie', '我的美女室友', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200h4tmk4d1587631388349/0', NULL, NULL, NULL, NULL, NULL, '[]', NULL, NULL, '2020-05-03', '主人公杨阳家境殷实，大学毕业后，为体验生活去了一家超市当业务员。在这过程中他结识了女友钟灵，他十分珍视和女朋友的感情。因为两人地位悬殊，他的母亲极力反对他们的感情，他的女友为此郁郁寡欢。突然有一天，心情低落的钟灵被一辆疾驰在马路上的卡车撞倒，不治身亡。杨阳因此深受打击，患了精神疾病，并失去了以往的记忆。而后他遇到了两个长相一模一样的姑娘，性格温柔贤淑的李可可和性感泼辣的李爱爱。阴差阳错，杨阳和李可可合租了一套公寓，并发生了一些令人啼笑皆非的笑话。与此同时，杨阳也被这两个长相相同，性格迥异的女孩捉弄得晕头转向，杨阳逐渐地对这两个女孩的身份产生了怀疑……', 0, 1, '1', '1588642551', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200i8egfzh', 'qq', 'movie', '永生之战', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200i8egfzh1587888188918/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5362\\u54f2\\u98a2\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13419171588388847\\/0\"],[\"\\u845b\\u9e4f\\u7fd4\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/4800701588390315\\/0\"],[\"\\u738b\\u97ec\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1103391588390635\\/0\"],[\"\\u674e\\u840c\\u840c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1069291588390863\\/0\"],[\"\\u97e9\\u6615\\u59a4\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/14784021588391461\\/0\"],[\"\\u9b4f\\u5c0f\\u6b22\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13112471588391637\\/0\"]]', NULL, NULL, '2020-05-02', '《永生之战》以戏中戏的手法讲述了审片人康海生遇到职业生涯中第一部让他“真香”的“烂片”，影片中秦始皇长生不老秘密的衍生故事引起了康海生的兴趣。不解风情的直男酒鬼、有颜能打的大姐大、活腻歪的胖子、长生不老的花痴、打不死的逗比男配，这些人物设定堪比动漫般奇特丰富的主人公们，以寻找遗失多年的“长生不老丹”为导火索，展开了一段疯狂而有趣的永生之战。只有一半长生不老能力的四位主人公为了获得最后一颗仙丹延续生命而协力奋斗，过程有笑有泪十分有趣。起初，康海生对影片的故事设定颇为嫌弃，最终却被片中时而恐怖时而搞笑的剧情、精心设计的打斗场面、轻松诙谐却寓意深远的内涵圈粉。《永生之战》让观众成为影片的“第四视角”，戏中戏让观众跟随审片人康海生一起边吐槽边看戏，又跟随着片中故事心情起伏。受原创幽默段子加持的喜剧式玄幻故事，为观众提供一种全新观影体验。', 0, 1, '1', '1588642512', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200k12f5gi', 'qq', 'tv', '猎狐', '王柏林悔恨唱响《铁窗泪》', NULL, 'http://file.cos.leapy.cn/image/20200510/fd9dd202005100903276547.jpg', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200k12f5gi1586743935552/0', 0, 0.00, 0.00, 1, 1, '[[\"\\u5218\\u65b0\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/2\\/2\\/4\\/72224.jpg\"],[\"\\u738b\\u51ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/854561579417059\\/0\"],[\"\\u738b\\u9e25\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/955481577176312\\/0\"],[\"\\u80e1\\u519b\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_77883_688t1481269926.jpg\\/0\"],[\"\\u5218\\u5955\\u541b\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/4\\/8\\/5\\/96485.jpg?1448613244\"],[\"\\u9093\\u5bb6\\u4f73\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_79151_688t1467970667.jpg\\/0\"],[\"\\u5085\\u6676\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/948851587460401\\/0\"]]', 44, 44, '2020', '北江市刑警队的“天才捕手”夏远职场上与亦师亦友的杨建群配合默契，生活中与青梅竹马的于小卉婚期将近，事业爱情双丰收。然而，一场由克瑞股票暴跌引发的跳楼案打破了他原本的生活。克瑞集团老总王柏林联手股评专家郝小强操纵股市。在这场阴谋中，未婚妻于小卉逐渐迷失，师父的妹妹杨建秋也被搅入乱局。而罪魁祸首王柏林逃往国外，试图彻底洗白自己。经历失去挚爱、友人涉案的夏远痛苦不已，此时同事吴稼琪陪伴他走出低谷，夏远得以迅速成长为一名优秀的经侦干警。经过不懈努力，夏远带领队友们逐个攻克了王柏林犯罪集团的在逃成员，最终，成功将王柏林遣返归案，完成了这场历时多年艰苦卓绝的较量。', 0, 1, '1', '1588748993', '1', '1589072619');
INSERT INTO `lea_mini_video` VALUES ('mzc00200kharxoe', 'qq', 'movie', '伏虎武松', '恶霸强娶娇妻遭老虎扑食', NULL, 'http://file.cos.leapy.cn/image/20200510/166fb202005100910134099.jpg', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200kharxoe1588902103529/0', 0, 0.00, 0.00, 1, 1, '[[\"\\u5d14\\u708e\\u9f99\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1535791582252614\\/0\"],[\"\\u8881\\u798f\\u798f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3071791587306066\\/0\"],[\"\\u95eb\\u4f73\\u9896\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2998491588920699\\/0\"],[\"\\u5f20\\u4e9a\\u5947\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15086601560657436\\/0\"],[\"\\u5415\\u5b87\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13294351587312228\\/0\"]]', 0, 0, '2020-05-08', '北宋年间，景阳冈上猛虎屡屡伤人，导致谣言四起民心飘摇。辽人萧赞更是以此为由头，指挥江湖恶人借机生事，为所欲为。路经此地的武松被卷入乱世纷争，并遇见了貌美泼辣的贞三娘。哪怕前路危机重重，武松也毫不胆怯，誓要凭一腔热血粉碎天下万恶，化身东方英雄拯救苍生于水火。', 1, 1, '1', '1589072978', '1', '1589073027');
INSERT INTO `lea_mini_video` VALUES ('mzc00200kqs6xxb', 'qq', 'movie', '倩女幽魂：人间情', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200kqs6xxb1579405814/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6797\\u73cd\\u948a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1423661588224117\\/0\"],[\"\\u674e\\u51ef\\u99a8\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1551860_688t1489485234.jpg\\/0\"],[\"\\u9648\\u661f\\u65ed\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/946861550115125\\/0\"],[\"\\u5143\\u534e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/717401544686535\\/0\"],[\"\\u5f90\\u5c11\\u5f3a\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/5\\/2\\/6\\/74526.jpg\"],[\"\\u5f20\\u81f4\\u6052\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/743861565061033\\/0\"]]', NULL, NULL, '2020-05-01', '书生宁采臣赴京赶考，夜宿兰若寺，邂逅专门代姥姥迷惑男人吸取精气的聂小倩，二人经过一番磨难渐生情愫终成眷侣，但姥姥要将聂小倩嫁给黑山老妖，情急之下，宁采臣向燕赤霞求助……', 0, 1, '1', '1589117313', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200mnujrjg', 'qq', 'movie', '大神猴1降妖篇', '性感鲳老湿身诱惑大圣！', NULL, 'https://puui.qpic.cn/tv/0/855455142_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200mnujrjg1586510991003/0', NULL, NULL, NULL, 1, NULL, '[[\"\\u8c2d\\u4fcf\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/6\\/4\\/133764.jpg\"],[\"\\u8c22\\u82d7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/787361538278604\\/0\"],[\"\\u738b\\u6b46\\u9706\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1565740_688t1499938323.jpg\\/0\"],[\"\\u6797\\u79b9\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82870971586846074\\/0\"],[\"\\u91d1\\u96c5\\u5a1c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/14867411586846226\\/0\"]]', NULL, NULL, '2020-04-21', '集人间怨气的魔头妖祖即将现世，为了打败他拯救苍生，东方陌、谛听和功德掌门三人四处寻找身为神猴的化身——孙小天。与此同时，妖祖觊觎封印在神猴体内的两大神器，为了抓住孙小天，孙小天的父母被妖祖残忍杀害，大富之家孙府一夕之间家破人亡。凭借着超乎常人的意志力和我命由我不由天的乐观精神，失去法力和记忆的凡人孙小天一路砥砺前行，重拾本领。起初为亲人复仇，继而为天下大义，战魔头，驱妖邪。天将降大任，道阻且长，救世主孙小天的使命才刚刚开始……', 0, 1, '1', '1587913361', '1', '1587913415');
INSERT INTO `lea_mini_video` VALUES ('mzc00200mr2bj9s', 'qq', 'movie', '圆环行动', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200mr2bj9s1585549414013/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u8a00\\u7fbd\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82782541578369670\\/0\"],[\"\\u5f20\\u4e1c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/845851586920696\\/0\"]]', NULL, NULL, '2020-04-15', '道貌岸然的安全部部长妄想摧毁世界，并利用自己的权力布下了惊天棋局，肩负重任的兄弟二人义无反顾扛起保国安民的重责，冒险穿越时空。为保全对方，兄弟二人卷入云谲波诡的生死斗争中，部长一面派遣特种兵卧底军火集团窃取武器机密，一面控制科学家研究虫洞穿梭，而在其以为即将大功告成时，一场正义与邪恶的终极较量才刚刚开始。', 0, 1, '1', '1587913999', '1', '1587914008');
INSERT INTO `lea_mini_video` VALUES ('mzc00200q06w7zx', 'qq', 'tv', '龙岭迷窟', '金爷吓破胆胡八一孤注一掷', NULL, 'https://puui.qpic.cn/tv/0/854689648_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200q06w7zx1586867775/0', 115, 0.00, 0.00, 1, 1, '[[\"\\u8d39\\u632f\\u7fd4\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/958691585875058\\/0\"],[\"\\u6f58\\u7ca4\\u660e\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/2\\/5\\/94125.jpg\"],[\"\\u5f20\\u96e8\\u7eee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/744101586768568\\/0\"],[\"\\u59dc\\u8d85\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/733521555122778\\/0\"],[\"\\u9ad8\\u4f1f\\u5149\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1621001577324973\\/0\"]]', 18, 18, '2020', '胡八一、王胖子和大金牙被村民编造的绣花鞋的故事所骗，前往陕西古兰县。水路艰险，胡八一挺身让众人脱险。在招待所幸遇陈瞎子提醒，得以逃脱村民圈套。三人无意掉入“龙岭迷窟”遭蝙蝠袭击，发现身上长出红斑，决定在王大爷家修整，遇到同样来找红斑根源的shirley杨，并听闻了鹧鸪哨和了尘大师寻找雮尘珠的英勇故事。几人决心寻找雮尘珠，陈瞎子告诉他们“内藏眢”就在此地。村民故技重施，要求胡八一等人寻找钱财，两拨人马前往洞穴，遭到蜘蛛袭击，被困暗阁，但大家齐心协力，化险为夷，最终进入了“棋盘”机关，众人协作，找到了龙骨天书，逃出洞穴，准备前往云南继续解密“红斑”。', 0, 1, '1', '1587915997', '1', '1588687173');
INSERT INTO `lea_mini_video` VALUES ('mzc00200r4rq2u1', 'qq', 'movie', '看不见的枕边人', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200r4rq2u11584081327758/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5218\\u96c5\\u745f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/838221570671295\\/0\"],[\"\\u7504\\u5b50\\u7426\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82867481585722084\\/0\"],[\"\\u738b\\u5ba3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15165041586779761\\/0\"]]', NULL, NULL, '2020-04-01', '《看不见的枕边人》讲述了单身“都市丽人”沈亦桢，在欣喜开启出租屋独居新生活的同时，身边发生的一件件离奇且细思恐极的事情。原租客的不告而别、保安的阴郁沉默、上司的殷勤追求、猥琐快递员的死缠烂打、流窜在楼内偷窃女性内衣的变态狂，都将这个看似平静的社区变得诡异重重。而沈亦桢不知道的是，每晚当她放松警惕入眠后，一只粗壮的手正悄然将她拥进怀中。在单身白领的出租屋内，这场面具人主导的“变态show”也正式拉起帷幕。', 0, 1, '1', '1587996439', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200r79j2lc', 'qq', 'movie', '小羊肖恩2：末日农场', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200r79j2lc1588411236213/0', NULL, NULL, NULL, NULL, NULL, '[]', NULL, NULL, '2019-12-28', '宁静祥和的农场里，小羊肖恩和伙伴们大开脑洞，做着各种挑战生命极限的游戏。这可气坏了牧羊犬，他接二连三制定禁令，防止羊们兴风作浪。肖恩哪能随便被人摆布？他想出鬼点子，通过电话订购了披萨，谁知却引来了一个始料未及的不速之客。来者是一个名叫噜啦的外星宝宝。虽然语言不通，但通过肢体语言，肖恩终于弄清噜啦想要找到飞船回到自己的家乡。经过一番缜密的策划，肖恩终于和这个新朋友踏上寻找飞船的征途。与此同时，不明飞行物的造访在小镇引起轰动，同时也惊动了一个专门追寻外星生物的机构。本来一波三折的寻找飞船之旅，如今又加入了气势汹汹的对手，肖恩他们将面临前所未有的考验……', 0, 1, '1', '1588642534', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200rudqy7b', 'qq', 'movie', '挑灯斩蛇录', '聊斋新番！剑客斩喷火巨蛇', NULL, 'http://puui.qpic.cn/qqvideo_ori/0/x0938pnrlmd_496_280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200rudqy7b1578453630/0', 0, 0.01, 0.00, 1, 0, '[[\"\\u4e0a\\u767d\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15524351578626138\\/0\"],[\"\\u5218\\u948a\\u5b8f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1558091578626402\\/0\"],[\"\\u65b9\\u695a\\u5f64\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13467231552380103\\/0\"]]', 0, 0, '2020-01-10', '贫困书生陈观赶考途中遭遇伥怪，逃命过程中与冯家小姐结缘。数月后陈观落榜而归，却发现冯宅破落，人也不见踪影。陈观遂决定搜集各种志怪故事为找寻冯小姐，一次偶遇沉默寡言的少年剑客崔执玉，得知自己小说里写到的巨蛇二十七年后再度现身祸乱人间，怀揣不同目的二人决定结伴前往斩除巨蛇。沿途历经艰难险阻，蛇终被斩，更大的阴谋却刚刚浮出水面……', 0, 1, '1', '1587914166', '1', '1588988412');
INSERT INTO `lea_mini_video` VALUES ('mzc00200vmvwq2r', 'qq', 'movie', '灵兽', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200vmvwq2r1585811543243/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u674e\\u51af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3372901585888443\\/0\"],[\"\\u5eb7\\u5b81\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1584736_688t1501148408.jpg\\/0\"],[\"\\u5f20\\u946b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13073411585889172\\/0\"],[\"\\u66f9\\u56fd\\u6d9b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/6709631585890209\\/0\"],[\"\\u9648\\u7199\\u660e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15567241555494821\\/0\"]]', NULL, NULL, '2020-04-03', '在遥远的部族里，豢养着一只来自雪啼山的灵兽，妖人黄皮子得知后带人前来抢夺，不料在众人恶战之时，灵兽趁机逃脱，黄皮子和部族女战士完颜槿为追灵兽来到钦天城。完颜槿意外结识少年吴恙，并擦出爱情的火花，吴恙为帮助完颜槿，决定一起对付黄皮子，奈何黄皮子法力高强，二人连带吴恙二叔和灵兽一起被黄皮子逼上雪啼山，只因黄皮子想要探寻雪啼山上传说中的“天外飞石”，可就在黄皮子得手之际，乖巧可爱的灵兽霎时变成一只凶猛的大雪妖向黄皮子发动攻击，大战过后吴恙等人取得胜利，拖着疲惫的身躯回到钦天城，也自此后开始守护钦天城的安危，续写下一个个史诗般的传奇故事。', 0, 1, '1', '1587914110', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200xf1pgs4', 'qq', 'movie', '山海之机巧蒜泥', '魔兽天空PK蛟龙撕裂天空', NULL, 'https://puui.qpic.cn/tv/0/854794142_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/mzc00200xf1pgs41586849695936/0', NULL, NULL, NULL, 1, 1, '[[\"\\u9648\\u4eae\\u8a00\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/81953291588043417\\/0\"],[\"\\u5468\\u5c55\\u7fc5\",\"\\/\\/puui.qpic.cn\\/vcolumn_pic\\/0\\/name_101504_688t1455693051.jpg\\/0\"],[\"\\u77f3\\u96ea\\u5a67\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1515052311\\/0\"],[\"\\u6768\\u5b50\\u9a85\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/928601588044325\\/0\"],[\"\\u8463\\u674e\\u65e0\\u5fe7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1516870581\\/0\"],[\"\\u5218\\u5929\\u4f50\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_94905_688t1467970301.jpg\\/0\"]]', NULL, NULL, '2020-04-28', '《山海之机巧蒜泥》是一部集玄幻、喜剧、爱情、幽默多重元素为一体的多元化电影，故事取材自山海神话架空的玄幻世界。电影讲述了少年蒜泥虽身为妖却没有一丝妖力，立志带着全村过上好日子的他踏上了寻找妖力的旅程。在旅途中，他结识了女扮男装失败的“少侠”若水，一人一妖打打闹闹，经历一系列趣事后终于来到了梦寐以求的青州城。蒜泥的妖力、若水的身世、同行伙伴的真实目的逐渐浮出水面……', 0, 1, '1', '1588255895', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200z8d4if9', 'qq', 'movie', '神都蜜探', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200z8d4if91586311159008/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u90dd\\u662d\\u8d6b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/4893671586833079\\/0\"],[\"\\u97e9\\u4e49\\u5a67\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16540591586843932\\/0\"],[\"\\u5468\\u8def\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/13241111586844150\\/0\"],[\"\\u5d14\\u83c1\\u683c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15383201586833974\\/0\"],[\"\\u4e54\\u9e23\\u9e9f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/9763011586834826\\/0\"]]', NULL, NULL, '2020-04-14', '三皇开世之时，华夏大地万物竞生，黄河岸边，兀自生出一口孤井。沧海桑田时移世易，中原王朝几经更迭，此井却不枯不竭平静如初，世人唤做“龙眼井”。至唐高宗时期，龙眼井所处之地已是繁华的东都洛阳。二圣临朝，井水异动，井中陆续飞升出不少异类生物，这些生物身形怪异，仪容奇特，行空踏浪飞檐走壁，引得洛阳城中人心惶惶，城中百姓从未见过此等生物，因其飞天而出，便称其为“天妖”。“天妖”其实是来自天外遥远的达达星球，实为达达星人，以吃坚果类食物为生，龙眼井乃是他们通往人类星球的时空隧道，因达达星球灾乱连年，故而前来大唐避难，并向二圣进贡天宿晶体，以求寄居生存。二圣开明，不忍将其驱逐，遂准其所求，但须换做唐人装扮隐秘生活，不得暴露原型，以免扰乱大唐风仪。然而“天妖”生性懒惰，六欲强烈，久而久之恶性暴露，经常无视大唐律法，做出有悖纲常之事。天后震怒，在九寺之外另设与井同名的“龙眼寺”，进行严密监督管理。', 0, 1, '1', '1587914144', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('mzc00200z9th9sx', 'qq', 'tv', '蓬莱间', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/mzc00200z9th9sx1578280598/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u738b\\u5955\\u4e01\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16750521578363785\\/0\"],[\"\\u767d\\u5b87\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1105671577325252\\/0\"],[\"\\u90d1\\u6e6b\\u6cd3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1143301578368979\\/0\"],[\"\\u5b63\\u8096\\u51b0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1315071578360239\\/0\"],[\"\\u9648\\u610f\\u6db5\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/16615561577174460\\/0\"]]', 35, 35, '2020', '该剧讲述了身份成谜的男主白起、都市女孩林夏，以及光怪陆离的奇幻世界中，各种悲欢离合、爱恨情仇故事。', 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('og0eputlxwet1cn', 'qq', 'movie', '我不是药神', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/og0eputlxwet1cn1524011116/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6587\\u7267\\u91ce\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3649471574652024\\/0\"],[\"\\u5f90\\u5ce5\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_74527_688t1467970750.jpg\\/0\"],[\"\\u738b\\u4f20\\u541b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/766981562741900\\/0\"],[\"\\u5468\\u4e00\\u56f4\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_101372_688t1467970246.jpg\\/0\"],[\"\\u8c2d\\u5353\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/787481534733353\\/0\"],[\"\\u7ae0\\u5b87\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/856881531217277\\/0\"]]', NULL, NULL, '2018-07-05', '普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。 本片改编自慢粒白血病患者陆勇代购抗癌药的真实事迹。', 0, 1, '1', '1587914323', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('orrvwxp2uvs5n5e', 'imgo', 'movie', '明日边缘', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/orrvwxp2uvs5n5e1523610524/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u9053\\u683c\\u00b7\\u91cc\\u66fc\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/1\\/3\\/5\\/79135.jpg\"],[\"\\u6c64\\u59c6\\u00b7\\u514b\\u9c81\\u65af\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_76330_688t1507704087.jpg\\/0\"],[\"\\u827e\\u7c73\\u8389\\u00b7\\u5e03\\u6717\\u7279\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/4\\/9\\/78049.jpg\"],[\"\\u6bd4\\u5c14\\u00b7\\u5e15\\u514b\\u65af\\u987f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/762571553759790\\/0\"],[\"\\u5e03\\u83b1\\u4e39\\u00b7\\u683c\\u91cc\\u68ee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/739791553760101\\/0\"],[\"\\u7ea6\\u7eb3\\u65af\\u00b7\\u963f\\u59c6\\u65af\\u7279\\u6717\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/0\\/8\\/1\\/148081.jpg\"]]', NULL, NULL, '2014-06-06', '未来世界陷入外星人入侵的恐慌中，军事演说家凯奇中校畏惧上战场，他从没想过将军会让他去指挥即将开始的“诺曼底战役”，拒绝接受命令之后将军居然恶整了他，那就是把他当做逃兵扔进了军营中。凯奇被归入了J小队中进行战斗，战役的第一天就惨死在战场，没想到这一死让他拥有了时空循环的能力，而唯一相信他的人就是被称为“全金属战士”的丽塔·沃拉塔斯基。二人开始了时空循环作战，在训练凯奇的同时他们发现了控制时间的奥秘，这与外星人“主脑”欧米茄有关，但是唯一能取得胜利的方法就是让凯奇不断死去、不断重启时间。在不断重复登陆那天的战斗的同时，凯奇越来越不想失去丽塔……', 0, 1, '1', '1589117978', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('owyequak2ck3bra', 'qq', 'movie', '“大”人物', '王千源“遍体鳞伤”单挑大人物', NULL, 'http://puui.qpic.cn/qqvideo_ori/0/e08279cmo3v_228_128/0', '//puui.qpic.cn/vcover_vt_pic/0/owyequak2ck3bra1551418479/0', 0, 0.00, 0.00, 0, 1, '[[\"\\u4e94\\u767e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1514461575451194\\/0\"],[\"\\u738b\\u5343\\u6e90\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_76708_688t1467970526.jpg\\/0\"],[\"\\u5305\\u8d1d\\u5c14\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1518491517\\/0\"],[\"\\u738b\\u8fc5\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1517561310\\/0\"],[\"\\u738b\\u781a\\u8f89\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/767931564574281\\/0\"],[\"\\u5c48\\u83c1\\u83c1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/2241881540350539\\/0\"],[\"\\u5468\\u6e38\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_1341613_688t1486177724.jpg\\/0\"],[\"\\u5218\\u654f\\u6d9b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/932661578297244\\/0\"],[\"\\u6885\\u5a77\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/761421558166152\\/0\"]]', 0, 0, '2019-01-10', '无力维权的修车工遭遇非法强拆后，选择跳楼自杀；随着小刑警孙大圣调查的深入，发现这场看似简单的民事纠纷背后其实另有隐情；随着嫌疑目标的锁定，赵泰和崔京民为代表的反派集团被盯上后，公然藐视法律挑衅警察。面对反派集团金钱诱惑、顶头上司的警告劝阻、家人性命遭受威胁，这场力量悬殊的正邪较量将会如何收场……', 0, 1, '1', '1587914202', '1', '1589073080');
INSERT INTO `lea_mini_video` VALUES ('Q4FrbX7lSzbrMX', 'qq', 'tv', '清平乐', NULL, '', NULL, '//puui.qpic.cn/vcover_vt_pic/0/dxd1v76tmu0wjuj1586243815025/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5f20\\u5f00\\u5b99\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_395184_688t1494492154.jpg\\/0\"],[\"\\u738b\\u51ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/854561579417059\\/0\"],[\"\\u6c5f\\u758f\\u5f71\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/853011577324919\\/0\"],[\"\\u4efb\\u654f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3061641589251021\\/0\"],[\"\\u6768\\u738f\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_163081_688t1490149764.jpg\\/0\"],[\"\\u8fb9\\u7a0b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/944821589251049\\/0\"],[\"\\u53f6\\u7956\\u65b0\",\"\\/\\/puui.qpic.cn\\/vstar_pic\\/0\\/name_93325_688t1506758409.jpg\\/0\"],[\"\\u55bb\\u6069\\u6cf0\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/729841578455740\\/0\"],[\"\\u738b\\u695a\\u7136\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/15634861587635029\\/0\"],[\"\\u5218\\u94a7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/949191556936229\\/0\"]]', 70, 59, '2020', '北宋皇帝赵祯得知将自己养大的当朝太后刘娥并非亲生母亲，而自己的生母乃是太后当年的婢女李兰惠，深感愧疚。为了报答李家，赵祯将自己最心爱的女儿徽柔嫁给了李家的子孙李玮。朝堂之上，庆历新政大臣和老派权臣之间针锋相对，斗争风起云涌，赵祯治国如执秤，权衡各方势力，为国事殚精竭虑。徽柔与陪伴自己长大的内侍怀吉建立了深厚的感情，对志趣不和又木讷平庸的李玮万般排斥，终于与婆家起了冲突，不顾一切地夜扣宫门，打破帝国最严苛的规矩，引发滔天非议，司马光甚至要在大殿之上“碎首进谏”。赵祯一生悉心呵护的“言路通畅”、“监督国君”的风气，使得他在爱女之情和维护治国理念之间挣扎得遍体鳞伤。最终，公主以半疯狂的抗争，始终未屈服于“成为李玮真正妻子”的命运，却与怀吉永生不得相见。', 0, 1, '1', '1590546239', '0', '1590716410');
INSERT INTO `lea_mini_video` VALUES ('t2t7544bcr1pw8r', 'qq', 'movie', '唐人街探案2', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/t2t7544bcr1pw8r1559132836/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u9648\\u601d\\u8bda\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1419331574738790\\/0\"],[\"\\u738b\\u5b9d\\u5f3a\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/3\\/2\\/76732.jpg\"],[\"\\u5218\\u660a\\u7136\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1514433246\\/0\"],[\"\\u8096\\u592e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1518504552\\/0\"],[\"\\u5218\\u627f\\u7fbd\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1517196732\\/0\"]]', NULL, NULL, '2018-02-16', '秦风接到唐仁的邀请来纽约参加其与阿香的婚礼。豪气逼人的唐仁迎接秦风，极尽招摇，岂料婚礼其实是唐仁为巨额奖金而参加的“世界名侦探大赛”，比赛的内容是寻找“唐人街教父”七叔的孙子。受骗的秦风怒极欲走，却被 FBI 探员陈英送来的讯息所吸引......', 0, 1, '1', '1587914391', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('uiq0rxuywu508qr', 'qq', 'movie', '功夫', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/uiq0rxuywu508qr1559138349/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5468\\u661f\\u9a70\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/8\\/6\\/2\\/72862.jpg\"],[\"\\u9648\\u56fd\\u5764\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/798121552373485\\/0\"],[\"\\u6881\\u5c0f\\u9f99\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/760971528796676\\/0\"],[\"\\u9ec4\\u5723\\u4f9d\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/805121577670548\\/0\"],[\"\\u5143\\u534e\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/717401544686535\\/0\"],[\"\\u5143\\u79cb\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/717471562831454\\/0\"]]', NULL, NULL, '2004-12-23', '1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。 阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者（元华、梁小龙等），他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。', 0, 1, '1', '1587914421', '1', '1589118011');
INSERT INTO `lea_mini_video` VALUES ('v2098lbuihuqs11', 'qq', 'movie', '复仇者联盟4：终局之战', '复仇者集结！史诗决战开打', NULL, 'https://puui.qpic.cn/tv/0/849562061_498280/0', '//puui.qpic.cn/vcover_vt_pic/0/v2098lbuihuqs111587100715029/0', NULL, NULL, NULL, 1, 1, '[[\"\\u5b89\\u4e1c\\u5c3c\\u00b7\\u7f57\\u7d20\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/5\\/1\\/0\\/73510.jpg\"],[\"\\u4e54\\u00b7\\u7f57\\u7d20\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/711881575014831\\/0\"],[\"\\u5c0f\\u7f57\\u4f2f\\u7279\\u00b7\\u5510\\u5c3c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/737071542087569\\/0\"],[\"\\u514b\\u91cc\\u65af\\u00b7\\u57c3\\u6587\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/718041586328121\\/0\"],[\"\\u9a6c\\u514b\\u00b7\\u9c81\\u6cd5\\u6d1b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/802461542089371\\/0\"]]', NULL, NULL, '2019-04-24', '一声响指，宇宙间半数生命灰飞烟灭。几近绝望的复仇者们在惊奇队长的帮助下找到灭霸归隐之处，却得知六颗无限宝石均被销毁，希望彻底破灭。如是过了五年，迷失在量子领域的蚁人意外回到现实世界，他的出现为幸存的复仇者们点燃了希望。与美国队长冰释前嫌的托尼找到了穿越时空的方法，星散各地的超级英雄再度集结，他们分别穿越不同的时代去搜集无限宝石。而在这一过程中，平行宇宙的灭霸察觉了他们的计划。 注定要载入史册的最终决战，超级英雄们为了心中恪守的信念前仆后继……', 0, 1, '1', '1587913778', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('v3sfrz8ws9ew7fw', 'qq', 'movie', '无双', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/v3sfrz8ws9ew7fw1559128070/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u5e84\\u6587\\u5f3a\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/741321554205244\\/0\"],[\"\\u5468\\u6da6\\u53d1\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/728791571622663\\/0\"],[\"\\u90ed\\u5bcc\\u57ce\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/793051577244664\\/0\"],[\"\\u5f20\\u9759\\u521d\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/744121554206736\\/0\"],[\"\\u51af\\u6587\\u5a1f\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/814121550822157\\/0\"],[\"\\u5468\\u5bb6\\u6021\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1014941555319205\\/0\"]]', NULL, NULL, '2018-09-30', '《无双》讲述了以代号“画家”为首的犯罪团伙，掌握了制造伪钞技术，难辨真伪，并在全球进行交易获取利益，引起警方高度重视。然而“画家”和其他成员的身份一直成谜，警方的破案进度遭受到了前所未有的挑战。在关键时刻，擅长绘画的李问打开了破案的突破口，而“画家”的真实身份却让众人意想不到……', 0, 1, '1', '1587914278', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('vjrvzv3s517g6m8', 'qq', 'movie', '寻梦环游记', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/vjrvzv3s517g6m81567394763/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u674e\\u00b7\\u6602\\u514b\\u91cc\\u5947\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/9\\/4\\/0\\/84940.jpg\"],[\"\\u963f\\u5fb7\\u91cc\\u5b89\\u00b7\\u83ab\\u5229\\u7eb3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1520325895\\/0\"]]', NULL, NULL, '2017-11-24', '小男孩米格（安东尼·冈萨雷斯 Anthony Gonzalez 配音）一心梦想成为音乐家，更希望自己能和偶像歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音）一样，创造出打动人心的音乐，但他的家族却世代禁止族人接触音乐。米格痴迷音乐，无比渴望证明自己的音乐才能，却因为一系列怪事，来到了五彩斑斓又光怪陆离的神秘世界。在那里，米格遇见了魅力十足的落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael García Bernal 配音），他们一起踏上了探寻米格家族不为人知往事的奇妙之旅，并开启了一段震撼心灵、感动非凡、永生难忘的旅程。', 0, 1, '1', '1587914522', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('wu1e7mrffzvibjy', 'qq', 'tv', '都挺好', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/wu1e7mrffzvibjy1559195358/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u7b80\\u5ddd\\u8a38\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/3197731576117463\\/0\"],[\"\\u59da\\u6668\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/733241577324773\\/0\"],[\"\\u502a\\u5927\\u7ea2\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/7\\/2\\/4\\/71724.jpg\"],[\"\\u90ed\\u4eac\\u98de\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/792961552099457\\/0\"],[\"\\u6768\\u7950\\u5b81\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/755321551489277\\/0\"],[\"\\u674e\\u5ff5\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/753281551489519\\/0\"],[\"\\u9ad8\\u946b\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/803871537166828\\/0\"],[\"\\u9ad8\\u9732\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/947861577175573\\/0\"],[\"\\u9648\\u747e\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/9\\/4\\/94694.jpg\"],[\"\\u5f20\\u6668\\u5149\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/3\\/0\\/93630.jpg\"],[\"\\u738b\\u4e1c\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82309201563600295\\/0\"],[\"\\u5f6d\\u6631\\u7545\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1323111583656075\\/0\"]]', 46, 46, '2019', '表面上无限风光的苏家，随着苏母的突然离世，瞬间分崩离析。意想不到的隐患层层显露，对毫无主见却又自私、小气的苏父的安置和后续生活问题，打破了远在国外的大哥与本城的二哥 、小妹三家的平静生活。父亲苏大强终于摆脱了妻子的铁腕，对几个孩子变本加厉，不断提出过分要求。在美国工作的老大苏明哲回到国内，一心要挑起家庭重担，却力不能及不堪重负，致使妻子孩子与其不断疏远。一直啃老的老二苏明成毫无悔改之心，贪慕虚荣一心发财，从而导致事业和家庭的双重惨败。最不受父母待见，十八岁起就和家里断绝经济往来的老小苏明玉，曾发誓与这个家庭划清界限，却因亲情牵绊，再次搅进了苏家的泥潭之中，在苏家的一次次危机中出手相助。最终，苏家人明白到，虽然有血脉相连，但是一家人彼此间的沟通也不能忽视，终于实现了亲情的回归。', 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('xjgp1yiles0rzv7', 'qq', 'movie', '教授与疯子', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/xjgp1yiles0rzv71586410324097/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u6885\\u5c14\\u00b7\\u5409\\u5e03\\u68ee\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/761441586415451\\/0\"],[\"\\u897f\\u6069\\u00b7\\u6f58\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/785331572417720\\/0\"],[\"\\u5a1c\\u5854\\u8389\\u00b7\\u591a\\u9ed8\\u5c14\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1447541574841034\\/0\"],[\"\\u8a79\\u59ae\\u5f17\\u00b7\\u827e\\u8389\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/785791586418372\\/0\"],[\"\\u65af\\u8482\\u82ac\\u00b7\\u8fea\\u5170\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1520302663\\/0\"]]', NULL, NULL, '2019-12-24', '影片故事根据真实事件改编，詹姆斯·默里博士领导下的编委会要进行新版本的《牛津英语字典》的编辑，以当时的人力科技水平，完成字典的编撰要一个世纪才能完成，詹姆斯·默里博士开创性的采用了全民参与的方式，让全英使用英语的人一起为字典收集词条定义，并通过寄信的方式发送给编撰组。在收集定义过程中，他们发现了一个叫W.C.迈纳的医生独自贡献了一万多条引语，这是一个专业语言学者都很难完成的工作量。当编委会决定向他致敬时，一个惊人的事实曝光了：原来迈纳医生，是美国内战时期部队的一个军医，因为患有精神分裂症而犯杀人罪，被禁闭在精神病院，是一个被认为是疯子的人。一位教授、一个疯子，人类历史上最早的英语大词典就这样在两个迥然不同的人手中诞生。', 0, 1, '1', '1587914127', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('y0vxr2r3ptzxbic', 'qq', 'movie', '神偷奶爸3', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/y0vxr2r3ptzxbic1568021601/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u76ae\\u827e\\u5c14\\u00b7\\u67ef\\u82ac\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/2\\/6\\/85626.jpg\"],[\"\\u51ef\\u5c14\\u00b7\\u5df4\\u5c14\\u8fbe\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1524470297\\/0\"]]', NULL, NULL, '2017-07-07', '《神偷奶爸3》将延续前两部的温馨、搞笑风格，聚焦格鲁和露西的婚后生活，继续讲述格鲁和三个女儿的爆笑故事。“恶棍”奶爸格鲁将会如何对付大反派巴萨扎·布莱德，调皮可爱的小黄人们又会如何耍贱卖萌，无疑让全球观众万分期待。该片配音也最大程度沿用前作阵容，史蒂夫·卡瑞尔继续为男主角格鲁配音，皮埃尔·柯芬也将继续为经典角色小黄人配音，而新角色巴萨扎·布莱德则由《南方公园》主创元老崔·帕克为其配音。', 0, 1, '1', '1587914456', '1', '1589118207');
INSERT INTO `lea_mini_video` VALUES ('zgwpjn6b4mifpg4', 'qq', 'tv', '放弃我抓紧我', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/zgwpjn6b4mifpg41556507788/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u9648\\u4e54\\u6069\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/null1515033214\\/0\"],[\"\\u738b\\u51ef\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/854561579417059\\/0\"],[\"\\u4e54\\u4efb\\u6881\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/712141541662393\\/0\"]]', 38, 38, '2016', '一次意外溺水，长时间脑部缺氧让著名服装设计师厉薇薇失去了部分记忆，她的记忆停留在23岁。记忆中热恋的同为设计师的男友竟成了竞争对手，而一个陌生人却成了她的未婚夫。薇薇不相信自己会和前男友陈亦度分手，她努力调查前因。未婚夫霍骁为了保护薇薇，追回自己的未婚妻，千方百计阻挠薇薇调查，守在她周围。厉薇薇回溯过去，发现自己和身边的人在忙碌中逐渐忘记了最初的梦想。薇薇和陈亦度分手的原因，也是因为两人在追逐事业的过程中，忽视了爱与沟通，在斗气和误会的道路上越走越远，陈亦度误会薇薇和霍骁的关系，最终和她分手。30岁的厉薇薇决定改变现状，她逐步解开过去的误会，和对手冰释前嫌，不但找回了爱情，也重拾了初心和梦想。', 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('zl6n65vy9hgrarl', 'qq', 'movie', '蚁人', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/zl6n65vy9hgrarl1587101468335/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u4f69\\u987f\\u00b7\\u91cc\\u5fb7\",\"\\/\\/i.gtimg.cn\\/qqlive\\/images\\/namelib\\/v688\\/6\\/5\\/9\\/71659.jpg\"],[\"\\u4fdd\\u7f57\\u00b7\\u8def\\u5fb7\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/717111576224736\\/0\"],[\"\\u8fc8\\u514b\\u5c14\\u00b7\\u9053\\u683c\\u62c9\\u65af\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/790841576224430\\/0\"],[\"\\u4f0a\\u4e07\\u6770\\u7433\\u00b7\\u8389\\u8389\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1418471574737660\\/0\"],[\"\\u5bc7\\u745e\\u00b7\\u65af\\u6258\\u5c14\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/736811575010167\\/0\"],[\"\\u8fc8\\u514b\\u5c14\\u00b7\\u4f69\\u7eb3\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/863001572422503\\/0\"]]', NULL, NULL, '2015-10-16', '前工程师斯科特由于劫富济贫进了监狱，出狱后的他为了争取看望女儿的权利又走上了盗窃之路。没想到一次意外的偷盗事件让他成为了新一代“蚁人”，老蚁人汉克.皮姆博士成为了他的导师，可皮姆博士的女儿霍普却并不看好他。但是危机迫在眉睫，为了对付强大的敌人拯救世界，斯科特不得不叫来自己的一帮狐朋狗友帮助自己完成一个不可能完成的任务。而取得任务的成功也是斯科特挽回女儿的关键，屌丝能否逆袭就看最后一击。', 0, 1, '1', '1587914348', NULL, NULL);
INSERT INTO `lea_mini_video` VALUES ('zr5a67l333ehzu9', 'qq', 'movie', '哪吒之魔童降世', NULL, NULL, NULL, '//puui.qpic.cn/vcover_vt_pic/0/zr5a67l333ehzu91574817414/0', NULL, NULL, NULL, NULL, NULL, '[[\"\\u997a\\u5b50\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/1073251563436142\\/0\"],[\"\\u701a\\u58a8\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82548831570843405\\/0\"],[\"\\u5f20\\u73c8\\u94ed\",\"\\/\\/puui.qpic.cn\\/media_img\\/0\\/82658751571122226\\/0\"]]', NULL, NULL, '2019-07-26', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？', 0, 1, '1', '1587914218', NULL, NULL);

-- ----------------------------
-- Table structure for lea_mini_video_banner
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_banner`;
CREATE TABLE `lea_mini_video_banner`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '轮播ID',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播名称',
  `tinyname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图片',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接地址',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小程序视频轮播' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_banner
-- ----------------------------
INSERT INTO `lea_mini_video_banner` VALUES (1, '清平乐', '持续更新中', 'http://file.cos.leapy.cn/image/20200510/53d6c202005102117106983.jpg', '/pages/play/play?vid=dxd1v76tmu0wjuj', 99, 1, '1', '1588077730', '1', '1589116702');
INSERT INTO `lea_mini_video_banner` VALUES (2, '龙岭迷窟', '已完结', 'http://file.cos.leapy.cn/image/20200510/bed2b202005102126232634.jpg', '/pages/play/play?vid=mzc00200q06w7zx', 96, 1, '1', '1588077750', '1', '1589117232');

-- ----------------------------
-- Table structure for lea_mini_video_collect
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_collect`;
CREATE TABLE `lea_mini_video_collect`  (
  `uid` int(8) NOT NULL COMMENT '用户ID',
  `vid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `add_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`uid`, `vid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_collect
-- ----------------------------
INSERT INTO `lea_mini_video_collect` VALUES (10, '06f338d6r1wa3my', '1589175195');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'dfg8138lannbyjx', '1589283339');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'dxd1v76tmu0wjuj', '1589037714');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'e3pdjwjjbbcmsow', '1589127889');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'l8r3gm1zzu5u3nk', '1589121267');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'mzc00200kharxoe', '1589076596');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'mzc00200mnujrjg', '1589038261');
INSERT INTO `lea_mini_video_collect` VALUES (10, 'mzc00200xf1pgs4', '1589038255');
INSERT INTO `lea_mini_video_collect` VALUES (25, '714pdmcrnqdlmdx', '1590468134');
INSERT INTO `lea_mini_video_collect` VALUES (25, 'dxd1v76tmu0wjuj', '1589073596');
INSERT INTO `lea_mini_video_collect` VALUES (25, 'og0eputlxwet1cn', '1590122680');
INSERT INTO `lea_mini_video_collect` VALUES (28, 'iegjnp9pe9p6fp1', '1589181724');
INSERT INTO `lea_mini_video_collect` VALUES (29, 'iegjnp9pe9p6fp1', '1589182952');
INSERT INTO `lea_mini_video_collect` VALUES (36, 'undefined', '1589412238');

-- ----------------------------
-- Table structure for lea_mini_video_item
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_item`;
CREATE TABLE `lea_mini_video_item`  (
  `xid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集数ID',
  `vid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前集数',
  `skip_sec` int(8) NULL DEFAULT NULL COMMENT '跳过多少秒',
  `fee` decimal(8, 2) NULL DEFAULT NULL COMMENT '费用',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `rank` int(8) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`xid`, `vid`, `name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电视剧分集表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_item
-- ----------------------------
INSERT INTO `lea_mini_video_item` VALUES ('40', 'Q4FrbX7lSzbrMX', '40', NULL, NULL, 'http://www.mgtv.com/b/316458/8191359.html?cxid=90f0zbamf', 39, 1, NULL, NULL, '1', '1590549565');
INSERT INTO `lea_mini_video_item` VALUES ('41', 'Q4FrbX7lSzbrMX', '41', NULL, NULL, 'http://www.mgtv.com/b/316458/8197710.html?cxid=90f0zbamf', 40, 1, NULL, NULL, '1', '1590549565');
INSERT INTO `lea_mini_video_item` VALUES ('42', 'Q4FrbX7lSzbrMX', '42', NULL, NULL, 'http://www.mgtv.com/b/316458/8197385.html?cxid=90f0zbamf', 41, 1, NULL, NULL, '1', '1590549565');
INSERT INTO `lea_mini_video_item` VALUES ('a0022j70vc0', 'zgwpjn6b4mifpg4', '7', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a00251ygu9l', '41dicgms0277zoz', '13', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0025o3p8xw', '41dicgms0277zoz', '17', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0025xm2hyb', '41dicgms0277zoz', '12', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a002905alg7', 'xmw2gfef226jygj', '61', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a00308xw434', 'wu1e7mrffzvibjy', '38', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0030vrcww0', 'wu1e7mrffzvibjy', '42', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0030w9g57k', 'wu1e7mrffzvibjy', '46', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0030ybi45z', 'wu1e7mrffzvibjy', '28', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a00324fqe9j', 'mzc00200f995x6t', '36', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a00331v9uh1', 'mzc00200088clbp', '3', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259349');
INSERT INTO `lea_mini_video_item` VALUES ('a00331v9uh1', 'mzc00200ibqz3tc', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('a00331v9uh1', 'otff8quzy6b2dlw', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('a00331v9uh1', 'xmw2gfef226jygj', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('a0033b48mtj', 'mzc002001pvxwzy', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('a0033bx5wy7', 'fyxgdb78znsgkti', '2', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0033i504y4', 'otff8quzy6b2dlw', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('a0033kwpdp0', 'j6b8z5urtg2wj5h', '9', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0033p0qano', 'mzc0020095tf0wm', '31', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0033p9bsj9', 'j6b8z5urtg2wj5h', '6', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0033qryxnx', 'mzc00200088clbp', '8', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('a0033qryxnx', 'mzc00200ibqz3tc', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('a0033qryxnx', 'otff8quzy6b2dlw', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('a0033qryxnx', 'xmw2gfef226jygj', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('a0033sriq3x', 'mzc00200088clbp', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('a0033sriq3x', 'mzc00200ibqz3tc', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('a0033sriq3x', 'otff8quzy6b2dlw', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('a0033sriq3x', 'xmw2gfef226jygj', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('a0033szl9ir', 'mzc0020095tf0wm', '42', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('a0033td7anw', 'mzc00200088clbp', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('a0033td7anw', 'mzc00200ibqz3tc', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('a0033td7anw', 'otff8quzy6b2dlw', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590837');
INSERT INTO `lea_mini_video_item` VALUES ('a0033td7anw', 'xmw2gfef226jygj', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('a0033zdczgf', 'mzc002009mrek37', '19', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0022frt2b3', 'zgwpjn6b4mifpg4', '25', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b002924s344', 'xmw2gfef226jygj', '28', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0029iy8zxa', 'xmw2gfef226jygj', '24', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0029ly2fqi', 'xmw2gfef226jygj', '70', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0029m0xkax', 'xmw2gfef226jygj', '78', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0029n3qhsp', 'xmw2gfef226jygj', '72', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0030velala', 'wu1e7mrffzvibjy', '3', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0032abwz4c', '2nnk0mjf3bsk6tt', '6', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b0032n9h1lp', 'mzc00200f995x6t', '5', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b003302l4dn', 'otff8quzy6b2dlw', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('b00331r3d77', 'mzc00200k12f5gi', '23', NULL, NULL, NULL, 22, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('b00333782db', 'mzc00200k12f5gi', '34', NULL, NULL, NULL, 33, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('b00337cudgx', 'mzc00200z9th9sx', '31', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('b00338s224s', 'mzc00200k12f5gi', '30', NULL, NULL, NULL, 29, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('b0033arkvrq', 'mzc00200088clbp', '58', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('b0033arkvrq', 'mzc00200ibqz3tc', '58', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('b0033arkvrq', 'otff8quzy6b2dlw', '58', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('b0033arkvrq', 'xmw2gfef226jygj', '58', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'jnngbw19gy8ctes', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'mzc00200088clbp', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'mzc00200ibqz3tc', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'mzc00200k12f5gi', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'otff8quzy6b2dlw', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('b0033bx9igv', 'xmw2gfef226jygj', '41', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('b0033qqnyfl', 'mzc00200k12f5gi', '16', NULL, NULL, NULL, 15, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('b0033rjuvwb', 'dxd1v76tmu0wjuj', '60', NULL, NULL, NULL, 48, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('b0033rjuvwb', 'Q4FrbX7lSzbrMX', '60', NULL, NULL, NULL, 48, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('b0033v043pk', 'mzc00200k12f5gi', '21', NULL, NULL, NULL, 20, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'dxd1v76tmu0wjuj', '19', NULL, NULL, NULL, 18, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'mzc00200088clbp', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'mzc00200ibqz3tc', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'otff8quzy6b2dlw', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'Q4FrbX7lSzbrMX', '19', NULL, NULL, NULL, 18, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('b0033z8du2y', 'xmw2gfef226jygj', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'dxd1v76tmu0wjuj', '33', NULL, NULL, NULL, 32, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'jnngbw19gy8ctes', '33', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'mzc00200088clbp', '33', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'mzc00200ibqz3tc', '33', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'otff8quzy6b2dlw', '33', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'Q4FrbX7lSzbrMX', '33', NULL, NULL, NULL, 32, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('b0033zf7xgf', 'xmw2gfef226jygj', '33', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('c0028tlcyng', 'i8wue9gam2mewxf', '14', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c00292i8p06', 'xmw2gfef226jygj', '5', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0029rfq6z8', 'c0oqsamtnxba64q', '2', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0029vr6a75', 'xmw2gfef226jygj', '10', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0030mq8yjr', 'wu1e7mrffzvibjy', '44', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0030u884k7', 'wu1e7mrffzvibjy', '8', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c00328apv3m', 'mzc00200f995x6t', '6', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0032kkqwto', 'mzc00200f995x6t', '30', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0032kwlv7g', 'mzc00200f995x6t', '33', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c00330w6jsm', 'j6b8z5urtg2wj5h', '19', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c00331kefl9', 'mzc00200k12f5gi', '20', NULL, NULL, NULL, 19, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('c00333ajhk6', 'mzc00200088clbp', '5', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259349');
INSERT INTO `lea_mini_video_item` VALUES ('c00333ajhk6', 'mzc00200ibqz3tc', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('c00333ajhk6', 'otff8quzy6b2dlw', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('c00333ajhk6', 'xmw2gfef226jygj', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('c003361xug7', 'mzc00200k12f5gi', '17', NULL, NULL, NULL, 16, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('c0033bbu2ck', 'mzc00200z9th9sx', '3', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033c9kl35', 'jnngbw19gy8ctes', '11', NULL, NULL, NULL, 10, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('c0033dg2lqn', 'j6b8z5urtg2wj5h', '33', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033ei12np', 'mzc00200q06w7zx', '10', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('c0033em2s7i', 'mzc0020095tf0wm', '33', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033gis7b1', 'mzc00200bqxuhqe', '38', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033kgwo9p', 'mzc002001pvxwzy', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('c0033krzqkl', 'mzc00200bqxuhqe', '3', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033o6pv7e', 'mzc00200088clbp', '60', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590833');
INSERT INTO `lea_mini_video_item` VALUES ('c0033o6pv7e', 'mzc00200ibqz3tc', '60', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('c0033o6pv7e', 'otff8quzy6b2dlw', '60', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('c0033o6pv7e', 'xmw2gfef226jygj', '60', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('c0033qyf22x', 'mzc00200k12f5gi', '31', NULL, NULL, NULL, 30, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('c0033sir3hy', 'mzc00200bqxuhqe', '6', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033svstnl', 'fyxgdb78znsgkti', '17', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033te2xgf', 'otff8quzy6b2dlw', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'dxd1v76tmu0wjuj', '10', NULL, NULL, NULL, 9, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'mzc00200088clbp', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'mzc00200ibqz3tc', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'otff8quzy6b2dlw', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'Q4FrbX7lSzbrMX', '10', NULL, NULL, NULL, 9, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('c0033tfui77', 'xmw2gfef226jygj', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('c0033wa1dur', 'mzc00200z9th9sx', '24', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033yqgker', 'mzc00200bqxuhqe', '37', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0033zyneyv', 'mzc00200z9th9sx', '10', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('c0958qaj319', 'mzc00200088clbp', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('c0958qaj319', 'mzc00200ibqz3tc', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('c0958qaj319', 'otff8quzy6b2dlw', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('c0958qaj319', 'xmw2gfef226jygj', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('d00226mff0f', 'zgwpjn6b4mifpg4', '26', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00255s738i', '41dicgms0277zoz', '5', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0028h54vmk', 'i8wue9gam2mewxf', '12', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0029qfkros', 'xmw2gfef226jygj', '38', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00303l5j4k', 'wu1e7mrffzvibjy', '26', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0030qc1yu2', 'wu1e7mrffzvibjy', '34', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0030xuekgw', 'wu1e7mrffzvibjy', '23', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0032hqld2w', '2nnk0mjf3bsk6tt', '3', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0032l2a9su', 'mzc00200f995x6t', '35', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0032wo4iy3', 'mzc00200f995x6t', '38', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00330i3eqn', 'mzc00200z9th9sx', '16', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033188l2q', 'mzc00200k12f5gi', '18', NULL, NULL, NULL, 17, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('d003328jt8y', 'mzc0020095tf0wm', '49', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00332ye7nq', 'jnngbw19gy8ctes', '6', NULL, NULL, NULL, 5, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('d00333s5znj', 'dxd1v76tmu0wjuj', '55', NULL, NULL, NULL, 43, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('d00333s5znj', 'Q4FrbX7lSzbrMX', '55', NULL, NULL, NULL, 43, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('d003344oyu7', 'j6b8z5urtg2wj5h', '4', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00335fqsg7', 'mzc00200z9th9sx', '7', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00336vlqm7', 'j6b8z5urtg2wj5h', '35', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d00337mntrx', 'mzc00200k12f5gi', '19', NULL, NULL, NULL, 18, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('d00337p3agv', 'mzc00200bqxuhqe', '40', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033c9ktyy', 'mzc0020095tf0wm', '34', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033d1fg7z', 'mzc00200bqxuhqe', '17', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033elpp72', 'fyxgdb78znsgkti', '27', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033fttjbr', 'dxd1v76tmu0wjuj', '58', NULL, NULL, NULL, 46, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('d0033fttjbr', 'Q4FrbX7lSzbrMX', '58', NULL, NULL, NULL, 46, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('d0033h0h7sh', 'j6b8z5urtg2wj5h', '7', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033h6153w', 'fyxgdb78znsgkti', '30', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033h6d4bx', 'mzc002009mrek37', '12', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033kf2wi3', 'j6b8z5urtg2wj5h', '38', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033lp15h7', 'mzc00200bqxuhqe', '1', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('d0033rhrb0m', 'mzc00200088clbp', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('d0033rhrb0m', 'mzc00200ibqz3tc', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('d0033rhrb0m', 'otff8quzy6b2dlw', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('d0033rhrb0m', 'xmw2gfef226jygj', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'dxd1v76tmu0wjuj', '39', NULL, NULL, NULL, 38, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'jnngbw19gy8ctes', '39', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'mzc00200088clbp', '39', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'mzc00200ibqz3tc', '39', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'otff8quzy6b2dlw', '39', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'Q4FrbX7lSzbrMX', '39', NULL, NULL, NULL, 38, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('d0033s6tjxq', 'xmw2gfef226jygj', '39', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('d0033x426wl', 'mzc00200q06w7zx', '17', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('d00340lbox5', 'dxd1v76tmu0wjuj', '69', NULL, NULL, NULL, 57, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('d00340lbox5', 'Q4FrbX7lSzbrMX', '69', NULL, NULL, NULL, 57, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('e002235tzww', 'zgwpjn6b4mifpg4', '14', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0022hziszo', 'zgwpjn6b4mifpg4', '28', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00286b6ndk', 'i8wue9gam2mewxf', '13', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00294x47c9', 'xmw2gfef226jygj', '27', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0029rc2mml', 'xmw2gfef226jygj', '75', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00327xsru8', 'ix6w4wausx518m8', '1', NULL, NULL, NULL, 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00329ey2m6', '2nnk0mjf3bsk6tt', '11', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0032ug3gbh', 'mzc00200f995x6t', '11', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0032wueo6o', 'mzc00200f995x6t', '14', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00331ea32c', 'fyxgdb78znsgkti', '8', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00331y6f16', 'mzc00200bqxuhqe', '4', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00332wbln0', 'mzc0020095tf0wm', '5', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00334fzssn', 'otff8quzy6b2dlw', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('e00335k5fvf', 'mzc00200z9th9sx', '4', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00337h6kya', 'mzc002009mrek37', '20', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e00339rwaqf', 'mzc00200bqxuhqe', '16', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033a8mm0m', 'mzc002009mrek37', '21', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033bj3ntl', 'mzc00200k12f5gi', '38', NULL, NULL, NULL, 37, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('e0033c47ce3', 'fyxgdb78znsgkti', '16', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033dn71ar', 'mzc00200088clbp', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('e0033dn71ar', 'mzc00200ibqz3tc', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('e0033dn71ar', 'otff8quzy6b2dlw', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('e0033dn71ar', 'xmw2gfef226jygj', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('e0033ip6g9a', 'jnngbw19gy8ctes', '4', NULL, NULL, NULL, 3, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('e0033k8fp2u', 'mzc00200088clbp', '55', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('e0033k8fp2u', 'mzc00200ibqz3tc', '55', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('e0033k8fp2u', 'otff8quzy6b2dlw', '55', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('e0033k8fp2u', 'xmw2gfef226jygj', '55', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('e0033loymzs', 'mzc00200bqxuhqe', '2', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033ltzn86', 'mzc0020095tf0wm', '9', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033m27aww', 'jnngbw19gy8ctes', '5', NULL, NULL, NULL, 4, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('e0033pbby1f', 'fyxgdb78znsgkti', '1', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033u87vt5', 'j6b8z5urtg2wj5h', '42', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('e0033vum695', 'jnngbw19gy8ctes', '10', NULL, NULL, NULL, 9, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('e0033vzl5eb', 'mzc002001pvxwzy', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('e0033wp6f2x', 'jnngbw19gy8ctes', '17', NULL, NULL, NULL, 16, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'dxd1v76tmu0wjuj', '11', NULL, NULL, NULL, 10, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'mzc00200088clbp', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'mzc00200ibqz3tc', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'otff8quzy6b2dlw', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'Q4FrbX7lSzbrMX', '11', NULL, NULL, NULL, 10, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('e0033xrp2bj', 'xmw2gfef226jygj', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('e00343tpajj', 'dxd1v76tmu0wjuj', '70', NULL, NULL, NULL, 58, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('e00343tpajj', 'Q4FrbX7lSzbrMX', '70', NULL, NULL, NULL, 58, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('f0029ah8427', 'c0oqsamtnxba64q', '10', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0032g8soze', 'mzc00200f995x6t', '21', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0032lu2eqb', '2nnk0mjf3bsk6tt', '12', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0032sntlw1', 'mzc00200f995x6t', '22', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f00331sigm4', 'jnngbw19gy8ctes', '7', NULL, NULL, NULL, 6, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('f00331vz9s7', 'mzc0020095tf0wm', '46', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'dxd1v76tmu0wjuj', '4', NULL, NULL, NULL, 3, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'mzc00200088clbp', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'mzc00200ibqz3tc', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'otff8quzy6b2dlw', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'Q4FrbX7lSzbrMX', '4', NULL, NULL, NULL, 3, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('f003323u5wn', 'xmw2gfef226jygj', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('f003367tz4a', 'jnngbw19gy8ctes', '12', NULL, NULL, NULL, 11, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('f00337tot42', 'dxd1v76tmu0wjuj', '53', NULL, NULL, NULL, 41, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('f00337tot42', 'jnngbw19gy8ctes', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('f00337tot42', 'mzc00200k12f5gi', '53', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('f00337tot42', 'Q4FrbX7lSzbrMX', '53', NULL, NULL, NULL, 41, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('f0033c65eeb', 'mzc002009mrek37', '15', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0033d4ozs0', 'mzc00200k12f5gi', '5', NULL, NULL, NULL, 4, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('f0033hmli78', 'mzc00200088clbp', '16', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('f0033hmli78', 'mzc00200ibqz3tc', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('f0033hmli78', 'otff8quzy6b2dlw', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('f0033hmli78', 'xmw2gfef226jygj', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('f0033klruar', 'mzc002009mrek37', '26', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0033v3yuuu', 'otff8quzy6b2dlw', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('f0033zrqs1z', 'mzc0020095tf0wm', '43', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0033zw16yo', 'mzc002009mrek37', '11', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('f0955hqr2qx', 'mzc00200088clbp', '18', NULL, NULL, NULL, 0, 1, '1', '1587916225', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0022i0tvz4', 'zgwpjn6b4mifpg4', '33', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00257cfx5p', '41dicgms0277zoz', '22', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00257o6ya3', '41dicgms0277zoz', '2', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0025c1w3ln', '41dicgms0277zoz', '23', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00280wo0hn', 'i8wue9gam2mewxf', '1', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0028nl9r75', 'i8wue9gam2mewxf', '18', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0028wq842v', 'i8wue9gam2mewxf', '8', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00295bmjax', 'xmw2gfef226jygj', '73', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0029fp5ine', 'i8wue9gam2mewxf', '21', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0029tea8aq', 'xmw2gfef226jygj', '66', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0029z71brx', 'xmw2gfef226jygj', '18', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g003035mi84', 'wu1e7mrffzvibjy', '31', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00303ob0cx', 'wu1e7mrffzvibjy', '16', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0030fju3w3', 'wu1e7mrffzvibjy', '41', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0032ukdz3y', 'mzc00200f995x6t', '28', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'jnngbw19gy8ctes', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'mzc00200088clbp', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'mzc00200ibqz3tc', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'mzc00200k12f5gi', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'otff8quzy6b2dlw', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('g00330es7d6', 'xmw2gfef226jygj', '42', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('g00330i69rb', 'mzc002009mrek37', '1', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g003325fmxk', 'mzc00200bqxuhqe', '26', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g00334vr6ok', 'mzc00200bqxuhqe', '24', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033bojhfs', 'mzc00200bqxuhqe', '8', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033cfwbz8', 'mzc00200z9th9sx', '1', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'dxd1v76tmu0wjuj', '35', NULL, NULL, NULL, 34, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'jnngbw19gy8ctes', '35', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'mzc00200088clbp', '35', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'mzc00200ibqz3tc', '35', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'otff8quzy6b2dlw', '35', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'Q4FrbX7lSzbrMX', '35', NULL, NULL, NULL, 34, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('g0033e6mree', 'xmw2gfef226jygj', '35', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('g0033h9wtu2', 'mzc00200bqxuhqe', '18', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'dxd1v76tmu0wjuj', '16', NULL, NULL, NULL, 15, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'mzc00200088clbp', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'mzc00200ibqz3tc', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'otff8quzy6b2dlw', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'Q4FrbX7lSzbrMX', '16', NULL, NULL, NULL, 15, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('g0033hbhccm', 'xmw2gfef226jygj', '16', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('g0033jeckkw', 'mzc00200ibqz3tc', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916097');
INSERT INTO `lea_mini_video_item` VALUES ('g0033n4odbw', 'mzc00200bqxuhqe', '10', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033nrjhyz', 'mzc00200k12f5gi', '6', NULL, NULL, NULL, 5, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('g0033o8u1c0', 'j6b8z5urtg2wj5h', '34', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033q2pysy', 'otff8quzy6b2dlw', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('g0033r73eqm', 'mzc00200k12f5gi', '4', NULL, NULL, NULL, 3, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('g0033rbcvk6', 'mzc0020095tf0wm', '19', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033uvqc6t', 'mzc00200k12f5gi', '27', NULL, NULL, NULL, 26, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('g0033x01hvv', 'fyxgdb78znsgkti', '25', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('g0033xya74h', 'mzc00200k12f5gi', '7', NULL, NULL, NULL, 6, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('g0034m8a4m2', 'dxd1v76tmu0wjuj', '64', NULL, NULL, NULL, 52, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('g0034m8a4m2', 'Q4FrbX7lSzbrMX', '64', NULL, NULL, NULL, 52, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('h00281nvggd', 'i8wue9gam2mewxf', '11', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0029ty2bqm', 'xmw2gfef226jygj', '63', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0029x9hhmy', 'c0oqsamtnxba64q', '7', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0030b060vn', 'wu1e7mrffzvibjy', '11', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0030j0eq19', 'wu1e7mrffzvibjy', '36', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0030zivlrq', 'wu1e7mrffzvibjy', '33', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h00329u6sql', 'mzc00200f995x6t', '32', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'dxd1v76tmu0wjuj', '6', NULL, NULL, NULL, 5, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'mzc00200088clbp', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'mzc00200ibqz3tc', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'otff8quzy6b2dlw', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'Q4FrbX7lSzbrMX', '6', NULL, NULL, NULL, 5, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('h00331prv3a', 'xmw2gfef226jygj', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'dxd1v76tmu0wjuj', '9', NULL, NULL, NULL, 8, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'mzc00200088clbp', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'mzc00200ibqz3tc', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'otff8quzy6b2dlw', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'Q4FrbX7lSzbrMX', '9', NULL, NULL, NULL, 8, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('h00337y6620', 'xmw2gfef226jygj', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('h00338ve3nf', 'mzc00200bqxuhqe', '21', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033ac1zfm', 'j6b8z5urtg2wj5h', '39', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033ae92oi', 'mzc0020095tf0wm', '17', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033ajatgp', 'jnngbw19gy8ctes', '22', NULL, NULL, NULL, 21, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('h0033at8ahr', 'mzc00200088clbp', '2', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259349');
INSERT INTO `lea_mini_video_item` VALUES ('h0033at8ahr', 'mzc00200ibqz3tc', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('h0033at8ahr', 'otff8quzy6b2dlw', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('h0033at8ahr', 'xmw2gfef226jygj', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('h0033d01m1q', 'mzc00200k12f5gi', '41', NULL, NULL, NULL, 40, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('h0033jmyq66', 'fyxgdb78znsgkti', '28', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033redm9y', 'mzc00200z9th9sx', '20', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033sei944', 'mzc00200q06w7zx', '5', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'jnngbw19gy8ctes', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'mzc00200088clbp', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'mzc00200ibqz3tc', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'mzc00200k12f5gi', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'otff8quzy6b2dlw', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tsg7be', 'xmw2gfef226jygj', '43', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tz7nb5', 'mzc00200088clbp', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tz7nb5', 'mzc00200ibqz3tc', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tz7nb5', 'otff8quzy6b2dlw', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('h0033tz7nb5', 'xmw2gfef226jygj', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('h0033usbkez', 'mzc0020095tf0wm', '20', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033v2ey4q', 'mzc00200088clbp', '64', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590833');
INSERT INTO `lea_mini_video_item` VALUES ('h0033v2ey4q', 'mzc00200ibqz3tc', '64', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('h0033v2ey4q', 'otff8quzy6b2dlw', '64', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('h0033v2ey4q', 'xmw2gfef226jygj', '64', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('h0033vgluma', 'fyxgdb78znsgkti', '7', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033vhracz', 'mzc002001pvxwzy', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('h0033wyhwbl', 'fyxgdb78znsgkti', '33', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033z77yzk', 'mzc00200z9th9sx', '18', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'dxd1v76tmu0wjuj', '24', NULL, NULL, NULL, 23, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'jnngbw19gy8ctes', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'mzc00200088clbp', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'mzc00200ibqz3tc', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'otff8quzy6b2dlw', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'Q4FrbX7lSzbrMX', '24', NULL, NULL, NULL, 23, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('h0033zg1f3u', 'xmw2gfef226jygj', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('i0025il62gb', '41dicgms0277zoz', '16', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i00299gbm4b', 'xmw2gfef226jygj', '1', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i00299gp5ls', 'xmw2gfef226jygj', '65', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0029a44cyw', 'xmw2gfef226jygj', '3', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0029x9v9ke', 'xmw2gfef226jygj', '34', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0029xqxd4p', 'xmw2gfef226jygj', '23', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0030r7v63u', 'wu1e7mrffzvibjy', '5', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0032g19159', 'mzc00200f995x6t', '4', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0032joecx9', 'mzc00200f995x6t', '24', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0032zr7lj4', 'mzc00200f995x6t', '25', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i00332bdppp', 'mzc002009mrek37', '5', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i00332rvg55', 'mzc002009mrek37', '22', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i00338cixh5', 'jnngbw19gy8ctes', '2', NULL, NULL, NULL, 1, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('i00339wp4qg', 'mzc00200z9th9sx', '6', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033a5f936', 'mzc0020095tf0wm', '22', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033cgr1vn', 'mzc002001pvxwzy', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('i0033ciehdw', 'mzc002001pvxwzy', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'dxd1v76tmu0wjuj', '31', NULL, NULL, NULL, 30, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'jnngbw19gy8ctes', '31', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'mzc00200088clbp', '31', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'mzc00200ibqz3tc', '31', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'otff8quzy6b2dlw', '31', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'Q4FrbX7lSzbrMX', '31', NULL, NULL, NULL, 30, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('i0033cod4sv', 'xmw2gfef226jygj', '31', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('i0033eg3lk2', 'mzc00200k12f5gi', '29', NULL, NULL, NULL, 28, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('i0033k5on0q', 'mzc002009mrek37', '18', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033n7kw1i', 'mzc0020095tf0wm', '32', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033rr17is', 'j6b8z5urtg2wj5h', '28', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033ry1m4c', 'mzc0020095tf0wm', '39', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('i0033sjo4n0', 'jnngbw19gy8ctes', '3', NULL, NULL, NULL, 2, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'dxd1v76tmu0wjuj', '38', NULL, NULL, NULL, 37, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'jnngbw19gy8ctes', '38', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'mzc00200088clbp', '38', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'mzc00200ibqz3tc', '38', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'otff8quzy6b2dlw', '38', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'Q4FrbX7lSzbrMX', '38', NULL, NULL, NULL, 37, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('i0033t80ub0', 'xmw2gfef226jygj', '38', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('i0033y8f658', 'mzc00200k12f5gi', '10', NULL, NULL, NULL, 9, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('i0954vlqvfe', 'mzc00200088clbp', '20', NULL, NULL, NULL, 0, 1, '1', '1587916225', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00223jsaxb', 'zgwpjn6b4mifpg4', '38', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00293pigph', 'xmw2gfef226jygj', '9', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0029492znx', 'xmw2gfef226jygj', '26', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00295yttq8', 'xmw2gfef226jygj', '74', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0029aoriyz', 'xmw2gfef226jygj', '12', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0029ke6qqs', 'xmw2gfef226jygj', '30', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0029mi1ihz', 'xmw2gfef226jygj', '76', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j003090ci7w', 'wu1e7mrffzvibjy', '12', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0030jks835', 'wu1e7mrffzvibjy', '37', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00326djqi6', 'mzc00200f995x6t', '10', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00326jiijz', 'mzc00200f995x6t', '45', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0032b167nf', '2nnk0mjf3bsk6tt', '10', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0032e01xim', 'mzc00200f995x6t', '7', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0032p20tyv', 'ix6w4wausx518m8', '5', NULL, NULL, NULL, 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0032val1er', 'mzc00200f995x6t', '40', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00333oenpu', 'dxd1v76tmu0wjuj', '51', NULL, NULL, NULL, 39, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('j00333oenpu', 'jnngbw19gy8ctes', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('j00333oenpu', 'mzc00200k12f5gi', '51', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('j00333oenpu', 'Q4FrbX7lSzbrMX', '51', NULL, NULL, NULL, 39, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('j00335hqn6m', 'mzc00200bqxuhqe', '25', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j00339arqx6', 'mzc002009mrek37', '14', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'jnngbw19gy8ctes', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'mzc00200088clbp', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'mzc00200ibqz3tc', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'mzc00200k12f5gi', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'otff8quzy6b2dlw', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('j0033dbgp50', 'xmw2gfef226jygj', '44', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634038');
INSERT INTO `lea_mini_video_item` VALUES ('j0033e9bv3h', 'fyxgdb78znsgkti', '9', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033kbdjsv', 'mzc00200q06w7zx', '9', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('j0033nh5uwi', 'mzc00200q06w7zx', '15', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('j0033nnej6t', 'fyxgdb78znsgkti', '6', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'jnngbw19gy8ctes', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'mzc00200088clbp', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'mzc00200ibqz3tc', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'mzc00200k12f5gi', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'otff8quzy6b2dlw', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ogvu50', 'xmw2gfef226jygj', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634038');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ph4hq8', 'mzc00200q06w7zx', '16', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('j0033qyg9a1', 'j6b8z5urtg2wj5h', '13', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033r8q5v9', 'mzc00200z9th9sx', '14', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033sicqz8', 'mzc002001pvxwzy', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('j0033ww26fn', 'j6b8z5urtg2wj5h', '21', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('j0033xknv51', 'j6b8z5urtg2wj5h', '2', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0025vo9eje', '41dicgms0277zoz', '8', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k002973zdwl', 'xmw2gfef226jygj', '35', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0029djq9gg', 'xmw2gfef226jygj', '31', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0030m5zbr7', 'wu1e7mrffzvibjy', '9', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0032crswm6', 'mzc00200f995x6t', '19', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0032gduo8q', 'mzc00200f995x6t', '41', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k00331llyow', 'mzc0020095tf0wm', '29', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k00337krfl0', 'mzc00200z9th9sx', '32', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k00337wvom3', 'jnngbw19gy8ctes', '14', NULL, NULL, NULL, 13, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('k00339lip3j', 'mzc0020095tf0wm', '35', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033bdbuxw', 'fyxgdb78znsgkti', '3', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033ei9s2f', 'otff8quzy6b2dlw', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('k0033gv8lhz', 'fyxgdb78znsgkti', '31', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033iran78', 'mzc00200088clbp', '1', NULL, NULL, NULL, 0, 1, '1', '1587916224', '0', '1588259349');
INSERT INTO `lea_mini_video_item` VALUES ('k0033iran78', 'mzc00200ibqz3tc', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('k0033iran78', 'otff8quzy6b2dlw', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('k0033iran78', 'xmw2gfef226jygj', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('k0033m9imt2', 'mzc00200k12f5gi', '15', NULL, NULL, NULL, 14, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('k0033o68ro7', 'mzc00200z9th9sx', '33', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033qszk12', 'j6b8z5urtg2wj5h', '41', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033rz6b7f', 'mzc00200bqxuhqe', '19', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033wmshy6', 'fyxgdb78znsgkti', '32', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033zjvrrd', 'mzc0020095tf0wm', '7', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('k0033zw0y56', 'j6b8z5urtg2wj5h', '15', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0025ufrej1', '41dicgms0277zoz', '3', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l002910db2x', 'i8wue9gam2mewxf', '20', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0029r7w9w9', 'xmw2gfef226jygj', '20', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0030e5nglm', 'wu1e7mrffzvibjy', '10', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0030jzi1mi', 'wu1e7mrffzvibjy', '43', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0030tb319m', 'wu1e7mrffzvibjy', '39', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0032bnhhh2', '2nnk0mjf3bsk6tt', '8', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0032liyc7r', 'mzc00200f995x6t', '26', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0032vjulbs', 'ix6w4wausx518m8', '3', NULL, NULL, NULL, 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033086hvz', 'mzc00200k12f5gi', '36', NULL, NULL, NULL, 35, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('l00331r116m', 'mzc00200z9th9sx', '29', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l003349x1ps', 'mzc00200k12f5gi', '33', NULL, NULL, NULL, 32, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('l00334n5qqo', 'fyxgdb78znsgkti', '14', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033566qq4', 'mzc0020095tf0wm', '12', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l003362ex2w', 'jnngbw19gy8ctes', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('l003362ex2w', 'mzc00200k12f5gi', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('l00336302y5', 'mzc002009mrek37', '6', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l00338p3bvr', 'j6b8z5urtg2wj5h', '3', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033bf3htn', 'mzc00200bqxuhqe', '35', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033c9lgej', 'j6b8z5urtg2wj5h', '32', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033e3vjlf', 'mzc00200q06w7zx', '18', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('l0033ei16qk', 'mzc00200k12f5gi', '35', NULL, NULL, NULL, 34, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('l0033el8phc', 'j6b8z5urtg2wj5h', '10', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033fbu70q', 'mzc002001pvxwzy', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('l0033hlp9hp', 'mzc00200bqxuhqe', '5', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033ijzezo', 'mzc00200ibqz3tc', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916097');
INSERT INTO `lea_mini_video_item` VALUES ('l0033m2raau', 'fyxgdb78znsgkti', '20', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033nd693f', 'mzc00200q06w7zx', '2', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'dxd1v76tmu0wjuj', '23', NULL, NULL, NULL, 22, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'jnngbw19gy8ctes', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'mzc00200088clbp', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'mzc00200ibqz3tc', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'otff8quzy6b2dlw', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'Q4FrbX7lSzbrMX', '23', NULL, NULL, NULL, 22, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rb1dw4', 'xmw2gfef226jygj', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('l0033rp15hn', 'mzc00200bqxuhqe', '22', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033spqumo', 'mzc00200q06w7zx', '1', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tck8dk', 'mzc002001pvxwzy', '23', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'dxd1v76tmu0wjuj', '34', NULL, NULL, NULL, 33, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'jnngbw19gy8ctes', '34', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'mzc00200088clbp', '34', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'mzc00200ibqz3tc', '34', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'otff8quzy6b2dlw', '34', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'Q4FrbX7lSzbrMX', '34', NULL, NULL, NULL, 33, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('l0033tlpdng', 'xmw2gfef226jygj', '34', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('l0033v48mgl', 'mzc00200z9th9sx', '17', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033xsxtmz', 'fyxgdb78znsgkti', '4', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033z26anc', 'mzc00200z9th9sx', '25', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('l0033z2kwk5', 'mzc00200z9th9sx', '11', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0022bp55v5', 'zgwpjn6b4mifpg4', '23', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0022gcr9ls', 'zgwpjn6b4mifpg4', '31', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0022jmdwtl', 'zgwpjn6b4mifpg4', '13', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0025ib8uje', '41dicgms0277zoz', '19', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00295k70mv', 'xmw2gfef226jygj', '59', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00298j8cgp', 'c0oqsamtnxba64q', '6', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0030q9ywxj', 'wu1e7mrffzvibjy', '35', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0030sfinyr', 'wu1e7mrffzvibjy', '7', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00322su9pf', 'mzc00200f995x6t', '39', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00331jiztz', 'mzc0020095tf0wm', '24', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00333lfqw5', 'mzc0020095tf0wm', '48', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033455wft', 'mzc00200k12f5gi', '3', NULL, NULL, NULL, 2, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('m00334pvtjd', 'j6b8z5urtg2wj5h', '25', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m00335q7clg', 'jnngbw19gy8ctes', '19', NULL, NULL, NULL, 18, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('m003364us9j', 'jnngbw19gy8ctes', '9', NULL, NULL, NULL, 8, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('m0033660isy', 'mzc0020095tf0wm', '4', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033ddzkut', 'mzc00200k12f5gi', '40', NULL, NULL, NULL, 39, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'dxd1v76tmu0wjuj', '21', NULL, NULL, NULL, 20, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'mzc00200088clbp', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'mzc00200ibqz3tc', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'otff8quzy6b2dlw', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'Q4FrbX7lSzbrMX', '21', NULL, NULL, NULL, 20, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('m0033ghpgxi', 'xmw2gfef226jygj', '21', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('m0033gntg45', 'j6b8z5urtg2wj5h', '27', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033hoxzpf', 'mzc00200088clbp', '12', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('m0033hoxzpf', 'mzc00200ibqz3tc', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('m0033hoxzpf', 'otff8quzy6b2dlw', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('m0033hoxzpf', 'xmw2gfef226jygj', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('m0033itpn31', 'mzc002009mrek37', '10', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033k6fdxi', 'j6b8z5urtg2wj5h', '8', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033o0m08g', 'mzc00200088clbp', '15', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('m0033o0m08g', 'mzc00200ibqz3tc', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('m0033o0m08g', 'otff8quzy6b2dlw', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('m0033o0m08g', 'xmw2gfef226jygj', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('m0033oi1om6', 'j6b8z5urtg2wj5h', '17', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('m0033qw22de', 'mzc002001pvxwzy', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'dxd1v76tmu0wjuj', '15', NULL, NULL, NULL, 14, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'mzc00200088clbp', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'mzc00200ibqz3tc', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'otff8quzy6b2dlw', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'Q4FrbX7lSzbrMX', '15', NULL, NULL, NULL, 14, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('m0033yhy7rs', 'xmw2gfef226jygj', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('n00224p6h3s', 'zgwpjn6b4mifpg4', '15', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0022673ffk', 'zgwpjn6b4mifpg4', '5', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0022evjhx0', 'zgwpjn6b4mifpg4', '2', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0028s97end', 'i8wue9gam2mewxf', '15', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00290zvc3f', 'xmw2gfef226jygj', '37', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00299i0bqc', 'i8wue9gam2mewxf', '22', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0029gx0jw9', 'xmw2gfef226jygj', '22', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00301fxqbh', 'wu1e7mrffzvibjy', '32', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0030falyoi', 'wu1e7mrffzvibjy', '13', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0030y2o52i', 'wu1e7mrffzvibjy', '21', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0032oi4r2x', 'mzc00200f995x6t', '29', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0032tfbhyj', 'mzc00200f995x6t', '3', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0032y9pljr', 'mzc00200f995x6t', '1', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'jnngbw19gy8ctes', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'mzc00200088clbp', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'mzc00200ibqz3tc', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'mzc00200k12f5gi', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'otff8quzy6b2dlw', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('n003304gblj', 'xmw2gfef226jygj', '45', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634038');
INSERT INTO `lea_mini_video_item` VALUES ('n00330g36sd', 'j6b8z5urtg2wj5h', '43', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n003324h2z4', 'mzc002009mrek37', '24', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00334w920e', 'j6b8z5urtg2wj5h', '12', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n003358iuid', 'mzc00200z9th9sx', '12', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00335d6o11', 'mzc0020095tf0wm', '16', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00338d1p3e', 'mzc00200bqxuhqe', '28', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00338fxsmn', 'j6b8z5urtg2wj5h', '30', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n00339hwps1', 'j6b8z5urtg2wj5h', '37', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033a2a5e2', 'mzc002009mrek37', '3', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033cf8smj', 'jnngbw19gy8ctes', '15', NULL, NULL, NULL, 14, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('n0033cungxa', 'mzc0020095tf0wm', '21', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'dxd1v76tmu0wjuj', '22', NULL, NULL, NULL, 21, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'mzc00200088clbp', '22', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'mzc00200ibqz3tc', '22', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'otff8quzy6b2dlw', '22', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'Q4FrbX7lSzbrMX', '22', NULL, NULL, NULL, 21, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('n0033d17qqo', 'xmw2gfef226jygj', '22', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('n0033fpeu0a', 'mzc00200088clbp', '7', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('n0033fpeu0a', 'mzc00200ibqz3tc', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('n0033fpeu0a', 'otff8quzy6b2dlw', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('n0033fpeu0a', 'xmw2gfef226jygj', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'dxd1v76tmu0wjuj', '17', NULL, NULL, NULL, 16, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'mzc00200088clbp', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'mzc00200ibqz3tc', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'otff8quzy6b2dlw', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'Q4FrbX7lSzbrMX', '17', NULL, NULL, NULL, 16, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('n0033g8cr6s', 'xmw2gfef226jygj', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('n0033hpjdhe', 'j6b8z5urtg2wj5h', '40', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033i3fnuu', 'j6b8z5urtg2wj5h', '5', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033j92kpk', 'mzc002001pvxwzy', '22', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('n0033o2cb2w', 'mzc00200k12f5gi', '28', NULL, NULL, NULL, 27, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('n0033o3c5sg', 'j6b8z5urtg2wj5h', '29', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033o9kxte', 'mzc0020095tf0wm', '47', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033p9h6s4', 'mzc002001pvxwzy', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('n0033pbga78', 'mzc00200088clbp', '56', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('n0033pbga78', 'mzc00200ibqz3tc', '56', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('n0033pbga78', 'otff8quzy6b2dlw', '56', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('n0033pbga78', 'xmw2gfef226jygj', '56', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'dxd1v76tmu0wjuj', '2', NULL, NULL, NULL, 1, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'mzc00200088clbp', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'mzc00200ibqz3tc', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'otff8quzy6b2dlw', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'Q4FrbX7lSzbrMX', '2', NULL, NULL, NULL, 1, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('n0033rr1tsn', 'xmw2gfef226jygj', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'dxd1v76tmu0wjuj', '26', NULL, NULL, NULL, 25, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'jnngbw19gy8ctes', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'mzc00200088clbp', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'mzc00200ibqz3tc', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'otff8quzy6b2dlw', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'Q4FrbX7lSzbrMX', '26', NULL, NULL, NULL, 25, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('n0033steyls', 'xmw2gfef226jygj', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('n0033t67255', 'mzc00200088clbp', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('n0033t67255', 'mzc00200ibqz3tc', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('n0033t67255', 'otff8quzy6b2dlw', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('n0033t67255', 'xmw2gfef226jygj', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('n0033vj9c2j', 'mzc00200bqxuhqe', '33', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0033xws9qk', 'mzc002001pvxwzy', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('n0034bss8e8', 'dxd1v76tmu0wjuj', '68', NULL, NULL, NULL, 56, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('n0034bss8e8', 'Q4FrbX7lSzbrMX', '68', NULL, NULL, NULL, 56, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('n0955itzhxo', 'mzc00200088clbp', '17', NULL, NULL, NULL, 0, 1, '1', '1587916225', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('n0956d3f5fz', 'mzc00200088clbp', '19', NULL, NULL, NULL, 0, 1, '1', '1587916225', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o00223d2igg', 'zgwpjn6b4mifpg4', '19', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0022tzqcx6', 'zgwpjn6b4mifpg4', '35', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0022ukyi2p', 'zgwpjn6b4mifpg4', '22', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0025a97mic', '41dicgms0277zoz', '9', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0025iukgls', '41dicgms0277zoz', '11', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0028pnf1nk', 'i8wue9gam2mewxf', '10', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0029abibfh', 'i8wue9gam2mewxf', '23', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0029dnl6yw', 'xmw2gfef226jygj', '17', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0029kqdz3d', 'xmw2gfef226jygj', '25', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0030md1a2a', 'wu1e7mrffzvibjy', '24', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0032woj77k', 'mzc00200f995x6t', '37', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0032y6w6pz', 'ix6w4wausx518m8', '2', NULL, NULL, NULL, 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o00331ohb6s', 'mzc00200bqxuhqe', '30', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o00339qv6ho', 'fyxgdb78znsgkti', '26', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o00339yn8vo', 'mzc00200q06w7zx', '14', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('o0033aao8tt', 'fyxgdb78znsgkti', '18', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0033avngut', 'mzc0020095tf0wm', '25', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0033nvicel', 'mzc00200bqxuhqe', '14', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0033q15nz1', 'jnngbw19gy8ctes', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('o0033q15nz1', 'mzc00200k12f5gi', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('o0033rlsmmv', 'mzc00200088clbp', '10', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('o0033rlsmmv', 'mzc00200ibqz3tc', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('o0033rlsmmv', 'otff8quzy6b2dlw', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('o0033rlsmmv', 'xmw2gfef226jygj', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('o0033t3tc9m', 'mzc0020095tf0wm', '30', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0033vy7t1d', 'mzc002001pvxwzy', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('o0033wance7', 'mzc00200088clbp', '14', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('o0033wance7', 'mzc00200ibqz3tc', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('o0033wance7', 'otff8quzy6b2dlw', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('o0033wance7', 'xmw2gfef226jygj', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('o0033wkclgp', 'fyxgdb78znsgkti', '23', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('o0033xoafs6', 'mzc00200088clbp', '63', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590833');
INSERT INTO `lea_mini_video_item` VALUES ('o0033xoafs6', 'mzc00200ibqz3tc', '63', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('o0033xoafs6', 'otff8quzy6b2dlw', '63', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('o0033xoafs6', 'xmw2gfef226jygj', '63', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('o0033yirfsc', 'jnngbw19gy8ctes', '18', NULL, NULL, NULL, 17, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('p0022jxwj88', 'zgwpjn6b4mifpg4', '1', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0025ggljkv', '41dicgms0277zoz', '18', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0029wch3ru', 'c0oqsamtnxba64q', '3', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0030fohijf', 'wu1e7mrffzvibjy', '15', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p003254le4c', 'mzc00200f995x6t', '27', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0032cratdm', 'mzc00200f995x6t', '47', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0032iwztm7', '2nnk0mjf3bsk6tt', '4', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0032n1bvqa', 'mzc00200f995x6t', '23', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p003308z6na', 'mzc002001pvxwzy', '26', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('p00330yd5zj', 'mzc002009mrek37', '4', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p003326g5f2', 'jnngbw19gy8ctes', '40', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('p003326g5f2', 'mzc00200088clbp', '40', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('p003326g5f2', 'mzc00200ibqz3tc', '40', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('p003326g5f2', 'otff8quzy6b2dlw', '40', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('p003326g5f2', 'xmw2gfef226jygj', '40', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('p0033270yjn', 'mzc00200k12f5gi', '39', NULL, NULL, NULL, 38, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('p00332yb4cq', 'fyxgdb78znsgkti', '21', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p00333qsawz', 'mzc002009mrek37', '28', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033603nzu', 'fyxgdb78znsgkti', '24', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'dxd1v76tmu0wjuj', '8', NULL, NULL, NULL, 7, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'mzc00200088clbp', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'mzc00200ibqz3tc', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'otff8quzy6b2dlw', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'Q4FrbX7lSzbrMX', '8', NULL, NULL, NULL, 7, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('p003366c5v6', 'xmw2gfef226jygj', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('p0033a4r79z', 'dxd1v76tmu0wjuj', '61', NULL, NULL, NULL, 49, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('p0033a4r79z', 'Q4FrbX7lSzbrMX', '61', NULL, NULL, NULL, 49, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('p0033dzo07n', 'mzc00200088clbp', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('p0033dzo07n', 'mzc00200ibqz3tc', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('p0033dzo07n', 'otff8quzy6b2dlw', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('p0033dzo07n', 'xmw2gfef226jygj', '50', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('p0033eldzsu', 'mzc0020095tf0wm', '23', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033f247uq', 'mzc00200z9th9sx', '28', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033fki6n1', 'jnngbw19gy8ctes', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('p0033fki6n1', 'mzc00200k12f5gi', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('p0033fu9tmv', 'mzc002009mrek37', '27', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033kp2kmj', 'mzc00200q06w7zx', '3', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('p0033kx12lt', 'mzc0020095tf0wm', '28', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033q2we85', 'mzc002001pvxwzy', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('p0033qm6ryh', 'mzc00200k12f5gi', '22', NULL, NULL, NULL, 21, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('p0033t0tif4', 'mzc0020095tf0wm', '50', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'dxd1v76tmu0wjuj', '14', NULL, NULL, NULL, 13, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'mzc00200088clbp', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'mzc00200ibqz3tc', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'otff8quzy6b2dlw', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'Q4FrbX7lSzbrMX', '14', NULL, NULL, NULL, 13, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('p0033wsbtmx', 'xmw2gfef226jygj', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('p0034ww288t', 'dxd1v76tmu0wjuj', '65', NULL, NULL, NULL, 53, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('p0034ww288t', 'Q4FrbX7lSzbrMX', '65', NULL, NULL, NULL, 53, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('q00227tqtcm', 'zgwpjn6b4mifpg4', '37', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0029lbkw18', 'xmw2gfef226jygj', '14', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0029wyxs71', 'xmw2gfef226jygj', '39', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q003230epzh', '2nnk0mjf3bsk6tt', '1', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0032v7modt', 'mzc00200f995x6t', '46', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0032vixik5', 'mzc00200f995x6t', '31', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q003301lb22', 'j6b8z5urtg2wj5h', '18', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q00333r0en0', 'mzc00200z9th9sx', '35', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q00334mhg3x', 'jnngbw19gy8ctes', '13', NULL, NULL, NULL, 12, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('q00336z9bvw', 'mzc00200bqxuhqe', '32', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q00337bxu1h', 'j6b8z5urtg2wj5h', '20', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q00339gy9mb', 'mzc002009mrek37', '25', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q00339rms55', 'fyxgdb78znsgkti', '34', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0033c4conb', 'mzc00200k12f5gi', '12', NULL, NULL, NULL, 11, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('q0033erba15', 'j6b8z5urtg2wj5h', '26', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'dxd1v76tmu0wjuj', '37', NULL, NULL, NULL, 36, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'jnngbw19gy8ctes', '37', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'mzc00200088clbp', '37', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'mzc00200ibqz3tc', '37', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'otff8quzy6b2dlw', '37', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'Q4FrbX7lSzbrMX', '37', NULL, NULL, NULL, 36, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('q0033lypujg', 'xmw2gfef226jygj', '37', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('q0033o1lj6r', 'mzc00200k12f5gi', '13', NULL, NULL, NULL, 12, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('q0033ue0bi6', 'mzc0020095tf0wm', '51', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r002247ybh8', 'zgwpjn6b4mifpg4', '17', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0022ahkqmv', 'zgwpjn6b4mifpg4', '29', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0028dzfghk', 'i8wue9gam2mewxf', '5', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0028nhjkej', 'i8wue9gam2mewxf', '3', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0028nkdkj5', 'i8wue9gam2mewxf', '16', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r00295bs40w', 'xmw2gfef226jygj', '7', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r00296cc56j', 'xmw2gfef226jygj', '36', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0029bq059w', 'xmw2gfef226jygj', '11', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0029ngbhgk', 'xmw2gfef226jygj', '69', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0029u3affh', 'xmw2gfef226jygj', '29', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0029vlfj7f', 'xmw2gfef226jygj', '64', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0029wbu7cx', 'xmw2gfef226jygj', '6', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0032u6o9aa', 'mzc00200f995x6t', '13', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r003315yj1e', 'mzc002001pvxwzy', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('r0033281jch', 'fyxgdb78znsgkti', '22', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r003359k0bz', 'mzc0020095tf0wm', '10', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r00338izq8j', 'mzc0020095tf0wm', '38', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033bk1mxp', 'mzc00200q06w7zx', '7', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('r0033dh7bko', 'mzc00200bqxuhqe', '11', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033ftaqk1', 'fyxgdb78znsgkti', '12', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033gxeqf2', 'otff8quzy6b2dlw', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('r0033ilbb4p', 'mzc00200k12f5gi', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1589072450');
INSERT INTO `lea_mini_video_item` VALUES ('r0033k80ggi', 'dxd1v76tmu0wjuj', '59', NULL, NULL, NULL, 47, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('r0033k80ggi', 'Q4FrbX7lSzbrMX', '59', NULL, NULL, NULL, 47, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('r0033lrmpuh', 'mzc00200k12f5gi', '37', NULL, NULL, NULL, 36, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('r0033mfwp44', 'mzc00200z9th9sx', '27', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033okwc20', 'mzc00200k12f5gi', '42', NULL, NULL, NULL, 41, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('r0033s7k1e1', 'mzc0020095tf0wm', '18', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033vjbdzq', 'mzc0020095tf0wm', '36', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033y7w5up', 'mzc0020095tf0wm', '15', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033z73ngt', 'mzc00200bqxuhqe', '9', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('r0033zibx4a', 'mzc00200q06w7zx', '8', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('r0958msrhuz', 'mzc00200088clbp', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('r0958msrhuz', 'mzc00200ibqz3tc', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('r0958msrhuz', 'otff8quzy6b2dlw', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('r0958msrhuz', 'xmw2gfef226jygj', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('s00220dnbc3', 'zgwpjn6b4mifpg4', '16', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00225ynhno', 'zgwpjn6b4mifpg4', '20', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0022a8pe3l', 'zgwpjn6b4mifpg4', '3', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0022qgyjj5', 'zgwpjn6b4mifpg4', '32', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0025kfivh2', '41dicgms0277zoz', '7', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00295lj6z9', 'xmw2gfef226jygj', '13', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0029bvvzhu', 'xmw2gfef226jygj', '16', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0029jyesxe', 'c0oqsamtnxba64q', '9', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00308u9kwx', 'wu1e7mrffzvibjy', '14', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00335vw44p', 'j6b8z5urtg2wj5h', '22', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00336650k7', 'mzc002009mrek37', '7', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0033828nw6', 'mzc00200bqxuhqe', '7', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s00338f1hq8', 'mzc0020095tf0wm', '2', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0033h18pdt', 'jnngbw19gy8ctes', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'dxd1v76tmu0wjuj', '25', NULL, NULL, NULL, 24, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'jnngbw19gy8ctes', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'mzc00200088clbp', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'mzc00200ibqz3tc', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'otff8quzy6b2dlw', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'Q4FrbX7lSzbrMX', '25', NULL, NULL, NULL, 24, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('s0033hv9q3o', 'xmw2gfef226jygj', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('s0033k01ae3', 'mzc002001pvxwzy', '24', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m5k0d0', 'mzc002001pvxwzy', '10', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'dxd1v76tmu0wjuj', '3', NULL, NULL, NULL, 2, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'mzc00200088clbp', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'mzc00200ibqz3tc', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'otff8quzy6b2dlw', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'Q4FrbX7lSzbrMX', '3', NULL, NULL, NULL, 2, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('s0033m6u4or', 'xmw2gfef226jygj', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'dxd1v76tmu0wjuj', '28', NULL, NULL, NULL, 27, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'jnngbw19gy8ctes', '28', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'mzc00200088clbp', '28', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'mzc00200ibqz3tc', '28', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'otff8quzy6b2dlw', '28', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'Q4FrbX7lSzbrMX', '28', NULL, NULL, NULL, 27, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('s0033mwer87', 'xmw2gfef226jygj', '28', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('s0033nvee06', 'fyxgdb78znsgkti', '19', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0033o8qki5', 'mzc0020095tf0wm', '26', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'dxd1v76tmu0wjuj', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'mzc00200088clbp', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'mzc00200ibqz3tc', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'otff8quzy6b2dlw', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'Q4FrbX7lSzbrMX', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('s0033s6x9tw', 'xmw2gfef226jygj', '1', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('s0033snvajg', 'mzc00200k12f5gi', '44', NULL, NULL, NULL, 43, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('s0033uoma1o', 'mzc00200088clbp', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('s0033uoma1o', 'mzc00200ibqz3tc', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('s0033uoma1o', 'otff8quzy6b2dlw', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('s0033uoma1o', 'xmw2gfef226jygj', '49', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('s0033vq70x1', 'mzc00200z9th9sx', '30', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('s0033w5isu7', 'mzc00200k12f5gi', '2', NULL, NULL, NULL, 1, 1, NULL, NULL, '1', '1589072450');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'dxd1v76tmu0wjuj', '13', NULL, NULL, NULL, 12, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'mzc00200088clbp', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'mzc00200ibqz3tc', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'otff8quzy6b2dlw', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'Q4FrbX7lSzbrMX', '13', NULL, NULL, NULL, 12, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('s0033x1d40c', 'xmw2gfef226jygj', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('s0034qgjof5', 'dxd1v76tmu0wjuj', '66', NULL, NULL, NULL, 54, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('s0034qgjof5', 'Q4FrbX7lSzbrMX', '66', NULL, NULL, NULL, 54, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('t002210pu6h', 'zgwpjn6b4mifpg4', '12', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0022i800xh', 'zgwpjn6b4mifpg4', '11', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0025e9j541', '41dicgms0277zoz', '4', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0028cvsmvr', 'i8wue9gam2mewxf', '2', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0029k2kkt1', 'c0oqsamtnxba64q', '4', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00306i1e62', 'wu1e7mrffzvibjy', '1', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0030aexmnt', 'wu1e7mrffzvibjy', '27', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0030epjqsi', 'wu1e7mrffzvibjy', '30', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0030kups1i', 'wu1e7mrffzvibjy', '20', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00327nud3p', 'mzc00200f995x6t', '2', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00328mpjt8', '2nnk0mjf3bsk6tt', '7', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00329o058y', 'mzc00200f995x6t', '34', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0032m0ciip', 'ix6w4wausx518m8', '4', NULL, NULL, NULL, 0, 1, '1', '1587916454', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0032yst04g', 'mzc00200f995x6t', '43', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t003305klxa', 'mzc0020095tf0wm', '44', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'dxd1v76tmu0wjuj', '32', NULL, NULL, NULL, 31, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'jnngbw19gy8ctes', '32', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'mzc00200088clbp', '32', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'mzc00200ibqz3tc', '32', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'otff8quzy6b2dlw', '32', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'Q4FrbX7lSzbrMX', '32', NULL, NULL, NULL, 31, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('t00331hibe7', 'xmw2gfef226jygj', '32', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'dxd1v76tmu0wjuj', '36', NULL, NULL, NULL, 35, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'jnngbw19gy8ctes', '36', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'mzc00200088clbp', '36', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'mzc00200ibqz3tc', '36', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'otff8quzy6b2dlw', '36', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'Q4FrbX7lSzbrMX', '36', NULL, NULL, NULL, 35, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('t003333eczl', 'xmw2gfef226jygj', '36', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('t0033539cus', 'jnngbw19gy8ctes', '21', NULL, NULL, NULL, 20, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('t00336j5wpa', 'mzc00200q06w7zx', '6', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('t00336tfmax', 'mzc0020095tf0wm', '37', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t00337faps8', 'mzc002009mrek37', '16', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033d4wvjz', 'j6b8z5urtg2wj5h', '1', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033ek5bwh', 'dxd1v76tmu0wjuj', '52', NULL, NULL, NULL, 40, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('t0033ek5bwh', 'jnngbw19gy8ctes', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('t0033ek5bwh', 'mzc00200k12f5gi', '52', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('t0033ek5bwh', 'Q4FrbX7lSzbrMX', '52', NULL, NULL, NULL, 40, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('t0033feafra', 'mzc00200q06w7zx', '4', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('t0033i0t7hk', 'j6b8z5urtg2wj5h', '16', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033iuozc5', 'mzc0020095tf0wm', '41', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'dxd1v76tmu0wjuj', '5', NULL, NULL, NULL, 4, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'mzc00200088clbp', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'mzc00200ibqz3tc', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'otff8quzy6b2dlw', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'Q4FrbX7lSzbrMX', '5', NULL, NULL, NULL, 4, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('t0033jqv4y9', 'xmw2gfef226jygj', '5', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('t0033lib7mb', 'mzc00200ibqz3tc', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916097');
INSERT INTO `lea_mini_video_item` VALUES ('t0033o1gacw', 'j6b8z5urtg2wj5h', '24', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033o32uzq', 'mzc00200088clbp', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('t0033o32uzq', 'mzc00200ibqz3tc', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('t0033o32uzq', 'otff8quzy6b2dlw', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('t0033o32uzq', 'xmw2gfef226jygj', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'dxd1v76tmu0wjuj', '18', NULL, NULL, NULL, 17, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'mzc00200088clbp', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'mzc00200ibqz3tc', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'otff8quzy6b2dlw', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'Q4FrbX7lSzbrMX', '18', NULL, NULL, NULL, 17, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('t0033qpzchx', 'xmw2gfef226jygj', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('t0033stwqoy', 'mzc00200z9th9sx', '22', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033tgad1l', 'mzc00200088clbp', '9', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('t0033tgad1l', 'mzc00200ibqz3tc', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('t0033tgad1l', 'otff8quzy6b2dlw', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('t0033tgad1l', 'xmw2gfef226jygj', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('t0033uhzvel', 'mzc0020095tf0wm', '40', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033vqv0hl', 'j6b8z5urtg2wj5h', '36', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('t0033wnz2zh', 'mzc00200088clbp', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('t0033wnz2zh', 'mzc00200ibqz3tc', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('t0033wnz2zh', 'otff8quzy6b2dlw', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('t0033wnz2zh', 'xmw2gfef226jygj', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('t0033yffhyr', 'mzc00200k12f5gi', '14', NULL, NULL, NULL, 13, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('t0034vbtnur', 'dxd1v76tmu0wjuj', '63', NULL, NULL, NULL, 51, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('t0034vbtnur', 'Q4FrbX7lSzbrMX', '63', NULL, NULL, NULL, 51, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('u0022cthwg9', 'zgwpjn6b4mifpg4', '24', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0022lm1mqw', 'zgwpjn6b4mifpg4', '36', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u002595y9k3', '41dicgms0277zoz', '14', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0025lobynb', '41dicgms0277zoz', '10', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u00289zqffr', 'i8wue9gam2mewxf', '4', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0028rqxsm3', 'i8wue9gam2mewxf', '17', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0028tzbvtz', 'i8wue9gam2mewxf', '9', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u00299jqg7i', 'xmw2gfef226jygj', '2', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0029uzrp27', 'xmw2gfef226jygj', '60', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u00302fdo8v', 'wu1e7mrffzvibjy', '45', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u003289wm2e', '2nnk0mjf3bsk6tt', '5', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0032fsykv6', 'mzc00200f995x6t', '8', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u00332rssek', 'mzc00200088clbp', '61', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590833');
INSERT INTO `lea_mini_video_item` VALUES ('u00332rssek', 'mzc00200ibqz3tc', '61', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('u00332rssek', 'otff8quzy6b2dlw', '61', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('u00332rssek', 'xmw2gfef226jygj', '61', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('u00338lbjgw', 'mzc00200088clbp', '4', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259349');
INSERT INTO `lea_mini_video_item` VALUES ('u00338lbjgw', 'mzc00200ibqz3tc', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('u00338lbjgw', 'otff8quzy6b2dlw', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('u00338lbjgw', 'xmw2gfef226jygj', '4', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('u0033ah88f0', 'mzc0020095tf0wm', '11', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033akv5ow', 'mzc002009mrek37', '2', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033cb6okk', 'fyxgdb78znsgkti', '5', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033d7frss', 'mzc00200bqxuhqe', '39', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033f1t4r7', 'mzc002001pvxwzy', '15', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('u0033ll47n0', 'mzc00200bqxuhqe', '29', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033mfxndy', 'mzc00200k12f5gi', '24', NULL, NULL, NULL, 23, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'dxd1v76tmu0wjuj', '29', NULL, NULL, NULL, 28, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'jnngbw19gy8ctes', '29', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'mzc00200088clbp', '29', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'mzc00200ibqz3tc', '29', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'otff8quzy6b2dlw', '29', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'Q4FrbX7lSzbrMX', '29', NULL, NULL, NULL, 28, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n5ew36', 'xmw2gfef226jygj', '29', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('u0033n70z4v', 'mzc00200k12f5gi', '32', NULL, NULL, NULL, 31, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('u0033nth60e', 'mzc00200bqxuhqe', '42', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'dxd1v76tmu0wjuj', '12', NULL, NULL, NULL, 11, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'mzc00200088clbp', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'mzc00200ibqz3tc', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'otff8quzy6b2dlw', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'Q4FrbX7lSzbrMX', '12', NULL, NULL, NULL, 11, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('u0033oocntj', 'xmw2gfef226jygj', '12', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('u0033ooyjz6', 'mzc002009mrek37', '9', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033w2a84y', 'mzc00200z9th9sx', '15', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0033xnam7q', 'mzc00200z9th9sx', '19', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('u0034kh2wnz', 'dxd1v76tmu0wjuj', '67', NULL, NULL, NULL, 55, 1, NULL, NULL, '1', '1590287869');
INSERT INTO `lea_mini_video_item` VALUES ('u0034kh2wnz', 'Q4FrbX7lSzbrMX', '67', NULL, NULL, NULL, 55, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('v0025u7iuf8', '41dicgms0277zoz', '1', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0028ywyffk', 'i8wue9gam2mewxf', '6', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0029jb4sql', 'xmw2gfef226jygj', '77', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0029r61q64', 'xmw2gfef226jygj', '67', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0030960y6n', 'wu1e7mrffzvibjy', '17', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0030keuav1', 'wu1e7mrffzvibjy', '19', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v00326die7j', 'mzc00200f995x6t', '42', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v00327mo1fw', 'mzc00200f995x6t', '15', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v00328vgwlv', 'mzc00200f995x6t', '18', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v00331vblrb', 'mzc00200k12f5gi', '9', NULL, NULL, NULL, 8, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('v00335ec85n', 'mzc0020095tf0wm', '1', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v00338ry0t5', 'mzc00200z9th9sx', '8', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033b0u6to', 'j6b8z5urtg2wj5h', '31', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033b4fffi', 'mzc002001pvxwzy', '番外', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('v0033c8pcta', 'mzc00200088clbp', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('v0033c8pcta', 'mzc00200ibqz3tc', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('v0033c8pcta', 'otff8quzy6b2dlw', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('v0033c8pcta', 'xmw2gfef226jygj', '48', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('v0033fzx210', 'fyxgdb78znsgkti', '11', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033kfd7r7', 'mzc00200bqxuhqe', '15', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033mgrnbw', 'mzc00200k12f5gi', '8', NULL, NULL, NULL, 7, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('v0033n5cdoh', 'mzc00200z9th9sx', '9', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033onwvs1', 'mzc0020095tf0wm', '27', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033p9xsul', 'otff8quzy6b2dlw', '9', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('v0033pgr7fp', 'mzc00200z9th9sx', '21', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033qefwwd', 'mzc00200bqxuhqe', '12', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('v0033ucafhr', 'mzc00200088clbp', '57', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('v0033ucafhr', 'mzc00200ibqz3tc', '57', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('v0033ucafhr', 'otff8quzy6b2dlw', '57', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('v0033ucafhr', 'xmw2gfef226jygj', '57', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('v0033uruztm', 'mzc00200k12f5gi', '11', NULL, NULL, NULL, 10, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('w00227bavv8', 'zgwpjn6b4mifpg4', '4', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w00228q9rlo', 'zgwpjn6b4mifpg4', '6', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0022cgk4f3', 'zgwpjn6b4mifpg4', '34', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0022u8evhb', 'zgwpjn6b4mifpg4', '30', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0028e9fq61', 'i8wue9gam2mewxf', '7', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0029vo5e3l', 'xmw2gfef226jygj', '32', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0030ilim7z', 'wu1e7mrffzvibjy', '4', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w003294d7lx', 'mzc00200f995x6t', '12', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0032m0b8hc', 'mzc00200f995x6t', '20', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w00331hm9tt', 'mzc00200088clbp', '59', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('w00331hm9tt', 'mzc00200ibqz3tc', '59', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('w00331hm9tt', 'otff8quzy6b2dlw', '59', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('w00331hm9tt', 'xmw2gfef226jygj', '59', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('w00332k4z44', 'fyxgdb78znsgkti', '15', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w00333amdnk', 'fyxgdb78znsgkti', '13', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w003373cd4f', 'mzc00200bqxuhqe', '23', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w00338t1j0u', 'mzc002009mrek37', '17', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'dxd1v76tmu0wjuj', '20', NULL, NULL, NULL, 19, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'mzc00200088clbp', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'mzc00200ibqz3tc', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'otff8quzy6b2dlw', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'Q4FrbX7lSzbrMX', '20', NULL, NULL, NULL, 19, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('w003392c5xt', 'xmw2gfef226jygj', '20', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('w00339vzf2o', 'j6b8z5urtg2wj5h', '11', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0033ag1mmy', 'mzc00200ibqz3tc', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916097');
INSERT INTO `lea_mini_video_item` VALUES ('w0033g66grj', 'jnngbw19gy8ctes', '8', NULL, NULL, NULL, 7, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('w0033hxzhvz', 'mzc00200k12f5gi', '43', NULL, NULL, NULL, 42, 1, NULL, NULL, '1', '1589072452');
INSERT INTO `lea_mini_video_item` VALUES ('w0033j6nw2j', 'j6b8z5urtg2wj5h', '14', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0033ke76ou', 'fyxgdb78znsgkti', '29', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0033lggxrp', 'mzc00200088clbp', '13', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('w0033lggxrp', 'mzc00200ibqz3tc', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('w0033lggxrp', 'otff8quzy6b2dlw', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('w0033lggxrp', 'xmw2gfef226jygj', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('w0033mqfwv0', 'mzc00200k12f5gi', '25', NULL, NULL, NULL, 24, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nfpn8t', 'mzc0020095tf0wm', '6', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'dxd1v76tmu0wjuj', '30', NULL, NULL, NULL, 29, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'jnngbw19gy8ctes', '30', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'mzc00200088clbp', '30', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'mzc00200ibqz3tc', '30', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'otff8quzy6b2dlw', '30', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'Q4FrbX7lSzbrMX', '30', NULL, NULL, NULL, 29, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('w0033nieyca', 'xmw2gfef226jygj', '30', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('w0033pkvimd', 'mzc002001pvxwzy', '13', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('w0033xmy7yh', 'mzc002009mrek37', '13', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0022tmjjqi', 'zgwpjn6b4mifpg4', '8', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0025435z5j', '41dicgms0277zoz', '21', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x00255gitqg', '41dicgms0277zoz', '20', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x00257y8izj', '41dicgms0277zoz', '6', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x002984c3j0', 'xmw2gfef226jygj', '62', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0029c3kl9t', 'xmw2gfef226jygj', '33', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0029vtcn7a', 'xmw2gfef226jygj', '21', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x003061htl5', 'wu1e7mrffzvibjy', '2', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0030bl84xw', 'wu1e7mrffzvibjy', '18', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0030peo3sk', 'wu1e7mrffzvibjy', '25', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0030s52mev', 'wu1e7mrffzvibjy', '22', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0030xogl32', 'wu1e7mrffzvibjy', '40', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0032kix4cq', 'mzc00200f995x6t', '16', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0032rdq22t', 'mzc00200f995x6t', '48', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0032t9id2f', 'mzc00200f995x6t', '17', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x00331lrdvs', 'fyxgdb78znsgkti', '10', NULL, NULL, NULL, 0, 1, '1', '1587916245', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x00332voqob', 'mzc0020095tf0wm', '8', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x00338nqep2', 'mzc002009mrek37', '8', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033akqqr9', 'mzc00200bqxuhqe', '36', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033fy35i0', 'mzc00200z9th9sx', '13', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033gnuzwv', 'mzc00200k12f5gi', '26', NULL, NULL, NULL, 25, 1, NULL, NULL, '1', '1589072451');
INSERT INTO `lea_mini_video_item` VALUES ('x0033lskof0', 'mzc002001pvxwzy', '3', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('x0033og6er4', 'j6b8z5urtg2wj5h', '23', NULL, NULL, NULL, 0, 1, '1', '1587916431', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033ppp0b6', 'mzc002001pvxwzy', '14', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('x0033sopvmv', 'mzc002001pvxwzy', '25', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('x0033tjyc5h', 'mzc00200bqxuhqe', '34', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033u1kc1s', 'jnngbw19gy8ctes', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('x0033u1kc1s', 'mzc00200k12f5gi', '47', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('x0033ubwti3', 'mzc00200bqxuhqe', '27', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033ufx7fu', 'mzc002009mrek37', '23', NULL, NULL, NULL, 0, 1, '1', '1587916267', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033w4o5vc', 'mzc00200z9th9sx', '23', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('x0033x1nv02', 'mzc0020095tf0wm', '14', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0022kj5hce', 'zgwpjn6b4mifpg4', '21', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0022qe4bf0', 'zgwpjn6b4mifpg4', '10', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029cgko56', 'c0oqsamtnxba64q', '1', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029chhk6g', 'xmw2gfef226jygj', '4', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029cpgckd', 'xmw2gfef226jygj', '71', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029g4c22l', 'xmw2gfef226jygj', '15', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029x0e47f', 'xmw2gfef226jygj', '68', NULL, NULL, NULL, 0, 1, '1', '1587916293', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0029x17xb6', 'i8wue9gam2mewxf', '24', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0030wpe2wu', 'wu1e7mrffzvibjy', '29', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y003240aued', 'mzc00200f995x6t', '9', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y00327p8bq6', '2nnk0mjf3bsk6tt', '2', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y00327v6xku', 'mzc00200f995x6t', '44', NULL, NULL, NULL, 0, 1, '1', '1587916333', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y003335mc96', 'jnngbw19gy8ctes', '20', NULL, NULL, NULL, 19, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('y00335565mj', 'mzc0020095tf0wm', '3', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0033f90lot', 'mzc00200q06w7zx', '11', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('y0033lhdknz', 'mzc00200bqxuhqe', '20', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0033mmrdy8', 'mzc00200z9th9sx', '26', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0033n0d6os', 'dxd1v76tmu0wjuj', '62', NULL, NULL, NULL, 50, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('y0033n0d6os', 'Q4FrbX7lSzbrMX', '62', NULL, NULL, NULL, 50, 1, NULL, NULL, '0', '1590716412');
INSERT INTO `lea_mini_video_item` VALUES ('y0033nxtmva', 'dxd1v76tmu0wjuj', '56', NULL, NULL, NULL, 44, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('y0033nxtmva', 'Q4FrbX7lSzbrMX', '56', NULL, NULL, NULL, 44, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('y0033pyzcdx', 'mzc00200z9th9sx', '34', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0033rgxz5k', 'jnngbw19gy8ctes', '16', NULL, NULL, NULL, 15, 1, NULL, NULL, '1', '1589116840');
INSERT INTO `lea_mini_video_item` VALUES ('y0033wcafrt', 'mzc00200088clbp', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590832');
INSERT INTO `lea_mini_video_item` VALUES ('y0033wcafrt', 'mzc00200ibqz3tc', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('y0033wcafrt', 'otff8quzy6b2dlw', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('y0033wcafrt', 'xmw2gfef226jygj', '46', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590839');
INSERT INTO `lea_mini_video_item` VALUES ('y0033wqqxac', 'mzc00200z9th9sx', '2', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('y0033y61q64', 'mzc00200q06w7zx', '13', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');
INSERT INTO `lea_mini_video_item` VALUES ('z0022eblexg', 'zgwpjn6b4mifpg4', '27', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0022kfznfn', 'zgwpjn6b4mifpg4', '18', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0022l8hfih', 'zgwpjn6b4mifpg4', '9', NULL, NULL, NULL, 0, 1, '1', '1587916502', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0025i4ergx', '41dicgms0277zoz', '番外', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0025ms7ifo', '41dicgms0277zoz', '15', NULL, NULL, NULL, 0, 1, '1', '1587916533', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z00280khzsf', 'i8wue9gam2mewxf', '19', NULL, NULL, NULL, 0, 1, '1', '1587916520', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0029aw0rln', 'xmw2gfef226jygj', '19', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0029mpohg7', 'c0oqsamtnxba64q', '8', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0029pplt43', 'xmw2gfef226jygj', '8', NULL, NULL, NULL, 0, 1, '1', '1587916292', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0029qo8t31', 'c0oqsamtnxba64q', '5', NULL, NULL, NULL, 0, 1, '1', '1587916479', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z003044noq2', 'wu1e7mrffzvibjy', '6', NULL, NULL, NULL, 0, 1, '1', '1587916312', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z00322f8i6o', '2nnk0mjf3bsk6tt', '9', NULL, NULL, NULL, 0, 1, '1', '1587916466', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'dxd1v76tmu0wjuj', '27', NULL, NULL, NULL, 26, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'jnngbw19gy8ctes', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109232');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'mzc00200088clbp', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'mzc00200ibqz3tc', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634033');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'otff8quzy6b2dlw', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634036');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'Q4FrbX7lSzbrMX', '27', NULL, NULL, NULL, 26, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('z003304ppg4', 'xmw2gfef226jygj', '27', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('z0033053hls', 'mzc0020095tf0wm', '45', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z00332u38i8', 'mzc00200088clbp', '11', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('z00332u38i8', 'mzc00200ibqz3tc', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('z00332u38i8', 'otff8quzy6b2dlw', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('z00332u38i8', 'xmw2gfef226jygj', '11', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('z00333udxss', 'dxd1v76tmu0wjuj', '54', NULL, NULL, NULL, 42, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('z00333udxss', 'jnngbw19gy8ctes', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589109233');
INSERT INTO `lea_mini_video_item` VALUES ('z00333udxss', 'mzc00200k12f5gi', '54', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1589066032');
INSERT INTO `lea_mini_video_item` VALUES ('z00333udxss', 'Q4FrbX7lSzbrMX', '54', NULL, NULL, NULL, 42, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('z003347tyzn', 'mzc00200z9th9sx', '5', NULL, NULL, NULL, 0, 1, '1', '1587916375', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'dxd1v76tmu0wjuj', '7', NULL, NULL, NULL, 6, 1, NULL, NULL, '1', '1590287867');
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'mzc00200088clbp', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634031');
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'mzc00200ibqz3tc', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634032');
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'otff8quzy6b2dlw', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634035');
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'Q4FrbX7lSzbrMX', '7', NULL, NULL, NULL, 6, 1, NULL, NULL, '0', '1590716410');
INSERT INTO `lea_mini_video_item` VALUES ('z003349skxc', 'xmw2gfef226jygj', '7', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588634037');
INSERT INTO `lea_mini_video_item` VALUES ('z003387fgfz', 'mzc00200088clbp', '62', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590833');
INSERT INTO `lea_mini_video_item` VALUES ('z003387fgfz', 'mzc00200ibqz3tc', '62', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590834');
INSERT INTO `lea_mini_video_item` VALUES ('z003387fgfz', 'otff8quzy6b2dlw', '62', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590838');
INSERT INTO `lea_mini_video_item` VALUES ('z003387fgfz', 'xmw2gfef226jygj', '62', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588590840');
INSERT INTO `lea_mini_video_item` VALUES ('z0033cjcdvz', 'mzc00200bqxuhqe', '31', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0033d18445', 'mzc002001pvxwzy', '2', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('z0033g7mxnc', 'dxd1v76tmu0wjuj', '57', NULL, NULL, NULL, 45, 1, NULL, NULL, '1', '1590287868');
INSERT INTO `lea_mini_video_item` VALUES ('z0033g7mxnc', 'Q4FrbX7lSzbrMX', '57', NULL, NULL, NULL, 45, 1, NULL, NULL, '0', '1590716411');
INSERT INTO `lea_mini_video_item` VALUES ('z0033k3d282', 'mzc00200bqxuhqe', '41', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0033l0jw7c', 'mzc00200088clbp', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('z0033l0jw7c', 'mzc00200ibqz3tc', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('z0033l0jw7c', 'otff8quzy6b2dlw', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('z0033l0jw7c', 'xmw2gfef226jygj', '17', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259353');
INSERT INTO `lea_mini_video_item` VALUES ('z0033mggq1t', 'mzc002001pvxwzy', '19', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('z0033nuiagv', 'mzc0020095tf0wm', '13', NULL, NULL, NULL, 0, 1, '1', '1587916415', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0033o3f9jh', 'mzc00200088clbp', '6', NULL, NULL, NULL, 0, 1, '1', '1587916225', '0', '1588259350');
INSERT INTO `lea_mini_video_item` VALUES ('z0033o3f9jh', 'mzc00200ibqz3tc', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259351');
INSERT INTO `lea_mini_video_item` VALUES ('z0033o3f9jh', 'otff8quzy6b2dlw', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('z0033o3f9jh', 'xmw2gfef226jygj', '6', NULL, NULL, NULL, 0, 1, NULL, NULL, '0', '1588259352');
INSERT INTO `lea_mini_video_item` VALUES ('z0033pkasa2', 'mzc00200bqxuhqe', '13', NULL, NULL, NULL, 0, 1, '1', '1587916391', NULL, NULL);
INSERT INTO `lea_mini_video_item` VALUES ('z0033pmts69', 'mzc002001pvxwzy', '18', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1588642377');
INSERT INTO `lea_mini_video_item` VALUES ('z0033vkh6tu', 'otff8quzy6b2dlw', '8', NULL, NULL, NULL, 0, 1, NULL, NULL, '1', '1587916137');
INSERT INTO `lea_mini_video_item` VALUES ('z0033zg18xu', 'mzc00200q06w7zx', '12', NULL, NULL, NULL, 0, 1, '1', '1587915997', '1', '1587950816');

-- ----------------------------
-- Table structure for lea_mini_video_order
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_order`;
CREATE TABLE `lea_mini_video_order`  (
  `oid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买订单',
  `vid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频类型',
  `xid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当是电视剧必填',
  `cost` decimal(8, 2) NOT NULL COMMENT '费用',
  `paid` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否支付',
  `pay_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付时间',
  `is_refund` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否退款',
  `is_inform` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否通知',
  `refund_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '退款金额',
  `refund_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退款时间',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单状态 0付款中 1 已付款 2 已退款',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频购买订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_order
-- ----------------------------
INSERT INTO `lea_mini_video_order` VALUES ('O202005090936507369', '06f338d6r1wa3my', 10, 'movie', '', 0.01, 1, '1588988216', 0, 0, NULL, NULL, NULL, 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005090940456803', 'mzc00200rudqy7b', 10, 'movie', '', 0.01, 0, NULL, 0, 0, NULL, NULL, '1588988445', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005091005262324', 'mzc00200rudqy7b', 10, 'movie', '', 0.01, 0, '1588989933', 0, 0, NULL, NULL, '1588989926', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005091314171464', 'mzc00200rudqy7b', 10, 'movie', '', 0.01, 1, '1589001264', 0, 0, NULL, NULL, '1589001257', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092143576357', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589031837', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092144249399', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589031864', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092144305107', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589031870', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092145386930', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589031938', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092145476013', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589031947', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092146542820', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589032014', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092317017938', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589037421', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092322004312', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589037720', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005092322135502', 'dxd1v76tmu0wjuj', 10, 'tv', 's0033s6x9tw', 0.01, 1, '1589037739', 0, 0, NULL, NULL, '1589037733', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005100044092054', '06f338d6r1wa3my', 25, 'movie', '', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589042649', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005100918309460', 'dxd1v76tmu0wjuj', 25, 'movie', '', 0.00, 0, NULL, 0, 0, NULL, NULL, '1589073510', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005100918406531', 'dxd1v76tmu0wjuj', 25, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589073520', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005100919228193', 'dxd1v76tmu0wjuj', 25, 'tv', 's0033s6x9tw', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589073562', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005100924252246', 'dxd1v76tmu0wjuj', 26, 'movie', '', 0.00, 0, NULL, 0, 0, NULL, NULL, '1589073865', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005101320303994', 'dxd1v76tmu0wjuj', 25, 'tv', 's0033s6x9tw', 0.01, 1, '1589088038', 0, 0, NULL, NULL, '1589088030', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005101850463354', 'dxd1v76tmu0wjuj', 26, 'tv', 's0033s6x9tw', 0.01, 1, '1589107907', 0, 0, NULL, NULL, '1589107846', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005111341178764', '06f338d6r1wa3my', 27, 'movie', '', 0.01, 1, '1589175688', 0, 0, NULL, NULL, '1589175677', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005120758329328', '06f338d6r1wa3my', 25, 'movie', '', 0.01, 0, NULL, 0, 0, NULL, NULL, '1589241512', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005161533266777', 'dxd1v76tmu0wjuj', 38, 'movie', '', 0.00, 0, NULL, 0, 0, NULL, NULL, '1589614406', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005161533359961', 'dxd1v76tmu0wjuj', 38, 'movie', '', 0.00, 0, NULL, 0, 0, NULL, NULL, '1589614415', 0);
INSERT INTO `lea_mini_video_order` VALUES ('O202005221237255471', '06f338d6r1wa3my', 25, 'movie', '', 0.01, 1, '1590122261', 0, 0, NULL, NULL, '1590122245', 1);
INSERT INTO `lea_mini_video_order` VALUES ('O202005221240279911', 'mzc00200rudqy7b', 25, 'movie', '', 0.01, 0, NULL, 0, 0, NULL, NULL, '1590122427', 0);

-- ----------------------------
-- Table structure for lea_mini_video_plan
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_plan`;
CREATE TABLE `lea_mini_video_plan`  (
  `uid` int(8) NOT NULL COMMENT '用户ID',
  `vid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频id',
  `xid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '剧集id',
  `sec` decimal(8, 2) NOT NULL COMMENT '播放时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`vid`, `xid`, `uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '播放进度' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_plan
-- ----------------------------
INSERT INTO `lea_mini_video_plan` VALUES (10, '06f338d6r1wa3my', '', 0.00, '1590553021');
INSERT INTO `lea_mini_video_plan` VALUES (25, '06f338d6r1wa3my', '', 215.80, '1590122347');
INSERT INTO `lea_mini_video_plan` VALUES (27, '06f338d6r1wa3my', '', 38.25, '1589175742');
INSERT INTO `lea_mini_video_plan` VALUES (39, '06f338d6r1wa3my', '', 0.00, '1589965728');
INSERT INTO `lea_mini_video_plan` VALUES (10, '3fvg46217gw800n', '', 434.48, '1589118968');
INSERT INTO `lea_mini_video_plan` VALUES (25, '3fvg46217gw800n', '', 0.00, '1590466343');
INSERT INTO `lea_mini_video_plan` VALUES (10, '41dicgms0277zoz', '', 0.00, '1589118972');
INSERT INTO `lea_mini_video_plan` VALUES (10, '714pdmcrnqdlmdx', '', 17.85, '1589602189');
INSERT INTO `lea_mini_video_plan` VALUES (25, '714pdmcrnqdlmdx', '', 7603.68, '1590508512');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'bv8m91i5jj1w1ww', '', 0.00, '1590496834');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'd6mvesrx6j2ux4x', '', 0.00, '1589175477');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'd6mvesrx6j2ux4x', '', 0.00, '1590496824');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'd8t20577qy9vy13', '', 0.00, '1589175483');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dfg8138lannbyjx', '', 0.00, '1590540585');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dfg8138lannbyjx', '', 3.99, '1590122442');
INSERT INTO `lea_mini_video_plan` VALUES (26, 'dxd1v76tmu0wjuj', '', 0.00, '1589073943');
INSERT INTO `lea_mini_video_plan` VALUES (38, 'dxd1v76tmu0wjuj', '', 0.00, '1589614417');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dxd1v76tmu0wjuj', 'b0033z8du2y', 8.35, '1589088084');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'e00343tpajj', 5.96, '1590288353');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dxd1v76tmu0wjuj', 'e00343tpajj', 17.87, '1590465968');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'f003323u5wn', 96.91, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'g0033e6mree', 2637.62, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'h00331prv3a', 879.42, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', 2.46, '1589042990');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', 2421.86, '1589326633');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'j0033dbgp50', 0.00, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'n003304gblj', 123.08, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', 5.87, '1589116344');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', 39.30, '1589088060');
INSERT INTO `lea_mini_video_plan` VALUES (26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', 759.46, '1589695608');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', 0.35, '1590551308');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', 2578.17, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'p0033wsbtmx', 884.08, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 's0033hv9q3o', 28.30, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 's0033m6u4or', 0.00, '1589243219');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', 0.00, '1589103744');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', 40.06, '1590122390');
INSERT INTO `lea_mini_video_plan` VALUES (26, 'dxd1v76tmu0wjuj', 's0033s6x9tw', 189.69, '1589108271');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 't00331hibe7', 0.00, '1590287425');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'u0033n5ew36', 5.37, '1589326618');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'w003392c5xt', 23.84, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (25, 'dxd1v76tmu0wjuj', 'w003392c5xt', 56.72, '1590122371');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'w0033nieyca', 2577.24, '1589326622');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'x0033u1kc1s', 2555.77, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'dxd1v76tmu0wjuj', 'z003349skxc', 879.42, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'e3pdjwjjbbcmsow', '', 681.68, '1590553461');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'eazfh1m41s8e3bc', '', 0.00, '1590553480');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'eazfh1m41s8e3bc', '', 0.00, '1589241481');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'f7pqur8uhmzltps', '', 0.00, '1590553475');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'gKLoZBH5RnX0UB', '', 0.00, '1590674597');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'gqPlZBH6Q0L5TB', '', 6029.60, '1590553011');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'gwz8nqvc78oexgm', '', 0.00, '1589283969');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'hzssbvhzc7xyr95', '', 0.00, '1589283978');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'iegjnp9pe9p6fp1', '', 0.00, '1589283639');
INSERT INTO `lea_mini_video_plan` VALUES (28, 'iegjnp9pe9p6fp1', '', 0.00, '1589181726');
INSERT INTO `lea_mini_video_plan` VALUES (29, 'iegjnp9pe9p6fp1', '', 0.00, '1589182954');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'iqwvbujgzj5obv1', '', 426.19, '1589284021');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'l8r3gm1zzu5u3nk', '', 7625.60, '1589177611');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mlet450ud9xai1h', '', 820.63, '1589284103');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mlet450ud9xai1h', '', 120.09, '1590122515');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc0020004c4hf9', '', 0.00, '1590553593');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc0020004c4hf9', '', 1222.33, '1590239324');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200189u0ml', '', 0.00, '1589115229');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002001pvxwzy', 'i0033cgr1vn', 0.00, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002001pvxwzy', 'i0033ciehdw', 15.10, '1589181328');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002003qvshpe', '', 0.00, '1589115242');
INSERT INTO `lea_mini_video_plan` VALUES (43, 'mzc002003qvshpe', '', 0.00, '1590149457');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc0020095tf0wm', 's00338f1hq8', 14.20, '1590018070');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc002009mrek37', '', 0.00, '1590540617');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002009mrek37', 'f0033klruar', 4.06, '1589043100');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002009mrek37', 'n0033a2a5e2', 12.20, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc002009mrek37', 'u0033akv5ow', 0.00, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (39, 'mzc002009mrek37', 'u0033akv5ow', 619.00, '1589965762');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200bqxuhqe', 'd0033lp15h7', 0.00, '1590018047');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200f995x6t', 'p0032cratdm', 262.22, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200f995x6t', 'x0032rdq22t', 255.41, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200h4tmk4d', '', 3.48, '1589284114');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc00200i8egfzh', '', 0.00, '1590122672');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200k12f5gi', 'f0033d4ozs0', 0.00, '1589104289');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200k12f5gi', 'i0033y8f658', 0.00, '1590674554');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200kharxoe', '', 0.00, '1590674602');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc00200kharxoe', '', 4.42, '1589073442');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200kqs6xxb', '', 4.34, '1589117342');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200mnujrjg', '', 0.00, '1589104314');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc00200q06w7zx', '', 0.00, '1590122395');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'c0033ei12np', 1.82, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'd0033x426wl', 161.91, '1589043037');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'h0033sei944', 1.72, '1590674622');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'j0033kbdjsv', 120.70, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'j0033nh5uwi', 154.50, '1589042976');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'j0033ph4hq8', 93.40, '1589042972');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'l0033e3vjlf', 127.36, '1589043039');
INSERT INTO `lea_mini_video_plan` VALUES (43, 'mzc00200q06w7zx', 'l0033e3vjlf', 1292.17, '1590149136');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'l0033nd693f', 16.14, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'l0033spqumo', 12.09, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (41, 'mzc00200q06w7zx', 'l0033spqumo', 678.47, '1590133492');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'o00339yn8vo', 116.30, '1589042880');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'p0033kp2kmj', 1042.00, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'r0033bk1mxp', 11.82, '1589042883');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 'r0033zibx4a', 1028.40, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 't00336j5wpa', 1070.44, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200q06w7zx', 't0033feafra', 120.50, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200r4rq2u1', '', 3425.14, '1589284869');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc00200r4rq2u1', '', 0.00, '1590122530');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200rudqy7b', '', 2.70, '1589196063');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'mzc00200rudqy7b', '', 0.00, '1590122436');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'mzc00200xf1pgs4', '', 0.00, '1589043127');
INSERT INTO `lea_mini_video_plan` VALUES (25, 'og0eputlxwet1cn', '', 7.91, '1590122695');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'orrvwxp2uvs5n5e', '', 0.00, '1590553714');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'owyequak2ck3bra', '', 2.71, NULL);
INSERT INTO `lea_mini_video_plan` VALUES (10, 'Q4FrbX7lSzbrMX', '1', 0.00, '1590551263');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'Q4FrbX7lSzbrMX', '4', 0.00, '1590550264');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'Q4FrbX7lSzbrMX', '42', 9.29, '1590552899');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'uiq0rxuywu508qr', '', 0.00, '1590553752');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'undefined', '', 0.00, '1590550246');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'v2098lbuihuqs11', '', 9359.53, '1589043169');
INSERT INTO `lea_mini_video_plan` VALUES (10, 'v3sfrz8ws9ew7fw', '', 6150.60, '1590553804');

-- ----------------------------
-- Table structure for lea_mini_video_record
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_record`;
CREATE TABLE `lea_mini_video_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `vid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `xid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电视剧集数ID',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频浏览记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_record
-- ----------------------------
INSERT INTO `lea_mini_video_record` VALUES (1, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588689565');
INSERT INTO `lea_mini_video_record` VALUES (2, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588689949');
INSERT INTO `lea_mini_video_record` VALUES (3, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588689951');
INSERT INTO `lea_mini_video_record` VALUES (4, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588689980');
INSERT INTO `lea_mini_video_record` VALUES (5, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690062');
INSERT INTO `lea_mini_video_record` VALUES (6, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690228');
INSERT INTO `lea_mini_video_record` VALUES (7, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690229');
INSERT INTO `lea_mini_video_record` VALUES (8, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690389');
INSERT INTO `lea_mini_video_record` VALUES (9, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690472');
INSERT INTO `lea_mini_video_record` VALUES (10, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690706');
INSERT INTO `lea_mini_video_record` VALUES (11, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690871');
INSERT INTO `lea_mini_video_record` VALUES (12, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588690935');
INSERT INTO `lea_mini_video_record` VALUES (13, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588691002');
INSERT INTO `lea_mini_video_record` VALUES (14, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588691055');
INSERT INTO `lea_mini_video_record` VALUES (15, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588691145');
INSERT INTO `lea_mini_video_record` VALUES (16, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588691168');
INSERT INTO `lea_mini_video_record` VALUES (17, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1588691946');
INSERT INTO `lea_mini_video_record` VALUES (18, 10, 'mzc00200q06w7zx', 't0033feafra', '1588692566');
INSERT INTO `lea_mini_video_record` VALUES (19, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588692842');
INSERT INTO `lea_mini_video_record` VALUES (20, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588692861');
INSERT INTO `lea_mini_video_record` VALUES (21, 10, 'mzc00200q06w7zx', 't0033feafra', '1588692875');
INSERT INTO `lea_mini_video_record` VALUES (22, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588692882');
INSERT INTO `lea_mini_video_record` VALUES (23, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588693245');
INSERT INTO `lea_mini_video_record` VALUES (24, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693247');
INSERT INTO `lea_mini_video_record` VALUES (25, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693274');
INSERT INTO `lea_mini_video_record` VALUES (26, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693320');
INSERT INTO `lea_mini_video_record` VALUES (27, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693516');
INSERT INTO `lea_mini_video_record` VALUES (28, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693521');
INSERT INTO `lea_mini_video_record` VALUES (29, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693534');
INSERT INTO `lea_mini_video_record` VALUES (30, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693600');
INSERT INTO `lea_mini_video_record` VALUES (31, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693611');
INSERT INTO `lea_mini_video_record` VALUES (32, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693639');
INSERT INTO `lea_mini_video_record` VALUES (33, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693751');
INSERT INTO `lea_mini_video_record` VALUES (34, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693752');
INSERT INTO `lea_mini_video_record` VALUES (35, 10, 'mzc00200q06w7zx', 't0033feafra', '1588693833');
INSERT INTO `lea_mini_video_record` VALUES (36, 10, 'mzc00200q06w7zx', 'l0033e3vjlf', '1588693850');
INSERT INTO `lea_mini_video_record` VALUES (37, 10, 'mzc00200q06w7zx', 'l0033e3vjlf', '1588693860');
INSERT INTO `lea_mini_video_record` VALUES (38, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588693889');
INSERT INTO `lea_mini_video_record` VALUES (39, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588693892');
INSERT INTO `lea_mini_video_record` VALUES (40, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1588693950');
INSERT INTO `lea_mini_video_record` VALUES (41, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1588693957');
INSERT INTO `lea_mini_video_record` VALUES (42, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588693964');
INSERT INTO `lea_mini_video_record` VALUES (43, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588693969');
INSERT INTO `lea_mini_video_record` VALUES (44, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588694487');
INSERT INTO `lea_mini_video_record` VALUES (45, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588724046');
INSERT INTO `lea_mini_video_record` VALUES (46, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588724047');
INSERT INTO `lea_mini_video_record` VALUES (47, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724062');
INSERT INTO `lea_mini_video_record` VALUES (48, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724064');
INSERT INTO `lea_mini_video_record` VALUES (49, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724234');
INSERT INTO `lea_mini_video_record` VALUES (50, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724244');
INSERT INTO `lea_mini_video_record` VALUES (51, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724288');
INSERT INTO `lea_mini_video_record` VALUES (52, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724329');
INSERT INTO `lea_mini_video_record` VALUES (53, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724461');
INSERT INTO `lea_mini_video_record` VALUES (54, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724463');
INSERT INTO `lea_mini_video_record` VALUES (55, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1588724484');
INSERT INTO `lea_mini_video_record` VALUES (56, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1588724513');
INSERT INTO `lea_mini_video_record` VALUES (57, 10, 'mzc00200q06w7zx', 't0033feafra', '1588724519');
INSERT INTO `lea_mini_video_record` VALUES (58, 10, 'mzc00200q06w7zx', 't0033feafra', '1588724528');
INSERT INTO `lea_mini_video_record` VALUES (59, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588724564');
INSERT INTO `lea_mini_video_record` VALUES (60, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588724565');
INSERT INTO `lea_mini_video_record` VALUES (61, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588724574');
INSERT INTO `lea_mini_video_record` VALUES (62, 10, 'dxd1v76tmu0wjuj', 'n003304gblj', '1588724577');
INSERT INTO `lea_mini_video_record` VALUES (63, 10, 'dxd1v76tmu0wjuj', 'j0033dbgp50', '1588724592');
INSERT INTO `lea_mini_video_record` VALUES (64, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724598');
INSERT INTO `lea_mini_video_record` VALUES (65, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724600');
INSERT INTO `lea_mini_video_record` VALUES (66, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724612');
INSERT INTO `lea_mini_video_record` VALUES (67, 10, 'mzc00200q06w7zx', 't0033feafra', '1588724616');
INSERT INTO `lea_mini_video_record` VALUES (68, 10, 'mzc00200q06w7zx', 't0033feafra', '1588724793');
INSERT INTO `lea_mini_video_record` VALUES (69, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588724799');
INSERT INTO `lea_mini_video_record` VALUES (70, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588724800');
INSERT INTO `lea_mini_video_record` VALUES (71, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724807');
INSERT INTO `lea_mini_video_record` VALUES (72, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588724813');
INSERT INTO `lea_mini_video_record` VALUES (73, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724827');
INSERT INTO `lea_mini_video_record` VALUES (74, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588724831');
INSERT INTO `lea_mini_video_record` VALUES (75, 10, 'mzc00200q06w7zx', 't00336j5wpa', '1588724834');
INSERT INTO `lea_mini_video_record` VALUES (76, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588724842');
INSERT INTO `lea_mini_video_record` VALUES (77, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588724847');
INSERT INTO `lea_mini_video_record` VALUES (78, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1588724848');
INSERT INTO `lea_mini_video_record` VALUES (79, 10, 'mzc00200q06w7zx', 't0033feafra', '1588724852');
INSERT INTO `lea_mini_video_record` VALUES (80, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588724856');
INSERT INTO `lea_mini_video_record` VALUES (81, 10, 'mzc00200q06w7zx', 'r0033bk1mxp', '1588724861');
INSERT INTO `lea_mini_video_record` VALUES (82, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588724866');
INSERT INTO `lea_mini_video_record` VALUES (83, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588724907');
INSERT INTO `lea_mini_video_record` VALUES (84, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588727313');
INSERT INTO `lea_mini_video_record` VALUES (85, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729498');
INSERT INTO `lea_mini_video_record` VALUES (86, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729499');
INSERT INTO `lea_mini_video_record` VALUES (87, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729501');
INSERT INTO `lea_mini_video_record` VALUES (88, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729658');
INSERT INTO `lea_mini_video_record` VALUES (89, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729663');
INSERT INTO `lea_mini_video_record` VALUES (90, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729664');
INSERT INTO `lea_mini_video_record` VALUES (91, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729702');
INSERT INTO `lea_mini_video_record` VALUES (92, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729717');
INSERT INTO `lea_mini_video_record` VALUES (93, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588729760');
INSERT INTO `lea_mini_video_record` VALUES (94, 10, 'mzc00200q06w7zx', 'j0033kbdjsv', '1588729764');
INSERT INTO `lea_mini_video_record` VALUES (95, 10, 'mzc00200q06w7zx', 'j0033kbdjsv', '1588729772');
INSERT INTO `lea_mini_video_record` VALUES (96, 10, 'mzc00200q06w7zx', 'c0033ei12np', '1588729792');
INSERT INTO `lea_mini_video_record` VALUES (97, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588730155');
INSERT INTO `lea_mini_video_record` VALUES (98, 10, 'dxd1v76tmu0wjuj', 'h00331prv3a', '1588730158');
INSERT INTO `lea_mini_video_record` VALUES (99, 10, 'dxd1v76tmu0wjuj', 'z003349skxc', '1588730181');
INSERT INTO `lea_mini_video_record` VALUES (100, 10, 'dxd1v76tmu0wjuj', 'z003349skxc', '1588730195');
INSERT INTO `lea_mini_video_record` VALUES (101, 10, 'mzc00200q06w7zx', 'c0033ei12np', '1588730206');
INSERT INTO `lea_mini_video_record` VALUES (102, 10, 'mzc00200q06w7zx', 't0033feafra', '1588730214');
INSERT INTO `lea_mini_video_record` VALUES (103, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588730223');
INSERT INTO `lea_mini_video_record` VALUES (104, 10, 'mzc00200q06w7zx', 't00336j5wpa', '1588730224');
INSERT INTO `lea_mini_video_record` VALUES (105, 10, 'mzc00200q06w7zx', 't00336j5wpa', '1588730226');
INSERT INTO `lea_mini_video_record` VALUES (106, 10, 'mzc00200q06w7zx', 'r0033bk1mxp', '1588730237');
INSERT INTO `lea_mini_video_record` VALUES (107, 10, 'mzc00200q06w7zx', 'r0033zibx4a', '1588730246');
INSERT INTO `lea_mini_video_record` VALUES (108, 10, 'mzc00200q06w7zx', 'j0033kbdjsv', '1588730252');
INSERT INTO `lea_mini_video_record` VALUES (109, 10, 'mzc00200q06w7zx', 't0033feafra', '1588730261');
INSERT INTO `lea_mini_video_record` VALUES (110, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588730271');
INSERT INTO `lea_mini_video_record` VALUES (111, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588730286');
INSERT INTO `lea_mini_video_record` VALUES (112, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588730311');
INSERT INTO `lea_mini_video_record` VALUES (113, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588730319');
INSERT INTO `lea_mini_video_record` VALUES (114, 10, 'dxd1v76tmu0wjuj', 'z003349skxc', '1588730338');
INSERT INTO `lea_mini_video_record` VALUES (115, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730351');
INSERT INTO `lea_mini_video_record` VALUES (116, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1588730357');
INSERT INTO `lea_mini_video_record` VALUES (117, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730364');
INSERT INTO `lea_mini_video_record` VALUES (118, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730368');
INSERT INTO `lea_mini_video_record` VALUES (119, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730373');
INSERT INTO `lea_mini_video_record` VALUES (120, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730378');
INSERT INTO `lea_mini_video_record` VALUES (121, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588730378');
INSERT INTO `lea_mini_video_record` VALUES (122, 10, 'mzc0020095tf0wm', 'v00335ec85n', '1588730382');
INSERT INTO `lea_mini_video_record` VALUES (123, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588730382');
INSERT INTO `lea_mini_video_record` VALUES (124, 10, 'mzc002009mrek37', 'g00330i69rb', '1588730387');
INSERT INTO `lea_mini_video_record` VALUES (125, 10, 'mzc002009mrek37', 'u0033akv5ow', '1588730398');
INSERT INTO `lea_mini_video_record` VALUES (126, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588730418');
INSERT INTO `lea_mini_video_record` VALUES (127, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588730419');
INSERT INTO `lea_mini_video_record` VALUES (128, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1588730448');
INSERT INTO `lea_mini_video_record` VALUES (129, 10, '06f338d6r1wa3my', '', '1588730452');
INSERT INTO `lea_mini_video_record` VALUES (130, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588732992');
INSERT INTO `lea_mini_video_record` VALUES (131, 10, 'mzc00200q06w7zx', 'h0033sei944', '1588732995');
INSERT INTO `lea_mini_video_record` VALUES (132, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588732998');
INSERT INTO `lea_mini_video_record` VALUES (133, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588738252');
INSERT INTO `lea_mini_video_record` VALUES (134, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1588738253');
INSERT INTO `lea_mini_video_record` VALUES (135, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588738259');
INSERT INTO `lea_mini_video_record` VALUES (136, 10, 'dxd1v76tmu0wjuj', 'z003349skxc', '1588738270');
INSERT INTO `lea_mini_video_record` VALUES (137, 10, 'dxd1v76tmu0wjuj', 'p0033wsbtmx', '1588738277');
INSERT INTO `lea_mini_video_record` VALUES (138, 10, 'dxd1v76tmu0wjuj', 'p0033wsbtmx', '1588738278');
INSERT INTO `lea_mini_video_record` VALUES (139, 10, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1588738283');
INSERT INTO `lea_mini_video_record` VALUES (140, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1588738380');
INSERT INTO `lea_mini_video_record` VALUES (141, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588738446');
INSERT INTO `lea_mini_video_record` VALUES (142, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588738447');
INSERT INTO `lea_mini_video_record` VALUES (143, 10, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1588738553');
INSERT INTO `lea_mini_video_record` VALUES (144, 10, '06f338d6r1wa3my', '', '1588738682');
INSERT INTO `lea_mini_video_record` VALUES (145, 10, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1588738692');
INSERT INTO `lea_mini_video_record` VALUES (146, 10, '06f338d6r1wa3my', '', '1588738696');
INSERT INTO `lea_mini_video_record` VALUES (147, 10, '06f338d6r1wa3my', '', '1588738737');
INSERT INTO `lea_mini_video_record` VALUES (148, 10, 'mzc00200xf1pgs4', '', '1588738780');
INSERT INTO `lea_mini_video_record` VALUES (149, 10, 'mzc00200mnujrjg', '', '1588738790');
INSERT INTO `lea_mini_video_record` VALUES (150, 10, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1588738800');
INSERT INTO `lea_mini_video_record` VALUES (151, 10, 'dxd1v76tmu0wjuj', 's0033hv9q3o', '1588738807');
INSERT INTO `lea_mini_video_record` VALUES (152, 10, 'dxd1v76tmu0wjuj', 's0033hv9q3o', '1588738808');
INSERT INTO `lea_mini_video_record` VALUES (153, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588738814');
INSERT INTO `lea_mini_video_record` VALUES (154, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588738821');
INSERT INTO `lea_mini_video_record` VALUES (155, 10, 'owyequak2ck3bra', '', '1588738834');
INSERT INTO `lea_mini_video_record` VALUES (156, 10, 'mzc00200rudqy7b', '', '1588738858');
INSERT INTO `lea_mini_video_record` VALUES (157, 10, 'mzc00200f995x6t', 'n0032y9pljr', '1588738866');
INSERT INTO `lea_mini_video_record` VALUES (158, 10, 'mzc00200f995x6t', 'n0032y9pljr', '1588738867');
INSERT INTO `lea_mini_video_record` VALUES (159, 10, 'mzc00200f995x6t', 'x0032rdq22t', '1588738873');
INSERT INTO `lea_mini_video_record` VALUES (160, 10, 'mzc00200f995x6t', 'x0032rdq22t', '1588738875');
INSERT INTO `lea_mini_video_record` VALUES (161, 10, 'mzc00200f995x6t', 'x0032rdq22t', '1588739040');
INSERT INTO `lea_mini_video_record` VALUES (162, 10, 'mzc00200f995x6t', 'x0032rdq22t', '1588739041');
INSERT INTO `lea_mini_video_record` VALUES (163, 10, 'mzc00200f995x6t', 'p0032cratdm', '1588739052');
INSERT INTO `lea_mini_video_record` VALUES (164, 10, 'mzc00200f995x6t', 'p0032cratdm', '1588739052');
INSERT INTO `lea_mini_video_record` VALUES (165, 10, 'mzc00200f995x6t', 'p0032cratdm', '1588739113');
INSERT INTO `lea_mini_video_record` VALUES (166, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588748012');
INSERT INTO `lea_mini_video_record` VALUES (167, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588748014');
INSERT INTO `lea_mini_video_record` VALUES (168, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1588748015');
INSERT INTO `lea_mini_video_record` VALUES (169, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588748019');
INSERT INTO `lea_mini_video_record` VALUES (170, 10, 'mzc00200bqxuhqe', 'd0033lp15h7', '1588748024');
INSERT INTO `lea_mini_video_record` VALUES (171, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588748027');
INSERT INTO `lea_mini_video_record` VALUES (172, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588748030');
INSERT INTO `lea_mini_video_record` VALUES (173, 10, 'mzc00200f995x6t', 'p0032cratdm', '1588748038');
INSERT INTO `lea_mini_video_record` VALUES (174, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1588748043');
INSERT INTO `lea_mini_video_record` VALUES (175, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588748051');
INSERT INTO `lea_mini_video_record` VALUES (176, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588748051');
INSERT INTO `lea_mini_video_record` VALUES (177, 10, 'mzc00200bqxuhqe', 'd0033lp15h7', '1588748053');
INSERT INTO `lea_mini_video_record` VALUES (178, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588755785');
INSERT INTO `lea_mini_video_record` VALUES (179, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588755787');
INSERT INTO `lea_mini_video_record` VALUES (180, 10, '06f338d6r1wa3my', '', '1588755810');
INSERT INTO `lea_mini_video_record` VALUES (181, 10, '06f338d6r1wa3my', '', '1588755831');
INSERT INTO `lea_mini_video_record` VALUES (182, 10, '06f338d6r1wa3my', '', '1588755834');
INSERT INTO `lea_mini_video_record` VALUES (183, 10, 'owyequak2ck3bra', '', '1588755841');
INSERT INTO `lea_mini_video_record` VALUES (184, 10, 'mzc00200xf1pgs4', '', '1588755879');
INSERT INTO `lea_mini_video_record` VALUES (185, 10, 'mzc00200rudqy7b', '', '1588755884');
INSERT INTO `lea_mini_video_record` VALUES (186, 10, 'mzc00200rudqy7b', '', '1588755886');
INSERT INTO `lea_mini_video_record` VALUES (187, 10, '06f338d6r1wa3my', '', '1588767446');
INSERT INTO `lea_mini_video_record` VALUES (188, 10, 'owyequak2ck3bra', '', '1588767457');
INSERT INTO `lea_mini_video_record` VALUES (189, 10, '06f338d6r1wa3my', '', '1588767528');
INSERT INTO `lea_mini_video_record` VALUES (190, 10, 'owyequak2ck3bra', '', '1588767533');
INSERT INTO `lea_mini_video_record` VALUES (191, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588767631');
INSERT INTO `lea_mini_video_record` VALUES (192, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588767643');
INSERT INTO `lea_mini_video_record` VALUES (193, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588767652');
INSERT INTO `lea_mini_video_record` VALUES (194, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588768074');
INSERT INTO `lea_mini_video_record` VALUES (195, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1588768132');
INSERT INTO `lea_mini_video_record` VALUES (196, 10, 'mzc00200q06w7zx', 'j0033nh5uwi', '1588768142');
INSERT INTO `lea_mini_video_record` VALUES (197, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1588768147');
INSERT INTO `lea_mini_video_record` VALUES (198, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768177');
INSERT INTO `lea_mini_video_record` VALUES (199, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768185');
INSERT INTO `lea_mini_video_record` VALUES (200, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768192');
INSERT INTO `lea_mini_video_record` VALUES (201, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768226');
INSERT INTO `lea_mini_video_record` VALUES (202, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768254');
INSERT INTO `lea_mini_video_record` VALUES (203, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768256');
INSERT INTO `lea_mini_video_record` VALUES (204, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768280');
INSERT INTO `lea_mini_video_record` VALUES (205, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768292');
INSERT INTO `lea_mini_video_record` VALUES (206, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768295');
INSERT INTO `lea_mini_video_record` VALUES (207, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768299');
INSERT INTO `lea_mini_video_record` VALUES (208, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768344');
INSERT INTO `lea_mini_video_record` VALUES (209, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768438');
INSERT INTO `lea_mini_video_record` VALUES (210, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768455');
INSERT INTO `lea_mini_video_record` VALUES (211, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768590');
INSERT INTO `lea_mini_video_record` VALUES (212, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768591');
INSERT INTO `lea_mini_video_record` VALUES (213, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768692');
INSERT INTO `lea_mini_video_record` VALUES (214, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768717');
INSERT INTO `lea_mini_video_record` VALUES (215, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768718');
INSERT INTO `lea_mini_video_record` VALUES (216, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768851');
INSERT INTO `lea_mini_video_record` VALUES (217, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768878');
INSERT INTO `lea_mini_video_record` VALUES (218, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768909');
INSERT INTO `lea_mini_video_record` VALUES (219, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768928');
INSERT INTO `lea_mini_video_record` VALUES (220, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768964');
INSERT INTO `lea_mini_video_record` VALUES (221, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768979');
INSERT INTO `lea_mini_video_record` VALUES (222, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588768987');
INSERT INTO `lea_mini_video_record` VALUES (223, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588769059');
INSERT INTO `lea_mini_video_record` VALUES (224, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588769088');
INSERT INTO `lea_mini_video_record` VALUES (225, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588769115');
INSERT INTO `lea_mini_video_record` VALUES (226, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588769143');
INSERT INTO `lea_mini_video_record` VALUES (227, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588769475');
INSERT INTO `lea_mini_video_record` VALUES (228, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1588769660');
INSERT INTO `lea_mini_video_record` VALUES (229, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588770136');
INSERT INTO `lea_mini_video_record` VALUES (230, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588770228');
INSERT INTO `lea_mini_video_record` VALUES (231, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588770279');
INSERT INTO `lea_mini_video_record` VALUES (232, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588770386');
INSERT INTO `lea_mini_video_record` VALUES (233, 10, 'dxd1v76tmu0wjuj', 'g0033e6mree', '1588770387');
INSERT INTO `lea_mini_video_record` VALUES (234, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588770448');
INSERT INTO `lea_mini_video_record` VALUES (235, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588770530');
INSERT INTO `lea_mini_video_record` VALUES (236, 10, 'dxd1v76tmu0wjuj', 'x0033u1kc1s', '1588770536');
INSERT INTO `lea_mini_video_record` VALUES (237, 10, 'dxd1v76tmu0wjuj', 'x0033u1kc1s', '1588770744');
INSERT INTO `lea_mini_video_record` VALUES (238, 10, 'dxd1v76tmu0wjuj', 'p0033fki6n1', '1588770746');
INSERT INTO `lea_mini_video_record` VALUES (239, 10, 'dxd1v76tmu0wjuj', 'w0033nieyca', '1588770772');
INSERT INTO `lea_mini_video_record` VALUES (240, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588770798');
INSERT INTO `lea_mini_video_record` VALUES (241, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588770801');
INSERT INTO `lea_mini_video_record` VALUES (242, 10, '06f338d6r1wa3my', '', '1588770838');
INSERT INTO `lea_mini_video_record` VALUES (243, 10, '06f338d6r1wa3my', '', '1588770840');
INSERT INTO `lea_mini_video_record` VALUES (244, 10, '06f338d6r1wa3my', '', '1588770841');
INSERT INTO `lea_mini_video_record` VALUES (245, 10, '06f338d6r1wa3my', '', '1588770920');
INSERT INTO `lea_mini_video_record` VALUES (246, 10, '06f338d6r1wa3my', '', '1588770946');
INSERT INTO `lea_mini_video_record` VALUES (247, 10, '06f338d6r1wa3my', '', '1588770960');
INSERT INTO `lea_mini_video_record` VALUES (248, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588770968');
INSERT INTO `lea_mini_video_record` VALUES (249, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588772657');
INSERT INTO `lea_mini_video_record` VALUES (250, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1588772703');
INSERT INTO `lea_mini_video_record` VALUES (251, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588772811');
INSERT INTO `lea_mini_video_record` VALUES (252, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588772813');
INSERT INTO `lea_mini_video_record` VALUES (253, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588773104');
INSERT INTO `lea_mini_video_record` VALUES (254, 10, '06f338d6r1wa3my', '', '1588942151');
INSERT INTO `lea_mini_video_record` VALUES (255, 10, '06f338d6r1wa3my', '', '1588948041');
INSERT INTO `lea_mini_video_record` VALUES (256, 10, '06f338d6r1wa3my', '', '1588948056');
INSERT INTO `lea_mini_video_record` VALUES (257, 10, '06f338d6r1wa3my', '', '1588948106');
INSERT INTO `lea_mini_video_record` VALUES (258, 10, '06f338d6r1wa3my', '', '1588948133');
INSERT INTO `lea_mini_video_record` VALUES (259, 10, '06f338d6r1wa3my', '', '1588948146');
INSERT INTO `lea_mini_video_record` VALUES (260, 10, '06f338d6r1wa3my', '', '1588948177');
INSERT INTO `lea_mini_video_record` VALUES (261, 10, '06f338d6r1wa3my', '', '1588948189');
INSERT INTO `lea_mini_video_record` VALUES (262, 10, '06f338d6r1wa3my', '', '1588948225');
INSERT INTO `lea_mini_video_record` VALUES (263, 10, '06f338d6r1wa3my', '', '1588948290');
INSERT INTO `lea_mini_video_record` VALUES (264, 10, '06f338d6r1wa3my', '', '1588948308');
INSERT INTO `lea_mini_video_record` VALUES (265, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588948762');
INSERT INTO `lea_mini_video_record` VALUES (266, 10, '06f338d6r1wa3my', '', '1588953008');
INSERT INTO `lea_mini_video_record` VALUES (267, 10, '06f338d6r1wa3my', '', '1588953010');
INSERT INTO `lea_mini_video_record` VALUES (268, 10, '06f338d6r1wa3my', '', '1588988221');
INSERT INTO `lea_mini_video_record` VALUES (269, 10, '06f338d6r1wa3my', '', '1588988222');
INSERT INTO `lea_mini_video_record` VALUES (270, 10, 'mzc00200rudqy7b', '', '1588991398');
INSERT INTO `lea_mini_video_record` VALUES (271, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992265');
INSERT INTO `lea_mini_video_record` VALUES (272, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992270');
INSERT INTO `lea_mini_video_record` VALUES (273, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992273');
INSERT INTO `lea_mini_video_record` VALUES (274, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992277');
INSERT INTO `lea_mini_video_record` VALUES (275, 10, 'mzc002009mrek37', 'u0033akv5ow', '1588992278');
INSERT INTO `lea_mini_video_record` VALUES (276, 10, 'mzc002009mrek37', 'u0033akv5ow', '1588992281');
INSERT INTO `lea_mini_video_record` VALUES (277, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992282');
INSERT INTO `lea_mini_video_record` VALUES (278, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1588992291');
INSERT INTO `lea_mini_video_record` VALUES (279, 10, 'mzc002009mrek37', 'u0033akv5ow', '1588992291');
INSERT INTO `lea_mini_video_record` VALUES (280, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1588992299');
INSERT INTO `lea_mini_video_record` VALUES (281, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1588992304');
INSERT INTO `lea_mini_video_record` VALUES (282, 10, '06f338d6r1wa3my', '', '1588992312');
INSERT INTO `lea_mini_video_record` VALUES (283, 10, '06f338d6r1wa3my', '', '1588992316');
INSERT INTO `lea_mini_video_record` VALUES (284, 10, '06f338d6r1wa3my', '', '1588992319');
INSERT INTO `lea_mini_video_record` VALUES (285, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1588992327');
INSERT INTO `lea_mini_video_record` VALUES (286, 10, 'owyequak2ck3bra', '', '1588992334');
INSERT INTO `lea_mini_video_record` VALUES (287, 10, 'owyequak2ck3bra', '', '1588992387');
INSERT INTO `lea_mini_video_record` VALUES (288, 10, 'mzc00200mnujrjg', '', '1588992394');
INSERT INTO `lea_mini_video_record` VALUES (289, 10, 'mzc00200mnujrjg', '', '1588992398');
INSERT INTO `lea_mini_video_record` VALUES (290, 10, 'mzc00200mnujrjg', '', '1588992401');
INSERT INTO `lea_mini_video_record` VALUES (291, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588992408');
INSERT INTO `lea_mini_video_record` VALUES (292, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588992413');
INSERT INTO `lea_mini_video_record` VALUES (293, 10, '06f338d6r1wa3my', '', '1588992421');
INSERT INTO `lea_mini_video_record` VALUES (294, 10, '06f338d6r1wa3my', '', '1588992425');
INSERT INTO `lea_mini_video_record` VALUES (295, 10, 'mzc00200rudqy7b', '', '1588992430');
INSERT INTO `lea_mini_video_record` VALUES (296, 10, 'mzc00200rudqy7b', '', '1588992436');
INSERT INTO `lea_mini_video_record` VALUES (297, 10, 'mzc00200189u0ml', '', '1588992466');
INSERT INTO `lea_mini_video_record` VALUES (298, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994006');
INSERT INTO `lea_mini_video_record` VALUES (299, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994017');
INSERT INTO `lea_mini_video_record` VALUES (300, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994022');
INSERT INTO `lea_mini_video_record` VALUES (301, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994025');
INSERT INTO `lea_mini_video_record` VALUES (302, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994029');
INSERT INTO `lea_mini_video_record` VALUES (303, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994033');
INSERT INTO `lea_mini_video_record` VALUES (304, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994036');
INSERT INTO `lea_mini_video_record` VALUES (305, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994084');
INSERT INTO `lea_mini_video_record` VALUES (306, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994096');
INSERT INTO `lea_mini_video_record` VALUES (307, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588994667');
INSERT INTO `lea_mini_video_record` VALUES (308, 10, '06f338d6r1wa3my', '', '1588997129');
INSERT INTO `lea_mini_video_record` VALUES (309, 10, '06f338d6r1wa3my', '', '1588997133');
INSERT INTO `lea_mini_video_record` VALUES (310, 10, '06f338d6r1wa3my', '', '1588997137');
INSERT INTO `lea_mini_video_record` VALUES (311, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588997142');
INSERT INTO `lea_mini_video_record` VALUES (312, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588997147');
INSERT INTO `lea_mini_video_record` VALUES (313, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588997150');
INSERT INTO `lea_mini_video_record` VALUES (314, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1588997155');
INSERT INTO `lea_mini_video_record` VALUES (315, 10, 'mzc00200xf1pgs4', '', '1588997190');
INSERT INTO `lea_mini_video_record` VALUES (316, 10, '06f338d6r1wa3my', '', '1588997197');
INSERT INTO `lea_mini_video_record` VALUES (317, 10, 'owyequak2ck3bra', '', '1588997224');
INSERT INTO `lea_mini_video_record` VALUES (318, 10, 'mzc00200xf1pgs4', '', '1588997490');
INSERT INTO `lea_mini_video_record` VALUES (319, 10, 'v2098lbuihuqs11', '', '1588997493');
INSERT INTO `lea_mini_video_record` VALUES (320, 10, 'mzc00200xf1pgs4', '', '1588997494');
INSERT INTO `lea_mini_video_record` VALUES (321, 10, 'mzc00200rudqy7b', '', '1588997543');
INSERT INTO `lea_mini_video_record` VALUES (322, 10, 'mzc00200rudqy7b', '', '1588997548');
INSERT INTO `lea_mini_video_record` VALUES (323, 10, '06f338d6r1wa3my', '', '1589001077');
INSERT INTO `lea_mini_video_record` VALUES (324, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589001096');
INSERT INTO `lea_mini_video_record` VALUES (325, 10, '06f338d6r1wa3my', '', '1589001153');
INSERT INTO `lea_mini_video_record` VALUES (326, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589001159');
INSERT INTO `lea_mini_video_record` VALUES (327, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589001160');
INSERT INTO `lea_mini_video_record` VALUES (328, 10, '06f338d6r1wa3my', '', '1589001168');
INSERT INTO `lea_mini_video_record` VALUES (329, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589001171');
INSERT INTO `lea_mini_video_record` VALUES (330, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589001190');
INSERT INTO `lea_mini_video_record` VALUES (331, 10, 'mzc00200rudqy7b', '', '1589001267');
INSERT INTO `lea_mini_video_record` VALUES (332, 10, 'mzc00200rudqy7b', '', '1589001292');
INSERT INTO `lea_mini_video_record` VALUES (333, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589003745');
INSERT INTO `lea_mini_video_record` VALUES (334, 10, 'v2098lbuihuqs11', '', '1589003981');
INSERT INTO `lea_mini_video_record` VALUES (335, 10, 'mzc00200xf1pgs4', '', '1589003987');
INSERT INTO `lea_mini_video_record` VALUES (336, 10, 'mzc00200xf1pgs4', '', '1589003992');
INSERT INTO `lea_mini_video_record` VALUES (337, 10, 'mzc00200mnujrjg', '', '1589003997');
INSERT INTO `lea_mini_video_record` VALUES (338, 10, 'mzc00200rudqy7b', '', '1589004000');
INSERT INTO `lea_mini_video_record` VALUES (339, 10, 'owyequak2ck3bra', '', '1589004005');
INSERT INTO `lea_mini_video_record` VALUES (340, 10, 'owyequak2ck3bra', '', '1589004006');
INSERT INTO `lea_mini_video_record` VALUES (341, 10, 'mzc00200mnujrjg', '', '1589004011');
INSERT INTO `lea_mini_video_record` VALUES (342, 10, 'mzc00200mnujrjg', '', '1589004014');
INSERT INTO `lea_mini_video_record` VALUES (343, 10, 'mzc00200mnujrjg', '', '1589004019');
INSERT INTO `lea_mini_video_record` VALUES (344, 10, 'v2098lbuihuqs11', '', '1589004022');
INSERT INTO `lea_mini_video_record` VALUES (345, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004028');
INSERT INTO `lea_mini_video_record` VALUES (346, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589004031');
INSERT INTO `lea_mini_video_record` VALUES (347, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004032');
INSERT INTO `lea_mini_video_record` VALUES (348, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004035');
INSERT INTO `lea_mini_video_record` VALUES (349, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004040');
INSERT INTO `lea_mini_video_record` VALUES (350, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004046');
INSERT INTO `lea_mini_video_record` VALUES (351, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004051');
INSERT INTO `lea_mini_video_record` VALUES (352, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004056');
INSERT INTO `lea_mini_video_record` VALUES (353, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004061');
INSERT INTO `lea_mini_video_record` VALUES (354, 10, 'mzc002001pvxwzy', 'n0033xws9qk', '1589004062');
INSERT INTO `lea_mini_video_record` VALUES (355, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004065');
INSERT INTO `lea_mini_video_record` VALUES (356, 10, 'mzc002001pvxwzy', 'n0033xws9qk', '1589004066');
INSERT INTO `lea_mini_video_record` VALUES (357, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589004067');
INSERT INTO `lea_mini_video_record` VALUES (358, 10, 'mzc002001pvxwzy', 'n0033xws9qk', '1589004069');
INSERT INTO `lea_mini_video_record` VALUES (359, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004070');
INSERT INTO `lea_mini_video_record` VALUES (360, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589004077');
INSERT INTO `lea_mini_video_record` VALUES (361, 10, 'mzc002001pvxwzy', 'i0033cgr1vn', '1589004077');
INSERT INTO `lea_mini_video_record` VALUES (362, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589004079');
INSERT INTO `lea_mini_video_record` VALUES (363, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589004081');
INSERT INTO `lea_mini_video_record` VALUES (364, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589004086');
INSERT INTO `lea_mini_video_record` VALUES (365, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589004105');
INSERT INTO `lea_mini_video_record` VALUES (366, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589004184');
INSERT INTO `lea_mini_video_record` VALUES (367, 10, '06f338d6r1wa3my', '', '1589004188');
INSERT INTO `lea_mini_video_record` VALUES (368, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004191');
INSERT INTO `lea_mini_video_record` VALUES (369, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004193');
INSERT INTO `lea_mini_video_record` VALUES (370, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004195');
INSERT INTO `lea_mini_video_record` VALUES (371, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1589004196');
INSERT INTO `lea_mini_video_record` VALUES (372, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004197');
INSERT INTO `lea_mini_video_record` VALUES (373, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004200');
INSERT INTO `lea_mini_video_record` VALUES (374, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1589004204');
INSERT INTO `lea_mini_video_record` VALUES (375, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004205');
INSERT INTO `lea_mini_video_record` VALUES (376, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004206');
INSERT INTO `lea_mini_video_record` VALUES (377, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004209');
INSERT INTO `lea_mini_video_record` VALUES (378, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004211');
INSERT INTO `lea_mini_video_record` VALUES (379, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004214');
INSERT INTO `lea_mini_video_record` VALUES (380, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004216');
INSERT INTO `lea_mini_video_record` VALUES (381, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004218');
INSERT INTO `lea_mini_video_record` VALUES (382, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004220');
INSERT INTO `lea_mini_video_record` VALUES (383, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004223');
INSERT INTO `lea_mini_video_record` VALUES (384, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004226');
INSERT INTO `lea_mini_video_record` VALUES (385, 10, 'mzc002009mrek37', 'g00330i69rb', '1589004226');
INSERT INTO `lea_mini_video_record` VALUES (386, 10, 'mzc002009mrek37', 'g00330i69rb', '1589004228');
INSERT INTO `lea_mini_video_record` VALUES (387, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1589004229');
INSERT INTO `lea_mini_video_record` VALUES (388, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004229');
INSERT INTO `lea_mini_video_record` VALUES (389, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004230');
INSERT INTO `lea_mini_video_record` VALUES (390, 10, 'mzc002009mrek37', 'g00330i69rb', '1589004231');
INSERT INTO `lea_mini_video_record` VALUES (391, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004232');
INSERT INTO `lea_mini_video_record` VALUES (392, 10, 'mzc002009mrek37', 'g00330i69rb', '1589004233');
INSERT INTO `lea_mini_video_record` VALUES (393, 10, 'mzc002009mrek37', 'g00330i69rb', '1589004234');
INSERT INTO `lea_mini_video_record` VALUES (394, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004235');
INSERT INTO `lea_mini_video_record` VALUES (395, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004237');
INSERT INTO `lea_mini_video_record` VALUES (396, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004238');
INSERT INTO `lea_mini_video_record` VALUES (397, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004239');
INSERT INTO `lea_mini_video_record` VALUES (398, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004240');
INSERT INTO `lea_mini_video_record` VALUES (399, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004241');
INSERT INTO `lea_mini_video_record` VALUES (400, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004244');
INSERT INTO `lea_mini_video_record` VALUES (401, 10, 'mzc002009mrek37', 'n0033a2a5e2', '1589004244');
INSERT INTO `lea_mini_video_record` VALUES (402, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004246');
INSERT INTO `lea_mini_video_record` VALUES (403, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004248');
INSERT INTO `lea_mini_video_record` VALUES (404, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004250');
INSERT INTO `lea_mini_video_record` VALUES (405, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004251');
INSERT INTO `lea_mini_video_record` VALUES (406, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004252');
INSERT INTO `lea_mini_video_record` VALUES (407, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004254');
INSERT INTO `lea_mini_video_record` VALUES (408, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589004255');
INSERT INTO `lea_mini_video_record` VALUES (409, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1589006126');
INSERT INTO `lea_mini_video_record` VALUES (410, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589006141');
INSERT INTO `lea_mini_video_record` VALUES (411, 10, 'v2098lbuihuqs11', '', '1589006146');
INSERT INTO `lea_mini_video_record` VALUES (412, 10, '06f338d6r1wa3my', '', '1589027624');
INSERT INTO `lea_mini_video_record` VALUES (413, 10, '06f338d6r1wa3my', '', '1589027626');
INSERT INTO `lea_mini_video_record` VALUES (414, 10, '06f338d6r1wa3my', '', '1589030022');
INSERT INTO `lea_mini_video_record` VALUES (415, 10, '06f338d6r1wa3my', '', '1589030026');
INSERT INTO `lea_mini_video_record` VALUES (416, 10, '06f338d6r1wa3my', '', '1589030080');
INSERT INTO `lea_mini_video_record` VALUES (417, 10, '06f338d6r1wa3my', '', '1589030125');
INSERT INTO `lea_mini_video_record` VALUES (418, 10, '06f338d6r1wa3my', '', '1589030422');
INSERT INTO `lea_mini_video_record` VALUES (419, 10, '06f338d6r1wa3my', '', '1589030547');
INSERT INTO `lea_mini_video_record` VALUES (420, 10, '06f338d6r1wa3my', '', '1589030621');
INSERT INTO `lea_mini_video_record` VALUES (421, 10, '06f338d6r1wa3my', '', '1589030653');
INSERT INTO `lea_mini_video_record` VALUES (422, 10, '06f338d6r1wa3my', '', '1589030673');
INSERT INTO `lea_mini_video_record` VALUES (423, 10, '06f338d6r1wa3my', '', '1589030735');
INSERT INTO `lea_mini_video_record` VALUES (424, 10, '06f338d6r1wa3my', '', '1589030749');
INSERT INTO `lea_mini_video_record` VALUES (425, 10, '06f338d6r1wa3my', '', '1589030860');
INSERT INTO `lea_mini_video_record` VALUES (426, 10, '06f338d6r1wa3my', '', '1589030875');
INSERT INTO `lea_mini_video_record` VALUES (427, 10, '06f338d6r1wa3my', '', '1589030931');
INSERT INTO `lea_mini_video_record` VALUES (428, 10, '06f338d6r1wa3my', '', '1589030937');
INSERT INTO `lea_mini_video_record` VALUES (429, 10, '06f338d6r1wa3my', '', '1589031059');
INSERT INTO `lea_mini_video_record` VALUES (430, 10, '06f338d6r1wa3my', '', '1589031108');
INSERT INTO `lea_mini_video_record` VALUES (431, 10, '06f338d6r1wa3my', '', '1589031324');
INSERT INTO `lea_mini_video_record` VALUES (432, 10, '06f338d6r1wa3my', '', '1589031335');
INSERT INTO `lea_mini_video_record` VALUES (433, 10, '06f338d6r1wa3my', '', '1589031381');
INSERT INTO `lea_mini_video_record` VALUES (434, 10, '06f338d6r1wa3my', '', '1589031400');
INSERT INTO `lea_mini_video_record` VALUES (435, 10, '06f338d6r1wa3my', '', '1589031414');
INSERT INTO `lea_mini_video_record` VALUES (436, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031445');
INSERT INTO `lea_mini_video_record` VALUES (437, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031526');
INSERT INTO `lea_mini_video_record` VALUES (438, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031526');
INSERT INTO `lea_mini_video_record` VALUES (439, 10, '06f338d6r1wa3my', '', '1589031830');
INSERT INTO `lea_mini_video_record` VALUES (440, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031832');
INSERT INTO `lea_mini_video_record` VALUES (441, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031859');
INSERT INTO `lea_mini_video_record` VALUES (442, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031898');
INSERT INTO `lea_mini_video_record` VALUES (443, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031902');
INSERT INTO `lea_mini_video_record` VALUES (444, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031904');
INSERT INTO `lea_mini_video_record` VALUES (445, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031933');
INSERT INTO `lea_mini_video_record` VALUES (446, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031943');
INSERT INTO `lea_mini_video_record` VALUES (447, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589031974');
INSERT INTO `lea_mini_video_record` VALUES (448, 10, '06f338d6r1wa3my', '', '1589032001');
INSERT INTO `lea_mini_video_record` VALUES (449, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032004');
INSERT INTO `lea_mini_video_record` VALUES (450, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032010');
INSERT INTO `lea_mini_video_record` VALUES (451, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032017');
INSERT INTO `lea_mini_video_record` VALUES (452, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032025');
INSERT INTO `lea_mini_video_record` VALUES (453, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032028');
INSERT INTO `lea_mini_video_record` VALUES (454, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032032');
INSERT INTO `lea_mini_video_record` VALUES (455, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032035');
INSERT INTO `lea_mini_video_record` VALUES (456, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032037');
INSERT INTO `lea_mini_video_record` VALUES (457, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032056');
INSERT INTO `lea_mini_video_record` VALUES (458, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032060');
INSERT INTO `lea_mini_video_record` VALUES (459, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032061');
INSERT INTO `lea_mini_video_record` VALUES (460, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032063');
INSERT INTO `lea_mini_video_record` VALUES (461, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032073');
INSERT INTO `lea_mini_video_record` VALUES (462, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032078');
INSERT INTO `lea_mini_video_record` VALUES (463, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032081');
INSERT INTO `lea_mini_video_record` VALUES (464, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032087');
INSERT INTO `lea_mini_video_record` VALUES (465, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032092');
INSERT INTO `lea_mini_video_record` VALUES (466, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032096');
INSERT INTO `lea_mini_video_record` VALUES (467, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032100');
INSERT INTO `lea_mini_video_record` VALUES (468, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032162');
INSERT INTO `lea_mini_video_record` VALUES (469, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032170');
INSERT INTO `lea_mini_video_record` VALUES (470, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032172');
INSERT INTO `lea_mini_video_record` VALUES (471, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032179');
INSERT INTO `lea_mini_video_record` VALUES (472, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032181');
INSERT INTO `lea_mini_video_record` VALUES (473, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589032188');
INSERT INTO `lea_mini_video_record` VALUES (474, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032191');
INSERT INTO `lea_mini_video_record` VALUES (475, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589032235');
INSERT INTO `lea_mini_video_record` VALUES (476, 10, '06f338d6r1wa3my', '', '1589032391');
INSERT INTO `lea_mini_video_record` VALUES (477, 10, '06f338d6r1wa3my', '', '1589032431');
INSERT INTO `lea_mini_video_record` VALUES (478, 10, '06f338d6r1wa3my', '', '1589032465');
INSERT INTO `lea_mini_video_record` VALUES (479, 10, '06f338d6r1wa3my', '', '1589032681');
INSERT INTO `lea_mini_video_record` VALUES (480, 10, '06f338d6r1wa3my', '', '1589032743');
INSERT INTO `lea_mini_video_record` VALUES (481, 10, '06f338d6r1wa3my', '', '1589032746');
INSERT INTO `lea_mini_video_record` VALUES (482, 10, '06f338d6r1wa3my', '', '1589032748');
INSERT INTO `lea_mini_video_record` VALUES (483, 10, '06f338d6r1wa3my', '', '1589032807');
INSERT INTO `lea_mini_video_record` VALUES (484, 10, '06f338d6r1wa3my', '', '1589032836');
INSERT INTO `lea_mini_video_record` VALUES (485, 10, '06f338d6r1wa3my', '', '1589032938');
INSERT INTO `lea_mini_video_record` VALUES (486, 10, '06f338d6r1wa3my', '', '1589032998');
INSERT INTO `lea_mini_video_record` VALUES (487, 10, '06f338d6r1wa3my', '', '1589033015');
INSERT INTO `lea_mini_video_record` VALUES (488, 10, '06f338d6r1wa3my', '', '1589033226');
INSERT INTO `lea_mini_video_record` VALUES (489, 10, '06f338d6r1wa3my', '', '1589033371');
INSERT INTO `lea_mini_video_record` VALUES (490, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033381');
INSERT INTO `lea_mini_video_record` VALUES (491, 10, '06f338d6r1wa3my', '', '1589033391');
INSERT INTO `lea_mini_video_record` VALUES (492, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033528');
INSERT INTO `lea_mini_video_record` VALUES (493, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033554');
INSERT INTO `lea_mini_video_record` VALUES (494, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033605');
INSERT INTO `lea_mini_video_record` VALUES (495, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033641');
INSERT INTO `lea_mini_video_record` VALUES (496, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033680');
INSERT INTO `lea_mini_video_record` VALUES (497, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589033703');
INSERT INTO `lea_mini_video_record` VALUES (498, 10, '06f338d6r1wa3my', '', '1589033706');
INSERT INTO `lea_mini_video_record` VALUES (499, 10, '06f338d6r1wa3my', '', '1589033709');
INSERT INTO `lea_mini_video_record` VALUES (500, 10, '06f338d6r1wa3my', '', '1589033757');
INSERT INTO `lea_mini_video_record` VALUES (501, 10, '06f338d6r1wa3my', '', '1589033770');
INSERT INTO `lea_mini_video_record` VALUES (502, 10, '06f338d6r1wa3my', '', '1589033781');
INSERT INTO `lea_mini_video_record` VALUES (503, 10, '06f338d6r1wa3my', '', '1589033795');
INSERT INTO `lea_mini_video_record` VALUES (504, 10, '06f338d6r1wa3my', '', '1589033872');
INSERT INTO `lea_mini_video_record` VALUES (505, 10, '06f338d6r1wa3my', '', '1589033880');
INSERT INTO `lea_mini_video_record` VALUES (506, 10, '06f338d6r1wa3my', '', '1589033897');
INSERT INTO `lea_mini_video_record` VALUES (507, 10, '06f338d6r1wa3my', '', '1589034092');
INSERT INTO `lea_mini_video_record` VALUES (508, 10, '06f338d6r1wa3my', '', '1589034161');
INSERT INTO `lea_mini_video_record` VALUES (509, 10, '06f338d6r1wa3my', '', '1589034187');
INSERT INTO `lea_mini_video_record` VALUES (510, 10, '06f338d6r1wa3my', '', '1589034300');
INSERT INTO `lea_mini_video_record` VALUES (511, 10, '06f338d6r1wa3my', '', '1589034328');
INSERT INTO `lea_mini_video_record` VALUES (512, 10, '06f338d6r1wa3my', '', '1589034484');
INSERT INTO `lea_mini_video_record` VALUES (513, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589034488');
INSERT INTO `lea_mini_video_record` VALUES (514, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589034491');
INSERT INTO `lea_mini_video_record` VALUES (515, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589034504');
INSERT INTO `lea_mini_video_record` VALUES (516, 10, '06f338d6r1wa3my', '', '1589034915');
INSERT INTO `lea_mini_video_record` VALUES (517, 10, '06f338d6r1wa3my', '', '1589035023');
INSERT INTO `lea_mini_video_record` VALUES (518, 10, '06f338d6r1wa3my', '', '1589035038');
INSERT INTO `lea_mini_video_record` VALUES (519, 10, '06f338d6r1wa3my', '', '1589035088');
INSERT INTO `lea_mini_video_record` VALUES (520, 10, '06f338d6r1wa3my', '', '1589035097');
INSERT INTO `lea_mini_video_record` VALUES (521, 10, '06f338d6r1wa3my', '', '1589035106');
INSERT INTO `lea_mini_video_record` VALUES (522, 10, '06f338d6r1wa3my', '', '1589035136');
INSERT INTO `lea_mini_video_record` VALUES (523, 10, '06f338d6r1wa3my', '', '1589035189');
INSERT INTO `lea_mini_video_record` VALUES (524, 10, '06f338d6r1wa3my', '', '1589035257');
INSERT INTO `lea_mini_video_record` VALUES (525, 10, '06f338d6r1wa3my', '', '1589035281');
INSERT INTO `lea_mini_video_record` VALUES (526, 10, '06f338d6r1wa3my', '', '1589035367');
INSERT INTO `lea_mini_video_record` VALUES (527, 10, '06f338d6r1wa3my', '', '1589035387');
INSERT INTO `lea_mini_video_record` VALUES (528, 10, '06f338d6r1wa3my', '', '1589035515');
INSERT INTO `lea_mini_video_record` VALUES (529, 10, '06f338d6r1wa3my', '', '1589035660');
INSERT INTO `lea_mini_video_record` VALUES (530, 10, '06f338d6r1wa3my', '', '1589035663');
INSERT INTO `lea_mini_video_record` VALUES (531, 10, '06f338d6r1wa3my', '', '1589035670');
INSERT INTO `lea_mini_video_record` VALUES (532, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589035736');
INSERT INTO `lea_mini_video_record` VALUES (533, 10, '06f338d6r1wa3my', '', '1589035815');
INSERT INTO `lea_mini_video_record` VALUES (534, 10, '06f338d6r1wa3my', '', '1589036581');
INSERT INTO `lea_mini_video_record` VALUES (535, 10, '06f338d6r1wa3my', '', '1589036750');
INSERT INTO `lea_mini_video_record` VALUES (536, 10, '06f338d6r1wa3my', '', '1589036809');
INSERT INTO `lea_mini_video_record` VALUES (537, 10, '06f338d6r1wa3my', '', '1589036855');
INSERT INTO `lea_mini_video_record` VALUES (538, 10, '06f338d6r1wa3my', '', '1589037064');
INSERT INTO `lea_mini_video_record` VALUES (539, 10, '06f338d6r1wa3my', '', '1589037165');
INSERT INTO `lea_mini_video_record` VALUES (540, 10, '06f338d6r1wa3my', '', '1589037172');
INSERT INTO `lea_mini_video_record` VALUES (541, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589037208');
INSERT INTO `lea_mini_video_record` VALUES (542, 10, '06f338d6r1wa3my', '', '1589037211');
INSERT INTO `lea_mini_video_record` VALUES (543, 10, '06f338d6r1wa3my', '', '1589037380');
INSERT INTO `lea_mini_video_record` VALUES (544, 10, '06f338d6r1wa3my', '', '1589037384');
INSERT INTO `lea_mini_video_record` VALUES (545, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589037413');
INSERT INTO `lea_mini_video_record` VALUES (546, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589037703');
INSERT INTO `lea_mini_video_record` VALUES (547, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589037741');
INSERT INTO `lea_mini_video_record` VALUES (548, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589037745');
INSERT INTO `lea_mini_video_record` VALUES (549, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589037942');
INSERT INTO `lea_mini_video_record` VALUES (550, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038017');
INSERT INTO `lea_mini_video_record` VALUES (551, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038025');
INSERT INTO `lea_mini_video_record` VALUES (552, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038102');
INSERT INTO `lea_mini_video_record` VALUES (553, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038105');
INSERT INTO `lea_mini_video_record` VALUES (554, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038112');
INSERT INTO `lea_mini_video_record` VALUES (555, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038127');
INSERT INTO `lea_mini_video_record` VALUES (556, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038133');
INSERT INTO `lea_mini_video_record` VALUES (557, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038135');
INSERT INTO `lea_mini_video_record` VALUES (558, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038137');
INSERT INTO `lea_mini_video_record` VALUES (559, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038154');
INSERT INTO `lea_mini_video_record` VALUES (560, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038198');
INSERT INTO `lea_mini_video_record` VALUES (561, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038203');
INSERT INTO `lea_mini_video_record` VALUES (562, 10, 'mzc00200rudqy7b', '', '1589038214');
INSERT INTO `lea_mini_video_record` VALUES (563, 10, 'mzc00200mnujrjg', '', '1589038229');
INSERT INTO `lea_mini_video_record` VALUES (564, 10, 'mzc00200mnujrjg', '', '1589038231');
INSERT INTO `lea_mini_video_record` VALUES (565, 10, 'mzc00200xf1pgs4', '', '1589038241');
INSERT INTO `lea_mini_video_record` VALUES (566, 10, 'mzc00200xf1pgs4', '', '1589038244');
INSERT INTO `lea_mini_video_record` VALUES (567, 10, 'mzc00200xf1pgs4', '', '1589038246');
INSERT INTO `lea_mini_video_record` VALUES (568, 10, 'mzc00200xf1pgs4', '', '1589038248');
INSERT INTO `lea_mini_video_record` VALUES (569, 10, 'mzc00200mnujrjg', '', '1589038259');
INSERT INTO `lea_mini_video_record` VALUES (570, 10, 'mzc00200xf1pgs4', '', '1589038264');
INSERT INTO `lea_mini_video_record` VALUES (571, 10, 'mzc00200xf1pgs4', '', '1589038265');
INSERT INTO `lea_mini_video_record` VALUES (572, 10, 'mzc00200mnujrjg', '', '1589038266');
INSERT INTO `lea_mini_video_record` VALUES (573, 10, 'mzc00200xf1pgs4', '', '1589038270');
INSERT INTO `lea_mini_video_record` VALUES (574, 10, 'mzc00200rudqy7b', '', '1589038278');
INSERT INTO `lea_mini_video_record` VALUES (575, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038289');
INSERT INTO `lea_mini_video_record` VALUES (576, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038297');
INSERT INTO `lea_mini_video_record` VALUES (577, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038301');
INSERT INTO `lea_mini_video_record` VALUES (578, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589038304');
INSERT INTO `lea_mini_video_record` VALUES (579, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038306');
INSERT INTO `lea_mini_video_record` VALUES (580, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038308');
INSERT INTO `lea_mini_video_record` VALUES (581, 10, 'dxd1v76tmu0wjuj', 'f003323u5wn', '1589038310');
INSERT INTO `lea_mini_video_record` VALUES (582, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038313');
INSERT INTO `lea_mini_video_record` VALUES (583, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589038321');
INSERT INTO `lea_mini_video_record` VALUES (584, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589038323');
INSERT INTO `lea_mini_video_record` VALUES (585, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589039501');
INSERT INTO `lea_mini_video_record` VALUES (586, 10, '06f338d6r1wa3my', '', '1589039551');
INSERT INTO `lea_mini_video_record` VALUES (587, 10, 'v2098lbuihuqs11', '', '1589039999');
INSERT INTO `lea_mini_video_record` VALUES (588, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589040012');
INSERT INTO `lea_mini_video_record` VALUES (589, 10, '06f338d6r1wa3my', '', '1589040045');
INSERT INTO `lea_mini_video_record` VALUES (590, 10, 'mzc00200rudqy7b', '', '1589040180');
INSERT INTO `lea_mini_video_record` VALUES (591, 10, '06f338d6r1wa3my', '', '1589040664');
INSERT INTO `lea_mini_video_record` VALUES (592, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589040666');
INSERT INTO `lea_mini_video_record` VALUES (593, 10, '06f338d6r1wa3my', '', '1589040670');
INSERT INTO `lea_mini_video_record` VALUES (594, 10, '06f338d6r1wa3my', '', '1589041267');
INSERT INTO `lea_mini_video_record` VALUES (595, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589041924');
INSERT INTO `lea_mini_video_record` VALUES (596, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589041927');
INSERT INTO `lea_mini_video_record` VALUES (597, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589041929');
INSERT INTO `lea_mini_video_record` VALUES (598, 10, 'owyequak2ck3bra', '', '1589041938');
INSERT INTO `lea_mini_video_record` VALUES (599, 10, 'owyequak2ck3bra', '', '1589041940');
INSERT INTO `lea_mini_video_record` VALUES (600, 10, 'mzc00200rudqy7b', '', '1589042110');
INSERT INTO `lea_mini_video_record` VALUES (601, 10, '06f338d6r1wa3my', '', '1589042131');
INSERT INTO `lea_mini_video_record` VALUES (602, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589042139');
INSERT INTO `lea_mini_video_record` VALUES (603, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589042148');
INSERT INTO `lea_mini_video_record` VALUES (604, 10, '06f338d6r1wa3my', '', '1589042550');
INSERT INTO `lea_mini_video_record` VALUES (605, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1589042858');
INSERT INTO `lea_mini_video_record` VALUES (606, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1589042863');
INSERT INTO `lea_mini_video_record` VALUES (607, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1589042865');
INSERT INTO `lea_mini_video_record` VALUES (608, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1589042868');
INSERT INTO `lea_mini_video_record` VALUES (609, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1589042871');
INSERT INTO `lea_mini_video_record` VALUES (610, 10, 'mzc00200q06w7zx', 'l0033nd693f', '1589042873');
INSERT INTO `lea_mini_video_record` VALUES (611, 10, 'mzc00200q06w7zx', 'j0033nh5uwi', '1589042877');
INSERT INTO `lea_mini_video_record` VALUES (612, 10, 'mzc00200q06w7zx', 'o00339yn8vo', '1589042879');
INSERT INTO `lea_mini_video_record` VALUES (613, 10, 'mzc00200q06w7zx', 'r0033bk1mxp', '1589042883');
INSERT INTO `lea_mini_video_record` VALUES (614, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1589042887');
INSERT INTO `lea_mini_video_record` VALUES (615, 10, 'mzc00200q06w7zx', 'p0033kp2kmj', '1589042889');
INSERT INTO `lea_mini_video_record` VALUES (616, 10, 'mzc00200q06w7zx', 't0033feafra', '1589042892');
INSERT INTO `lea_mini_video_record` VALUES (617, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589042894');
INSERT INTO `lea_mini_video_record` VALUES (618, 10, 'mzc00200q06w7zx', 'j0033nh5uwi', '1589042903');
INSERT INTO `lea_mini_video_record` VALUES (619, 10, 'mzc00200q06w7zx', 'j0033ph4hq8', '1589042971');
INSERT INTO `lea_mini_video_record` VALUES (620, 10, 'mzc00200q06w7zx', 'j0033nh5uwi', '1589042974');
INSERT INTO `lea_mini_video_record` VALUES (621, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589042978');
INSERT INTO `lea_mini_video_record` VALUES (622, 10, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589042983');
INSERT INTO `lea_mini_video_record` VALUES (623, 10, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589042985');
INSERT INTO `lea_mini_video_record` VALUES (624, 10, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589042992');
INSERT INTO `lea_mini_video_record` VALUES (625, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589042997');
INSERT INTO `lea_mini_video_record` VALUES (626, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589042998');
INSERT INTO `lea_mini_video_record` VALUES (627, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589043003');
INSERT INTO `lea_mini_video_record` VALUES (628, 10, 'mzc00200q06w7zx', 'j0033nh5uwi', '1589043014');
INSERT INTO `lea_mini_video_record` VALUES (629, 10, 'mzc00200q06w7zx', 'l0033e3vjlf', '1589043019');
INSERT INTO `lea_mini_video_record` VALUES (630, 10, 'mzc00200q06w7zx', 'd0033x426wl', '1589043027');
INSERT INTO `lea_mini_video_record` VALUES (631, 10, 'mzc00200q06w7zx', 'l0033e3vjlf', '1589043031');
INSERT INTO `lea_mini_video_record` VALUES (632, 10, 'mzc00200q06w7zx', 'd0033x426wl', '1589043036');
INSERT INTO `lea_mini_video_record` VALUES (633, 10, 'mzc00200q06w7zx', 'l0033e3vjlf', '1589043039');
INSERT INTO `lea_mini_video_record` VALUES (634, 10, 'mzc00200q06w7zx', 'l0033spqumo', '1589043073');
INSERT INTO `lea_mini_video_record` VALUES (635, 10, 'mzc00200q06w7zx', 't0033feafra', '1589043076');
INSERT INTO `lea_mini_video_record` VALUES (636, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589043078');
INSERT INTO `lea_mini_video_record` VALUES (637, 10, 'mzc002009mrek37', 'u0033akv5ow', '1589043090');
INSERT INTO `lea_mini_video_record` VALUES (638, 10, 'mzc002009mrek37', 'f0033klruar', '1589043095');
INSERT INTO `lea_mini_video_record` VALUES (639, 10, 'mzc00200xf1pgs4', '', '1589043106');
INSERT INTO `lea_mini_video_record` VALUES (640, 10, 'mzc00200xf1pgs4', '', '1589043113');
INSERT INTO `lea_mini_video_record` VALUES (641, 10, 'mzc00200xf1pgs4', '', '1589043121');
INSERT INTO `lea_mini_video_record` VALUES (642, 10, 'mzc00200xf1pgs4', '', '1589043123');
INSERT INTO `lea_mini_video_record` VALUES (643, 10, 'mzc00200xf1pgs4', '', '1589043125');
INSERT INTO `lea_mini_video_record` VALUES (644, 10, 'v2098lbuihuqs11', '', '1589043129');
INSERT INTO `lea_mini_video_record` VALUES (645, 10, 'dfg8138lannbyjx', '', '1589072347');
INSERT INTO `lea_mini_video_record` VALUES (646, 10, 'dfg8138lannbyjx', '', '1589072349');
INSERT INTO `lea_mini_video_record` VALUES (647, 10, 'mzc00200kharxoe', '', '1589073271');
INSERT INTO `lea_mini_video_record` VALUES (648, 10, 'mzc00200kharxoe', '', '1589073273');
INSERT INTO `lea_mini_video_record` VALUES (649, 10, 'mzc00200kharxoe', '', '1589073396');
INSERT INTO `lea_mini_video_record` VALUES (650, 25, 'mzc00200kharxoe', '', '1589073409');
INSERT INTO `lea_mini_video_record` VALUES (651, 25, 'mzc00200kharxoe', '', '1589073432');
INSERT INTO `lea_mini_video_record` VALUES (652, 25, 'mzc00200kharxoe', '', '1589073441');
INSERT INTO `lea_mini_video_record` VALUES (653, 25, 'mzc0020004c4hf9', '', '1589073451');
INSERT INTO `lea_mini_video_record` VALUES (654, 25, 'mzc0020004c4hf9', '', '1589073483');
INSERT INTO `lea_mini_video_record` VALUES (655, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073517');
INSERT INTO `lea_mini_video_record` VALUES (656, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073527');
INSERT INTO `lea_mini_video_record` VALUES (657, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073558');
INSERT INTO `lea_mini_video_record` VALUES (658, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073568');
INSERT INTO `lea_mini_video_record` VALUES (659, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073603');
INSERT INTO `lea_mini_video_record` VALUES (660, 10, 'mzc00200kharxoe', '', '1589073738');
INSERT INTO `lea_mini_video_record` VALUES (661, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073844');
INSERT INTO `lea_mini_video_record` VALUES (662, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073864');
INSERT INTO `lea_mini_video_record` VALUES (663, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073898');
INSERT INTO `lea_mini_video_record` VALUES (665, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589073963');
INSERT INTO `lea_mini_video_record` VALUES (666, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589074006');
INSERT INTO `lea_mini_video_record` VALUES (667, 10, 'mzc0020004c4hf9', '', '1589074068');
INSERT INTO `lea_mini_video_record` VALUES (668, 10, 'mzc0020004c4hf9', '', '1589074109');
INSERT INTO `lea_mini_video_record` VALUES (669, 10, 'mzc0020004c4hf9', '', '1589074111');
INSERT INTO `lea_mini_video_record` VALUES (670, 25, 'mzc0020004c4hf9', '', '1589074169');
INSERT INTO `lea_mini_video_record` VALUES (671, 25, 'mzc0020004c4hf9', '', '1589074203');
INSERT INTO `lea_mini_video_record` VALUES (672, 25, 'mzc0020004c4hf9', '', '1589074218');
INSERT INTO `lea_mini_video_record` VALUES (673, 10, 'mzc00200mnujrjg', '', '1589076143');
INSERT INTO `lea_mini_video_record` VALUES (674, 10, 'mzc00200mnujrjg', '', '1589076145');
INSERT INTO `lea_mini_video_record` VALUES (675, 10, 'mzc00200mnujrjg', '', '1589076150');
INSERT INTO `lea_mini_video_record` VALUES (676, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589076526');
INSERT INTO `lea_mini_video_record` VALUES (677, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589076532');
INSERT INTO `lea_mini_video_record` VALUES (678, 10, '06f338d6r1wa3my', '', '1589076571');
INSERT INTO `lea_mini_video_record` VALUES (679, 10, '06f338d6r1wa3my', '', '1589076573');
INSERT INTO `lea_mini_video_record` VALUES (680, 10, 'mzc00200kharxoe', '', '1589076594');
INSERT INTO `lea_mini_video_record` VALUES (681, 10, 'mzc00200189u0ml', '', '1589077514');
INSERT INTO `lea_mini_video_record` VALUES (682, 10, 'mzc00200rudqy7b', '', '1589077515');
INSERT INTO `lea_mini_video_record` VALUES (683, 10, 'mzc00200kharxoe', '', '1589080504');
INSERT INTO `lea_mini_video_record` VALUES (684, 10, 'mzc00200kharxoe', '', '1589080506');
INSERT INTO `lea_mini_video_record` VALUES (685, 10, 'mzc00200kharxoe', '', '1589080526');
INSERT INTO `lea_mini_video_record` VALUES (686, 10, 'mzc00200kharxoe', '', '1589080644');
INSERT INTO `lea_mini_video_record` VALUES (687, 10, 'mzc00200rudqy7b', '', '1589080661');
INSERT INTO `lea_mini_video_record` VALUES (688, 10, 'mzc00200kharxoe', '', '1589080668');
INSERT INTO `lea_mini_video_record` VALUES (689, 10, 'mzc00200kharxoe', '', '1589082185');
INSERT INTO `lea_mini_video_record` VALUES (690, 10, 'mzc00200kharxoe', '', '1589082301');
INSERT INTO `lea_mini_video_record` VALUES (691, 25, 'mzc00200kharxoe', '', '1589082354');
INSERT INTO `lea_mini_video_record` VALUES (692, 10, '06f338d6r1wa3my', '', '1589086865');
INSERT INTO `lea_mini_video_record` VALUES (693, 10, 'mzc00200kharxoe', '', '1589086876');
INSERT INTO `lea_mini_video_record` VALUES (695, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589087936');
INSERT INTO `lea_mini_video_record` VALUES (699, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589087968');
INSERT INTO `lea_mini_video_record` VALUES (700, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589087973');
INSERT INTO `lea_mini_video_record` VALUES (701, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589087973');
INSERT INTO `lea_mini_video_record` VALUES (702, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589088026');
INSERT INTO `lea_mini_video_record` VALUES (703, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589088040');
INSERT INTO `lea_mini_video_record` VALUES (704, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589088043');
INSERT INTO `lea_mini_video_record` VALUES (705, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589088045');
INSERT INTO `lea_mini_video_record` VALUES (706, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589088055');
INSERT INTO `lea_mini_video_record` VALUES (707, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589088060');
INSERT INTO `lea_mini_video_record` VALUES (708, 25, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589088064');
INSERT INTO `lea_mini_video_record` VALUES (709, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589088065');
INSERT INTO `lea_mini_video_record` VALUES (710, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1589088074');
INSERT INTO `lea_mini_video_record` VALUES (711, 25, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589088076');
INSERT INTO `lea_mini_video_record` VALUES (712, 25, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589088079');
INSERT INTO `lea_mini_video_record` VALUES (713, 25, 'dxd1v76tmu0wjuj', 'h0033zg1f3u', '1589088081');
INSERT INTO `lea_mini_video_record` VALUES (714, 25, 'dxd1v76tmu0wjuj', 'b0033z8du2y', '1589088084');
INSERT INTO `lea_mini_video_record` VALUES (715, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1589088087');
INSERT INTO `lea_mini_video_record` VALUES (716, 10, '06f338d6r1wa3my', '', '1589103681');
INSERT INTO `lea_mini_video_record` VALUES (717, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589103691');
INSERT INTO `lea_mini_video_record` VALUES (718, 10, '06f338d6r1wa3my', '', '1589103994');
INSERT INTO `lea_mini_video_record` VALUES (719, 10, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589103998');
INSERT INTO `lea_mini_video_record` VALUES (720, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589104003');
INSERT INTO `lea_mini_video_record` VALUES (721, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589104009');
INSERT INTO `lea_mini_video_record` VALUES (722, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589104073');
INSERT INTO `lea_mini_video_record` VALUES (723, 10, '06f338d6r1wa3my', '', '1589104255');
INSERT INTO `lea_mini_video_record` VALUES (724, 10, 'mzc00200k12f5gi', 'r0033ilbb4p', '1589104266');
INSERT INTO `lea_mini_video_record` VALUES (725, 10, 'mzc00200k12f5gi', 'r0033ilbb4p', '1589104269');
INSERT INTO `lea_mini_video_record` VALUES (726, 10, 'mzc00200k12f5gi', 's0033w5isu7', '1589104271');
INSERT INTO `lea_mini_video_record` VALUES (727, 10, 'mzc00200k12f5gi', 's0033w5isu7', '1589104274');
INSERT INTO `lea_mini_video_record` VALUES (728, 10, 'mzc00200k12f5gi', 's0033w5isu7', '1589104276');
INSERT INTO `lea_mini_video_record` VALUES (729, 10, 'mzc00200k12f5gi', 'b0033qqnyfl', '1589104281');
INSERT INTO `lea_mini_video_record` VALUES (730, 10, 'mzc00200k12f5gi', 'b0033qqnyfl', '1589104283');
INSERT INTO `lea_mini_video_record` VALUES (731, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1589104286');
INSERT INTO `lea_mini_video_record` VALUES (732, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1589104287');
INSERT INTO `lea_mini_video_record` VALUES (733, 10, 'mzc00200kharxoe', '', '1589104293');
INSERT INTO `lea_mini_video_record` VALUES (734, 10, 'mzc00200kharxoe', '', '1589104295');
INSERT INTO `lea_mini_video_record` VALUES (735, 10, 'mzc00200kharxoe', '', '1589104297');
INSERT INTO `lea_mini_video_record` VALUES (736, 10, 'mzc00200mnujrjg', '', '1589104302');
INSERT INTO `lea_mini_video_record` VALUES (737, 10, '06f338d6r1wa3my', '', '1589104317');
INSERT INTO `lea_mini_video_record` VALUES (738, 10, '06f338d6r1wa3my', '', '1589104436');
INSERT INTO `lea_mini_video_record` VALUES (739, 10, '06f338d6r1wa3my', '', '1589104631');
INSERT INTO `lea_mini_video_record` VALUES (740, 10, '06f338d6r1wa3my', '', '1589104665');
INSERT INTO `lea_mini_video_record` VALUES (741, 10, '06f338d6r1wa3my', '', '1589104669');
INSERT INTO `lea_mini_video_record` VALUES (742, 26, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589107920');
INSERT INTO `lea_mini_video_record` VALUES (743, 26, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589108120');
INSERT INTO `lea_mini_video_record` VALUES (744, 26, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1589108272');
INSERT INTO `lea_mini_video_record` VALUES (745, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589108313');
INSERT INTO `lea_mini_video_record` VALUES (746, 10, 'mzc00200kharxoe', '', '1589111207');
INSERT INTO `lea_mini_video_record` VALUES (747, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589112548');
INSERT INTO `lea_mini_video_record` VALUES (748, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589112722');
INSERT INTO `lea_mini_video_record` VALUES (749, 10, '06f338d6r1wa3my', '', '1589113140');
INSERT INTO `lea_mini_video_record` VALUES (750, 10, 'mzc00200189u0ml', '', '1589115225');
INSERT INTO `lea_mini_video_record` VALUES (751, 10, 'mzc00200189u0ml', '', '1589115227');
INSERT INTO `lea_mini_video_record` VALUES (752, 10, 'mzc002003qvshpe', '', '1589115237');
INSERT INTO `lea_mini_video_record` VALUES (753, 10, 'mzc002003qvshpe', '', '1589115240');
INSERT INTO `lea_mini_video_record` VALUES (754, 10, '06f338d6r1wa3my', '', '1589115245');
INSERT INTO `lea_mini_video_record` VALUES (755, 10, 'iegjnp9pe9p6fp1', '', '1589115251');
INSERT INTO `lea_mini_video_record` VALUES (756, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589115329');
INSERT INTO `lea_mini_video_record` VALUES (757, 10, '06f338d6r1wa3my', '', '1589115875');
INSERT INTO `lea_mini_video_record` VALUES (758, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589115883');
INSERT INTO `lea_mini_video_record` VALUES (759, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589115903');
INSERT INTO `lea_mini_video_record` VALUES (760, 10, '06f338d6r1wa3my', '', '1589115906');
INSERT INTO `lea_mini_video_record` VALUES (761, 10, '06f338d6r1wa3my', '', '1589116217');
INSERT INTO `lea_mini_video_record` VALUES (762, 10, 'iegjnp9pe9p6fp1', '', '1589116326');
INSERT INTO `lea_mini_video_record` VALUES (763, 10, 'iegjnp9pe9p6fp1', '', '1589116328');
INSERT INTO `lea_mini_video_record` VALUES (764, 10, 'iegjnp9pe9p6fp1', '', '1589116330');
INSERT INTO `lea_mini_video_record` VALUES (765, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589116337');
INSERT INTO `lea_mini_video_record` VALUES (766, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589116338');
INSERT INTO `lea_mini_video_record` VALUES (767, 10, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589116346');
INSERT INTO `lea_mini_video_record` VALUES (768, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589116350');
INSERT INTO `lea_mini_video_record` VALUES (769, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589116357');
INSERT INTO `lea_mini_video_record` VALUES (770, 10, 'mzc00200bqxuhqe', 'd0033lp15h7', '1589116373');
INSERT INTO `lea_mini_video_record` VALUES (771, 10, 'dfg8138lannbyjx', '', '1589116389');
INSERT INTO `lea_mini_video_record` VALUES (772, 10, 'dfg8138lannbyjx', '', '1589116391');
INSERT INTO `lea_mini_video_record` VALUES (773, 10, 'dfg8138lannbyjx', '', '1589116392');
INSERT INTO `lea_mini_video_record` VALUES (774, 10, 'dfg8138lannbyjx', '', '1589116400');
INSERT INTO `lea_mini_video_record` VALUES (775, 10, 'dfg8138lannbyjx', '', '1589116402');
INSERT INTO `lea_mini_video_record` VALUES (778, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589116685');
INSERT INTO `lea_mini_video_record` VALUES (785, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589116988');
INSERT INTO `lea_mini_video_record` VALUES (786, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589117247');
INSERT INTO `lea_mini_video_record` VALUES (787, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589117254');
INSERT INTO `lea_mini_video_record` VALUES (788, 10, 'mzc00200kqs6xxb', '', '1589117334');
INSERT INTO `lea_mini_video_record` VALUES (789, 10, 'eazfh1m41s8e3bc', '', '1589118446');
INSERT INTO `lea_mini_video_record` VALUES (790, 10, 'eazfh1m41s8e3bc', '', '1589118448');
INSERT INTO `lea_mini_video_record` VALUES (791, 10, 'eazfh1m41s8e3bc', '', '1589118452');
INSERT INTO `lea_mini_video_record` VALUES (792, 10, 'eazfh1m41s8e3bc', '', '1589118454');
INSERT INTO `lea_mini_video_record` VALUES (793, 10, 'eazfh1m41s8e3bc', '', '1589118456');
INSERT INTO `lea_mini_video_record` VALUES (794, 10, 'dfg8138lannbyjx', '', '1589118460');
INSERT INTO `lea_mini_video_record` VALUES (795, 10, 'dfg8138lannbyjx', '', '1589118463');
INSERT INTO `lea_mini_video_record` VALUES (796, 10, 'l8r3gm1zzu5u3nk', '', '1589118486');
INSERT INTO `lea_mini_video_record` VALUES (797, 10, 'l8r3gm1zzu5u3nk', '', '1589118489');
INSERT INTO `lea_mini_video_record` VALUES (798, 10, 'mzc00200kharxoe', '', '1589118502');
INSERT INTO `lea_mini_video_record` VALUES (799, 10, 'mzc00200kharxoe', '', '1589118504');
INSERT INTO `lea_mini_video_record` VALUES (800, 10, 'mzc00200kharxoe', '', '1589118507');
INSERT INTO `lea_mini_video_record` VALUES (801, 10, '3fvg46217gw800n', '', '1589118529');
INSERT INTO `lea_mini_video_record` VALUES (802, 10, '41dicgms0277zoz', 'v0025u7iuf8', '1589118972');
INSERT INTO `lea_mini_video_record` VALUES (803, 10, 'e3pdjwjjbbcmsow', '', '1589118981');
INSERT INTO `lea_mini_video_record` VALUES (804, 10, 'e3pdjwjjbbcmsow', '', '1589118983');
INSERT INTO `lea_mini_video_record` VALUES (805, 10, 'e3pdjwjjbbcmsow', '', '1589118988');
INSERT INTO `lea_mini_video_record` VALUES (806, 10, 'eazfh1m41s8e3bc', '', '1589118993');
INSERT INTO `lea_mini_video_record` VALUES (807, 10, 'f7pqur8uhmzltps', '', '1589118998');
INSERT INTO `lea_mini_video_record` VALUES (808, 10, 'f7pqur8uhmzltps', '', '1589119000');
INSERT INTO `lea_mini_video_record` VALUES (809, 10, 'gwz8nqvc78oexgm', '', '1589119007');
INSERT INTO `lea_mini_video_record` VALUES (810, 10, 'gwz8nqvc78oexgm', '', '1589119010');
INSERT INTO `lea_mini_video_record` VALUES (811, 10, 'gwz8nqvc78oexgm', '', '1589119012');
INSERT INTO `lea_mini_video_record` VALUES (812, 10, 'gwz8nqvc78oexgm', '', '1589119014');
INSERT INTO `lea_mini_video_record` VALUES (813, 10, 'hzssbvhzc7xyr95', '', '1589119018');
INSERT INTO `lea_mini_video_record` VALUES (814, 10, 'hzssbvhzc7xyr95', '', '1589119020');
INSERT INTO `lea_mini_video_record` VALUES (815, 10, 'l8r3gm1zzu5u3nk', '', '1589119027');
INSERT INTO `lea_mini_video_record` VALUES (816, 10, 'l8r3gm1zzu5u3nk', '', '1589121256');
INSERT INTO `lea_mini_video_record` VALUES (817, 10, 'l8r3gm1zzu5u3nk', '', '1589121266');
INSERT INTO `lea_mini_video_record` VALUES (818, 10, 'l8r3gm1zzu5u3nk', '', '1589121464');
INSERT INTO `lea_mini_video_record` VALUES (819, 10, 'l8r3gm1zzu5u3nk', '', '1589121576');
INSERT INTO `lea_mini_video_record` VALUES (820, 10, 'l8r3gm1zzu5u3nk', '', '1589121578');
INSERT INTO `lea_mini_video_record` VALUES (821, 10, 'l8r3gm1zzu5u3nk', '', '1589123756');
INSERT INTO `lea_mini_video_record` VALUES (822, 10, 'l8r3gm1zzu5u3nk', '', '1589123758');
INSERT INTO `lea_mini_video_record` VALUES (823, 10, 'l8r3gm1zzu5u3nk', '', '1589123937');
INSERT INTO `lea_mini_video_record` VALUES (824, 10, 'l8r3gm1zzu5u3nk', '', '1589124818');
INSERT INTO `lea_mini_video_record` VALUES (825, 10, '06f338d6r1wa3my', '', '1589127849');
INSERT INTO `lea_mini_video_record` VALUES (826, 10, '06f338d6r1wa3my', '', '1589127851');
INSERT INTO `lea_mini_video_record` VALUES (827, 10, '06f338d6r1wa3my', '', '1589127854');
INSERT INTO `lea_mini_video_record` VALUES (828, 10, 'eazfh1m41s8e3bc', '', '1589127872');
INSERT INTO `lea_mini_video_record` VALUES (829, 10, 'eazfh1m41s8e3bc', '', '1589127874');
INSERT INTO `lea_mini_video_record` VALUES (830, 10, 'e3pdjwjjbbcmsow', '', '1589127878');
INSERT INTO `lea_mini_video_record` VALUES (831, 10, 'e3pdjwjjbbcmsow', '', '1589127883');
INSERT INTO `lea_mini_video_record` VALUES (832, 10, 'e3pdjwjjbbcmsow', '', '1589127885');
INSERT INTO `lea_mini_video_record` VALUES (833, 10, 'e3pdjwjjbbcmsow', '', '1589127900');
INSERT INTO `lea_mini_video_record` VALUES (834, 10, 'e3pdjwjjbbcmsow', '', '1589127902');
INSERT INTO `lea_mini_video_record` VALUES (835, 10, 'e3pdjwjjbbcmsow', '', '1589175007');
INSERT INTO `lea_mini_video_record` VALUES (836, 10, 'e3pdjwjjbbcmsow', '', '1589175010');
INSERT INTO `lea_mini_video_record` VALUES (837, 10, 'e3pdjwjjbbcmsow', '', '1589175012');
INSERT INTO `lea_mini_video_record` VALUES (838, 10, '06f338d6r1wa3my', '', '1589175192');
INSERT INTO `lea_mini_video_record` VALUES (839, 10, '06f338d6r1wa3my', '', '1589175297');
INSERT INTO `lea_mini_video_record` VALUES (840, 10, 'e3pdjwjjbbcmsow', '', '1589175300');
INSERT INTO `lea_mini_video_record` VALUES (841, 10, 'l8r3gm1zzu5u3nk', '', '1589175306');
INSERT INTO `lea_mini_video_record` VALUES (842, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589175329');
INSERT INTO `lea_mini_video_record` VALUES (843, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589175331');
INSERT INTO `lea_mini_video_record` VALUES (844, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589175339');
INSERT INTO `lea_mini_video_record` VALUES (845, 10, 'd6mvesrx6j2ux4x', '', '1589175471');
INSERT INTO `lea_mini_video_record` VALUES (846, 10, 'd6mvesrx6j2ux4x', '', '1589175473');
INSERT INTO `lea_mini_video_record` VALUES (847, 10, 'd6mvesrx6j2ux4x', '', '1589175476');
INSERT INTO `lea_mini_video_record` VALUES (848, 10, 'd8t20577qy9vy13', '', '1589175480');
INSERT INTO `lea_mini_video_record` VALUES (849, 10, 'd8t20577qy9vy13', '', '1589175482');
INSERT INTO `lea_mini_video_record` VALUES (850, 10, 'e3pdjwjjbbcmsow', '', '1589175486');
INSERT INTO `lea_mini_video_record` VALUES (851, 10, 'e3pdjwjjbbcmsow', '', '1589175488');
INSERT INTO `lea_mini_video_record` VALUES (852, 10, 'f7pqur8uhmzltps', '', '1589175492');
INSERT INTO `lea_mini_video_record` VALUES (853, 10, 'dfg8138lannbyjx', '', '1589175514');
INSERT INTO `lea_mini_video_record` VALUES (854, 10, 'dfg8138lannbyjx', '', '1589175518');
INSERT INTO `lea_mini_video_record` VALUES (855, 10, 'dfg8138lannbyjx', '', '1589175520');
INSERT INTO `lea_mini_video_record` VALUES (856, 27, '06f338d6r1wa3my', '', '1589175690');
INSERT INTO `lea_mini_video_record` VALUES (857, 10, '06f338d6r1wa3my', '', '1589175713');
INSERT INTO `lea_mini_video_record` VALUES (858, 10, 'l8r3gm1zzu5u3nk', '', '1589175875');
INSERT INTO `lea_mini_video_record` VALUES (859, 10, 'l8r3gm1zzu5u3nk', '', '1589175906');
INSERT INTO `lea_mini_video_record` VALUES (860, 10, 'l8r3gm1zzu5u3nk', '', '1589175928');
INSERT INTO `lea_mini_video_record` VALUES (861, 10, 'l8r3gm1zzu5u3nk', '', '1589176008');
INSERT INTO `lea_mini_video_record` VALUES (862, 10, 'l8r3gm1zzu5u3nk', '', '1589176041');
INSERT INTO `lea_mini_video_record` VALUES (863, 10, 'l8r3gm1zzu5u3nk', '', '1589176067');
INSERT INTO `lea_mini_video_record` VALUES (864, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589176187');
INSERT INTO `lea_mini_video_record` VALUES (865, 10, 'mzc002001pvxwzy', 'i0033ciehdw', '1589181325');
INSERT INTO `lea_mini_video_record` VALUES (866, 28, 'iegjnp9pe9p6fp1', '', '1589181721');
INSERT INTO `lea_mini_video_record` VALUES (867, 29, 'iegjnp9pe9p6fp1', '', '1589182950');
INSERT INTO `lea_mini_video_record` VALUES (868, 10, '06f338d6r1wa3my', '', '1589185911');
INSERT INTO `lea_mini_video_record` VALUES (869, 10, '06f338d6r1wa3my', '', '1589195105');
INSERT INTO `lea_mini_video_record` VALUES (870, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589195698');
INSERT INTO `lea_mini_video_record` VALUES (871, 10, 'mzc00200rudqy7b', '', '1589196053');
INSERT INTO `lea_mini_video_record` VALUES (872, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589196549');
INSERT INTO `lea_mini_video_record` VALUES (873, 10, 'mzc00200kharxoe', '', '1589196744');
INSERT INTO `lea_mini_video_record` VALUES (874, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589196759');
INSERT INTO `lea_mini_video_record` VALUES (875, 10, 'dfg8138lannbyjx', '', '1589196773');
INSERT INTO `lea_mini_video_record` VALUES (876, 10, 'dfg8138lannbyjx', '', '1589196775');
INSERT INTO `lea_mini_video_record` VALUES (877, 10, 'dfg8138lannbyjx', '', '1589196777');
INSERT INTO `lea_mini_video_record` VALUES (878, 10, 'eazfh1m41s8e3bc', '', '1589196807');
INSERT INTO `lea_mini_video_record` VALUES (879, 10, 'eazfh1m41s8e3bc', '', '1589196809');
INSERT INTO `lea_mini_video_record` VALUES (880, 10, 'eazfh1m41s8e3bc', '', '1589196811');
INSERT INTO `lea_mini_video_record` VALUES (881, 10, 'eazfh1m41s8e3bc', '', '1589196813');
INSERT INTO `lea_mini_video_record` VALUES (882, 10, 'dfg8138lannbyjx', '', '1589196952');
INSERT INTO `lea_mini_video_record` VALUES (883, 10, 'uiq0rxuywu508qr', '', '1589196970');
INSERT INTO `lea_mini_video_record` VALUES (884, 10, 'uiq0rxuywu508qr', '', '1589196972');
INSERT INTO `lea_mini_video_record` VALUES (885, 10, 'uiq0rxuywu508qr', '', '1589196973');
INSERT INTO `lea_mini_video_record` VALUES (886, 10, 'uiq0rxuywu508qr', '', '1589196975');
INSERT INTO `lea_mini_video_record` VALUES (887, 10, 'uiq0rxuywu508qr', '', '1589196978');
INSERT INTO `lea_mini_video_record` VALUES (888, 10, 'uiq0rxuywu508qr', '', '1589196981');
INSERT INTO `lea_mini_video_record` VALUES (889, 10, 'uiq0rxuywu508qr', '', '1589196998');
INSERT INTO `lea_mini_video_record` VALUES (890, 10, '06f338d6r1wa3my', '', '1589197008');
INSERT INTO `lea_mini_video_record` VALUES (891, 10, 'mzc00200kharxoe', '', '1589197021');
INSERT INTO `lea_mini_video_record` VALUES (892, 10, 'mzc00200kharxoe', '', '1589198872');
INSERT INTO `lea_mini_video_record` VALUES (893, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589199660');
INSERT INTO `lea_mini_video_record` VALUES (894, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589199688');
INSERT INTO `lea_mini_video_record` VALUES (895, 10, 'mzc00200kharxoe', '', '1589199783');
INSERT INTO `lea_mini_video_record` VALUES (896, 10, 'mzc00200kharxoe', '', '1589199785');
INSERT INTO `lea_mini_video_record` VALUES (897, 10, 'mzc00200kharxoe', '', '1589199795');
INSERT INTO `lea_mini_video_record` VALUES (898, 10, 'mzc00200kharxoe', '', '1589199797');
INSERT INTO `lea_mini_video_record` VALUES (899, 10, 'mzc00200kharxoe', '', '1589199818');
INSERT INTO `lea_mini_video_record` VALUES (900, 10, 'mzc00200kharxoe', '', '1589199928');
INSERT INTO `lea_mini_video_record` VALUES (901, 10, 'mzc00200kharxoe', '', '1589201145');
INSERT INTO `lea_mini_video_record` VALUES (902, 25, 'eazfh1m41s8e3bc', '', '1589241477');
INSERT INTO `lea_mini_video_record` VALUES (903, 25, 'eazfh1m41s8e3bc', '', '1589241480');
INSERT INTO `lea_mini_video_record` VALUES (904, 25, 'dfg8138lannbyjx', '', '1589241484');
INSERT INTO `lea_mini_video_record` VALUES (905, 25, 'dfg8138lannbyjx', '', '1589241486');
INSERT INTO `lea_mini_video_record` VALUES (906, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1589241500');
INSERT INTO `lea_mini_video_record` VALUES (907, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589243218');
INSERT INTO `lea_mini_video_record` VALUES (908, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589280109');
INSERT INTO `lea_mini_video_record` VALUES (909, 10, 'mzc00200q06w7zx', 'h0033sei944', '1589282663');
INSERT INTO `lea_mini_video_record` VALUES (910, 10, 'dfg8138lannbyjx', '', '1589282718');
INSERT INTO `lea_mini_video_record` VALUES (911, 10, 'dfg8138lannbyjx', '', '1589282720');
INSERT INTO `lea_mini_video_record` VALUES (912, 10, 'dfg8138lannbyjx', '', '1589282722');
INSERT INTO `lea_mini_video_record` VALUES (913, 25, 'dfg8138lannbyjx', '', '1589283436');
INSERT INTO `lea_mini_video_record` VALUES (914, 25, 'dfg8138lannbyjx', '', '1589283438');
INSERT INTO `lea_mini_video_record` VALUES (915, 25, 'dfg8138lannbyjx', '', '1589283448');
INSERT INTO `lea_mini_video_record` VALUES (916, 10, 'dfg8138lannbyjx', '', '1589283467');
INSERT INTO `lea_mini_video_record` VALUES (917, 10, 'dfg8138lannbyjx', '', '1589283538');
INSERT INTO `lea_mini_video_record` VALUES (918, 10, 'dfg8138lannbyjx', '', '1589283555');
INSERT INTO `lea_mini_video_record` VALUES (919, 10, 'dfg8138lannbyjx', '', '1589283592');
INSERT INTO `lea_mini_video_record` VALUES (920, 10, 'iegjnp9pe9p6fp1', '', '1589283639');
INSERT INTO `lea_mini_video_record` VALUES (921, 10, 'dfg8138lannbyjx', '', '1589283643');
INSERT INTO `lea_mini_video_record` VALUES (922, 10, 'eazfh1m41s8e3bc', '', '1589283749');
INSERT INTO `lea_mini_video_record` VALUES (923, 10, 'e3pdjwjjbbcmsow', '', '1589283795');
INSERT INTO `lea_mini_video_record` VALUES (924, 10, 'e3pdjwjjbbcmsow', '', '1589283796');
INSERT INTO `lea_mini_video_record` VALUES (925, 10, 'gwz8nqvc78oexgm', '', '1589283956');
INSERT INTO `lea_mini_video_record` VALUES (926, 10, 'gwz8nqvc78oexgm', '', '1589283959');
INSERT INTO `lea_mini_video_record` VALUES (927, 10, 'gwz8nqvc78oexgm', '', '1589283961');
INSERT INTO `lea_mini_video_record` VALUES (928, 10, 'gwz8nqvc78oexgm', '', '1589283962');
INSERT INTO `lea_mini_video_record` VALUES (929, 10, 'gwz8nqvc78oexgm', '', '1589283964');
INSERT INTO `lea_mini_video_record` VALUES (930, 10, 'gwz8nqvc78oexgm', '', '1589283966');
INSERT INTO `lea_mini_video_record` VALUES (931, 10, 'gwz8nqvc78oexgm', '', '1589283968');
INSERT INTO `lea_mini_video_record` VALUES (932, 10, 'hzssbvhzc7xyr95', '', '1589283972');
INSERT INTO `lea_mini_video_record` VALUES (933, 10, 'hzssbvhzc7xyr95', '', '1589283974');
INSERT INTO `lea_mini_video_record` VALUES (934, 10, 'hzssbvhzc7xyr95', '', '1589283976');
INSERT INTO `lea_mini_video_record` VALUES (935, 10, 'iqwvbujgzj5obv1', '', '1589283982');
INSERT INTO `lea_mini_video_record` VALUES (936, 10, 'mlet450ud9xai1h', '', '1589284025');
INSERT INTO `lea_mini_video_record` VALUES (937, 10, 'mlet450ud9xai1h', '', '1589284027');
INSERT INTO `lea_mini_video_record` VALUES (938, 10, 'mzc00200h4tmk4d', '', '1589284108');
INSERT INTO `lea_mini_video_record` VALUES (939, 10, 'mzc00200r4rq2u1', '', '1589284120');
INSERT INTO `lea_mini_video_record` VALUES (940, 10, 'mzc00200r4rq2u1', '', '1589284122');
INSERT INTO `lea_mini_video_record` VALUES (941, 25, 'dfg8138lannbyjx', '', '1589284815');
INSERT INTO `lea_mini_video_record` VALUES (942, 25, 'dfg8138lannbyjx', '', '1589284818');
INSERT INTO `lea_mini_video_record` VALUES (943, 25, 'dfg8138lannbyjx', '', '1589284820');
INSERT INTO `lea_mini_video_record` VALUES (944, 10, 'dfg8138lannbyjx', '', '1589284870');
INSERT INTO `lea_mini_video_record` VALUES (945, 10, '06f338d6r1wa3my', '', '1589285878');
INSERT INTO `lea_mini_video_record` VALUES (946, 10, 'dfg8138lannbyjx', '', '1589285957');
INSERT INTO `lea_mini_video_record` VALUES (947, 10, 'dfg8138lannbyjx', '', '1589285960');
INSERT INTO `lea_mini_video_record` VALUES (948, 10, '06f338d6r1wa3my', '', '1589326533');
INSERT INTO `lea_mini_video_record` VALUES (949, 10, '06f338d6r1wa3my', '', '1589326536');
INSERT INTO `lea_mini_video_record` VALUES (950, 10, 'dxd1v76tmu0wjuj', 's0033m6u4or', '1589326610');
INSERT INTO `lea_mini_video_record` VALUES (951, 10, 'dxd1v76tmu0wjuj', 'w0033nieyca', '1589326616');
INSERT INTO `lea_mini_video_record` VALUES (952, 10, 'dxd1v76tmu0wjuj', 'u0033n5ew36', '1589326617');
INSERT INTO `lea_mini_video_record` VALUES (953, 10, 'dxd1v76tmu0wjuj', 'w0033nieyca', '1589326618');
INSERT INTO `lea_mini_video_record` VALUES (954, 10, 'dxd1v76tmu0wjuj', 'w0033nieyca', '1589326620');
INSERT INTO `lea_mini_video_record` VALUES (955, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1589326623');
INSERT INTO `lea_mini_video_record` VALUES (956, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1589326626');
INSERT INTO `lea_mini_video_record` VALUES (957, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1589326628');
INSERT INTO `lea_mini_video_record` VALUES (958, 10, 'dxd1v76tmu0wjuj', 'i0033cod4sv', '1589326630');
INSERT INTO `lea_mini_video_record` VALUES (959, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589326634');
INSERT INTO `lea_mini_video_record` VALUES (960, 10, '06f338d6r1wa3my', '', '1589328226');
INSERT INTO `lea_mini_video_record` VALUES (961, 10, '06f338d6r1wa3my', '', '1589328232');
INSERT INTO `lea_mini_video_record` VALUES (962, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589330061');
INSERT INTO `lea_mini_video_record` VALUES (963, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1589330062');
INSERT INTO `lea_mini_video_record` VALUES (964, 10, 'dfg8138lannbyjx', '', '1589601830');
INSERT INTO `lea_mini_video_record` VALUES (965, 10, 'dfg8138lannbyjx', '', '1589601832');
INSERT INTO `lea_mini_video_record` VALUES (966, 10, 'dfg8138lannbyjx', '', '1589601834');
INSERT INTO `lea_mini_video_record` VALUES (967, 10, 'dfg8138lannbyjx', '', '1589601836');
INSERT INTO `lea_mini_video_record` VALUES (968, 10, 'dfg8138lannbyjx', '', '1589601837');
INSERT INTO `lea_mini_video_record` VALUES (969, 10, '714pdmcrnqdlmdx', '', '1589602169');
INSERT INTO `lea_mini_video_record` VALUES (970, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589695263');
INSERT INTO `lea_mini_video_record` VALUES (971, 26, 'dxd1v76tmu0wjuj', 'n0033rr1tsn', '1589695267');
INSERT INTO `lea_mini_video_record` VALUES (972, 39, 'mzc002009mrek37', 'g00330i69rb', '1589965751');
INSERT INTO `lea_mini_video_record` VALUES (973, 39, 'mzc002009mrek37', 'u0033akv5ow', '1589965754');
INSERT INTO `lea_mini_video_record` VALUES (974, 10, 'mzc00200bqxuhqe', 'd0033lp15h7', '1590018033');
INSERT INTO `lea_mini_video_record` VALUES (975, 10, 'mzc0020095tf0wm', 's00338f1hq8', '1590018050');
INSERT INTO `lea_mini_video_record` VALUES (976, 10, 'dfg8138lannbyjx', '', '1590018075');
INSERT INTO `lea_mini_video_record` VALUES (977, 10, 'dfg8138lannbyjx', '', '1590018078');
INSERT INTO `lea_mini_video_record` VALUES (978, 25, '06f338d6r1wa3my', '', '1590122263');
INSERT INTO `lea_mini_video_record` VALUES (979, 25, '06f338d6r1wa3my', '', '1590122265');
INSERT INTO `lea_mini_video_record` VALUES (980, 25, '06f338d6r1wa3my', '', '1590122285');
INSERT INTO `lea_mini_video_record` VALUES (981, 25, '06f338d6r1wa3my', '', '1590122298');
INSERT INTO `lea_mini_video_record` VALUES (982, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1590122353');
INSERT INTO `lea_mini_video_record` VALUES (983, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1590122353');
INSERT INTO `lea_mini_video_record` VALUES (984, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1590122360');
INSERT INTO `lea_mini_video_record` VALUES (985, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1590122367');
INSERT INTO `lea_mini_video_record` VALUES (986, 25, 'dxd1v76tmu0wjuj', 'w003392c5xt', '1590122379');
INSERT INTO `lea_mini_video_record` VALUES (987, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1590122383');
INSERT INTO `lea_mini_video_record` VALUES (988, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1590122386');
INSERT INTO `lea_mini_video_record` VALUES (989, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1590122388');
INSERT INTO `lea_mini_video_record` VALUES (990, 25, 'mzc00200q06w7zx', 'l0033spqumo', '1590122393');
INSERT INTO `lea_mini_video_record` VALUES (991, 25, 'mzc00200q06w7zx', 'l0033spqumo', '1590122395');
INSERT INTO `lea_mini_video_record` VALUES (992, 25, 'dfg8138lannbyjx', '', '1590122440');
INSERT INTO `lea_mini_video_record` VALUES (993, 25, 'mzc0020004c4hf9', '', '1590122444');
INSERT INTO `lea_mini_video_record` VALUES (994, 25, 'mzc0020004c4hf9', '', '1590122446');
INSERT INTO `lea_mini_video_record` VALUES (995, 25, '714pdmcrnqdlmdx', '', '1590122464');
INSERT INTO `lea_mini_video_record` VALUES (996, 25, '714pdmcrnqdlmdx', '', '1590122470');
INSERT INTO `lea_mini_video_record` VALUES (997, 25, 'mlet450ud9xai1h', '', '1590122490');
INSERT INTO `lea_mini_video_record` VALUES (998, 25, 'mzc00200r4rq2u1', '', '1590122527');
INSERT INTO `lea_mini_video_record` VALUES (999, 25, 'mzc00200r4rq2u1', '', '1590122529');
INSERT INTO `lea_mini_video_record` VALUES (1000, 25, 'og0eputlxwet1cn', '', '1590122534');
INSERT INTO `lea_mini_video_record` VALUES (1001, 25, 'og0eputlxwet1cn', '', '1590122536');
INSERT INTO `lea_mini_video_record` VALUES (1002, 25, 'og0eputlxwet1cn', '', '1590122538');
INSERT INTO `lea_mini_video_record` VALUES (1003, 25, 'og0eputlxwet1cn', '', '1590122540');
INSERT INTO `lea_mini_video_record` VALUES (1004, 25, 'mzc00200i8egfzh', '', '1590122666');
INSERT INTO `lea_mini_video_record` VALUES (1005, 25, 'og0eputlxwet1cn', '', '1590122678');
INSERT INTO `lea_mini_video_record` VALUES (1006, 41, 'mzc00200q06w7zx', 'l0033spqumo', '1590133477');
INSERT INTO `lea_mini_video_record` VALUES (1007, 41, 'mzc00200q06w7zx', 'l0033spqumo', '1590133480');
INSERT INTO `lea_mini_video_record` VALUES (1008, 41, 'dfg8138lannbyjx', '', '1590133500');
INSERT INTO `lea_mini_video_record` VALUES (1009, 41, 'dfg8138lannbyjx', '', '1590133502');
INSERT INTO `lea_mini_video_record` VALUES (1010, 41, 'dfg8138lannbyjx', '', '1590133504');
INSERT INTO `lea_mini_video_record` VALUES (1011, 43, 'mzc00200q06w7zx', 'l0033spqumo', '1590149081');
INSERT INTO `lea_mini_video_record` VALUES (1012, 43, 'mzc00200q06w7zx', 'l0033spqumo', '1590149086');
INSERT INTO `lea_mini_video_record` VALUES (1013, 43, 'mzc00200q06w7zx', 'l0033e3vjlf', '1590149089');
INSERT INTO `lea_mini_video_record` VALUES (1014, 43, 'mzc002003qvshpe', '', '1590149451');
INSERT INTO `lea_mini_video_record` VALUES (1015, 43, 'mzc002003qvshpe', '', '1590149455');
INSERT INTO `lea_mini_video_record` VALUES (1016, 25, 'mzc0020004c4hf9', '', '1590239315');
INSERT INTO `lea_mini_video_record` VALUES (1017, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1590287424');
INSERT INTO `lea_mini_video_record` VALUES (1018, 10, 'dxd1v76tmu0wjuj', 't00331hibe7', '1590287426');
INSERT INTO `lea_mini_video_record` VALUES (1019, 10, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590287436');
INSERT INTO `lea_mini_video_record` VALUES (1020, 10, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590288345');
INSERT INTO `lea_mini_video_record` VALUES (1021, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1590465933');
INSERT INTO `lea_mini_video_record` VALUES (1022, 25, 'dxd1v76tmu0wjuj', 's0033s6x9tw', '1590465935');
INSERT INTO `lea_mini_video_record` VALUES (1023, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465940');
INSERT INTO `lea_mini_video_record` VALUES (1024, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465941');
INSERT INTO `lea_mini_video_record` VALUES (1025, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465942');
INSERT INTO `lea_mini_video_record` VALUES (1026, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465943');
INSERT INTO `lea_mini_video_record` VALUES (1027, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465944');
INSERT INTO `lea_mini_video_record` VALUES (1028, 25, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590465947');
INSERT INTO `lea_mini_video_record` VALUES (1029, 25, '3fvg46217gw800n', '', '1590466336');
INSERT INTO `lea_mini_video_record` VALUES (1030, 25, '3fvg46217gw800n', '', '1590466338');
INSERT INTO `lea_mini_video_record` VALUES (1031, 25, '3fvg46217gw800n', '', '1590466340');
INSERT INTO `lea_mini_video_record` VALUES (1032, 25, '3fvg46217gw800n', '', '1590466342');
INSERT INTO `lea_mini_video_record` VALUES (1033, 25, '714pdmcrnqdlmdx', '', '1590466346');
INSERT INTO `lea_mini_video_record` VALUES (1034, 25, '714pdmcrnqdlmdx', '', '1590468125');
INSERT INTO `lea_mini_video_record` VALUES (1035, 25, '714pdmcrnqdlmdx', '', '1590468127');
INSERT INTO `lea_mini_video_record` VALUES (1036, 24, '714pdmcrnqdlmdx', '', '1590470230');
INSERT INTO `lea_mini_video_record` VALUES (1037, 25, '714pdmcrnqdlmdx', '', '1590496545');
INSERT INTO `lea_mini_video_record` VALUES (1038, 25, '714pdmcrnqdlmdx', '', '1590496547');
INSERT INTO `lea_mini_video_record` VALUES (1039, 25, '714pdmcrnqdlmdx', '', '1590496597');
INSERT INTO `lea_mini_video_record` VALUES (1040, 25, 'd6mvesrx6j2ux4x', '', '1590496812');
INSERT INTO `lea_mini_video_record` VALUES (1041, 25, 'd6mvesrx6j2ux4x', '', '1590496818');
INSERT INTO `lea_mini_video_record` VALUES (1042, 25, 'bv8m91i5jj1w1ww', '', '1590496820');
INSERT INTO `lea_mini_video_record` VALUES (1043, 25, 'd6mvesrx6j2ux4x', '', '1590496820');
INSERT INTO `lea_mini_video_record` VALUES (1044, 25, 'bv8m91i5jj1w1ww', '', '1590496822');
INSERT INTO `lea_mini_video_record` VALUES (1045, 25, 'bv8m91i5jj1w1ww', '', '1590496826');
INSERT INTO `lea_mini_video_record` VALUES (1046, 25, 'bv8m91i5jj1w1ww', '', '1590496828');
INSERT INTO `lea_mini_video_record` VALUES (1047, 25, 'bv8m91i5jj1w1ww', '', '1590496830');
INSERT INTO `lea_mini_video_record` VALUES (1048, 25, 'bv8m91i5jj1w1ww', '', '1590496832');
INSERT INTO `lea_mini_video_record` VALUES (1049, 25, '714pdmcrnqdlmdx', '', '1590503063');
INSERT INTO `lea_mini_video_record` VALUES (1050, 25, '714pdmcrnqdlmdx', '', '1590503065');
INSERT INTO `lea_mini_video_record` VALUES (1051, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1590538976');
INSERT INTO `lea_mini_video_record` VALUES (1052, 10, '06f338d6r1wa3my', '', '1590539166');
INSERT INTO `lea_mini_video_record` VALUES (1053, 10, '06f338d6r1wa3my', '', '1590539207');
INSERT INTO `lea_mini_video_record` VALUES (1054, 10, '06f338d6r1wa3my', '', '1590539305');
INSERT INTO `lea_mini_video_record` VALUES (1055, 10, 'dfg8138lannbyjx', '', '1590540588');
INSERT INTO `lea_mini_video_record` VALUES (1056, 10, '06f338d6r1wa3my', '', '1590540593');
INSERT INTO `lea_mini_video_record` VALUES (1057, 25, 'mzc002009mrek37', 'g00330i69rb', '1590540610');
INSERT INTO `lea_mini_video_record` VALUES (1058, 10, 'mzc002009mrek37', 'f0033klruar', '1590540629');
INSERT INTO `lea_mini_video_record` VALUES (1059, 10, '06f338d6r1wa3my', '', '1590551246');
INSERT INTO `lea_mini_video_record` VALUES (1060, 10, '06f338d6r1wa3my', '', '1590551248');
INSERT INTO `lea_mini_video_record` VALUES (1061, 10, 'Q4FrbX7lSzbrMX', '1', '1590551257');
INSERT INTO `lea_mini_video_record` VALUES (1062, 10, 'Q4FrbX7lSzbrMX', '1', '1590551259');
INSERT INTO `lea_mini_video_record` VALUES (1063, 10, 'gKLoZBH5RnX0UB', '', '1590551270');
INSERT INTO `lea_mini_video_record` VALUES (1064, 10, 'gKLoZBH5RnX0UB', '', '1590551271');
INSERT INTO `lea_mini_video_record` VALUES (1065, 10, 'gKLoZBH5RnX0UB', '', '1590551273');
INSERT INTO `lea_mini_video_record` VALUES (1066, 10, 'gKLoZBH5RnX0UB', '', '1590551275');
INSERT INTO `lea_mini_video_record` VALUES (1067, 10, 'gKLoZBH5RnX0UB', '', '1590551283');
INSERT INTO `lea_mini_video_record` VALUES (1068, 10, 'gKLoZBH5RnX0UB', '', '1590551285');
INSERT INTO `lea_mini_video_record` VALUES (1069, 10, 'gKLoZBH5RnX0UB', '', '1590551287');
INSERT INTO `lea_mini_video_record` VALUES (1070, 10, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590551295');
INSERT INTO `lea_mini_video_record` VALUES (1071, 10, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590551297');
INSERT INTO `lea_mini_video_record` VALUES (1072, 10, 'dxd1v76tmu0wjuj', 'e00343tpajj', '1590551299');
INSERT INTO `lea_mini_video_record` VALUES (1073, 10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', '1590551302');
INSERT INTO `lea_mini_video_record` VALUES (1074, 10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', '1590551305');
INSERT INTO `lea_mini_video_record` VALUES (1075, 10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', '1590551305');
INSERT INTO `lea_mini_video_record` VALUES (1076, 10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', '1590551305');
INSERT INTO `lea_mini_video_record` VALUES (1077, 10, 'dxd1v76tmu0wjuj', 'n0034bss8e8', '1590551306');
INSERT INTO `lea_mini_video_record` VALUES (1078, 10, 'gqPlZBH6Q0L5TB', '', '1590551917');
INSERT INTO `lea_mini_video_record` VALUES (1079, 10, 'gqPlZBH6Q0L5TB', '', '1590551928');
INSERT INTO `lea_mini_video_record` VALUES (1080, 10, 'gqPlZBH6Q0L5TB', '', '1590552037');
INSERT INTO `lea_mini_video_record` VALUES (1081, 10, 'gqPlZBH6Q0L5TB', '', '1590552104');
INSERT INTO `lea_mini_video_record` VALUES (1082, 10, 'mzc00200q06w7zx', 'h0033sei944', '1590552866');
INSERT INTO `lea_mini_video_record` VALUES (1083, 10, 'Q4FrbX7lSzbrMX', '1', '1590552876');
INSERT INTO `lea_mini_video_record` VALUES (1084, 10, 'Q4FrbX7lSzbrMX', '42', '1590552884');
INSERT INTO `lea_mini_video_record` VALUES (1085, 10, 'gqPlZBH6Q0L5TB', '', '1590552931');
INSERT INTO `lea_mini_video_record` VALUES (1086, 10, '06f338d6r1wa3my', '', '1590553015');
INSERT INTO `lea_mini_video_record` VALUES (1087, 10, 'e3pdjwjjbbcmsow', '', '1590553044');
INSERT INTO `lea_mini_video_record` VALUES (1088, 10, 'e3pdjwjjbbcmsow', '', '1590553046');
INSERT INTO `lea_mini_video_record` VALUES (1089, 10, 'e3pdjwjjbbcmsow', '', '1590553047');
INSERT INTO `lea_mini_video_record` VALUES (1090, 10, 'f7pqur8uhmzltps', '', '1590553470');
INSERT INTO `lea_mini_video_record` VALUES (1091, 10, 'f7pqur8uhmzltps', '', '1590553472');
INSERT INTO `lea_mini_video_record` VALUES (1092, 10, 'eazfh1m41s8e3bc', '', '1590553478');
INSERT INTO `lea_mini_video_record` VALUES (1093, 10, 'mzc0020004c4hf9', '', '1590553559');
INSERT INTO `lea_mini_video_record` VALUES (1094, 10, 'orrvwxp2uvs5n5e', '', '1590553608');
INSERT INTO `lea_mini_video_record` VALUES (1095, 10, 'orrvwxp2uvs5n5e', '', '1590553611');
INSERT INTO `lea_mini_video_record` VALUES (1096, 10, 'orrvwxp2uvs5n5e', '', '1590553697');
INSERT INTO `lea_mini_video_record` VALUES (1097, 10, 'orrvwxp2uvs5n5e', '', '1590553699');
INSERT INTO `lea_mini_video_record` VALUES (1098, 10, 'orrvwxp2uvs5n5e', '', '1590553701');
INSERT INTO `lea_mini_video_record` VALUES (1099, 10, 'orrvwxp2uvs5n5e', '', '1590553703');
INSERT INTO `lea_mini_video_record` VALUES (1100, 10, 'orrvwxp2uvs5n5e', '', '1590553705');
INSERT INTO `lea_mini_video_record` VALUES (1101, 10, 'orrvwxp2uvs5n5e', '', '1590553707');
INSERT INTO `lea_mini_video_record` VALUES (1102, 10, 'orrvwxp2uvs5n5e', '', '1590553709');
INSERT INTO `lea_mini_video_record` VALUES (1103, 10, 'orrvwxp2uvs5n5e', '', '1590553711');
INSERT INTO `lea_mini_video_record` VALUES (1104, 10, 'orrvwxp2uvs5n5e', '', '1590553713');
INSERT INTO `lea_mini_video_record` VALUES (1105, 10, 'uiq0rxuywu508qr', '', '1590553718');
INSERT INTO `lea_mini_video_record` VALUES (1106, 10, 'uiq0rxuywu508qr', '', '1590553720');
INSERT INTO `lea_mini_video_record` VALUES (1107, 10, 'uiq0rxuywu508qr', '', '1590553722');
INSERT INTO `lea_mini_video_record` VALUES (1108, 10, 'uiq0rxuywu508qr', '', '1590553742');
INSERT INTO `lea_mini_video_record` VALUES (1109, 10, 'uiq0rxuywu508qr', '', '1590553744');
INSERT INTO `lea_mini_video_record` VALUES (1110, 10, 'uiq0rxuywu508qr', '', '1590553747');
INSERT INTO `lea_mini_video_record` VALUES (1111, 10, 'uiq0rxuywu508qr', '', '1590553750');
INSERT INTO `lea_mini_video_record` VALUES (1112, 10, 'v3sfrz8ws9ew7fw', '', '1590553756');
INSERT INTO `lea_mini_video_record` VALUES (1113, 10, 'mzc00200kharxoe', '', '1590674264');
INSERT INTO `lea_mini_video_record` VALUES (1114, 10, 'mzc00200kharxoe', '', '1590674266');
INSERT INTO `lea_mini_video_record` VALUES (1115, 10, 'mzc00200kharxoe', '', '1590674269');
INSERT INTO `lea_mini_video_record` VALUES (1116, 10, 'mzc00200kharxoe', '', '1590674272');
INSERT INTO `lea_mini_video_record` VALUES (1117, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1590674283');
INSERT INTO `lea_mini_video_record` VALUES (1118, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1590674500');
INSERT INTO `lea_mini_video_record` VALUES (1119, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1590674503');
INSERT INTO `lea_mini_video_record` VALUES (1120, 10, 'mzc00200k12f5gi', 'f0033d4ozs0', '1590674521');
INSERT INTO `lea_mini_video_record` VALUES (1121, 10, 'mzc00200k12f5gi', 'i0033y8f658', '1590674526');
INSERT INTO `lea_mini_video_record` VALUES (1122, 10, 'mzc00200k12f5gi', 'i0033y8f658', '1590674529');
INSERT INTO `lea_mini_video_record` VALUES (1123, 10, 'gKLoZBH5RnX0UB', '', '1590674583');
INSERT INTO `lea_mini_video_record` VALUES (1124, 10, 'mzc00200kharxoe', '', '1590674602');
INSERT INTO `lea_mini_video_record` VALUES (1125, 10, 'mzc00200q06w7zx', 'h0033sei944', '1590674609');
INSERT INTO `lea_mini_video_record` VALUES (1126, 10, 'mzc00200q06w7zx', 'h0033sei944', '1590674618');

-- ----------------------------
-- Table structure for lea_mini_video_t_v
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_t_v`;
CREATE TABLE `lea_mini_video_t_v`  (
  `vid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频ID',
  `tid` int(8) NOT NULL COMMENT '标签ID',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`vid`, `tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频标签对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_t_v
-- ----------------------------
INSERT INTO `lea_mini_video_t_v` VALUES ('06f338d6r1wa3my', 23, '1588494493');
INSERT INTO `lea_mini_video_t_v` VALUES ('06f338d6r1wa3my', 24, '1588494493');
INSERT INTO `lea_mini_video_t_v` VALUES ('06f338d6r1wa3my', 27, '1588494493');
INSERT INTO `lea_mini_video_t_v` VALUES ('2nnk0mjf3bsk6tt', 4, '1587916466');
INSERT INTO `lea_mini_video_t_v` VALUES ('2nnk0mjf3bsk6tt', 9, '1587916466');
INSERT INTO `lea_mini_video_t_v` VALUES ('2nnk0mjf3bsk6tt', 14, '1587916466');
INSERT INTO `lea_mini_video_t_v` VALUES ('3fvg46217gw800n', 21, '1587914291');
INSERT INTO `lea_mini_video_t_v` VALUES ('3fvg46217gw800n', 23, '1587914291');
INSERT INTO `lea_mini_video_t_v` VALUES ('3fvg46217gw800n', 24, '1587914291');
INSERT INTO `lea_mini_video_t_v` VALUES ('3fvg46217gw800n', 31, '1587914291');
INSERT INTO `lea_mini_video_t_v` VALUES ('41dicgms0277zoz', 4, '1587916533');
INSERT INTO `lea_mini_video_t_v` VALUES ('41dicgms0277zoz', 5, '1587916533');
INSERT INTO `lea_mini_video_t_v` VALUES ('41dicgms0277zoz', 7, '1587916533');
INSERT INTO `lea_mini_video_t_v` VALUES ('5lmuabxmb5jf1fl', 18, '1587913759');
INSERT INTO `lea_mini_video_t_v` VALUES ('5lmuabxmb5jf1fl', 22, '1587913759');
INSERT INTO `lea_mini_video_t_v` VALUES ('5lmuabxmb5jf1fl', 23, '1587913759');
INSERT INTO `lea_mini_video_t_v` VALUES ('5lmuabxmb5jf1fl', 24, '1587913759');
INSERT INTO `lea_mini_video_t_v` VALUES ('714pdmcrnqdlmdx', 19, '1589118165');
INSERT INTO `lea_mini_video_t_v` VALUES ('714pdmcrnqdlmdx', 24, '1589118165');
INSERT INTO `lea_mini_video_t_v` VALUES ('714pdmcrnqdlmdx', 26, '1589118165');
INSERT INTO `lea_mini_video_t_v` VALUES ('7casb7nes159mrl', 18, '1587914305');
INSERT INTO `lea_mini_video_t_v` VALUES ('7casb7nes159mrl', 20, '1587914305');
INSERT INTO `lea_mini_video_t_v` VALUES ('7casb7nes159mrl', 24, '1587914305');
INSERT INTO `lea_mini_video_t_v` VALUES ('agq0ydhoxzitatw', 18, '1587914441');
INSERT INTO `lea_mini_video_t_v` VALUES ('agq0ydhoxzitatw', 22, '1587914441');
INSERT INTO `lea_mini_video_t_v` VALUES ('agq0ydhoxzitatw', 23, '1587914441');
INSERT INTO `lea_mini_video_t_v` VALUES ('agq0ydhoxzitatw', 24, '1587914441');
INSERT INTO `lea_mini_video_t_v` VALUES ('agq0ydhoxzitatw', 27, '1587914441');
INSERT INTO `lea_mini_video_t_v` VALUES ('bv8m91i5jj1w1ww', 22, '1589118036');
INSERT INTO `lea_mini_video_t_v` VALUES ('bv8m91i5jj1w1ww', 23, '1589118036');
INSERT INTO `lea_mini_video_t_v` VALUES ('bv8m91i5jj1w1ww', 24, '1589118036');
INSERT INTO `lea_mini_video_t_v` VALUES ('bv8m91i5jj1w1ww', 27, '1589118036');
INSERT INTO `lea_mini_video_t_v` VALUES ('c0oqsamtnxba64q', 8, '1587916479');
INSERT INTO `lea_mini_video_t_v` VALUES ('d6mvesrx6j2ux4x', 18, '1587914237');
INSERT INTO `lea_mini_video_t_v` VALUES ('d6mvesrx6j2ux4x', 19, '1587914237');
INSERT INTO `lea_mini_video_t_v` VALUES ('d6mvesrx6j2ux4x', 24, '1587914237');
INSERT INTO `lea_mini_video_t_v` VALUES ('d6mvesrx6j2ux4x', 30, '1587914237');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 18, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 19, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 21, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 23, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 26, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('d8t20577qy9vy13', 27, '1587914505');
INSERT INTO `lea_mini_video_t_v` VALUES ('dfg8138lannbyjx', 18, '1588255817');
INSERT INTO `lea_mini_video_t_v` VALUES ('dfg8138lannbyjx', 22, '1588255817');
INSERT INTO `lea_mini_video_t_v` VALUES ('dfg8138lannbyjx', 27, '1588255817');
INSERT INTO `lea_mini_video_t_v` VALUES ('dxd1v76tmu0wjuj', 4, '1590287869');
INSERT INTO `lea_mini_video_t_v` VALUES ('dxd1v76tmu0wjuj', 6, '1590287869');
INSERT INTO `lea_mini_video_t_v` VALUES ('dxd1v76tmu0wjuj', 10, '1590287869');
INSERT INTO `lea_mini_video_t_v` VALUES ('e3pdjwjjbbcmsow', 25, '1589118122');
INSERT INTO `lea_mini_video_t_v` VALUES ('e3pdjwjjbbcmsow', 26, '1589118122');
INSERT INTO `lea_mini_video_t_v` VALUES ('e3pdjwjjbbcmsow', 27, '1589118122');
INSERT INTO `lea_mini_video_t_v` VALUES ('eazfh1m41s8e3bc', 27, '1589118065');
INSERT INTO `lea_mini_video_t_v` VALUES ('f7pqur8uhmzltps', 18, '1589118090');
INSERT INTO `lea_mini_video_t_v` VALUES ('f7pqur8uhmzltps', 21, '1589118090');
INSERT INTO `lea_mini_video_t_v` VALUES ('f7pqur8uhmzltps', 23, '1589118090');
INSERT INTO `lea_mini_video_t_v` VALUES ('f7pqur8uhmzltps', 24, '1589118090');
INSERT INTO `lea_mini_video_t_v` VALUES ('fyxgdb78znsgkti', 1, '1587916245');
INSERT INTO `lea_mini_video_t_v` VALUES ('fyxgdb78znsgkti', 5, '1587916245');
INSERT INTO `lea_mini_video_t_v` VALUES ('fyxgdb78znsgkti', 6, '1587916245');
INSERT INTO `lea_mini_video_t_v` VALUES ('fyxgdb78znsgkti', 12, '1587916245');
INSERT INTO `lea_mini_video_t_v` VALUES ('gfmdwy050xqp85e', 18, '1587913605');
INSERT INTO `lea_mini_video_t_v` VALUES ('gfmdwy050xqp85e', 21, '1587913605');
INSERT INTO `lea_mini_video_t_v` VALUES ('gfmdwy050xqp85e', 23, '1587913605');
INSERT INTO `lea_mini_video_t_v` VALUES ('gfmdwy050xqp85e', 24, '1587913605');
INSERT INTO `lea_mini_video_t_v` VALUES ('gKLoZBH5RnX0UB', 22, '1590545322');
INSERT INTO `lea_mini_video_t_v` VALUES ('gKLoZBH5RnX0UB', 26, '1590545322');
INSERT INTO `lea_mini_video_t_v` VALUES ('gqPlZBH6Q0L5TB', 30, '1590551882');
INSERT INTO `lea_mini_video_t_v` VALUES ('gwz8nqvc78oexgm', 25, '1589118138');
INSERT INTO `lea_mini_video_t_v` VALUES ('gwz8nqvc78oexgm', 27, '1589118138');
INSERT INTO `lea_mini_video_t_v` VALUES ('hk765ykwj4bjpcl', 24, '1587914253');
INSERT INTO `lea_mini_video_t_v` VALUES ('hzssbvhzc7xyr95', 22, '1587914189');
INSERT INTO `lea_mini_video_t_v` VALUES ('hzssbvhzc7xyr95', 24, '1587914189');
INSERT INTO `lea_mini_video_t_v` VALUES ('hzssbvhzc7xyr95', 26, '1587914189');
INSERT INTO `lea_mini_video_t_v` VALUES ('i8wue9gam2mewxf', 5, '1587916520');
INSERT INTO `lea_mini_video_t_v` VALUES ('i8wue9gam2mewxf', 7, '1587916520');
INSERT INTO `lea_mini_video_t_v` VALUES ('iegjnp9pe9p6fp1', 23, '1587914545');
INSERT INTO `lea_mini_video_t_v` VALUES ('iegjnp9pe9p6fp1', 27, '1587914545');
INSERT INTO `lea_mini_video_t_v` VALUES ('iqwvbujgzj5obv1', 18, '1589118178');
INSERT INTO `lea_mini_video_t_v` VALUES ('iqwvbujgzj5obv1', 21, '1589118178');
INSERT INTO `lea_mini_video_t_v` VALUES ('iqwvbujgzj5obv1', 22, '1589118178');
INSERT INTO `lea_mini_video_t_v` VALUES ('iqwvbujgzj5obv1', 23, '1589118178');
INSERT INTO `lea_mini_video_t_v` VALUES ('iqwvbujgzj5obv1', 24, '1589118178');
INSERT INTO `lea_mini_video_t_v` VALUES ('ix6w4wausx518m8', 4, '1587916454');
INSERT INTO `lea_mini_video_t_v` VALUES ('ix6w4wausx518m8', 10, '1587916454');
INSERT INTO `lea_mini_video_t_v` VALUES ('j6b8z5urtg2wj5h', 1, '1587916431');
INSERT INTO `lea_mini_video_t_v` VALUES ('j6b8z5urtg2wj5h', 4, '1587916431');
INSERT INTO `lea_mini_video_t_v` VALUES ('j6b8z5urtg2wj5h', 5, '1587916431');
INSERT INTO `lea_mini_video_t_v` VALUES ('j6b8z5urtg2wj5h', 6, '1587916431');
INSERT INTO `lea_mini_video_t_v` VALUES ('jnngbw19gy8ctes', 4, '1589116841');
INSERT INTO `lea_mini_video_t_v` VALUES ('jnngbw19gy8ctes', 5, '1589116840');
INSERT INTO `lea_mini_video_t_v` VALUES ('l8r3gm1zzu5u3nk', 18, '1589118292');
INSERT INTO `lea_mini_video_t_v` VALUES ('l8r3gm1zzu5u3nk', 22, '1589118292');
INSERT INTO `lea_mini_video_t_v` VALUES ('l8r3gm1zzu5u3nk', 23, '1589118292');
INSERT INTO `lea_mini_video_t_v` VALUES ('l8r3gm1zzu5u3nk', 24, '1589118292');
INSERT INTO `lea_mini_video_t_v` VALUES ('mlet450ud9xai1h', 18, '1589118221');
INSERT INTO `lea_mini_video_t_v` VALUES ('mlet450ud9xai1h', 21, '1589118221');
INSERT INTO `lea_mini_video_t_v` VALUES ('mlet450ud9xai1h', 23, '1589118221');
INSERT INTO `lea_mini_video_t_v` VALUES ('mlet450ud9xai1h', 24, '1589118221');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc0020004c4hf9', 31, '1589073125');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200088clbp', 4, '1588634032');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200088clbp', 6, '1588634032');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200088clbp', 10, '1588634032');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200189u0ml', 18, '1588256057');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200189u0ml', 19, '1588256057');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200189u0ml', 20, '1588256057');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002001pvxwzy', 5, '1588642377');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002003qvshpe', 22, '1587913724');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002003qvshpe', 25, '1587913724');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002003qvshpe', 26, '1587913724');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc0020095tf0wm', 4, '1587916415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc0020095tf0wm', 11, '1587916415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002009mrek37', 1, '1587916267');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002009mrek37', 6, '1587916267');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc002009mrek37', 14, '1587916267');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200bqxuhqe', 4, '1587916391');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200bqxuhqe', 5, '1587916391');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200bqxuhqe', 11, '1587916391');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200f995x6t', 4, '1587916333');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200f995x6t', 10, '1587916333');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200fdh9pwh', 24, '1589117489');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200fdh9pwh', 27, '1589117489');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200gwu2lmt', 18, '1587913746');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200gwu2lmt', 27, '1587913746');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200h4tmk4d', 26, '1588642551');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200h4tmk4d', 27, '1588642551');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200i8egfzh', 18, '1588642512');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200i8egfzh', 27, '1588642512');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200ibqz3tc', 4, '1588634033');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200ibqz3tc', 6, '1588634033');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200ibqz3tc', 10, '1588634033');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200k12f5gi', 4, '1589072452');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200k12f5gi', 9, '1589072452');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kharxoe', 18, '1589072978');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kharxoe', 25, '1589072978');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kqs6xxb', 18, '1589117313');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kqs6xxb', 22, '1589117313');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kqs6xxb', 25, '1589117313');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200kqs6xxb', 26, '1589117313');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mnujrjg', 18, '1587913415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mnujrjg', 22, '1587913415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mnujrjg', 25, '1587913415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mnujrjg', 27, '1587913415');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mr2bj9s', 18, '1587914008');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200mr2bj9s', 21, '1587914008');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200q06w7zx', 1, '1587950816');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200q06w7zx', 2, '1587950816');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200q06w7zx', 3, '1587950816');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200q06w7zx', 4, '1587950816');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r4rq2u1', 19, '1587996439');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r4rq2u1', 29, '1587996439');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r4rq2u1', 30, '1587996439');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r79j2lc', 21, '1588642534');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r79j2lc', 23, '1588642534');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r79j2lc', 24, '1588642534');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200r79j2lc', 27, '1588642534');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200rudqy7b', 18, '1587914166');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200rudqy7b', 22, '1587914166');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200rudqy7b', 25, '1587914166');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200vmvwq2r', 18, '1587914110');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200vmvwq2r', 22, '1587914110');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200vmvwq2r', 23, '1587914110');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200vmvwq2r', 25, '1587914110');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200xf1pgs4', 22, '1588255895');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200xf1pgs4', 26, '1588255895');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200xf1pgs4', 27, '1588255895');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z8d4if9', 18, '1587914144');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z8d4if9', 22, '1587914144');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z8d4if9', 25, '1587914144');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z9th9sx', 1, '1587916375');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z9th9sx', 4, '1587916375');
INSERT INTO `lea_mini_video_t_v` VALUES ('mzc00200z9th9sx', 5, '1587916375');
INSERT INTO `lea_mini_video_t_v` VALUES ('og0eputlxwet1cn', 24, '1587914323');
INSERT INTO `lea_mini_video_t_v` VALUES ('og0eputlxwet1cn', 27, '1587914323');
INSERT INTO `lea_mini_video_t_v` VALUES ('orrvwxp2uvs5n5e', 18, '1589117978');
INSERT INTO `lea_mini_video_t_v` VALUES ('orrvwxp2uvs5n5e', 21, '1589117978');
INSERT INTO `lea_mini_video_t_v` VALUES ('orrvwxp2uvs5n5e', 24, '1589117978');
INSERT INTO `lea_mini_video_t_v` VALUES ('otff8quzy6b2dlw', 4, '1588634036');
INSERT INTO `lea_mini_video_t_v` VALUES ('otff8quzy6b2dlw', 6, '1588634036');
INSERT INTO `lea_mini_video_t_v` VALUES ('otff8quzy6b2dlw', 10, '1588634036');
INSERT INTO `lea_mini_video_t_v` VALUES ('owyequak2ck3bra', 18, '1587914202');
INSERT INTO `lea_mini_video_t_v` VALUES ('owyequak2ck3bra', 19, '1587914202');
INSERT INTO `lea_mini_video_t_v` VALUES ('owyequak2ck3bra', 24, '1587914202');
INSERT INTO `lea_mini_video_t_v` VALUES ('Q4FrbX7lSzbrMX', 4, '1590716412');
INSERT INTO `lea_mini_video_t_v` VALUES ('Q4FrbX7lSzbrMX', 6, '1590716412');
INSERT INTO `lea_mini_video_t_v` VALUES ('Q4FrbX7lSzbrMX', 10, '1590716412');
INSERT INTO `lea_mini_video_t_v` VALUES ('t2t7544bcr1pw8r', 18, '1587914391');
INSERT INTO `lea_mini_video_t_v` VALUES ('t2t7544bcr1pw8r', 19, '1587914391');
INSERT INTO `lea_mini_video_t_v` VALUES ('t2t7544bcr1pw8r', 24, '1587914391');
INSERT INTO `lea_mini_video_t_v` VALUES ('t2t7544bcr1pw8r', 27, '1587914391');
INSERT INTO `lea_mini_video_t_v` VALUES ('t2t7544bcr1pw8r', 29, '1587914391');
INSERT INTO `lea_mini_video_t_v` VALUES ('uiq0rxuywu508qr', 18, '1589118011');
INSERT INTO `lea_mini_video_t_v` VALUES ('uiq0rxuywu508qr', 19, '1589118011');
INSERT INTO `lea_mini_video_t_v` VALUES ('uiq0rxuywu508qr', 22, '1589118011');
INSERT INTO `lea_mini_video_t_v` VALUES ('uiq0rxuywu508qr', 24, '1589118011');
INSERT INTO `lea_mini_video_t_v` VALUES ('uiq0rxuywu508qr', 27, '1589118011');
INSERT INTO `lea_mini_video_t_v` VALUES ('v2098lbuihuqs11', 18, '1587913778');
INSERT INTO `lea_mini_video_t_v` VALUES ('v2098lbuihuqs11', 21, '1587913778');
INSERT INTO `lea_mini_video_t_v` VALUES ('v2098lbuihuqs11', 22, '1587913778');
INSERT INTO `lea_mini_video_t_v` VALUES ('v2098lbuihuqs11', 23, '1587913778');
INSERT INTO `lea_mini_video_t_v` VALUES ('v2098lbuihuqs11', 24, '1587913778');
INSERT INTO `lea_mini_video_t_v` VALUES ('v3sfrz8ws9ew7fw', 18, '1587914278');
INSERT INTO `lea_mini_video_t_v` VALUES ('v3sfrz8ws9ew7fw', 19, '1587914278');
INSERT INTO `lea_mini_video_t_v` VALUES ('v3sfrz8ws9ew7fw', 24, '1587914278');
INSERT INTO `lea_mini_video_t_v` VALUES ('v3sfrz8ws9ew7fw', 29, '1587914278');
INSERT INTO `lea_mini_video_t_v` VALUES ('v3sfrz8ws9ew7fw', 30, '1587914278');
INSERT INTO `lea_mini_video_t_v` VALUES ('vjrvzv3s517g6m8', 23, '1587914522');
INSERT INTO `lea_mini_video_t_v` VALUES ('vjrvzv3s517g6m8', 24, '1587914522');
INSERT INTO `lea_mini_video_t_v` VALUES ('vjrvzv3s517g6m8', 27, '1587914522');
INSERT INTO `lea_mini_video_t_v` VALUES ('wu1e7mrffzvibjy', 4, '1587916312');
INSERT INTO `lea_mini_video_t_v` VALUES ('wu1e7mrffzvibjy', 11, '1587916312');
INSERT INTO `lea_mini_video_t_v` VALUES ('wu1e7mrffzvibjy', 15, '1587916312');
INSERT INTO `lea_mini_video_t_v` VALUES ('xjgp1yiles0rzv7', 24, '1587914127');
INSERT INTO `lea_mini_video_t_v` VALUES ('xjgp1yiles0rzv7', 28, '1587914127');
INSERT INTO `lea_mini_video_t_v` VALUES ('xjgp1yiles0rzv7', 29, '1587914127');
INSERT INTO `lea_mini_video_t_v` VALUES ('xmw2gfef226jygj', 4, '1588634038');
INSERT INTO `lea_mini_video_t_v` VALUES ('xmw2gfef226jygj', 6, '1588634038');
INSERT INTO `lea_mini_video_t_v` VALUES ('xmw2gfef226jygj', 10, '1588634038');
INSERT INTO `lea_mini_video_t_v` VALUES ('y0vxr2r3ptzxbic', 18, '1589118207');
INSERT INTO `lea_mini_video_t_v` VALUES ('y0vxr2r3ptzxbic', 23, '1589118207');
INSERT INTO `lea_mini_video_t_v` VALUES ('y0vxr2r3ptzxbic', 24, '1589118207');
INSERT INTO `lea_mini_video_t_v` VALUES ('y0vxr2r3ptzxbic', 27, '1589118207');
INSERT INTO `lea_mini_video_t_v` VALUES ('zgwpjn6b4mifpg4', 4, '1587916502');
INSERT INTO `lea_mini_video_t_v` VALUES ('zgwpjn6b4mifpg4', 5, '1587916502');
INSERT INTO `lea_mini_video_t_v` VALUES ('zl6n65vy9hgrarl', 18, '1587914348');
INSERT INTO `lea_mini_video_t_v` VALUES ('zl6n65vy9hgrarl', 21, '1587914348');
INSERT INTO `lea_mini_video_t_v` VALUES ('zl6n65vy9hgrarl', 23, '1587914348');
INSERT INTO `lea_mini_video_t_v` VALUES ('zl6n65vy9hgrarl', 24, '1587914348');
INSERT INTO `lea_mini_video_t_v` VALUES ('zl6n65vy9hgrarl', 27, '1587914348');
INSERT INTO `lea_mini_video_t_v` VALUES ('zr5a67l333ehzu9', 18, '1587914219');
INSERT INTO `lea_mini_video_t_v` VALUES ('zr5a67l333ehzu9', 22, '1587914219');
INSERT INTO `lea_mini_video_t_v` VALUES ('zr5a67l333ehzu9', 24, '1587914219');
INSERT INTO `lea_mini_video_t_v` VALUES ('zr5a67l333ehzu9', 27, '1587914219');

-- ----------------------------
-- Table structure for lea_mini_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `lea_mini_video_tag`;
CREATE TABLE `lea_mini_video_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签类型',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_mini_video_tag
-- ----------------------------
INSERT INTO `lea_mini_video_tag` VALUES (1, 'tv', '奇幻', 0, 1, '1', '1587906993', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (2, 'tv', '动作', 0, 1, '1', '1587907037', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (3, 'tv', '冒险', 0, 1, '1', '1587907047', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (4, 'tv', '剧情', 0, 1, '1', '1587907056', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (5, 'tv', '爱情', 0, 1, '1', '1587907101', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (6, 'tv', '古装', 0, 1, '1', '1587907109', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (7, 'tv', '青春', 0, 1, '1', '1587907121', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (8, 'tv', '喜剧', 0, 1, '1', '1587907146', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (9, 'tv', '犯罪', 0, 1, '1', '1587907166', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (10, 'tv', '历史', 0, 1, '1', '1587907221', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (11, 'tv', '都市', 0, 1, '1', '1587907239', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (12, 'tv', '偶像', 0, 1, '1', '1587907282', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (13, 'tv', '情感', 0, 1, '1', '1587907311', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (14, 'tv', '悬疑', 0, 1, '1', '1587907348', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (15, 'tv', '家庭', 0, 1, '1', '1587907436', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (16, 'tv', '励志', 0, 1, '1', '1587907461', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (18, 'movie', '动作', 0, 1, '1', '1587907515', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (19, 'movie', '犯罪', 0, 1, '1', '1587907522', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (20, 'movie', '战争', 0, 1, '1', '1587907530', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (21, 'movie', '科幻', 0, 1, '1', '1587907554', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (22, 'movie', '奇幻', 0, 1, '1', '1587907563', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (23, 'movie', '冒险', 0, 1, '1', '1587907576', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (24, 'movie', '院线', 0, 1, '1', '1587907586', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (25, 'movie', '古装', 0, 1, '1', '1587907611', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (26, 'movie', '爱情', 0, 1, '1', '1587907619', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (27, 'movie', '喜剧', 0, 1, '1', '1587907655', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (28, 'movie', '传记', 0, 1, '1', '1587907734', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (29, 'movie', '悬疑', 0, 1, '1', '1587907761', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (30, 'movie', '惊悚', 0, 1, '1', '1587907838', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (31, 'movie', '灾难', 0, 1, '1', '1587907861', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (32, 'movie', '历史', 0, 1, '1', '1587907875', NULL, NULL);
INSERT INTO `lea_mini_video_tag` VALUES (33, 'movie', '战争', 0, 1, '1', '1587907883', NULL, NULL);

-- ----------------------------
-- Table structure for lea_pinduoduo_provider
-- ----------------------------
DROP TABLE IF EXISTS `lea_pinduoduo_provider`;
CREATE TABLE `lea_pinduoduo_provider`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `developer_id` int(8) NOT NULL COMMENT '开发者id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `client_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'client_id',
  `client_secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'client_secret',
  `developer_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发账号',
  `developer_pwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发者账号',
  `use_num` int(4) NOT NULL DEFAULT 0 COMMENT '使用次数',
  `limit_num` int(4) NOT NULL DEFAULT 0 COMMENT '限制数量',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼多多供应商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_pinduoduo_provider
-- ----------------------------
INSERT INTO `lea_pinduoduo_provider` VALUES (1, 60084, '派店铺管理', '52c1de13e0754f7ba0b3176a411d0dcd', '2e9675f6d78e567f22faf41066857b063e57ee07', '18438622618', '', 5, 5, 1, '1', '1581746403', '1', '1583854780');
INSERT INTO `lea_pinduoduo_provider` VALUES (4, 65693, '里派', 'a2410d9d544b4fb68d4a4075e4301393', '4e62db6bd75c69a4d07581e1d47f703e6f31bce6', '17334420752', '', 5, 5, 1, '1', '1582548225', '1', '1587606848');
INSERT INTO `lea_pinduoduo_provider` VALUES (5, 11111, '里派ERP', 'd87fded4a728449d8af40039307ef2ba', ' 63431d2f5df89def8376345dc941f7b3215d0ce5', '', '', 0, 100, 1, '1', '1584617591', NULL, NULL);

-- ----------------------------
-- Table structure for lea_pinduoduo_store
-- ----------------------------
DROP TABLE IF EXISTS `lea_pinduoduo_store`;
CREATE TABLE `lea_pinduoduo_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `aid` int(8) NOT NULL COMMENT '账号id',
  `pid` int(8) NULL DEFAULT NULL COMMENT '供应商id',
  `mall_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺id',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺账号名',
  `mall_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `mall_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺简介',
  `merchant_type` tinyint(1) NULL DEFAULT NULL COMMENT '店铺类型,1:个人 2:企业 3:旗舰店 4:专卖店 5:专营店 6:普通店',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺logo',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拼多多店铺表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_pinduoduo_store
-- ----------------------------
INSERT INTO `lea_pinduoduo_store` VALUES (1, 1, 5, '691397125', 'pdd69139712531', '里派小店', '您的小店已开启，为了更方便消费者了解您的店铺，快来补充店铺详情吧~', 1, 'https://t16img.yangkeduo.com/img_check/2019-10-19/230e25dbffaaa52ffa56dc56d776bbda.jpg', 1, '1', '1581833996', NULL, NULL);

-- ----------------------------
-- Table structure for lea_project
-- ----------------------------
DROP TABLE IF EXISTS `lea_project`;
CREATE TABLE `lea_project`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `manager` int(10) NOT NULL COMMENT '项目负责人',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目简介',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目开始时间',
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目结束时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `language` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编程语言',
  `sql_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目数据库ip',
  `sql_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目数据库名称',
  `sql_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目数据库密码',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '项目状态0未开始 1进行中 2已完成 3维护中 4已终止',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_project
-- ----------------------------
INSERT INTO `lea_project` VALUES (1, '拼多多商品信息导出', 1, '导出拼多多商品信息，C#爬虫', '2020-02-25 00:00:00', '2020-02-29 00:00:00', '', 'C#', '', '', '', 2, '1', '1582532363', '1', '1590407782');
INSERT INTO `lea_project` VALUES (4, '拼多多商家辅助工具', 1, '拼多多商家辅助工具', '2020-02-25 00:00:00', '2020-02-29 00:00:00', '', 'PHP,PYTHON,C#', '', '', '', 0, '1', '1582604004', '1', '1582686999');

-- ----------------------------
-- Table structure for lea_project_bug
-- ----------------------------
DROP TABLE IF EXISTS `lea_project_bug`;
CREATE TABLE `lea_project_bug`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目BUG表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_project_bug
-- ----------------------------

-- ----------------------------
-- Table structure for lea_project_clausse
-- ----------------------------
DROP TABLE IF EXISTS `lea_project_clausse`;
CREATE TABLE `lea_project_clausse`  (
  `id` int(10) NOT NULL COMMENT '需求ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目分工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_project_clausse
-- ----------------------------

-- ----------------------------
-- Table structure for lea_project_person
-- ----------------------------
DROP TABLE IF EXISTS `lea_project_person`;
CREATE TABLE `lea_project_person`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '项目人员编号',
  `aid` int(10) NOT NULL COMMENT '人员id',
  `pid` int(10) NOT NULL COMMENT '项目ID',
  `status` tinyint(1) NOT NULL COMMENT '状态 1 可用 0不可用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_project_person
-- ----------------------------

-- ----------------------------
-- Table structure for lea_project_role
-- ----------------------------
DROP TABLE IF EXISTS `lea_project_role`;
CREATE TABLE `lea_project_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `pid` int(8) NOT NULL COMMENT '项目ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1可用 0不可用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_project_role
-- ----------------------------

-- ----------------------------
-- Table structure for lea_system_config
-- ----------------------------
DROP TABLE IF EXISTS `lea_system_config`;
CREATE TABLE `lea_system_config`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tab_id` int(8) NULL DEFAULT NULL COMMENT '分组id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题名称',
  `form_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单名称',
  `form_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单类型',
  `tag_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签类型',
  `upload_type` tinyint(1) NULL DEFAULT NULL COMMENT '上传配置',
  `param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `is_show` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否显示',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '角色状态1可用0不用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_system_config
-- ----------------------------
INSERT INTO `lea_system_config` VALUES (1, 1, '网站标题', 'title', 'text', 'input', 0, '', '派后台管理系统', 'systemConfig(\"title\")', 90, 1, 1, '1', '1582792265', '1', '1583855342');
INSERT INTO `lea_system_config` VALUES (2, 1, '网站图标', 'favicon', 'file', 'input', 0, '', 'http://file.cos.leapy.cn/image/20200509/898b720200509204528197.jpg', '', 89, 1, 1, '1', '1582793160', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (3, 1, '站点关键词', 'keywords', 'text', 'input', 0, '', '派后台管理系统', '', 88, 1, 1, '1', '1582793221', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (4, 1, '站点描述', 'description', 'text', 'input', 0, '', '派后台管理系统', '', 87, 1, 1, '1', '1582793248', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (5, 1, '网站作者', 'author', 'text', 'input', 0, '', 'cfn', '', 86, 1, 1, '1', '1582793305', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (6, 1, '后台LOGO', 'admin_logo', 'file', 'input', 0, '', '/upload/image/20200228/c42005f7fafb58106c33e58279b2f396.png', '', 85, 1, 1, '1', '1582793393', '1', '1582793700');
INSERT INTO `lea_system_config` VALUES (7, 1, '版权信息', 'copyright', 'text', 'textarea', 0, '', 'Power by LEARY.', '', 84, 1, 1, '1', '1582793470', '1', '1582793495');
INSERT INTO `lea_system_config` VALUES (8, 1, '备案信息', 'icp', 'text', 'textarea', 0, '', 'xxx', '', 83, 1, 1, '1', '1582793563', '1', '1583375542');
INSERT INTO `lea_system_config` VALUES (9, 3, '短信平台', 'sms_type', 'radio', 'input', 0, '1=>腾讯云\n2=>阿里云', '1', '', 99, 1, 1, '1', '1583126643', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (10, 3, 'AppID', 'sms_appid', 'text', 'input', 0, '', '1400323535', '', 98, 1, 1, '1', '1583126757', '1', '1583126769');
INSERT INTO `lea_system_config` VALUES (11, 3, 'App Key', 'sms_appkey', 'text', 'input', 0, '', '0777dd251be53632c95da276738b9fd0', '', 97, 1, 1, '1', '1583126826', '1', '1583131539');
INSERT INTO `lea_system_config` VALUES (12, 3, '短信登录模板ID', 'sms_login', 'number', 'input', 0, '', '545149', '', 0, 0, 1, '1', '1583137085', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (13, 3, '短信签名', 'sms_sign', 'text', 'input', 0, '', '里派LEAPY', '', 0, 1, 1, '1', '1583137174', '1', '1583140447');
INSERT INTO `lea_system_config` VALUES (14, 3, '找回密码', 'sms_retrieve', 'number', 'input', 0, '', ' 545151', '', 0, 0, 1, '1', '1583138408', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (15, 3, '注册', 'sms_register', 'number', 'input', 0, '', '545150', '', 0, 0, 1, '1', '1583138507', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (17, 13, '公众号名称', 'wechat_app_name', 'text', 'input', 0, '', '里派社区', '', 99, 1, 1, '1', '1583221905', '1', '1583222192');
INSERT INTO `lea_system_config` VALUES (18, 13, '微信号', 'wechat_app_number', 'text', 'input', 0, '', 'LEAPY_CN', '', 98, 1, 1, '1', '1583221970', '1', '1583222198');
INSERT INTO `lea_system_config` VALUES (19, 13, '原始ID', 'wechat_app_origin_id', 'text', 'input', 0, '', 'gh_f9e2116bdc11', '', 97, 1, 1, '1', '1583222185', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (20, 13, 'AppID', 'wechat_appid', 'text', 'input', 0, '', 'wxcf8c233220bbf42f', '', 96, 1, 1, '1', '1583222266', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (21, 13, 'AppSecret', 'wechat_appsecret', 'text', 'input', 0, '', '2575cab179dff5b22f3c9285d4c565b7', '', 95, 1, 1, '1', '1583222345', '1', '1583222356');
INSERT INTO `lea_system_config` VALUES (22, 13, '微信验证TOKEN', 'wechat_token', 'text', 'input', 0, '', 'learn', '', 94, 1, 1, '1', '1583222439', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (23, 13, '消息加解密方式', 'wechat_encry', 'radio', 'input', 0, '1=>明文模式\n2=>兼容模式\n3=>安全模式', '1', '', 93, 1, 1, '1', '1583222535', '1', '1583223241');
INSERT INTO `lea_system_config` VALUES (24, 13, 'EncodingAESKey', 'wechat_aeskey', 'text', 'input', 0, '', 'EnRXjvDAHlqKbxaaSeQE3pnNBkNHMLmqL5QuB4KsNYt', '', 92, 1, 1, '1', '1583223110', '1', '1583223252');
INSERT INTO `lea_system_config` VALUES (25, 13, '公众号类型', 'wechat_type', 'radio', 'input', 0, '1=>服务号\n2=>订阅号', '2', '', 91, 1, 1, '1', '1583223219', '1', '1583223257');
INSERT INTO `lea_system_config` VALUES (26, 13, '接口地址', 'wechat_url', 'text', 'input', 0, '', 'https://learn.leapy.cn/api/wechat/serve', '', 90, 1, 1, '1', '1583223343', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (29, 14, '小程序APPID', 'miniprogram_appid', 'text', 'input', 0, '', 'wxe37eb9fc00f03a58', '', 99, 1, 1, '1', '1587732068', '1', '1587967147');
INSERT INTO `lea_system_config` VALUES (30, 14, '小程序密钥', 'miniprogram_appsecret', 'text', 'input', 0, '', '144ddbf99b8cf58b644410c36666865d', '', 98, 1, 1, '1', '1587732178', '1', '1587967175');
INSERT INTO `lea_system_config` VALUES (31, 14, '小程序LOGO', 'miniprogram_logo', 'file', 'input', 0, '', 'http://file.cos.leapy.cn/image/20200509/29a4a202005092052147675.jpg', '', 0, 1, 1, '1', '1588201532', '1', '1589028469');
INSERT INTO `lea_system_config` VALUES (32, 14, '小程序名称', 'miniprogram_name', 'text', 'input', 0, '', '里派社区', '', 0, 1, 1, '1', '1588202282', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (33, 2, '存储方式', 'storage_type', 'radio', 'input', 0, '1=>本地储存\n2=>腾讯云COS', '2', '', 0, 1, 1, '1', '1588819285', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (34, 2, 'CDN域名', 'storage_domain', 'text', 'input', 0, '', 'http://file.cos.leapy.cn', '', 0, 1, 1, '1', '1588819651', '1', '1588828871');
INSERT INTO `lea_system_config` VALUES (35, 2, 'SecretId', 'storage_secretid', 'text', 'input', 0, '', 'AKIDBFBzd7aUNEvVv9F7sphOwKWuAuY3qVwI', '', 0, 1, 1, '1', '1588820386', '1', '1588828877');
INSERT INTO `lea_system_config` VALUES (36, 2, 'SecretKey', 'storage_secretkey', 'text', 'input', 0, '', 'fGgw0sY4TiyfFdoqhQyKUTFqJcYM2YxE', '', 0, 1, 1, '1', '1588820426', '1', '1588828883');
INSERT INTO `lea_system_config` VALUES (37, 2, '存储位置', 'storage_region', 'text', 'input', 0, '', 'ap-chengdu', '腾讯云COS填写', 0, 1, 1, '1', '1588821134', '1', '1588828897');
INSERT INTO `lea_system_config` VALUES (38, 2, '存储桶名称', 'storage_bucket', 'text', 'input', 0, '', 'pipasheng-1252563008', '', 0, 1, 1, '1', '1588821538', '1', '1588828889');
INSERT INTO `lea_system_config` VALUES (39, 4, 'SMTP服务器', 'mail_host', 'text', 'input', 0, '', 'http://bt.leapy.cn:618/mail_sys/send_mail_http.json', '', 0, 1, 1, '1', '1588835717', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (40, 4, '邮箱用户名', 'mail_username', 'text', 'input', 0, '', 'mail@leapy.cn', '', 0, 1, 1, '1', '1588835775', '1', '1588836096');
INSERT INTO `lea_system_config` VALUES (41, 4, '授权码', 'mail_password', 'text', 'input', 0, '', '52Xia666', '', 0, 1, 1, '1', '1588835807', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (42, 4, '服务器端口', 'mail_port', 'text', 'input', 0, '', '25', '', 0, 1, 1, '1', '1588836004', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (43, 4, '发件人', 'mail_from', 'text', 'input', 0, '', '', '', 0, 1, 1, '1', '1588836080', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (44, 4, '发件人签名', 'mail_from_name', 'text', 'input', 0, '', '里派', '', 0, 1, 1, '1', '1588844572', '1', '1588845488');
INSERT INTO `lea_system_config` VALUES (45, 38, 'APP支付APPID', 'pay_wechat_appid', 'text', 'input', 0, '', '', '', 0, 1, 1, '1', '1588854973', '1', '1588855071');
INSERT INTO `lea_system_config` VALUES (46, 38, '公众号APPID', 'pay_wechat_app_id', 'text', 'input', 0, '', 'wxcf8c233220bbf42f', '', 0, 1, 1, '1', '1588855050', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (47, 38, '小程序APPID', 'pay_wechat_miniapp_id', 'text', 'input', 0, '', 'wxe37eb9fc00f03a58', '', 0, 1, 1, '1', '1588855120', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (48, 38, '商户号', 'pay_wechat_mch_id', 'text', 'input', 0, '', '1588549971', '', 0, 1, 1, '1', '1588855177', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (49, 38, 'API密钥', 'pay_wechat_key', 'text', 'input', 0, '', 'wsCQDTupznzYfH8oKH89PVvbUC5h4tb0', '', 0, 1, 1, '1', '1588855400', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (50, 38, '支付证书', 'pay_wechat_apiclient_cert', 'file', 'input', 0, '', '/upload/file/20200507/c0b5fc54d03d194078899202059e41a1.pem', '', 0, 1, 1, '1', '1588855742', '1', '1588856093');
INSERT INTO `lea_system_config` VALUES (51, 38, '支付密钥', 'pay_wechat_apiclient_key', 'file', 'input', 0, '', '/upload/file/20200507/53315d3c81bd5e7d6626410cc81f6d45.pem', '', 0, 1, 1, '1', '1588855797', '1', '1588856105');
INSERT INTO `lea_system_config` VALUES (52, 1, '网站域名', 'domain', 'text', 'input', 0, '', 'https://learn.leapy.cn', '', 0, 1, 1, '1', '1588858018', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (53, 39, '支付宝APPID', 'pay_alipay_app_id', 'text', 'input', 0, '', '2018071160550945', '', 0, 1, 1, '1', '1588894650', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (54, 39, '支付宝公钥', 'pay_alipay_ali_public_key', 'text', 'input', 0, '', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqdwBWnAd0DT973SyIGheDBWFpbRhEowyQwo5K/ryDLl5jQcBnhufgtvxYu7OIP365maGnEjb1VokNFi+9jWLogl9cgHKVOCTpmEwtAfjC6LT2+8bCp/xTQyFtvL5rvQBt5vDiM6n1t3NACPOBKEo5dJoPHv0Frdvmmqs8pWbw1gJDKmVdAxh8YYP5/b4mtG+JruPYOjTzuYms5UPbW3N3/JnMCeoQcJHVOpyZsvztJFqaASMA0OY9N5u8Wr6wJiifN+PWUa8eKFVJ2wc7fDKeNIqUpIP+YiQjzz69h0//3inLeshLsYlEQCjXJUDveXTY/PKBLm3vmSrY0zF2cAt2QIDAQAB', '', 0, 1, 1, '1', '1588894847', '1', '1588895236');
INSERT INTO `lea_system_config` VALUES (55, 39, '支付宝私钥', 'pay_alipay_private_key', 'text', 'input', 0, '', 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCp3AFacB3QNP3vdLIgaF4MFYWltGESjDJDCjkr+vIMuXmNBwGeG5+C2/Fi7s4g/frmZoacSNvVWiQ0WL72NYuiCX1yAcpU4JOmYTC0B+MLotPb7xsKn/FNDIW28vmu9AG3m8OIzqfW3c0AI84EoSjl0mg8e/QWt2+aaqzylZvDWAkMqZV0DGHxhg/n9via0b4mu49g6NPO5iazlQ9tbc3f8mcwJ6hBwkdU6nJmy/O0kWpoBIwDQ5j03m7xavrAmKJ8349ZRrx4oVUnbBzt8Mp40ipSkg/5iJCPPPr2HT//eKct6yEuxiURAKNclQO95dNj88oEube+ZKtjTMXZwC3ZAgMBAAECggEAPjS9JiLDOFn/2W8SQP4X2zMSk+HgXwuK6LRYxbuMY46VbklvlTimjSUBXOr6AGkjNre7eobQQ21UrvsFTGPFtFznXRY8xCLOz/LuBDCTPNKv5e7GJ3j1xPLeEWcge6sO6fAYhwSvwOfPyMpUC6v9r1UEKYp3lM4vCA0jM2AJAFum+XrGz0zLyKyaSb88GdxTU8FsbM/EbJn6ReQmzNF5O0P+mrBBhb5JQ0a8ixsOB6DIc48tJGMWFf+AVb4QG93qmUP9vyErJCEj6/Cz8gF7SxOE88YtS/baiJGedLayS0Kzxr5Fy2ch/+7q5CLg5n/oN//gJcxIFcGvY/kwp0d4pQKBgQDjpxxIDPSR/FRpgqZXQwK+eZ5aW1GgILZeGH/iF1vsqY3eDqwxD3+fQARHUTYTy86pRTgbEhHAFItKe9cwd2CztDkiz/Avw3DCNmVE6H14deqb89h3fxMeVwuBzsidvvQB0nFbtCDaiG+YGDndh3gVrPY8Bz18dTDBDnrHHh44KwKBgQC/Ap1fjkjwp8j42kO3DvQoaN/Pd1rA/kZoc4GqofUEM1GE6Qx98rPQgCicMMycvJrGzoSg8d/6l19JplmFrn52qKqdnEg+TBTv8H9XY8cqEjDzOggkE4ypRidZypjKdtHmprQ6K8fICs1SGc+aSgDUzuR3U/Om4C+E8R3ujtVMCwKBgQDKwO4WWbuFPcfshNkjhOIvxN+9N/HV/OyPl6BmPEm52TUqHcVMmLIgooJtBi50qSMxbR3QNmKqwWFhgDSizN/KjWwJzkrsL1QBFTNSkQIWxGakaSRVIU9kyT/NZ98TZ5uo98XQV/ieyb8iJgl7fQj9vSM9SXGApFs8xmmhZ/igKwKBgCqei7zJg67m0SntkZRj6sildeLVz9MmKVGfDDylfIUeaj8MvPPRVpvcLLOFE/KZBrP7Wo6KyZ4hbmqBipIQeDlDsyYNu/Tihv1unQtDwSm6+18aAL0D+6u9coRPdz4duwILCkW8hQw2lM+P4MmdX4gcTc/uVHxUo2W3YyVai283AoGAB4+/SHoXFkN+Wez0mxOcQ68o+5SiVDVi19nH1zRY8rxjoxIZ7OkQYyBNMIaT7dwchlLSevUyRI8q56m2vFsYI5LSBnm6ZKfTZhT1DrcpRdk7UFZCi+MQ8PXxDlsXilZOUNvTyBqCsBzRjPehHrzMiv9RSB61uncQnJy0+d1D3OU=', '', 0, 1, 1, '1', '1588894902', '1', '1588895266');
INSERT INTO `lea_system_config` VALUES (56, 39, '应用公钥证书路径', 'pay_alipay_app_cert_public_key', 'file', 'input', 0, '', '', '公钥证书模式使用', 0, 1, 1, '1', '1588895349', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (57, 39, '支付宝根证书路径', 'pay_alipay_alipay_root_cert', 'file', 'input', 0, '', '', '公钥证书模式使用', 0, 1, 1, '1', '1588895390', '1', '1588895402');
INSERT INTO `lea_system_config` VALUES (58, 14, '小程序Token', 'miniprogram_token', 'text', 'input', 0, '', 'learn.leapy.cn', '', 0, 1, 1, '1', '1589007729', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (59, 14, 'EncodingAESKey', 'miniprogram_aeskey', 'text', 'input', 0, '', '4aFLNbclHer8Qhx4PdmBUhohsMR7Ngm0lsQwgllwk4H', '', 0, 1, 1, '1', '1589007789', '1', '1589007836');
INSERT INTO `lea_system_config` VALUES (60, 14, '加密方式', 'miniprogram_encry', 'radio', 'input', 0, '1=>明文模式\n2=> 兼容模式\n3=> 安全模式（推荐）', '1', '', 0, 1, 1, '1', '1589007953', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (61, 14, '接口地址', 'miniprogram_url', 'text', 'input', 0, '', 'https://learn.leapy.cn/api/mini_program/serve', '', 0, 1, 1, '1', '1589008013', '1', '1589008053');
INSERT INTO `lea_system_config` VALUES (62, 14, '审核模式', 'miniprogram_audit', 'radio', 'input', 0, '0=>关闭\n1=>开启', '0', '', 0, 1, 1, '1', '1589177436', '1', '1589326389');
INSERT INTO `lea_system_config` VALUES (63, 14, '搜索提示', 'miniprogram_search', 'text', 'input', 0, '', '里派社区', '', 0, 1, 1, '1', '1589178363', NULL, NULL);
INSERT INTO `lea_system_config` VALUES (64, 4, '邮件类型', 'mail_type', 'radio', 'input', 0, '0=>其它\n1=>宝塔邮件', '1', '0::其它,1宝塔', 0, 1, 1, '1', '1589507116', NULL, NULL);

-- ----------------------------
-- Table structure for lea_system_config_tab
-- ----------------------------
DROP TABLE IF EXISTS `lea_system_config_tab`;
CREATE TABLE `lea_system_config_tab`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `rank` tinyint(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '角色状态1可用0不用',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_system_config_tab
-- ----------------------------
INSERT INTO `lea_system_config_tab` VALUES (1, '基础配置', 99, 1, '1', '1582784937', '1', '1583385482');
INSERT INTO `lea_system_config_tab` VALUES (2, '上传配置', 98, 1, '1', '1582785701', '1', '1583385489');
INSERT INTO `lea_system_config_tab` VALUES (3, '短信配置', 97, 1, '1', '1582785710', '1', '1583385498');
INSERT INTO `lea_system_config_tab` VALUES (4, '邮件配置', 96, 1, '1', '1582785719', '1', '1583385506');
INSERT INTO `lea_system_config_tab` VALUES (13, '公众号配置', 95, 1, '1', '1583221840', '1', '1583385525');
INSERT INTO `lea_system_config_tab` VALUES (14, '小程序配置', 94, 1, '1', '1583221850', '1', '1583385532');
INSERT INTO `lea_system_config_tab` VALUES (38, '微信支付', 0, 1, '1', '1588854047', '1', '1588854054');
INSERT INTO `lea_system_config_tab` VALUES (39, '支付宝支付', 0, 1, '1', '1588854063', NULL, NULL);

-- ----------------------------
-- Table structure for lea_user
-- ----------------------------
DROP TABLE IF EXISTS `lea_user`;
CREATE TABLE `lea_user`  (
  `uid` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` varbinary(64) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别',
  `money` decimal(8, 2) NOT NULL COMMENT '钱数',
  `integral` int(8) NOT NULL DEFAULT 0 COMMENT '积分',
  `level` tinyint(2) NOT NULL DEFAULT 1 COMMENT '用户等级',
  `last_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次登录IP',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `register_ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册IP',
  `register_type` tinyint(1) NOT NULL COMMENT '注册类型 1微信 2手机号 3 小程序',
  `register_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_user
-- ----------------------------
INSERT INTO `lea_user` VALUES (1, 0xE5A4A9E8A18CE581A5EFBC8CE5909BE5AD90E4BBA5E887AAE5BCBAE4B88DE681AF, 'http://thirdwx.qlogo.cn/mmopen/vi_32/jrmZyN0dMcicvdpBdYsoasXKwF1S1HkNRyYqIJCE3XInYxuPcbIJfZQyAKaia1Vnyd95llct88pFHcWiaToAq818A/132', NULL, NULL, NULL, 0, 0.00, 0, 1, NULL, NULL, '121.51.66.26', 1, '1583302135', 1);
INSERT INTO `lea_user` VALUES (7, 0xE585BDE585BD, 'http://thirdwx.qlogo.cn/mmopen/xrWspl6Ks7g1n9lqNiarzLEKyfCZn49BZxf3bYPZ8qLE3Lf5Lowt3nZibuYQAic9EyCAecsfZjwV66KiapjNeUMiblw9SKjQMCNnZ/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.16', 1, '1583304442', 1);
INSERT INTO `lea_user` VALUES (8, 0xE58789E7AC99E5A2A8E69F93, 'http://thirdwx.qlogo.cn/mmopen/xrWspl6Ks7hRqjT6R6SRdibv1oNj0VyUE5KIKAmCibslGVo2ia9BXEdTzKgUiatyeWhA96N2I2BRbsAD2y6mH1zYv7fK5uSIb8TV/132', NULL, '', NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.16', 1, '1583588779', 1);
INSERT INTO `lea_user` VALUES (9, 0xE58D93E8B68A, 'http://thirdwx.qlogo.cn/mmopen/rhK0Ad64x4lCtftuianiccaTAXRXacT0qOIsFDsnhTJsmnBLL4LWo7VS39RboRqgWiaH1IX1Vn17LQVR7HgqXtJfHdNaKiaM7eGF/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.26', 1, '1584666573', 1);
INSERT INTO `lea_user` VALUES (10, 0xE5A4A9E8A18CE581A5EFBC8CE5909BE5AD90E4BBA5E887AAE5BCBAE4B88DE681AF, 'https://wx.qlogo.cn/mmopen/vi_32/gC4EAFL3t1HiaX0V4865P4js62Tvns2QYxEw7aic9hqOSupIsRLWibEfOwR8V9QT6S9cAyTxKibmSzs2GUial9j5rbg/132', NULL, NULL, NULL, 0, 0.00, 0, 1, NULL, NULL, '180.175.1.70', 3, '1588147397', 1);
INSERT INTO `lea_user` VALUES (11, 0x31302E3131, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLTzldx9BPKZYMKsZ1o9Tsl1ibkS2prQ1ria91FzKAtfvUsM7HJZJhu9zcvpteKouAgmy8ps296FdCA/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '223.166.222.110', 3, '1588321083', 1);
INSERT INTO `lea_user` VALUES (24, 0x457661EFBD9EF09FA690, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ4sIyZOuic5SUkVVDmGJBbz8od0o6aNGfSZy3hOuHNqtMJv3em6hicwzibv4dnYQG8xwiapBoR4qzh0Q/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '39.162.83.79', 3, '1588498500', 1);
INSERT INTO `lea_user` VALUES (25, 0xE58D93E8B68A, 'https://wx.qlogo.cn/mmopen/vi_32/FJOJTTuMJWnGA0EWy2OP4QIHg5fBFRbCFicDRiaXef3uu4yFvBINfmmluLS5Lc9laXn35ibf6iaWIM2c57esMLYBug/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '114.82.11.38', 3, '1589042643', 1);
INSERT INTO `lea_user` VALUES (26, 0xE7BE8EE5A5BDE4BABAE7949F, 'https://wx.qlogo.cn/mmopen/vi_32/hDqcjCzA4ah87ibpHAbawJWRoWwq6ehcDyibs4vFJPgTnPmvHbLA9kus1JicXAe2AoJ1axdYicnUUQGfvicGU6ibUgGw/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '115.52.168.80', 3, '1589073855', 1);
INSERT INTO `lea_user` VALUES (27, 0x4A6965E6B885E88CB6, 'https://wx.qlogo.cn/mmopen/vi_32/u7fbK1pJ9XULb4bgb4nRNgibWVjEicqicuP2ZqydnSHkXJN03rC1Wyds4TQ4nmX7RJDiaWW9mFpN9zzcWRa83pgegA/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '180.175.1.70', 3, '1589175595', 1);
INSERT INTO `lea_user` VALUES (28, 0xE8BE9BE7A68F, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIgia4JTX8U2ESQ11b1ialdx8BR0dgDLfyba5TM48zXIvMkXWSJjNsHpcCibXQbQMfibvKgdH6jp3DfLw/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '223.166.222.108', 3, '1589181718', 1);
INSERT INTO `lea_user` VALUES (29, 0x3572694635706177, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIDVcp3lfsme4wh6b8WhXOSAUtxkMh9fdxlGyEf6xzz9lm4w4UmDR6fcuwMbRd5NbRg5Nmm9HZskQ/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '175.24.96.201', 3, '1589182947', 1);
INSERT INTO `lea_user` VALUES (30, 0x3537755A3649657135626578354C6941354C69713562367535367952, 'https://wx.qlogo.cn/mmopen/vi_32/2AO31mdaKaqsibhlol4niatRTGPZvd1k8xjx91ydCsqgohtibLVyaz6GXMZxtcMERezzKWhgyQGzanfDInQLW50eg/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '101.91.60.112', 3, '1589186799', 1);
INSERT INTO `lea_user` VALUES (31, 0x364C6146582B6932697561697075614473773D3D, 'https://wx.qlogo.cn/mmopen/vi_32/UibiaRXUUjfnn7ckgr2qSZKRz316Fl4H4T9lldAtCvFMVoIOgLqRyO3mjn8eMRuYJ1Axw670KunQykoygYGgwUJA/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '175.24.64.15', 3, '1589186799', 1);
INSERT INTO `lea_user` VALUES (32, 0x3534364C3570694D3571434C, 'https://wx.qlogo.cn/mmopen/vi_32/UibiaRXUUjfnlAmq4aDpyAF2Bcica2yamicqDWOBVJp9F598gssjgbLd6OJdphKJQ3MYxibt8jbmgTYjcaEqQtNTgIw/132', NULL, NULL, NULL, 2, 0.00, 0, 1, NULL, NULL, '223.166.222.108', 3, '1589195265', 1);
INSERT INTO `lea_user` VALUES (33, 0xE4B880E8B7AFE59091E58C97, 'https://wx.qlogo.cn/mmopen/vi_32/kddcgrkQHstddJTubEZedMuJLbQITiaLKYzaRHUIfBUpxiazbm6giaLXWUthH8dx0jwWosVOapgluJ9Z3n8j6qHicw/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '112.65.61.245', 3, '1589195998', 1);
INSERT INTO `lea_user` VALUES (34, 0x364B6D3535714B6D36614736, 'https://wx.qlogo.cn/mmhead/esPILb1AoFoV3h1vq6TMTibcjNvCVTR3gicOrWw6KlyLU/132', NULL, NULL, NULL, 0, 0.00, 0, 1, NULL, NULL, '175.24.85.156', 3, '1589251602', 1);
INSERT INTO `lea_user` VALUES (35, 0x364A4F6436496D793561615735616573, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEImT8Mmameg6FBicyicFvCGAIShGElXstT80rhuyvXGPvpAHaO922ZhSDkiaZia3V4CTVM2pLd1sNeosA/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '175.24.12.231', 3, '1589286330', 1);
INSERT INTO `lea_user` VALUES (36, 0x3534364C35726131365A697A, 'https://wx.qlogo.cn/mmhead/xNKP68NQcmwwgbCoGDRdl7ZqYJiaHMPxLYQcaHuIWPtE/132', NULL, NULL, NULL, 0, 0.00, 0, 1, NULL, NULL, '223.166.222.110', 3, '1589412174', 1);
INSERT INTO `lea_user` VALUES (37, 0xE783ADE68385E59682E78B82E9A38E, 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIUFETKDx2EiaN72eKqGtXAZ0PSyZlicK69Hl0aoP6cCAD4RfuewWRLtum9YDHiblJYMHDj8sjhH22eg/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.120', 1, '1589614362', 1);
INSERT INTO `lea_user` VALUES (38, 0x35344F74356F4F46355A61433534754336614F4F, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ermmTgGMkPtPxFNXhPoOZFHGKiaot8ky26NrabibUnX1zNuH4jzTgQsK2mdDJ9Bk2QvuVp2DOQlZZibw/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '110.54.194.150', 3, '1589614387', 1);
INSERT INTO `lea_user` VALUES (39, 0x556E6C6862673D3D, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKWtrdG0f8rsnPFHWZwLVFscicXTsO4BJiazLbusO24lGaLYNRN3RicdsQUPLEqLyiahxniaXRyXCvKdJQ/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '183.129.132.202', 3, '1589965724', 1);
INSERT INTO `lea_user` VALUES (40, 0x436861696D, 'http://thirdwx.qlogo.cn/mmopen/g9RQicMD01M1tPzrrPm7lZo1RRAVaxeiaicg6D6ybIFv3VRkPSYH159J8DhCgJZcbg9jVJYsgdUZQuzG0Dic4Eibjtg/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.26', 1, '1590027757', 1);
INSERT INTO `lea_user` VALUES (41, 0x55306C4F5230744249454E7662575630, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erSgL4m4e41GZ3gaoyuhPZeGbD4RlmEr2mBDEdplocia0uVqrlcibqySDAwmsRJ3ErapDicFQ6DiaKxww/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '39.189.59.171', 3, '1590133474', 1);
INSERT INTO `lea_user` VALUES (42, 0x536F757468, 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5B38PRGIO9MdcGcBLkmqeM8Ek8ZdicbY3ibeiaT39EHcLq8dUicff3KfxT051PP5coJia6mCPlbwaMpOCpGM4w9NzugMsoOYImq2sM/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '121.51.66.16', 1, '1590149029', 1);
INSERT INTO `lea_user` VALUES (43, 0x536F757468, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIezdQplRTZf69sRQm9qtQmnydvFvl9q0G3dHDKz4liaU7GoQPPJxxwlEJ1VocUsdnO5GcqVTqdL4Q/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '112.51.118.211', 3, '1590149080', 1);
INSERT INTO `lea_user` VALUES (44, 0x556D3975, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKWpJvV3QSPskgUMWnnJKP9aXficbbJuKsTaLgBO5K3qj1puuHE0aJeibl7ibGDlHbndaficebdhCxdHQ/132', NULL, NULL, NULL, 1, 0.00, 0, 1, NULL, NULL, '223.104.6.32', 3, '1590458283', 1);

-- ----------------------------
-- Table structure for lea_user_bill
-- ----------------------------
DROP TABLE IF EXISTS `lea_user_bill`;
CREATE TABLE `lea_user_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账单ID',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `source` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源',
  `oid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单ID',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `cost` decimal(8, 2) NOT NULL COMMENT '金额',
  `io` tinyint(1) NOT NULL COMMENT '1收入2支出',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_user_bill
-- ----------------------------

-- ----------------------------
-- Table structure for lea_user_message
-- ----------------------------
DROP TABLE IF EXISTS `lea_user_message`;
CREATE TABLE `lea_user_message`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `type` tinyint(2) NOT NULL COMMENT '留言来源 1CMS 2小程序',
  `uid` int(8) NOT NULL DEFAULT 0 COMMENT '用户ID 0为游客',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言内容',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user_agent',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_user_message
-- ----------------------------
INSERT INTO `lea_user_message` VALUES (7, 2, 10, 'aaa', '111', '厉害', '1589352973', '180.175.1.70', 'Mozilla/5.0 (Linux; Android 10; EML-AL00 Build/HUAWEIEML-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2353 MMWEBSDK/200401 Mobile Safari/537.36 MMWEBID/8464 MicroMessenger/7.0.14.1660(0x27000E37) Process/appbrand0 ', 0);

-- ----------------------------
-- Table structure for lea_user_order
-- ----------------------------
DROP TABLE IF EXISTS `lea_user_order`;
CREATE TABLE `lea_user_order`  (
  `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `oid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `uid` int(9) NOT NULL COMMENT '用户ID',
  `source` int(8) NOT NULL COMMENT '订单来源 1 视频小程序',
  `pay_price` decimal(10, 2) NOT NULL COMMENT '支付金额',
  `pay_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付时间',
  `paid` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否支付',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付时间',
  `is_refund` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否退款 1 退款',
  `refund_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款金额',
  `refund_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `refund_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退款时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(255) NOT NULL DEFAULT 0 COMMENT '状态 0付款中 1 已付款 2 已退款',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_user_order
-- ----------------------------
INSERT INTO `lea_user_order` VALUES (3, 'O202005090936507369', 10, 1, 0.01, '1588988216', 1, NULL, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (4, 'O202005090940456803', 10, 1, 0.01, NULL, 0, '1588988445', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (5, 'O202005091005262324', 10, 1, 0.01, '1588989933', 0, '1588989926', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (6, 'O202005091314171464', 10, 1, 0.01, '1589001264', 1, '1589001257', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (7, 'O202005092143576357', 10, 1, 0.01, NULL, 0, '1589031837', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (8, 'O202005092144249399', 10, 1, 0.01, NULL, 0, '1589031864', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (9, 'O202005092144305107', 10, 1, 0.01, NULL, 0, '1589031870', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (10, 'O202005092145386930', 10, 1, 0.01, NULL, 0, '1589031938', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (11, 'O202005092145476013', 10, 1, 0.01, NULL, 0, '1589031947', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (12, 'O202005092146542820', 10, 1, 0.01, NULL, 0, '1589032014', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (13, 'O202005092317017938', 10, 1, 0.01, NULL, 0, '1589037421', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (14, 'O202005092322004312', 10, 1, 0.01, NULL, 0, '1589037720', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (15, 'O202005092322135502', 10, 1, 0.01, '1589037739', 1, '1589037733', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (17, 'O202005100044092054', 25, 1, 0.01, NULL, 0, '1589042649', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (18, 'O202005100918309460', 25, 1, 0.00, NULL, 0, '1589073510', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (19, 'O202005100918406531', 25, 1, 0.01, NULL, 0, '1589073520', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (20, 'O202005100919228193', 25, 1, 0.01, NULL, 0, '1589073562', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (21, 'O202005100924252246', 26, 1, 0.00, NULL, 0, '1589073865', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (22, 'O202005101320303994', 25, 1, 0.01, '1589088038', 1, '1589088030', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (23, 'O202005101850463354', 26, 1, 0.01, '1589107907', 1, '1589107846', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (24, 'O202005111341178764', 27, 1, 0.01, '1589175688', 1, '1589175677', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (25, 'O202005120758329328', 25, 1, 0.01, NULL, 0, '1589241512', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (26, 'O202005161533266777', 38, 1, 0.00, NULL, 0, '1589614406', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (27, 'O202005161533359961', 38, 1, 0.00, NULL, 0, '1589614415', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `lea_user_order` VALUES (28, 'O202005221237255471', 25, 1, 0.01, '1590122261', 1, '1590122245', 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `lea_user_order` VALUES (29, 'O202005221240279911', 25, 1, 0.01, NULL, 0, '1590122427', 0, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for lea_wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `lea_wechat_media`;
CREATE TABLE `lea_wechat_media`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '素材类型',
  `media_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '素材ID',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '本地地址',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `temporary` tinyint(1) NOT NULL COMMENT '是否是临时的 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信素材ID' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_wechat_media
-- ----------------------------
INSERT INTO `lea_wechat_media` VALUES (1, 'image', 'ZRqYUdJ_mSK-uOdMMGR8bLoXS5aFzCvyyE_C13MEEDy_isAO8ylHKZR1Xl-SOSwN', '/upload/image/20200417/45f71819c29a85151806a57609fdade0.jpeg', '1587092383', 0);
INSERT INTO `lea_wechat_media` VALUES (2, 'video', 'uX0jrgBzU8scP1YP8CmzOb9VEGp8Ce4bdGF3dQtFByL39WVMTHNGSoA4u0zn6rHq', '/upload/video/20200417/fd06f33e51b3ec4edfaafa74a6024f35.mp4', '1587094086', 0);
INSERT INTO `lea_wechat_media` VALUES (3, 'image', 'emqEESpyhUQkuwSLSpRzSGx6QhbgalA8OhNCy9SCq0ECxrF6GdJtdLbzz-iCuLKv', '/upload/image/20200417/2330960e20c046ceed820ce1918aaacd.jpeg', '1587094604', 0);
INSERT INTO `lea_wechat_media` VALUES (4, 'image', '7kh9829t4BtX4NJm3aIZHPMYWixjv1PLCkVuBEXTxNPqGqECEdT9bE76RKpK8Wbv', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094719', 0);
INSERT INTO `lea_wechat_media` VALUES (5, 'image', 'oNMM-CC0kKt1mmWaYwHkspdZBJXf8_A1Vti98kGBmRPk3_PgqjKg3s0wiVsbjgSV', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094750', 0);
INSERT INTO `lea_wechat_media` VALUES (6, 'image', 'lCwZYZsUkfblpBZAASqqJlNJzG2viKIWuWxVbO2RJyVnGr9YHd0jdpbm7Tgf4tj1', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094792', 0);
INSERT INTO `lea_wechat_media` VALUES (7, 'image', 'GE5c75nW1ivhKB831mpXoUOFg6bfXhzLDul2DuyiNyjY0R3c2ZZ9ess8PG6zsQdl', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094804', 0);
INSERT INTO `lea_wechat_media` VALUES (8, 'image', '1fifPWkYCWFUTlOsP8Ed_1z-Q5dGDE65y_pV7HJIf64wuIgytubtGoDfDRt_ofLI', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094830', 0);
INSERT INTO `lea_wechat_media` VALUES (9, 'image', '8lbD74lFDCiwA6QY3Ardubga-x3MT-EKwQDy4EvEe4viX4KLRNJUqoUvLKaDKvlm', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094852', 0);
INSERT INTO `lea_wechat_media` VALUES (10, 'image', 'laRCBkl7HyahPDn_2xo46qxdxud2PT-Ia7e2Fr9qQByN1oaMqYRzNjoum8_G_D5P', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587094886', 0);
INSERT INTO `lea_wechat_media` VALUES (11, 'image', 'lCwZYZsUkfblpBZAASqqJtNtBVtHGvAI3z295jIkhbeURRwl_Yd_RjL2SKEJTUEc', '/upload/image/20200417/5993cdc77e78fce98ea3a296d29b2b63.jpeg', '1587095035', 0);
INSERT INTO `lea_wechat_media` VALUES (12, 'voice', 'H9fd2jMvim7LEDS5cVNXjr84s5W6JtuMVqISI0zLyZC_dUP7D5UYA3qlk8xoSkyy', '/upload/audio/20200417/b0a071f528d423ccffe1f3227450bb8b.mp3', '1587096171', 0);

-- ----------------------------
-- Table structure for lea_wechat_message
-- ----------------------------
DROP TABLE IF EXISTS `lea_wechat_message`;
CREATE TABLE `lea_wechat_message`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'openid',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作类型',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详消息内容',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加事件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 448 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_wechat_message
-- ----------------------------
INSERT INTO `lea_wechat_message` VALUES (1, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583253935\",\"MsgType\":\"text\",\"Content\":\"\\u597d\",\"MsgId\":\"22666745842421137\"}', '1583253935');
INSERT INTO `lea_wechat_message` VALUES (2, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583254001\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583254001');
INSERT INTO `lea_wechat_message` VALUES (3, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583254024\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583254024');
INSERT INTO `lea_wechat_message` VALUES (4, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292728\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583292728');
INSERT INTO `lea_wechat_message` VALUES (5, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292745\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583292745');
INSERT INTO `lea_wechat_message` VALUES (6, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292806\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22667303364967603\"}', '1583292806');
INSERT INTO `lea_wechat_message` VALUES (7, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292837\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583292837');
INSERT INTO `lea_wechat_message` VALUES (8, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292842\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583292842');
INSERT INTO `lea_wechat_message` VALUES (9, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583292990\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583292990');
INSERT INTO `lea_wechat_message` VALUES (10, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293007\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583293008');
INSERT INTO `lea_wechat_message` VALUES (11, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293091\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583293091');
INSERT INTO `lea_wechat_message` VALUES (12, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293094\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583293094');
INSERT INTO `lea_wechat_message` VALUES (13, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293105\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583293105');
INSERT INTO `lea_wechat_message` VALUES (14, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293119\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583293119');
INSERT INTO `lea_wechat_message` VALUES (15, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293145\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583293145');
INSERT INTO `lea_wechat_message` VALUES (16, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293189\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583293189');
INSERT INTO `lea_wechat_message` VALUES (17, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293203\",\"MsgType\":\"text\",\"Content\":\"\\u53bb\",\"MsgId\":\"22667311758297372\"}', '1583293203');
INSERT INTO `lea_wechat_message` VALUES (18, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293432\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22667310666947114\"}', '1583293433');
INSERT INTO `lea_wechat_message` VALUES (19, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293435\",\"MsgType\":\"text\",\"Content\":\"8\",\"MsgId\":\"22667311028720608\"}', '1583293436');
INSERT INTO `lea_wechat_message` VALUES (20, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293439\",\"MsgType\":\"text\",\"Content\":\"nb\",\"MsgId\":\"22667308862980057\"}', '1583293440');
INSERT INTO `lea_wechat_message` VALUES (21, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293456\",\"MsgType\":\"text\",\"Content\":\"\\u54e6\\u54e6\",\"MsgId\":\"22667311920325907\"}', '1583293456');
INSERT INTO `lea_wechat_message` VALUES (22, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293485\",\"MsgType\":\"text\",\"Content\":\"\\u53bb\",\"MsgId\":\"22667309654882815\"}', '1583293485');
INSERT INTO `lea_wechat_message` VALUES (23, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293541\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667315636988291\"}', '1583293541');
INSERT INTO `lea_wechat_message` VALUES (24, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293555\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667312892011833\"}', '1583293555');
INSERT INTO `lea_wechat_message` VALUES (25, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293620\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667315936342818\"}', '1583293620');
INSERT INTO `lea_wechat_message` VALUES (26, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293628\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667316911453481\"}', '1583293628');
INSERT INTO `lea_wechat_message` VALUES (27, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293691\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667315215503757\"}', '1583293694');
INSERT INTO `lea_wechat_message` VALUES (28, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293695\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667313121918669\"}', '1583293695');
INSERT INTO `lea_wechat_message` VALUES (29, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293701\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667314914369832\"}', '1583293702');
INSERT INTO `lea_wechat_message` VALUES (30, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293725\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667316619154075\"}', '1583293726');
INSERT INTO `lea_wechat_message` VALUES (31, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293770\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667312904220106\"}', '1583293770');
INSERT INTO `lea_wechat_message` VALUES (32, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293784\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667313757355871\"}', '1583293785');
INSERT INTO `lea_wechat_message` VALUES (33, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293928\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22667319519927003\"}', '1583293928');
INSERT INTO `lea_wechat_message` VALUES (34, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293943\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667317945493892\"}', '1583293944');
INSERT INTO `lea_wechat_message` VALUES (35, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583293961\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667320156717966\"}', '1583293961');
INSERT INTO `lea_wechat_message` VALUES (36, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294024\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667320768349340\"}', '1583294024');
INSERT INTO `lea_wechat_message` VALUES (37, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294084\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667320588551059\"}', '1583294084');
INSERT INTO `lea_wechat_message` VALUES (38, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294097\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583294097');
INSERT INTO `lea_wechat_message` VALUES (39, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294114\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583294114');
INSERT INTO `lea_wechat_message` VALUES (40, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294136\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667321663322625\"}', '1583294136');
INSERT INTO `lea_wechat_message` VALUES (41, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294363\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\ud83d\\ude0a \",\"MsgId\":\"22667323592276964\"}', '1583294364');
INSERT INTO `lea_wechat_message` VALUES (42, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583294368\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667324891921639\"}', '1583294369');
INSERT INTO `lea_wechat_message` VALUES (43, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583294970\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667333004468902\"}', '1583294970');
INSERT INTO `lea_wechat_message` VALUES (44, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583295027\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583295027');
INSERT INTO `lea_wechat_message` VALUES (45, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583295038\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583295039');
INSERT INTO `lea_wechat_message` VALUES (46, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583295051\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667337735960472\"}', '1583295051');
INSERT INTO `lea_wechat_message` VALUES (47, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583296897\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583296898');
INSERT INTO `lea_wechat_message` VALUES (48, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583296933\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583296933');
INSERT INTO `lea_wechat_message` VALUES (49, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583296969\",\"MsgType\":\"text\",\"Content\":\"\\u60a8\\u597d\",\"MsgId\":\"22667362709253276\"}', '1583296970');
INSERT INTO `lea_wechat_message` VALUES (50, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583296971\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667361962992050\"}', '1583296972');
INSERT INTO `lea_wechat_message` VALUES (51, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583297035\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583297036');
INSERT INTO `lea_wechat_message` VALUES (52, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583297045\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583297045');
INSERT INTO `lea_wechat_message` VALUES (53, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583300858\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583300858');
INSERT INTO `lea_wechat_message` VALUES (54, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583300885\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583300886');
INSERT INTO `lea_wechat_message` VALUES (55, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301049\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301049');
INSERT INTO `lea_wechat_message` VALUES (56, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301083\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301083');
INSERT INTO `lea_wechat_message` VALUES (57, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301229\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301229');
INSERT INTO `lea_wechat_message` VALUES (58, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301284\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301284');
INSERT INTO `lea_wechat_message` VALUES (59, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301389\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301389');
INSERT INTO `lea_wechat_message` VALUES (60, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301398\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301398');
INSERT INTO `lea_wechat_message` VALUES (61, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301456\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301456');
INSERT INTO `lea_wechat_message` VALUES (62, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301459\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301460');
INSERT INTO `lea_wechat_message` VALUES (63, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301668\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301668');
INSERT INTO `lea_wechat_message` VALUES (64, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301676\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301676');
INSERT INTO `lea_wechat_message` VALUES (65, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301799\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301799');
INSERT INTO `lea_wechat_message` VALUES (66, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301802\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301802');
INSERT INTO `lea_wechat_message` VALUES (67, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301948\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583301948');
INSERT INTO `lea_wechat_message` VALUES (68, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583301952\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583301952');
INSERT INTO `lea_wechat_message` VALUES (69, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302007\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302007');
INSERT INTO `lea_wechat_message` VALUES (70, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302010\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302010');
INSERT INTO `lea_wechat_message` VALUES (71, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302131\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302131');
INSERT INTO `lea_wechat_message` VALUES (72, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302134\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302135');
INSERT INTO `lea_wechat_message` VALUES (73, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302163\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302164');
INSERT INTO `lea_wechat_message` VALUES (74, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302181\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302181');
INSERT INTO `lea_wechat_message` VALUES (75, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302258\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302258');
INSERT INTO `lea_wechat_message` VALUES (76, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302266\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302266');
INSERT INTO `lea_wechat_message` VALUES (77, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302416\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302416');
INSERT INTO `lea_wechat_message` VALUES (78, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302420\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302421');
INSERT INTO `lea_wechat_message` VALUES (79, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302554\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583302554');
INSERT INTO `lea_wechat_message` VALUES (80, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583302564\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583302564');
INSERT INTO `lea_wechat_message` VALUES (81, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583304168\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667465944098532\"}', '1583304169');
INSERT INTO `lea_wechat_message` VALUES (82, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1583304442\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583304442');
INSERT INTO `lea_wechat_message` VALUES (83, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1583305334\",\"MsgType\":\"text\",\"Content\":\"\\uff0c\\uff0c\",\"MsgId\":\"22667482473160708\"}', '1583305334');
INSERT INTO `lea_wechat_message` VALUES (84, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1583305374\",\"MsgType\":\"text\",\"Content\":\"\\u3002\\u3002\\u3002\",\"MsgId\":\"22667482107252604\"}', '1583305374');
INSERT INTO `lea_wechat_message` VALUES (85, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1583305378\",\"MsgType\":\"text\",\"Content\":\"\\u6211\\u53bb\",\"MsgId\":\"22667481963614671\"}', '1583305378');
INSERT INTO `lea_wechat_message` VALUES (86, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1583305391\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22667481372676710\"}', '1583305391');
INSERT INTO `lea_wechat_message` VALUES (87, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583319814\",\"MsgType\":\"text\",\"Content\":\"leapy.cn\",\"MsgId\":\"22667686404849230\"}', '1583319815');
INSERT INTO `lea_wechat_message` VALUES (88, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583321066\",\"MsgType\":\"text\",\"Content\":\"\\u91cc\\u6d3e\\u793e\\u533a\",\"MsgId\":\"22667705533415589\"}', '1583321066');
INSERT INTO `lea_wechat_message` VALUES (89, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588778\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583588778');
INSERT INTO `lea_wechat_message` VALUES (90, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588797\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\\u3002\",\"MsgId\":\"22671538964096731\"}', '1583588797');
INSERT INTO `lea_wechat_message` VALUES (91, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588824\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22671541118213637\"}', '1583588825');
INSERT INTO `lea_wechat_message` VALUES (92, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588870\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22671542949263876\"}', '1583588870');
INSERT INTO `lea_wechat_message` VALUES (93, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588926\",\"MsgType\":\"text\",\"Content\":\"\\u5f20\\u7389\\u71d5\",\"MsgId\":\"22671542731440226\"}', '1583588926');
INSERT INTO `lea_wechat_message` VALUES (94, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuKmtR7G5V15undjGdSWhwYw\",\"CreateTime\":\"1583588986\",\"MsgType\":\"text\",\"Content\":\"\\u5f20\\u5353\",\"MsgId\":\"22671542878779311\"}', '1583588986');
INSERT INTO `lea_wechat_message` VALUES (95, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583589107\",\"MsgType\":\"text\",\"Content\":\"\\u5f20\\u7389\\u71d5\",\"MsgId\":\"22671546286241378\"}', '1583589108');
INSERT INTO `lea_wechat_message` VALUES (96, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583589338\",\"MsgType\":\"text\",\"Content\":\"hello\",\"MsgId\":\"22671549400879676\"}', '1583589338');
INSERT INTO `lea_wechat_message` VALUES (97, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583589357\",\"MsgType\":\"text\",\"Content\":\"2\",\"MsgId\":\"22671549104864936\"}', '1583589357');
INSERT INTO `lea_wechat_message` VALUES (98, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583589365\",\"MsgType\":\"text\",\"Content\":\"\\u8c37\\u6b4c\",\"MsgId\":\"22671551375442140\"}', '1583589365');
INSERT INTO `lea_wechat_message` VALUES (99, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583589369\",\"MsgType\":\"text\",\"Content\":\"\\u8fd9\\u4e48\\u5feb\",\"MsgId\":\"22671551093032220\"}', '1583589369');
INSERT INTO `lea_wechat_message` VALUES (100, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583589927\",\"MsgType\":\"text\",\"Content\":\"\\u662f\",\"MsgId\":\"22671557813943287\"}', '1583589927');
INSERT INTO `lea_wechat_message` VALUES (101, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583591281\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"\\u4f60\\u597d\",\"Ticket\":\"gQH87jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQWNMUmhGdHk4dlUxcWtNemh1YzQAAgRor2NeAwQsAQAA\"}', '1583591281');
INSERT INTO `lea_wechat_message` VALUES (102, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583591390\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"\\u4f60\\u597d\",\"Ticket\":\"gQH87jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQWNMUmhGdHk4dlUxcWtNemh1YzQAAgRor2NeAwQsAQAA\"}', '1583591391');
INSERT INTO `lea_wechat_message` VALUES (103, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583591928\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583591929');
INSERT INTO `lea_wechat_message` VALUES (104, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583591957\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQGc7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRndNVmdCdHk4dlUxb0pQejF1YzYAAgQBsmNeAwQsAQAA\"}', '1583591957');
INSERT INTO `lea_wechat_message` VALUES (105, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583591992\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583591992');
INSERT INTO `lea_wechat_message` VALUES (106, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592006\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583592007');
INSERT INTO `lea_wechat_message` VALUES (107, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592788\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQG17jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUmF0Mmh0dHk4dlUxcFhTemh1Y1cAAgRPtWNeAwQsAQAA\"}', '1583592789');
INSERT INTO `lea_wechat_message` VALUES (108, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592853\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQG17jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUmF0Mmh0dHk4dlUxcFhTemh1Y1cAAgRPtWNeAwQsAQAA\"}', '1583592853');
INSERT INTO `lea_wechat_message` VALUES (109, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592898\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQG17jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUmF0Mmh0dHk4dlUxcFhTemh1Y1cAAgRPtWNeAwQsAQAA\"}', '1583592898');
INSERT INTO `lea_wechat_message` VALUES (110, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592970\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQG17jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUmF0Mmh0dHk4dlUxcFhTemh1Y1cAAgRPtWNeAwQsAQAA\"}', '1583592970');
INSERT INTO `lea_wechat_message` VALUES (111, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583592986\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583592987');
INSERT INTO `lea_wechat_message` VALUES (112, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593044\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593044');
INSERT INTO `lea_wechat_message` VALUES (113, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593070\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593070');
INSERT INTO `lea_wechat_message` VALUES (114, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593131\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593132');
INSERT INTO `lea_wechat_message` VALUES (115, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593171\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593171');
INSERT INTO `lea_wechat_message` VALUES (116, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583593217\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593217');
INSERT INTO `lea_wechat_message` VALUES (117, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1583593247\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593247');
INSERT INTO `lea_wechat_message` VALUES (118, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593263\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFa7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR2pPUWhSdHk4dlUxcDNUek51Y1EAAgQXtmNeAwQsAQAA\"}', '1583593263');
INSERT INTO `lea_wechat_message` VALUES (119, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593423\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQGe7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycUY5aGhVdHk4dlUxclVVejF1Y0UAAgTMt2NeAwQsAQAA\"}', '1583593423');
INSERT INTO `lea_wechat_message` VALUES (120, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593431\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583593431');
INSERT INTO `lea_wechat_message` VALUES (121, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593438\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQGe7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycUY5aGhVdHk4dlUxclVVejF1Y0UAAgTMt2NeAwQsAQAA\"}', '1583593438');
INSERT INTO `lea_wechat_message` VALUES (122, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593490\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583593490');
INSERT INTO `lea_wechat_message` VALUES (123, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593498\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQGe7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycUY5aGhVdHk4dlUxclVVejF1Y0UAAgTMt2NeAwQsAQAA\"}', '1583593498');
INSERT INTO `lea_wechat_message` VALUES (124, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593547\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583593547');
INSERT INTO `lea_wechat_message` VALUES (125, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593555\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQGe7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycUY5aGhVdHk4dlUxclVVejF1Y0UAAgTMt2NeAwQsAQAA\"}', '1583593555');
INSERT INTO `lea_wechat_message` VALUES (126, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593679\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583593679');
INSERT INTO `lea_wechat_message` VALUES (127, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593685\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":\"qrscene_type=login&token=asdfghjklmn6677\",\"Ticket\":\"gQFd7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVl85QmdkdHk4dlUxclRWemh1Y2kAAgTLuGNeAwQsAQAA\"}', '1583593685');
INSERT INTO `lea_wechat_message` VALUES (128, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593696\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1583593696');
INSERT INTO `lea_wechat_message` VALUES (129, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583593711\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1583593711');
INSERT INTO `lea_wechat_message` VALUES (130, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583645213\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22672346600246722\"}', '1583645214');
INSERT INTO `lea_wechat_message` VALUES (131, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583645220\",\"MsgType\":\"text\",\"Content\":\"\\u60a8\\u597d\",\"MsgId\":\"22672349351176272\"}', '1583645220');
INSERT INTO `lea_wechat_message` VALUES (132, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1583887830\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22675822992646455\"}', '1583887831');
INSERT INTO `lea_wechat_message` VALUES (133, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584169009\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22679846153740849\"}', '1584169010');
INSERT INTO `lea_wechat_message` VALUES (134, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584169170\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQXdiMmdpdHk4dlUxclAxSWh1YzgAAgTHgGxeAwQsAQAA\"}', '1584169170');
INSERT INTO `lea_wechat_message` VALUES (135, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584169320\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQXdiMmdpdHk4dlUxclAxSWh1YzgAAgTHgGxeAwQsAQAA\"}', '1584169321');
INSERT INTO `lea_wechat_message` VALUES (136, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584181820\",\"MsgType\":\"text\",\"Content\":\"6\",\"MsgId\":\"22680032651728971\"}', '1584181821');
INSERT INTO `lea_wechat_message` VALUES (137, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584192028\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQE47zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyR1VTdGdUdHk4dlUxdDBySTF1Y2UAAgQU2mxeAwQsAQAA\"}', '1584192029');
INSERT INTO `lea_wechat_message` VALUES (138, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193607\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH77jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGpqSGgtdHk4dlUxdEV4STF1Y2IAAgQ84GxeAwQsAQAA\"}', '1584193607');
INSERT INTO `lea_wechat_message` VALUES (139, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193762\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH77jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGpqSGgtdHk4dlUxdEV4STF1Y2IAAgQ84GxeAwQsAQAA\"}', '1584193762');
INSERT INTO `lea_wechat_message` VALUES (140, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193791\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH77jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGpqSGgtdHk4dlUxdEV4STF1Y2IAAgQ84GxeAwQsAQAA\"}', '1584193791');
INSERT INTO `lea_wechat_message` VALUES (141, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193801\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22680202992359292\"}', '1584193801');
INSERT INTO `lea_wechat_message` VALUES (142, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193834\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH77jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGpqSGgtdHk4dlUxdEV4STF1Y2IAAgQ84GxeAwQsAQAA\"}', '1584193834');
INSERT INTO `lea_wechat_message` VALUES (143, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193889\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH77jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGpqSGgtdHk4dlUxdEV4STF1Y2IAAgQ84GxeAwQsAQAA\"}', '1584193891');
INSERT INTO `lea_wechat_message` VALUES (144, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193937\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ2lhNmhqdHk4dlUxdVd5SXh1Y3AAAgSO4WxeAwQsAQAA\"}', '1584193937');
INSERT INTO `lea_wechat_message` VALUES (145, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584193985\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ2lhNmhqdHk4dlUxdVd5SXh1Y3AAAgSO4WxeAwQsAQAA\"}', '1584193985');
INSERT INTO `lea_wechat_message` VALUES (146, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194074\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ2lhNmhqdHk4dlUxdVd5SXh1Y3AAAgSO4WxeAwQsAQAA\"}', '1584194074');
INSERT INTO `lea_wechat_message` VALUES (147, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194098\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ2lhNmhqdHk4dlUxdVd5SXh1Y3AAAgSO4WxeAwQsAQAA\"}', '1584194098');
INSERT INTO `lea_wechat_message` VALUES (148, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194336\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFu7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTTEtbmdEdHk4dlUxdll6SU51Y3UAAgTQ4mxeAwQsAQAA\"}', '1584194336');
INSERT INTO `lea_wechat_message` VALUES (149, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194433\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFu7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTTEtbmdEdHk4dlUxdll6SU51Y3UAAgTQ4mxeAwQsAQAA\"}', '1584194433');
INSERT INTO `lea_wechat_message` VALUES (150, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194472\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFu7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTTEtbmdEdHk4dlUxdll6SU51Y3UAAgTQ4mxeAwQsAQAA\"}', '1584194472');
INSERT INTO `lea_wechat_message` VALUES (151, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194517\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login;method=wechat;to=admin,token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFu7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTTEtbmdEdHk4dlUxdll6SU51Y3UAAgTQ4mxeAwQsAQAA\"}', '1584194517');
INSERT INTO `lea_wechat_message` VALUES (152, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194582\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH-7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ0d0WGhGdHk4dlUxc1pCSXh1Y3EAAgQR5GxeAwQsAQAA\"}', '1584194582');
INSERT INTO `lea_wechat_message` VALUES (153, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194650\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH-7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ0d0WGhGdHk4dlUxc1pCSXh1Y3EAAgQR5GxeAwQsAQAA\"}', '1584194651');
INSERT INTO `lea_wechat_message` VALUES (154, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194818\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQH-7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ0d0WGhGdHk4dlUxc1pCSXh1Y3EAAgQR5GxeAwQsAQAA\"}', '1584194818');
INSERT INTO `lea_wechat_message` VALUES (155, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584194963\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHX7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybHhOMGdDdHk4dlUxdUdDSWh1Y0MAAgR_5WxeAwQsAQAA\"}', '1584194963');
INSERT INTO `lea_wechat_message` VALUES (156, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584196327\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHj7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWi1HV2dzdHk4dlUxdGRISXh1Y2sAAgQh6mxeAwQsAQAA\"}', '1584196327');
INSERT INTO `lea_wechat_message` VALUES (157, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584197037\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFg7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTldwZGdRdHk4dlUxdmlLSU51Y1QAAgSm7WxeAwQsAQAA\"}', '1584197037');
INSERT INTO `lea_wechat_message` VALUES (158, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584200989\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYjR0c2d3dHk4dlUxczUtSTF1Y0sAAgTZ-GxeAwQsAQAA\"}', '1584200990');
INSERT INTO `lea_wechat_message` VALUES (159, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584201824\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHK7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyLU9SeGdqdHk4dlUxaTExSnh1Y3UAAgRVAG1eAwQsAQAA\"}', '1584201824');
INSERT INTO `lea_wechat_message` VALUES (160, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584202954\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZFd4X2g0dHk4dlUxakQ1SjF1YzMAAgS7BG1eAwQsAQAA\"}', '1584202954');
INSERT INTO `lea_wechat_message` VALUES (161, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203146\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZFd4X2g0dHk4dlUxakQ1SjF1YzMAAgS7BG1eAwQsAQAA\"}', '1584203146');
INSERT INTO `lea_wechat_message` VALUES (162, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203247\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHQ7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaW9UcGhidHk4dlUxZ203Snh1Y0YAAgTqBW1eAwQsAQAA\"}', '1584203247');
INSERT INTO `lea_wechat_message` VALUES (163, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203295\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHQ7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaW9UcGhidHk4dlUxZ203Snh1Y0YAAgTqBW1eAwQsAQAA\"}', '1584203295');
INSERT INTO `lea_wechat_message` VALUES (164, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203346\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHQ7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaW9UcGhidHk4dlUxZ203Snh1Y0YAAgTqBW1eAwQsAQAA\"}', '1584203346');
INSERT INTO `lea_wechat_message` VALUES (165, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203557\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG_7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydnpocmhodHk4dlUxaDk4Sk51Y0sAAgQdB21eAwQsAQAA\"}', '1584203557');
INSERT INTO `lea_wechat_message` VALUES (166, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203674\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG_7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydnpocmhodHk4dlUxaDk4Sk51Y0sAAgQdB21eAwQsAQAA\"}', '1584203674');
INSERT INTO `lea_wechat_message` VALUES (167, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203758\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG_7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydnpocmhodHk4dlUxaDk4Sk51Y0sAAgQdB21eAwQsAQAA\"}', '1584203758');
INSERT INTO `lea_wechat_message` VALUES (168, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203859\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGk7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaFJkc2g4dHk4dlUxaFk5Smh1Y18AAgRQCG1eAwQsAQAA\"}', '1584203859');
INSERT INTO `lea_wechat_message` VALUES (169, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584203965\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGk7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaFJkc2g4dHk4dlUxaFk5Smh1Y18AAgRQCG1eAwQsAQAA\"}', '1584203966');
INSERT INTO `lea_wechat_message` VALUES (170, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204011\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGk7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaFJkc2g4dHk4dlUxaFk5Smh1Y18AAgRQCG1eAwQsAQAA\"}', '1584204012');
INSERT INTO `lea_wechat_message` VALUES (171, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204112\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGk7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaFJkc2g4dHk4dlUxaFk5Smh1Y18AAgRQCG1eAwQsAQAA\"}', '1584204112');
INSERT INTO `lea_wechat_message` VALUES (172, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204304\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEX7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYjFoUWhYdHk4dlUxZ1RiSmh1YzEAAgQLCm1eAwQsAQAA\"}', '1584204304');
INSERT INTO `lea_wechat_message` VALUES (173, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204614\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQG67jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydmYtcmdWdHk4dlUxaERjSjF1Y3YAAgQ7C21eAwQsAQAA\"}', '1584204614');
INSERT INTO `lea_wechat_message` VALUES (174, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204686\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEg7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQVV1aWdwdHk4dlUxaU9jSnh1Y18AAgSGC21eAwQsAQAA\"}', '1584204686');
INSERT INTO `lea_wechat_message` VALUES (175, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584204922\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQEg7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQVV1aWdwdHk4dlUxaU9jSnh1Y18AAgSGC21eAwQsAQAA\"}', '1584204922');
INSERT INTO `lea_wechat_message` VALUES (176, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205141\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHA7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOEZkUWhLdHk4dlUxaEplSnh1Y2sAAgRBDW1eAwQsAQAA\"}', '1584205141');
INSERT INTO `lea_wechat_message` VALUES (177, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205630\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFa7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydFJtUWhBdHk4dlUxaG5nSnh1Y3gAAgQrD21eAwQsAQAA\"}', '1584205630');
INSERT INTO `lea_wechat_message` VALUES (178, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205794\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFa7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydFJtUWhBdHk4dlUxaG5nSnh1Y3gAAgQrD21eAwQsAQAA\"}', '1584205794');
INSERT INTO `lea_wechat_message` VALUES (179, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205849\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFa7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydFJtUWhBdHk4dlUxaG5nSnh1Y3gAAgQrD21eAwQsAQAA\"}', '1584205849');
INSERT INTO `lea_wechat_message` VALUES (180, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205863\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFa7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydFJtUWhBdHk4dlUxaG5nSnh1Y3gAAgQrD21eAwQsAQAA\"}', '1584205863');
INSERT INTO `lea_wechat_message` VALUES (181, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205938\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHn7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWEkxS2hNdHk4dlUxaWhoSjF1Y1YAAgRlEG1eAwQsAQAA\"}', '1584205939');
INSERT INTO `lea_wechat_message` VALUES (182, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584205984\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGO7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUFFjZWdKdHk4dlUxajZoSjF1Y2MAAgSaEG1eAwQsAQAA\"}', '1584205984');
INSERT INTO `lea_wechat_message` VALUES (183, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206204\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFl7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaWhSRmdqdHk4dlUxaXdpSk51YzMAAgR0EW1eAwQsAQAA\"}', '1584206205');
INSERT INTO `lea_wechat_message` VALUES (184, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206400\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQGq7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyM25vS2dudHk4dlUxaG9qSjF1Y2QAAgQsEm1eAwQsAQAA\"}', '1584206400');
INSERT INTO `lea_wechat_message` VALUES (185, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206460\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFM7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY1VaamcxdHk4dlUxaXRqSk51Y3YAAgRxEm1eAwQsAQAA\"}', '1584206460');
INSERT INTO `lea_wechat_message` VALUES (186, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206502\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQFm7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY1NLV2hKdHk4dlUxajhqSk51Y3YAAgScEm1eAwQsAQAA\"}', '1584206502');
INSERT INTO `lea_wechat_message` VALUES (187, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206598\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQE97zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN2ZBOGczdHk4dlUxZ0NrSmh1Y3gAAgT6Em1eAwQsAQAA\"}', '1584206598');
INSERT INTO `lea_wechat_message` VALUES (188, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584206612\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1f6b289b95a432e0a5c04d8e6d00b142\",\"Ticket\":\"gQHc7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRmxhdGhOdHk4dlUxZ1lrSjF1Y1YAAgQQE21eAwQsAQAA\"}', '1584206612');
INSERT INTO `lea_wechat_message` VALUES (189, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235069\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQED7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyekFyZ2hfdHk4dlUxcHkzSk51Y24AAgQ2gm1eAwQsAQAA\"}', '1584235070');
INSERT INTO `lea_wechat_message` VALUES (190, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235136\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQED7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyekFyZ2hfdHk4dlUxcHkzSk51Y24AAgQ2gm1eAwQsAQAA\"}', '1584235137');
INSERT INTO `lea_wechat_message` VALUES (191, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235205\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQED7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyekFyZ2hfdHk4dlUxcHkzSk51Y24AAgQ2gm1eAwQsAQAA\"}', '1584235205');
INSERT INTO `lea_wechat_message` VALUES (192, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235320\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQED7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyekFyZ2hfdHk4dlUxcHkzSk51Y24AAgQ2gm1eAwQsAQAA\"}', '1584235320');
INSERT INTO `lea_wechat_message` VALUES (193, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235421\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQEE8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeEZVNGhIdHk4dlUxcV80Snh1Y2EAAgSTg21eAwQsAQAA\"}', '1584235421');
INSERT INTO `lea_wechat_message` VALUES (194, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235444\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQEN8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTmkzN2h4dHk4dlUxcmo0SjF1Y3UAAgSng21eAwQsAQAA\"}', '1584235444');
INSERT INTO `lea_wechat_message` VALUES (195, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235466\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQGY7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTW9tZmhpdHk4dlUxcks0Snh1Y0gAAgTCg21eAwQsAQAA\"}', '1584235466');
INSERT INTO `lea_wechat_message` VALUES (196, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235499\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQF07zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZFhyd2hfdHk4dlUxb2o1Sk51Y0gAAgTng21eAwQsAQAA\"}', '1584235499');
INSERT INTO `lea_wechat_message` VALUES (197, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235534\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQHK7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY05MUGhudHk4dlUxb0U1SjF1Y2gAAgT8g21eAwQsAQAA\"}', '1584235535');
INSERT INTO `lea_wechat_message` VALUES (198, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584235585\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQFf7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZUxDVWd2dHk4dlUxcEU1Sk51Y3EAAgQ8hG1eAwQsAQAA\"}', '1584235585');
INSERT INTO `lea_wechat_message` VALUES (199, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584236305\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQFZ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydllNY2h6dHk4dlUxb0M3Smh1Y2QAAgT6hW1eAwQsAQAA\"}', '1584236305');
INSERT INTO `lea_wechat_message` VALUES (200, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584236836\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=42bb6b94124316312673c90d834a698c\",\"Ticket\":\"gQF_7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySUZiNWhPdHk4dlUxcHU5Smh1Y1MAAgQyiG1eAwQsAQAA\"}', '1584236836');
INSERT INTO `lea_wechat_message` VALUES (201, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584237730\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQGD7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybE1LaWgydHk4dlUxb3ZkSjF1Y2wAAgTzi21eAwQsAQAA\"}', '1584237730');
INSERT INTO `lea_wechat_message` VALUES (202, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584238107\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQEZ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeHRHTWcwdHk4dlUxcGxlSk51Y3kAAgQZjm1eAwQ8AAAA\"}', '1584238107');
INSERT INTO `lea_wechat_message` VALUES (203, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584238344\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQFN7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyamZOYmhWdHk4dlUxb3lmSk51Y0QAAgRujm1eAwS0AAAA\"}', '1584238344');
INSERT INTO `lea_wechat_message` VALUES (204, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584238357\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=825bfdebb0847fa96ce0b9742ffade80\",\"Ticket\":\"gQHJ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZDNvZGhDdHk4dlUxcjVmSnh1Y2QAAgQRj21eAwS0AAAA\"}', '1584238357');
INSERT INTO `lea_wechat_message` VALUES (205, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584274538\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=70df908d8c1846e3ae9be164b9da6184\",\"Ticket\":\"gQH57jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRmFKTGg2dHk4dlUxZ2l0S2h1Y2sAAgReHG5eAwS0AAAA\"}', '1584274538');
INSERT INTO `lea_wechat_message` VALUES (206, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584274574\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=70df908d8c1846e3ae9be164b9da6184\",\"Ticket\":\"gQE08DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWHRJV2g1dHk4dlUxZy10SzF1Y0kAAgSKHG5eAwS0AAAA\"}', '1584274574');
INSERT INTO `lea_wechat_message` VALUES (207, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584320842\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=71e374ba975acbf48fe590823aa4b407\",\"Ticket\":\"gQGT7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYVlRc2g1dHk4dlUxdlJoSzF1Y0QAAgRB0W5eAwS0AAAA\"}', '1584320842');
INSERT INTO `lea_wechat_message` VALUES (208, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584320860\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=71e374ba975acbf48fe590823aa4b407\",\"Ticket\":\"gQGT7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYVlRc2g1dHk4dlUxdlJoSzF1Y0QAAgRB0W5eAwS0AAAA\"}', '1584320860');
INSERT INTO `lea_wechat_message` VALUES (209, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584320905\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=71e374ba975acbf48fe590823aa4b407\",\"Ticket\":\"gQHk7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOGdsWGh1dHk4dlUxc1FpS051Y3UAAgSA0W5eAwS0AAAA\"}', '1584320905');
INSERT INTO `lea_wechat_message` VALUES (210, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584320924\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=71e374ba975acbf48fe590823aa4b407\",\"Ticket\":\"gQHp7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyS29ZTmdQdHk4dlUxdGNpS3h1Y0MAAgSY0W5eAwS0AAAA\"}', '1584320924');
INSERT INTO `lea_wechat_message` VALUES (211, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584320960\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=587c5ff96b839e7cdf5f601876d59936\",\"Ticket\":\"gQG47zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUng0bmhmdHk4dlUxdEppS3h1Y0oAAgS50W5eAwS0AAAA\"}', '1584320960');
INSERT INTO `lea_wechat_message` VALUES (212, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPFMGiiP4G_q5VA5tUG7A20\",\"CreateTime\":\"1584332099\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=be8b1ac41fa98eba378a472779d90a23\",\"Ticket\":\"gQFI7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycmNEWWhHdHk4dlUxdlBaS051Y1IAAgQ--W5eAwS0AAAA\"}', '1584332099');
INSERT INTO `lea_wechat_message` VALUES (213, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584332119\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=be8b1ac41fa98eba378a472779d90a23\",\"Ticket\":\"gQFI7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycmNEWWhHdHk4dlUxdlBaS051Y1IAAgQ--W5eAwS0AAAA\"}', '1584332119');
INSERT INTO `lea_wechat_message` VALUES (214, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584362662\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=70df908d8c1846e3ae9be164b9da6184\",\"Ticket\":\"gQH07jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydXBVRGdvdHk4dlUxbGJSTHh1Y3gAAgSXdG9eAwS0AAAA\"}', '1584362662');
INSERT INTO `lea_wechat_message` VALUES (215, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584362675\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=70df908d8c1846e3ae9be164b9da6184\",\"Ticket\":\"gQH07jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydXBVRGdvdHk4dlUxbGJSTHh1Y3gAAgSXdG9eAwS0AAAA\"}', '1584362675');
INSERT INTO `lea_wechat_message` VALUES (216, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584362733\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=e6c9095d10f60ca849bd7cec55402f89\",\"Ticket\":\"gQEv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydWlWNmdhdHk4dlUxbW5STDF1Y00AAgTjdG9eAwS0AAAA\"}', '1584362733');
INSERT INTO `lea_wechat_message` VALUES (217, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584415241\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=05d8f123b18973fbac831fecf54d975f\",\"Ticket\":\"gQF67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTGFyQ2dTdHk4dlUxbUsyTU51Y1gAAgT6QXBeAwS0AAAA\"}', '1584415241');
INSERT INTO `lea_wechat_message` VALUES (218, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584415355\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=05d8f123b18973fbac831fecf54d975f\",\"Ticket\":\"gQF67zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTGFyQ2dTdHk4dlUxbUsyTU51Y1gAAgT6QXBeAwS0AAAA\"}', '1584415355');
INSERT INTO `lea_wechat_message` VALUES (219, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584508138\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=82dbb9da99bd1bf3db3aaa212246ce6f\",\"Ticket\":\"gQFp7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyenFsbmh4dHk4dlUxcEVKTnh1Y3oAAgS0rHFeAwS0AAAA\"}', '1584508139');
INSERT INTO `lea_wechat_message` VALUES (220, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584508173\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=82dbb9da99bd1bf3db3aaa212246ce6f\",\"Ticket\":\"gQHe7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAya1lqU2g0dHk4dlUxcUhKTmh1Y1YAAgT3rHFeAwS0AAAA\"}', '1584508173');
INSERT INTO `lea_wechat_message` VALUES (221, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584510611\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ec0c7fc85b2bfb0bffc58e22e8fe354d\",\"Ticket\":\"gQHA7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyX21OZ2djdHk4dlUxb19UTnh1Y3kAAgSLtnFeAwS0AAAA\"}', '1584510612');
INSERT INTO `lea_wechat_message` VALUES (222, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584510626\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ec0c7fc85b2bfb0bffc58e22e8fe354d\",\"Ticket\":\"gQEP8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN3dKTGhmdHk4dlUxcGhUTmh1Y1cAAgSdtnFeAwS0AAAA\"}', '1584510626');
INSERT INTO `lea_wechat_message` VALUES (223, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584510645\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ec0c7fc85b2bfb0bffc58e22e8fe354d\",\"Ticket\":\"gQFR8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWEFTWmdIdHk4dlUxcEFUTmh1Y0YAAgSwtnFeAwS0AAAA\"}', '1584510645');
INSERT INTO `lea_wechat_message` VALUES (224, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584510657\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ec0c7fc85b2bfb0bffc58e22e8fe354d\",\"Ticket\":\"gQEY8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyakxkQmh2dHk4dlUxcE9UTjF1Y1UAAgS_tnFeAwS0AAAA\"}', '1584510657');
INSERT INTO `lea_wechat_message` VALUES (225, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584542243\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=3ed073ace5274b859302e1388abb07eb\",\"Ticket\":\"gQFb7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMGhubmc3dHk4dlUxajRPT2h1Y1kAAgQQMnJeAwS0AAAA\"}', '1584542243');
INSERT INTO `lea_wechat_message` VALUES (226, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584618751\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=8e724ea62192555a2a6f940b819b1f92\",\"Ticket\":\"gQHu7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySGJNamhLdHk4dlUxbUp0UHh1Y2EAAgT5XHNeAwS0AAAA\"}', '1584618752');
INSERT INTO `lea_wechat_message` VALUES (227, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584619512\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=8e724ea62192555a2a6f940b819b1f92\",\"Ticket\":\"gQHg7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQXNuQmdhdHk4dlUxbXd3UDF1Y3gAAgTsX3NeAwS0AAAA\"}', '1584619513');
INSERT INTO `lea_wechat_message` VALUES (228, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1584666572\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=22a39e4840ba2aefda0b3273e7350dad\",\"Ticket\":\"gQGk7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycHJDM2c1dHk4dlUxaFVvUXh1Y0IAAgTEF3ReAwS0AAAA\"}', '1584666573');
INSERT INTO `lea_wechat_message` VALUES (229, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584666582\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=22a39e4840ba2aefda0b3273e7350dad\",\"Ticket\":\"gQGk7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycHJDM2c1dHk4dlUxaFVvUXh1Y0IAAgTEF3ReAwS0AAAA\"}', '1584666582');
INSERT INTO `lea_wechat_message` VALUES (230, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584755761\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=fe2004916165ea4bc1114a728ea9e36b\",\"Ticket\":\"gQEZ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTThHMWgydHk4dlUxbmxRUnh1Y28AAgQhdHVeAwS0AAAA\"}', '1584755762');
INSERT INTO `lea_wechat_message` VALUES (231, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1584755810\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=097e36adc6c44cf68367f05faed93d50\",\"Ticket\":\"gQHm7jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQkdLdGhSdHk4dlUxa2dSUk51Yy0AAgRcdHVeAwS0AAAA\"}', '1584755810');
INSERT INTO `lea_wechat_message` VALUES (232, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585103207\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=0c8dbdcfe0c6e1bcda294f4dc0fefd79\",\"Ticket\":\"gQE97zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyclVCZGhndHk4dlUxc2oyV3h1Yy0AAgRfwXpeAwS0AAAA\"}', '1585103207');
INSERT INTO `lea_wechat_message` VALUES (233, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585303214\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=52d995c4db3b07e907c749414d5cefe4\",\"Ticket\":\"gQHJ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYTVVV2hwdHk4dlUxdHVmWjF1Y2wAAgSqzn1eAwS0AAAA\"}', '1585303214');
INSERT INTO `lea_wechat_message` VALUES (234, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585308635\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=8525ed030245a196a3c3b2c1a112a303\",\"Ticket\":\"gQHP7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVEFQRmhodHk4dlUxdTVBWnh1Y2YAAgTR431eAwS0AAAA\"}', '1585308635');
INSERT INTO `lea_wechat_message` VALUES (235, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585320186\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=617bae1ff42e2b595c064539e3748c7f\",\"Ticket\":\"gQH07zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ2JDR2hydHk4dlUxaUFoLTF1YzMAAgTwEH5eAwS0AAAA\"}', '1585320186');
INSERT INTO `lea_wechat_message` VALUES (236, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585359214\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=52d995c4db3b07e907c749414d5cefe4\",\"Ticket\":\"gQFB7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyenZDcmhNdHk4dlUxb3FHLU51Y1QAAgRmqX5eAwS0AAAA\"}', '1585359215');
INSERT INTO `lea_wechat_message` VALUES (237, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585359234\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=52d995c4db3b07e907c749414d5cefe4\",\"Ticket\":\"gQGd8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyakNkVmhxdHk4dlUxb1FHLTF1YzUAAgSAqX5eAwS0AAAA\"}', '1585359234');
INSERT INTO `lea_wechat_message` VALUES (238, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585392634\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ce77cb5e51405f4cbd3c73fd1b1e1d4c\",\"Ticket\":\"gQFq7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUmJ4NGdVdHk4dlUxaUVJXzF1Y3MAAgT0K39eAwS0AAAA\"}', '1585392634');
INSERT INTO `lea_wechat_message` VALUES (239, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585395115\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=c476d25c8c67a6025e29576483bc266e\",\"Ticket\":\"gQFz7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaVdTSWdqdHk4dlUxaGpTX051Y1kAAgSfNX9eAwS0AAAA\"}', '1585395115');
INSERT INTO `lea_wechat_message` VALUES (240, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585445441\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=c476d25c8c67a6025e29576483bc266e\",\"Ticket\":\"gQEU7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYm4wUGhxdHk4dlUxdktXX051Y2kAAgQ6_n9eAwS0AAAA\"}', '1585445441');
INSERT INTO `lea_wechat_message` VALUES (241, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1585622379\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=adc0bf080530569e9267fd793bc259ed\",\"Ticket\":\"gQFP8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybXNpQ2hhdHk4dlUxRXNLMmh1Y0YAAgRorYJeAwS0AAAA\"}', '1585622379');
INSERT INTO `lea_wechat_message` VALUES (242, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586160645\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=efdbf763ac24b64d7387c209061e2033\",\"Ticket\":\"gQGN8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWHo0dmdEdHk4dlUxS0NBYWh1Y3MAAgTy44peAwS0AAAA\"}', '1586160646');
INSERT INTO `lea_wechat_message` VALUES (243, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586248670\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=efdbf763ac24b64d7387c209061e2033\",\"Ticket\":\"gQGc8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT2NjOWgzdHk4dlUxeENZY2h1Y0EAAgSyO4xeAwS0AAAA\"}', '1586248671');
INSERT INTO `lea_wechat_message` VALUES (244, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586250637\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=efdbf763ac24b64d7387c209061e2033\",\"Ticket\":\"gQHl7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN192NWdldHk4dlUxQU80Y2h1Y1AAAgR_Q4xeAwS0AAAA\"}', '1586250637');
INSERT INTO `lea_wechat_message` VALUES (245, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586488368\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=c5bdbf9dd5e2c9a85c353ed81f22e156\",\"Ticket\":\"gQEP8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyd2tsSGhKdHk4dlUxTHRBZnh1Y0wAAgQp5I9eAwS0AAAA\"}', '1586488369');
INSERT INTO `lea_wechat_message` VALUES (246, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586568558\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=1dd125a14518f447c8479ecfa20ef609\",\"Ticket\":\"gQGx7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeGdSMWhHdHk4dlUxd3h1aDF1Y0QAAgRtHZFeAwS0AAAA\"}', '1586568558');
INSERT INTO `lea_wechat_message` VALUES (247, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586604158\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ce82681549444a1a71c3de2986597788\",\"Ticket\":\"gQFv8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZlhFVmh3dHk4dlUxRU5GaDF1Y08AAgR9qJFeAwS0AAAA\"}', '1586604159');
INSERT INTO `lea_wechat_message` VALUES (248, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1586658210\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=0984f4507e25836247a7e09478875cd8\",\"Ticket\":\"gQE98DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZWZ6b2dLdHk4dlUxQmpZaTF1YzAAAgSfe5JeAwS0AAAA\"}', '1586658211');
INSERT INTO `lea_wechat_message` VALUES (249, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587086503\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=be5adda40131c8c9d2a219667646c9ae\",\"Ticket\":\"gQFm8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUThLemhOdHk4dlUxeGo1cHh1Y3kAAgSfBJleAwS0AAAA\"}', '1587086504');
INSERT INTO `lea_wechat_message` VALUES (250, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587086608\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=be5adda40131c8c9d2a219667646c9ae\",\"Ticket\":\"gQES8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ2xJbGdydHk4dlUxejA1cE51Y2QAAgQMBZleAwS0AAAA\"}', '1587086608');
INSERT INTO `lea_wechat_message` VALUES (251, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587087772\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721632318785865\"}', '1587087773');
INSERT INTO `lea_wechat_message` VALUES (252, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095099\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721737779195529\"}', '1587095100');
INSERT INTO `lea_wechat_message` VALUES (253, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095139\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721739523356215\"}', '1587095140');
INSERT INTO `lea_wechat_message` VALUES (254, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095317\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721742073974830\"}', '1587095317');
INSERT INTO `lea_wechat_message` VALUES (255, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095390\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721739512533695\"}', '1587095390');
INSERT INTO `lea_wechat_message` VALUES (256, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095449\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721743246987749\"}', '1587095450');
INSERT INTO `lea_wechat_message` VALUES (257, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587095652\",\"MsgType\":\"text\",\"Content\":\"222\",\"MsgId\":\"22721747024705136\"}', '1587095652');
INSERT INTO `lea_wechat_message` VALUES (258, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096269\",\"MsgType\":\"text\",\"Content\":\"11\",\"MsgId\":\"22721753829240698\"}', '1587096269');
INSERT INTO `lea_wechat_message` VALUES (259, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096275\",\"MsgType\":\"text\",\"Content\":\"2\",\"MsgId\":\"22721754612461942\"}', '1587096275');
INSERT INTO `lea_wechat_message` VALUES (260, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096363\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721757805913439\"}', '1587096364');
INSERT INTO `lea_wechat_message` VALUES (261, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096398\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721758536898351\"}', '1587096399');
INSERT INTO `lea_wechat_message` VALUES (262, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096441\",\"MsgType\":\"text\",\"Content\":\"2678\",\"MsgId\":\"22721755727863273\"}', '1587096441');
INSERT INTO `lea_wechat_message` VALUES (263, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096443\",\"MsgType\":\"text\",\"Content\":\"2678\",\"MsgId\":\"22721755727863273\"}', '1587096443');
INSERT INTO `lea_wechat_message` VALUES (264, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096443\",\"MsgType\":\"text\",\"Content\":\"\\uff09\",\"MsgId\":\"22721757144307352\"}', '1587096443');
INSERT INTO `lea_wechat_message` VALUES (265, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587096451\",\"MsgType\":\"text\",\"Content\":\"12\",\"MsgId\":\"22721758944890622\"}', '1587096451');
INSERT INTO `lea_wechat_message` VALUES (266, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587108112\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721925336266523\"}', '1587108113');
INSERT INTO `lea_wechat_message` VALUES (267, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587108263\",\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":\"22721924061091891\"}', '1587108264');
INSERT INTO `lea_wechat_message` VALUES (268, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587108529\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1587108529');
INSERT INTO `lea_wechat_message` VALUES (269, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587108554\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1587108554');
INSERT INTO `lea_wechat_message` VALUES (270, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587148426\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=24d0e966d408dca70f4957f7159695d8\",\"Ticket\":\"gQHR7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNHptVGhZdHk4dlUxSXpUcDF1Y2cAAgRv9pleAwS0AAAA\"}', '1587148427');
INSERT INTO `lea_wechat_message` VALUES (271, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587151735\",\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":\"22722546987354196\"}', '1587151736');
INSERT INTO `lea_wechat_message` VALUES (272, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587151747\",\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":\"22722546827592834\"}', '1587151747');
INSERT INTO `lea_wechat_message` VALUES (273, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587151767\",\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":\"22722547354055571\"}', '1587151767');
INSERT INTO `lea_wechat_message` VALUES (274, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587151803\",\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":\"22722550667302854\"}', '1587151804');
INSERT INTO `lea_wechat_message` VALUES (275, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587181800\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=d63809f5744182407908b062d35c5a2b\",\"Ticket\":\"gQFc7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeWY2LWh2dHk4dlUxQXdWcXh1Yy0AAgRseJpeAwS0AAAA\"}', '1587181800');
INSERT INTO `lea_wechat_message` VALUES (276, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587206867\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=41a56d27370fbf5872508a252a473d9f\",\"Ticket\":\"gQEy8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeGFWZGhkdHk4dlUxSllycXh1Y1MAAgTI2ppeAwS0AAAA\"}', '1587206868');
INSERT INTO `lea_wechat_message` VALUES (277, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587301722\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=41a56d27370fbf5872508a252a473d9f\",\"Ticket\":\"gQFg8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaFRDR2ctdHk4dlUxQzZkc3h1Y2IAAgTSTJxeAwS0AAAA\"}', '1587301722');
INSERT INTO `lea_wechat_message` VALUES (278, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587369085\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=be5adda40131c8c9d2a219667646c9ae\",\"Ticket\":\"gQGZ7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMWo4b2dQdHk4dlUxQUxsdE51Y2UAAgR7VJ1eAwS0AAAA\"}', '1587369086');
INSERT INTO `lea_wechat_message` VALUES (279, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587433615\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=d029072e29c225d2fb22756db751263e\",\"Ticket\":\"gQFw8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTDRPYWhudHk4dlUxQjFodXh1Y2UAAgSNUJ5eAwS0AAAA\"}', '1587433615');
INSERT INTO `lea_wechat_message` VALUES (280, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587475602\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=85d3f1b4a7187c21ae0fc80e0fdca3ba\",\"Ticket\":\"gQH_8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZl9lN2cxdHk4dlUxSVpSdTF1Y3EAAgSJ9J5eAwS0AAAA\"}', '1587475602');
INSERT INTO `lea_wechat_message` VALUES (281, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483459\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/dev.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483459');
INSERT INTO `lea_wechat_message` VALUES (282, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483464\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/dev.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483464');
INSERT INTO `lea_wechat_message` VALUES (283, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483494\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/admin-helper.pipasheng.com\\/wechat\\/menu?ref=addtabs\",\"MenuId\":\"434285572\"}', '1587483494');
INSERT INTO `lea_wechat_message` VALUES (284, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483497\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/helper.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483498');
INSERT INTO `lea_wechat_message` VALUES (285, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483666\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/dev.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483666');
INSERT INTO `lea_wechat_message` VALUES (286, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483669\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/dev.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483669');
INSERT INTO `lea_wechat_message` VALUES (287, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483693\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/dev.pipasheng.com\\/\",\"MenuId\":\"434285572\"}', '1587483693');
INSERT INTO `lea_wechat_message` VALUES (288, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483697\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1587483697');
INSERT INTO `lea_wechat_message` VALUES (289, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483724\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1587483724');
INSERT INTO `lea_wechat_message` VALUES (290, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483728\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587483728');
INSERT INTO `lea_wechat_message` VALUES (291, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483734\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587483734');
INSERT INTO `lea_wechat_message` VALUES (292, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483739\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/admin-helper.pipasheng.com\\/wechat\\/menu?ref=addtabs\",\"MenuId\":\"434434752\"}', '1587483739');
INSERT INTO `lea_wechat_message` VALUES (293, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483765\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/admin-helper.pipasheng.com\\/wechat\\/menu?ref=addtabs\",\"MenuId\":\"434434752\"}', '1587483765');
INSERT INTO `lea_wechat_message` VALUES (294, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483816\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1587483816');
INSERT INTO `lea_wechat_message` VALUES (295, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483837\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1587483837');
INSERT INTO `lea_wechat_message` VALUES (296, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483839\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587483840');
INSERT INTO `lea_wechat_message` VALUES (297, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483850\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587483850');
INSERT INTO `lea_wechat_message` VALUES (298, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587483853\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587483853');
INSERT INTO `lea_wechat_message` VALUES (299, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484254\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484255');
INSERT INTO `lea_wechat_message` VALUES (300, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484261\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484261');
INSERT INTO `lea_wechat_message` VALUES (301, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484267\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484267');
INSERT INTO `lea_wechat_message` VALUES (302, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484281\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484281');
INSERT INTO `lea_wechat_message` VALUES (303, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484301\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484301');
INSERT INTO `lea_wechat_message` VALUES (304, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484311\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484311');
INSERT INTO `lea_wechat_message` VALUES (305, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484314\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484314');
INSERT INTO `lea_wechat_message` VALUES (306, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484340\",\"MsgType\":\"text\",\"Content\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MsgId\":\"22727309207767338\"}', '1587484340');
INSERT INTO `lea_wechat_message` VALUES (307, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484354\",\"MsgType\":\"text\",\"Content\":\"http:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MsgId\":\"22727310600755143\"}', '1587484355');
INSERT INTO `lea_wechat_message` VALUES (308, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484386\",\"MsgType\":\"text\",\"Content\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\\/login\",\"MsgId\":\"22727310525046491\"}', '1587484386');
INSERT INTO `lea_wechat_message` VALUES (309, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484471\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484471');
INSERT INTO `lea_wechat_message` VALUES (310, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484475\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484475');
INSERT INTO `lea_wechat_message` VALUES (311, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484490\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484490');
INSERT INTO `lea_wechat_message` VALUES (312, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484536\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484536');
INSERT INTO `lea_wechat_message` VALUES (313, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484538\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MenuId\":\"434434753\"}', '1587484538');
INSERT INTO `lea_wechat_message` VALUES (314, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'unsubscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484543\",\"MsgType\":\"event\",\"Event\":\"unsubscribe\",\"EventKey\":null}', '1587484543');
INSERT INTO `lea_wechat_message` VALUES (315, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'subscribe', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484554\",\"MsgType\":\"event\",\"Event\":\"subscribe\",\"EventKey\":null}', '1587484554');
INSERT INTO `lea_wechat_message` VALUES (316, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484556\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\\/login\",\"MenuId\":\"434434754\"}', '1587484556');
INSERT INTO `lea_wechat_message` VALUES (317, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587484564\",\"MsgType\":\"text\",\"Content\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MsgId\":\"22727314607244695\"}', '1587484564');
INSERT INTO `lea_wechat_message` VALUES (318, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484578\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\\/login\",\"MenuId\":\"434434754\"}', '1587484578');
INSERT INTO `lea_wechat_message` VALUES (319, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484587\",\"MsgType\":\"text\",\"Content\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\",\"MsgId\":\"22727315061530873\"}', '1587484587');
INSERT INTO `lea_wechat_message` VALUES (320, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484598\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484598');
INSERT INTO `lea_wechat_message` VALUES (321, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484602\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484602');
INSERT INTO `lea_wechat_message` VALUES (322, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484606\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484606');
INSERT INTO `lea_wechat_message` VALUES (323, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPjuvxQJyLqs6cHx2oO3gHY\",\"CreateTime\":\"1587484608\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587484608');
INSERT INTO `lea_wechat_message` VALUES (324, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587525623\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\\/login\",\"MenuId\":\"434434754\"}', '1587525623');
INSERT INTO `lea_wechat_message` VALUES (325, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587526616\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=cba49a7300a2f5986600ad5ec8ddaacd\",\"Ticket\":\"gQGS8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyemRfMGdvdHk4dlUxR2FZdjF1Y3AAAgTXu59eAwS0AAAA\"}', '1587526616');
INSERT INTO `lea_wechat_message` VALUES (326, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587684644\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=85d3f1b4a7187c21ae0fc80e0fdca3ba\",\"Ticket\":\"gQFc8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOFNsMGdRdHk4dlUxejRCeTF1Y3IAAgQQJaJeAwS0AAAA\"}', '1587684644');
INSERT INTO `lea_wechat_message` VALUES (327, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587685436\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587685436');
INSERT INTO `lea_wechat_message` VALUES (328, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'click', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587685440\",\"MsgType\":\"event\",\"Event\":\"CLICK\",\"EventKey\":\"\\u4f60\\u597d\"}', '1587685440');
INSERT INTO `lea_wechat_message` VALUES (329, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587685447\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"https:\\/\\/learn.leapy.cn\\/admin\\/login\\/login\",\"MenuId\":\"434434754\"}', '1587685447');
INSERT INTO `lea_wechat_message` VALUES (330, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587707622\",\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":\"22730505946856170\"}', '1587707623');
INSERT INTO `lea_wechat_message` VALUES (331, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587730168\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=f6ab8f20890d3a97f6df95dc3064943a\",\"Ticket\":\"gQGN8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZHBub2dCdHk4dlUxSzRueTF1Y1gAAgTQ1qJeAwS0AAAA\"}', '1587730168');
INSERT INTO `lea_wechat_message` VALUES (332, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587731031\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587731031');
INSERT INTO `lea_wechat_message` VALUES (333, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587786032\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=d0688dfba70b47246c5ac3bb6d1864af\",\"Ticket\":\"gQHn8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQUkxY2dGdHk4dlUxSGlOek51YzMAAgQesaNeAwS0AAAA\"}', '1587786032');
INSERT INTO `lea_wechat_message` VALUES (334, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587786036\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587786036');
INSERT INTO `lea_wechat_message` VALUES (335, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587857989\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=d0688dfba70b47246c5ac3bb6d1864af\",\"Ticket\":\"gQFO8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ0V1bGdvdHk4dlUxTEphQWh1Y0oAAgQ5yqReAwS0AAAA\"}', '1587857990');
INSERT INTO `lea_wechat_message` VALUES (336, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587864264\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=6f681d71b6304fdd011b53c9fd1b0c5b\",\"Ticket\":\"gQG08DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMG5hRGhmdHk4dlUxSk96QWh1Y1kAAgS_4qReAwS0AAAA\"}', '1587864265');
INSERT INTO `lea_wechat_message` VALUES (337, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587864334\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587864334');
INSERT INTO `lea_wechat_message` VALUES (338, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587864650\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587864650');
INSERT INTO `lea_wechat_message` VALUES (339, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587864743\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587864743');
INSERT INTO `lea_wechat_message` VALUES (340, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587895651\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=03d76eef0b1304e9726d8c9a6e6b7e0d\",\"Ticket\":\"gQEg8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNmtILWhUdHk4dlUxQWp1QjF1YzgAAgRfXaVeAwS0AAAA\"}', '1587895651');
INSERT INTO `lea_wechat_message` VALUES (341, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900318\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900318');
INSERT INTO `lea_wechat_message` VALUES (342, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900339\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900339');
INSERT INTO `lea_wechat_message` VALUES (343, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900365\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900365');
INSERT INTO `lea_wechat_message` VALUES (344, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900373\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900373');
INSERT INTO `lea_wechat_message` VALUES (345, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900389\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900389');
INSERT INTO `lea_wechat_message` VALUES (346, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900409\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900410');
INSERT INTO `lea_wechat_message` VALUES (347, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900426\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900426');
INSERT INTO `lea_wechat_message` VALUES (348, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900434\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900435');
INSERT INTO `lea_wechat_message` VALUES (349, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1587900435\",\"MsgType\":\"event\",\"Event\":\"VIEW\",\"EventKey\":\"http:\\/\\/hdd.z1014.com\\/\",\"MenuId\":\"434436996\"}', '1587900436');
INSERT INTO `lea_wechat_message` VALUES (350, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588030510\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=9ec205518cc757da99cec6446cdecb92\",\"Ticket\":\"gQEQ8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybDVMNWhudHk4dlUxRHBJRE51Y08AAgQlbKdeAwS0AAAA\"}', '1588030511');
INSERT INTO `lea_wechat_message` VALUES (351, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588076750\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=45d1d8505310f1740987dda64d16ffcf\",\"Ticket\":\"gQGj8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyajhHbWhLdHk4dlUxeFF4RTF1YzMAAgTAIKheAwS0AAAA\"}', '1588076750');
INSERT INTO `lea_wechat_message` VALUES (352, 'oHWIfuPDhyd_V-BLURXIU9ECITqc', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPDhyd_V-BLURXIU9ECITqc\",\"CreateTime\":\"1588120185\",\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":\"22736413818165566\"}', '1588120186');
INSERT INTO `lea_wechat_message` VALUES (353, 'oHWIfuPDhyd_V-BLURXIU9ECITqc', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPDhyd_V-BLURXIU9ECITqc\",\"CreateTime\":\"1588120191\",\"MsgType\":\"text\",\"Content\":\"\\u7535\\u5f71\",\"MsgId\":\"22736411483136382\"}', '1588120192');
INSERT INTO `lea_wechat_message` VALUES (354, 'oHWIfuPDhyd_V-BLURXIU9ECITqc', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuPDhyd_V-BLURXIU9ECITqc\",\"CreateTime\":\"1588120200\",\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":\"22736415952413260\"}', '1588120200');
INSERT INTO `lea_wechat_message` VALUES (355, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'text', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588123088\",\"MsgType\":\"text\",\"Content\":\"\\u7535\\u5f71\",\"MsgId\":\"22736453534179428\"}', '1588123089');
INSERT INTO `lea_wechat_message` VALUES (356, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588201458\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=2abc4e66275b1d8d4799d746702d157b\",\"Ticket\":\"gQEl8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybHpjU2dydHk4dlUxeW44RzF1Y1kAAgTjB6peAwS0AAAA\"}', '1588201459');
INSERT INTO `lea_wechat_message` VALUES (357, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588645162\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445320\"}', '1588645163');
INSERT INTO `lea_wechat_message` VALUES (358, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588645167\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445320\"}', '1588645167');
INSERT INTO `lea_wechat_message` VALUES (359, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588645178\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445320\"}', '1588645179');
INSERT INTO `lea_wechat_message` VALUES (360, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588675410\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588675410');
INSERT INTO `lea_wechat_message` VALUES (361, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588675417\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588675417');
INSERT INTO `lea_wechat_message` VALUES (362, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588675422\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588675422');
INSERT INTO `lea_wechat_message` VALUES (363, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588686960\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ba1a4c8200349727dba66b598873840c\",\"Ticket\":\"gQEv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZGl0QWhwdHk4dlUxQXNOTmh1Y1QAAgRocLFeAwS0AAAA\"}', '1588686960');
INSERT INTO `lea_wechat_message` VALUES (364, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588686987\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=ba1a4c8200349727dba66b598873840c\",\"Ticket\":\"gQH87zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOXJESGgtdHk4dlUxQUZOTjF1Y2wAAgR1cLFeAwS0AAAA\"}', '1588686987');
INSERT INTO `lea_wechat_message` VALUES (365, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588756112\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588756113');
INSERT INTO `lea_wechat_message` VALUES (366, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588756118\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588756118');
INSERT INTO `lea_wechat_message` VALUES (367, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588853561\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=c4f15262bd9a34b0168fe957c38a438e\",\"Ticket\":\"gQHI8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNlpOLWczdHk4dlUxTEVYUDF1Y2UAAgQ0_7NeAwS0AAAA\"}', '1588853562');
INSERT INTO `lea_wechat_message` VALUES (368, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'scan', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588943120\",\"MsgType\":\"event\",\"Event\":\"SCAN\",\"EventKey\":\"type=login&method=wechat&to=admin&token=2fcc5938595f85491f5eb7de160325fd\",\"Ticket\":\"gQGq7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTDlReWh2dHk4dlUxQ1dwUnh1Y18AAgQGWbVeAwS0AAAA\"}', '1588943120');
INSERT INTO `lea_wechat_message` VALUES (369, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 'view_miniprogram', '{\"ToUserName\":\"gh_f9e2116bdc11\",\"FromUserName\":\"oHWIfuIDjdyj4U6BqWLEwpMz8fx4\",\"CreateTime\":\"1588943142\",\"MsgType\":\"event\",\"Event\":\"view_miniprogram\",\"EventKey\":\"pages\\/index\\/index\",\"MenuId\":\"434445322\"}', '1588943142');
INSERT INTO `lea_wechat_message` VALUES (370, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010202,\"MsgType\":\"text\",\"Content\":\"11\",\"MsgId\":22749156498526051}', '1589010202');
INSERT INTO `lea_wechat_message` VALUES (371, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010202,\"MsgType\":\"text\",\"Content\":\"11\",\"MsgId\":22749156498526051}', '1589010202');
INSERT INTO `lea_wechat_message` VALUES (372, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010376,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749159804209951}', '1589010376');
INSERT INTO `lea_wechat_message` VALUES (373, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010376,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749159804209951}', '1589010376');
INSERT INTO `lea_wechat_message` VALUES (374, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010481,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749158174992138}', '1589010482');
INSERT INTO `lea_wechat_message` VALUES (375, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010481,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749158174992138}', '1589010482');
INSERT INTO `lea_wechat_message` VALUES (376, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010672,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749165693013491}', '1589010672');
INSERT INTO `lea_wechat_message` VALUES (377, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589010672,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749165693013491}', '1589010672');
INSERT INTO `lea_wechat_message` VALUES (378, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011276,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749174383248114}', '1589011277');
INSERT INTO `lea_wechat_message` VALUES (379, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011276,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749174383248114}', '1589011277');
INSERT INTO `lea_wechat_message` VALUES (380, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011312,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749172030270434}', '1589011313');
INSERT INTO `lea_wechat_message` VALUES (381, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011312,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749172030270434}', '1589011313');
INSERT INTO `lea_wechat_message` VALUES (382, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011357,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749172368317631}', '1589011357');
INSERT INTO `lea_wechat_message` VALUES (383, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011357,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749172368317631}', '1589011357');
INSERT INTO `lea_wechat_message` VALUES (384, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011426,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749172413651189}', '1589011426');
INSERT INTO `lea_wechat_message` VALUES (385, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011426,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749172413651189}', '1589011426');
INSERT INTO `lea_wechat_message` VALUES (386, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011477,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749172506722698}', '1589011477');
INSERT INTO `lea_wechat_message` VALUES (387, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011477,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22749172506722698}', '1589011477');
INSERT INTO `lea_wechat_message` VALUES (388, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011817,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749179229030684}', '1589011817');
INSERT INTO `lea_wechat_message` VALUES (389, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011817,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749179229030684}', '1589011817');
INSERT INTO `lea_wechat_message` VALUES (390, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011841,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749180804746119}', '1589011841');
INSERT INTO `lea_wechat_message` VALUES (391, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011841,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749180804746119}', '1589011841');
INSERT INTO `lea_wechat_message` VALUES (392, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011905,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749182841561510}', '1589011905');
INSERT INTO `lea_wechat_message` VALUES (393, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011905,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749182841561510}', '1589011905');
INSERT INTO `lea_wechat_message` VALUES (394, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011911,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749180594684951}', '1589011911');
INSERT INTO `lea_wechat_message` VALUES (395, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011911,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749180594684951}', '1589011911');
INSERT INTO `lea_wechat_message` VALUES (396, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011938,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011938');
INSERT INTO `lea_wechat_message` VALUES (397, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011938,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011938');
INSERT INTO `lea_wechat_message` VALUES (398, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011948,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749180909721449}', '1589011948');
INSERT INTO `lea_wechat_message` VALUES (399, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011948,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22749180909721449}', '1589011948');
INSERT INTO `lea_wechat_message` VALUES (400, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011955,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749179844639054}', '1589011955');
INSERT INTO `lea_wechat_message` VALUES (401, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011955,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749179844639054}', '1589011955');
INSERT INTO `lea_wechat_message` VALUES (402, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011978,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011978');
INSERT INTO `lea_wechat_message` VALUES (403, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011978,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011978');
INSERT INTO `lea_wechat_message` VALUES (404, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011981,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011981');
INSERT INTO `lea_wechat_message` VALUES (405, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589011981,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589011981');
INSERT INTO `lea_wechat_message` VALUES (406, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589012613,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589012613');
INSERT INTO `lea_wechat_message` VALUES (407, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589012613,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589012613');
INSERT INTO `lea_wechat_message` VALUES (408, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589012617,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749189786456514}', '1589012617');
INSERT INTO `lea_wechat_message` VALUES (409, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589012617,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749189786456514}', '1589012617');
INSERT INTO `lea_wechat_message` VALUES (410, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013118,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749200218967532}', '1589013118');
INSERT INTO `lea_wechat_message` VALUES (411, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013118,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749200218967532}', '1589013118');
INSERT INTO `lea_wechat_message` VALUES (412, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013165,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749199390800459}', '1589013166');
INSERT INTO `lea_wechat_message` VALUES (413, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013165,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749199390800459}', '1589013166');
INSERT INTO `lea_wechat_message` VALUES (414, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013227,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749196361501906}', '1589013227');
INSERT INTO `lea_wechat_message` VALUES (415, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013227,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749196361501906}', '1589013227');
INSERT INTO `lea_wechat_message` VALUES (416, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013281,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749198278363541}', '1589013281');
INSERT INTO `lea_wechat_message` VALUES (417, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589013281,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22749198278363541}', '1589013281');
INSERT INTO `lea_wechat_message` VALUES (418, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589014280,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749216263366706}', '1589014281');
INSERT INTO `lea_wechat_message` VALUES (419, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589014280,\"MsgType\":\"text\",\"Content\":\"2020\",\"MsgId\":22749216263366706}', '1589014281');
INSERT INTO `lea_wechat_message` VALUES (420, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589014356,\"MsgType\":\"text\",\"Content\":\"5\",\"MsgId\":22749213701837725}', '1589014357');
INSERT INTO `lea_wechat_message` VALUES (421, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589014356,\"MsgType\":\"text\",\"Content\":\"5\",\"MsgId\":22749213701837725}', '1589014357');
INSERT INTO `lea_wechat_message` VALUES (422, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589043190,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589043190');
INSERT INTO `lea_wechat_message` VALUES (423, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589043190,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589043190');
INSERT INTO `lea_wechat_message` VALUES (424, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589077465,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589077465');
INSERT INTO `lea_wechat_message` VALUES (425, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589077465,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589077465');
INSERT INTO `lea_wechat_message` VALUES (426, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127751,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589127751');
INSERT INTO `lea_wechat_message` VALUES (427, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127751,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589127751');
INSERT INTO `lea_wechat_message` VALUES (428, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127755,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589127755');
INSERT INTO `lea_wechat_message` VALUES (429, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127755,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589127755');
INSERT INTO `lea_wechat_message` VALUES (430, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127758,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22750837985617287}', '1589127758');
INSERT INTO `lea_wechat_message` VALUES (431, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127758,\"MsgType\":\"text\",\"Content\":\"\\u597d\\u5427\",\"MsgId\":22750837985617287}', '1589127758');
INSERT INTO `lea_wechat_message` VALUES (432, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127766,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22750839847023952}', '1589127766');
INSERT INTO `lea_wechat_message` VALUES (433, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589127766,\"MsgType\":\"text\",\"Content\":\"1\",\"MsgId\":22750839847023952}', '1589127766');
INSERT INTO `lea_wechat_message` VALUES (434, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175242,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175242');
INSERT INTO `lea_wechat_message` VALUES (435, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175242,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175242');
INSERT INTO `lea_wechat_message` VALUES (436, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175244,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175244');
INSERT INTO `lea_wechat_message` VALUES (437, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175244,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175244');
INSERT INTO `lea_wechat_message` VALUES (438, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175248,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175248');
INSERT INTO `lea_wechat_message` VALUES (439, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175248,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1589175248');
INSERT INTO `lea_wechat_message` VALUES (440, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175252,\"MsgType\":\"text\",\"Content\":\"11\",\"MsgId\":22751515711204796}', '1589175252');
INSERT INTO `lea_wechat_message` VALUES (441, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175252,\"MsgType\":\"text\",\"Content\":\"11\",\"MsgId\":22751515711204796}', '1589175252');
INSERT INTO `lea_wechat_message` VALUES (442, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175258,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22751519336168116}', '1589175258');
INSERT INTO `lea_wechat_message` VALUES (443, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175258,\"MsgType\":\"text\",\"Content\":\"\\u4f60\\u597d\",\"MsgId\":22751519336168116}', '1589175258');
INSERT INTO `lea_wechat_message` VALUES (444, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175289,\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":22751517360377381}', '1589175289');
INSERT INTO `lea_wechat_message` VALUES (445, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'text', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1589175289,\"MsgType\":\"text\",\"Content\":\"\\u3010\\u6536\\u5230\\u4e0d\\u652f\\u6301\\u7684\\u6d88\\u606f\\u7c7b\\u578b\\uff0c\\u6682\\u65e0\\u6cd5\\u663e\\u793a\\u3011\",\"MsgId\":22751517360377381}', '1589175289');
INSERT INTO `lea_wechat_message` VALUES (446, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1590018134,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1590018134');
INSERT INTO `lea_wechat_message` VALUES (447, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 'user_enter_tempsessi', '{\"ToUserName\":\"gh_1e6af9cb31ea\",\"FromUserName\":\"o00en5FsOAjiDOW23CqLmcoBQvH8\",\"CreateTime\":1590018134,\"MsgType\":\"event\",\"Event\":\"user_enter_tempsession\",\"SessionFrom\":\"wxapp\"}', '1590018134');

-- ----------------------------
-- Table structure for lea_wechat_reply
-- ----------------------------
DROP TABLE IF EXISTS `lea_wechat_reply`;
CREATE TABLE `lea_wechat_reply`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '回复ID',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键词',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复类型',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_wechat_reply
-- ----------------------------
INSERT INTO `lea_wechat_reply` VALUES (1, 'subscribe', 'text', '欢迎您的订阅（里派社区）', 1, NULL, NULL, '1', '1587988756');
INSERT INTO `lea_wechat_reply` VALUES (2, '你好', 'text', '欢迎您的到来！（里派社区）', 1, NULL, NULL, '1', '1587151791');
INSERT INTO `lea_wechat_reply` VALUES (3, 'default', 'text', '未找到指定内容！（里派社区）', 1, NULL, NULL, '1', '1587108255');
INSERT INTO `lea_wechat_reply` VALUES (7, '2020', 'text', '2020，你好！', 1, '1', '1587151762', NULL, NULL);
INSERT INTO `lea_wechat_reply` VALUES (8, '合同', 'text', 'asdf', 1, '1', '1590563980', NULL, NULL);

-- ----------------------------
-- Table structure for lea_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `lea_wechat_user`;
CREATE TABLE `lea_wechat_user`  (
  `uid` int(10) NOT NULL COMMENT '用户id',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'openid',
  `nickname` varbinary(64) NOT NULL COMMENT '微信昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信头像',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '1男',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `language` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语言',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `country` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `subscribe` tinyint(1) NULL DEFAULT NULL COMMENT '是否订阅',
  `subscribe_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订阅时间',
  `groupid` int(8) NULL DEFAULT NULL COMMENT '分组ID',
  `tagid_list` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户标签',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `add_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_wechat_user
-- ----------------------------
INSERT INTO `lea_wechat_user` VALUES (1, 'oHWIfuIDjdyj4U6BqWLEwpMz8fx4', 0xE5A4A9E8A18CE581A5EFBC8CE5909BE5AD90E4BBA5E887AAE5BCBAE4B88DE681AF, 'http://thirdwx.qlogo.cn/mmopen/vi_32/jrmZyN0dMcicvdpBdYsoasXKwF1S1HkNRyYqIJCE3XInYxuPcbIJfZQyAKaia1Vnyd95llct88pFHcWiaToAq818A/132', 0, '', 'zh_CN', '', '', 0, '1590384180', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (7, 'oHWIfuPFMGiiP4G_q5VA5tUG7A20', 0xE585BDE585BD, 'http://thirdwx.qlogo.cn/mmopen/xrWspl6Ks7g1n9lqNiarzLEKyfCZn49BZxf3bYPZ8qLE3Lf5Lowt3nZibuYQAic9EyCAecsfZjwV66KiapjNeUMiblw9SKjQMCNnZ/132', 1, '运城', 'zh_CN', '山西', '中国', 1, '1583304442', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (8, 'oHWIfuKmtR7G5V15undjGdSWhwYw', 0xE58789E7AC99E5A2A8E69F93, 'http://thirdwx.qlogo.cn/mmopen/xrWspl6Ks7hRqjT6R6SRdibv1oNj0VyUE5KIKAmCibslGVo2ia9BXEdTzKgUiatyeWhA96N2I2BRbsAD2y6mH1zYv7fK5uSIb8TV/132', 1, '万州', 'zh_CN', '重庆', '中国', 1, '1583588778', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (9, 'oHWIfuPjuvxQJyLqs6cHx2oO3gHY', 0xE58D93E8B68A, 'http://thirdwx.qlogo.cn/mmopen/rhK0Ad64x4lCtftuianiccaTAXRXacT0qOIsFDsnhTJsmnBLL4LWo7VS39RboRqgWiaH1IX1Vn17LQVR7HgqXtJfHdNaKiaM7eGF/132', 1, '南阳', 'zh_CN', '河南', '中国', 1, '1583295038', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (10, 'o00en5FsOAjiDOW23CqLmcoBQvH8', 0xE5A4A9E8A18CE581A5EFBC8CE5909BE5AD90E4BBA5E887AAE5BCBAE4B88DE681AF, 'https://wx.qlogo.cn/mmopen/vi_32/gC4EAFL3t1HiaX0V4865P4js62Tvns2QYxEw7aic9hqOSupIsRLWibEfOwR8V9QT6S9cAyTxKibmSzs2GUial9j5rbg/132', 0, '', 'zh_CN', '', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (11, 'o00en5MWXEL-OlW17wtfBPv1Y8Gc', 0x31302E3131, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLTzldx9BPKZYMKsZ1o9Tsl1ibkS2prQ1ria91FzKAtfvUsM7HJZJhu9zcvpteKouAgmy8ps296FdCA/132', 2, 'Shijiazhuang', 'zh_CN', 'Hebei', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (24, 'o00en5EdxG-m6xP7t6r09tVnPr4c', 0x457661EFBD9EF09FA690, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ4sIyZOuic5SUkVVDmGJBbz8od0o6aNGfSZy3hOuHNqtMJv3em6hicwzibv4dnYQG8xwiapBoR4qzh0Q/132', 2, 'Zhoukou', 'zh_CN', 'Henan', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (25, 'o00en5Lx6SZ5KKape-ioudb9a8sU', 0xE58D93E8B68A, 'https://wx.qlogo.cn/mmopen/vi_32/FJOJTTuMJWnGA0EWy2OP4QIHg5fBFRbCFicDRiaXef3uu4yFvBINfmmluLS5Lc9laXn35ibf6iaWIM2c57esMLYBug/132', 1, 'Nanyang', 'zh_CN', 'Henan', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (26, 'o00en5J6Hmyhtz3xdTo98x3EMITg', 0xE7BE8EE5A5BDE4BABAE7949F, 'https://wx.qlogo.cn/mmopen/vi_32/hDqcjCzA4ah87ibpHAbawJWRoWwq6ehcDyibs4vFJPgTnPmvHbLA9kus1JicXAe2AoJ1axdYicnUUQGfvicGU6ibUgGw/132', 2, 'Nanyang', 'zh_CN', 'Henan', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (27, 'o00en5EXDztqU_3mkF8Up7ypdSl0', 0x4A6965E6B885E88CB6, 'https://wx.qlogo.cn/mmopen/vi_32/u7fbK1pJ9XULb4bgb4nRNgibWVjEicqicuP2ZqydnSHkXJN03rC1Wyds4TQ4nmX7RJDiaWW9mFpN9zzcWRa83pgegA/132', 2, '', 'zh_CN', 'Shanghai', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (28, 'o00en5FCb5L09FoLNe6U2ZNIdBSY', 0xE8BE9BE7A68F, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIgia4JTX8U2ESQ11b1ialdx8BR0dgDLfyba5TM48zXIvMkXWSJjNsHpcCibXQbQMfibvKgdH6jp3DfLw/132', 2, 'Xuancheng', 'zh_CN', 'Anhui', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (29, 'o00en5EaMrcjkt2_bybIHx4SonAQ', 0xE6B885E696B0, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIDVcp3lfsme4wh6b8WhXOSAUtxkMh9fdxlGyEf6xzz9lm4w4UmDR6fcuwMbRd5NbRg5Nmm9HZskQ/132', 2, 'Cairns', 'zh_CN', 'Queensland', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (30, 'o00en5MF9sN46gfPOai2nolZfKSg', 0xE7BB99E887AAE5B7B1E4B880E4B8AAE5BEAEE7AC91, 'https://wx.qlogo.cn/mmopen/vi_32/2AO31mdaKaqsibhlol4niatRTGPZvd1k8xjx91ydCsqgohtibLVyaz6GXMZxtcMERezzKWhgyQGzanfDInQLW50eg/132', 1, '', 'zh_CN', 'Munich', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (31, 'o00en5EMHgfvYZ-PrB9KESCAhpt4', 0xE8B6855FE8B68AE6A2A6E683B3, 'https://wx.qlogo.cn/mmopen/vi_32/UibiaRXUUjfnn7ckgr2qSZKRz316Fl4H4T9lldAtCvFMVoIOgLqRyO3mjn8eMRuYJ1Axw670KunQykoygYGgwUJA/132', 2, 'Yantai', 'zh_CN', 'Shandong', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (32, 'o00en5Hnq2VAijU3HuKwBOFuY0EQ', 0xE78E8BE6988CE6A08B, 'https://wx.qlogo.cn/mmopen/vi_32/UibiaRXUUjfnlAmq4aDpyAF2Bcica2yamicqDWOBVJp9F598gssjgbLd6OJdphKJQ3MYxibt8jbmgTYjcaEqQtNTgIw/132', 2, 'Guangzhou', 'zh_CN', 'Guangdong', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (33, 'o00en5DaUpSZOaFCcA--TB_bgShg', 0xE4B880E8B7AFE59091E58C97, 'https://wx.qlogo.cn/mmopen/vi_32/kddcgrkQHstddJTubEZedMuJLbQITiaLKYzaRHUIfBUpxiazbm6giaLXWUthH8dx0jwWosVOapgluJ9Z3n8j6qHicw/132', 1, 'Jiading', 'zh_CN', 'Shanghai', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (34, 'o00en5O8Hbpr_eKeqOijX7aCX5hY', 0xE8A9B9E6A2A6E9A1BA, 'https://wx.qlogo.cn/mmhead/esPILb1AoFoV3h1vq6TMTibcjNvCVTR3gicOrWw6KlyLU/132', 0, '', 'zh_CN', '', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (35, 'o00en5DTf9HPYs8Swv_dcQX5pQmk', 0xE8939DE889B2E5A696E5A7AC, 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEImT8Mmameg6FBicyicFvCGAIShGElXstT80rhuyvXGPvpAHaO922ZhSDkiaZia3V4CTVM2pLd1sNeosA/132', 1, 'Shenzhen', 'zh_CN', 'Guangdong', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (36, 'o00en5HpYngtZHK31BmCq96FWKFg', 0xE78E8BE6B6B5E998B3, 'https://wx.qlogo.cn/mmhead/xNKP68NQcmwwgbCoGDRdl7ZqYJiaHMPxLYQcaHuIWPtE/132', 0, '', 'zh_CN', '', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (37, 'oHWIfuGPpNKxf9_TDsC242dOU9js', 0xE783ADE68385E59682E78B82E9A38E, 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIUFETKDx2EiaN72eKqGtXAZ0PSyZlicK69Hl0aoP6cCAD4RfuewWRLtum9YDHiblJYMHDj8sjhH22eg/132', 1, '', 'zh_CN', '', '中国', 0, '1589614362', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (38, 'o00en5Fc-sYzcekdFhPqC6puQRzs', 0xE783ADE68385E59682E78B82E9A38E, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ermmTgGMkPtPxFNXhPoOZFHGKiaot8ky26NrabibUnX1zNuH4jzTgQsK2mdDJ9Bk2QvuVp2DOQlZZibw/132', 1, '', 'zh_CN', '', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (39, 'o00en5Dd7vAlvcZ1bt_KeLpjIgfc', 0x5279616E, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKWtrdG0f8rsnPFHWZwLVFscicXTsO4BJiazLbusO24lGaLYNRN3RicdsQUPLEqLyiahxniaXRyXCvKdJQ/132', 1, 'Hangzhou', 'zh_CN', 'Zhejiang', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (40, 'oHWIfuDTL3uIBKcnxX7n7pBiltSo', 0x436861696D, 'http://thirdwx.qlogo.cn/mmopen/g9RQicMD01M1tPzrrPm7lZo1RRAVaxeiaicg6D6ybIFv3VRkPSYH159J8DhCgJZcbg9jVJYsgdUZQuzG0Dic4Eibjtg/132', 1, '茂名', 'zh_CN', '广东', '中国', 0, '1590027756', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (41, 'o00en5Lsr5hM-l18XD7M6M2oYw9w', 0x53494E474B4120436F6D6574, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erSgL4m4e41GZ3gaoyuhPZeGbD4RlmEr2mBDEdplocia0uVqrlcibqySDAwmsRJ3ErapDicFQ6DiaKxww/132', 1, 'Ningbo', 'zh_CN', 'Zhejiang', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (42, 'oHWIfuDw4fWQOLuVgrTuJscY0C5Y', 0x536F757468, 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5B38PRGIO9MdcGcBLkmqeM8Ek8ZdicbY3ibeiaT39EHcLq8dUicff3KfxT051PP5coJia6mCPlbwaMpOCpGM4w9NzugMsoOYImq2sM/132', 1, '三明', 'zh_CN', '福建', '中国', 1, '1590149029', 0, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (43, 'o00en5Kae6YV30YRSwpMNT_BRbNA', 0x536F757468, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIezdQplRTZf69sRQm9qtQmnydvFvl9q0G3dHDKz4liaU7GoQPPJxxwlEJ1VocUsdnO5GcqVTqdL4Q/132', 1, 'Sanming', 'zh_CN', 'Fujian', 'China', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lea_wechat_user` VALUES (44, 'o00en5I8Q4JSrVEZaLqVe6jRRXys', 0x526F6E, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKWpJvV3QSPskgUMWnnJKP9aXficbbJuKsTaLgBO5K3qj1puuHE0aJeibl7ibGDlHbndaficebdhCxdHQ/132', 1, 'Zhangzhou', 'zh_CN', 'Fujian', 'China', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for lea_workflow
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow`;
CREATE TABLE `lea_workflow`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '工作流id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作流名称',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `rank` int(2) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow
-- ----------------------------

-- ----------------------------
-- Table structure for lea_workflow_activity
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow_activity`;
CREATE TABLE `lea_workflow_activity`  (
  `id` int(8) NOT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流活动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow_activity
-- ----------------------------

-- ----------------------------
-- Table structure for lea_workflow_activity_log
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow_activity_log`;
CREATE TABLE `lea_workflow_activity_log`  (
  `id` int(8) NOT NULL COMMENT '日志ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow_activity_log
-- ----------------------------

-- ----------------------------
-- Table structure for lea_workflow_condition
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow_condition`;
CREATE TABLE `lea_workflow_condition`  (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '条件id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流条件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow_condition
-- ----------------------------

-- ----------------------------
-- Table structure for lea_workflow_event
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow_event`;
CREATE TABLE `lea_workflow_event`  (
  `id` int(8) NOT NULL COMMENT '事件ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流事件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow_event
-- ----------------------------

-- ----------------------------
-- Table structure for lea_workflow_node
-- ----------------------------
DROP TABLE IF EXISTS `lea_workflow_node`;
CREATE TABLE `lea_workflow_node`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '节点id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '节点名称',
  `fid` int(8) NOT NULL COMMENT '所属工作流',
  `type` tinyint(1) NOT NULL COMMENT '节点类型 1开始节点 2 普通节点 3 结束节点',
  `hid` int(8) NOT NULL DEFAULT 0 COMMENT '上级节点',
  `condition` int(1) NOT NULL DEFAULT 0 COMMENT '到达下一节点的条件 0代表没有条件',
  `lid` int(8) NOT NULL DEFAULT 0 COMMENT '下级节点',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `update_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `update_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lea_workflow_node
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
