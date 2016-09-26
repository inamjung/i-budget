/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : ibudget

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-09-26 22:46:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `properties` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('admin', '1', '1459671946');
INSERT INTO `auth_assignment` VALUES ('manager', '2', '1459672084');
INSERT INTO `auth_assignment` VALUES ('manager', '3', '1459672092');
INSERT INTO `auth_assignment` VALUES ('receive', '4', '1459672249');
INSERT INTO `auth_assignment` VALUES ('manager', '5', '1459672262');
INSERT INTO `auth_assignment` VALUES ('stock', '6', '1459672281');
INSERT INTO `auth_assignment` VALUES ('stock', '7', '1459672296');
INSERT INTO `auth_assignment` VALUES ('stock', '8', '1459672309');
INSERT INTO `auth_assignment` VALUES ('stock', '9', '1459672319');
INSERT INTO `auth_assignment` VALUES ('creditor', '10', '1459672331');
INSERT INTO `auth_assignment` VALUES ('receive', '11', '1459672342');
INSERT INTO `auth_assignment` VALUES ('receive', '12', '1459672392');
INSERT INTO `auth_assignment` VALUES ('receive', '13', '1459672404');
INSERT INTO `auth_assignment` VALUES ('stock', '14', '1459672416');
INSERT INTO `auth_assignment` VALUES ('stock', '15', '1459672426');
INSERT INTO `auth_assignment` VALUES ('receive', '16', '1459672435');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`) USING BTREE,
  KEY `idx-auth_item-type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/gridview/export/download', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gridview/export/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gridview/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/assignment/search', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/search', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/search', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/route/search', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/update-profile', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/info', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/assignments', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/confirm', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/block', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/admin/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/profile/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/profile/show', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/profile/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/recovery/request', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/recovery/reset', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/recovery/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/registration/register', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/registration/connect', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/registration/confirm', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/registration/resend', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/registration/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/security/auth', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/security/login', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/security/logout', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/security/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/profile', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/account', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/confirm', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/networks', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/disconnect', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/settings/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/assign', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/permission/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/permission/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/permission/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/permission/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/permission/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/role/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/role/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/role/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/role/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/role/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/rbac/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/budgets/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/companys/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/captcha', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/contact', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/about', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/index', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/view', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/create', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/update', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/delete', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/years/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1457342240', '1457342240');
INSERT INTO `auth_item` VALUES ('/site/showgrap', '2', null, null, null, '1457342496', '1457342496');
INSERT INTO `auth_item` VALUES ('ตรวจรับของ', '2', 'บันทึกรายละเอียดของบิลส่งให้พัสดุ', null, null, '1457345842', '1474442357');
INSERT INTO `auth_item` VALUES ('รายงานเจ้าหนี้', '2', 'จนท.พัสดุ รับของเข้าคลั้งและรายการเจ้าหนี้', null, null, '1457346054', '1470638125');
INSERT INTO `auth_item` VALUES ('รับรู้หนี้', '2', 'จนท.การเงินรับรายงานเจ้าหนี้จากพัสดุและจ่ายเงิน', null, null, '1457346233', '1459673205');
INSERT INTO `auth_item` VALUES ('ผู้บริหาร', '2', 'สามารถใช้งานได้ทุกเมนู', null, null, '1457346346', '1470638087');
INSERT INTO `auth_item` VALUES ('ผู้ดูแลระบบ', '2', 'สามารถใช้งานได้ทุกเมนูรวมถึงจัดการสิทธิ์', null, null, '1457346437', '1470638103');
INSERT INTO `auth_item` VALUES ('admin', '1', 'ผู้ดูแลระบบ', null, null, '1457346498', '1474442798');
INSERT INTO `auth_item` VALUES ('manager', '1', 'ผู้บริหาร', null, null, '1457346557', '1459671875');
INSERT INTO `auth_item` VALUES ('receive', '1', 'ตรวจรับของ', null, null, '1457346596', '1459671887');
INSERT INTO `auth_item` VALUES ('stock', '1', 'รับของเข้าคลังและรายงงานเจ้าหนี้', null, null, '1457346646', '1470638141');
INSERT INTO `auth_item` VALUES ('creditor', '1', 'การเงินรับรู้หนี้และชำระหนี้', null, null, '1457346705', '1459671913');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/ajax/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/ajax/todolist', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/ajax/send-chat', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/ajax/test', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/ajax/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/banks/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/send-chat', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/chat/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/indexpaydetail', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/updatepay', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/updatepaydetail', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/budgetbyyear', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/budgettomon', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/inven/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/invendetail/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/items/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/updatepas', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receipt/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/indexpas', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/indexpastomon', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/indexcredit', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/createcommit', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/updatecommit', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/updatepas', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/updatepastomon', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/updatecredit', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/productrec', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receive/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/index', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/view', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/create', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/update', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/delete', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/receivedetail/*', '2', null, null, null, '1459670169', '1459670169');
INSERT INTO `auth_item` VALUES ('/credits/budgetbydate', '2', null, null, null, '1470638049', '1470638049');
INSERT INTO `auth_item` VALUES ('/receive/indexpastomon1', '2', null, null, null, '1470638049', '1470638049');
INSERT INTO `auth_item` VALUES ('/receive/updatepastostock', '2', null, null, null, '1470638049', '1470638049');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('admin', 'ผู้ดูแลระบบ');
INSERT INTO `auth_item_child` VALUES ('creditor', 'รับรู้หนี้');
INSERT INTO `auth_item_child` VALUES ('manager', 'ผู้บริหาร');
INSERT INTO `auth_item_child` VALUES ('receive', 'ตรวจรับของ');
INSERT INTO `auth_item_child` VALUES ('stock', 'รายงานเจ้าหนี้');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/ajax/send-chat');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/chat/index');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/chat/send-chat');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/*');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/create');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/delete');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/index');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/update');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/companys/view');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receipt/create');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receipt/index');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receipt/update');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receipt/view');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receive/index');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/receive/productrec');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/*');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/about');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/error');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/login');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/site/showgrap');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ตรวจรับของ', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/search');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/search');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/search');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/search');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/ajax/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/ajax/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/ajax/send-chat');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/ajax/test');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/ajax/todolist');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/banks/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/budgets/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/send-chat');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/chat/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/companys/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/budgetbydate');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/budgetbyyear');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/budgettomon');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/indexpaydetail');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/updatepay');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/updatepaydetail');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/credits/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/export/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/export/download');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/inven/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/invendetail/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/items/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/assignment/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/updatepas');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receipt/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/createcommit');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/indexcredit');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/indexpas');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/indexpastomon');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/indexpastomon1');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/productrec');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/updatecommit');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/updatecredit');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/updatepas');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/updatepastomon');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/updatepastostock');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receive/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/receivedetail/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/about');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/error');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/showgrap');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/assignments');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/block');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/info');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/update-profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/years/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/ajax/send-chat');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/banks/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/budgets/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/chat/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/chat/send-chat');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/companys/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/budgetbydate');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/budgetbyyear');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/budgettomon');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/indexpaydetail');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/updatepay');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/updatepaydetail');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/credits/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/updatepas');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receipt/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/createcommit');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/indexcredit');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/indexpas');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/indexpastomon');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/indexpastomon1');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/productrec');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/updatecommit');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/updatecredit');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/updatepas');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/updatepastomon');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/updatepastostock');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receive/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/receivedetail/view');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/about');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/error');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/login');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/site/showgrap');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/*');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/index');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/update');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร', '/years/view');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/ajax/send-chat');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/create');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/delete');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/update');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/banks/view');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/create');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/delete');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/update');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/budgets/view');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/chat/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/chat/send-chat');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/budgetbyyear');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/budgettomon');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/create');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/delete');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/indexpaydetail');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/update');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/updatepay');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/updatepaydetail');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/credits/view');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/receive/indexcredit');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/receive/productrec');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/receive/updatecredit');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/about');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/error');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/login');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/site/showgrap');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/*');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/create');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/delete');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/index');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/update');
INSERT INTO `auth_item_child` VALUES ('รับรู้หนี้', '/years/view');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/ajax/send-chat');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/create');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/delete');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/update');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/budgets/view');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/chat/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/chat/send-chat');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/create');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/delete');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/update');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/companys/view');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/createcommit');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/indexpas');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/indexpastomon');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/indexpastomon1');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/productrec');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/update');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/updatecommit');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/updatepas');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/updatepastomon');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receive/updatepastostock');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/create');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/delete');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/update');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/receivedetail/view');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/about');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/error');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/login');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/site/showgrap');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/*');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/create');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/delete');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/index');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/update');
INSERT INTO `auth_item_child` VALUES ('รายงานเจ้าหนี้', '/years/view');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(100) DEFAULT NULL COMMENT 'ธนาคาร',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('1', 'กรุงไทย สาขาบึงกาฬ');
INSERT INTO `banks` VALUES ('2', 'ธกส. สาขาศรีวิไล');
INSERT INTO `banks` VALUES ('3', 'ออมสิน สาขาบึงกาฬ');

-- ----------------------------
-- Table structure for budgets
-- ----------------------------
DROP TABLE IF EXISTS `budgets`;
CREATE TABLE `budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) DEFAULT NULL,
  `money` decimal(20,4) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of budgets
-- ----------------------------
INSERT INTO `budgets` VALUES ('8', '2559', '2093632.0000', '7');
INSERT INTO `budgets` VALUES ('9', '2559', '2695148.0000', '8');
INSERT INTO `budgets` VALUES ('4', '2559', '5373861.6900', '1');
INSERT INTO `budgets` VALUES ('5', '2559', '1519431.3500', '2');
INSERT INTO `budgets` VALUES ('6', '2559', '548640.0000', '5');

-- ----------------------------
-- Table structure for buys
-- ----------------------------
DROP TABLE IF EXISTS `buys`;
CREATE TABLE `buys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL COMMENT 'เลขที่ขอซื้อ',
  `CODE1` varchar(255) DEFAULT NULL COMMENT 'สินค้า',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษํท',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `subtype` int(11) DEFAULT NULL COMMENT 'ประเภท',
  `remain` int(11) DEFAULT NULL COMMENT 'จำนวนคงเหลือ',
  `qty` int(11) DEFAULT NULL COMMENT 'จำนวนซื้อ',
  `price` decimal(4,0) DEFAULT NULL COMMENT 'ราคา/หน่วย',
  `remark` varchar(255) DEFAULT NULL COMMENT 'หมายเหตุ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buys
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `message` text,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('4', '1', 'ทดสอบ  ทำระบบนี้มาเพื่อเดอะดุกซ์', '2016-04-02 14:19:57');
INSERT INTO `chat` VALUES ('8', '1', 'ทดสอบการใช้งาน โดยบันทึกข้อมูลจริงเลยนะคะ', '2016-04-04 09:40:10');
INSERT INTO `chat` VALUES ('9', '1', 'แผนกอื่นๆทดสอบใช้งานยังคะ นอกจากเภสัช', '2016-04-12 12:02:50');
INSERT INTO `chat` VALUES ('10', '1', 'เริ่มใช้กันได้เลยนะคะ', '2016-04-20 08:42:31');
INSERT INTO `chat` VALUES ('11', '6', 'เพิ่มบริษัทพี่กะทำเป็นแล้วมื้อนี้ แต่รับบริษัทไทยก๊อสไม่ได้ ลงหลายรอบแล้ว', '2016-06-20 13:47:33');
INSERT INTO `chat` VALUES ('12', '1', 'โอ้ยๆๆ บ่ได้เข้ามาเบิ่งด่น ', '2016-07-08 11:14:33');
INSERT INTO `chat` VALUES ('13', '6', 'ไทยก๊อสก็ลงได้แล้วค่ะ', '2016-07-22 10:15:21');
INSERT INTO `chat` VALUES ('14', '6', 'ลงตรวจรับเครื่องมือแพทย์ กับวัสดุการแพทย์ไม่รู้ไปขึ้นของใคร 555 นำแก้ให้แนเด้อ', '2016-07-22 10:18:21');
INSERT INTO `chat` VALUES ('15', '14', 'พี่ตา ทดสอบใช้งานโปรแกรม ติดตรงไหนแจ้งมาเลยเด้อ จะส่งโปรแกรมนี้เข้าประกวดจังหวัด', '2016-08-08 14:19:38');

-- ----------------------------
-- Table structure for commitees
-- ----------------------------
DROP TABLE IF EXISTS `commitees`;
CREATE TABLE `commitees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `committee` varchar(100) DEFAULT NULL COMMENT 'กรรมการ',
  `position` varchar(100) DEFAULT NULL COMMENT 'ตำแหน่ง',
  `depart_id` int(11) DEFAULT NULL COMMENT 'หน่วยงาน',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commitees
-- ----------------------------

-- ----------------------------
-- Table structure for companys
-- ----------------------------
DROP TABLE IF EXISTS `companys`;
CREATE TABLE `companys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) DEFAULT NULL COMMENT 'บริษัท',
  `tel` varchar(255) DEFAULT NULL COMMENT 'โทรศัพท์',
  `adderss` varchar(255) DEFAULT NULL COMMENT 'ที่อยู่',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=618 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companys
-- ----------------------------
INSERT INTO `companys` VALUES ('530', 'acc', 'บ.เอซีซี โซลูชั่น จำกัด', '', 'โทร02-108-8836');
INSERT INTO `companys` VALUES ('2', '2MM', 'บริษัท 2เอ็ม(เมด-เมเกอร์) จำกัด', null, '');
INSERT INTO `companys` VALUES ('3', 'ABB001', 'บริษัท แอ๊บบอต ลาบอแรตอรีส จำกัด', null, '');
INSERT INTO `companys` VALUES ('4', 'ABI001', 'ABIC', null, '');
INSERT INTO `companys` VALUES ('5', 'ACC001', 'บริษัท แอคคอร์ค คอร์ปอเรชั่น จำกัด', null, '');
INSERT INTO `companys` VALUES ('6', 'ACD001', 'ACDHON', null, '');
INSERT INTO `companys` VALUES ('7', 'AER001', 'บริษัท แอโรแคร์ จำกัด', null, '126/58 คลองสาน กรุงเทพ');
INSERT INTO `companys` VALUES ('8', 'AHR001', 'A.H. ROBIN', null, '');
INSERT INTO `companys` VALUES ('9', 'AID001', 'กองควบคุมและป้องกันโรคเอดส์', null, '');
INSERT INTO `companys` VALUES ('10', 'ALC001', 'ALCON', null, '');
INSERT INTO `companys` VALUES ('11', 'ALC002', 'โรงงานสุราอยุธยา', null, '');
INSERT INTO `companys` VALUES ('12', 'ALC003', 'องค์การสุรา กรมสรรพสามิต กทม.', null, '');
INSERT INTO `companys` VALUES ('13', 'ALL001', 'ALLERGAN', null, '');
INSERT INTO `companys` VALUES ('14', 'ALP001', 'ALPHA THERAPEUTIC', null, '');
INSERT INTO `companys` VALUES ('15', 'AMB001', 'บริษัท เอ็มบีเมอร์', null, '');
INSERT INTO `companys` VALUES ('16', 'AME001', 'AMES', null, '');
INSERT INTO `companys` VALUES ('17', 'AMM001', 'บริษัท แอมมี่ไฟร์ฟาร์ม่า จำกัด', null, '');
INSERT INTO `companys` VALUES ('18', 'AMN001', 'บริษัท เอ็มมีเน้นซ์ อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('19', 'AMO001', 'AMORNMANPANIT', null, '');
INSERT INTO `companys` VALUES ('20', 'AMV001', 'ห.จ.ก. อมรวิทย์เมด', null, '');
INSERT INTO `companys` VALUES ('21', 'ANB001', 'บริษัท เอ.เอ็น.บี.ลาบอราตอรี่ (อำนวยเภสัช) จำกัด', null, '');
INSERT INTO `companys` VALUES ('22', 'ANG001', 'บริษัท แองโกลไทย จำกัด', null, '');
INSERT INTO `companys` VALUES ('23', 'ANT001', 'บริษัท เอ เอ็น ที ผลิตผล จำกัด', null, '');
INSERT INTO `companys` VALUES ('24', 'ARC001', 'ARC MINT', null, '');
INSERT INTO `companys` VALUES ('25', 'ARM001', 'บริษัท เอ อาร์ เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('26', 'ASI001', 'บริษัท  เอเชี่ยน ฟาร์มาซูติคัล จำกัด', null, '');
INSERT INTO `companys` VALUES ('27', 'ASI002', 'บริษัท เอเซี่ยน ทีเจดี. เอ็นเตอร์ไพรซ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('28', 'ASI003', 'ร้านเอเชี่ยน อินเตอร์เนชั่นแนลฟาร์', null, '');
INSERT INTO `companys` VALUES ('29', 'ASM001', 'ASIA MEDICAL INSTRUMENT,LTD', null, '');
INSERT INTO `companys` VALUES ('30', 'ASM002', 'ASIA MEDICAL INDUSTRY CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('31', 'AST001', 'บริษัท แอสตร้าเซนเนก้า (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('32', 'ATC001', 'บริษัท แอตแลนติค ฟาร์มาซูติคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('33', 'ATL001', 'บริษัท แอตแลนต้า เมดิคแคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('34', 'ATO001', 'บริษัท เอกตรง เคมีภัณฑ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('35', 'AUD001', 'บริษัท อุดม เมดิคอลอิควิปเม้นท์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('36', 'AVC001', 'บริษัท เอ วิว จำกัด', null, '');
INSERT INTO `companys` VALUES ('37', 'AYE001', 'AYERST LABORATORIES', null, '');
INSERT INTO `companys` VALUES ('38', 'AYU001', 'อายุรเวชวิทยาลัย', null, '');
INSERT INTO `companys` VALUES ('39', 'B00001', 'BOONYIUM', null, '');
INSERT INTO `companys` VALUES ('40', 'BAN001', 'บริษัท บางกอกฮอสปิตอลซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('41', 'BAN002', 'บริษัท บางกอกดรัก จำกัด', null, '');
INSERT INTO `companys` VALUES ('42', 'BAR001', 'BARA LAB', null, '');
INSERT INTO `companys` VALUES ('43', 'BAR002', 'BARAWINDSOR', null, '');
INSERT INTO `companys` VALUES ('44', 'BAY001', 'บริษัท ไบเออร์ ไทย จำกัด', null, '');
INSERT INTO `companys` VALUES ('45', 'BEA001', 'BEAUFOUR-IPSEN', null, '');
INSERT INTO `companys` VALUES ('46', 'BEH001', 'BEHRING', null, '');
INSERT INTO `companys` VALUES ('47', 'BEI001', 'BEIERSDORF-INTANIN CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('48', 'BEM001', 'ห.จ.ก. บีเมด ฟามาซูติคอล', null, '');
INSERT INTO `companys` VALUES ('49', 'BEN001', 'ร้านเบญจเภสัช', null, '');
INSERT INTO `companys` VALUES ('50', 'BEN002', 'ห.จ.ก. บี.เจ. (เบญจโอสถ)', null, '');
INSERT INTO `companys` VALUES ('51', 'BER001', 'บริษัท เบอร์ลินฟาร์มาซูติคอลอินดัสตรี้ จำกัด', null, '');
INSERT INTO `companys` VALUES ('52', 'BER002', 'บริษัท เบอร์ลี่ ยุคเกอร์ จำกัด (มหาชน)', null, '');
INSERT INTO `companys` VALUES ('53', 'BER003', 'BERNA', null, '');
INSERT INTO `companys` VALUES ('54', 'BER004', 'BERHRING', null, '');
INSERT INTO `companys` VALUES ('55', 'BES001', 'BASSYARON', null, '');
INSERT INTO `companys` VALUES ('56', 'BGR001', 'บริษัท บี.กริม เฮ็ลแคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('57', 'BIO001', 'บริษัท ไบโอฟาร์ม เคมิคัลส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('58', 'BIO002', 'BIOLAB', null, '');
INSERT INTO `companys` VALUES ('59', 'BIO003', 'บริษัท ไบโอเมด กรุ๊ป จำกัด', null, '');
INSERT INTO `companys` VALUES ('60', 'BIO004', 'BIOCHEM  PHARMACEUTICALS INDUS', null, '');
INSERT INTO `companys` VALUES ('61', 'BIO005', 'บริษัท ไบโอเซน จำกัด', null, '');
INSERT INTO `companys` VALUES ('62', 'BIO006', 'ห.จ.ก. ไบโอเคมิคัล ซัพพลาย', null, '');
INSERT INTO `companys` VALUES ('63', 'BIO007', 'บริษัท ไบโอจีนีเทค จำกัด', null, '');
INSERT INTO `companys` VALUES ('64', 'BIO008', 'BIOGENETECH', null, '');
INSERT INTO `companys` VALUES ('65', 'BIO009', 'บริษัท ไบโอโนว่า จำกัด', null, '0-2333-1170');
INSERT INTO `companys` VALUES ('66', 'BIO010', 'บริษัท ไบโอวาลิส จำกัด', null, '02-3618110');
INSERT INTO `companys` VALUES ('67', 'BJC001', 'บริษัท เบอร์ลี่ ยุคเกอร์ จำกัด(มหาชน)', null, '');
INSERT INTO `companys` VALUES ('68', 'BKD001', 'BANGKOK', null, '');
INSERT INTO `companys` VALUES ('69', 'BKL001', 'BANGKOK LAB', null, '');
INSERT INTO `companys` VALUES ('70', 'BKP001', 'บึงกาฬพัฒนา', null, '40 ม.1 ต.บึงกาฬ จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('71', 'BLH001', 'บริษัท บี.เอ็ล.เอช. เทร็ดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('72', 'BLH002', 'บริษัท บี.เอ็ล.ฮั้ว จำกัด', null, '');
INSERT INTO `companys` VALUES ('73', 'BMP001', 'บริษัท บีเอ็มฟาร์มาซี จำกัด', null, '');
INSERT INTO `companys` VALUES ('74', 'BOE001', 'บริษัท เบอริงเกอร์ อินเกลไฮม์ (ไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('75', 'BOE002', 'BOERINGER MANNHEIM', null, '');
INSERT INTO `companys` VALUES ('76', 'BON001', 'ห้างขายยาบนเมืองเภสัช', null, '');
INSERT INTO `companys` VALUES ('77', 'BOO001', 'บริษัท บู๊ทส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('78', 'BOR001', 'บริษัท บอร์เนียว (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('79', 'BRI001', 'บริษัท บริสตอล-ไมเยอร์ สควิบบ์ (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('80', 'BRI002', 'บริษัท บี.กริม แฮลแคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('81', 'BRY001', 'BRYWOOD', null, '');
INSERT INTO `companys` VALUES ('82', 'BSU001', 'บริษัท บี.เอส.ยูนิเทรด จำกัด', null, '');
INSERT INTO `companys` VALUES ('83', 'BUN03', 'บ.จ.ศ 3', null, '');
INSERT INTO `companys` VALUES ('84', 'BUR001', 'บริษัท บูรพาโอสถ จำกัด', null, '');
INSERT INTO `companys` VALUES ('85', 'BUY001', 'BUYWOOD', null, '');
INSERT INTO `companys` VALUES ('86', 'CEN001', 'บริษัท เซ็นทรัลโพลีเทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('87', 'CHA001', 'บริษัท จรูญเภสัช จำกัด', null, '');
INSERT INTO `companys` VALUES ('88', 'CHE001', 'ห.จ.ก. จิวบราเดอร์ส', null, '');
INSERT INTO `companys` VALUES ('89', 'CHI001', 'บริษัท ชินต้าเทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('90', 'CHI002', 'CHINOIN', null, '');
INSERT INTO `companys` VALUES ('91', 'CHI003', 'ห.จ.ก. แว่นตา ชัยเยนทร์', null, '');
INSERT INTO `companys` VALUES ('583', '', 'บริษัท ฮาวาดี (สำนักงานใหญ่) จำกัด', '02-300270-2', '4,4/1 ซอยนาคนิวาส  37  แยก  2-5 ถนนนาคนิวาส  แขวงลาดพร้าว  เขตลาดพร้าว  กทม.10230');
INSERT INTO `companys` VALUES ('93', 'CHO001', 'ห.จ.ก. ช.ชฎาทองซันพลาย', null, '');
INSERT INTO `companys` VALUES ('94', 'CHU002', 'CHUGAI PHARMACEUTICAL', null, '');
INSERT INTO `companys` VALUES ('95', 'CHU003', 'บริษัท จำเริญแพทย์ภัณฑ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('96', 'CIB001', 'CIBA GIEGY', null, '');
INSERT INTO `companys` VALUES ('97', 'CIB002', 'CIBA VISION', null, '');
INSERT INTO `companys` VALUES ('98', 'CIL001', 'CILAG', null, '');
INSERT INTO `companys` VALUES ('99', 'CLI001', 'CLIN-MIDY INTERNATIONAL', null, '');
INSERT INTO `companys` VALUES ('100', 'CME001', 'บริษัท ซีเมดโปรดักซ์ 1994 จำกัด', null, '');
INSERT INTO `companys` VALUES ('101', 'COM001', 'บริษัท คอมเมอร์เซียล ซายส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('102', 'CON001', 'บริษัท คอนดรักส์ อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('103', 'CON002', 'บริษัท คอนติเนนเติล-ฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('104', 'COP001', 'บริษัท ชุมชนเภสัชกรรม จำกัด (มหาชน)', null, '');
INSERT INTO `companys` VALUES ('105', 'COS001', 'บริษัท คอสม่า เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('106', 'CPI001', 'C.P.I.', null, '');
INSERT INTO `companys` VALUES ('107', 'CTL001', 'C T LAB', null, '');
INSERT INTO `companys` VALUES ('108', 'CYA001', 'CYANAMID', null, '');
INSERT INTO `companys` VALUES ('109', 'DAI001', 'DAIICHI', null, '');
INSERT INTO `companys` VALUES ('110', 'DAN01', 'ร.พ ด่านช้าง', null, '');
INSERT INTO `companys` VALUES ('111', 'DAP001', 'บริษัท แดปโก้ จำกัด', null, '');
INSERT INTO `companys` VALUES ('112', 'DAV001', 'DAVID BULL LAB', null, '');
INSERT INTO `companys` VALUES ('113', 'DAV002', 'ห.จ.ก. เดวิด แอนด์ โก', null, '');
INSERT INTO `companys` VALUES ('114', 'DEL001', 'DELMAS PERFUSION', null, '');
INSERT INTO `companys` VALUES ('115', 'DEN001', 'บริษัท ทันต-สยาม วิสาหกิจจำกัด', null, '');
INSERT INTO `companys` VALUES ('116', 'DEN002', 'บริษัท เด็นทัล เฮ้าส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('117', 'DEN003', 'บริษัท ทันตบริภัณฑ์แต้ก๊กใช้ จำกัด', null, '');
INSERT INTO `companys` VALUES ('118', 'DIE001', 'บริษัท ดีทแฮล์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('119', 'DIE002', 'บริษัท ดีทแฮล์ม เคลเลอร์ โลจิสติกส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('120', 'DIS001', 'DISPERSA', null, '');
INSERT INTO `companys` VALUES ('121', 'DKS001', 'บริษัท ดีเคเอสเอช (ประเทศไทย) จำกัด', '', '2106 ถ.สุขุมวิท แขวงบางจาก เขตพระโขนง กรุงเทพฯ 10260');
INSERT INTO `companys` VALUES ('122', 'DOC001', 'บริษัท ด็อกเตอร์แอนด์ฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('123', 'DUM001', 'DUMEX', null, '');
INSERT INTO `companys` VALUES ('124', 'DUP001', 'DUPHAR', null, '');
INSERT INTO `companys` VALUES ('125', 'DUP002', 'DUPONT USA', null, '');
INSERT INTO `companys` VALUES ('126', 'DYN001', 'บริษัท ไดนามิค อินสตรูเม้นท์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('127', 'EAC001', 'บริษัท อี๊สต์เอเชียติ๊ก (ประเทศไทย) จำกัด (มหาชน)', null, '');
INSERT INTO `companys` VALUES ('128', 'EAC002', 'บริษัท อีสเอเซียนเด็นทัล จำกัด', null, '');
INSERT INTO `companys` VALUES ('129', 'EFL001', 'บริษัท อี ฟอร์ แอล อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('130', 'EIS001', 'EISAI', null, '');
INSERT INTO `companys` VALUES ('131', 'ELI001', 'ELI LILLY', null, '');
INSERT INTO `companys` VALUES ('132', 'EME001', 'EMERCK', null, '');
INSERT INTO `companys` VALUES ('133', 'EMI001', 'บริษัท เอ็มมีเน้นซ์ อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('134', 'EMR01', 'อุบัติเหตุฉุกเฉิน', null, '');
INSERT INTO `companys` VALUES ('135', 'EMS001', 'บริษัท อี.เอ็ม.เอส ซัพพลาย', null, '');
INSERT INTO `companys` VALUES ('136', 'END001', 'บริษัท เอ็นโดเมด (1999) จำกัด', null, '');
INSERT INTO `companys` VALUES ('137', 'EON001', 'บริษัท อีออนเมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('138', 'ESA001', 'ESAI', null, '');
INSERT INTO `companys` VALUES ('139', 'FAR001', 'ห.จ.ก. ฟาร  ์อีสต์ ฟาร์มาซูติคอล', null, '');
INSERT INTO `companys` VALUES ('140', 'FAR002', 'บริษัท ฟาร์มิตาเลีย คาร์โล เออร์บา จำกัด', null, '');
INSERT INTO `companys` VALUES ('141', 'FAR003', 'บริษัท ฟาสชิโน จำกัด', null, '');
INSERT INTO `companys` VALUES ('142', 'FDA001', 'กองควบคุมยาเสพติด', null, '');
INSERT INTO `companys` VALUES ('143', 'FDA002', 'สำนักงานคณะกรรมการอาหารและยา กองควบคุมวัตถุเสพติด', null, '');
INSERT INTO `companys` VALUES ('144', 'FDA003', 'กองประสานการปฏิบัติการบำบัดรัก', null, '');
INSERT INTO `companys` VALUES ('145', 'FEZ001', 'บริษัท ซิลลิค ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('146', 'FIV001', 'บริษัท ไฟน์เมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('147', 'FOR001', 'บริษัท สี่สิบสอง จำกัด', null, '');
INSERT INTO `companys` VALUES ('148', 'FRI001', 'ห.จ.ก. เฟรนชิป แลบอราตอรี่ส์', null, '');
INSERT INTO `companys` VALUES ('149', 'FUJ001', 'FUJI FILM', null, '');
INSERT INTO `companys` VALUES ('150', 'FUJ002', 'FUJISAWA', null, '');
INSERT INTO `companys` VALUES ('151', 'GAN001', 'ร.พ.แก่งคอย', null, '');
INSERT INTO `companys` VALUES ('152', 'GDH001', 'บริษัท เยนเนอร์ราลดรั๊กส์ เฮ้าส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('153', 'GEN001', 'บริษัท เยเนอรัล ฮอสปิตัล โปรดัคส์  จำกัด (มหาชน)', null, '');
INSERT INTO `companys` VALUES ('154', 'GEN002', 'บริษัท เยนเนอร์ราลดรั๊กส์ เฮาส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('155', 'GEN003', 'THE GENERAL PROMOTION LTD,PART', null, '');
INSERT INTO `companys` VALUES ('156', 'GLA001', 'GLAXO', null, '');
INSERT INTO `companys` VALUES ('157', 'GLO001', 'GLOBAL PHARM', null, '');
INSERT INTO `companys` VALUES ('158', 'GOV001', 'กองประสานการปฏิบัติการบำบัด', null, '');
INSERT INTO `companys` VALUES ('159', 'GPO001', 'องค์การเภสัชกรรม', null, '');
INSERT INTO `companys` VALUES ('160', 'GRE', '', null, '');
INSERT INTO `companys` VALUES ('161', 'GRE001', 'ห.จ.ก. เกร๊ทเตอร์ฟาร์มา', null, '');
INSERT INTO `companys` VALUES ('162', 'GRE002', 'GREAT EASTERN DRUG', null, '');
INSERT INTO `companys` VALUES ('163', 'GRE003', 'GREEN CROSS', null, '');
INSERT INTO `companys` VALUES ('164', 'GRE004', 'บริษัท เกรท โซเลกซ์ ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('165', 'GRE005', 'บริษัท เกร๊ทเตอร์มายบาซิน จำกัด', null, '');
INSERT INTO `companys` VALUES ('166', 'GRU001', 'GRUNENTHAL', null, '');
INSERT INTO `companys` VALUES ('167', 'GUE001', 'GUERBET LABORATORIES', null, '');
INSERT INTO `companys` VALUES ('168', 'GUL001', 'บริษัท โกลเด้นท์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('169', 'HAG001', 'ร้านเฮียงฮะ', null, '');
INSERT INTO `companys` VALUES ('170', 'HAL001', 'HALOCARBON LAB.', null, '');
INSERT INTO `companys` VALUES ('171', 'HAR001', 'ห.จ.ก. หาญไทยฟาร์มา', null, '');
INSERT INTO `companys` VALUES ('172', 'HAS001', 'HASAPHAN', null, '');
INSERT INTO `companys` VALUES ('173', 'HBC001', 'โรงพยาบาลบุ่งคล้า', null, '');
INSERT INTO `companys` VALUES ('174', 'HBK001', 'รพ.บึงกาฬ', null, '');
INSERT INTO `companys` VALUES ('175', 'HBL001', 'โรงพยาบาลบึงโขลง', null, '');
INSERT INTO `companys` VALUES ('176', 'HEA001', 'บริษัท ฮีลลอล ฟาร์มาซูติคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('177', 'HEI001', 'HEINRICH MACK', null, '');
INSERT INTO `companys` VALUES ('178', 'HIC001', 'บริษัท ไฮคลีน จำกัด', null, '');
INSERT INTO `companys` VALUES ('179', 'HIG001', 'ร้านเฮี้ยงฮะ', null, '');
INSERT INTO `companys` VALUES ('180', 'HKP001', 'H.K.PHARMACEUTICAL CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('181', 'HLU001', 'H. LUNDBECK A/S', null, '');
INSERT INTO `companys` VALUES ('182', 'HOE001', 'บริษัท เฮิกซ์ไทย จำกัด', null, '');
INSERT INTO `companys` VALUES ('183', 'HOM001', 'HOME DRUG LIMITED PARTNERSHIP', null, '');
INSERT INTO `companys` VALUES ('184', 'HOS001', 'HOSPITAL HEALTH CARE', null, '');
INSERT INTO `companys` VALUES ('185', 'HPP001', 'โรงพยาบาลพระอาจารย์ฝั้น อาจาโร', null, '');
INSERT INTO `companys` VALUES ('186', 'HPR001', 'รพ.พรเจริญ', null, '');
INSERT INTO `companys` VALUES ('187', 'ICC001', 'บริษัท ไอซีซี อินเตอร์เนชั่นเนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('188', 'ICI001', 'ICI', null, '');
INSERT INTO `companys` VALUES ('189', 'ICU02', 'หอผู้ป่วยหนักศัลยกรรม', null, '');
INSERT INTO `companys` VALUES ('190', 'IDS001', 'บริษัท ไอดีเอส มาร์เก็ตติ้ง (ประเทศไทย) จำกัด', null, '505 หมู่ 2 ถ.อุดมศรยุทธ์ ต.คลองจิก อ.บางปะอิน จ.พระนครศรีอยุธยา 13160');
INSERT INTO `companys` VALUES ('191', 'IKL001', 'ห.จ.ก. ไอเคแอล เทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('192', 'IME001', 'บริษัท อิมเมกซ์ เคมีคัล จำกัด', null, '');
INSERT INTO `companys` VALUES ('193', 'IME002', 'IMEX PHARMA CO.LTD.', null, '');
INSERT INTO `companys` VALUES ('194', 'INC001', 'บริษัท อินซ์เคป เฮ็ลธ์แคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('195', 'IND001', 'บริษัท อินโดไชน่า เฮลท์ แคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('196', 'IND002', 'บริษัท อุตสาหกรรมเครื่องหอมไทย-จีน จำกัด', null, '');
INSERT INTO `companys` VALUES ('197', 'INT001', 'บริษัท อินเตอร์ เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('198', 'INT002', 'บริษัท อินเตอร์ ดรักส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('199', 'IST001', 'ISTITUO BIOCHIMICO ITALIANO', null, '');
INSERT INTO `companys` VALUES ('200', 'JAC001', 'บริษัท แจ๊กเจีย-สมิธแอนด์เนฟฟิว จำกัด', null, '');
INSERT INTO `companys` VALUES ('201', 'JAN001', 'JANSSEN', null, '');
INSERT INTO `companys` VALUES ('202', 'JAR001', 'เจริญสุขโอสถ', null, '');
INSERT INTO `companys` VALUES ('203', 'JAR002', 'เจริญสุขเภสัช', null, '');
INSERT INTO `companys` VALUES ('204', 'JDH001', 'บริษัท เจดีเอช บอร์เนียว (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('205', 'JEN001', 'บริษัท เจนกิจแพทย์ภัณฑ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('206', 'JOH001', 'บริษัท จอห์นสัน แอนด์ จอห์นสัน (ไทย)  จำกัด', null, '');
INSERT INTO `companys` VALUES ('207', 'JSV001', 'ร้านเจ.เอส วิชั่น', null, '');
INSERT INTO `companys` VALUES ('208', 'KAE001', 'บริษัท แก้วมังกรเภสัช จำกัด', null, '');
INSERT INTO `companys` VALUES ('209', 'KAL001', 'KALI-CHEMIE', null, '');
INSERT INTO `companys` VALUES ('210', 'KAP001', 'บริษัท ครุภัณฑ์การแพทย์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('211', 'KAS001', 'ร้านเกษรพานิช', null, '');
INSERT INTO `companys` VALUES ('212', 'KAS002', 'บริษัท แคสป้า ฟาร์มาซูติคอล(ประเทศไทย)จำกัด', null, '0-2411-6114');
INSERT INTO `companys` VALUES ('213', 'KBL001', 'บริษัท เภสัชกรรม เค.บี. จำกัด', null, '');
INSERT INTO `companys` VALUES ('214', 'KEN001', 'บริษัท เคนดอลล์ แกรมมาตรอน จำกัด', null, '');
INSERT INTO `companys` VALUES ('215', 'KIT001', 'ร้านกิจเจริญการพิมพ์', null, '99 หมู่ 10 ถ.ชัยภูมิ-ชุมแพ ต.ช่องสามหมอ อ.แก่งคร้อ จ.ชัยภูมิ');
INSERT INTO `companys` VALUES ('216', 'KNO001', 'KNOLL', null, '');
INSERT INTO `companys` VALUES ('217', 'KPD001', 'ห.จ.ก. เค.พี.ดรั๊กส์', null, '');
INSERT INTO `companys` VALUES ('218', 'KPP001', 'K.P.PHARM TRADING CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('219', 'KRE001', 'KREUSSLER', null, '');
INSERT INTO `companys` VALUES ('220', 'KTD001', 'บริษัท กวงเตี่ยง ดีสเปนซารี่ จำกัด', null, '');
INSERT INTO `companys` VALUES ('221', 'KWA001', 'KWANG TECK', null, '');
INSERT INTO `companys` VALUES ('222', 'KYO001', 'บริษัท เคียววา ฮัคโค (ประเทศไทย)จำกัด', null, '');
INSERT INTO `companys` VALUES ('223', 'KYP001', 'คลังยาเวชภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('224', 'LBS001', 'ห.จ.ก. แอล.บี.เอส. แลบบอเรตอรี่', null, '');
INSERT INTO `companys` VALUES ('225', 'LD001', 'คณะบุคคลเลิศดำรง', null, '65/17 หมู่ที่ 5 ถนนพระราม 2 แขวงท่าข้าม เขตบางขุนเทียน กรุงเทพมหานคร');
INSERT INTO `companys` VALUES ('226', 'LED001', 'LEDERLE', null, '');
INSERT INTO `companys` VALUES ('227', 'LEI001', 'LEIRAS', null, '');
INSERT INTO `companys` VALUES ('228', 'LEO001', 'LEO PHARMACEUTICAL', null, '');
INSERT INTO `companys` VALUES ('229', 'LEP001', 'ศูนย์โรคเรื้อนเขต2 สระบุรี', null, '');
INSERT INTO `companys` VALUES ('230', 'LFA001', 'บริษัท แอลเอฟ เอเชีย (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('231', 'LIP001', 'LIPHA PHARMACEUTICALS', null, '');
INSERT INTO `companys` VALUES ('232', 'LNS001', 'บริษัท แอล.แอนด์ ซันส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('233', 'LOT001', 'ห.จ.ก. โลตัสเทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('234', 'LSP001', 'ห.จ.ก. โรงงานเลิศสิงห์เภสัชกรรม', null, '');
INSERT INTO `companys` VALUES ('235', 'LSP002', 'ร.พ.เลิศสิน', null, '');
INSERT INTO `companys` VALUES ('236', 'LUI001', 'LUITPOID-WERK', null, '');
INSERT INTO `companys` VALUES ('237', 'LUN001', 'LUNDBECK', null, '');
INSERT INTO `companys` VALUES ('238', 'M&B001', 'บริษัท เมย์ แอนด์ เบเกอร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('239', 'M&H001', 'บริษัท เอ็ม แอนด์ เอ็ช  แมนูแฟคเจอริ่ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('240', 'MAC001', 'บริษัท แมคโครฟาร์ จำกัด', null, '89 ซอยพัฒนาการ20 แยก4 ถ.พัฒนาการ แขวงสวนหลวง กรุงเทพฯ');
INSERT INTO `companys` VALUES ('241', 'MAC002', 'บริษัท แมคโครฟาร์แลบ จำกัด', null, '');
INSERT INTO `companys` VALUES ('242', 'MAD001', 'MADAUS', null, '');
INSERT INTO `companys` VALUES ('243', 'MAN001', 'ร้านมโนทัย', null, '17 หมู่ 1 ต.ศรีวิไล อ.ศรีวิไล จ. หนองคาย');
INSERT INTO `companys` VALUES ('244', 'marc01', 'บ.โรงงานเภสัชกรรมแหลมทองการแพทย์', null, '655 ถ.ประดิษฐญ์ธรรมนมูญเขตวังหลองหลางกรุงเทพ');
INSERT INTO `companys` VALUES ('245', 'MARch', 'บ.โรงงานเภสัชกรรมแหลมทองการแพทย์ จ.', null, '655ถ.ประดิษฐ์มนูธรรม');
INSERT INTO `companys` VALUES ('246', 'MAS001', 'บริษัท มาสุ จำกัด', null, '');
INSERT INTO `companys` VALUES ('247', 'MAS002', 'ห.จ.ก. มาสเตอร์เฮ็ลธ์แคร์', null, '');
INSERT INTO `companys` VALUES ('248', 'MAX001', 'ห.จ.ก. แม็กซิม อินเตอร์คอนติเนนตอล', null, '');
INSERT INTO `companys` VALUES ('249', 'MDC001', 'บริษัท เอ็ม ดี ซี (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('250', 'MDM001', 'บริษัท เอ็ม.ดี.เมดิคอลเซ็นเตอร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('251', 'MDP001', 'บริษัท เอ็ม ดี ฟาร์ม่าจำกัด', null, '');
INSERT INTO `companys` VALUES ('252', 'MEA001', 'MEAD JOHNSON & SQUIBB', null, '');
INSERT INTO `companys` VALUES ('253', 'MED001', 'บริษัท เมดิควิป จำกัด', null, '');
INSERT INTO `companys` VALUES ('254', 'MED002', 'บริษัท เมดไลน์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('255', 'MED003', 'ห.จ.ก. เวชภัณฑ์ และ เภสัชภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('256', 'MED004', 'บริษัท เมดิไฟว์ฟาร์ม่า จำกัด', null, '');
INSERT INTO `companys` VALUES ('257', 'MED005', 'บริษัท เมดิซีน ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('258', 'MEI001', 'บริษัท ไทยเมจิ ฟาร์มาซิวติคัล จำกัด', null, '');
INSERT INTO `companys` VALUES ('259', 'MER001', 'บริษัท เมอร์ริเออร์ (ไทยแลนด์) จำกัด', null, '');
INSERT INTO `companys` VALUES ('260', 'MER002', 'MERRELL DOW', null, '');
INSERT INTO `companys` VALUES ('261', 'MER003', 'บริษัท เมอรี่ฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('262', 'MES001', 'บริษัท เมส เทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('263', 'MES002', 'ห.จ.ก. เอ็ม.อี.เอส เทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('264', 'MIL001', 'ห.จ.ก. โรงงานมิลาโน', null, '');
INSERT INTO `companys` VALUES ('265', 'MLL001', 'M.L.LAB LIMITED PARTNERSHIP', null, '');
INSERT INTO `companys` VALUES ('266', 'MLM001', 'บริษัท มิลลิเมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('267', 'MLR001', 'ศูนย์มาลาเรียพระพุทธบาท', null, '');
INSERT INTO `companys` VALUES ('268', 'MOD001', 'บริษัท โมเดอร์นแมนู จำกัด', null, '');
INSERT INTO `companys` VALUES ('269', 'MOD002', 'บริษัท โมเดิร์น ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('270', 'MON001', 'บริษัท มัณฑนา จำกัด', null, '');
INSERT INTO `companys` VALUES ('271', 'MOR001', 'MORISHITA', null, '');
INSERT INTO `companys` VALUES ('272', 'MSD001', 'MSD', null, '');
INSERT INTO `companys` VALUES ('273', 'MSL001', 'บริษัท มาซา แลบ จำกัด', null, '');
INSERT INTO `companys` VALUES ('274', 'NAK001', 'บริษัท นครอินดัสเตรียลแก๊ส จำกัด', null, 'เลขที่ 7 ถ.กลางเมือง อ.เมือง จ.นครพนม');
INSERT INTO `companys` VALUES ('275', 'NAK002', 'บริษัท นครเวชภัณฑ์ คอร์ปอเรชั่', null, '');
INSERT INTO `companys` VALUES ('276', 'NAT001', 'NATTTERMANN', null, '');
INSERT INTO `companys` VALUES ('277', 'NAT002', 'ห.จ.ก. นทีเทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('278', 'NAT003', 'NATURAL MEDIA', null, '');
INSERT INTO `companys` VALUES ('279', 'NCT001', 'กองการบำบัดรักษาผู้ติดยาเสพติด', null, '');
INSERT INTO `companys` VALUES ('280', 'NEO001', 'บริษัท นีโอฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('281', 'NES001', 'บริษัท เนสท์เล่ โปรดักท์ส(ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('282', 'NEU001', 'บริษัท นิวฟาร์มา(ประเทศไทย)จำกัด', null, '0-2644-5341');
INSERT INTO `companys` VALUES ('283', 'NEW001', 'บริษัท นิวไลฟ์ ฟาร์ม่า จำกัด', null, '');
INSERT INTO `companys` VALUES ('284', 'NEW002', 'ห.จ.ก. นิวเฟร๊นช์ดิสเปนซารี่', null, '');
INSERT INTO `companys` VALUES ('285', 'NID001', 'บริษัท นิด้า ฟาร์มา อินคอร์ปอเรชั่น จำกัด', null, '');
INSERT INTO `companys` VALUES ('286', 'NJP001', 'ร้านเอ็น.เจ.ฟาร์ม่า', null, '');
INSERT INTO `companys` VALUES ('287', 'NOP001', 'ห.จ.ก. นพรัตน์เภสัช', null, '');
INSERT INTO `companys` VALUES ('288', 'NOR001', 'NORWICH EATON', null, '');
INSERT INTO `companys` VALUES ('289', 'NOV001', 'NOVO NORDISK', null, '');
INSERT INTO `companys` VALUES ('290', 'NTA001', 'ห.จ.ก. นทีเทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('291', 'NTT001', 'บริษัท เอ็น ที ที มาร์เก็ตติ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('292', 'NUM001', 'บริษัท นำสินเทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('293', 'NUP001', 'บริษัท นูฟาร์มา แอนด์ เฮลท์แคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('294', 'NYC001', 'NYCOMED', null, '');
INSERT INTO `companys` VALUES ('295', 'ODO001', 'บริษัท โอดอนเท็กซ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('296', 'OLA001', 'บริษัท โอลัน-เคมเมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('297', 'OLI001', 'บริษัท โอลิค (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('298', 'OLI002', 'บริษัท โอลิค(ดิสทริบิวชั่น)จำกัด', null, '');
INSERT INTO `companys` VALUES ('299', 'ORE001', 'บริษัท โอเร็กซ์ เทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('300', 'ORG001', 'ORGANON', null, '');
INSERT INTO `companys` VALUES ('301', 'ORT01', 'ออร์โธฯชาย', null, '');
INSERT INTO `companys` VALUES ('302', 'OSO001', 'บริษัท โอสถสภา เต็กเฮงหยู  จำกัด', null, '');
INSERT INTO `companys` VALUES ('303', 'OSO002', 'บริษัท โอสถอินเตอร์แลบบอราทอรี่ส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('304', 'OTC001', 'บริษัท โอ ที ซี ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('305', 'OUI001', 'บริษัท อุยเฮงอินเตอร์เนชั่นแนลเฮลท์แคร์  จำกัด', null, '');
INSERT INTO `companys` VALUES ('306', 'PAC001', 'บริษัท แปซิฟิค เฮลธ์แคร์ (ไทยแลนด์) จำกัด', null, '');
INSERT INTO `companys` VALUES ('307', 'PAI001', 'บริษัท ไพบูลย์วัฒนา จำกัด', null, '');
INSERT INTO `companys` VALUES ('308', 'PAN001', 'PANMED LIMITED PARTNERSHIP', null, '');
INSERT INTO `companys` VALUES ('309', 'PAN002', 'PANDRUGS COMPANY LIMITED', null, '');
INSERT INTO `companys` VALUES ('310', 'PAR001', 'PARK DAVID', null, '');
INSERT INTO `companys` VALUES ('311', 'PAR003', 'ห.จ.ก. ภาสิน', null, '');
INSERT INTO `companys` VALUES ('312', 'PAS001', 'PASTEUR MERIEUX CONNAUGHT,LTD.', null, '');
INSERT INTO `companys` VALUES ('313', 'PAT001', 'PATANA MEDICAL CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('314', 'PAT002', 'ห.จ.ก. พาตาร์แลบ', null, '');
INSERT INTO `companys` VALUES ('315', 'pcr001', 'รพ. เจริญ', null, '1 หมู่ 8 ถ.บึงกาฬ-พังโคน ต.พรเจริญ อ.พรเจริญ จ.หนองคาย');
INSERT INTO `companys` VALUES ('316', 'PDL001', 'ห.จ.ก. พี.ดี.แอล', null, '');
INSERT INTO `companys` VALUES ('317', 'PFI001', 'บริษัท ไฟเซอร์ อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('318', 'PHA001', 'บริษัท เภสัชพานิช จำกัด', null, '');
INSERT INTO `companys` VALUES ('319', 'PHA002', 'บริษัท ฟาร์มาแลนด์ (1982) จำกัด', null, '');
INSERT INTO `companys` VALUES ('320', 'PHA003', 'บริษัท ฟาร์ม่า (ไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('321', 'PHA004', 'PHARMATON SA', null, '');
INSERT INTO `companys` VALUES ('322', 'PHA005', 'บริษัท ฟาร์มีน่า จำกัด', null, '');
INSERT INTO `companys` VALUES ('323', 'PHA006', 'PHAMACEUTICALS TRADERS', null, '');
INSERT INTO `companys` VALUES ('324', 'PHA007', 'บริษัท ฟาร์ม่า อินโนวา จำกัด', null, '');
INSERT INTO `companys` VALUES ('325', 'PHA008', 'บริษัท ฟาร์ม่าสแควร ์จำกัด', null, '');
INSERT INTO `companys` VALUES ('326', 'PHA009', 'บริษัท ฟาร์มาดิกา จำกัด', null, '');
INSERT INTO `companys` VALUES ('327', 'PHA010', 'PHARMA SUPPLY CO.Ltd', null, '');
INSERT INTO `companys` VALUES ('328', 'PHA011', 'ร้านเภสัชการแพทย์', null, '');
INSERT INTO `companys` VALUES ('329', 'PHA012', 'ร้านยาเภสัชกร', null, '');
INSERT INTO `companys` VALUES ('330', 'PHA013', 'บริษัท เภสัชกรรมนครพัฒนา จำกัด', null, '');
INSERT INTO `companys` VALUES ('331', 'PHI001', 'บริษัท ฟินิกซ์ เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('332', 'PHO001', 'ห.จ.ก. พงศกรเมดิคอล', null, '');
INSERT INTO `companys` VALUES ('333', 'PIC001', 'บริษัท พิจารณ์ จำกัด จำกัด', null, '');
INSERT INTO `companys` VALUES ('334', 'PIE001', 'PIERREL', null, '');
INSERT INTO `companys` VALUES ('335', 'PIN001', 'ห.จ.ก. ภิญโญฟาร์มาซี', null, '');
INSERT INTO `companys` VALUES ('336', 'PJR001', 'กลุ่มชุมชนสมุนไพรไทย พรเจริญ', null, '');
INSERT INTO `companys` VALUES ('337', 'PNL001', 'บริษัท พี.เอ็น.แล็บ จำกัด', null, '');
INSERT INTO `companys` VALUES ('338', 'POL001', 'บริษัท โปลิฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('339', 'PON001', 'ห.ส.น. โรงงานเภสัชกรรมพอนด์เคมีคอล ประเทศไทย', null, '');
INSERT INTO `companys` VALUES ('340', 'POS001', 'บริษัท โพส เฮลท์แคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('341', 'PPI001', 'ร้านพี.พี.อินเตอร์ซัพพลายส์', null, '');
INSERT INTO `companys` VALUES ('342', 'PPL001', 'บริษัท พี.พี.แลบอราตอรีส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('343', 'PRA001', 'ห.จ.ก. ประเวชอุปกรณ์', null, '');
INSERT INTO `companys` VALUES ('344', 'PRE001', 'ห้างหุ้นส่วนสามัญ พรีเมด ฟาร์มา', null, '');
INSERT INTO `companys` VALUES ('345', 'PRO001', 'บริษัท ปรูฟฟ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('346', 'PRO002', 'PROMEDICA', null, '');
INSERT INTO `companys` VALUES ('347', 'PRO003', 'PROGRESS LAB.', null, '');
INSERT INTO `companys` VALUES ('348', 'PRO004', 'PRO-FIELD CO.,LTD.', null, '');
INSERT INTO `companys` VALUES ('349', 'PRO005', 'สำนักงานควบคุมโรคติดต่อเขต2', null, '');
INSERT INTO `companys` VALUES ('350', 'PRO006', 'PROPERTY CHEMIE CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('351', 'PROS01', 'บริษัท พรอส ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('352', 'PROS02', 'บริษัท พรอส ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('353', 'PROS07', 'บริษัท พรอส ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('354', 'PUB001', 'บริษัท ปับลิค ฟาร์มาซูติคอลแลบ จำกัด', null, '');
INSERT INTO `companys` VALUES ('355', 'QUA001', 'บริษัท คลอลิเมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('356', 'RAJ001', 'บริษัท ราชเทวีคลีนิค จำกัด', null, '');
INSERT INTO `companys` VALUES ('357', 'RAK001', 'ห.จ.ก. รักสกุลแพทย์ภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('358', 'RAK002', 'บริษัท รักษ์สุข จำกัด', null, '');
INSERT INTO `companys` VALUES ('359', 'RAN001', 'บริษัท แรนแบ็กซี่ ยูนิเคม  จำกัด', null, '');
INSERT INTO `companys` VALUES ('360', 'RED001', 'สภากาชาดไทย', null, '');
INSERT INTO `companys` VALUES ('361', 'RIK001', 'RIKER LAB.', null, '');
INSERT INTO `companys` VALUES ('362', 'ROC001', 'ROCHE', null, '');
INSERT INTO `companys` VALUES ('363', 'ROU001', 'ROUSSEL', null, '');
INSERT INTO `companys` VALUES ('364', 'ROY001', 'ห.จ.ก. โรเยลดรักส์', null, '');
INSERT INTO `companys` VALUES ('365', 'RUN001', 'ห.ส.น. รุ่งเรือง เมดิคอล', null, '');
INSERT INTO `companys` VALUES ('366', 'RXC001', 'บริษัท อาร์เอ็กซ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('367', 'SAH001', 'ห.จ.ก. สหภัณฑ์เภสัช', null, '');
INSERT INTO `companys` VALUES ('368', 'SAH002', 'บริษัท สหแพทย์เภสัช จำกัด', null, '');
INSERT INTO `companys` VALUES ('369', 'SAH003', 'บริษัท สหการโอสถ จำกัด', null, '');
INSERT INTO `companys` VALUES ('370', 'SAK001', 'SANKYO', null, '');
INSERT INTO `companys` VALUES ('371', 'SAK002', 'SAKOL INSTRUMENTE CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('372', 'SAM001', 'บริษัท สามัคคีเภสัช จำกัด', null, '');
INSERT INTO `companys` VALUES ('373', 'SAN001', 'บริษัท แสงไทยเมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('374', 'SAN002', 'SANDOZ', null, '');
INSERT INTO `companys` VALUES ('375', 'SAN003', 'SANOFI WINTHROP', null, '');
INSERT INTO `companys` VALUES ('376', 'SAS001', 'S.A.S.INTERNATIONAL TRADING', null, '');
INSERT INTO `companys` VALUES ('377', 'SCA001', 'บริษัท สแกนซัป ไทยแลนด์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('378', 'SCA002', 'ห.จ.ก. สแกนเวย์', null, '');
INSERT INTO `companys` VALUES ('379', 'SCF001', 'ร้านไซเอนติฟิค โปรโมชั่น', null, '');
INSERT INTO `companys` VALUES ('380', 'SCH001', 'บริษัท ชูมิตร 1967 จำกัด', null, '');
INSERT INTO `companys` VALUES ('381', 'SCH002', 'บริษัท ส.เจริญเภสัชเทรดดิ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('382', 'SCH003', 'บริษัท เชริง(กรุงเทพฯ) จำกัด', null, '');
INSERT INTO `companys` VALUES ('383', 'SCH004', 'บริษัท เซอร์ลี ฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('384', 'SCI001', 'บริษัท ไซเอนซ์ เมด จำกัด', null, '');
INSERT INTO `companys` VALUES ('385', 'SCO001', 'SCOT PHARMA CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('386', 'SCP001', 'สสจ.หนองคาย', null, '');
INSERT INTO `companys` VALUES ('387', 'SEA001', 'SEARLE', null, '');
INSERT INTO `companys` VALUES ('388', 'SEA002', 'บริษัท ซีฟาม จำกัด', null, '');
INSERT INTO `companys` VALUES ('389', 'SEN001', 'บริษัท แสงไทย จำกัด', null, '');
INSERT INTO `companys` VALUES ('390', 'SER001', 'SERVIER', null, '');
INSERT INTO `companys` VALUES ('391', 'SER002', 'บริษัท เซอร์วี ฟาร์ม จำกัด', null, '');
INSERT INTO `companys` VALUES ('392', 'SEV001', 'บริษัท ห้างขายยาตราเจ็ดดาว จำกัด', null, '');
INSERT INTO `companys` VALUES ('393', 'SHI002', 'บริษัท ชีวาเคมิคัลส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('394', 'SHO001', 'ห.จ.ก. ชมภูศรีเทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('395', 'SIA001', 'บริษัท สยามฟาร์มาซูติคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('396', 'SIA002', 'SIAM MEDICARE COLTD', null, '');
INSERT INTO `companys` VALUES ('397', 'SIA003', 'ห.จ.ก. สยามแบนด์เอด', null, '');
INSERT INTO `companys` VALUES ('398', 'SIA004', 'บริษัท สยาม ฮอสปิตอล ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('399', 'SIA005', 'บริษัท สยามเมดิแคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('400', 'SIL001', 'บริษัท สีลมมาร์เก็ตติ้ง จำกัด', null, '');
INSERT INTO `companys` VALUES ('401', 'SIL002', 'บริษัท สีลมการแพทย์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('402', 'SIN001', 'ร้านสินรุ่งโรจน์', null, '');
INSERT INTO `companys` VALUES ('403', 'SIN002', 'ร้านสินรุ่งเรือง', null, '');
INSERT INTO `companys` VALUES ('404', 'SIR001', 'ห.จ.ก. ศิริโรจน์เทรดดิ้ง', null, '');
INSERT INTO `companys` VALUES ('405', 'SIR002', 'ร้านศิริฤกษ์', null, '');
INSERT INTO `companys` VALUES ('406', 'SIT001', 'ร้านสิฐไชยครุภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('407', 'SIT002', 'บริษัท สิฐไชยครุภัณฑ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('408', 'SKM001', 'ห.จ.ก. เอส เค เอ็ม ซี', null, '');
INSERT INTO `companys` VALUES ('409', 'SKS001', 'บริษัท สุขเกษม อินเตอร์เนชั่นแนล จำกัด', null, '');
INSERT INTO `companys` VALUES ('410', 'SKY001', 'บริษัท สกายแล็บ จำกัด', null, '');
INSERT INTO `companys` VALUES ('411', 'SMI001', 'SMITHKLINE BEECHAM', null, '');
INSERT INTO `companys` VALUES ('412', 'SMI002', 'บริษัท สมิธแอนด์เนฟฟิว จำกัด', null, '');
INSERT INTO `companys` VALUES ('413', 'SMP001', 'S.M.PHARMACEUTICAL', null, '');
INSERT INTO `companys` VALUES ('414', 'SNC001', 'S.N.C.MEDICAL SUPPLY LTD.', null, '');
INSERT INTO `companys` VALUES ('415', 'SOC001', 'กลุ่มงานเวชกรรมสังคมร.พ. สระบุรี', null, '');
INSERT INTO `companys` VALUES ('416', 'SOL001', 'SOLCO BASLE', null, '');
INSERT INTO `companys` VALUES ('417', 'SON001', 'ส่งเสริมแมคดิคอล', null, '55/10 ถ.โพนพิสัย ต.หมากแข้ง อ.เมือง จ.อุดรธานี 41000');
INSERT INTO `companys` VALUES ('418', 'SPS001', 'บริษัท เอสพีเอส เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('419', 'SQU001', 'SQUIBB', null, '');
INSERT INTO `companys` VALUES ('420', 'SRI002', 'บริษัท ศรีตรังแอโกรอินดัสทรี จำกัด', null, '');
INSERT INTO `companys` VALUES ('421', 'SRI003', 'บริษัท ศรีจันทร์สหโอสถ จำกัด', null, '');
INSERT INTO `companys` VALUES ('422', 'SRI004', 'ร้านศรีเมืองสิงห์', null, '');
INSERT INTO `companys` VALUES ('423', 'SRT001', 'ร้านศิริธรเวชภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('424', 'SSJ001', 'สสจ.สระบุรี', null, '');
INSERT INTO `companys` VALUES ('425', 'SSJ002', 'สสจ.สิงห์บุรี', null, '');
INSERT INTO `companys` VALUES ('426', 'SSJ003', 'สสจ.สุพรรณบุรี งานควบคุมโรคติดต่อทั่วไป', null, '');
INSERT INTO `companys` VALUES ('427', 'SSJ004', 'สสจ.บึงกาฬ', null, '');
INSERT INTO `companys` VALUES ('428', 'STA001', 'บริษัท สตาร์แล็บ จำกัด', null, '');
INSERT INTO `companys` VALUES ('429', 'STD001', 'บริษัท สตาดา เอเชียติ๊ก จำกัด', null, '');
INSERT INTO `companys` VALUES ('430', 'STI001', 'STIELE', null, '');
INSERT INTO `companys` VALUES ('431', 'STP001', 'S.T.PHARMA', null, '');
INSERT INTO `companys` VALUES ('432', 'SUB001', 'Substock', null, '');
INSERT INTO `companys` VALUES ('433', 'SUB002', 'SUBSTOCK', null, '');
INSERT INTO `companys` VALUES ('434', 'SUM001', 'ห.จ.ก. สุมนเมดิคอล', null, '');
INSERT INTO `companys` VALUES ('435', 'SUP001', 'หน่วยเบิกผู้ป่วยใน', null, '');
INSERT INTO `companys` VALUES ('436', 'SUP002', 'บริษัท สุพรีม โปรดักส์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('437', 'SUP003', 'ร้านสุพรรณิการ์แพทย์ภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('438', 'SUP004', 'ร้านสุพรรณวรรษา วัสดุแพทย์', null, '');
INSERT INTO `companys` VALUES ('439', 'SUR001', 'บริษัท เซอร์จิเทค จำกัด', null, '');
INSERT INTO `companys` VALUES ('440', 'SUR002', 'บริษัท เครื่องมือแพทย์จำกัด', null, '');
INSERT INTO `companys` VALUES ('441', 'SUR003', 'สุรพงษ์เภสัช', null, '');
INSERT INTO `companys` VALUES ('442', 'SWI001', 'SWISS SERUM', null, '');
INSERT INTO `companys` VALUES ('443', 'SWL001', 'คลังยาโรงพยาบาลศรีวิไล', null, '');
INSERT INTO `companys` VALUES ('444', 'SWL002', 'คลังเวชภัณฑ์มิใช่ยา รพ.ศรีวิไล', null, '');
INSERT INTO `companys` VALUES ('445', 'SYN001', 'SYNTEX', null, '');
INSERT INTO `companys` VALUES ('446', 'T.CHAI', 'ธงชัย  ปิ่นแก้ว', null, '204 ม.6 ต.นาแสง อ.ศรีวิไลจ.บึงกาฬ');
INSERT INTO `companys` VALUES ('447', 'TAK001', 'TAKEDA', null, '');
INSERT INTO `companys` VALUES ('448', 'TAN001', 'TANABE SEIYAKU', null, '');
INSERT INTO `companys` VALUES ('449', 'TAN002', 'ร้านธนพัตร', null, '');
INSERT INTO `companys` VALUES ('450', 'TBC001', 'ศูนย์วัณโรคเขต 3 นม.', null, '');
INSERT INTO `companys` VALUES ('451', 'TCP001', 'T.C.PHARMA', null, '');
INSERT INTO `companys` VALUES ('452', 'TCT001', 'ร้านที ซี ที', null, '');
INSERT INTO `companys` VALUES ('453', 'TED001', 'บริษัท ที อี ดี จำกัด', null, '');
INSERT INTO `companys` VALUES ('454', 'TEG001', 'ร้านเต็กฮง', null, '');
INSERT INTO `companys` VALUES ('455', 'TEG002', 'ร้านเต็กอังเภสัช', null, '');
INSERT INTO `companys` VALUES ('456', 'TEP001', 'บริษัท ที. อี. (1991) จำกัด', null, '');
INSERT INTO `companys` VALUES ('457', 'THA001', 'บริษัท ไทยนครพัฒนา จำกัด', null, '');
INSERT INTO `companys` VALUES ('458', 'THA002', 'บริษัท ไทยเพียวดีไวซ์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('459', 'THA003', 'THAI JAPAN DIST', null, '');
INSERT INTO `companys` VALUES ('460', 'THA004', 'สถานเสาวภา สภากาชาดไทย', null, '');
INSERT INTO `companys` VALUES ('461', 'THA005', 'THAI OTSUKA', null, '');
INSERT INTO `companys` VALUES ('462', 'THA006', 'บริษัท ไทยเมจิ จำกัด', null, '');
INSERT INTO `companys` VALUES ('463', 'THA007', 'THANYA IMPORT EXPORT CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('464', 'THA008', 'บริษัท ไทยก๊อส จำกัด', null, '');
INSERT INTO `companys` VALUES ('465', 'THA009', 'บริษัท ไทยเอฟดี จำกัด', null, '');
INSERT INTO `companys` VALUES ('466', 'THE001', 'THERAPHARMA', null, '');
INSERT INTO `companys` VALUES ('467', 'THI001', 'บริษัท ไทยโอซูก้า จำกัด', null, '');
INSERT INTO `companys` VALUES ('468', 'THO01', 'บริษัท ธงทองโอสถ จำกัด', null, '');
INSERT INTO `companys` VALUES ('469', 'TIT001', 'บริษัท ติตติโก จำกัด', null, '');
INSERT INTO `companys` VALUES ('470', 'TMA001', 'บริษัท ที. แมน ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('471', 'TMA002', 'บริษัท ที. แมนฟาร์มาซูติคอล จำกัด', null, '101/112 หมู่ 6 วซอยม่วงสกุล ถ.บางขุนเทียน แขวงแสมดำ เขตบางขุนเทียน กรุงเทพฯ');
INSERT INTO `companys` VALUES ('472', 'TMN001', 'ห.จ.ก. ที.เอ็ม.เอ็น อิมเพกซ์', null, '');
INSERT INTO `companys` VALUES ('473', 'TNP001', 'บริษัท ที เอ็น พี เฮลท์แคร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('474', 'TOC001', 'บริษัท ที.โอ.เคมีคอลส์ (1979) จำกัด', null, '');
INSERT INTO `companys` VALUES ('475', 'TOC002', 'บริษัท ที.โอ.เคมีคอลส์ (1979) จำกัด', null, '');
INSERT INTO `companys` VALUES ('476', 'TPD001', 'บริษัท ที.พี.ดรัก แลบบอราทอรี่ส์ (1969) จำกัด', null, '');
INSERT INTO `companys` VALUES ('477', 'TRA001', 'บริษัท ทรานส์ บูเซ่น (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('478', 'TRI001', 'บริษัท ไทรอัมพ์ ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('479', 'TRU001', 'TRUSTY DRUGS CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('480', 'TSP001', 'T.S.PHARMA CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('481', 'TUN001', 'ร้านตั้วเลี่ยงฮวด', null, '');
INSERT INTO `companys` VALUES ('482', 'UDO001', 'UDOMPORN PHARMA CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('483', 'UDO002', 'UDOM MEDICAL EQUIPMENT CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('484', 'UDR001', 'ห.จ.ก. ยูดี รวมกิจ', null, '');
INSERT INTO `companys` VALUES ('485', 'UMD001', 'บริษัท ยูเมด้า จำกัด', null, '26/18-21 ซอยอยู่เย็น ถนนรามอินทรา 34 แขวงท่าแร้ง เขตบางเขน กรุงเทพฯ 10220');
INSERT INTO `companys` VALUES ('486', 'UMI001', 'บริษัทยูนิเวอร์แซล เมดิคอล อินดัสตรี จำกัด', null, '');
INSERT INTO `companys` VALUES ('487', 'UNI001', 'ห.จ.ก. ยูนิเคม ดิสทริบิวเตอร์ส', null, '');
INSERT INTO `companys` VALUES ('488', 'UNI002', 'บริษัท ยูนีซัน  จำกัด', null, '');
INSERT INTO `companys` VALUES ('489', 'UNI003', 'บริษัท ยูไนเตดเมดิคอลอินสตรูเมนท์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('490', 'UNI005', 'บริษัท ยูนิตี้เด็นตัล จำกัด', null, '');
INSERT INTO `companys` VALUES ('491', 'UNI006', 'บริษัท ยูเนียนเมดดิคอล (ประเทศไทย) จำกัด', null, '');
INSERT INTO `companys` VALUES ('492', 'UNI007', 'UNIMED CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('493', 'UNI008', 'UNISON LABORATORY CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('494', 'UOB001', 'UOB(THAILAND),LTD', null, '');
INSERT INTO `companys` VALUES ('495', 'UPJ001', 'UPJOHN', null, '');
INSERT INTO `companys` VALUES ('496', 'UPM001', 'บริษัท ยู.พี.เมดิคอล ซอลเตอร์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('497', 'USS001', 'บริษัท ยู.เอส. สัมมิท (โอเวอร์ซีส์) จำกัด', null, '');
INSERT INTO `companys` VALUES ('498', 'UTO001', 'บริษัท ยูโทเปี้ยน จำกัด', null, '');
INSERT INTO `companys` VALUES ('499', 'UTP001', 'บริษัท ยู.ที.พี.เมดิคอล จำกัด', null, '');
INSERT INTO `companys` VALUES ('500', 'V&V001', 'บริษัท วี.แอนด์.วี.กรุงเทพฯ จำกัด', null, '');
INSERT INTO `companys` VALUES ('501', 'VAN001', 'บริษัท วนา จำกัด', null, '');
INSERT INTO `companys` VALUES ('502', 'VCP001', 'ร้าน วี.ซี. พลาสติค', null, '40/20 ซอยประชาอุทิศ 3 ถ. ประชาอุทิศ ต.ธาตุเชิงชุม อ.เมือง จ.สกลนคร  โทร . 084-42');
INSERT INTO `companys` VALUES ('503', 'VEC001', 'บริษัท เวชอาศรม จำกัด', null, '');
INSERT INTO `companys` VALUES ('504', 'VES001', 'VESCO', null, '');
INSERT INTO `companys` VALUES ('505', 'VES002', 'ห.จ.ก. เวชภัณฑ์และเภสัชภัณฑ์', null, '');
INSERT INTO `companys` VALUES ('506', 'VIC001', 'บริษัท วิคเตอร์ อีควิปเมนต์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('507', 'VIC002', 'บริษัท วิคเตอรี่แพค จำกัด', null, '');
INSERT INTO `companys` VALUES ('508', 'VID001', 'บริษัท วิทยาศรม จำกัด', null, '');
INSERT INTO `companys` VALUES ('509', 'VMC001', 'บริษัท วี.เมดิคอล ซัพพลาย จำกัด', null, '');
INSERT INTO `companys` VALUES ('510', 'VRM001', 'ห.จ.ก. วี.อาร์.เมดิคอลซัพพลาย', null, '');
INSERT INTO `companys` VALUES ('511', 'VRP001', 'บริษัท วี อาร์ พี เด้นท์ จำกัด', null, '');
INSERT INTO `companys` VALUES ('512', 'VSP001', 'V.S.PHARMA(1971)CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('513', 'WEL001', 'บริษัท เวลคัม ประเทศไทย จำกัด', null, '');
INSERT INTO `companys` VALUES ('514', 'WEL002', 'WELLCHEM', null, '');
INSERT INTO `companys` VALUES ('515', 'WES001', 'WESTMONT', null, '');
INSERT INTO `companys` VALUES ('516', 'WIL001', 'บริษัท วิลแฮล์ม ฟาร์มาซูติคอล จำกัด', null, '0-2331-1492');
INSERT INTO `companys` VALUES ('517', 'WIN001', 'WINTHROP', null, '');
INSERT INTO `companys` VALUES ('518', 'WIS001', 'ห้างขายยาวิสิฐเภสัช', null, '');
INSERT INTO `companys` VALUES ('519', 'WOR001', 'WORLD MED EQUIPMENT CO.,LTD', null, '');
INSERT INTO `companys` VALUES ('520', 'WOR002', 'บริษัท เวิลด์เครื่องมือแพทย์จำกัด', null, '');
INSERT INTO `companys` VALUES ('521', 'WUT001', 'ร้านวุฒิไกร สิงห์บุรี', null, '');
INSERT INTO `companys` VALUES ('522', 'WYE001', 'WYETH', null, '');
INSERT INTO `companys` VALUES ('523', 'XRA01', 'รังสีวิทยา', null, '');
INSERT INTO `companys` VALUES ('524', 'YIM001', 'บริษัท ยิมส์ฟาร์ม่าจำกัด', null, '');
INSERT INTO `companys` VALUES ('525', 'YNT001', 'ร้านยนต์ทวี', null, '195ม.1ต.บึงกาฬ อ.เมือง จ.บบึงกาฬ');
INSERT INTO `companys` VALUES ('526', 'YUN001', 'YUNSHIN', null, '');
INSERT INTO `companys` VALUES ('527', 'ZAM001', 'ZAMBON GROUP', null, '');
INSERT INTO `companys` VALUES ('528', 'ZEN001', 'ZENECA', null, '');
INSERT INTO `companys` VALUES ('529', 'ZEU001', 'บริษัท ซิลลิค ฟาร์มา จำกัด', null, '');
INSERT INTO `companys` VALUES ('531', 'acc', 'บ.เอซีซี โซลูชั่น จำกัด', 'โทร02-108-8836', '91/236ถ.สุวินทวงศ์ เขตมินบุรึ กทม.');
INSERT INTO `companys` VALUES ('532', 'AF', 'เอ เอฟ เซอร์วิส แอนด์ ซัพพลาย', '', '');
INSERT INTO `companys` VALUES ('533', 'AM', 'บ.อัมรินทร์ เมดิคอล จำกัด', '02-533-7836', '111/180ถ.สายใหม เชตสายใหม กทม.');
INSERT INTO `companys` VALUES ('534', 'AP', 'ร้าน เอ พี ซัพพลาย', '', '166หมู่2 ต.เมืองเก่า อ.เมือง จ.ขอนแก่น');
INSERT INTO `companys` VALUES ('535', 'asia', 'เอเชีย เมดิคอล อินดัสตรี้ จำกัด', '', '');
INSERT INTO `companys` VALUES ('536', 'best', 'ร้านเบสแคร์', '', '');
INSERT INTO `companys` VALUES ('537', 'bever', 'Bever madical', '', '');
INSERT INTO `companys` VALUES ('538', 'bio', 'ไบโอคอททอน จำกัด', '', '');
INSERT INTO `companys` VALUES ('539', 'bk', 'กรุงเทพครุภัณฑ์เวชภัณฑ์', '', '');
INSERT INTO `companys` VALUES ('540', 'bo', 'ไบโอเทคนิคัล จำกัด', '', '');
INSERT INTO `companys` VALUES ('541', 'dksh', 'DKSH(Thailand)', '', '');
INSERT INTO `companys` VALUES ('542', 'efor', 'อีฟอร์แอล อินเตอร์เนชั่นแนล จำกัด', '', '');
INSERT INTO `companys` VALUES ('543', 'fcp', 'บ.เอฟ.ซี.พี.จำกัด', '', '23 ถ.สุขุมวิท แขวงบางจาก เขตพระขโนง');
INSERT INTO `companys` VALUES ('544', 'fo', 'บ.โฟร์ ลีฟ เมดิคัล จำกัด', '', '');
INSERT INTO `companys` VALUES ('545', 'gm', 'จีเอ็ม เมดไลน์ จำกัด', '', '');
INSERT INTO `companys` VALUES ('546', 'go', 'กู๊ดแอนด์เกรท พลัส จำกัด', '', '');
INSERT INTO `companys` VALUES ('547', 'good', 'หจก.กู๊ดแอนด์เกรท เมดิคอล', '', '');
INSERT INTO `companys` VALUES ('548', 'jong', 'จงที(ไทย)อิมปอร์ตเอ็กซ์ปอร์ต จำกัด', '', '');
INSERT INTO `companys` VALUES ('549', 'kb', 'ร้านเคบี เมดิคอล', '', '');
INSERT INTO `companys` VALUES ('550', 'LF', 'บ.แอลเอฟ เอเชีย (ประเทศไทย)จำกัด', '', '518/5อาคารมณียาเซ็นเตอร์ ช.12 ถ.เพลินจีต ลุมพินี ปทุมวัน');
INSERT INTO `companys` VALUES ('551', 'lim', 'limmer', '', '');
INSERT INTO `companys` VALUES ('552', 'mata', 'บ.มาร์ธา กรุ๊ป จำกัด', '', '77 หมู่1 ถ.ป่าโค ต.บ้านเกาะ อ.พระนครศรีอยุธยา');
INSERT INTO `companys` VALUES ('553', 'mdc', 'M.D.C.(ประเทศไทย) จำกัด', '', '');
INSERT INTO `companys` VALUES ('554', 'medi', 'เมดิท๊อป จำกัด', '', '');
INSERT INTO `companys` VALUES ('555', 'medl', 'Medline', '', '');
INSERT INTO `companys` VALUES ('556', 'mes', 'เมส เทรดดิ้ง จำกัด', '', '');
INSERT INTO `companys` VALUES ('557', 'n&t', 'หจก.เอ็นแอนด์ที เมดิทอ๊ป (2007)', '', '');
INSERT INTO `companys` VALUES ('558', 'ne', 'N.E.medical', '', '');
INSERT INTO `companys` VALUES ('559', 'nort', 'นอร์ทอีส เมดิคอล', '', '');
INSERT INTO `companys` VALUES ('560', 'nova', 'โนว่า เฮลธ์แคร์ จำกัด', '', '');
INSERT INTO `companys` VALUES ('561', 'ok', 'โอเค ซัพพลาย', '', '');
INSERT INTO `companys` VALUES ('562', 'one', 'หจก. เดอะวัน เมดิคอล', '', '');
INSERT INTO `companys` VALUES ('563', 'orex', 'orex', '', '');
INSERT INTO `companys` VALUES ('564', 'pon', 'หจก.พรตรียา', '', '');
INSERT INTO `companys` VALUES ('565', 'pt', 'หจก.พี.ที.แมชชีนเนอร์รี่ดีซายแอนด์เซอร์วิส', 'โทร. 053-398327', '246/63ม.6 ต.หนองจ๊อม อ.สันทราย จ.เชียงใหม่');
INSERT INTO `companys` VALUES ('566', 'pv', 'P.V.แพทย์ภัณฑ์', '', '194/4หมู่6 ต.ในเมือง อ.เมือง จ.ขอนแก่น');
INSERT INTO `companys` VALUES ('567', 's', 'ร้าน s&t ซัพพลาย', '', '');
INSERT INTO `companys` VALUES ('568', 'sano', 'หจก.ชโนดม เทรดดิ้ง กรุ๊ป', '', '');
INSERT INTO `companys` VALUES ('569', 'scn', 'หจก.เอส ซี เอ็น เมดิคอล', '', '');
INSERT INTO `companys` VALUES ('570', 'sent', 'เซต์ เมดิคอล (คริติคอล) จำกัด', '', '');
INSERT INTO `companys` VALUES ('571', 'sm', 'เอสเอ็มไบโอเทค แอนด์ดีเวลลอปเมนท์', '', '');
INSERT INTO `companys` VALUES ('572', 't@m', 'ที แอนด์ เอ็ม เมดิคอล ซัพพลาย', '', '8ม.1ถ.มัญจาคิรี-บ้านทุ่ม ต.พระยืน อ.พระยืน จ.ขอนแก่น');
INSERT INTO `companys` VALUES ('605', '', 'ห้างหุ้นส่วนจำกัด บึงกาฬคอมพิวเตอร์แอนด์คอมมูนิเคชั่น (สำนักงานใหญ่)', '042-491298', '20/11 ม.1 ต.บึงกาฬ อำเภอเมือง จ.บึงกาฬ 38000');
INSERT INTO `companys` VALUES ('574', 'tnk', 'T.N.K. Intertrade (1993)', '', '');
INSERT INTO `companys` VALUES ('575', 'vr', 'หจก.วีอาร์ซัพพอร์ต', '', '');
INSERT INTO `companys` VALUES ('576', 'vrr', 'วีอาร์ รีแฮปโปร จำกัด', '', '');
INSERT INTO `companys` VALUES ('577', 'yada', 'ญาดา การแพทย์', '091-0615882', '194/41 ถ.ศรีจันทร์ อ.เมืองจ.ขอนแก่น');
INSERT INTO `companys` VALUES ('578', 'zill', 'ซิลลิคฟาร์มา จำกัด', '', '');
INSERT INTO `companys` VALUES ('579', 'zix', 'ซิกม่าสตาร์เมด จำกัด', '', '');
INSERT INTO `companys` VALUES ('580', 'ชัย', 'บ.ชัยศิริ เวชภัณฑ์ จำกัด', '', '76.78 โชคชัย4 แยก84 ลาดพราว้ กทม.');
INSERT INTO `companys` VALUES ('581', 'ยกมา', 'ยอดยกมา', '', '');
INSERT INTO `companys` VALUES ('582', 'เอสเซ้น', 'แอสเซ้นท์ เมดอคอล จำกัด', '', '159/1ถ.ไร่เกาะต้นสำโรง อใประโทน อใ เมือง จ.นครปฐม');
INSERT INTO `companys` VALUES ('584', '', 'บริาัท  มิด-เวสต์ เด็นตอลกรุ๊ป  จำกัด  ', '02-1870597-9', '326-326/1 ซ. ลาดพร้าว  107 ถ.  ลาดพร้าว  แขวงคลองจั่น  เขตบางกะปิ  กทม. 10240');
INSERT INTO `companys` VALUES ('585', '', 'พัชฎบัลลังค์', '093-0846890,088-3265385', 'เลขที่  59 หมู่ 2 ต. ชุมภูพร  อ.ศรีวิไล จ. บึงกาฬ  38210');
INSERT INTO `companys` VALUES ('586', '', 'เดอะ  ริช ไอที  แอนด์  คาร์ออดิโอ ', '042-492959', '1 หมู่ 11  ถ.บึงกาใ-พังดคน  ต. บึงกาใ  อ. เมืองบึงกาฬ  จ. บึงกาฬ  38000');
INSERT INTO `companys` VALUES ('587', '', 'หจก. พัฒนกิจโฮมเอ้กเพรส  (สำนักงานใหญ่) ', '-', '211  ม. 1 ต. ศรีวิไล  อ. ศรีวิไล  จ. บึงกาฬ');
INSERT INTO `companys` VALUES ('588', '', 'หจก. ซันดิสทรบิวเตอร์', '042-343357', '299/21 ถ. ประจักษ์ศิลปาคม  ต. หมากแข้ง  อ.เมือง  จ. อุดรธานี  41000');
INSERT INTO `companys` VALUES ('589', 'หจก.เซี่ยงไฮ้ทันตภัณฑ์', 'หจก.เซี่ยงไฮ้ทันตภัณฑ์', '0208663477-81', '605/13-15 ถ.อิสรภาพ แขวงบ้านช่าหล่อ ขตบางกอกน้อย กรุงทพฯ 10700');
INSERT INTO `companys` VALUES ('590', 'ห้างหุ้นส่วนจำกัด เอ็มมีเน้นซ์', 'ห้างหุ้นส่วนจำกัด เอ็มมีเน้นซ์', '029101252-8', '3 ซอยประชานุกูล 3 ถนนรัชฎาภิเษก แขวงวงศ์สว่าง เขตบางซื่อ กรุงเทพฯ 10800');
INSERT INTO `companys` VALUES ('591', 'บริษัท เอสดีเอส คอร์  จำกัด', 'บริษัท เอสดีเอส คอร์  จำกัด', '025115242', '10/29 หมู่ 11 ซ.ล้าดพร้าว 28 ถ.ลาดพร้าว แขวงจอมพล เขตจตุจักร กรุงทพฯ 10900');
INSERT INTO `companys` VALUES ('593', 'บริษัท เอ็กซา ซีแลม จำกัด', 'บริษัท เอ็กซา ซีแลม จำกัด', '053380801-2', '213 หมู่ 5 ต.สันพระเนตร อ.สันทราย จ.เชียงใหม่ 50210');
INSERT INTO `companys` VALUES ('594', 'DENT-MATE', 'บริษัท เด็นท์-เมท จำกัด', '024728111-3', '679/39-40 5ถ.อิสรภาพ เขตบางกอกใหญ่ กทม.');
INSERT INTO `companys` VALUES ('595', 'KT', 'บริษัท เคที เด็นท์แอนด์ซัพพลาย จำกัด', '025092818', '898/11 ถ.ประเสริฐมนูกิจ แขวงคลองกุ่ม กรุงเทพฯ 10240');
INSERT INTO `companys` VALUES ('596', 'TEGO', 'บริษัท ทีโก เดนทอลแอนด์ เคมีคอล จำกัด', '025386432', '100/23 ซอยโยธินพัฒนา แขวงคลองจั่น เขตบางกะปิ กรุงเทพฯ 10240');
INSERT INTO `companys` VALUES ('597', 'NKH-53002', 'โปรเฟสชั่นแนล เมดิคอล ซายน์ จำกัด', '-', '168/22 ถ.นาคนิวาส แขวงลาดพร้าว เขตลาดพร้าว กรุงเทพฯ 10230');
INSERT INTO `companys` VALUES ('598', 'ศ-010', 'เฟิร์มเมอร์ จำกัด', '-', '26/5 ซ.ลาดพร้าว 122(มหาดไทย 1) ถ.ลาดพร้าว แขวงพลับพลา เขตวังทองหลาง กรุงเทพฯ 10310');
INSERT INTO `companys` VALUES ('599', 'ศ-009', 'เอ็กซ์แล็บ จำกัด', '-', '26/6 ซ.ลาดพร้าว 122 (มหาดไทย 1) ถ.ลาดพร้าว แขวงพลับพลา เขตวังทองหลาง กรุงเทพฯ 10310');
INSERT INTO `companys` VALUES ('600', '', 'ไดแอก ฟอร์ ไลฟ์', '-', '269/1 หมู่ 12 ต.บ้านเป็ด อ.เมืองขอนแก่น จ.ขอนแก่น 40000');
INSERT INTO `companys` VALUES ('601', '', 'อาร์ แอนด์ บี เมดิ ซายน ', '044-298280 / 089-6695116', '216 หมู่ 6 ต.จันทึก อ.ปากช่อง จ.นาคราชสีมา 30130 ');
INSERT INTO `companys` VALUES ('602', '', 'เอ็มพี เม็ดกรุ๊ป จำกัด', '', '');
INSERT INTO `companys` VALUES ('603', 'Dentibur', 'บริษัท เดนติเบอร์ จำกัด', '029326522', '66/50 ถนนลาดพร้าว แขวงวังทองหลาง เขตวังทองหลาง กทม.10310');
INSERT INTO `companys` VALUES ('604', 'h1', 'บริษัท ฮิวเมอร์ริค จำกัด', '044-756-582 FAX.044-756583', '112หมู่4 ต.ธงชัยเหนือ อ.ปักธงชัย จ.นครราชสีมา 30150');
INSERT INTO `companys` VALUES ('606', '', 'หจก.พิมลพานิช บึงกาฬ 2556 (สำนักงานใหญ่)', '093-3197111', '103 ม .3 ต.บึงกาฬ อ.เมืองบึงกาฬ จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('607', '', 'สมบูรณ์การไฟฟ้า', '042-403378', '445/2 ม.1 ต.บึงกาฬ อ.เมืองบึงกาฬ จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('608', '', 'ร้านสุรศักดิ์การยาง', '042-497246', '144 ม.1 ต.ศรีวิไล อ.ศรีวิไล จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('609', '', 'ชุมภูพรบริการ', '042-497037', '1 ม.1 ต.ศรีวิไล อ.ศรีวิไล จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('610', '', 'สยามโกลบอนเฮ้าท์', '', '328 ม.10 ต.บึงกาฬ อ.เมืองบึงกาฬ จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('611', '', 'น้ำดื่มเดวี่', '084-5134619', '253 ม.1 ต.ศรีวิไล อศรีวิไล จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('612', '', 'โมเดอร์น พริ้นเทค แอนด์ เลเบิ้ล จำกัด', '0-2920-7203', '187/18,89 ม.3 ซ.ร่มโพธิ์ทอง ต.บางรัก-พัฒนา ถ.บางกรวย-ไทรน้อย อ.บางบัวทอง จ.นนทบุรี');
INSERT INTO `companys` VALUES ('613', '', 'ห้างหุ้นส่วนจำกัด เอส.ดับบลิว.เอ เอ็นจิเนียริ่ง เซอร์วิส(สำนักงานใหญ่)', '02-873-8880', '23/93 ซ.ประชาอุทิศ 76 แยก 4/2 แขวงทุ่งครุ เขตทุ่งครุ กรุงเทพมหานคร 10140');
INSERT INTO `companys` VALUES ('614', '', 'สยามแม็คโคร จำกัด (มหาชน)', '042-492601', '680 ม.7 ต.วิศิษฐ์  อ.เมืองบึงกาฬ จ.บึงกาฬ');
INSERT INTO `companys` VALUES ('615', '', 'อาร์แอนด์เอ็มเคมีคอล', '083-6728303', '12  ม.3 ต.สำราญราษฎร์ อ.ดอยสะเก็ด จ.เชียงใหม่');
INSERT INTO `companys` VALUES ('616', '', 'พี.ดี.เซฟ.ที.คัท(อุดร) 2000', '042-246718', '232/2 ม.8 บงคำ ตลาดรังษิณา ต.หมากแข้ง อ.เมือง จ.อุดรธานี ');
INSERT INTO `companys` VALUES ('617', '', 'ชาติสยามคอมพิวเตอร์ (สำนักงานใหญ่)', '042-460877', '1211 ถ.เจนจบทิศ ต.ในเมือง อ.เมือง จ.หนองคาย 43000');

-- ----------------------------
-- Table structure for credits
-- ----------------------------
DROP TABLE IF EXISTS `credits`;
CREATE TABLE `credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_id` int(11) DEFAULT NULL COMMENT 'เลขที่',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `date_receive` date DEFAULT NULL COMMENT 'รับจากขนส่ง',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `number_anumad` varchar(8) DEFAULT NULL COMMENT 'เลขที่อนุมัติ',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `budget` varchar(100) DEFAULT NULL COMMENT 'เงินงบ',
  `date_instock` date DEFAULT NULL COMMENT 'วันที่รับเข้าคลัง',
  `number_instock` varchar(10) DEFAULT NULL COMMENT 'เลขที่รับเข้าคลัง',
  `send_credit` smallint(6) DEFAULT '0' COMMENT 'รายงานเจ้าหนี้',
  `send_boss` smallint(6) DEFAULT '0' COMMENT 'เสนอ ผอก.',
  `send_boss_date` date DEFAULT NULL COMMENT 'วันที่เสนอผอก.',
  `number_pay` varchar(20) DEFAULT NULL COMMENT 'เลขที่อนุมัตืจ่าย',
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `user_id` int(11) DEFAULT NULL,
  `send_credit_date` date DEFAULT NULL COMMENT 'วันที่ส่งเจ้าหนี้',
  `credit_confirm_date` date DEFAULT NULL COMMENT 'วันที่รับรู้หนี้',
  `pay_confirm` smallint(6) DEFAULT '0' COMMENT 'ชำระแล้ว',
  `pay_date` date DEFAULT NULL COMMENT 'วันที่ชำระ',
  `date_check` date DEFAULT NULL COMMENT 'วันที่ออกเช็ค',
  `number_check` varchar(20) DEFAULT NULL COMMENT 'เลขที่เช็ค',
  `bank` varchar(100) DEFAULT NULL COMMENT 'ธนาคาร',
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of credits
-- ----------------------------
INSERT INTO `credits` VALUES ('2', '151', '2', '2016-05-19', '558', '', '592060', '558-592060', '17400.0000', '', null, '', '1', '0', null, null, '', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('3', '148', '2', '2016-05-19', '464', '', 'iv5914519', '464-iv5914519', '61900.0000', '', null, '', '1', '0', null, null, '', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('4', '150', '2', '2016-05-19', '299', '', '590502293', '299-590502293', '8988.0000', '', null, '', '1', '0', null, null, '', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('5', '147', '2', '2016-05-19', '121', '', '5321835490', '121-5321835490', '30195.4000', '', null, '', '1', '0', null, null, '', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('6', '146', '2', '2016-05-19', '543', '', '103160500068', '543-103160500068', '4654.5000', '', null, '', '1', '0', null, null, '', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('7', '145', '2', '2016-05-19', '562', '', '59/0610', '562-59/0610', '11760.0000', '1', null, '', '1', '0', null, null, '2559', '10', '2016-05-23', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('8', '64', '1', '2016-04-25', '66', '4398', 'IV1602718', '66-IV1602718', '53030.0000', '1', '2016-04-28', '59042807', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('9', '63', '1', '2016-04-25', '392', '4397', 'SS5912717', '392-SS5912717', '6000.0000', '1', '2016-04-28', '59042806', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('10', '62', '1', '2016-04-25', '326', '4396', 'DIS160405-139', '326-DIS160405-139', '2900.0000', '1', '2016-04-28', '59042805', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('11', '61', '1', '2016-04-25', '33', '4395', 'SI0001/59031861', '33-SI0001/59031861', '2730.0000', '1', '2016-04-28', '59042804', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('12', '60', '1', '2016-04-25', '152', '4394', '0376302', '152-0376302', '2500.0000', '1', '2016-04-28', '59042803', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('13', '58', '1', '2016-04-25', '470', '4392', 'IV5904000837', '470-IV5904000837', '1100.0000', '1', '2016-04-28', '59042801', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('14', '59', '1', '2016-04-25', '145', '4393', '22050249', '145-22050249', '0.0000', '1', '2016-04-28', '59042802', '1', '0', null, null, '2559', '10', '2016-05-16', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('15', '53', '1', '2016-04-08', '2', '4340', '81068846', '2-81068846', '1300.0000', '1', '2016-04-19', '59041901', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('16', '52', '1', '2016-04-08', '2', '4341', '81068851', '2-81068851', '3600.0000', '1', '2016-04-19', '59041902', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('17', '51', '1', '2016-04-08', '121', '4342', '5321638850', '121-5321638850', '11395.5000', '1', '2016-04-19', '59041903', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('18', '50', '1', '2016-04-08', '121', '4343', '5321639166', '121-5321639166', '1605.0000', '1', '2016-04-19', '59041904', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('19', '49', '1', '2016-04-08', '51', '4344', '591028991', '51-591028991', '8000.0000', '1', '2016-04-19', '59041905', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('20', '48', '1', '2016-04-08', '51', '4345', '591028932', '51-591028932', '2100.0000', '1', '2016-04-19', '59041906', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('21', '47', '1', '2016-04-08', '51', '4346', '591029003', '51-591029003', '460.0000', '1', '2016-04-19', '59041907', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('22', '46', '1', '2016-04-08', '51', '4347', '591029911', '51-591029911', '7600.0000', '1', '2016-04-19', '59041908', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('23', '45', '1', '2016-04-08', '473', '4348', '59109213', '473-59109213', '2800.0000', '1', '2016-04-19', '59041909', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('24', '44', '1', '2016-04-08', '473', '4349', '59109214', '473-59109214', '1800.0000', '1', '2016-04-19', '59041910', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('25', '57', '2', '2016-04-22', '121', '2559155', '5321643753', '121-5321643753', '31543.6000', '1', '2016-05-26', '48/2559', '1', '0', null, null, '2559', '10', '2016-05-03', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('26', '56', '2', '2016-04-22', '572', '25590154', '0227', '572-0227', '6500.0000', '1', '2016-05-26', '48/2559', '1', '0', null, null, '2559', '10', '2016-05-03', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('27', '43', '1', '2016-04-08', '473', '4350', '59109211', '473-59109211', '1490.0000', '1', '2016-04-19', '59041911', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('28', '42', '1', '2016-04-08', '473', '4351', '59109212', '473-59109212', '3950.0000', '1', '2016-04-19', '59041912', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('29', '41', '1', '2016-04-08', '473', '4352', '59109210', '473-59109210', '2157.6000', '1', '2016-04-19', '59041913', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('30', '40', '1', '2016-04-08', '500', '4353', '59005868', '500-59005868', '3300.0000', '1', '2016-04-19', '59041914', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('31', '39', '1', '2016-04-08', '500', '4354', '59005865', '500-59005865', '30900.0000', '1', '2016-04-19', '59041915', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('32', '38', '1', '2016-04-08', '500', '4355', '59005867', '500-59005867', '7375.0000', '1', '2016-04-19', '59041916', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('33', '37', '1', '2016-04-08', '500', '4356', '59005866', '500-59005866', '29500.0000', '1', '2016-04-19', '59041917', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('34', '36', '1', '2016-04-08', '474', '4357', 'T5903/12987', '474-T5903/12987', '7670.0000', '1', '2016-04-19', '59041918', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('35', '35', '1', '2016-04-08', '474', '4358', 'T5903/12990', '474-T5903/12990', '4500.0000', '1', '2016-04-19', '59041919', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('36', '34', '1', '2016-04-08', '476', '4359', 'V011367', '476-V011367', '4800.0000', '1', '2016-04-19', '59041920', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('37', '33', '1', '2016-04-08', '476', '4360', 'V011368', '476-V011368', '6000.0000', '1', '2016-04-19', '59041921', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('38', '32', '1', '2016-04-08', '516', '4361', '8102406114', '516-8102406114', '35999.0800', '1', '2016-04-19', '59041922', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('39', '31', '1', '2016-04-08', '298', '4362', '8102114704', '298-8102114704', '22951.5000', '1', '2016-04-19', '59041923', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('40', '30', '1', '2016-04-08', '470', '4363', 'IV5903003951', '470-IV5903003951', '14925.0000', '1', '2016-04-19', '59041924', '1', '0', null, null, '2559', '10', '2016-04-22', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('41', '29', '1', '2016-04-08', '470', '4364', 'IV5903002584', '470-IV5903002584', '2016.0000', '1', '2016-04-19', '59041925', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('42', '28', '1', '2016-04-08', '395', '4365', '1160309223', '395-1160309223', '1337.5000', '1', '2016-04-19', '59041926', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('43', '27', '1', '2016-04-08', '395', '4366', '1160309074', '395-1160309074', '7308.1000', '1', '2016-04-19', '59041927', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('44', '26', '1', '2016-04-08', '224', '4367', '501146', '224-501146', '7250.0000', '1', '2016-04-19', '59041928', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('45', '25', '1', '2016-04-08', '224', '4368', '501139', '224-501139', '4750.0000', '1', '2016-04-19', '59041929', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('46', '24', '1', '2016-04-08', '418', '4369', 'SI24/1601691', '418-SI24/1601691', '925.0000', '1', '2016-04-19', '59041930', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('47', '23', '1', '2016-04-08', '418', '4370', 'SI24/1601690', '418-SI24/1601690', '1000.0000', '1', '2016-04-19', '59041931', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('48', '22', '1', '2016-04-08', '418', '4371', 'SI24/1601689', '418-SI24/1601689', '1350.0000', '1', '2016-04-19', '59041932', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('49', '21', '1', '2016-04-08', '418', '4372', 'SI24/1601688', '418-SI24/1601688', '3500.0000', '1', '2016-04-19', '59041933', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('50', '20', '1', '2016-04-08', '418', '4373', 'SI24/1601687', '418-SI24/1601687', '2900.0000', '1', '2016-04-19', '59041934', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('51', '19', '1', '2016-04-08', '326', '4374', 'DIS160329-049', '326-DIS160329-049', '6000.0000', '1', '2016-04-19', '59041935', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('52', '18', '1', '2016-04-08', '159', '-', 'A9005094', '159-A9005094', '53693.1500', '1', '2016-04-19', '59041954', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('53', '17', '1', '2016-04-08', '498', '4375', 'IV1604402', '498-IV1604402', '3468.7500', '1', '2016-04-19', '59041936', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('54', '16', '1', '2016-04-08', '145', '4376', '22011177', '145-22011177', '28087.5000', '1', '2016-04-19', '59041937', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('55', '15', '1', '2016-04-08', '468', '4377', 'TH5903/0324', '468-TH5903/0324', '5250.0000', '1', '2016-04-19', '59041938', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('56', '14', '1', '2016-04-08', '491', '4378', 'C5903065', '491-C5903065', '2700.0000', '1', '2016-04-19', '59041939', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('57', '13', '1', '2016-04-08', '335', '4379', 'IV5907159', '335-IV5907159', '1000.0000', '1', '2016-04-19', '59041940', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('58', '12', '1', '2016-04-08', '339', '4380', 'C118560', '339-C118560', '4650.0000', '1', '2016-04-19', '59041941', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('59', '11', '1', '2016-04-08', '246', '4381', '117159', '246-117159', '17025.0000', '1', '2016-04-19', '59041942', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('60', '10', '1', '2016-04-08', '71', '4382', '1059007986', '71-1059007986', '32480.0000', '1', '2016-04-19', '59041943', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('61', '9', '1', '2016-04-08', '268', '4383', 'IV5903-527', '268-IV5903-527', '5500.0000', '1', '2016-04-19', '59041944', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('62', '8', '1', '2016-04-08', '358', '4384', 'ORV5903000079', '358-ORV5903000079', '7350.0000', '1', '2016-04-19', '59041945', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('63', '7', '1', '2016-04-08', '72', '4385', '59014256', '72-59014256', '4280.0000', '1', '2016-04-19', '59041946', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('64', '6', '1', '2016-04-08', '351', '4386', 'INV-L-IV\\2016040135', '351-INV-L-IV\\2016040135', '10200.0000', '1', '2016-04-19', '59041947', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('65', '5', '1', '2016-04-08', '84', '4387', 'DH5900597', '84-DH5900597', '2700.0000', '1', '2016-04-19', '59041948', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('66', '4', '1', '2016-04-08', '104', '4388', 'IV590306352', '104-IV590306352', '66460.0000', '1', '2016-04-19', '59041949', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('67', '3', '1', '2016-04-08', '283', '4389', 'IV59040095', '283-IV59040095', '2650.0000', '1', '2016-04-19', '59041950', '1', '0', null, null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, null);
INSERT INTO `credits` VALUES ('68', '2', '1', '2016-04-08', '335', '4390', 'IV5907730', '335-IV5907730', '2440.0000', '1', '2016-04-19', '59041951', '1', '1', '2016-08-28', null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, '2016-08-29 00:15:50');
INSERT INTO `credits` VALUES ('69', '1', '1', '2016-04-08', '212', '4391', 'C 5901375', '212-C 5901375', '5136.0000', '1', '2016-04-19', '59041952', '1', '1', '2016-08-28', null, '2559', '10', '2016-04-28', '2016-05-30', '0', null, null, null, null, '2016-08-28 22:42:12');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'หน่วยงาน',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'บริหารทั่วไป');
INSERT INTO `departments` VALUES ('2', 'คอมพิวเตอร์');
INSERT INTO `departments` VALUES ('3', 'เภสัชกรรม');
INSERT INTO `departments` VALUES ('4', 'ทันตกรรม');
INSERT INTO `departments` VALUES ('5', 'ชันสูตร');
INSERT INTO `departments` VALUES ('6', 'กลุ่มการพยาบาล');

-- ----------------------------
-- Table structure for disp
-- ----------------------------
DROP TABLE IF EXISTS `disp`;
CREATE TABLE `disp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `department_id` int(11) DEFAULT NULL COMMENT 'แผนก',
  `amount` varchar(255) DEFAULT NULL COMMENT 'จำนวนเงิน',
  `createdate` datetime DEFAULT NULL COMMENT 'วันที่จ่าย',
  `updatedate` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'ผู้บันทึก',
  `remark` varchar(255) DEFAULT NULL COMMENT 'อื่นๆ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disp
-- ----------------------------
INSERT INTO `disp` VALUES ('1', '1', null, '10000', '2016-08-08 00:00:00', null, null, '');

-- ----------------------------
-- Table structure for drugplan
-- ----------------------------
DROP TABLE IF EXISTS `drugplan`;
CREATE TABLE `drugplan` (
  `Gr_Code` varchar(255) DEFAULT NULL,
  `ORDER` varchar(255) DEFAULT NULL,
  `CODE1` varchar(255) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `DEF` varchar(255) DEFAULT NULL,
  `Original` varchar(255) DEFAULT NULL,
  `Gpo` varchar(255) DEFAULT NULL,
  `PACKING` varchar(255) DEFAULT NULL,
  `U_RATE1` varchar(255) DEFAULT NULL,
  `U_RATE2` varchar(255) DEFAULT NULL,
  `U_RATE3` varchar(255) DEFAULT NULL,
  `AVE_RATE` varchar(255) DEFAULT NULL,
  `STOCK` varchar(255) DEFAULT NULL,
  `USE_YEAR` varchar(255) DEFAULT NULL,
  `PRICE` varchar(255) DEFAULT NULL,
  `T_BN_QUAN` varchar(255) DEFAULT NULL,
  `T_BN_VAL` varchar(255) DEFAULT NULL,
  `T_BD_QUAN` varchar(255) DEFAULT NULL,
  `T_BD_VAL` varchar(255) DEFAULT NULL,
  `BN_1_QUAN` varchar(255) DEFAULT NULL,
  `S_Code` varchar(255) DEFAULT NULL,
  `ListType` varchar(255) DEFAULT NULL,
  `Unit` varchar(255) DEFAULT NULL,
  `GPSC` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugplan
-- ----------------------------
INSERT INTO `drugplan` VALUES ('18', '', '1000000', '', 'Roxithromycin', 'tab', '150mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '1001430000041211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1000010', '', 'Azithromycin', '', '250mg', '9', 'เท็จ', 'จริง', '6', '', '', '', '', '', '', '', '', '', '', '', '170', '', 'ง', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010110', '', 'Ketamine HCL', 'inj', '50mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010150', '', 'Mepivacaine', '', '2%w/v 1.8ml', '9', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'คาทริดจ์', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010151', '', 'Articaine hydrochloride 4 %', '', '1.7ml', '9', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'คาทริดจ์', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010160', '', 'Lidocaine Jelly', 'gel', '20% 30g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '133.75', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010170', '', 'Lidocaine HCL', 'inj', '2%w/v 50ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1005581330009209101', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('20', '', '1010180', '', 'Oxygen', '', 'ถัง', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ถัง', '');
INSERT INTO `drugplan` VALUES ('16', '', '1010181', '', 'Propofol', 'inj', '10mg/ml 20ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('12', '', '1010200', '', 'Tetracaine eye drop', 'sol', '0.5% 15ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '74.9', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1010210', '', 'Sodium bicarbonate ear drop', 'sol', '7.5% v/v 30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1010211', '', 'Timolol eye drop', 'sol', '', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020010', '', 'Paracetamol', 'tab', '325mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1007520000043502203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020040', '', 'Paracetamol', 'inj', '300mg/2ml 2ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1007520000013905101', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020070', '', 'Aspirin', 'tab', '300mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '284.192', '', '', '', '', '', '1007360000043201204', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1020071', '', 'Clopidogrel bisulfate', 'tab', '75 mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '', '', '', '', '', '103.25', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1020080', '', 'Aspirin', 'tab', '81mg', '1', 'เท็จ', 'เท็จ', '2000', '', '', '', '', '', '', '', '', '', '', '', '', '1007360000040001204', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1020090', '', 'CPM', 'syr', '2mg/5ml 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '5', '1000081900004502305', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1020100', '', 'Ibuprofen', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1007220000042031203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1020110', '', 'Ibuprofen', 'tab', '400mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1020160', '', 'Allopurinol', 'tab', '100mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '225.021', '', '', '', '', '', '1000060000040212203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1020180', '', 'Colchicine', 'tab', '0.6mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '32.1', '', '', '', '', '', '1000010000032401203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020260', '', 'Paracetamol', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1007520000044931203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020270', '', 'Paracetamol', 'syr', '120mg/5ml 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '8.025', '', '', '', '', '6.95', '1007520000009403305', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020280', '', 'Morphine Sulphate', 'inj', '10mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020281', '', 'Morphine Sulfate SR', 'tab', '30mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020282', '', 'Morphine sulfate SR', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1020283', '', 'Pethidine HCL', 'inj', '50mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('17', '', '1030110', '', 'Tramadol', 'cap', '50mg', '1', 'เท็จ', 'เท็จ', '250', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1030120', '', 'Triamcinolone', 'inj', '10mg/ml 1ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1040060', '', 'Pralidoxime (2-PAM)', 'inj', '1g vial', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '260.01', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1040070', '', 'N-Acetylcysteine', 'inj', '100mg/ml 3ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '28.034', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1040080', '', 'Naloxone', 'inj', '400mcg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('20', '', '1040090', '', 'N-acetylcysteine', 'pwd', '100mg/sac 5g', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('01', '', '1040100', '', 'Activated Charcoal', 'pwd', '50g/sac', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '51.681', '', '', '', '', '51.63', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050010', '', 'Carbamazepine', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '695.5', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050020', '', 'Diazepam', 'inj', '10mg/2ml 2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '3.4', '1008540000007002101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '1050030', '', 'Magnesium sulfate', 'inj', '50% 2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '6.42', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050040', '', 'Phenobarbital', 'tab', '30mg', '1', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '97.37', '', '', '', '', '95', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050050', '', 'Phenobarbital', 'tab', '60mg', '1', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '128.4', '', '', '', '', '128.4', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1050070', '', 'Baclofen', 'tab', '10 mg', '1', 'เท็จ', 'เท็จ', '200', '', '', '', '', '', '', '660.083', '', '', '', '', '', '1004750000036201203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050080', '', 'Phenytoin', 'cap', '100mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '516.81', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050081', '', 'Phenytoin', 'inj', '250mg/5ml 5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050090', '', 'Sod. Valproate (Depakine Chrono)', 'tab', '500mg', '1', 'จริง', 'เท็จ', '30', '', '', '', '', '', '', '379.85', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050091', '', 'Sod. Valproate', 'syr', '200mg/ml 60ml', '1', 'จริง', 'เท็จ', '1', '', '', '', '', '', '', '235.4', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050092', '', 'Piracetam', 'tab', '800 mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1050093', '', 'Sod.Valproate(200)', 'tab', '200 mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1060010', '', 'CPM', 'tab', '4mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1000081900034711203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1060030', '', 'CPM', 'inj', '10mg/ml 1ml', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '2.25', '', '', '', '', '2.24', '1000081900008012101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1060090', '', 'Sofra-tulle(Framycetin sulphate)', 'pcs', '1%', '2', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '1002042800020403422', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('20', '', '1060100', '', 'CPM', 'tab', '2mg', '1', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '', '', '', '', '', '97', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1060110', '', 'Bastigras', 'pcs', '', '2', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ชิ้น', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070020', '', 'Metronidazole', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '313.51', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070030', '', 'Albendazole', 'tab', '200 mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '250.059', '', '', '', '', '250', '1000700000042031203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070040', '', 'Mebendazole', 'tab', '100mg', '1', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '', '', '', '', '', '255', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070060', '', 'Niclosamide', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '133.75', '', '', '', '', '', '1000770000044931203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070090', '', 'Amoxicillin', 'syr', '125mg/5ml 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '19.581', '', '', '', '', '', '1001760000009503306', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070100', '', 'Amoxicillin', 'cap', '250mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '1712', '', '', '', '', '', '1001760000042932201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070110', '', 'Amoxicillin', 'cap', '500mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '1658.5', '', '', '', '', '', '1001760000044931201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070150', '', 'Ampicillin', 'inj', '250mg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '6.099', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070160', '', 'Ampicillin', 'inj', '500mg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '10.058', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070170', '', 'Ampicillin', 'inj', '1g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '12.091', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070190', '', 'Penicillin G sod.', 'inj', '1mu', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '7.811', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070200', '', 'Penicillin G sod.', 'inj', '5mu.', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '13.91', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070210', '', 'Cloxacillin', '', '250mg', '9', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070230', '', 'Cloxacillin', 'inj', '1g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '14.552', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070240', '', 'Cloxacillin', '', '125mg/5ml 60ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070250', '', 'Penicillin V', 'tab', '125mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070260', '', 'Penicillin V', 'tab', '250mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070310', '', 'Amikacin', 'inj', '500mg/2ml 2ml', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '32.1', '', '', '', '', '32', '', 'ข', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070320', '', 'Gentamicin', 'inj', '80mg/2ml 2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '5.885', '', '', '', '', '5.35', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070360', '', 'Clindamycin', 'inj', '150mg/ml 4ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '292.11', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070370', '', 'Clarithromycin', 'tab', '250mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '670', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070380', '', 'Erythromycin', 'syr', '125mg/5ml 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1001411050009503306', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070381', '', 'Erythromycin', 'tab', '250 mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070390', '', 'Cefazolin', 'inj', '1g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '13.589', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070400', '', 'Cephalexin', 'cap', '500mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '294.25', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070440', '', 'Doxycycline', 'cap', '100mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '729.74', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070460', '', 'Co-trimoxazole', 'tab', 'TMP80+SMZ400mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '768.58', '', '', '', '', '275', '2100105000183201203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1070461', '', 'Sulfasalazine', '', '500mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '642', '', '', '', '', '', '', 'ค', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070470', '', 'Co-trimoxazole', 'sus', 'TMP40+SMZ400mg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '10.7', '', '', '', '', '9.5', '2100105000174081304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070480', '', 'Co-trimoxazole', 'inj', 'TMP80+SMZ400mg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070500', '', 'Metronidazole', 'inj', '500mg/100 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070540', '', 'Dapsone', 'tab', '100mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '550.087', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070600', '', 'Ethambutol', 'tab', '400mg', '12', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070601', '', 'Ethambutol', 'tab', '500mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '223.8012', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070610', '', 'Isoniazid', 'tab', '100mg', '12', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '', '', '', '', '', '63.23', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070620', '', 'Pyrazinamide', 'tab', '500mg', '12', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '2100.09', '', '', '', '', '1050', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070630', '', 'Rifampicin', 'cap', '300mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '583.69', '', '', '', '', '360', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070640', '', 'Rifampicin', 'cap', '450mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '875.53', '', '', '', '', '495', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070641', '', 'Rifater (R150mgH75mgZ400mgE275mg)', 'tab', '', '12', 'เท็จ', 'เท็จ', '84', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070642', '', 'Rifam300mg+Isoniazid150mg(Rifinah300)', 'tab', '', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070643', '', 'Rifam 150 mg+Isoniazid 100 mg', 'tab', '', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070650', '', 'Streptomycin', 'inj', '1g vial', '12', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070660', '', 'Amphotericin B', '', '50mg vial', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '402.32', '', '', '', '', '', '', 'ค', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070680', '', 'Griseofulvin', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070690', '', 'Ketoconazole', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '250', '', '', '', '', '', '', '625', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070691', '', 'Ketoconazole shampoo', 'sol', '2%w/w', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070710', '', 'Fluconazole', 'cap', '200mg', '1', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '330', '', 'ข', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1070880', '', 'Norfloxacin', '', '200mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071050', '', 'Chloroquine', 'tab', '250mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071051', '', 'Hydroxychloroquine', 'tab', '200 mg', '1', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ข', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071060', '', 'Ofloxacin', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ข', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071070', '', 'Primaquine', 'tab', '15mg', '1', 'เท็จ', 'เท็จ', '250', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071080', '', 'Norfloxacin', 'tab', '400mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '1001790000044102203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1071110', '', 'ยาฟ้าทะลายโจรสกัดแคปซูล', 'cap', '450 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '121.98', '4100000004791350201', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '1071120', '', 'Ciprofloxacin', 'tab', '250mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '730.81', '', '', '', '', '', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1072010', '', 'Ciprofloxacin', 'inj', '200mg/100ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ง', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('07', '', '1080020', '', 'Ergotamine+caffeine', 'tab', '1mg+100 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '440.091', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1080050', '', 'Flunarizine', 'cap', '5mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '320', '', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1080060', '', 'Propranolol', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1004430000036201203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1080070', '', 'Metoprolol tartrate', 'tab', '100 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1004400000040212203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1080807', '', 'ว่านชักมดลูก', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('03', '', '1090070', '', 'Methotrexate', 'tab', '2.5mg', '1', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '295.0525', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1100030', '', 'Trihexyphenidyl', 'tab', '2mg', '1', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '104.86', '', '', '', '', '104.81', '1003821330033611203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1100050', '', 'Trihexyphenidyl', 'tab', '5mg', '1', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '170.23', '', '', '', '', '170.23', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1100051', '', 'Madopa (Levodopa+Benserazide HCl)', 'tab', '200mg+50mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '1172.72', '', '', '', '', '', '2140401000180671203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1110030', '', 'phytomemadione', 'inj', '1mg/0.5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '1110040', '', 'Phytomenadione', 'inj', '10mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '13.01544', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '1110050', '', 'Phytomenadione', '', '2mg/0.2ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '21.614', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1110110', '', 'Wafarin', 'tab', '3mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '438.7', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1110140', '', 'Ferrous sulfate', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130030', '', 'Isosorbide dinitrate', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '270', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130100', '', 'Nifedipine', 'tab', '5 mg', '2', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130101', '', 'Nicardipine HCL', 'cap', '40 mg', '2', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130102', '', 'Nicardipine', 'inj', '1mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130103', '', 'Streptokinase', 'inj', '1.5 mu', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130104', '', 'Mannitol', 'sol', '20% 250 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130200', '', 'Enalapril', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1006190000035211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130210', '', 'Enalapril', 'tab', '20mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1006190000037211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130230', '', 'Methyldopa', 'tab', '250mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1005980000042932217', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130280', '', 'Digoxin', 'tab', '0.25mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '175.052', '', '', '', '', '', '1005710000031222203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130300', '', 'risperidone', 'tab', '2 mg', '1', 'เท็จ', 'เท็จ', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1130301', '', 'risperidone', 'tab', '1 mg', '1', 'เท็จ', 'เท็จ', '60', '', '', '', '', '', '', '', '', '', '', '', '132', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1130302', '', 'sertraline', 'tab', '50 mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '150', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130310', '', 'Dopamine', 'inj', '250mg/10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130320', '', 'Adrenaline', 'inj', '1mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '3.21', '1003880000005313101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130630', '', 'Amiodarone', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '542.276', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130641', '', 'Adenosine', 'inj', '6mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '438.343', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130650', '', 'Atenolol', 'tab', '50mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '140.063', '', '', '', '', '', '1004390000038501203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1130651', '', 'Povidone iodine scrub', 'sol', '7.5% 450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1021660000012805410', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130660', '', 'Isosorbide dinitrate', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '1177', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130680', '', 'Atenolol', '', '100mg', '9', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '291.575', '', '', '', '', '', '1004390000040212203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130690', '', 'Amlodipine', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '100', '1248130000035211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1130700', '', 'Simvastatin', 'tab', '20mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1055730000037211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1140010', '', 'Silver sulfadiazine', 'cre', '1% 450g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '389.266', '', '', '', '', '', '1002860000020406401', 'ก', 'กระป๋อง', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140090', '', 'Prednisolone', 'cre', '0.5% 5g', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '5.35', '', '', '', '', '5.35', '1013910000019701401', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140101', '', 'Triamcinolone', 'cre', '0.02% 5g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140110', '', 'Triamcinolone', 'cre', '0.1% 5g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1011740090019002401', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140420', '', 'Clotrimazole', 'cre', '1%w/w 15g', '1', 'จริง', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '35', '1001030000020406401', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140430', '', 'Calamine lotion', 'lot', '60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2040401000870901404', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('17', '', '1140500', '', 'Analgesic balm', '', '15g', '9', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '12', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140520', '', 'Whitfield\'s ointment', 'oin', '15g', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '5', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140521', '', 'Benzylbenzoate', '', '60ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140522', '', 'White Vaseline', 'gel', '45 g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'กระปุก', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140523', '', 'White Vaseline', 'gel', '450 g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'กระปุก', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140530', '', 'Podophyllin paint', 'sol', '15 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140531', '', 'Silver nitrate', 'cry', '30 g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1140560', '', 'Chlortetracycline eye oint', 'oin', '1% 5g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2040101100475541602', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '1140561', '', 'Scabicide emulsion', 'sol', '25%w/v450 ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160100', '', 'Phenolic copound(Pose cresol)', '', '25g', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160101', '', 'pose iodophore', '', '', '9', 'เท็จ', 'เท็จ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160150', '', 'Mybacin', 'tab', '10\'s', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160170', '', 'Special mouth wash', 'sol', '250ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160200', '', 'Peracetic acid(Sterex)', 'pwd', '0.26 gm', '3', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160220', '', 'Ethyl alcohol', 'sol', '70% 450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '28', '1018040000501602415', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '1160230', '', 'Ethyl alcohol', 'sol', '95% 450 ml', '3', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160250', '', 'Formaldehyde', 'sol', '450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '32.1', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160260', '', 'Hydrogen peroxide', 'sol', '450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '25.78', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160330', '', 'Povidone iodine', 'sol', '10%w/v 450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '82', '1021660000013214415', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160340', '', 'Povidone iodine', 'sol', '10%w/v 30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '15', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160350', '', 'Ethyl alcohol', 'sol', '70%v/v 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '8.5', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '1160360', '', 'NSS irrigate', 'sol', '0.9% 1000ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '29.104', '', '', '', '', '', '1009420000007802415', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170020', '', 'Furosemide', 'tab', '40mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1010700000038411203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170030', '', 'Furosemide', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170040', '', 'Furosemide', 'inj', '20mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '4.82', '1010700000008011101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170050', '', 'Furosemide', 'inj', '250mg/25ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170060', '', 'HCTZ', '', '50mg', '9', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '253.162', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170061', '', 'HCTZ', 'tab', '25 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '90', '1010630000037501203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '1170090', '', 'Spironolactone', 'tab', '25mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1010480000037501203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180080', '', 'Milk of magnesia', 'sus', '240ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1180100', '', 'Dimenhydrinate', 'tab', '50mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1013130000038501203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1180110', '', 'Dimenhydrinate', 'inj', '50mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '3.0028', '', '', '', '', '', '1013130000011712101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180140', '', 'Metoclopramide', 'inj', '10mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '2.68', '1013221330007002101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180170', '', 'Doproct (Hydrocortisone+Zinc oxide+Benzocaine)', 'sup', '7.5mg250mg40mg', '1', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180171', '', 'Glycerin suppo.', 'sup', 'infants', '1', 'เท็จ', 'เท็จ', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('01', '', '1180200', '', 'Atropine', 'inj', '0.6mg/ml', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '2.26', '', '', '', '', '2.25', '1003492800004802101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180210', '', 'Hyoscine', 'inj', '20mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '4.5', '1003540000209210101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('14', '', '1180211', '', 'Spasmo-lyt (Trospium Cl)', 'tab', '20mg', '2', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '1605', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('14', '', '1180212', '', 'Diutropan (Oxybutynin HCl)', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180270', '', 'Bisacodyl', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1012550000035211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180280', '', 'ยาชงชุมเห็ดเทศ', 'pow', '3g sac', '1', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '95.23', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180420', '', 'M.carminative', 'mxt', '180ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '10', '2010201402299999303', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1180430', '', 'Sodium bicarbonate', 'tab', '300 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1009260000043201203', 'ก', 'กล่อง', '');
INSERT INTO `drugplan` VALUES ('22', '', '1180431', '', 'Sodium chloride', 'tab', '600 mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180500', '', 'Hyoscine', 'syr', '30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '9.095', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180540', '', 'Domperidone', 'sus', '5mg/5ml 30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '11.77', '', '', '', '', '', '1013140000005314304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180590', '', 'Domperidone', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1013140000036201203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180610', '', 'Simethicone', 'sus', '67mg/ml 15ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1012540000512401304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180630', '', 'Sodium bicarbonate mixt.', 'syr', '50mg/5ml 60ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180660', '', 'Daflon (Diosmine+Hesperidine)', 'tab', '500mg', '2', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180661', '', 'Daflon(Diosmine+Hesperidine)', 'tab', '500mg', '2', 'เท็จ', 'เท็จ', '250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180670', '', 'Antacid(NED)', 'sus', '240ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2010201400176441304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180671', '', 'Antacid (ED)', 'sus', '240 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180691', '', 'ORS(adult)', 'pwd', '5.5g', '1', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '1010707000199999307', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180702', '', 'ครีมไพล', 'cre', '25g', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '21', '4100000004596010401', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180703', '', 'น้ำมันไพล', 'sol', '60 ml', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180730', '', 'Milk of magnesia', 'sus', '60 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '5.029', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1180750', '', 'Enema(sod.phosphate)', 'sol', '133ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180760', '', 'ยาเม็ดขมิ้นชัน (Curcuminoids)', 'cap', '500 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '112.35', '4100000001091350201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180761', '', 'ครีมพญายอ', 'cre', '10g', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '53.5', '4100000003893018401', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180762', '', 'ครีมบัวบก', 'cre', '7%w/w 10 g', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '4100000003200000201', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180763', '', 'ยาแคปซูลประสะไพล', 'cap', '250 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4200000039500000201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180764', '', 'ใบมะขามแขก', 'cap', '450 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4100000004991450201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180765', '', 'ยาแคปซูลเพชรสังฆาต', 'cap', '500mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4200000021791500201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180766', '', 'ยาแคปซูลเถาวัลย์เปรียง', 'cap', '500 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4100000002300000201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180767', '', 'ชาชงหญ้าดอกขาว', 'pow', '', '10', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180768', '', 'ชาชงขิง', 'pow', '', '10', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '4100000001300000201', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180769', '', 'ชาชงรางจืด', 'pow', '', '10', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '4100000005700000201', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1180770', '', 'ยาแคปซูลรางจืด', 'cap', '', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190020', '', 'Hydrocortisone', 'inj', '100mg/vial', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '51.36', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190030', '', 'Prednisolone', 'tab', '5mg', '1', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '175.8', '', '', '', '', '175.58', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190070', '', 'Norethisterone', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '374.5', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190110', '', 'RI insulin', 'inj', '100u/ml 10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190120', '', 'NPH insulin', 'inj', '100u/ml 10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '310.3', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190121', '', 'NPH insulin penfill', 'inj', '100 u/ml 3 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190130', '', 'Mixtard 30HM', 'inj', '100u/ml 10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '310.3', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190131', '', 'Mixtard 30 penfill', 'inj', '100 u/ml 3 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190180', '', 'Metformin', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '200', '1014340000044931217', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190240', '', 'Thyroxine', 'tab', '100mcg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190260', '', 'Propylthiouracil', 'tab', '50mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190261', '', 'Methimazole', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '1190400', '', 'Dexamethasone', 'inj', '4mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '4.82', '1013800000006803101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190420', '', 'Sulprostone', '', '500mcg', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190430', '', 'Medroxyprogesterone', 'inj', '150mg/3ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1014680060011710101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190440', '', 'L-norgestrel+Ethinylestradiol', 'tab', '0.15mg + 0.03mg', '1', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '2070301101677061218', 'ก', 'แผง', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190441', '', 'Levonorgestrel', 'tab', '0.75 mg', '1', 'เท็จ', 'เท็จ', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190450', '', 'FMP(Norgestrel+EE)', '', '0.5mg+0.05mg', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แผง', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190460', '', 'Lynestrenol(Exluton)', '', '0.5mg', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1014780000032112203', 'ก', 'แผง', '');
INSERT INTO `drugplan` VALUES ('14', '', '1190461', '', 'Lynestrenon(Exluton)', 'tab', '0.5 mg', '1', 'เท็จ', 'เท็จ', '28', '', '', '', '', '', '', '', '', '', '', '', '', '1014780000032112203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('25', '', '1190480', '', 'Condom', 'pcs', '49mm.', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ชิ้น', '');
INSERT INTO `drugplan` VALUES ('25', '', '1190490', '', 'Condom', 'pcs', '52mm.', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ชิ้น', '');
INSERT INTO `drugplan` VALUES ('25', '', '1190491', '', 'Condom', 'pcs', '54 mm.', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', 'ชิ้น', '');
INSERT INTO `drugplan` VALUES ('25', '', '1190492', '', 'สารหล่อลื่นชนิดละลายในน้ำ', 'pcs', '5 ml.', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', 'ชิ้น', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200010', '', 'Anti-Rabies serum (ERIG)', 'inj', '1000iu/5ml 5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1200020', '', 'Anti-cobra serum(งูเห่า)', 'inj', '10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200050', '', 'Tetanus antitoxin', 'inj', '1500iu 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200070', '', 'Diphtheria antitoxin', 'inj', '10000 iu/10 ml', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200110', '', 'Hepatitis B vaccine(adute)', 'inj', '20mcg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200111', '', 'BCG vaccine', 'inj', '', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200112', '', 'Hepatitis A Vaccine(adult)', '', '1dose', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200113', '', 'Hepatitis A Vaccine (pediatric)', '', '1 dose', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200130', '', 'Poliomyelitis Vaccine,live attenuated(OPV)', 'sol', '', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200160', '', 'Tetanus toxoid', 'inj', '0.5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1015560000049801101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200170', '', 'Diptheria-Tetanus vaccine(DT)', 'inj', '', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200171', '', 'Diptheria-Tetanus-Pertussis (DTP)', 'inj', '', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200172', '', 'Japanese encephalitis Vaccine(JE)', 'inj', '20 dose', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200173', '', 'Measle-Mump-Rubella vaccine (MMR)', 'inj', '', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200180', '', 'Diphtheria-Tetanus-Pertussis-HepB', 'inj', '2dose/vial', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1200260', '', 'Anti-malayan serum(งูกะปะ)', 'inj', '10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', '1200270', '', 'Rabies vaccine', 'inj', '0.5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1200280', '', 'Anti-King Cobra serum', 'inj', '10 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1200290', '', 'Anti-Green Pit Viper serum', 'inj', '10 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('17', '', '1210130', '', 'Tolperisone', 'tab', '50mg', '2', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1220030', '', 'Chloramphenicol eye drop', 'sol', '0.5% 10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '9.523', '', '', '', '', '', '1001370000007005605', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1220040', '', 'Chloramphenicol ear drop', '', '5ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('12', '', '1220390', '', 'Poly-oph', 'sol', '5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('14', '', '1230010', '', 'Methylergometrine', 'inj', '0.2mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '7.00208', '', '', '', '', '', '1022030000104106101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('14', '', '1230020', '', 'Oxytocin', 'inj', '10iu/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250010', '', 'Amitriptyline', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '93.14', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250020', '', 'Amitriptyline', 'tab', '25mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '187.25', '', '', '', '', '187.25', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '1250030', '', 'Nortriptyline', '', '25 mg', '9', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250050', '', 'Chlorpromazine', 'tab', '50mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '365.084', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250070', '', 'Fluphenazine decanoate', 'inj', '25mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250080', '', 'Haloperidol', 'tab', '2mg', '1', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '535', '', '', '', '', '535', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250100', '', 'Fluoxetine', 'tab', '20mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250140', '', 'Diazepam', 'tab', '2mg', '1', 'เท็จ', 'จริง', '500', '', '', '', '', '', '', '50.61', '', '', '', '', '50.34', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250150', '', 'Diazepam', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '120', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250200', '', 'Clozapine', 'tab', '100 mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '2700.038', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250300', '', 'Haloperidol', 'tab', '5mg', '1', 'เท็จ', 'จริง', '1000', '', '', '', '', '', '', '856', '', '', '', '', '856', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250301', '', 'Haloperidol', 'tab', '0.5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250311', '', 'Clonazepam', 'tab', '2mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '550.087', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250312', '', 'Clonazepam', 'tab', '0.5mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '250.059', '', '', '', '', '', '', 'ข', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250320', '', 'Chlorpromazine', 'tab', '100mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '257.77', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250330', '', 'Chlorpromazine', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250340', '', 'Haloperidol decanoate', 'inj', '50mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250350', '', 'Haloperidol', 'inj', '5mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '9.722', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250351', '', 'Lithium carbonate', 'cap', '300 mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250360', '', 'Perphenazine', 'tab', '8mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '486.101', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '1250770', '', 'Perphenazine', 'tab', '16mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260050', '', 'Theophylline SR', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260060', '', 'Salbutamol', '', '2mg', '9', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '203.3', '', '', '', '', '', '1001430000041211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260061', '', 'Salbutamol', 'tab', '2 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1001430000041211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260070', '', 'Salbutamol MDI', 'inh', '100mcg/dose', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '139.1', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260071', '', 'Seretide Accuhaler', 'inh', '50/250mcg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '963', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260072', '', 'Seretide Evohaler', 'inh', '25/50mcg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260073', '', 'Seretide Evohaler', 'inh', '25/250 mcg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260080', '', 'Salbutamol', 'syr', '2mg/5ml 60ml', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '8', '', '', '', '', '8', '1004090000004502305', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260090', '', 'Terbutaline sulfate', 'inj', '0.5mg/ml 1ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '8.56', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260091', '', 'Terbutaline sulfate', 'tab', '2.5 mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260160', '', 'Dextromethorphan', 'tab', '15mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '217.21', '', '', '', '', '150', '1011470000036701217', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260170', '', 'M.tussive', 'mxt', '180ml', '1', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '18', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260350', '', 'Salbutamol', 'sol', '0.5% 20ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260380', '', 'Aromatic Ammonia spirit', 'sol', '450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '50.076', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260410', '', 'Guaifenesin', 'syr', '100mg/5ml 60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1011240000109204305', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '1260450', '', 'M.tussive', 'mxt', '60ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '8', '2180504207499999304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260470', '', 'ไพล(แห้ง)', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'กิโลกรัม', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260471', '', 'ขมิ้นชัน(แห้ง)', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260472', '', 'มะกรูด(แห้ง)', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260473', '', 'ว่านนางคำ(แห้ง)', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260474', '', 'ว่านน้ำ(แห้ง)', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260475', '', 'การบูร', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260476', '', 'พิมเสน', 'pwd', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'kg', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260480', '', 'ยาอมมะแว้ง รสบ๊วย', 'tab', '20\'s', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '128.4', '4100000005291250201', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260481', '', 'ไพล(แห้ง)', 'pow', '', '10', 'เท็จ', 'เท็จ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260482', '', 'ลูกประคบสมุนไพร', '.', '1 ชุด', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ชุด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260483', '', 'ยาหอมนวโกศ', 'tab', '200 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4200000051791200203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260484', '', 'ยาสมุนไพรห้าราก', 'cap', '500 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4200000052891300201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260485', '', 'ยาน้ำเชื่อมแก้ไอ มะขามป้อม', 'syr', '', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '4200000030095030947', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260486', '', 'ยาชงหญ้าหนวดแมว', 'pow', '3 g', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '4100000006492003341', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260487', '', 'ยามะระขี้นก', 'cap', '500 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4100000005191500201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260488', '', 'ยาเหลืองปิดสมุทร', 'tab', '100 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '4200000053091100203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260489', '', 'เจลพริกชี้ฟ้า', 'cre', '0.025 %', '10', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '4100000003993903402', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260490', '', 'ยาจันทน์ลีลา', 'cap', '330 g', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260491', '', 'ยาขิงแคปซูล', 'cap', '500 mg', '10', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260492', '', 'ยาธาตุอบเชย', 'syr', '180 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260493', '', 'ยาบำรุงโลหิต', 'pow', '15 g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260494', '', 'ทองพันชั่ง', 'syr', '60 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260495', '', 'ยาเบญจกุล', 'cap', '500 mg', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'กล่อง', '');
INSERT INTO `drugplan` VALUES ('24', '', '1260496', '', 'Aloe gel', 'gel', '30 g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1270020', '', 'Potassium Chloride', 'tab', '500mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '1270040', '', 'ORS (pedreatric)', 'pwd', '3.645g', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '2010707000199999307', 'ก', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('01', '', '1270050', '', 'Calcium gluconate', 'inj', '10%w/v 10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '6.42', '1009770000013214101', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('01', '', '1270051', '', 'Kalimate(Ca polystylene Sulfonate)', 'pwd', '5g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ข', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270070', '', 'D-5-W', 'sol', '500ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '27.392', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270100', '', 'Dextrose', 'inj', '50% 50ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '13.5', '', '', '', '', '', '1009940000015803101', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270130', '', 'Potassium Chloride', 'inj', '20meq/10ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270140', '', 'Potassium chloride (KCL elixir)', 'sol', '20meq/15ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270150', '', 'Lactate Ringer Solution(LRS)', 'sol', '1000ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2110101100499999101', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270160', '', 'Sodium bicarbonate', 'inj', '7.5% 50ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270170', '', 'NSS', 'sol', '1000ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '32.1', '', '', '', '', '', '1009420000007802101', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270171', '', '0.45%Nacl', 'sol', '1000', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270180', '', 'Dextran 40', 'sol', '500 ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270210', '', 'D-5-N/2', 'sol', '1000ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '32.1', '', '', '', '', '', '2110102200175391101', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270211', '', 'D-5-S', 'sol', '1000 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270220', '', 'D-5-N/3', 'sol', '500ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '27.392', '', '', '', '', '', '2110102200175381101', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270250', '', 'D-5-N/5', 'sol', '500ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '27.392', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1270310', '', 'Calcium carbonate', 'tab', '1000mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1022090000026212203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270331', '', 'Sodium Chloride', 'sol', '3% 500ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '32.1', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270380', '', 'Sterile water for inection', 'sol', '100ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '16.05', '', '', '', '', '', '1021851650000000101', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270390', '', 'Sterile water for injection', 'sol', '1000ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '29.104', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270410', '', 'Sterile water for inection', 'sol', '5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '3.8', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '1270430', '', 'NSS', 'sol', '100ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '16.05', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1270440', '', 'Polygelin (Haemacel)', 'sol', '500ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1290010', '', 'Vitamin C', 'tab', '100mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '1018950000040212203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1290030', '', 'Folic acid', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '88.061', '', '', '', '', '', '1018700000035211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1290050', '', 'MTV', 'tab', 'compound', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '210', '2011102000199999203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1290110', '', 'Vitamin B complex', 'tab', 'compound', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '120.62', '2011105100199999203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '1290130', '', 'Vitamin B1', 'inj', '100mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('09', '', '1400020', '', 'Urea cream', 'cre', '20% 50g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('02', '', '1701051', '', 'Quinine dihydrochloride', '', '600mg/2ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('17', '', '2020090', '', 'Mefenamic acid', 'cap', '250mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', '2020140', '', 'Diclofenac', 'tab', '25 mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ข', 'กล่อง', '');
INSERT INTO `drugplan` VALUES ('17', '', '2020150', '', 'Diclofenac', 'inj', '75mg/3ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('17', '', '2020261', '', 'Diclofenac', 'gel', '1% w/w  30g', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '17', '', '', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2060040', '', 'Cyproheptadine', 'tab', '4mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '140.063', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2060070', '', 'Hydroxyzine', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2060090', '', 'Loratadine', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '70', '', 'ข', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070430', '', 'Ceftriaxone', 'inj', '1g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '13.91', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070440', '', 'Ceftazidime', 'inj', '1g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070740', '', 'Lincomycin', '', '300mg/ml 2ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '11.77', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070741', '', 'lincomycin', '', '300mg/ml10ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '19.26', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070900', '', 'Amoxicillin+Clavulanic acid', 'inj', '1.2g  vial', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070970', '', 'Amoxillin+Clavulanate', 'tab', '375mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070990', '', 'Dicloxacillin', 'cap', '250mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '1129.92', '', '', '', '', '', '1001730000042932201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2070991', '', 'Dicloxacillin', 'syr', '62.5mg/5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1001730000008204306', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071030', '', 'Clotrimazole vaginal', 'tab', '100mg 6\'s', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '11.021', '', '', '', '', '', '1001030000040212802', 'ก', 'แผง', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071070', '', 'Albendazole susp.', 'sus', '100mg/5ml 20ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '11', '1000700000009204304', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071110', '', 'Acyclovir', 'tab', '200mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '243.96', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071111', '', 'Acyclovir', '', '250mg', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071120', '', 'Oseltamivir (Tamiflu)', 'cap', '30mg', '12', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071130', '', 'Oseltamivir (Tamiflu)', 'cap', '45mg', '12', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('02', '', '2071140', '', 'Oseltamivir (Tamiflu)', 'cap', '75mg', '1', 'เท็จ', 'เท็จ', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '2110120', '', 'FBC', 'tab', 'compound', '2', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '2011101000299999217', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('22', '', '2110121', '', 'FBC', 'syr', 'compound 120 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '2110122', '', 'Ferrouse sulfate', 'syr', '10 mg/ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('06', '', '2130250', '', 'Prazosin', '', '1mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', '2130550', '', 'Gemfibrozil', 'cap', '300mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1005900000043201201', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('09', '', '2140050', '', 'Acyclovir cream', 'cre', '5g', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '2140360', '', 'Selenium sulfide', 'sol', '2.5% 120ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2140370', '', 'K-Y gelly', 'gel', '50g', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('09', '', '2140460', '', 'Olive oil', 'sol', '450ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('17', '', '2140510', '', 'Analgesic cream', 'cre', '30g', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2130201000222402401', '', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2160120', '', 'Enzymatic detergent', '', '5l', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แกลลอน', '');
INSERT INTO `drugplan` VALUES ('08', '', '2160150', '', 'Triamcinolone Oral Paste', 'gel', '0.1% 1g', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('08', '', '2160160', '', 'Xylocaine viscous(ยาเตรียม)', 'sol', '1%v/v 30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2160200', '', 'Pose -RA', '', '500ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2160210', '', 'Pose Stain Remover#1', 'sol', '500ml', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2160220', '', 'Pose Clean-OR', '', '500ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2160230', '', 'Pose Stain Remover#2', 'sol', '500ml', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '2160300', '', 'Alcohol Handrub', 'gel', '60% 300ml', '3', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '2160340', '', 'Alcohol hand wash', '', '450ml', '9', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('04', '', '2160400', '', 'Pose spray', 'sol', '0.21% 250ml', '3', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180340', '', 'Enama (Sodium chloride)', 'sol', '10ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180440', '', 'Simethicone', 'tab', '80mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1012540000539911203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180470', '', 'Diagest', 'tab', '', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180510', '', 'Hyoscine', 'tab', '10mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '1003540000236201203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180520', '', 'Omeprazole', 'cap', '20mg', '1', 'เท็จ', 'เท็จ', '350', '', '', '', '', '', '', '', '', '', '', '', '', '1013430000037211201', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180521', '', 'Omeprazole', 'inj', '40mg/vial', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180530', '', 'Ranitidine', 'inj', '50mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180540', '', 'Misoprostol(Cytotec)', 'tab', '200 mcg', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', '2180570', '', 'Ranitidine', 'tab', '150mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '1013350000041211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '2190200', '', 'Glipizide', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '1500', '', '', '', '', '', '', '', '', '', '', '', '', '1014440000035211203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('11', '', '2190300', '', 'Pioglitazone HCL', 'tab', '30 mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('12', '', '2220230', '', 'Hista oph', 'sol', '5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '10.165', '', '', '', '', '', '2190107000170541605', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('18', '', '2250160', '', 'Lorazepam', 'tab', '0.5mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '2250170', '', 'Lorazepam', 'tab', '1mg', '1', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('18', '', '2250260', '', 'Dip. Clorazepate', 'cap', '5mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260130', '', 'Berodual MDI', 'inh', '200dose', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '267.5', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260140', '', 'Berodual solution', 'sol', '20ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '214', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260260', '', 'Actifed', 'tab', '60mg+2.5mg', '2', 'เท็จ', 'เท็จ', '250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260261', '', 'Actifed', '', '60mg+2.5mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260270', '', 'Actifed', 'syr', '30mg+1.25mg', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260300', '', 'Bromhexine', 'tab', '8mg', '2', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260310', '', 'Bromhexine', 'syr', '4mg/5ml 60ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('20', '', '2260340', '', 'Budesonide MDI', 'inh', '200mcg 200dose', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '267.5', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('21', '', '2270350', '', 'D-5-W', 'sol', '100ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '16.05', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('07', '', '2280040', '', 'Cinnarizine', 'tab', '25mg', '2', 'เท็จ', 'เท็จ', '1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('07', '', '2280041', '', 'Pyritinol (Encephabol)', 'liq', '120ml', '2', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', '2290120', '', 'Vitamin B complex', 'inj', '2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '2290121', '', 'Vitamin B complex', 'inj', '1 ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('22', '', '2290170', '', 'Vitamin B1-6-12', 'tab', '100mg20mg100mcg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300000', '', 'ซองใส่ยาซิปใส ขนาด 10x15 cm.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300001', '', 'ซองใส่ยาซิปใส ขนาด 7x10 cm.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300002', '', 'ซองใส่ยาซิปใส ขนาด 9x13 cm.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300003', '', 'ซองใส่ยาซิปใส ขนาด 13x20 cm.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300004', '', 'ซองยาซิปใส ขนาด  5x7', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300005', '', 'ซองใส่ยาซิปสีชา ขนาด 7x10 ซม.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300006', '', 'ซองใส่ยาซิปสีชา ขนาด 10x15 ซม.', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('25', '', '2300007', '', 'ซองใส่ยาซิปสีชาอ่อน ขนาด 9X13', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'กก.', '');
INSERT INTO `drugplan` VALUES ('17', '', '2300020', '', 'Serratiopeptidase', 'tab', '5mg', '2', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2300180', '', 'Silymarin', 'tab', '70mg', '2', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('23', '', '2300190', '', 'Lipochol', '', 'combind', '9', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('25', '', '2500000', '', 'ขวดพลาสติค ขนาด 30 ซีซี', 'ขวด', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('25', '', '2500001', '', 'ขวดพลาสติค ขนาด 60 ซีซี', 'ขวด', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('25', '', '2500010', '', 'สติ๊กเกอร์ต่อเนื่อง พิมพ์ฉลากยา', 'ดวง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ม้วน', '');
INSERT INTO `drugplan` VALUES ('25', '', '2500011', '', 'สติ๊กเกอร์ยาน้ำพาราเซตามอล', 'ดวง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ดวง', '');
INSERT INTO `drugplan` VALUES ('25', '', '2500012', '', 'สติ๊กเกอร์ยาน้ำรับประทาน', 'ดวง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ดวง', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600000', '', 'Zidovudine (AZT)', 'cap', '100mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600001', '', 'Zidovudine (AZT)', 'cap', '300mg', '12', 'เท็จ', 'จริง', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600002', '', 'Zidovudine (AZT)', 'syr', '10mg/ml 60ml', '12', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600003', '', 'GPO vir S30(NVP,3TC,d4T)', 'tab', '200,150,30mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600004', '', 'Stavudine(d4T)', 'cap', '30mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600005', '', 'Lamivudine (3TC)', 'tab', '150mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600006', '', 'Nevirapine (NVP)', 'cap', '200mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600007', '', 'Nevirapine', 'syr', '50mg/5ml 60ml', '12', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600008', '', 'Efavirenz', 'tab', '600mg', '12', 'เท็จ', 'จริง', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600009', '', 'Efavirenz', 'tab', '200mg', '12', 'เท็จ', 'จริง', '90', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600010', '', 'Indinavir', 'tab', '400mg', '12', 'เท็จ', 'จริง', '180', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600011', '', 'Ritonavir(Norvir)', 'cap', '100mg', '12', 'เท็จ', 'จริง', '84', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600012', '', 'Tenofovir', 'tab', '300mg', '12', 'เท็จ', 'จริง', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600013', '', 'Zilarvir(3TC,AZT)', 'tab', '150mg+300mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600014', '', 'GPO vir-Z250 (NVP,3TC,AZT)', 'tab', '200mg150mg250mg', '12', 'เท็จ', 'เท็จ', '60', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600015', '', 'Lamivudine (3TC)', 'syr', '10mg/ml 60ml', '12', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600016', '', 'Lopinavir/Ritonavir', 'tab', '200 mg/50 mg', '12', 'เท็จ', 'จริง', '120', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600017', '', 'Lamivudine+Stavudine(Lastavir)', 'tab', '150mg+30mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '530', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600018', '', 'Nevirapine+Lamivudine+AZT', 'tab', '200+150+250mg', '12', 'เท็จ', 'จริง', '60', '', '', '', '', '', '', '', '', '', '', '', '1045', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600019', '', 'Indinavir', 'tab', '200 mg', '12', 'เท็จ', 'จริง', '360', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('26', '', '2600020', '', 'Lamivudine(3TC)', 'tab', '300 mg', '12', 'เท็จ', 'จริง', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จ', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370012', '', 'ซองซิปพิมพ์ สอ. ขนาด 8x12 สีฟ้า', 'ซอง', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ซอง', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370021', '', 'ถุงใส่ยาพิมพ์ 2 หน้า ขนาด 6x12\"', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370022', '', 'ถุงใส่ยาพิมพ์ 2 หน้า ขนาด 7x14\"', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370023', '', 'ถุงใส่ยาพิมพ์ คปสอ ขนาด 6 X 12 \"', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370024', '', 'ถุงใส่ยาพิมพ์ คปสอ ขนาด 7 X 14\"', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370025', '', 'ถุงใส่ยาพิมพ์ 2หน้า 5x12', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('25', '', '4370026', '', 'ถุงหิ้วขนาด 7x15นิ้ว', 'ใบ', '', '4', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ใบ', '');
INSERT INTO `drugplan` VALUES ('02', '', '5030060', '', 'Clindamycin', 'cap', '300mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '470.051', '', '', '', '', '', '', 'ก', 'แคปซูล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'amioxxx', '', 'Amiodarone', 'inj', '150mg/3ml', '1', 'เท็จ', 'เท็จ', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'amlrxxx', '', 'Amiloride+HCTZ', 'tab', '5mg+50mg', '1', 'เท็จ', 'เท็จ', '500', '', '', '', '', '', '', '150.87', '', '', '', '', '', '2030301500183411203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('15', '', 'BCG10xx', '', 'BCG Vaccine', 'inj', '10dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ง', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('18', '', 'cpzixxx', '', 'Chlorpromazine', 'inj', '50mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '3.7', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'cvdlxxx', '', 'Carvedilol', '', '6.25 mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('21', '', 'd5n/2xx', '', 'D-5-N/2', 'sol', '500ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '27.392', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('06', '', 'dgxixxx', '', 'Digoxin inj.', 'inj', '0.500mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'DTP10xx', '', 'DTP Vaccine', 'inj', '10dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'DTPHB02', '', 'DTP+HB Vaccine', 'inj', '2dose/vail', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'DTPHB10', '', 'DTP+HB vaccine', 'inj', '10 dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'vial', '');
INSERT INTO `drugplan` VALUES ('15', '', 'dTx10xx', '', 'dT Vaccine', 'inj', '10dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'dxzsxxx', '', 'Doxazosin', 'tab', '2mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '196', '', '', '', '', '', '1006050000033611203', 'ค', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('15', '', 'HBV02xx', '', 'Hepatitis B Vaccine (EPI)', 'inj', '2dose/vial 1ml', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'HYDRA', '', 'Hydralazine', 'tab', '25 mg', '1', 'จริง', 'เท็จ', '500', '', '', '', '', '', '', '750.07', '', '', '', '', '', '1006531330037501203', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', 'hydra01', '', 'Hydralazine', 'inj', '20 mg', '1', 'เท็จ', 'เท็จ', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'ก', '', '');
INSERT INTO `drugplan` VALUES ('15', '', 'INF1xxx', '', 'Influenza vaccine', 'inJ', '1 dose/0.5 ml', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'vial', '');
INSERT INTO `drugplan` VALUES ('15', '', 'INF4xxx', '', 'Influenza vaccine', 'inj', '4 dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '632', '', 'ก', 'vial', '');
INSERT INTO `drugplan` VALUES ('15', '', 'IPVxxxx', '', 'IPV VACCINE', 'inj', '10 dose/vial', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'JEx01xx', '', 'J.E. Vaccine', 'inj', '1dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'lst100x', '', 'Losartan', 'tab', '100 mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ค', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', 'lstxxxx', '', 'Losartan', 'tab', '50 mg', '1', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '1248890000038501217', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('13', '', 'ltls100', '', 'Lactulose', 'syr', '66.7gm/ 100ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', 'MAMI100', '', 'Plus Fluoride,Iodide', 'tab', '', '2', 'เท็จ', 'เท็จ', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('03', '', 'mcpnlxx', '', 'Mycophenolate mofetil', '', '500 mg', '9', 'เท็จ', 'เท็จ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ง', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('15', '', 'MMR01xx', '', 'Measles-Mumps-Rubella Vaccine', 'inj', '1 dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'MMR10xx', '', 'Measles-Mumps-Rubella Vaccine', 'inj', '10dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('22', '', 'mtvsyru', '', 'MTV syrup', 'syr', 'compound', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2011102000199999305', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('15', '', 'Mxx10xx', '', 'Measles Vaccine', 'inj', '10dose/vial', '8', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'norepxx', '', 'Norepinephrine Bitartrate', 'inj', '4mg/4ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'OPV20xx', '', 'OPV Vaccine', 'ora', '20dose/vial', '8', 'เท็จ', 'จริง', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ก', '', '');
INSERT INTO `drugplan` VALUES ('04', '', 'posei00', '', 'pose iodophore', '', '2.5 cc', '9', 'จริง', 'เท็จ', '48', '', '', '', '', '', '', '2500', '', '', '', '', '', '', 'ก', 'หลอด', '');
INSERT INTO `drugplan` VALUES ('23', '', 'posexxx', '', 'Pose  crezol liquid soap', '', '600ml', '3', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('17', '', 'prxcxxx', '', 'Piroxicam', 'cap', '20mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('06', '', 'pvsttxx', '', 'Pravastatin', '', '20mg', '9', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เม็ด', '');
INSERT INTO `drugplan` VALUES ('17', '', 'tmdixxx', '', 'Tramadol', 'inj', '100mg/2ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('09', '', 'triacxx', '', 'Triamcinolone', 'lot', '0.1% 30ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('22', '', 'trifer1', '', 'Triferdine 150 (30\'s)', 'tab', 'Iodine+folic+Ir', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2011203200377262217', 'ก', 'ขวด', '');
INSERT INTO `drugplan` VALUES ('05', '', 'tsmixxx', '', 'Tranexamic acid', 'inj', '250mg/5ml', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'แอมพูล', '');
INSERT INTO `drugplan` VALUES ('15', '', 'verox1x', '', 'Vero Rabies Vaccine', 'inj', '1 dose/vial', '1', 'เท็จ', 'เท็จ', '1', '', '', '', '', '', '', '', '', '', '', '', '270', '', 'ก', 'ไวอัล', '');
INSERT INTO `drugplan` VALUES ('06', '', 'wfrt5xx', '', 'Wafarin', 'tab', '5mg', '1', 'เท็จ', 'เท็จ', '100', '', '', '', '', '', '', '438.7', '', '', '', '', '', '', 'ก', 'เม็ด', '');

-- ----------------------------
-- Table structure for inven
-- ----------------------------
DROP TABLE IF EXISTS `inven`;
CREATE TABLE `inven` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'เลขที่จ่าย',
  `department_id` int(11) DEFAULT NULL COMMENT 'หน่วยงาน',
  `inven_date` date DEFAULT NULL COMMENT 'วันที่จ่าย',
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  `user_id` int(11) DEFAULT NULL COMMENT 'ผู้บันทึก',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inven
-- ----------------------------

-- ----------------------------
-- Table structure for invendetail
-- ----------------------------
DROP TABLE IF EXISTS `invendetail`;
CREATE TABLE `invendetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inven_id` int(11) DEFAULT NULL COMMENT 'เลขที่จ่าย',
  `item_id` int(11) DEFAULT NULL COMMENT 'รายการ',
  `qty` int(11) DEFAULT NULL COMMENT 'จำนวนจ่าย',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invendetail
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL COMMENT 'รหัสรายการ',
  `name` varchar(255) DEFAULT NULL COMMENT 'รายการ',
  `strenge` varchar(100) DEFAULT NULL COMMENT 'ความแรง',
  `format` varchar(100) DEFAULT NULL COMMENT 'รูปแบบ',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `ed` smallint(6) DEFAULT NULL COMMENT 'ED/NED',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=903 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '1000000', 'Roxithromycin tab', '150mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('2', '1000010', 'Azithromycin ', '250mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('3', '1010110', 'Ketamine HCL inj', '50mg/ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('4', '1010150', 'Mepivacaine ', '2%w/v 1.8ml', 'คาทริดจ์', '1', '0');
INSERT INTO `items` VALUES ('5', '1010151', 'Articaine hydrochloride 4 % ', '1.7ml', 'คาทริดจ์', '1', '0');
INSERT INTO `items` VALUES ('6', '1010160', 'Lidocaine Jelly gel', '20% 30g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('7', '1010170', 'Lidocaine HCL inj', '2%w/v 50ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('8', '1010180', 'Oxygen ', 'ถัง', 'ถัง', '1', '0');
INSERT INTO `items` VALUES ('9', '1010181', 'Propofol inj', '10mg/ml 20ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('10', '1010200', 'Tetracaine eye drop sol', '0.5% 15ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('11', '1010210', 'Sodium bicarbonate ear drop sol', '7.5% v/v 30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('12', '1010211', 'Timolol eye drop sol', '', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('13', '1020010', 'Paracetamol tab', '325mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('14', '1020040', 'Paracetamol inj', '300mg/2ml 2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('15', '1020070', 'Aspirin tab', '300mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('16', '1020071', 'Clopidogrel bisulfate tab', '75 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('17', '1020080', 'Aspirin tab', '81mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('18', '1020090', 'CPM syr', '2mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('19', '1020100', 'Ibuprofen tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('20', '1020110', 'Ibuprofen tab', '400mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('21', '1020160', 'Allopurinol tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('22', '1020180', 'Colchicine tab', '0.6mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('23', '1020260', 'Paracetamol tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('24', '1020270', 'Paracetamol syr', '120mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('25', '1020280', 'Morphine Sulphate inj', '10mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('26', '1020281', 'Morphine Sulfate SR tab', '30mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('27', '1020282', 'Morphine sulfate SR tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('28', '1020283', 'Pethidine HCL inj', '50mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('29', '1030110', 'Tramadol cap', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('30', '1030120', 'Triamcinolone inj', '10mg/ml 1ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('31', '1040060', 'Pralidoxime (2-PAM) inj', '1g vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('32', '1040070', 'N-Acetylcysteine inj', '100mg/ml 3ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('33', '1040080', 'Naloxone inj', '400mcg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('34', '1040090', 'N-acetylcysteine pwd', '100mg/sac 5g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('35', '1040100', 'Activated Charcoal pwd', '50g/sac', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('36', '1050010', 'Carbamazepine tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('37', '1050020', 'Diazepam inj', '10mg/2ml 2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('38', '1050030', 'Magnesium sulfate inj', '50% 2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('39', '1050040', 'Phenobarbital tab', '30mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('40', '1050050', 'Phenobarbital tab', '60mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('41', '1050070', 'Baclofen tab', '10 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('42', '1050080', 'Phenytoin cap', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('43', '1050081', 'Phenytoin inj', '250mg/5ml 5ml', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('44', '1050090', 'Sod. Valproate (Depakine Chrono) tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('45', '1050091', 'Sod. Valproate syr', '200mg/ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('46', '1050092', 'Piracetam tab', '800 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('47', '1050093', 'Sod.Valproate(200) tab', '200 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('48', '1060010', 'CPM tab', '4mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('49', '1060030', 'CPM inj', '10mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('50', '1060090', 'Sofra-tulle(Framycetin sulphate) pcs', '1%', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('51', '1060100', 'CPM tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('52', '1060110', 'Bastigras pcs', '', 'ชิ้น', '1', '0');
INSERT INTO `items` VALUES ('53', '1070020', 'Metronidazole tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('54', '1070030', 'Albendazole tab', '200 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('55', '1070040', 'Mebendazole tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('56', '1070060', 'Niclosamide tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('57', '1070090', 'Amoxicillin syr', '125mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('58', '1070100', 'Amoxicillin cap', '250mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('59', '1070110', 'Amoxicillin cap', '500mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('60', '1070150', 'Ampicillin inj', '250mg', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('61', '1070160', 'Ampicillin inj', '500mg', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('62', '1070170', 'Ampicillin inj', '1g', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('63', '1070190', 'Penicillin G sod. inj', '1mu', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('64', '1070200', 'Penicillin G sod. inj', '5mu.', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('65', '1070210', 'Cloxacillin ', '250mg', '', '1', '0');
INSERT INTO `items` VALUES ('66', '1070230', 'Cloxacillin inj', '1g', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('67', '1070240', 'Cloxacillin ', '125mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('68', '1070250', 'Penicillin V tab', '125mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('69', '1070260', 'Penicillin V tab', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('70', '1070310', 'Amikacin inj', '500mg/2ml 2ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('71', '1070320', 'Gentamicin inj', '80mg/2ml 2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('72', '1070360', 'Clindamycin inj', '150mg/ml 4ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('73', '1070370', 'Clarithromycin tab', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('74', '1070380', 'Erythromycin syr', '125mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('75', '1070381', 'Erythromycin tab', '250 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('76', '1070390', 'Cefazolin inj', '1g', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('77', '1070400', 'Cephalexin cap', '500mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('78', '1070440', 'Doxycycline cap', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('79', '1070460', 'Co-trimoxazole tab', 'TMP80+SMZ400mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('80', '1070461', 'Sulfasalazine ', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('81', '1070470', 'Co-trimoxazole sus', 'TMP40+SMZ400mg', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('82', '1070480', 'Co-trimoxazole inj', 'TMP80+SMZ400mg', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('83', '1070500', 'Metronidazole inj', '500mg/100 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('84', '1070540', 'Dapsone tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('85', '1070600', 'Ethambutol tab', '400mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('86', '1070601', 'Ethambutol tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('87', '1070610', 'Isoniazid tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('88', '1070620', 'Pyrazinamide tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('89', '1070630', 'Rifampicin cap', '300mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('90', '1070640', 'Rifampicin cap', '450mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('91', '1070641', 'Rifater (R150mgH75mgZ400mgE275mg) tab', '', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('92', '1070642', 'Rifam300mg+Isoniazid150mg(Rifinah300) tab', '', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('93', '1070643', 'Rifam 150 mg+Isoniazid 100 mg tab', '', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('94', '1070650', 'Streptomycin inj', '1g vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('95', '1070660', 'Amphotericin B ', '50mg vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('96', '1070680', 'Griseofulvin tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('97', '1070690', 'Ketoconazole tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('98', '1070691', 'Ketoconazole shampoo sol', '2%w/w', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('99', '1070710', 'Fluconazole cap', '200mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('100', '1070880', 'Norfloxacin ', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('101', '1071050', 'Chloroquine tab', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('102', '1071051', 'Hydroxychloroquine tab', '200 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('103', '1071060', 'Ofloxacin tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('104', '1071070', 'Primaquine tab', '15mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('105', '1071080', 'Norfloxacin tab', '400mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('106', '1071110', 'ยาฟ้าทะลายโจรสกัดแคปซูล cap', '450 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('107', '1071120', 'Ciprofloxacin tab', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('108', '1072010', 'Ciprofloxacin inj', '200mg/100ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('109', '1080020', 'Ergotamine+caffeine tab', '1mg+100 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('110', '1080050', 'Flunarizine cap', '5mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('111', '1080060', 'Propranolol tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('112', '1080070', 'Metoprolol tartrate tab', '100 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('113', '1080807', 'ว่านชักมดลูก pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('114', '1090070', 'Methotrexate tab', '2.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('115', '1100030', 'Trihexyphenidyl tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('116', '1100050', 'Trihexyphenidyl tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('117', '1100051', 'Madopa (Levodopa+Benserazide HCl) tab', '200mg+50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('118', '1110030', 'phytomemadione inj', '1mg/0.5ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('119', '1110040', 'Phytomenadione inj', '10mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('120', '1110050', 'Phytomenadione ', '2mg/0.2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('121', '1110110', 'Wafarin tab', '3mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('122', '1110140', 'Ferrous sulfate tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('123', '1130030', 'Isosorbide dinitrate tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('124', '1130100', 'Nifedipine tab', '5 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('125', '1130101', 'Nicardipine HCL cap', '40 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('126', '1130102', 'Nicardipine inj', '1mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('127', '1130103', 'Streptokinase inj', '1.5 mu', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('128', '1130104', 'Mannitol sol', '20% 250 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('129', '1130200', 'Enalapril tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('130', '1130210', 'Enalapril tab', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('131', '1130230', 'Methyldopa tab', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('132', '1130280', 'Digoxin tab', '0.25mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('133', '1130300', 'risperidone tab', '2 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('134', '1130301', 'risperidone tab', '1 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('135', '1130302', 'sertraline tab', '50 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('136', '1130310', 'Dopamine inj', '250mg/10ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('137', '1130320', 'Adrenaline inj', '1mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('138', '1130630', 'Amiodarone tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('139', '1130641', 'Adenosine inj', '6mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('140', '1130650', 'Atenolol tab', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('141', '1130651', 'Povidone iodine scrub sol', '7.5% 450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('142', '1130660', 'Isosorbide dinitrate tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('143', '1130680', 'Atenolol ', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('144', '1130690', 'Amlodipine tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('145', '1130700', 'Simvastatin tab', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('146', '1140010', 'Silver sulfadiazine cre', '1% 450g', 'กระป๋อง', '1', '0');
INSERT INTO `items` VALUES ('147', '1140090', 'Prednisolone cre', '0.5% 5g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('148', '1140101', 'Triamcinolone cre', '0.02% 5g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('149', '1140110', 'Triamcinolone cre', '0.1% 5g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('150', '1140420', 'Clotrimazole cre', '1%w/w 15g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('151', '1140430', 'Calamine lotion lot', '60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('152', '1140500', 'Analgesic balm ', '15g', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('153', '1140520', 'Whitfield\'s ointment oin', '15g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('154', '1140521', 'Benzylbenzoate ', '60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('155', '1140522', 'White Vaseline gel', '45 g', 'กระปุก', '1', '0');
INSERT INTO `items` VALUES ('156', '1140523', 'White Vaseline gel', '450 g', 'กระปุก', '1', '0');
INSERT INTO `items` VALUES ('157', '1140530', 'Podophyllin paint sol', '15 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('158', '1140531', 'Silver nitrate cry', '30 g', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('159', '1140560', 'Chlortetracycline eye oint oin', '1% 5g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('160', '1140561', 'Scabicide emulsion sol', '25%w/v450 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('161', '1160100', 'Phenolic copound(Pose cresol) ', '25g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('162', '1160101', 'pose iodophore ', '', '', '1', '0');
INSERT INTO `items` VALUES ('163', '1160150', 'Mybacin tab', '10\'s', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('164', '1160170', 'Special mouth wash sol', '250ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('165', '1160200', 'Peracetic acid(Sterex) pwd', '0.26 gm', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('166', '1160220', 'Ethyl alcohol sol', '70% 450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('167', '1160230', 'Ethyl alcohol sol', '95% 450 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('168', '1160250', 'Formaldehyde sol', '450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('169', '1160260', 'Hydrogen peroxide sol', '450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('170', '1160330', 'Povidone iodine sol', '10%w/v 450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('171', '1160340', 'Povidone iodine sol', '10%w/v 30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('172', '1160350', 'Ethyl alcohol sol', '70%v/v 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('173', '1160360', 'NSS irrigate sol', '0.9% 1000ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('174', '1170020', 'Furosemide tab', '40mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('175', '1170030', 'Furosemide tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('176', '1170040', 'Furosemide inj', '20mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('177', '1170050', 'Furosemide inj', '250mg/25ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('178', '1170060', 'HCTZ ', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('179', '1170061', 'HCTZ tab', '25 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('180', '1170090', 'Spironolactone tab', '25mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('181', '1180080', 'Milk of magnesia sus', '240ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('182', '1180100', 'Dimenhydrinate tab', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('183', '1180110', 'Dimenhydrinate inj', '50mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('184', '1180140', 'Metoclopramide inj', '10mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('185', '1180170', 'Doproct (Hydrocortisone+Zinc oxide+Benzocaine) sup', '7.5mg250mg40mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('186', '1180171', 'Glycerin suppo. sup', 'infants', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('187', '1180200', 'Atropine inj', '0.6mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('188', '1180210', 'Hyoscine inj', '20mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('189', '1180211', 'Spasmo-lyt (Trospium Cl) tab', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('190', '1180212', 'Diutropan (Oxybutynin HCl) tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('191', '1180270', 'Bisacodyl tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('192', '1180280', 'ยาชงชุมเห็ดเทศ pow', '3g sac', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('193', '1180420', 'M.carminative mxt', '180ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('194', '1180430', 'Sodium bicarbonate tab', '300 mg', 'กล่อง', '1', '0');
INSERT INTO `items` VALUES ('195', '1180431', 'Sodium chloride tab', '600 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('196', '1180500', 'Hyoscine syr', '30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('197', '1180540', 'Domperidone sus', '5mg/5ml 30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('198', '1180590', 'Domperidone tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('199', '1180610', 'Simethicone sus', '67mg/ml 15ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('200', '1180630', 'Sodium bicarbonate mixt. syr', '50mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('201', '1180660', 'Daflon (Diosmine+Hesperidine) tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('202', '1180661', 'Daflon(Diosmine+Hesperidine) tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('203', '1180670', 'Antacid(NED) sus', '240ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('204', '1180671', 'Antacid (ED) sus', '240 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('205', '1180691', 'ORS(adult) pwd', '5.5g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('206', '1180702', 'ครีมไพล cre', '25g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('207', '1180703', 'น้ำมันไพล sol', '60 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('208', '1180730', 'Milk of magnesia sus', '60 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('209', '1180750', 'Enema(sod.phosphate) sol', '133ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('210', '1180760', 'ยาเม็ดขมิ้นชัน (Curcuminoids) cap', '500 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('211', '1180761', 'ครีมพญายอ cre', '10g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('212', '1180762', 'ครีมบัวบก cre', '7%w/w 10 g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('213', '1180763', 'ยาแคปซูลประสะไพล cap', '250 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('214', '1180764', 'ใบมะขามแขก cap', '450 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('215', '1180765', 'ยาแคปซูลเพชรสังฆาต cap', '500mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('216', '1180766', 'ยาแคปซูลเถาวัลย์เปรียง cap', '500 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('217', '1180767', 'ชาชงหญ้าดอกขาว pow', '', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('218', '1180768', 'ชาชงขิง pow', '', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('219', '1180769', 'ชาชงรางจืด pow', '', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('220', '1180770', 'ยาแคปซูลรางจืด cap', '', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('221', '1190020', 'Hydrocortisone inj', '100mg/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('222', '1190030', 'Prednisolone tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('223', '1190070', 'Norethisterone tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('224', '1190110', 'RI insulin inj', '100u/ml 10ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('225', '1190120', 'NPH insulin inj', '100u/ml 10ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('226', '1190121', 'NPH insulin penfill inj', '100 u/ml 3 ml', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('227', '1190130', 'Mixtard 30HM inj', '100u/ml 10ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('228', '1190131', 'Mixtard 30 penfill inj', '100 u/ml 3 ml', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('229', '1190180', 'Metformin tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('230', '1190240', 'Thyroxine tab', '100mcg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('231', '1190260', 'Propylthiouracil tab', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('232', '1190261', 'Methimazole tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('233', '1190400', 'Dexamethasone inj', '4mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('234', '1190420', 'Sulprostone ', '500mcg', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('235', '1190430', 'Medroxyprogesterone inj', '150mg/3ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('236', '1190440', 'L-norgestrel+Ethinylestradiol tab', '0.15mg + 0.03mg', 'แผง', '1', '0');
INSERT INTO `items` VALUES ('237', '1190441', 'Levonorgestrel tab', '0.75 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('238', '1190450', 'FMP(Norgestrel+EE) ', '0.5mg+0.05mg', 'แผง', '1', '0');
INSERT INTO `items` VALUES ('239', '1190460', 'Lynestrenol(Exluton) ', '0.5mg', 'แผง', '1', '0');
INSERT INTO `items` VALUES ('240', '1190461', 'Lynestrenon(Exluton) tab', '0.5 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('241', '1190480', 'Condom pcs', '49mm.', 'ชิ้น', '1', '0');
INSERT INTO `items` VALUES ('242', '1190490', 'Condom pcs', '52mm.', 'ชิ้น', '1', '0');
INSERT INTO `items` VALUES ('243', '1190491', 'Condom pcs', '54 mm.', 'ชิ้น', '1', '0');
INSERT INTO `items` VALUES ('244', '1190492', 'สารหล่อลื่นชนิดละลายในน้ำ pcs', '5 ml.', 'ชิ้น', '1', '0');
INSERT INTO `items` VALUES ('245', '1200010', 'Anti-Rabies serum (ERIG) inj', '1000iu/5ml 5ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('246', '1200020', 'Anti-cobra serum(งูเห่า) inj', '10ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('247', '1200050', 'Tetanus antitoxin inj', '1500iu 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('248', '1200070', 'Diphtheria antitoxin inj', '10000 iu/10 ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('249', '1200110', 'Hepatitis B vaccine(adute) inj', '20mcg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('250', '1200111', 'BCG vaccine inj', '', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('251', '1200112', 'Hepatitis A Vaccine(adult) ', '1dose', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('252', '1200113', 'Hepatitis A Vaccine (pediatric) ', '1 dose', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('253', '1200130', 'Poliomyelitis Vaccine,live attenuated(OPV) sol', '', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('254', '1200160', 'Tetanus toxoid inj', '0.5ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('255', '1200170', 'Diptheria-Tetanus vaccine(DT) inj', '', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('256', '1200171', 'Diptheria-Tetanus-Pertussis (DTP) inj', '', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('257', '1200172', 'Japanese encephalitis Vaccine(JE) inj', '20 dose', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('258', '1200173', 'Measle-Mump-Rubella vaccine (MMR) inj', '', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('259', '1200180', 'Diphtheria-Tetanus-Pertussis-HepB inj', '2dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('260', '1200260', 'Anti-malayan serum(งูกะปะ) inj', '10ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('261', '1200270', 'Rabies vaccine inj', '0.5ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('262', '1200280', 'Anti-King Cobra serum inj', '10 ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('263', '1200290', 'Anti-Green Pit Viper serum inj', '10 ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('264', '1210130', 'Tolperisone tab', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('265', '1220030', 'Chloramphenicol eye drop sol', '0.5% 10ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('266', '1220040', 'Chloramphenicol ear drop ', '5ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('267', '1220390', 'Poly-oph sol', '5ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('268', '1230010', 'Methylergometrine inj', '0.2mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('269', '1230020', 'Oxytocin inj', '10iu/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('270', '1250010', 'Amitriptyline tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('271', '1250020', 'Amitriptyline tab', '25mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('272', '1250030', 'Nortriptyline ', '25 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('273', '1250050', 'Chlorpromazine tab', '50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('274', '1250070', 'Fluphenazine decanoate inj', '25mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('275', '1250080', 'Haloperidol tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('276', '1250100', 'Fluoxetine tab', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('277', '1250140', 'Diazepam tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('278', '1250150', 'Diazepam tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('279', '1250200', 'Clozapine tab', '100 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('280', '1250300', 'Haloperidol tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('281', '1250301', 'Haloperidol tab', '0.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('282', '1250311', 'Clonazepam tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('283', '1250312', 'Clonazepam tab', '0.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('284', '1250320', 'Chlorpromazine tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('285', '1250330', 'Chlorpromazine tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('286', '1250340', 'Haloperidol decanoate inj', '50mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('287', '1250350', 'Haloperidol inj', '5mg/ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('288', '1250351', 'Lithium carbonate cap', '300 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('289', '1250360', 'Perphenazine tab', '8mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('290', '1250770', 'Perphenazine tab', '16mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('291', '1260050', 'Theophylline SR tab', '200mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('292', '1260060', 'Salbutamol ', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('293', '1260061', 'Salbutamol tab', '2 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('294', '1260070', 'Salbutamol MDI inh', '100mcg/dose', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('295', '1260071', 'Seretide Accuhaler inh', '50/250mcg', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('296', '1260072', 'Seretide Evohaler inh', '25/50mcg', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('297', '1260073', 'Seretide Evohaler inh', '25/250 mcg', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('298', '1260080', 'Salbutamol syr', '2mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('299', '1260090', 'Terbutaline sulfate inj', '0.5mg/ml 1ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('300', '1260091', 'Terbutaline sulfate tab', '2.5 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('301', '1260160', 'Dextromethorphan tab', '15mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('302', '1260170', 'M.tussive mxt', '180ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('303', '1260350', 'Salbutamol sol', '0.5% 20ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('304', '1260380', 'Aromatic Ammonia spirit sol', '450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('305', '1260410', 'Guaifenesin syr', '100mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('306', '1260450', 'M.tussive mxt', '60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('307', '1260470', 'ไพล(แห้ง) pwd', '', 'กิโลกรัม', '1', '0');
INSERT INTO `items` VALUES ('308', '1260471', 'ขมิ้นชัน(แห้ง) pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('309', '1260472', 'มะกรูด(แห้ง) pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('310', '1260473', 'ว่านนางคำ(แห้ง) pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('311', '1260474', 'ว่านน้ำ(แห้ง) pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('312', '1260475', 'การบูร pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('313', '1260476', 'พิมเสน pwd', '', 'kg', '1', '0');
INSERT INTO `items` VALUES ('314', '1260480', 'ยาอมมะแว้ง รสบ๊วย tab', '20\'s', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('315', '1260481', 'ไพล(แห้ง) pow', '', '', '1', '0');
INSERT INTO `items` VALUES ('316', '1260482', 'ลูกประคบสมุนไพร .', '1 ชุด', 'ชุด', '1', '0');
INSERT INTO `items` VALUES ('317', '1260483', 'ยาหอมนวโกศ tab', '200 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('318', '1260484', 'ยาสมุนไพรห้าราก cap', '500 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('319', '1260485', 'ยาน้ำเชื่อมแก้ไอ มะขามป้อม syr', '', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('320', '1260486', 'ยาชงหญ้าหนวดแมว pow', '3 g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('321', '1260487', 'ยามะระขี้นก cap', '500 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('322', '1260488', 'ยาเหลืองปิดสมุทร tab', '100 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('323', '1260489', 'เจลพริกชี้ฟ้า cre', '0.025 %', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('324', '1260490', 'ยาจันทน์ลีลา cap', '330 g', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('325', '1260491', 'ยาขิงแคปซูล cap', '500 mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('326', '1260492', 'ยาธาตุอบเชย syr', '180 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('327', '1260493', 'ยาบำรุงโลหิต pow', '15 g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('328', '1260494', 'ทองพันชั่ง syr', '60 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('329', '1260495', 'ยาเบญจกุล cap', '500 mg', 'กล่อง', '1', '0');
INSERT INTO `items` VALUES ('330', '1260496', 'Aloe gel gel', '30 g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('331', '1270020', 'Potassium Chloride tab', '500mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('332', '1270040', 'ORS (pedreatric) pwd', '3.645g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('333', '1270050', 'Calcium gluconate inj', '10%w/v 10ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('334', '1270051', 'Kalimate(Ca polystylene Sulfonate) pwd', '5g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('335', '1270070', 'D-5-W sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('336', '1270100', 'Dextrose inj', '50% 50ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('337', '1270130', 'Potassium Chloride inj', '20meq/10ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('338', '1270140', 'Potassium chloride (KCL elixir) sol', '20meq/15ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('339', '1270150', 'Lactate Ringer Solution(LRS) sol', '1000ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('340', '1270160', 'Sodium bicarbonate inj', '7.5% 50ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('341', '1270170', 'NSS sol', '1000ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('342', '1270171', '0.45%Nacl sol', '1000', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('343', '1270180', 'Dextran 40 sol', '500 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('344', '1270210', 'D-5-N/2 sol', '1000ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('345', '1270211', 'D-5-S sol', '1000 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('346', '1270220', 'D-5-N/3 sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('347', '1270250', 'D-5-N/5 sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('348', '1270310', 'Calcium carbonate tab', '1000mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('349', '1270331', 'Sodium Chloride sol', '3% 500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('350', '1270380', 'Sterile water for inection sol', '100ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('351', '1270390', 'Sterile water for injection sol', '1000ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('352', '1270410', 'Sterile water for inection sol', '5ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('353', '1270430', 'NSS sol', '100ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('354', '1270440', 'Polygelin (Haemacel) sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('355', '1290010', 'Vitamin C tab', '100mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('356', '1290030', 'Folic acid tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('357', '1290050', 'MTV tab', 'compound', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('358', '1290110', 'Vitamin B complex tab', 'compound', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('359', '1290130', 'Vitamin B1 inj', '100mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('360', '1400020', 'Urea cream cre', '20% 50g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('361', '1701051', 'Quinine dihydrochloride ', '600mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('362', '2020090', 'Mefenamic acid cap', '250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('363', '2020140', 'Diclofenac tab', '25 mg', 'กล่อง', '1', '0');
INSERT INTO `items` VALUES ('364', '2020150', 'Diclofenac inj', '75mg/3ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('365', '2020261', 'Diclofenac gel', '1% w/w  30g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('366', '2060040', 'Cyproheptadine tab', '4mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('367', '2060070', 'Hydroxyzine tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('368', '2060090', 'Loratadine tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('369', '2070430', 'Ceftriaxone inj', '1g', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('370', '2070440', 'Ceftazidime inj', '1g', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('371', '2070740', 'Lincomycin ', '300mg/ml 2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('372', '2070741', 'lincomycin ', '300mg/ml10ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('373', '2070900', 'Amoxicillin+Clavulanic acid inj', '1.2g  vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('374', '2070970', 'Amoxillin+Clavulanate tab', '375mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('375', '2070990', 'Dicloxacillin cap', '250mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('376', '2070991', 'Dicloxacillin syr', '62.5mg/5ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('377', '2071030', 'Clotrimazole vaginal tab', '100mg 6\'s', 'แผง', '1', '0');
INSERT INTO `items` VALUES ('378', '2071070', 'Albendazole susp. sus', '100mg/5ml 20ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('379', '2071110', 'Acyclovir tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('380', '2071111', 'Acyclovir ', '250mg', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('381', '2071120', 'Oseltamivir (Tamiflu) cap', '30mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('382', '2071130', 'Oseltamivir (Tamiflu) cap', '45mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('383', '2071140', 'Oseltamivir (Tamiflu) cap', '75mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('384', '2110120', 'FBC tab', 'compound', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('385', '2110121', 'FBC syr', 'compound 120 ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('386', '2110122', 'Ferrouse sulfate syr', '10 mg/ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('387', '2130250', 'Prazosin ', '1mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('388', '2130550', 'Gemfibrozil cap', '300mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('389', '2140050', 'Acyclovir cream cre', '5g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('390', '2140360', 'Selenium sulfide sol', '2.5% 120ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('391', '2140370', 'K-Y gelly gel', '50g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('392', '2140460', 'Olive oil sol', '450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('393', '2140510', 'Analgesic cream cre', '30g', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('394', '2160120', 'Enzymatic detergent ', '5l', 'แกลลอน', '1', '0');
INSERT INTO `items` VALUES ('395', '2160150', 'Triamcinolone Oral Paste gel', '0.1% 1g', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('396', '2160160', 'Xylocaine viscous(ยาเตรียม) sol', '1%v/v 30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('397', '2160200', 'Pose -RA ', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('398', '2160210', 'Pose Stain Remover#1 sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('399', '2160220', 'Pose Clean-OR ', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('400', '2160230', 'Pose Stain Remover#2 sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('401', '2160300', 'Alcohol Handrub gel', '60% 300ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('402', '2160340', 'Alcohol hand wash ', '450ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('403', '2160400', 'Pose spray sol', '0.21% 250ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('404', '2180340', 'Enama (Sodium chloride) sol', '10ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('405', '2180440', 'Simethicone tab', '80mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('406', '2180470', 'Diagest tab', '', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('407', '2180510', 'Hyoscine tab', '10mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('408', '2180520', 'Omeprazole cap', '20mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('409', '2180521', 'Omeprazole inj', '40mg/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('410', '2180530', 'Ranitidine inj', '50mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('411', '2180540', 'Misoprostol(Cytotec) tab', '200 mcg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('412', '2180570', 'Ranitidine tab', '150mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('413', '2190200', 'Glipizide tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('414', '2190300', 'Pioglitazone HCL tab', '30 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('415', '2220230', 'Hista oph sol', '5ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('416', '2250160', 'Lorazepam tab', '0.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('417', '2250170', 'Lorazepam tab', '1mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('418', '2250260', 'Dip. Clorazepate cap', '5mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('419', '2260130', 'Berodual MDI inh', '200dose', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('420', '2260140', 'Berodual solution sol', '20ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('421', '2260260', 'Actifed tab', '60mg+2.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('422', '2260261', 'Actifed ', '60mg+2.5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('423', '2260270', 'Actifed syr', '30mg+1.25mg', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('424', '2260300', 'Bromhexine tab', '8mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('425', '2260310', 'Bromhexine syr', '4mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('426', '2260340', 'Budesonide MDI inh', '200mcg 200dose', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('427', '2270350', 'D-5-W sol', '100ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('428', '2280040', 'Cinnarizine tab', '25mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('429', '2280041', 'Pyritinol (Encephabol) liq', '120ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('430', '2290120', 'Vitamin B complex inj', '2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('431', '2290121', 'Vitamin B complex inj', '1 ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('432', '2290170', 'Vitamin B1-6-12 tab', '100mg20mg100mcg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('433', '2300000', 'ซองใส่ยาซิปใส ขนาด 10x15 cm. ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('434', '2300001', 'ซองใส่ยาซิปใส ขนาด 7x10 cm. ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('435', '2300002', 'ซองใส่ยาซิปใส ขนาด 9x13 cm. ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('436', '2300003', 'ซองใส่ยาซิปใส ขนาด 13x20 cm. ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('437', '2300004', 'ซองยาซิปใส ขนาด  5x7 ซอง', '', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('438', '2300005', 'ซองใส่ยาซิปสีชา ขนาด 7x10 ซม. ซอง', '', 'กก', '1', '0');
INSERT INTO `items` VALUES ('439', '2300006', 'ซองใส่ยาซิปสีชา ขนาด 10x15 ซม. ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('440', '2300007', 'ซองใส่ยาซิปสีชาอ่อน ขนาด 9X13 ซอง', '', 'กก.', '1', '0');
INSERT INTO `items` VALUES ('441', '2300020', 'Serratiopeptidase tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('442', '2300180', 'Silymarin tab', '70mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('443', '2300190', 'Lipochol ', 'combind', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('444', '2500000', 'ขวดพลาสติค ขนาด 30 ซีซี ขวด', '', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('445', '2500001', 'ขวดพลาสติค ขนาด 60 ซีซี ขวด', '', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('446', '2500010', 'สติ๊กเกอร์ต่อเนื่อง พิมพ์ฉลากยา ดวง', '', 'ม้วน', '1', '0');
INSERT INTO `items` VALUES ('447', '2500011', 'สติ๊กเกอร์ยาน้ำพาราเซตามอล ดวง', '', 'ดวง', '1', '0');
INSERT INTO `items` VALUES ('448', '2500012', 'สติ๊กเกอร์ยาน้ำรับประทาน ดวง', '', 'ดวง', '1', '0');
INSERT INTO `items` VALUES ('449', '2600000', 'Zidovudine (AZT) cap', '100mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('450', '2600001', 'Zidovudine (AZT) cap', '300mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('451', '2600002', 'Zidovudine (AZT) syr', '10mg/ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('452', '2600003', 'GPO vir S30(NVP,3TC,d4T) tab', '200,150,30mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('453', '2600004', 'Stavudine(d4T) cap', '30mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('454', '2600005', 'Lamivudine (3TC) tab', '150mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('455', '2600006', 'Nevirapine (NVP) cap', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('456', '2600007', 'Nevirapine syr', '50mg/5ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('457', '2600008', 'Efavirenz tab', '600mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('458', '2600009', 'Efavirenz tab', '200mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('459', '2600010', 'Indinavir tab', '400mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('460', '2600011', 'Ritonavir(Norvir) cap', '100mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('461', '2600012', 'Tenofovir tab', '300mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('462', '2600013', 'Zilarvir(3TC,AZT) tab', '150mg+300mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('463', '2600014', 'GPO vir-Z250 (NVP,3TC,AZT) tab', '200mg150mg250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('464', '2600015', 'Lamivudine (3TC) syr', '10mg/ml 60ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('465', '2600016', 'Lopinavir/Ritonavir tab', '200 mg/50 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('466', '2600017', 'Lamivudine+Stavudine(Lastavir) tab', '150mg+30mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('467', '2600018', 'Nevirapine+Lamivudine+AZT tab', '200+150+250mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('468', '2600019', 'Indinavir tab', '200 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('469', '2600020', 'Lamivudine(3TC) tab', '300 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('470', '4370012', 'ซองซิปพิมพ์ สอ. ขนาด 8x12 สีฟ้า ซอง', '', 'ซอง', '1', '0');
INSERT INTO `items` VALUES ('471', '4370021', 'ถุงใส่ยาพิมพ์ 2 หน้า ขนาด 6x12\" ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('472', '4370022', 'ถุงใส่ยาพิมพ์ 2 หน้า ขนาด 7x14\" ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('473', '4370023', 'ถุงใส่ยาพิมพ์ คปสอ ขนาด 6 X 12 \" ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('474', '4370024', 'ถุงใส่ยาพิมพ์ คปสอ ขนาด 7 X 14\" ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('475', '4370025', 'ถุงใส่ยาพิมพ์ 2หน้า 5x12 ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('476', '4370026', 'ถุงหิ้วขนาด 7x15นิ้ว ใบ', '', 'ใบ', '1', '0');
INSERT INTO `items` VALUES ('477', '5030060', 'Clindamycin cap', '300mg', 'แคปซูล', '1', '0');
INSERT INTO `items` VALUES ('478', 'amioxxx', 'Amiodarone inj', '150mg/3ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('479', 'amlrxxx', 'Amiloride+HCTZ tab', '5mg+50mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('480', 'BCG10xx', 'BCG Vaccine inj', '10dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('481', 'cpzixxx', 'Chlorpromazine inj', '50mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('482', 'cvdlxxx', 'Carvedilol ', '6.25 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('483', 'd5n/2xx', 'D-5-N/2 sol', '500ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('484', 'dgxixxx', 'Digoxin inj. inj', '0.500mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('485', 'DTP10xx', 'DTP Vaccine inj', '10dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('486', 'DTPHB02', 'DTP+HB Vaccine inj', '2dose/vail', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('487', 'DTPHB10', 'DTP+HB vaccine inj', '10 dose/vial', 'vial', '1', '0');
INSERT INTO `items` VALUES ('488', 'dTx10xx', 'dT Vaccine inj', '10dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('489', 'dxzsxxx', 'Doxazosin tab', '2mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('490', 'HBV02xx', 'Hepatitis B Vaccine (EPI) inj', '2dose/vial 1ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('491', 'HYDRA', 'Hydralazine tab', '25 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('492', 'hydra01', 'Hydralazine inj', '20 mg', '', '1', '0');
INSERT INTO `items` VALUES ('493', 'INF1xxx', 'Influenza vaccine inJ', '1 dose/0.5 ml', 'vial', '1', '0');
INSERT INTO `items` VALUES ('494', 'INF4xxx', 'Influenza vaccine inj', '4 dose/vial', 'vial', '1', '0');
INSERT INTO `items` VALUES ('495', 'IPVxxxx', 'IPV VACCINE inj', '10 dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('496', 'JEx01xx', 'J.E. Vaccine inj', '1dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('497', 'lst100x', 'Losartan tab', '100 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('498', 'lstxxxx', 'Losartan tab', '50 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('499', 'ltls100', 'Lactulose syr', '66.7gm/ 100ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('500', 'MAMI100', 'Plus Fluoride,Iodide tab', '', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('501', 'mcpnlxx', 'Mycophenolate mofetil ', '500 mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('502', 'MMR01xx', 'Measles-Mumps-Rubella Vaccine inj', '1 dose/vial', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('503', 'MMR10xx', 'Measles-Mumps-Rubella Vaccine inj', '10dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('504', 'mtvsyru', 'MTV syrup syr', 'compound', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('505', 'Mxx10xx', 'Measles Vaccine inj', '10dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('506', 'norepxx', 'Norepinephrine Bitartrate inj', '4mg/4ml', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('507', 'OPV20xx', 'OPV Vaccine ora', '20dose/vial', '', '1', '0');
INSERT INTO `items` VALUES ('508', 'posei00', 'pose iodophore ', '2.5 cc', 'หลอด', '1', '0');
INSERT INTO `items` VALUES ('509', 'posexxx', 'Pose  crezol liquid soap ', '600ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('510', 'prxcxxx', 'Piroxicam cap', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('511', 'pvsttxx', 'Pravastatin ', '20mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('512', 'tmdixxx', 'Tramadol inj', '100mg/2ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('513', 'triacxx', 'Triamcinolone lot', '0.1% 30ml', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('514', 'trifer1', 'Triferdine 150 (30\'s) tab', 'Iodine+folic+Ir', 'ขวด', '1', '0');
INSERT INTO `items` VALUES ('515', 'tsmixxx', 'Tranexamic acid inj', '250mg/5ml', 'แอมพูล', '1', '0');
INSERT INTO `items` VALUES ('516', 'verox1x', 'Vero Rabies Vaccine inj', '1 dose/vial', 'ไวอัล', '1', '0');
INSERT INTO `items` VALUES ('517', 'wfrt5xx', 'Wafarin tab', '5mg', 'เม็ด', '1', '0');
INSERT INTO `items` VALUES ('518', '3 point', '3 POINT CANE', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('519', '50the', 'รถเข็นผู้พิการพับได้ปรับไม่ได้', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('520', 'aid', 'กระเป๋า First Aid[EMS]', '', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('521', 'ArCVD14', 'Artery clamp Cvd4\"/10cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('522', 'ArtSt12', 'Artery clamp Str.5\"/12cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('523', 'BandSci', 'Bandage Scissors 18 cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('524', 'belt', 'เข็มขัด Safty Belt', '', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('525', 'bet', 'แบตเตอรี่ สำหรับเครื่องวัดBP ESP110', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('526', 'bp adul', 'เครื่องวัดความดันผู้ใหญ่', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('527', 'bp baby', 'เครื่องวัดความดันเด็กกลาง', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('528', 'bp digi', 'เครื่องวัดความดัน อัติโนมัติ', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('529', 'C318', 'Foley catheter No.18', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('530', 'c320', 'Foley catheter No.20', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('531', 'cat 3wa', 'Foley catheter 3way No.16', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('532', 'center', 'เครื่องปั่นเลือด', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('533', 'Cufig', 'Curettes fig 00/0 cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('534', 'digi', 'ปรอทวัดไข้ทางหน้าผาก', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('535', 'ESM', 'แผ่นไสลด์เคลื่อนย้ายผู้ป่วย', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('536', 'gloxs', 'GLOVE DISPOSABLE NO.XS', 'NO.XS', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('537', 'hard ad', 'hard Collar ผู้ใหญ่ปรับได้', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('538', 'hard ba', 'hard Collar เด็กปรับได้', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('539', 'Harea14', 'Hartmann ear Polypus 14 cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('540', 'Hartear', 'Hartmann ear Polypus 8.5 cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('541', 'ME18', 'Surgical Needdle ME18', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('542', 'ME21', 'Surgical Needdle Me21', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('543', 'ME24', 'Surgical Needdle Me24', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('544', 'ME28', 'Surgical Needdle Me28', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('545', 'Metz18', 'Metzenbaum Cvd. 18 cm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('546', 'mou22', 'Moutpiece', '22 mm.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('547', 'Mou-ใหญ', 'Mouthpiece แกนใหญ่', '100/pack', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('548', 'non too', 'non tooth forceps', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('549', 'non001', 'ABSORBENT  COTTON  WOLL 0.35 GM', '0.35 GM', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('550', 'non002', 'ABSORBENT  COTTON  WOLL 1.40 GM', '1.40 GM', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('551', 'non003', 'ABSORBENT  COTTON  WOLL 450 GM', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('552', 'non004', 'ABS. Cotton  Woll  0.35 GM  Sterile ( 5 ก้อน )', '5 ก้อน', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('553', 'non005', 'ABS. Cotton  Woll  0.35 GM  Sterile ( 10 ก้อน )', '10 ก้อน', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('554', 'non006', 'ABS. Cotton  Woll  0.35 GM  Sterile ( 20 ก้อน )', '20 ก้อน', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('555', 'non007', 'CATGUT  CHROMIC  2/0', '2/0', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('556', 'non008', 'CATGUT  CHROMIC  3/0', '3/0', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('557', 'non010', 'CATGUT  CHROMIC  4/0', '4/0', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('558', 'non011', 'CATGUT  PLAIN  2/0', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('559', 'non012', 'CUTDOWN  TUBE  NO. 3', '3', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('560', 'non014', 'CUTDOWN  TUBE  NO. 4.5', '4.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('561', 'non015', 'CUTDOWN  TUBE  NO. 6', '6', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('562', 'non016', 'CUTDOWN  TUBE  NO. 7.5', '7.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('563', 'non017', 'ELASTIC BANDAGE  3\"', '3', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('564', 'non018', 'ELASTIC  BANDAGE  4\"', '4', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('565', 'non019', 'ELASTIC  BANDAGE  6\"', '6', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('566', 'non020', 'EYE  PAD', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('567', 'non021', 'FEEDING  TUBE  NO. 5', 'NO. 5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('568', 'non023', 'FEEDING  TUBE  NO. 6', 'NO. 6', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('569', 'non025', 'FEEDING  TUBE  NO. 8', 'NO. 8', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('570', 'non026', 'FEEDING  TUBE  NO. 10', 'NO. 10', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('571', 'non027', 'FOLEY\'S  CATH  NO. 8', '8', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('572', 'non028', 'FOLEY\'S  CATH  NO. 10', '10', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('573', 'non029', 'FOLEY\'S  CATH  NO. 12', '12', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('574', 'non031', 'FOLEY\'S  CATH  NO. 14', '14', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('575', 'non032', 'FOLEY\'S  CATH  NO. 16', '16', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('576', 'non033', 'FOLEY\'S  CATH  NO. 18', '18', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('577', 'non034', 'FOLEY S CATH  NO.20', '20', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('578', 'non035', 'FOLEY\'S  CATH  NO.22', '22', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('579', 'non036', 'FOLEY\'S  CATH  NO.14  RED', '14RED', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('580', 'non037', 'FOLEY\'S  CATH  NO.16  RED', '16RED', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('581', 'non038', 'FOLEY\'S  CATH  NO.18  RED', '18  RED', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('582', 'non039', 'GAUZE  2\'\' X  2\'\'', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('583', 'non040', 'GAUZE  3\'\' X  3\'\'', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('584', 'non041', 'GAUZE  3\'\' X  4\'\'', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('585', 'non042', 'GAUZE  3\'\' X  3\'\'  Sterile  ( 5 ชิ้น )', '5 ชิ้น', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('586', 'non043', 'GAUZE  3\'\' X  3\'\'  Sterile  ( 10 ชิ้น )', '10 ชิ้น', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('587', 'non044', 'GAUZE  BENDAGE  3\"x 6 หลา', '3\"x 6', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('588', 'non045', 'GAUZE  BENDAGE  4\"x 6 หลา', '4\"x 6', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('589', 'non046', 'GAUZE Comform  BANDAGE  3\'\'', '3\'\'', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('590', 'non047', 'GAUZE Comform  BANDAGE  4\'\'', '4\'\'', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('591', 'non048', 'GAUZE Comform BANDAGE  6\'\'', '6\'\'', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('592', 'non049', 'GAUZE  DRAIN', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('593', 'non050', 'GLOVE  STERILE  NO. 6.5', 'NO. 6.5', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('594', 'non051', 'GLOVE  STERILE  NO. 6.5 [URG]', 'NO. 6.5[URG]', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('595', 'non053', 'GLOVE  STERILE  NO. 7', 'NO. 7', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('596', 'non054', 'GLOVE  STERILE  NO. 7 [URG]', 'NO. 7[URG]', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('597', 'non056', 'GLOVE  STERILE  NO. 7.5', 'NO. 7.5', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('598', 'non057', 'GLOVE  STERILE  NO. 7.5   [URG]', 'NO. 7.5[URG]', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('599', 'non058', 'GLOVE  DISPOSABLE  NO. S', 'NO. S', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('600', 'non059', 'GLOVE  DISPOSABLE  NO. M', 'NO. M', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('601', 'non060', 'GLOVE  DISPOSABLE  NO.L', 'NO.L', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('602', 'non061', 'GYPSONA  3\'\'', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('603', 'non062', 'GYPSONA  4\'\'', '.', 'box', '2', '0');
INSERT INTO `items` VALUES ('604', 'non063', 'GYPSONA  6\'\'', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('605', 'non064', 'IV. CATHETER  NO. 18', 'NO. 18', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('606', 'non065', 'IV.CATTHETER  NO.20', 'NO.20', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('607', 'non066', 'IV. CATHETER  NO. 22', 'NO.22', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('608', 'non067', 'IV. CATHETER  NO. 24', 'NO.24', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('609', 'non068', 'IV. CATHETER  NO. 26x3/4\"', '26x3/4\"', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('610', 'non069', 'IV. CATHETER  NO. 22  HIV', '22  HIV', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('611', 'non070', 'IV. CATHETER  NO. 24  HIV', '24  HIV', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('612', 'non071', 'NEEDLE  DISPOSABLE  NO. 18 X 1.5\'\'', '18', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('613', 'non073', 'NEEDLE  DISPOSABLE  NO. 22 X 1\'\'', '22', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('614', 'non074', 'NEEDLE  DISPOSABLE  NO. 23 X 1.5\'\'', '23', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('615', 'non075', 'NEEDLE  DISPOSABLE  NO. 24 X 1\'\'', '24 X 1\'\'', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('616', 'non076', 'NEEDLE  DISPOSABLE  NO. 24 X 1.5\'\'', '24 X 1.5\'\'', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('617', 'non078', 'NEEDLE  DISPOSABLE  NO. 25 X 1\'\'', '25', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('618', 'non079', 'NEEDLE  DISPOSABLE  NO. 26 X 0.5\'\'', '26', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('619', 'non080', 'NEEDLE  DISPOSABLE  NO. 27 X 0.5\'\'', '27', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('620', 'non081', 'N.G. TUBE  NO. 8', '8', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('621', 'non082', 'N.G. TUBE  NO. 10', '10', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('622', 'non083', 'N.G. TUBE  NO. 12', '12', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('623', 'non084', 'N.G. TUBE  NO. 14', '14', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('624', 'non085', 'N.G. TUBE  NO. 16', '16', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('625', 'non086', 'N.G. TUBE  NO. 18', '18', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('626', 'non087', 'NEEDLE SPINAL DISPOSABLE  18g. 3 X 1.5\'\'', '8g. 3 X 1.5\'\'', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('627', 'non088', 'NEEDLE SPINAL DISPOSABLE  22g. 3 X 1.5\'\'', '22g. 3 X 1.5\'\'', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('628', 'non089', 'PLASTER  3 M-1\"', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('629', 'non090', 'PLASTER  WHITE  CLOTH  0.5\'\'', 'CLOTH  0.5\'\'', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('630', 'non091', 'PLASTER  WHITE  CLOTH  1\'\'', 'CLOTH  1\'\'', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('631', 'non092', 'PLASTER  WHITE  CLOTH  3\'\'', 'CLOTH  3\'\'', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('632', 'non093', 'PLASTER  WHITE  CLOTH  4\'\'', 'CLOTH  4\'\'', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('633', 'non094', 'IV. SET [ ADULT ]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('634', 'non095', 'IV. SET [ BABY ]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('635', 'non096', 'SYRING  2 CC.', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('636', 'non097', 'SYRINGE  50 CC.', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('637', 'non098', 'SYRINGE   IRRIGATE 50 CC.', 'IRRIGATE', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('638', 'non099', 'SYRINGE  DISPOSABLE  1 CC.', '1ml', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('639', 'non100', 'SYRINGE  DISPOSABLE  1CC.+NEEDLE', '1ml+needle', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('640', 'non101', 'SYRINGE  DISPOSABLE  3 CC.', '3ml', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('641', 'non102', 'SYRINGE  DISPOSABLE  5 CC.', '5ml', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('642', 'non103', 'SYRINGE  DISPOSABLE  10 CC.', '10ml', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('643', 'non104', 'SYRINGE  DISPOSABLE  20 CC.', '20ml', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('644', 'non105', 'SYRINGE  DISPOSABLE  50 CC.', '50ml', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('645', 'non106', 'SYRINGE  DISPOSABLE  50 CC.IRRIGATE', '50 Irrigate', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('646', 'non107', 'THERMOMETER  ORAL', 'ORAL', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('647', 'non108', 'THERMOMETER  RECTAL (3 ชิ้น/ชุด)', 'RECTA', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('648', 'non109', 'TOP DRESSING    (50 pcs/pack)', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('649', 'non110', 'TRANSFUSION  SET', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('650', 'non111', 'URINE  BAG', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('651', 'non112', 'WEBRIL 3\'\'', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('652', 'non113', 'WEBRIL 4\'\'', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('653', 'non114', 'WEBRIL 6\'\'', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('654', 'non115', 'ถุงมือล้วงรก  no. S', '.', 'คู่', '2', '0');
INSERT INTO `items` VALUES ('655', 'non116', 'ถุงมือล้วงรก  no. M', '.', 'คู่', '2', '0');
INSERT INTO `items` VALUES ('656', 'non117', 'สำลีพันไม้  NO. S', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('657', 'non118', 'สำลีพันไม้  NO. L', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('658', 'non119', 'สำลีพันไม้  NO. L  Sterile  ( 5 ก้าน )', '5 ก้าน', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('659', 'non120', 'สำลีพันไม้  NO. L  Sterile  ( 10 ก้าน )', '10 ก้าน', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('660', 'non121', 'ADAPTER FORE UT 4000 A', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('661', 'non122', 'BATTERY เครื่องกระตุกหัวใจ', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('662', 'non123', 'AIR  WAY  NO. 00      ( 40 mm )', '00', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('663', 'non124', 'AIR  WAY  NO. 0       ( 50  mm )', '0', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('664', 'non125', 'AIR  WAY  NO. 1       ( 60 mm )', '1', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('665', 'non126', 'AIR  WAY  NO. 2       ( 70 mm )', '2', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('666', 'non127', 'AIR  WAY  NO. 3       ( 80 mm )', '3', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('667', 'non128', 'AIR  WAY  NO. 4       ( 90 mm )', '4', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('668', 'non129', 'AIR  WAY  NO. 5      ( 100 mm )', '5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('669', 'non130', 'AIR  WAY  NO. 5.5   ( 110 mm )', '5.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('670', 'non131', 'ARM  CUFF [ADULT ]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('671', 'non132', 'ARM  CUFF [ADULT ] ดิจิตอล', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('672', 'non133', 'ARM  CUFF สำหรับใสรถ REFER', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('673', 'non134', 'ARM  CUFF [ เด็กโต ]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('674', 'non135', 'ARM  CUFF [ เด็กโต ] ดิจิตอล', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('675', 'non136', 'ARM  CUFF [ เด็กเล็ก ]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('676', 'non138', 'ARM  SLING  เด็กเล็กลายการ์ตูน 0 -  2 ปี', '0-2ปี', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('677', 'non139', 'ARM  SLING  เด็กเล็กลายการ์ตูน  2- 5 ปี', '2-5ปี', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('678', 'non140', 'ARM  SLING  เด็กเล็กลายการ์ตูน  5 - 7 ปี', '5-7ปี', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('679', 'non141', 'ARM  SLING  NO. SS', 'SS', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('680', 'non142', 'ARM  SLING  NO. S', 'S', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('681', 'non143', 'ARM  SLING  NO. M', 'M', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('682', 'non144', 'ARM SLING  NO.  L', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('683', 'non145', 'AUTOCLAVE  TAPE  3 M', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('684', 'non146', 'BOWIC-DICK PLUS TEST', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('685', 'non147', 'CAP  DISPOSE  (50 pcs/pack)', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('686', 'non148', 'COLD / HOT  PACK', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('687', 'non149', 'COLOS  TOMY  BAG', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('688', 'non150', 'CONNECTER  ตรง 7 x 7', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('689', 'non151', 'DEXONSAFIL', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('690', 'non152', 'DIAPHRAGM  STETOSCOPE', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('691', 'non153', 'EAR  TIP', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('692', 'non154', 'EKG.CREAM', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('693', 'non155', 'EKG. ELECTRODE', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('694', 'non156', 'EKG. ELECTRODE   [เด็ก]', '.', 'PACK', '2', '0');
INSERT INTO `items` VALUES ('695', 'non157', 'EKG.PAPER  IPD.', '.', 'พับ', '2', '0');
INSERT INTO `items` VALUES ('696', 'non158', 'EKG.PAPER  ER.', '.', 'พับ', '2', '0');
INSERT INTO `items` VALUES ('697', 'non159', 'ENDOTRACHEAL  TUBE  NO. 2.5', '2.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('698', 'non160', 'ENDOTRACHEAL  TUBE  NO. 3', '3', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('699', 'non161', 'ENDOTRACHEAL  TUBE  NO. 3.5', '3.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('700', 'non162', 'ENDOTRACHEAL  TUBE  NO. 4', '4', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('701', 'non163', 'ENDOTRACHEAL  TUBE  NO. 4.5', '4.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('702', 'non164', 'ENDOTRACHEAL  TUBE  NO. 5', '5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('703', 'non165', 'ENDOTRACHEAL  TUBE  NO. 5.5', '5.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('704', 'non166', 'ENDOTRACHEAL  TUBE  NO. 6', '6', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('705', 'non167', 'ENDOTRACHEAL  TUBE  NO. 6.5', '6.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('706', 'non168', 'ENDOTRACHEAL  TUBE  NO. 7', '7', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('707', 'non169', 'ENDOTRACHEAL  TUBE  NO. 7.5', '7.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('708', 'non170', 'ENDOTRACHEAL  TUBE  NO. 8', '8', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('709', 'non171', 'ENDOTRACHEAL  TUBE  NO. 8.5', '8.5', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('710', 'non172', 'ENDO GUIDE  NO. S', 'S', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('711', 'non173', 'ENDO GUIDE NO. M', 'M', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('712', 'non174', 'ENDO GUIDE NO. L', 'L', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('713', 'non175', 'EXTENSION  TUBE', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('714', 'non176', 'Face  Shieid (แผ่นบังหน้าล้างเครื่องมือ )', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('715', 'non177', 'FINGER  SPLINT  1/2x12\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('716', 'non178', 'FINGER  SPLINT  3/4\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('717', 'non179', 'FINGER  SPLINT  1\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('718', 'non181', 'FINGER  TIP (ฟิงเกอร์ทิป)', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('719', 'non182', 'GEL  ULTRASOUND', '.', 'GALL', '2', '0');
INSERT INTO `items` VALUES ('720', 'non183', 'HARD  COLLAR  NO. S', 'S', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('721', 'non184', 'HARD  COLLAR  NO. M', 'M', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('722', 'non185', 'HARD  COLLAR  NO. L', 'L', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('723', 'non186', 'HEPARINE LOCK', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('724', 'non187', 'Jackson  Tracheostomy  tube  3 / 7  mm.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('725', 'non188', 'Jackson  Tracheostomy  tube  4 / 8  mm.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('726', 'non189', 'KNEE  JERK', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('727', 'non190', 'MASK  DISPOSE  50p/B', '50p/B', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('728', 'non191', 'MASK  DISPOSE  N  95', 'N  95', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('729', 'non192', 'MECONUIM ASPIRATOR', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('730', 'non193', 'NON  CHILL', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('731', 'non194', 'NYLON   2/0', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('732', 'non195', 'NYLON   3/0', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('733', 'non196', 'NYLON   4/0', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('734', 'non197', 'NYLON  5/0', '.', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('735', 'non199', 'OXYGEN  CANULAR [ ADULT ]', 'ADULT', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('736', 'non200', 'OXYGEN  CANULAR [ BABY ] เด็กโต', 'BABY', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('737', 'non201', 'OXYGEN  MASK  C  BAG   ( ADULT )', 'ADULT', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('738', 'non202', 'OXYGEN  MASK  C  BAG   ( BABY )', 'BABY', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('739', 'non203', 'OXYGEN  TUBE', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('740', 'non204', 'OXYGEN  BOX Size S', 'S', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('741', 'non205', 'OXYGEN   BOX Size M', 'M', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('742', 'non206', 'OXYGEN   BOX Size L', 'L', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('743', 'non207', 'PENROSE  TUBE  0.5\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('744', 'non208', 'PENROSE  TUBE  1\'\'', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('745', 'non209', 'STIF  NECK  COLLAR  [EMS  COLLAR]  เด็ก', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('746', 'non210', 'STIF  NECK  COLLAR  [EMS  COLLAR]  ผู้ใหญ่', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('747', 'non211', 'RESERVIOR  BAG (ADULT)', 'ADULT', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('748', 'non214', 'RESERVIOR  BAG (BABY)', 'BABY', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('749', 'non215', 'RIMS', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('750', 'non216', 'SILK  NO. 1', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('751', 'non217', 'SILK  NO. 2', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('752', 'non218', 'SILK NO. 1/0', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('753', 'non219', 'SILK  NO. 2/0', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('754', 'non220', 'SILK  NO. 3/0', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('755', 'non221', 'SILK  NO. 4/0', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('756', 'non223', 'STERILE GAGE STEAMINTEGRATION', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('757', 'non224', 'STETOSCOPE', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('758', 'non225', 'STETOSCOPE  INFANT steth red', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('759', 'non226', 'SUCTION  DRIAN  BAG', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('760', 'non227', 'SUCTION  TUBE  NO.  6', 'NO.  6', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('761', 'non228', 'SUCTION  TUBE  NO.  8', 'NO.  8', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('762', 'non229', 'SUCTION  TUBE  NO. 10', 'NO.  10', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('763', 'non230', 'SUCTION  TUBE  NO. 12', 'NO.  12', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('764', 'non231', 'SUCTION  TUBE  NO. 14', 'NO.  14', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('765', 'non232', 'SUCTION  TUBE  NO. 16', 'NO.  16', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('766', 'non233', 'SUCTION  TUBE  NO. 18', 'NO.  18', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('767', 'non234', 'SURGICAL  BLADE  NO. 10', 'NO. 10', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('768', 'non235', 'SURGICAL  BLADE  NO. 11', 'NO. 11', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('769', 'non236', 'SURGICAL  BLADE  NO. 12', 'NO. 12', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('770', 'non237', 'SURGICAL  BLADE  NO. 15', 'NO. 15', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('771', 'non239', 'SURGICAL  BLADE  NO. 20', 'NO. 20', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('772', 'non240', 'INFARED  THERMOMETHER  [Microlife]', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('773', 'non241', 'THERMOMETHER  DIGITAL', 'DIGITAL', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('774', 'non242', 'SURGICAL  NEEDLE  MH. 18', 'MH. 18', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('775', 'non243', 'SURGICAL  NEEDLE  MH. 21', 'MH. 21', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('776', 'non244', 'SURGICAL  NEEDLE  MH. 24', 'MH. 24', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('777', 'non245', 'SURGICAL  NEEDLE  MH. 28', 'MH. 28', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('778', 'non246', 'SURGICAL  NEEDLE  MH. 32', 'MH. 32', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('779', 'non247', 'SURGICAL  NEEDLE  MH. 36', 'MH. 36', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('780', 'non250', 'SURGICAL  NEEDLE  TH.40', 'TH. 40', 'DOZ', '2', '0');
INSERT INTO `items` VALUES ('781', 'non251', 'SYRING Ball  เบอร์  2', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('782', 'non252', 'SYRING Ball  เบอร์  3', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('783', 'non253', 'SYRING Ball  เบอร์ 4', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('784', 'non255', 'COMPLY  STEAM RAPID  ATTEST', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('785', 'non256', 'THREE  WAY', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('786', 'non257', 'THOCA  AND  CANULAR  NO. 28', 'NO. 28', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('787', 'non258', 'THOCA  AND  CANULAR  NO. 32', 'NO. 32', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('788', 'non259', 'THERMOMETHER  (วัดอุณหภูมิในตู้เย็น)', 'ตู้เย็น', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('789', 'non260', 'Thermal  Paper ( กระดาษ วัด BP  OPD )', '.', 'Roll', '2', '0');
INSERT INTO `items` VALUES ('790', 'non261', 'PAPER  ULTRASOUND', 'Sony upp110hg', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('791', 'non262', 'VISTO  BUNO  STEEAM', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('792', 'non263', 'URGODERM  10 CM.', '.', 'BOX', '2', '0');
INSERT INTO `items` VALUES ('793', 'non264', 'กระเปาะพ่นยา', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('794', 'non265', 'กระเป๋าน้ำร้อน', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('795', 'non266', 'กระเป๋าน้ำแข็ง', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('796', 'non267', 'เกจ์อ๊อกซิเจน', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('797', 'non268', 'โกร่งบดยา', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('798', 'non269', 'กระเป๋าพยาบาลใบใหญ่', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('799', 'non270', 'แก้วยาน้ำ  30  ml.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('800', 'non271', 'ขวดแก้ว  125  ml.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('801', 'non272', 'ขวดแก้ว  250  ml.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('802', 'non273', 'ขวดแก้วปากแคบ  1,000  ml.', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('803', 'non274', 'ชุดดึงไหล่ เบอร์   S. S', 'S.S', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('804', 'non275', 'ชุดดึงไหล่ เบอร์   S', 'S', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('805', 'non276', 'ชุดดึงไหล่ เบอร์  M', 'M', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('806', 'non277', 'ชุดดึงไหล่ เบอร์  L', 'L', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('807', 'non278', 'ชุดดึงไหล่ เบอร์  XL', 'XL', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('808', 'non279', 'ชุดพ่นยาเด็ก', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('809', 'non280', 'ชุดพ่นยาผู้ใหญ่', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('810', 'non282', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  2 นิ้ว', '2 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('811', 'non283', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  3 นิ้ว', '3 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('812', 'non284', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  4 นิ้ว', '4 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('813', 'non285', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  4 นิ้ว  (ซ้อนขอบ)', '4 นิ้ว-ซ้อน', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('814', 'non286', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  6 นิ้ว', '6 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('815', 'non287', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  8 นิ้ว', '8 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('816', 'non288', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  8 นิ้ว  (ซ้อนขอบ)', '8 นิ้ว-ซ้อน', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('817', 'non289', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  10 นิ้ว ขยายขอบ', '10 นิ้ว ขยายขอบ', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('818', 'non290', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  12 นิ้ว ขยายขอบ', '12 นิ้ว ขยายขอบ', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('819', 'non291', 'ซองบรรจุเวชภัณฑ์ชนิดเรียบ  16 นิ้ว', '16 นิ้ว', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('820', 'non292', 'ตาข่ายสวมแขน  เบอร์   4', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('821', 'non293', 'ตาข่ายคลุมศรีษะ  เบอร์   6', '.', 'ROLL', '2', '0');
INSERT INTO `items` VALUES ('822', 'non294', 'แถบป้องกันความร้อนเครื่องซิล', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('823', 'non295', 'ถุงมือทำความสะอาดแบบรัดข้อ  No. M', 'M', 'คู่', '2', '0');
INSERT INTO `items` VALUES ('824', 'non296', 'ถุงมือทำความสะอาดแบบรัดข้อ  No. L', 'L', 'คู่', '2', '0');
INSERT INTO `items` VALUES ('825', 'non297', 'ป้ายชื่อผูกข้อมือเด็ก      ( สีฟ้า )', '.', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('826', 'non298', 'ป้ายชื่อผูกข้อมือเด็ก      ( สีชมพู )', '.', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('827', 'non299', 'ป้ายชื่อผูกข้อมือผู้ใหญ่ชาย  ( สีฟ้า )', '.', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('828', 'non300', 'ป้ายชื่อผูกข้อมือผู้ใหญ่หญิง  ( สีชมพู )', '.', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('829', 'non301', 'แปรงล้างไซริงน์  2 ซีซี', '2cc', 'ด้าม', '2', '0');
INSERT INTO `items` VALUES ('830', 'non302', 'แปรงล้างไซริงน์  5 ซีซี', '5cc', 'ด้าม', '2', '0');
INSERT INTO `items` VALUES ('831', 'non303', 'แปรงล้างไซริงน์  10 ซีซี', '10cc', 'ด้าม', '2', '0');
INSERT INTO `items` VALUES ('832', 'non304', 'ผ้ายางสองหน้า', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('833', 'non305', 'ยางรองส้นเฝือก', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('834', 'non306', 'ไม้เท้าอลูมิเนียม', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('835', 'non307', 'ไม้กดลิ้น', '.', 'กล่อง', '2', '0');
INSERT INTO `items` VALUES ('836', 'non308', 'ไม้ตรวจมะเร็งปากมดลูก', '.', 'ห่อ', '2', '0');
INSERT INTO `items` VALUES ('837', 'non309', 'ลูกยางพร้อมวาล์ว', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('838', 'non310', 'ลูกยางแว็คคูอั้ม ( EKG )', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('839', 'non311', 'แว่นตา', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('840', 'non312', 'สายยางลาเท็กซ์  เบอร์ 200', '200', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('841', 'non313', 'สายยางลาเท็กซ์  เบอร์ 204', '204', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('842', 'non314', 'สายยางซิลิโคน', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('843', 'non315', 'หลอดไฟลาลิ้งโกสโคป', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('844', 'non316', 'หมอนใยมะพร้าว', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('845', 'non317', 'เอี๊ยมกันเปื้อนพลาสติก', '.', 'พับ', '2', '0');
INSERT INTO `items` VALUES ('846', 'non318', 'เอี้ยมกันเปื้อนแบบซักได้  no. M', '.', 'ตัว', '2', '0');
INSERT INTO `items` VALUES ('847', 'non319', 'แอมบูแบ็ค  ซิลิโคน ผู้ใหญ่', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('848', 'non320', 'แอมบูแบ็ค  ซิลิโคน เด็ก', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('849', 'non321', 'ชาทร์อลูมิเนียม', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('850', 'non322', 'ADSON FORCEPS  NONTOOTH', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('851', 'non323', 'ADSON FORCEPS  TOOTH', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('852', 'non324', 'ARTERY CLAMP (โค้งกลาง)', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('853', 'non325', 'ARTERY CLAMP (โค้งกลาง)  12cm', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('854', 'non326', 'NEEDLE  HOLDER  15  CM.  Crile  wood', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('855', 'non327', 'Scalpel  handle  No.4  ( ด้ามมีด )', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('856', 'non328', 'SPONG FORCEPE', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('857', 'non329', 'ขันน้ำสแตนเลส  14  cm.', '.', 'ใบ', '2', '0');
INSERT INTO `items` VALUES ('858', 'non330', 'ถาดเซ็ตทำแผล', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('859', 'non331', 'FORCEPS  TOOTH 5.5 .\"SSI\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('860', 'non332', 'FORCEPS  NONTOOTH 5.5 \"SSI\"', '.', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('861', 'non333', 'L-S SUPPORT NO. S', 'S', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('862', 'non334', 'L-S SUPPORT NO. M', 'M', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('863', 'non335', 'L-S SUPPORT NO. L', 'L', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('864', 'non336', 'L-S SUPPORT NO. XL', 'XL', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('865', 'non337', 'L-S SUPPORT NO. XXL', 'XXL', 'PCS', '2', '0');
INSERT INTO `items` VALUES ('866', 'non338', 'ถังน้ำทรงกรวยปากกว้าง  12  นิ้ว  (2  อัน)', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('867', 'non339', 'ถังขยะมีล้อ (6 อัน)', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('868', 'non340', 'เสาน้ำเกลือ  (15  ต้น)', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('869', 'non341', 'PARAFFIN BATH 7ลิตร +PARAFFIN WAX 5KG.', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('870', 'non342', 'เครื่องตรวจสมรภาพของปอดชนิดเคลื่อนย้ายได้', '.', 'เครื่อง', '2', '0');
INSERT INTO `items` VALUES ('871', 'non343', 'เครื่องตรวจและติดตามคลื่นหัวใจไฟฟ้าและสัญญาณชีพ', '.', 'เครื่อง', '2', '0');
INSERT INTO `items` VALUES ('872', 'non344', 'SURGICAL  NEEDLE  TH. 28', 'TH. 28', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('873', 'o2', 'เครื่องวัความอิ่มตัวของออกซิเจนในเลือดแบบพกพา', '.', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('874', 'Oper13', 'Operating Scissors 13 cm(ตัดไหม)', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('875', 'pap mic', 'Paper For Microlab ML3500', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('876', 'paper m', 'Paper For Mortara', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('877', 'pla1/2', 'Plaster 3 M- 1/2 \"', '.', 'ม้วน', '2', '0');
INSERT INTO `items` VALUES ('878', 'pro16', 'Probe 16 cm 1/2 mm', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('879', 'rester', 'เครื่องวัดความดันแบบล้อเลื่อน', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('880', 'TE28', 'SURGICAL  NEEDLE Te28', 'TE28', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('881', 'TE32', 'SURGICAL  NEEDLE Te32', 'TE32', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('882', 'TE36', 'SURGICAL  NEEDLE Te36', 'TE36', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('883', 'Termodi', 'ปรอทวัดไข้ดิจิตอล', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('884', 'tool01', 'เครื่องควบคุมสารละลาย Infusion Pump', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('885', 'tooth', 'tooth forceps', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('886', 'กระดาษ', 'กระดาษปริ้นสำหรับเครื่อง NST', '', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('887', 'กระป๋อง', 'กระป๋องรองรับเสมหะ(ฝาแดง)', '', 'กระป๋อง', '2', '0');
INSERT INTO `items` VALUES ('888', 'เครื่อช', 'เครื่องน้ำหนัก Camry', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('889', 'โคมไฟ', 'โคมไฟส่องตรวจ', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('890', 'ตา', 'ชุดตรวจ หู ตา KAWE', '', 'ชุด', '2', '0');
INSERT INTO `items` VALUES ('891', 'เตียง', 'เตียงตรวจโรค', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('892', 'ถ 2', 'ถ้วยไอโอดีน 2ออนด์', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('893', 'ถุงL', 'ถุงมือล้วงรก  no. L', '.', 'คู่', '2', '0');
INSERT INTO `items` VALUES ('894', 'เทอร์', 'เทอร์โมมิเตอร์วัดความชื้นและอุณหภูมิ', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('895', 'แผ่นสไล', 'แผ่นสไลด์เคลื่อนย้ายผู้ป่วย', '', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('896', 'ยูรินอน', 'ยูรินอล', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('897', 'รถสามล้', 'รถสามล้อโยก', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('898', 'ลูกยางไ', 'ลูกยางไม้ค้ำยัน', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('899', 'เสื้อ', 'เสื้อสะท้อนแสงสีขาว', '', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('900', 'หม้อนอน', 'หม้อนอน', '.', 'อัน', '2', '0');
INSERT INTO `items` VALUES ('901', 'หลอด', 'หลอดไฟส่องชนิดแสงเย็น', '.', 'ชิ้น', '2', '0');
INSERT INTO `items` VALUES ('902', 'หูตา', 'เครื่องตรวจหูตา \"Kawe\"', '', 'ชุด', '2', '0');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1456404327');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1456404331');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1456502801');

-- ----------------------------
-- Table structure for pbudgets
-- ----------------------------
DROP TABLE IF EXISTS `pbudgets`;
CREATE TABLE `pbudgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'ประเภทงบ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pbudgets
-- ----------------------------
INSERT INTO `pbudgets` VALUES ('1', 'เงินบำรุง');
INSERT INTO `pbudgets` VALUES ('2', 'เงินUC');
INSERT INTO `pbudgets` VALUES ('3', 'เงินPP');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  `position` varchar(100) DEFAULT NULL COMMENT 'ตำแหน่ง',
  `department_id` int(11) DEFAULT NULL COMMENT 'แผนก',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'รูปประจำตัว',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'ไอน้ำ เรืองโพน', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'จพ.เภสัชกรรมชำนาญงาน', '2', 'nam.jpg');
INSERT INTO `profile` VALUES ('2', 'ผอก.', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('3', 'วันเพ็ญ บินตะคุ', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('4', 'นายสาธิต วรรณภา', null, null, null, null, null, null, 'จนท.พัสดุ', '1', 'pic1.png');
INSERT INTO `profile` VALUES ('5', 'สุพตรา วงษ์สุธโท', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('6', 'จำรัส วันตา', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('7', 'ธีรานาฎ ศรีวิลาศ', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('8', 'หมอแพรว', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('9', 'หมอเบล', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('10', 'นุจรี กุลบุตร', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('11', 'ชญาพร โสชมภู', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('12', 'บังอร คุ้มหมื่นไวย', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('13', 'ชัชญา ขุ่ยร้านหญ้า', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('14', 'บัญฑิตา คำมุงคุณ', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('15', 'พิริยะ สอนสิทธิ์', null, null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('16', 'นิจวรรณ', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for receive
-- ----------------------------
DROP TABLE IF EXISTS `receive`;
CREATE TABLE `receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับจากขนส่ง',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.พัสดุรับ',
  `budget` varchar(100) DEFAULT NULL COMMENT 'เงินงบ',
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `number_anumad` varchar(8) DEFAULT NULL COMMENT 'เลขที่อนุมัติ',
  `date_instock` date DEFAULT NULL COMMENT 'วันที่รับเข้าคลัง',
  `number_instock` varchar(10) DEFAULT NULL COMMENT 'เลขที่รับเข้าคลัง',
  `send_credit` smallint(6) DEFAULT '0' COMMENT 'รายงานเจ้าหนี้',
  `send_credit_date` date DEFAULT NULL COMMENT 'วันที่ส่งเจ้าหนี้',
  `credit_confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.การเงิน',
  `credit_confirm_date` date DEFAULT NULL COMMENT 'วันที่รับรู้หนี้',
  `user_id` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  `updatedate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bill` (`invoice`) USING BTREE COMMENT 'ตรวจบิลซ้ำ'
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receive
-- ----------------------------
INSERT INTO `receive` VALUES ('1', '2016-04-08', '1', 'C 5901375', '212', '212-C 5901375', '5136.0000', '1', '1', '2559', '4391', '2016-04-19', '59041952', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('2', '2016-04-08', '1', 'IV5907730', '335', '335-IV5907730', '2440.0000', '1', '1', '2559', '4390', '2016-04-19', '59041951', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('3', '2016-04-08', '1', 'IV59040095', '283', '283-IV59040095', '2650.0000', '1', '1', '2559', '4389', '2016-04-19', '59041950', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('4', '2016-04-08', '1', 'IV590306352', '104', '104-IV590306352', '66460.0000', '1', '1', '2559', '4388', '2016-04-19', '59041949', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('5', '2016-04-08', '1', 'DH5900597', '84', '84-DH5900597', '2700.0000', '1', '1', '2559', '4387', '2016-04-19', '59041948', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('6', '2016-04-08', '1', 'INV-L-IV\\2016040135', '351', '351-INV-L-IV\\2016040135', '10200.0000', '1', '1', '2559', '4386', '2016-04-19', '59041947', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('7', '2016-04-08', '1', '59014256', '72', '72-59014256', '4280.0000', '1', '1', '2559', '4385', '2016-04-19', '59041946', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('8', '2016-04-08', '1', 'ORV5903000079', '358', '358-ORV5903000079', '7350.0000', '1', '1', '2559', '4384', '2016-04-19', '59041945', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('9', '2016-04-08', '1', 'IV5903-527', '268', '268-IV5903-527', '5500.0000', '1', '1', '2559', '4383', '2016-04-19', '59041944', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('10', '2016-04-08', '1', '1059007986', '71', '71-1059007986', '32480.0000', '1', '1', '2559', '4382', '2016-04-19', '59041943', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('11', '2016-04-08', '1', '117159', '246', '246-117159', '17025.0000', '1', '1', '2559', '4381', '2016-04-19', '59041942', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('12', '2016-04-08', '1', 'C118560', '339', '339-C118560', '4650.0000', '1', '1', '2559', '4380', '2016-04-19', '59041941', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('13', '2016-04-08', '1', 'IV5907159', '335', '335-IV5907159', '1000.0000', '1', '1', '2559', '4379', '2016-04-19', '59041940', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('14', '2016-04-08', '1', 'C5903065', '491', '491-C5903065', '2700.0000', '1', '1', '2559', '4378', '2016-04-19', '59041939', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('15', '2016-04-08', '1', 'TH5903/0324', '468', '468-TH5903/0324', '5250.0000', '1', '1', '2559', '4377', '2016-04-19', '59041938', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('16', '2016-04-08', '1', '22011177', '145', '145-22011177', '28087.5000', '1', '1', '2559', '4376', '2016-04-19', '59041937', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('17', '2016-04-08', '1', 'IV1604402', '498', '498-IV1604402', '3468.7500', '1', '1', '2559', '4375', '2016-04-19', '59041936', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('18', '2016-04-08', '1', 'A9005094', '159', '159-A9005094', '53693.1500', '1', '1', '2559', '-', '2016-04-19', '59041954', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('19', '2016-04-08', '1', 'DIS160329-049', '326', '326-DIS160329-049', '6000.0000', '1', '1', '2559', '4374', '2016-04-19', '59041935', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('20', '2016-04-08', '1', 'SI24/1601687', '418', '418-SI24/1601687', '2900.0000', '1', '1', '2559', '4373', '2016-04-19', '59041934', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('21', '2016-04-08', '1', 'SI24/1601688', '418', '418-SI24/1601688', '3500.0000', '1', '1', '2559', '4372', '2016-04-19', '59041933', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('22', '2016-04-08', '1', 'SI24/1601689', '418', '418-SI24/1601689', '1350.0000', '1', '1', '2559', '4371', '2016-04-19', '59041932', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('23', '2016-04-08', '1', 'SI24/1601690', '418', '418-SI24/1601690', '1000.0000', '1', '1', '2559', '4370', '2016-04-19', '59041931', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('24', '2016-04-08', '1', 'SI24/1601691', '418', '418-SI24/1601691', '925.0000', '1', '1', '2559', '4369', '2016-04-19', '59041930', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('25', '2016-04-08', '1', '501139', '224', '224-501139', '4750.0000', '1', '1', '2559', '4368', '2016-04-19', '59041929', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('26', '2016-04-08', '1', '501146', '224', '224-501146', '7250.0000', '1', '1', '2559', '4367', '2016-04-19', '59041928', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('27', '2016-04-08', '1', '1160309074', '395', '395-1160309074', '7308.1000', '1', '1', '2559', '4366', '2016-04-19', '59041927', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('28', '2016-04-08', '1', '1160309223', '395', '395-1160309223', '1337.5000', '1', '1', '2559', '4365', '2016-04-19', '59041926', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('29', '2016-04-08', '1', 'IV5903002584', '470', '470-IV5903002584', '2016.0000', '1', '1', '2559', '4364', '2016-04-19', '59041925', '1', '2016-04-28', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('30', '2016-04-08', '1', 'IV5903003951', '470', '470-IV5903003951', '14925.0000', '1', '1', '2559', '4363', '2016-04-19', '59041924', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('31', '2016-04-08', '1', '8102114704', '298', '298-8102114704', '22951.5000', '1', '1', '2559', '4362', '2016-04-19', '59041923', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('32', '2016-04-08', '1', '8102406114', '516', '516-8102406114', '35999.0800', '1', '1', '2559', '4361', '2016-04-19', '59041922', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('33', '2016-04-08', '1', 'V011368', '476', '476-V011368', '6000.0000', '1', '1', '2559', '4360', '2016-04-19', '59041921', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('34', '2016-04-08', '1', 'V011367', '476', '476-V011367', '4800.0000', '1', '1', '2559', '4359', '2016-04-19', '59041920', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('35', '2016-04-08', '1', 'T5903/12990', '474', '474-T5903/12990', '4500.0000', '1', '1', '2559', '4358', '2016-04-19', '59041919', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('36', '2016-04-08', '1', 'T5903/12987', '474', '474-T5903/12987', '7670.0000', '1', '1', '2559', '4357', '2016-04-19', '59041918', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('37', '2016-04-08', '1', '59005866', '500', '500-59005866', '29500.0000', '1', '1', '2559', '4356', '2016-04-19', '59041917', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('38', '2016-04-08', '1', '59005867', '500', '500-59005867', '7375.0000', '1', '1', '2559', '4355', '2016-04-19', '59041916', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('39', '2016-04-08', '1', '59005865', '500', '500-59005865', '30900.0000', '1', '1', '2559', '4354', '2016-04-19', '59041915', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('40', '2016-04-08', '1', '59005868', '500', '500-59005868', '3300.0000', '1', '1', '2559', '4353', '2016-04-19', '59041914', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('41', '2016-04-08', '1', '59109210', '473', '473-59109210', '2157.6000', '1', '1', '2559', '4352', '2016-04-19', '59041913', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('42', '2016-04-08', '1', '59109212', '473', '473-59109212', '3950.0000', '1', '1', '2559', '4351', '2016-04-19', '59041912', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('43', '2016-04-08', '1', '59109211', '473', '473-59109211', '1490.0000', '1', '1', '2559', '4350', '2016-04-19', '59041911', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('44', '2016-04-08', '1', '59109214', '473', '473-59109214', '1800.0000', '1', '1', '2559', '4349', '2016-04-19', '59041910', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('45', '2016-04-08', '1', '59109213', '473', '473-59109213', '2800.0000', '1', '1', '2559', '4348', '2016-04-19', '59041909', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('46', '2016-04-08', '1', '591029911', '51', '51-591029911', '7600.0000', '1', '1', '2559', '4347', '2016-04-19', '59041908', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('47', '2016-04-08', '1', '591029003', '51', '51-591029003', '460.0000', '1', '1', '2559', '4346', '2016-04-19', '59041907', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('48', '2016-04-08', '1', '591028932', '51', '51-591028932', '2100.0000', '1', '1', '2559', '4345', '2016-04-19', '59041906', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('49', '2016-04-08', '1', '591028991', '51', '51-591028991', '8000.0000', '1', '1', '2559', '4344', '2016-04-19', '59041905', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('50', '2016-04-08', '1', '5321639166', '121', '121-5321639166', '1605.0000', '1', '1', '2559', '4343', '2016-04-19', '59041904', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('51', '2016-04-08', '1', '5321638850', '121', '121-5321638850', '11395.5000', '1', '1', '2559', '4342', '2016-04-19', '59041903', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('52', '2016-04-08', '1', '81068851', '2', '2-81068851', '3600.0000', '1', '1', '2559', '4341', '2016-04-19', '59041902', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('53', '2016-04-08', '1', '81068846', '2', '2-81068846', '1300.0000', '1', '1', '2559', '4340', '2016-04-19', '59041901', '1', '2016-04-22', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('54', '2016-02-15', '8', '010/7', '588', '588-010/7', '8440.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('56', '2016-04-22', '2', '0227', '572', '572-0227', '6500.0000', '1', '1', '2559', '25590154', '2016-05-26', '48/2559', '1', '2016-05-03', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('57', '2016-04-22', '2', '5321643753', '121', '121-5321643753', '31543.6000', '1', '1', '2559', '2559155', '2016-05-26', '48/2559', '1', '2016-05-03', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('58', '2016-04-25', '1', 'IV5904000837', '470', '470-IV5904000837', '1100.0000', '1', '1', '2559', '4392', '2016-04-28', '59042801', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('59', '2016-04-25', '1', '22050249', '145', '145-22050249', '0.0000', '1', '1', '2559', '4393', '2016-04-28', '59042802', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('60', '2016-04-25', '1', '0376302', '152', '152-0376302', '2500.0000', '1', '1', '2559', '4394', '2016-04-28', '59042803', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('61', '2016-04-25', '1', 'SI0001/59031861', '33', '33-SI0001/59031861', '2730.0000', '1', '1', '2559', '4395', '2016-04-28', '59042804', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('62', '2016-04-25', '1', 'DIS160405-139', '326', '326-DIS160405-139', '2900.0000', '1', '1', '2559', '4396', '2016-04-28', '59042805', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('63', '2016-04-25', '1', 'SS5912717', '392', '392-SS5912717', '6000.0000', '1', '1', '2559', '4397', '2016-04-28', '59042806', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('64', '2016-04-25', '1', 'IV1602718', '66', '66-IV1602718', '53030.0000', '1', '1', '2559', '4398', '2016-04-28', '59042807', '1', '2016-05-16', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('65', '2016-04-27', '5', 'IV1604100060', '5', '5-IV1604100060', '10800.0000', '1', '1', '2559', '87', '2016-04-27', '106', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('67', '2016-04-27', '5', 'BB1603-0580', '589', '589-BB1603-0580', '2000.0000', '1', '1', '2559', '88', '2016-04-27', '107', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('68', '2016-04-27', '5', 'IVD0048384', '590', '590-IVD0048384', '27900.0000', '1', '1', '2559', '89', '2016-04-27', '108', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('69', '2016-04-27', '5', '591004120', '591', '591-591004120', '1100.0000', '1', '1', '2559', '90', '2016-04-27', '109', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('70', '2016-04-27', '5', '5321618107', '121', '121-5321618107', '4579.6000', '1', '1', '2559', '91', '2016-04-27', '110', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('71', '2016-04-27', '5', 'B-580644', '593', '593-B-580644', '200.0000', '1', '1', '2559', '92', '2016-04-27', '111', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('72', '2016-04-27', '5', 'B580894', '593', '593-B580894', '200.0000', '1', '1', '2559', '93', '2016-04-27', '112', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('73', '2016-04-27', '5', 'B-581609', '593', '593-B-581609', '200.0000', '1', '1', '2559', '94', '2016-04-27', '113', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('74', '2016-04-27', '5', 'B-583052', '593', '593-B-583052', '100.0000', '1', '1', '2559', '95', '2016-04-27', '114', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('75', '2016-04-27', '5', 'B-577718', '593', '593-B-577718', '310.0000', '1', '1', '2559', '96', '2016-04-27', '115', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('76', '2016-04-27', '5', 'B-579671', '593', '593-B-579671', '350.0000', '1', '1', '2559', '97', '2016-04-27', '116', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('77', '2016-04-27', '5', 'B-579624', '593', '593-B-579624', '350.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('78', '2016-04-27', '5', 'B-567943', '593', '593-B-567943', '760.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('79', '2016-04-27', '5', 'B-579871', '593', '593-B-579871', '960.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('80', '2016-04-27', '5', 'B578125', '593', '593-B578125', '410.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('81', '2016-04-27', '5', 'B-580958', '593', '593-B-580958', '845.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('82', '2016-04-27', '5', 'B-578316', '593', '593-B-578316', '1085.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('83', '2016-04-27', '5', 'B-551077', '593', '593-B-551077', '1120.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('84', '2016-05-17', '1', 'IVU-59010791', '338', '338-IVU-59010791', '3900.0000', '1', '1', '2559', '4401', '2016-05-19', '59051903', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('85', '2016-05-17', '1', 'IVU-59011975', '338', '338-IVU-59011975', '3900.0000', '1', '1', '2559', '4431', '2016-05-19', '59051933', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('86', '2016-05-17', '1', '621112786', '86', '86-621112786', '4100.0000', '1', '1', '2559', '4402', '2016-05-19', '59051904', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('87', '2016-05-17', '1', 'SI24/1602156', '418', '418-SI24/1602156', '1450.0000', '1', '1', '2559', '4403', '2016-05-19', '59051905', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('88', '2016-05-17', '1', '503592', '224', '224-503592', '2000.0000', '1', '1', '2559', '4404', '2016-05-19', '59051906', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('89', '2016-05-17', '1', '503591', '224', '224-503591', '930.0000', '1', '1', '2559', '4405', '2016-05-19', '59051907', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('90', '2016-05-17', '1', '118196', '246', '246-118196', '2535.0000', '1', '1', '2559', '4406', '2016-05-19', '59051908', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('91', '2016-05-17', '1', 'TH5904/0216', '468', '468-TH5904/0216', '3150.0000', '1', '1', '2559', '4407', '2016-05-19', '59051909', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('92', '2016-05-17', '1', 'V012178', '476', '476-V012178', '1860.0000', '1', '1', '2559', '4408', '2016-05-19', '59051910', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('93', '2016-05-17', '1', '101160402161', '488', '488-101160402161', '2160.0000', '1', '1', '2559', '4409', '2016-05-19', '59051911', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('94', '2016-05-17', '1', 'INV-L-IV\\2016043248', '351', '351-INV-L-IV\\2016043248', '3920.0000', '1', '1', '2559', '4410', '2016-05-19', '59051912', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('95', '2016-05-17', '1', '59012144', '32', '32-59012144', '1450.0000', '1', '1', '2559', '4411', '2016-05-19', '59051913', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('96', '2016-05-17', '1', '621113811', '86', '86-621113811', '1750.0000', '1', '1', '2559', '4412', '2016-05-19', '59051914', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('97', '2016-05-17', '1', '0377123', '152', '152-0377123', '4000.0000', '1', '1', '2559', '4413', '2016-05-19', '59051915', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('98', '2016-05-17', '1', 'SS5915359', '392', '392-SS5915359', '2490.0000', '1', '1', '2559', '4414', '2016-05-19', '59051916', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('99', '2016-05-17', '1', 'IV5904002913', '470', '470-IV5904002913', '1700.0000', '1', '1', '2559', '4415', '2016-05-19', '59051917', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('100', '2016-05-17', '1', 'IV5904002725', '470', '470-IV5904002725', '1140.0000', '1', '1', '2559', '4416', '2016-05-19', '59051918', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('101', '2016-05-17', '1', '621113634', '86', '86-621113634', '3175.0000', '1', '1', '2559', '4417', '2016-05-19', '59051919', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('102', '2016-05-17', '1', '591037267', '51', '51-591037267', '2000.0000', '1', '1', '2559', '4418', '2016-05-19', '59051920', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('103', '2016-05-17', '1', '591037389', '51', '51-591037389', '2100.0000', '1', '1', '2559', '4419', '2016-05-19', '59051921', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('104', '2016-05-17', '1', '8080007678', '368', '368-8080007678', '1869.9900', '1', '1', '2559', '4420', '2016-05-19', '59051922', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('105', '2016-05-17', '1', '8080007740', '368', '368-8080007740', '1849.7100', '1', '1', '2559', '4421', '2016-05-19', '59051923', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('106', '2016-05-17', '1', '59139318', '473', '473-59139318', '2800.0000', '1', '1', '2559', '4422', '2016-05-19', '59051924', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('107', '2016-05-17', '1', '59139316', '473', '473-59139316', '1490.0000', '1', '1', '2559', '4423', '2016-05-19', '59051925', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('108', '2016-05-17', '1', '59139317', '473', '473-59139317', '2370.0000', '1', '1', '2559', '4424', '2016-05-19', '59051926', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('109', '2016-05-17', '1', '81069552', '2', '2-81069552', '2600.0000', '1', '1', '2559', '4425', '2016-05-19', '59051927', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('110', '2016-05-17', '1', 'C119185', '339', '339-C119185', '3150.0000', '1', '1', '2559', '4426', '2016-05-19', '59051928', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('111', '2016-05-17', '1', 'DIS160427-107', '326', '326-DIS160427-107', '4653.0000', '1', '1', '2559', '4427', '2016-05-19', '59051929', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('112', '2016-05-17', '1', 'IV5904003329', '470', '470-IV5904003329', '2200.0000', '1', '1', '2559', '4428', '2016-05-19', '59051930', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('113', '2016-05-17', '1', 'IV1605593', '498', '498-IV1605593', '4200.0000', '1', '1', '2559', '4429', '2016-05-19', '59051931', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('114', '2016-05-17', '1', '8370002862', '21', '21-8370002862', '3000.0000', '1', '1', '2559', '4430', '2016-05-19', '59051932', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('115', '2016-05-17', '1', '93103', '340', '340-93103', '9000.0000', '1', '1', '2559', '4453', '2016-05-19', '59051961', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('116', '2016-05-17', '1', '01-GM-1-2-2-2016007569', '165', '165-01-GM-1-2-2-2016007569', '7490.0000', '1', '1', '2559', '4432', '2016-05-19', '59051934', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('117', '2016-05-17', '1', 'V012177', '476', '476-V012177', '8300.0000', '1', '1', '2559', '4433', '2016-05-19', '59051935', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('118', '2016-05-17', '1', 'IV590500891', '104', '104-IV590500891', '640.0000', '1', '1', '2559', '4400', '2016-05-19', '59051902', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('119', '2016-05-17', '1', '59017715', '72', '72-59017715', '8667.0000', '1', '1', '2559', '4434', '2016-05-19', '59051936', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('120', '2016-05-17', '1', 'IVN-L-IV\\2016043252', '351', '351-IVN-L-IV\\2016043252', '7250.0000', '1', '1', '2559', '4435', '2016-05-19', '59051937', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('121', '2016-05-17', '1', '590627', '486', '486-590627', '5000.0000', '1', '1', '2559', '4399', '2016-05-19', '59051901', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('122', '2016-05-17', '1', 'SI24/1602157', '418', '418-SI24/1602157', '5100.0000', '1', '1', '2559', '4436', '2016-05-19', '59051938', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('123', '2016-05-17', '1', 'IV16-19938', '366', '366-IV16-19938', '6750.0000', '1', '1', '2559', '4437', '2016-05-19', '59051939', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('124', '2016-05-17', '1', '591037303', '51', '51-591037303', '8000.0000', '1', '1', '2559', '4438', '2016-05-19', '59051940', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('125', '2016-05-17', '1', 'DH5900777', '84', '84-DH5900777', '10000.0000', '1', '1', '2559', '4439', '2016-05-19', '59051941', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('126', '2016-05-17', '1', 'DS567/00011', '245', '245-DS567/00011', '10000.0000', '1', '1', '2559', '4440', '2016-05-19', '59051942', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('127', '2016-05-17', '1', '22101856', '145', '145-22101856', '11020.0000', '1', '1', '2559', '4441', '2016-05-19', '59051943', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('128', '2016-05-17', '1', '1160406806', '395', '395-1160406806', '14327.3000', '1', '1', '2559', '4442', '2016-05-19', '59051944', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('129', '2016-05-17', '1', '621113196', '86', '86-621113196', '23990.0000', '1', '1', '2559', '4443', '2016-05-19', '59051945', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('130', '2016-05-17', '1', 'IV5904002718', '470', '470-IV5904002718', '12700.0000', '1', '1', '2559', '4444', '2016-05-19', '59051946', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('131', '2016-05-17', '1', '591037320', '51', '51-591037320', '11400.0000', '1', '1', '2559', '4445', '2016-05-19', '59051947', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('132', '2016-05-17', '1', '591037354', '51', '51-591037354', '10700.0000', '1', '1', '2559', '4446', '2016-05-19', '59051948', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('133', '2016-05-17', '1', 'INV-L-IV\\2016043244', '351', '351-INV-L-IV\\2016043244', '14200.0000', '1', '1', '2559', '4447', '2016-05-19', '59051949', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('134', '2016-05-17', '1', 'INV5904-0860', '269', '269-INV5904-0860', '82500.0000', '1', '1', '2559', '4448', '2016-05-19', '59051950', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('135', '2016-05-17', '1', '8370002889', '21', '21-8370002889', '13000.0000', '1', '1', '2559', '4449', '2016-05-19', '59051951', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('136', '2016-05-17', '1', 'IV590403578', '104', '104-IV590403578', '20900.0000', '1', '1', '2559', '4450', '2016-05-19', '59051952', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('137', '2016-05-17', '1', 'SO  1604-2031', '153', '153-SO  1604-2031', '22875.0000', '1', '1', '2559', '4451', '2016-05-19', '59051953', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('138', '2016-05-17', '1', '59007621', '500', '500-59007621', '14750.0000', '1', '1', '2559', '4453', '2016-05-19', '59051954', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('139', '2016-05-17', '1', 'A9005458', '159', '159-A9005458', '136.3500', '1', '1', '2559', '513', '2016-05-19', '59051955', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('140', '2016-05-17', '1', 'A9005504', '159', '159-A9005504', '5900.0000', '1', '1', '2559', '513', '2016-05-19', '59051960', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('141', '2016-05-17', '1', 'A9005951', '159', '159-A9005951', '3021.0000', '1', '1', '2559', '513', '2016-05-19', '59051956', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('142', '2016-05-17', '1', 'A9005845', '159', '159-A9005845', '2500.0000', '1', '1', '2559', '513', '2016-05-19', '59051957', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('143', '2016-05-17', '1', 'A9005844', '159', '159-A9005844', '28800.0000', '1', '1', '2559', '513', '2016-05-19', '59051958', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('144', '2016-05-17', '1', 'A9005701', '159', '159-A9005701', '102551.1500', '1', '1', '2559', '513', '2016-05-19', '59051959', '1', '2016-06-04', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('145', '2016-05-19', '2', '59/0610', '562', '562-59/0610', '11760.0000', '1', '1', '2559', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('146', '2016-05-19', '2', '103160500068', '543', '543-103160500068', '4654.5000', '1', '', '', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('147', '2016-05-19', '2', '5321835490', '121', '121-5321835490', '30195.4000', '1', '', '', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('148', '2016-05-19', '2', 'iv5914519', '464', '464-iv5914519', '61900.0000', '1', '', '', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('150', '2016-05-19', '2', '590502293', '299', '299-590502293', '8988.0000', '1', '', '', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('151', '2016-05-19', '2', '592060', '558', '558-592060', '17400.0000', '1', '', '', '', null, '', '1', '2016-05-23', '1', '2016-05-30', null, null, null);
INSERT INTO `receive` VALUES ('152', '2016-05-24', '5', 'IVD0048777', '590', '590-IVD0048777', '27900.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('153', '2016-05-24', '5', 'IS9003400', '490', '490-IS9003400', '2750.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('154', '2016-05-24', '5', '92861', '340', '340-92861', '21500.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('155', '2016-05-24', '5', 'IVG00039300', '594', '594-IVG00039300', '3180.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('156', '2016-05-24', '4', 'BB1604-0571', '589', '589-BB1604-0571', '12450.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('279', '2016-07-11', '7', 'PM5907-068', '597', '597-PM5907-068', '16400.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('158', '2016-05-23', '1', '5321791702', '121', '121-5321791702', '642.0000', '1', '1', '2559', '4454', '2016-05-30', '59053001', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('159', '2016-05-23', '1', '5321798810', '121', '121-5321798810', '3798.5000', '1', '1', '2559', '4455', '2016-05-30', '59053002', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('160', '2016-05-23', '1', 'SS5915781', '392', '392-SS5915781', '1700.0000', '1', '1', '2559', '4456', '2016-05-30', '59053003', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('161', '2016-05-23', '1', '59013871', '32', '32-59013871', '1325.0000', '1', '1', '2559', '4457', '2016-05-30', '59053004', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('162', '2016-05-23', '1', '16BU07537', '303', '303-16BU07537', '3000.0000', '1', '1', '2559', '4458', '2016-05-30', '59053005', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('163', '2016-05-23', '1', '22096248', '145', '145-22096248', '3852.0000', '1', '1', '2559', '4459', '2016-05-30', '59053006', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('164', '2016-05-23', '1', 'IV59042263', '283', '283-IV59042263', '4000.0000', '1', '1', '2559', '4460', '2016-05-30', '59053007', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('165', '2016-05-23', '1', 'DH5900760', '84', '84-DH5900760', '6000.0000', '1', '1', '2559', '4461', '2016-05-30', '59053008', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('166', '2016-05-23', '1', '22111445', '145', '145-22111445', '16050.0000', '1', '1', '2559', '4462', '2016-05-30', '59053009', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('167', '2016-05-23', '1', '621113401', '86', '86-621113401', '20550.0000', '1', '1', '2559', '4463', '2016-05-30', '59053010', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('168', '2016-05-23', '1', 'A9006000', '159', '159-A9006000', '99467.2000', '1', '1', '2559', '471', '2016-05-30', '59053012', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('169', '2016-05-24', '5', 'ฺBB1604-0571', '589', '589-ฺBB1604-0571', '12450.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('170', '2016-05-24', '5', 'BB1604-0216', '589', '589-BB1604-0216', '250.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('171', '2016-05-24', '5', 'BB1604-0297', '589', '589-BB1604-0297', '3110.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('172', '2016-05-24', '5', '5321849040', '121', '121-5321849040', '17120.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('173', '2016-05-24', '5', 'IV5904133', '595', '595-IV5904133', '10000.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('174', '2016-05-24', '5', 'IV5904131', '595', '595-IV5904131', '5000.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('175', '2016-05-24', '5', 'IV5905008', '595', '595-IV5905008', '17500.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('176', '2016-05-24', '5', 'IV5904132', '595', '595-IV5904132', '5000.0000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('177', '2016-05-24', '5', 'L056617', '596', '596-L056617', '25123.6000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('178', '2016-05-24', '5', 'L056616', '596', '596-L056616', '24652.8000', '1', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('179', '2016-05-23', '1', '8102114916', '298', '298-8102114916', '20651.0000', '1', '1', '2559', '4464', '2016-05-30', '59053011', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('180', '2016-02-09', '7', 'INV5809-0501', '598', '598-INV5809-0501', '88006.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('181', '2016-02-09', '7', 'INV 5809-0510', '598', '598-INV 5809-0510', '71396.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('182', '2016-02-09', '7', 'INV 5809-0490', '598', '598-INV 5809-0490', '61880.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('183', '2016-02-09', '7', 'EX-IV5809-072', '599', '599-EX-IV5809-072', '74000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('184', '2016-02-09', '7', 'IV 5711098', '601', '601-IV 5711098', '50120.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('185', '2016-02-09', '7', 'IV 5901-00074', '600', '600-IV 5901-00074', '3600.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('186', '2016-02-09', '7', 'EX-IV5901-080', '599', '599-EX-IV5901-080', '37000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('187', '2016-02-09', '7', 'INV5901-0563', '598', '598-INV5901-0563', '99157.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('188', '2016-02-09', '7', 'IV5812-00031', '600', '600-IV5812-00031', '5000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('189', '2016-02-09', '7', 'IV5901-00053', '600', '600-IV5901-00053', '4800.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('190', '2016-02-09', '7', 'IV5811-00100', '600', '600-IV5811-00100', '3400.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('191', '2016-02-09', '7', 'PM5902-072', '597', '597-PM5902-072', '16400.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('192', '2016-02-09', '7', 'IV5902-00019', '600', '600-IV5902-00019', '40500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('193', '2016-02-09', '7', 'IV5812060', '601', '601-IV5812060', '15000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('194', '2016-02-09', '7', 'IV5902-00055', '600', '600-IV5902-00055', '16595.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('195', '2016-02-09', '7', 'IV 5901049', '601', '601-IV 5901049', '60000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('196', '2016-02-09', '7', 'TI 1215500', '215', '215-TI 1215500', '15000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('197', '2016-06-08', '1', '591047688', '51', '51-591047688', '375.0000', '1', '1', '2559', '4465', '2016-06-10', '59061001', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('198', '2016-06-08', '1', '8080009002', '368', '368-8080009002', '1300.0000', '1', '1', '2559', '4466', '2016-06-10', '59061002', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('199', '2016-06-08', '1', '59015274', '32', '32-59015274', '1325.0000', '1', '1', '2559', '4467', '2016-06-10', '59061003', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('200', '2016-06-08', '1', 'T5905/12374', '474', '474-T5905/12374', '1900.0000', '1', '1', '2559', '4468', '2016-06-10', '59061004', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('201', '2016-06-08', '1', '591047778', '51', '51-591047778', '2000.0000', '1', '1', '2559', '4469', '2016-06-10', '59061005', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('202', '2016-06-08', '1', '59015748', '32', '32-59015748', '2245.0000', '1', '1', '2559', '4470', '2016-06-10', '59061006', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('203', '2016-06-08', '1', 'IV1606691', '498', '498-IV1606691', '2300.0000', '1', '1', '2559', '4471', '2016-06-10', '59061007', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('204', '2016-06-08', '1', '0378360', '152', '152-0378360', '2134.0000', '1', '1', '2559', '4472', '2016-06-10', '59061008', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('205', '2016-06-08', '1', 'SS5918122', '392', '392-SS5918122', '2400.0000', '1', '1', '2559', '4473', '2016-06-10', '59061009', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('206', '2016-06-08', '1', 'C119992', '339', '339-C119992', '2430.0000', '1', '1', '2559', '4474', '2016-06-10', '59061010', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('207', '2016-06-08', '1', 'IV16-24783', '366', '366-IV16-24783', '2461.0000', '1', '1', '2559', '4475', '2016-06-10', '59061011', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('208', '2016-06-08', '1', '0377938', '152', '152-0377938', '2568.0000', '1', '1', '2559', '4476', '2016-06-10', '59061012', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('209', '2016-06-08', '1', '5447033593', '119', '119-5447033593', '2782.0000', '1', '1', '2559', '4477', '2016-06-10', '59061013', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('210', '2016-06-08', '1', 'TH5905/0190', '468', '468-TH5905/0190', '3150.0000', '1', '1', '2559', '4478', '2016-06-10', '59061014', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('211', '2016-06-08', '1', '81070544', '2', '2-81070544', '3250.0000', '1', '1', '2559', '4479', '2016-06-10', '59061015', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('212', '2016-06-08', '1', '0378229', '152', '152-0378229', '3280.0000', '1', '1', '2559', '4480', '2016-06-10', '59061016', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('213', '2016-06-08', '1', '59009564', '500', '500-59009564', '3300.0000', '1', '1', '2559', '4481', '2016-06-10', '59061017', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('214', '2016-06-08', '1', '621117164', '86', '86-621117164', '3500.0000', '1', '1', '2559', '4482', '2016-06-10', '59061018', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('215', '2016-06-08', '1', '591048380', '51', '51-591048380', '4000.0000', '1', '1', '2559', '4483', '2016-06-10', '59061019', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('216', '2016-06-08', '1', '8102115104', '298', '298-8102115104', '4173.0000', '1', '1', '2559', '4484', '2016-06-10', '59061020', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('217', '2016-06-08', '1', 'IV590503127', '104', '104-IV590503127', '4500.0000', '1', '1', '2559', '4485', '2016-06-10', '59061021', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('218', '2016-06-08', '1', 'DIS160527-071', '326', '326-DIS160527-071', '4653.0000', '1', '1', '2559', '4486', '2016-06-10', '59061022', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('219', '2016-06-08', '1', '59170715', '473', '473-59170715', '4957.6000', '1', '1', '2559', '4487', '2016-06-10', '59061023', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('220', '2016-06-08', '1', '506435', '224', '224-506435', '5350.0000', '1', '1', '2559', '4488', '2016-06-10', '59061024', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('221', '2016-06-08', '1', 'ORV5905000070', '358', '358-ORV5905000070', '6300.0000', '1', '1', '2559', '4489', '2016-06-10', '59061025', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('222', '2016-06-08', '1', 'SI24/1602709', '418', '418-SI24/1602709', '6400.0000', '1', '1', '2559', '4490', '2016-06-10', '59061026', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('223', '2016-06-08', '1', '59022270', '72', '72-59022270', '6580.5000', '1', '1', '2559', '4491', '2016-06-10', '59061027', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('224', '2016-06-08', '1', 'IVU-59013448', '338', '338-IVU-59013448', '8035.0000', '1', '1', '2559', '4492', '2016-06-10', '59061028', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('225', '2016-06-08', '1', 'IV5905-476', '268', '268-IV5905-476', '8450.0000', '1', '1', '2559', '4493', '2016-06-10', '59061029', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('226', '2016-06-08', '1', 'SS5919131', '392', '392-SS5919131', '9320.0000', '1', '1', '2559', '4494', '2016-06-10', '59061030', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('227', '2016-06-08', '1', '591048180', '51', '51-591048180', '9500.0000', '1', '1', '2559', '4495', '2016-06-10', '59061031', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('228', '2016-06-08', '1', '5321975588', '121', '121-5321975588', '10100.8000', '1', '1', '2559', '4496', '2016-06-10', '59061032', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('229', '2016-06-08', '1', '22229608', '145', '145-22229608', '10700.0000', '1', '1', '2559', '4497', '2016-06-10', '59061033', '1', '2016-08-14', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('230', '2016-06-08', '1', 'IV5905003375', '470', '470-IV5905003375', '12950.0000', '1', '1', '2559', '4498', '2016-06-10', '59061034', '1', '2016-08-11', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('231', '2016-06-08', '1', 'C120091', '339', '339-C120091', '13160.0000', '1', '1', '2559', '4499', '2016-06-10', '59061035', '1', '2016-08-11', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('232', '2016-06-08', '1', '59009563', '500', '500-59009563', '15450.0000', '1', '1', '2559', '4500', '2016-06-10', '59061036', '1', '2016-08-11', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('233', '2016-06-08', '1', '8102406311', '516', '516-8102406311', '17999.5400', '1', '1', '2559', '4501', '2016-06-10', '59061037', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('234', '2016-06-08', '1', '8102115101', '298', '298-8102115101', '18725.0000', '1', '1', '2559', '4502', '2016-06-10', '59061038', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('235', '2016-06-08', '1', '22225921', '145', '145-22225921', '18830.0000', '1', '1', '2559', '4503', '2016-06-10', '59061039', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('236', '2016-06-08', '1', '621116580', '86', '86-621116580', '20650.0000', '1', '1', '2559', '4504', '2016-06-10', '59061040', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('237', '2016-06-08', '1', 'IV590504355', '104', '104-IV590504355', '39000.0000', '1', '1', '2559', '4505', '2016-06-10', '59061041', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('238', '2016-06-08', '1', 'DIS160425-087', '326', '326-DIS160425-087', '90000.0000', '1', '1', '2559', '4506', '2016-06-10', '59061042', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('239', '2016-06-08', '1', 'A9006399', '159', '159-A9006399', '25695.5000', '1', '1', '2559', '476', '2016-06-10', '59061043', '1', '2016-08-09', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('240', '2016-02-09', '2', 'MG5902-0506', '602', '602-MG5902-0506', '9600.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('241', '2016-06-15', '5', 'BB255905/00502', '589', '589-BB255905/00502', '14190.0000', '1', '1', '2559', '183', '2016-06-15', '214', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('242', '2016-06-15', '5', 'IVD0049071', '590', '590-IVD0049071', '36000.0000', '1', '1', '2559', '25590002', '2016-08-03', '', '1', '2016-08-28', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('243', '2016-06-15', '5', 'I-A4-59/1909', '603', '603-I-A4-59/1909', '21545.5200', '1', '1', '2559', '184', '2016-06-15', '216', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('244', '2016-06-15', '5', 'B-586350', '593', '593-B-586350', '900.0000', '1', '1', '2559', '185', '2016-06-15', '217', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('245', '2016-06-15', '5', 'B-582218', '593', '593-B-582218', '300.0000', '1', '1', '2559', '186', '2016-06-15', '218', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('246', '2016-06-15', '5', 'ฺB-587497', '593', '593-ฺB-587497', '280.0000', '1', '1', '2559', '187', '2016-06-15', '219', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('247', '2016-06-15', '5', 'B-592064', '593', '593-B-592064', '2200.0000', '1', '1', '2559', '188', '2016-06-15', '220', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('248', '2016-06-15', '5', 'B-594181', '593', '593-B-594181', '2200.0000', '1', '1', '2559', '189', '2016-06-15', '221', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('249', '2016-06-15', '5', 'B-598674', '593', '593-B-598674', '2200.0000', '1', '1', '2559', '190', '2016-06-15', '222', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('250', '2016-06-15', '5', 'B-592813', '593', '593-B-592813', '1410.0000', '1', '1', '2559', '191', '2016-06-15', '223', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('251', '2016-06-15', '5', 'B-586671', '593', '593-B-586671', '200.0000', '1', '1', '2559', '192', '2016-06-15', '224', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('252', '2016-06-15', '5', 'B-591767', '593', '593-B-591767', '200.0000', '1', '1', '2559', '193', '2016-06-15', '225', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('253', '2016-06-15', '5', 'B-588986', '593', '593-B-588986', '200.0000', '1', '1', '2559', '194', '2016-06-15', '226', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('254', '2016-06-15', '5', 'B-590144', '593', '593-B-590144', '200.0000', '1', '1', '2559', '195', '2016-06-15', '227', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('255', '2016-06-15', '5', 'B-588904', '593', '593-B-588904', '200.0000', '1', '1', '2559', '196', '2016-06-15', '228', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('256', '2016-06-15', '5', 'B-591918', '593', '593-B-591918', '100.0000', '1', '1', '2559', '197', '2016-06-15', '229', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('257', '2016-06-15', '5', 'B-594174', '593', '593-B-594174', '100.0000', '1', '1', '2559', '198', '2016-06-15', '230', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('258', '2016-06-15', '5', 'B-592193', '593', '593-B-592193', '100.0000', '1', '1', '2559', '199', '2016-06-15', '231', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('259', '2016-06-15', '5', 'ฺB-585050', '593', '593-ฺB-585050', '100.0000', '1', '1', '2559', '200', '2016-06-15', '232', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('260', '2016-06-15', '5', 'B-587796', '593', '593-B-587796', '855.0000', '1', '1', '2559', '201', '2016-06-15', '233', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('261', '2016-06-15', '5', 'B-587867', '593', '593-B-587867', '885.0000', '1', '1', '2559', '202', '2016-06-15', '234', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('262', '2016-06-15', '5', 'B-586743', '593', '593-B-586743', '820.0000', '1', '1', '2559', '203', '2016-06-15', '235', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('263', '2016-06-15', '5', 'B-589040', '593', '593-B-589040', '445.0000', '1', '1', '2559', '204', '2016-06-15', '236', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('264', '2016-06-15', '5', 'B-594390', '593', '593-B-594390', '445.0000', '1', '', '2559', '205', '2016-06-15', '237', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('265', '2016-06-15', '5', 'B-596268', '593', '593-B-596268', '760.0000', '1', '1', '2559', '206', '2016-06-15', '238', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('266', '2016-06-15', '5', 'B-583777', '593', '593-B-583777', '500.0000', '1', '1', '2559', '207', '2016-06-15', '239', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('267', '2016-06-15', '5', 'B-589498', '593', '593-B-589498', '1115.0000', '1', '1', '2559', '208', '2016-06-15', '240', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('268', '2016-06-15', '5', 'B-594382', '593', '593-B-594382', '780.0000', '1', '1', '2559', '209', '2016-06-15', '241', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('269', '2016-06-15', '5', 'B-589270', '593', '593-B-589270', '850.0000', '1', '1', '2559', '210', '2016-06-15', '242', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('270', '2016-06-15', '5', 'B-587794', '593', '593-B-587794', '1605.0000', '1', '1', '2559', '211', '2016-06-15', '243', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('271', '2016-06-15', '5', 'B-598699', '593', '593-B-598699', '1635.0000', '1', '1', '2559', '212', '2016-06-15', '244', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('272', '2016-06-15', '5', 'B-586351', '593', '593-B-586351', '1820.0000', '1', '1', '2559', '213', '2016-06-15', '245', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('273', '2016-06-17', '2', 'iv5914511', '464', '464-iv5914511', '2600.0000', '1', '1', '2559', '25590238', '2016-06-22', '2559/056', '1', '2016-07-22', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('274', '2016-06-17', '2', '5322038820', '541', '541-5322038820', '20223.0000', '1', '1', '2559', '25590239', '2016-06-22', '2559/057', '1', '2016-07-22', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('275', '2016-06-17', '2', '59/0715', '562', '562-59/0715', '6000.0000', '1', '1', '2559', '25590240', '2016-06-22', '2559/058', '1', '2016-07-22', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('276', '2016-06-17', '2', '593939', '537', '537-593939', '6150.0000', '1', '1', '2559', '25590241', '2016-06-22', '2559/059', '1', '2016-07-22', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('278', '2016-06-17', '2', 'iv0013657', '604', '604-iv0013657', '3120.0000', '1', '1', '2559', '25590242', '2016-06-22', '2559/060', '1', '2016-07-22', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('280', '2016-07-04', '1', 'ช.59/08288', '143', '143-ช.59/08288', '5850.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('281', '2016-07-12', '1', '59197092', '473', '473-59197092', '1833.9600', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('282', '2016-07-12', '1', 'V014267', '476', '476-V014267', '1900.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('283', '2016-07-12', '1', '01-GM-1-2-2-2016011073', '165', '165-01-GM-1-2-2-2016011073', '2033.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('284', '2016-07-12', '1', '8102115246', '298', '298-8102115246', '2086.5000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('285', '2016-07-12', '1', '101160602208', '488', '488-101160602208', '2160.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('286', '2016-07-12', '1', 'IV5906002598', '470', '470-IV5906002598', '2142.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('287', '2016-07-12', '1', '621119373', '86', '86-621119373', '2340.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('288', '2016-07-12', '1', 'IV 1608756', '498', '498-IV 1608756', '2424.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('289', '2016-07-12', '1', 'SI24/1603212', '418', '418-SI24/1603212', '2700.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('290', '2016-07-12', '1', '508624', '224', '224-508624', '2900.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('291', '2016-07-12', '1', 'INV-L-IV\\2016062850', '351', '351-INV-L-IV\\2016062850', '2900.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('292', '2016-07-12', '1', 'C120517', '339', '339-C120517', '3150.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('293', '2016-07-12', '1', '16BU09464', '303', '303-16BU09464', '3200.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('294', '2016-07-12', '1', '621119758', '86', '86-621119758', '3175.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('295', '2016-07-12', '1', 'SS5922230', '392', '392-SS5922230', '3100.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('296', '2016-07-12', '1', 'DH5901043', '84', '84-DH5901043', '3600.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('297', '2016-07-12', '1', '59197093', '473', '473-59197093', '3300.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('298', '2016-07-12', '1', 'V014533', '476', '476-V014533', '3520.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('299', '2016-07-12', '1', 'IV5914560', '335', '335-IV5914560', '3550.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('300', '2016-07-12', '1', '591056233', '51', '51-591056233', '4000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('301', '2016-07-12', '1', '59026367', '72', '72-59026367', '4280.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('302', '2016-07-12', '1', 'IV5914561', '335', '335-IV5914561', '4653.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('303', '2016-07-12', '1', 'SS5921789', '392', '392-SS5921789', '4980.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('304', '2016-07-12', '1', 'SI24/1603211', '418', '418-SI24/1603211', '5100.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('305', '2016-07-12', '1', 'INV-L-IV\\2016062854', '351', '351-INV-L-IV\\2016062854', '6280.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('306', '2016-07-12', '1', '621120351', '86', '86-621120351', '6350.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('307', '2016-07-12', '1', '8080016814', '368', '368-8080016814', '6000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('308', '2016-07-12', '1', 'DS574/00080', '244', '244-DS574/00080', '6000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('309', '2016-07-12', '1', '1160604722', '395', '395-1160604722', '7286.7000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('310', '2016-07-12', '1', '59011050', '500', '500-59011050', '7500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('311', '2016-07-12', '1', '621119030', '86', '86-621119030', '7000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('312', '2016-07-12', '1', 'IVU-59015908', '338', '338-IVU-59015908', '7260.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('313', '2016-07-12', '1', '22364183', '145', '145-22364183', '7383.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('314', '2016-07-12', '1', '5322140931', '121', '121-5322140931', '7597.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('315', '2016-07-12', '1', '8080010949', '368', '368-8080010949', '7299.5400', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('316', '2016-07-12', '1', '8370011608', '21', '21-8370011608', '7375.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('317', '2016-07-12', '1', 'TH5906/0183', '468', '468-TH5906/0183', '7000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('318', '2016-07-12', '1', 'V014268', '476', '476-V014268', '8298.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('319', '2016-07-12', '1', '591056843', '51', '51-591056843', '9500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('320', '2016-07-12', '1', 'V014537', '476', '476-V014537', '10000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('321', '2016-07-12', '1', 'IV1604225', '66', '66-IV1604225', '13268.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('322', '2016-07-12', '1', 'IV1604023', '66', '66-IV1604023', '13268.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('323', '2016-07-12', '1', '22363318', '145', '145-22363318', '13910.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('324', '2016-07-12', '1', 'C120516', '339', '339-C120516', '13160.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('325', '2016-07-12', '1', 'IV5914559', '335', '335-IV5914559', '20760.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('326', '2016-07-12', '1', 'IV5906002177', '470', '470-IV5906002177', '22000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('327', '2016-07-12', '1', 'IV590603125', '104', '104-IV590603125', '39800.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('328', '2016-07-12', '1', 'IV1604224', '66', '66-IV1604224', '42424.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('329', '2016-07-12', '1', 'DIS160527-036', '326', '326-DIS160527-036', '72000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('330', '2016-07-12', '1', 'INV5905-1191', '269', '269-INV5905-1191', '82500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('331', '2016-07-12', '1', 'A9007376', '159', '159-A9007376', '27500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('332', '2016-07-14', '3', '5907001', '547', '547-5907001', '180000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('333', '2016-07-14', '4', 'KYS_005/2559', '223', '223-KYS_005/2559', '94000.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('334', '2016-07-22', '5', 'BB255906/00435', '589', '589-BB255906/00435', '7700.0000', '1', '1', '2559', '246', '2016-07-22', '260', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('335', '2016-07-22', '5', 'IV5906083', '595', '595-IV5906083', '12000.0000', '1', '1', '2559', '247', '2016-07-22', '261', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('336', '2016-07-22', '5', 'B-600437', '593', '593-B-600437', '900.0000', '1', '1', '2559', '248', '2016-07-22', '262', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('337', '2016-07-22', '5', 'B-603277', '593', '593-B-603277', '250.0000', '1', '1', '2559', '249', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('338', '2016-07-22', '5', 'ฺB-585051', '593', '593-ฺB-585051', '100.0000', '1', '1', '2559', '250', '2016-07-22', '264', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('339', '2016-07-22', '5', 'B-596278', '593', '593-B-596278', '100.0000', '1', '1', '2559', '251', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('340', '2016-07-22', '5', 'B-599617', '593', '593-B-599617', '280.0000', '1', '1', '2559', '252', '2016-07-22', '266', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('341', '2016-07-22', '5', 'B-586161', '593', '593-B-586161', '280.0000', '1', '1', '2559', '253', '2016-07-22', '267', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('342', '2016-07-22', '5', 'ฺB-596013', '593', '593-ฺB-596013', '280.0000', '1', '1', '2559', '254', '2016-07-22', '268', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('343', '2016-07-22', '5', 'B-597633', '593', '593-B-597633', '2200.0000', '1', '1', '2559', '255', '2016-07-22', '269', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('344', '2016-07-22', '5', 'B-604518', '593', '593-B-604518', '2200.0000', '1', '1', '2559', '256', '2016-07-22', '270', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('345', '2016-07-22', '5', 'B-603440', '593', '593-B-603440', '2200.0000', '1', '1', '2559', '257', '2016-07-22', '271', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('346', '2016-07-22', '5', 'B-604183', '593', '593-B-604183', '1580.0000', '1', '1', '2559', '258', '2016-07-22', '271', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('347', '2016-07-22', '5', 'B-599285', '593', '593-B-599285', '1255.0000', '1', '1', '2559', '259', '2016-07-22', '272', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('348', '2016-08-05', '1', 'SO 1607-1713', '153', '153-SO 1607-1713', '44250.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('349', '2016-08-05', '1', 'A9007989', '159', '159-A9007989', '25251.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('350', '2016-08-05', '1', 'A9008056', '159', '159-A9008056', '26400.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('351', '2016-08-05', '1', 'A9008166', '159', '159-A9008166', '30760.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);
INSERT INTO `receive` VALUES ('352', '2016-07-11', '8', '010/49', '617', '617-49/010', '6046.7300', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('353', '2016-07-11', '8', '59/163362', '583', '583-59/163362', '22470.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('355', '2016-07-22', '8', '032/39', '616', '616-032/39', '47100.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('356', '2016-07-11', '8', 'BR5001370', '606', '606-BR5001370', '9634.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('357', '2016-07-01', '8', '1889', '274', '274-1889', '28248.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('358', '2016-07-01', '8', '1895', '274', '274-1895', '23807.5000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('359', '2016-08-11', '8', 'RM0172', '615', '615-RM0172', '32800.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('360', '2016-07-13', '8', '065021390311', '614', '614-065021390311', '1145.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('362', '2016-07-25', '8', '065061410874', '614', '614-065061410874', '5025.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('363', '2016-07-14', '8', 'BKCA006CA-590714-0012', '610', '610-BKCA006CA-590714-0012', '1635.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('364', '2016-07-27', '8', 'BKCA005CA-590727-0018', '610', '610-BKCA005CA-590727-0018', '2645.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('365', '2016-07-15', '8', 'SES02054', '613', '613-SES02054', '21186.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('366', '2016-07-08', '8', 'IV5002601', '606', '606-IV5002601', '3970.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('367', '2016-07-04', '8', '48866', '612', '612-48866', '50000.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('368', '2016-07-14', '8', '48889', '612', '612-48889', '20000.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('369', '2016-07-05', '8', 'BR5001316', '606', '606-BR5001316', '8765.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('370', '2016-07-06', '8', '7/1', '611', '611-7/1', '5904.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('371', '2016-07-21', '8', 'BKCA001CA-590721-0003', '610', '610-BKCA001CA-590721-0003', '159.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('372', '2016-07-11', '8', 'PK01-0003557', '587', '587-PK01-0003557', '5046.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('373', '2016-07-25', '8', 'BKCA006CA-590723-0003', '610', '610-BKCA006CA-590723-0003', '2306.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('374', '2016-07-01', '8', '25/17', '609', '609-25/17', '53390.9500', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('375', '2016-07-01', '8', '24/17', '609', '609-24/17', '2498.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('376', '2016-07-12', '8', '17/5', '608', '608-17/5', '12000.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('383', '2016-07-22', '8', '032/40', '616', '616-032/40', '9400.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('377', '2016-07-04', '8', 'IV59-00176', '605', '605-IV59-00176', '6800.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('378', '2016-07-14', '8', '2/43', '607', '607-2/43', '12600.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('379', '2016-07-25', '8', '2/44', '607', '607-2/44', '42140.0000', '1', '1', '', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('380', '2016-07-04', '8', '2/45', '607', '607-2/45', '24235.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('381', '2016-07-04', '8', 'IV59-00178', '605', '605-IV59-00178', '11800.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('382', '2016-07-22', '8', 'IV5902711', '606', '606-IV5902711', '15310.0000', '1', '1', '2559', '', null, '', '1', '2016-08-15', '0', null, null, null, null);
INSERT INTO `receive` VALUES ('384', '2016-09-01', '1', '59014255', '72', '72-59014255', '1500.0000', '0', null, null, null, null, null, '0', null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for receivedetail
-- ----------------------------
DROP TABLE IF EXISTS `receivedetail`;
CREATE TABLE `receivedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_id` int(11) DEFAULT NULL COMMENT 'เลขที่',
  `item_id` int(11) DEFAULT NULL COMMENT 'รายการ',
  `qty` int(11) DEFAULT NULL COMMENT 'จำนวน',
  `pack` varchar(50) DEFAULT NULL COMMENT 'ขนาดบรรจุ',
  `price` decimal(10,0) DEFAULT NULL COMMENT 'ราคา/หน่วย',
  `unit` varchar(50) DEFAULT NULL COMMENT 'หน่วยนับ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receivedetail
-- ----------------------------
INSERT INTO `receivedetail` VALUES ('1', '1', '409', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('2', '2', '47', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('3', '3', '198', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('4', '3', '270', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('5', '4', '58', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('6', '4', '375', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('7', '4', '57', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('8', '4', '477', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('9', '4', '379', '750', null, null, null);
INSERT INTO `receivedetail` VALUES ('10', '4', '413', '200000', null, null, null);
INSERT INTO `receivedetail` VALUES ('11', '5', '150', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('12', '5', '13', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('13', '6', '512', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('14', '6', '72', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('15', '7', '332', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('16', '8', '211', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('17', '8', '206', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('18', '9', '286', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('19', '10', '370', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('20', '10', '369', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('21', '11', '334', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('22', '11', '506', '30', null, null, null);
INSERT INTO `receivedetail` VALUES ('23', '12', '331', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('24', '12', '406', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('25', '13', '515', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('26', '14', '223', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('27', '15', '314', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('28', '16', '227', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('29', '16', '225', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('30', '17', '301', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('31', '17', '56', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('32', '18', '284', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('33', '18', '275', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('34', '18', '222', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('35', '18', '498', '30000', null, null, null);
INSERT INTO `receivedetail` VALUES ('36', '18', '134', '1200', null, null, null);
INSERT INTO `receivedetail` VALUES ('37', '18', '166', '60', null, null, null);
INSERT INTO `receivedetail` VALUES ('38', '18', '172', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('39', '18', '298', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('40', '18', '70', '30', null, null, null);
INSERT INTO `receivedetail` VALUES ('41', '18', '333', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('42', '18', '37', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('43', '18', '7', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('44', '18', '306', '400', null, null, null);
INSERT INTO `receivedetail` VALUES ('45', '19', '108', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('46', '20', '489', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('47', '21', '232', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('48', '22', '230', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('49', '23', '517', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('50', '24', '121', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('51', '25', '420', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('52', '26', '183', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('53', '26', '34', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('54', '27', '73', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('55', '28', '364', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('56', '29', '214', '2880', null, null, null);
INSERT INTO `receivedetail` VALUES ('57', '30', '81', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('58', '30', '276', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('59', '30', '196', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('60', '30', '199', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('61', '30', '405', '15000', null, null, null);
INSERT INTO `receivedetail` VALUES ('62', '30', '163', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('63', '30', '424', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('64', '31', '419', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('65', '31', '426', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('66', '32', '17', '230000', null, null, null);
INSERT INTO `receivedetail` VALUES ('67', '33', '177', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('68', '34', '122', '30000', null, null, null);
INSERT INTO `receivedetail` VALUES ('69', '35', '390', '60', null, null, null);
INSERT INTO `receivedetail` VALUES ('70', '36', '112', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('71', '36', '103', '3000', null, null, null);
INSERT INTO `receivedetail` VALUES ('72', '37', '353', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('73', '38', '350', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('74', '39', '341', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('75', '40', '236', '14000', null, null, null);
INSERT INTO `receivedetail` VALUES ('76', '41', '415', '240', null, null, null);
INSERT INTO `receivedetail` VALUES ('77', '42', '152', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('78', '43', '83', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('79', '44', '425', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('80', '45', '203', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('81', '46', '129', '40000', null, null, null);
INSERT INTO `receivedetail` VALUES ('82', '47', '499', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('83', '48', '140', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('84', '49', '130', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('85', '50', '392', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('86', '51', '44', '900', null, null, null);
INSERT INTO `receivedetail` VALUES ('87', '52', '360', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('88', '53', '149', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('89', '58', '48', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('90', '59', '227', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('91', '60', '159', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('92', '61', '373', '70', null, null, null);
INSERT INTO `receivedetail` VALUES ('93', '62', '114', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('94', '63', '368', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('95', '64', '261', '250', null, null, null);
INSERT INTO `receivedetail` VALUES ('96', '65', '4', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('97', null, '4', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('98', null, '4', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('100', '84', '418', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('101', '85', '418', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('102', '86', '283', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('103', '86', '416', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('104', '86', '417', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('105', '87', '489', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('106', '88', '410', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('107', '89', '268', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('108', '89', '269', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('109', '90', '506', '30', null, null, null);
INSERT INTO `receivedetail` VALUES ('110', '91', '314', '12000', null, null, null);
INSERT INTO `receivedetail` VALUES ('111', '92', '235', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('112', '93', '209', '60', null, null, null);
INSERT INTO `receivedetail` VALUES ('113', '94', '72', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('114', '95', '274', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('115', '96', '417', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('116', '97', '233', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('117', '98', '22', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('118', '99', '182', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('119', '100', '363', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('120', '101', '131', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('121', '102', '180', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('122', '103', '140', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('123', '104', '1', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('124', '105', '338', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('125', '105', '164', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('126', '106', '203', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('127', '107', '83', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('128', '108', '393', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('129', '109', '149', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('130', '110', '406', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('131', '111', '409', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('132', '112', '151', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('133', '113', '301', '15000', null, null, null);
INSERT INTO `receivedetail` VALUES ('134', '114', '336', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('135', '115', '401', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('136', '116', '357', '40000', null, null, null);
INSERT INTO `receivedetail` VALUES ('137', '117', '71', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('138', '117', '62', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('139', '117', '122', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('140', '117', '122', '18000', null, null, null);
INSERT INTO `receivedetail` VALUES ('141', '118', '379', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('142', '119', '332', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('143', '119', '204', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('144', '120', '348', '25000', null, null, null);
INSERT INTO `receivedetail` VALUES ('145', '121', '43', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('146', '122', '231', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('147', '123', '405', '25000', null, null, null);
INSERT INTO `receivedetail` VALUES ('148', '124', '130', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('149', '125', '23', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('150', '126', '194', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('151', '127', '369', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('152', '128', '374', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('153', '128', '73', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('154', '128', '142', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('155', '129', '356', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('156', '129', '19', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('157', '129', '289', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('158', '129', '273', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('159', '130', '424', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('160', '130', '366', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('161', '130', '276', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('162', '130', '407', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('216', '197', '124', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('164', '131', '129', '60000', null, null, null);
INSERT INTO `receivedetail` VALUES ('165', '132', '388', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('166', '133', '512', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('167', '133', '24', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('168', '134', '229', '250000', null, null, null);
INSERT INTO `receivedetail` VALUES ('169', '135', '346', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('170', '136', '21', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('171', '136', '59', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('172', '136', '57', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('173', '137', '350', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('174', '137', '344', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('175', '138', '353', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('176', '139', '330', '5', null, null, null);
INSERT INTO `receivedetail` VALUES ('177', '140', '402', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('178', '141', '123', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('179', '141', '137', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('180', '142', '386', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('181', '143', '145', '30000', null, null, null);
INSERT INTO `receivedetail` VALUES ('182', '143', '172', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('183', '143', '170', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('184', '143', '261', '25', null, null, null);
INSERT INTO `receivedetail` VALUES ('185', '144', '54', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('186', '144', '174', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('187', '144', '222', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('188', '144', '408', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('189', '144', '166', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('190', '144', '181', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('191', '144', '298', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('192', '144', '305', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('193', '144', '169', '5', null, null, null);
INSERT INTO `receivedetail` VALUES ('194', '144', '70', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('195', '144', '299', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('196', '144', '306', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('197', '144', '261', '275', null, null, null);
INSERT INTO `receivedetail` VALUES ('199', '158', '304', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('200', '159', '44', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('201', '160', '376', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('202', '161', '340', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('203', '162', '151', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('204', '163', '373', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('205', '164', '198', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('206', '164', '197', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('207', '165', '107', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('208', '165', '150', '120', null, null, null);
INSERT INTO `receivedetail` VALUES ('209', '166', '227', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('210', '167', '491', '15000', null, null, null);
INSERT INTO `receivedetail` VALUES ('211', '168', '297', '166', null, null, null);
INSERT INTO `receivedetail` VALUES ('212', '179', '294', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('215', '179', '419', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('214', '109', '148', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('217', '198', '175', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('218', '199', '340', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('219', '200', '77', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('220', '201', '180', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('221', '202', '340', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('222', '203', '233', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('223', '204', '66', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('224', '204', '60', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('225', '205', '504', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('226', '206', '42', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('227', '207', '146', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('228', '208', '66', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('229', '209', '267', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('230', '210', '314', '12000', null, null, null);
INSERT INTO `receivedetail` VALUES ('231', '211', '149', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('232', '212', '71', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('233', '212', '62', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('234', '213', '237', '14000', null, null, null);
INSERT INTO `receivedetail` VALUES ('235', '214', '285', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('236', '215', '130', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('237', '216', '294', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('238', '217', '58', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('239', '218', '409', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('240', '219', '203', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('241', '219', '415', '240', null, null, null);
INSERT INTO `receivedetail` VALUES ('242', '220', '269', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('243', '220', '420', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('244', '221', '206', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('245', '222', '232', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('246', '222', '489', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('247', '223', '204', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('248', '224', '393', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('249', '224', '41', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('250', '224', '29', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('251', '225', '281', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('252', '225', '286', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('253', '225', '290', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('254', '226', '264', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('255', '226', '428', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('256', '226', '389', '60', null, null, null);
INSERT INTO `receivedetail` VALUES ('257', '226', '376', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('258', '227', '129', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('259', '228', '44', '600', null, null, null);
INSERT INTO `receivedetail` VALUES ('260', '228', '45', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('261', '229', '291', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('262', '230', '48', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('263', '230', '367', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('264', '230', '196', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('265', '230', '407', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('266', '230', '163', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('267', '230', '441', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('268', '230', '199', '120', null, null, null);
INSERT INTO `receivedetail` VALUES ('269', '231', '413', '100000', null, null, null);
INSERT INTO `receivedetail` VALUES ('270', '232', '341', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('271', '233', '17', '115000', null, null, null);
INSERT INTO `receivedetail` VALUES ('272', '234', '419', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('273', '235', '370', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('274', '236', '36', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('275', '236', '491', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('276', '237', '58', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('277', '237', '59', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('278', '237', '375', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('279', '237', '477', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('280', '237', '21', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('281', '237', '379', '1250', null, null, null);
INSERT INTO `receivedetail` VALUES ('282', '238', '144', '150000', null, null, null);
INSERT INTO `receivedetail` VALUES ('283', '239', '115', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('284', '239', '116', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('285', '239', '277', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('286', '239', '278', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('287', '239', '408', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('288', '239', '378', '10', null, null, null);
INSERT INTO `receivedetail` VALUES ('289', '239', '193', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('290', '239', '298', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('291', '239', '188', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('292', '239', '7', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('293', '239', '306', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('294', '240', null, null, null, null, null);
INSERT INTO `receivedetail` VALUES ('295', '277', null, null, null, null, null);
INSERT INTO `receivedetail` VALUES ('296', '280', '25', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('297', '280', '27', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('298', '280', '28', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('299', '281', '415', '204', null, null, null);
INSERT INTO `receivedetail` VALUES ('300', '282', '265', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('301', '283', '303', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('302', '284', '294', '50', null, null, null);
INSERT INTO `receivedetail` VALUES ('303', '285', '209', '60', null, null, null);
INSERT INTO `receivedetail` VALUES ('304', '286', '214', '3060', null, null, null);
INSERT INTO `receivedetail` VALUES ('305', '287', '19', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('306', '288', '76', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('307', '289', '230', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('308', '290', '34', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('309', '291', '348', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('310', '292', '406', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('311', '293', '15', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('312', '294', '131', '2500', null, null, null);
INSERT INTO `receivedetail` VALUES ('313', '295', '74', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('314', '296', '150', '240', null, null, null);
INSERT INTO `receivedetail` VALUES ('315', '297', '236', '14000', null, null, null);
INSERT INTO `receivedetail` VALUES ('316', '298', '122', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('317', '298', '184', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('318', '299', '221', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('319', '300', '130', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('320', '301', '332', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('321', '302', '409', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('322', '303', '22', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('323', '304', '231', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('324', '305', '72', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('325', '305', '512', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('326', '306', '131', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('327', null, '131', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('328', null, '131', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('329', '307', '338', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('330', '308', '194', '30000', null, null, null);
INSERT INTO `receivedetail` VALUES ('331', '309', '374', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('332', '309', '364', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('333', '310', '83', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('334', '311', '356', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('335', '312', '79', '15000', null, null, null);
INSERT INTO `receivedetail` VALUES ('336', '313', '226', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('337', '314', '44', '600', null, null, null);
INSERT INTO `receivedetail` VALUES ('338', '315', '29', '20000', null, null, null);
INSERT INTO `receivedetail` VALUES ('339', '316', '427', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('340', '317', '216', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('341', '317', '215', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('342', '318', '431', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('343', '318', '60', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('344', '318', '184', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('345', '318', '235', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('346', '318', '177', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('347', '319', '129', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('348', '320', '122', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('349', '321', '245', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('350', '322', '245', '20', null, null, null);
INSERT INTO `receivedetail` VALUES ('351', '323', '227', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('352', '324', '413', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('353', '325', '369', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('354', '326', '96', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('355', '326', '407', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('356', '326', '442', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('357', '326', '432', '5000', null, null, null);
INSERT INTO `receivedetail` VALUES ('358', '327', '59', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('359', '327', '375', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('360', '327', '57', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('361', '327', '21', '10000', null, null, null);
INSERT INTO `receivedetail` VALUES ('362', '328', '261', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('363', '329', '498', '60000', null, null, null);
INSERT INTO `receivedetail` VALUES ('364', '330', '229', '250000', null, null, null);
INSERT INTO `receivedetail` VALUES ('365', '331', '145', '50000', null, null, null);
INSERT INTO `receivedetail` VALUES ('366', '348', '341', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('367', '348', '353', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('368', '348', '173', '500', null, null, null);
INSERT INTO `receivedetail` VALUES ('369', '349', '54', '2000', null, null, null);
INSERT INTO `receivedetail` VALUES ('370', '349', '193', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('371', '349', '166', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('372', '349', '172', '300', null, null, null);
INSERT INTO `receivedetail` VALUES ('373', '349', '18', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('374', '349', '305', '1000', null, null, null);
INSERT INTO `receivedetail` VALUES ('375', '349', '137', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('376', '349', '49', '200', null, null, null);
INSERT INTO `receivedetail` VALUES ('377', '349', '188', '100', null, null, null);
INSERT INTO `receivedetail` VALUES ('378', '350', '145', '48000', null, null, null);
INSERT INTO `receivedetail` VALUES ('379', '351', '145', '52000', null, null, null);
INSERT INTO `receivedetail` VALUES ('380', '351', '134', '1080', null, null, null);
INSERT INTO `receivedetail` VALUES ('381', '354', null, null, null, null, null);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`) USING BTREE,
  UNIQUE KEY `account_unique_code` (`code`) USING BTREE,
  KEY `fk_user_account` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for stockdata
-- ----------------------------
DROP TABLE IF EXISTS `stockdata`;
CREATE TABLE `stockdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.พัสดุรับบิล',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `receive_head_id` int(11) DEFAULT NULL COMMENT 'เลที่รับของ',
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับจากขนส่ง',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `budget` varchar(100) DEFAULT NULL COMMENT 'เงินงบ',
  `number_anumad` varchar(8) DEFAULT NULL COMMENT 'เลขที่อนุมัติ',
  `date_instock` date DEFAULT NULL COMMENT 'วันที่รับเข้าคลัง',
  `number_instock` varchar(10) DEFAULT NULL COMMENT 'เลขที่รับเข้าคลัง',
  `send_credit` smallint(6) DEFAULT '0' COMMENT 'รายงานเจ้าหนี้',
  `credit_confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.การเงิน',
  `user_id` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockdata
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'w3eJ0H9Ky8RT2I3an50BljdExrryD3nT', '1456723200', '0');
INSERT INTO `token` VALUES ('2', 'qLrMWL0BmaA82-ae6scMIDzYLSsNC7NB', '1457342923', '0');
INSERT INTO `token` VALUES ('3', '4jyLMlJq-rhEqyOX8uH268rvek0DK_nj', '1457342979', '0');
INSERT INTO `token` VALUES ('4', 'swxPU2di9rv3Qt1_Xb-IcMVvPmSv0qH2', '1457343051', '0');
INSERT INTO `token` VALUES ('5', 'DsmPH8aM1GVpaztHdo393q8zdQlYYAV-', '1457343099', '0');
INSERT INTO `token` VALUES ('6', 'Ky4KOQcGszrPwGZIlCQDqFfAx6-bGYcJ', '1457343131', '0');
INSERT INTO `token` VALUES ('7', 'A4llMsatBpPxU3pECdWCjoFc4VzcdB1h', '1457343157', '0');
INSERT INTO `token` VALUES ('8', 'a4q9Lq9gIC4bXz9NsYnLprztE1wUMlN9', '1457343234', '0');
INSERT INTO `token` VALUES ('9', 'mkhhuQan_MKMhuzKJ0WSdcQSe525dDcx', '1457343263', '0');
INSERT INTO `token` VALUES ('10', 'qiUP2jPXfaJy09myLcpncpKy-uYeye_O', '1457343306', '0');
INSERT INTO `token` VALUES ('11', 'Yo2DAS-t8tec9Ec6eyiuWBSCzTDuMY9o', '1457343333', '0');
INSERT INTO `token` VALUES ('12', '9hlRjvatcfVcUCR93ay5Pzrg2EjIcB-y', '1457343365', '0');
INSERT INTO `token` VALUES ('13', '-D-QBFHISjEX5VjWrKkwo20k63lSedHA', '1457343404', '0');
INSERT INTO `token` VALUES ('14', '3oBSI3u1tmEcrosC67FqUdiN5jTdJYtv', '1457343436', '0');
INSERT INTO `token` VALUES ('15', 'IFP1hnxHbYZl46ZjUhmtDevvienTh-Q7', '1457343474', '0');
INSERT INTO `token` VALUES ('16', 'd5k3gXe57RWvu-7f0klkwQdMbM89RdCE', '1457343592', '0');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL COMMENT 'หมวดวัสดุ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', 'ยา');
INSERT INTO `types` VALUES ('2', 'เวชภัณฑ์ที่ไม่ใช่ยา');
INSERT INTO `types` VALUES ('3', 'เครื่องมือแพทย์');
INSERT INTO `types` VALUES ('4', 'วัสดุทางการแพทย์');
INSERT INTO `types` VALUES ('5', 'วัสดุทันตกรรม');
INSERT INTO `types` VALUES ('6', 'เครื่องมือทันตกรรม');
INSERT INTO `types` VALUES ('7', 'วัสดุชันสูตร');
INSERT INTO `types` VALUES ('8', 'พัสดุ');
INSERT INTO `types` VALUES ('9', 'คอมพิวเตอร์');
INSERT INTO `types` VALUES ('10', 'วัสดุการแพทย์ (ออกซิเจน)');
INSERT INTO `types` VALUES ('11', 'วัสดุสำนักงาน');
INSERT INTO `types` VALUES ('12', 'วัสดุคอมพิวเตอร์');
INSERT INTO `types` VALUES ('13', 'วัสดุไฟฟ้าและวิทยุ');
INSERT INTO `types` VALUES ('14', 'วัสดุก่อสร้าง');
INSERT INTO `types` VALUES ('15', 'วัสดุการเกษตร');
INSERT INTO `types` VALUES ('16', 'วัสดุงานบ้านงานครัว');
INSERT INTO `types` VALUES ('17', 'วัสดุยานพาหนะและขนส่ง');
INSERT INTO `types` VALUES ('18', 'วัสดุน้ำมันเชื้อเพลิงและหล่อลื่น');
INSERT INTO `types` VALUES ('19', 'วัสดุโฆษณาและเผยแพร่');
INSERT INTO `types` VALUES ('20', 'ครุภัณฑ์ต่ำกว่าเกณฑ์');
INSERT INTO `types` VALUES ('21', 'วัสดุเครื่องแต่งกาย');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmation_token` varchar(32) DEFAULT NULL,
  `confirmation_sent_at` int(11) DEFAULT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `recovery_token` varchar(32) DEFAULT NULL,
  `recovery_sent_at` int(11) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registered_from` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `logged_in_from` int(11) DEFAULT NULL,
  `logged_in_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `role` varchar(2) DEFAULT '20',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`) USING BTREE,
  UNIQUE KEY `user_unique_email` (`email`) USING BTREE,
  UNIQUE KEY `user_confirmation` (`id`,`confirmation_token`) USING BTREE,
  UNIQUE KEY `user_recovery` (`id`,`recovery_token`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', null, 'admin@localhost.com', '$2y$12$35o3Mw5RBP8L1KYHML68veI1lQZL5FugIVes0NVJHuHMgJvE/5rAq', 'hqphz5xNsc8k9pjjKf_uCUBKR1EkmCc5', null, null, null, null, null, null, null, null, '::1', null, null, '1456723200', '1460437043', '10');
INSERT INTO `user` VALUES ('2', 'bomb', '1', 'user@localhost.com', '$2y$12$tEU7ygpcOki0P.5XJwFwHO9LevN9CDEB6k/XClcJraES.G9ieQlEm', '2s1M_fZeUmreU0p0KG_sR9EqpKnraLYC', null, null, null, null, null, null, null, null, '::1', null, null, '1457342923', '1457342923', '20');
INSERT INTO `user` VALUES ('3', 'wanpen', '2', 'wanpen@local.com', '$2y$12$f5Sz0zXz0pqPiuXVXvk./OVOO6H1ccqWkJftbuSFeuQ4ZluQY87gW', 'tAPqepFB5DyVhaJrnQW5T9-LJhuAnH6W', null, null, null, null, null, null, null, null, '::1', null, null, '1457342979', '1457342979', '20');
INSERT INTO `user` VALUES ('4', '3430300494778', '8', 'mad@localhost.com', '$2y$12$gfiUCNMgGEjtloTU9//TiueOQGOQLkQLqY/VsXhuHoJD6dJBYP0D6', 'pY4MG67aNMsC48yg2yLdeg6q7IgPYudB', null, null, null, null, null, null, null, null, '::1', null, null, '1457343050', '1457343050', '20');
INSERT INTO `user` VALUES ('5', '2430900001740', '8', 'suphatra14@gmail.com', '$2y$12$G0lV6.63.VXdiwaw3z4OWOg7m.tK.XfhkUsgS0vvy7GFuKDDyuE2W', 'PwKJukYTRF0bOMtvwhxAp4ZvAfYtCnND', null, null, null, null, null, null, null, null, '::1', null, null, '1457343099', '1457343099', '20');
INSERT INTO `user` VALUES ('6', '3419900099398', '2', 'tstta-297@hotmail.com', '$2y$12$Sg904YLEJ/nF4pVnNp9E1.MDzJdUFqHDK/xDc3toIJz3DE/.6jrzG', 'qztm_v3AKqQXsLUdle4Dmijd5er8CPyl', null, null, null, null, null, null, null, null, '::1', null, null, '1457343131', '1457343131', '20');
INSERT INTO `user` VALUES ('7', '3430300707836', '1', 'Teeranat_t@hotmail.com', '$2y$12$RBXQ2QqPYaW2Wthu9q.6Re3606bicVGKdIHGlT3pPmUB3jCEXpcKu', 'GsAUtex5T8kw5wfitIdD51TYiLvSCuRF', null, null, null, null, null, null, null, null, '::1', null, null, '1457343157', '1457343157', '20');
INSERT INTO `user` VALUES ('8', '1419900240175', '5', 'praew.jid@gmail.com', '$2y$12$.PE2MEOu9BDo7YWyXnAf8eFg6AZVxgiBlWXAGjAXnSUX/0gW7SMZ.', '27WRMdpXTpCXswsSxHNHD_kZE_MqqC0L', null, null, null, null, null, null, null, null, '::1', null, null, '1457343233', '1457343233', '20');
INSERT INTO `user` VALUES ('9', '1410800062331', '5', 'sineenartsaenprasert@gmail.com', '$2y$12$GpbFp5uGKmUvJjakFu6svuQhFBpas.R7HFdpE761vTZV0A6Xs1P/y', 'rSPI8iDZujkiuleeC9Is6y_KYfjIJrMQ', null, null, null, null, null, null, null, null, '::1', null, null, '1457343263', '1457343263', '20');
INSERT INTO `user` VALUES ('10', '3430900573351', '1', 'nuchkunlaboot@gmail.com', '$2y$12$iAlxKfJkF/PBNK50SnI3COYECmtvgQtovg5xq1eKj8ou.dFLtyfC.', 'tO2OukGq8-EUKm0dI4FXqKVszYsvMOB3', null, null, null, null, null, null, null, null, '::1', null, null, '1457343305', '1457343305', '20');
INSERT INTO `user` VALUES ('11', '1431200001235', '1', 'Ch.sochomphu@hotmail.com', '$2y$12$U9Cw9iReZdBWCaieoRjNUOcMrlWGDCRFrOGdvCklAM19kuyZhFDQa', 'A_5BuBUPoO3dC5fJBOZVgvTOaKDnUBEz', null, null, null, null, null, null, null, null, '::1', null, null, '1457343333', '1457343333', '20');
INSERT INTO `user` VALUES ('12', '3309901343935', '5', 'aomkapom.bk@gmail.com', '$2y$12$.rz4CVT7d6Tfj93UDVPe2.odYPaBfRAzOa/WaSrJSTzAnPBTwvLKO', 'ueYajONVAXvxbu-e1BZbfV-1lKH-tJ7Q', null, null, null, null, null, null, null, null, '::1', null, null, '1457343365', '1457343365', '20');
INSERT INTO `user` VALUES ('13', '3430300752734', '2', 'panatsayaNaka@gmail.com', '$2y$12$3..k4shW9LX8pVUzDUAXUeqGkltVDgbdDIPPFgYzDE9vOCrpPpjoK', 'msZBhjnF0E-fG2i0WTYBibHeJsRX_h0s', null, null, null, null, null, null, null, null, '::1', null, null, '1457343404', '1457343404', '20');
INSERT INTO `user` VALUES ('14', '3430400015138', '1', 'intakid@gmail.com', '$2y$12$QAXp1vCW75qEGX5kHwmz5eVzeHHytovBZpKPxewAgWi5juxMS4xjy', 'juRESDG0BkFX1CsKdoQX4cnOpMEtaenx', null, null, null, null, null, null, null, null, '::1', null, null, '1457343435', '1457343435', '20');
INSERT INTO `user` VALUES ('15', '1430600001291', '7', 'Dookdui87@Gmail.com', '$2y$12$4Hk9lAIgkdjDzx62qiugSObFR9njyUYANb5F4vLuHmkGkCaQtQk0u', '2W302kW89AwARRImEZ3W7Gk5-pvGu2xa', null, null, null, null, null, null, null, null, '::1', null, null, '1457343473', '1457343473', '20');
INSERT INTO `user` VALUES ('16', '3430300905417', '7', 'planin5@hotmail.com', '$2y$12$.g6wGtSm.hgGrbbHYu5HMOaF2k9Jj0AZeGei0gmqwMeu7cX5G2Oye', 'yz5m30BD590gCFhSTKNNrTAJD4P-plOv', null, null, null, null, null, null, null, null, '::1', null, null, '1457343592', '1457343592', '20');

-- ----------------------------
-- Table structure for years
-- ----------------------------
DROP TABLE IF EXISTS `years`;
CREATE TABLE `years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `date_start` date DEFAULT NULL COMMENT 'ตั้งแต่วันที่',
  `date_end` date DEFAULT NULL COMMENT 'ถึงวันที่',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of years
-- ----------------------------
INSERT INTO `years` VALUES ('2', '2558', '2014-10-01', '2015-09-30');
INSERT INTO `years` VALUES ('3', '2559', '2015-10-01', '2016-09-30');
