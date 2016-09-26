/*
MySQL Backup
Source Server Version: 5.5.25
Source Database: ibudget
Date: 11/3/2016 09:48:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `account`
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
--  Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `auth_item`
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
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `auth_rule`
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
--  Table structure for `banks`
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(100) DEFAULT NULL COMMENT 'ธนาคาร',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `budgets`
-- ----------------------------
DROP TABLE IF EXISTS `budgets`;
CREATE TABLE `budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) DEFAULT NULL,
  `money` decimal(20,4) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `commitees`
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
--  Table structure for `companys`
-- ----------------------------
DROP TABLE IF EXISTS `companys`;
CREATE TABLE `companys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) DEFAULT NULL COMMENT 'บริษัท',
  `tel` varchar(255) DEFAULT NULL COMMENT 'โทรศัพท์',
  `adderss` varchar(255) DEFAULT NULL COMMENT 'ที่อยู่',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `creditors`
-- ----------------------------
DROP TABLE IF EXISTS `creditors`;
CREATE TABLE `creditors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `date_receive` date DEFAULT NULL COMMENT 'รับจากขนส่ง',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `budget` varchar(100) DEFAULT NULL COMMENT 'เงินงบ',
  `date_instock` date DEFAULT NULL COMMENT 'วันที่รับเข้าคลัง',
  `number_instock` varchar(10) DEFAULT NULL COMMENT 'เลขที่รับเข้าคลัง',
  `send_credit` smallint(6) DEFAULT '0' COMMENT 'รายงานเจ้าหนี้',
  `send_boss` smallint(6) DEFAULT '0' COMMENT 'เสนอ ผอก.',
  `number_anumad` varchar(8) DEFAULT NULL COMMENT 'เลขที่อนุมัติ',
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `user_id` int(11) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'หน่วยงาน',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `idata`
-- ----------------------------
DROP TABLE IF EXISTS `idata`;
CREATE TABLE `idata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_id` int(11) DEFAULT NULL,
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับจากขนส่ง',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(4,0) DEFAULT NULL COMMENT 'มูลค่า',
  `user_id` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  `confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.พัสดุรับ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ihead`
-- ----------------------------
DROP TABLE IF EXISTS `ihead`;
CREATE TABLE `ihead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับ',
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `items`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `menu`
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
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `paymoney`
-- ----------------------------
DROP TABLE IF EXISTS `paymoney`;
CREATE TABLE `paymoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `budget` varchar(100) DEFAULT NULL COMMENT 'เงินงบ',
  `date_instock` date DEFAULT NULL COMMENT 'วันที่รับเข้าคลัง',
  `number_instock` varchar(10) DEFAULT NULL COMMENT 'เลขที่รับเข้าคลัง',
  `pay_confirm` smallint(6) DEFAULT '0' COMMENT 'เสนอ ผอก.',
  `number_anumad` varchar(8) DEFAULT NULL COMMENT 'เลขที่อนุมัติ',
  `year` varchar(4) DEFAULT NULL COMMENT 'ปีงบประมาณ',
  `user_id` int(11) DEFAULT NULL,
  `number_check` varchar(20) DEFAULT NULL COMMENT 'เลขที่เช็ค',
  `date_check` date DEFAULT NULL COMMENT 'วันที่ออกเช็ค',
  `bank` varchar(100) DEFAULT NULL COMMENT 'ธนาคาร',
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `pbudgets`
-- ----------------------------
DROP TABLE IF EXISTS `pbudgets`;
CREATE TABLE `pbudgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'ประเภทงบ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `profile`
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
--  Table structure for `receivedata`
-- ----------------------------
DROP TABLE IF EXISTS `receivedata`;
CREATE TABLE `receivedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับจากขนส่ง',
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `bill_no` varchar(255) DEFAULT NULL COMMENT 'เลขที่ใบส่งของ',
  `company_id` int(11) DEFAULT NULL COMMENT 'บริษัท',
  `invoice` varchar(100) DEFAULT NULL COMMENT 'ตรวจสอบใบส่งของ',
  `amount` decimal(20,4) DEFAULT NULL COMMENT 'มูลค่า',
  `user_id` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  `confirm` smallint(6) DEFAULT '0' COMMENT 'จนท.พัสดุรับ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `receivehead`
-- ----------------------------
DROP TABLE IF EXISTS `receivehead`;
CREATE TABLE `receivehead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT 'หมวด',
  `date_receive` date DEFAULT NULL COMMENT 'วันที่รับ',
  `createdate` date DEFAULT NULL COMMENT 'วันที่บันทึก',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `social_account`
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
--  Table structure for `stockdata`
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `token`
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
--  Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL COMMENT 'หมวดวัสดุ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
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
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`),
  UNIQUE KEY `user_confirmation` (`id`,`confirmation_token`),
  UNIQUE KEY `user_recovery` (`id`,`recovery_token`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `years`
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
--  Records 
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('superadmin','1','1457345339'), ('manager','2','1457346779'), ('manager','3','1457346793'), ('stock','4','1457346820'), ('receive','4','1457346820'), ('manager','5','1457346837'), ('stock','6','1457346860'), ('receive','6','1457346860'), ('stock','7','1457346879'), ('ตรวจรับของ','9','1457347740'), ('stock','8','1457347719'), ('stock','9','1457346924'), ('creditor','10','1457346941'), ('receive','9','1457346924'), ('receive','11','1457346958'), ('receive','12','1457346976'), ('receive','13','1457346991'), ('stock','14','1457347009'), ('ตรวจรับของ','4','1457347547'), ('receive','16','1457347041'), ('stock','15','1457347025'), ('admin','1','1457346750'), ('รายงานเจ้าหนี้','4','1457347547'), ('ผู้ดูแลระบบ','1','1457347597'), ('ผู้บริหาร','2','1457347610'), ('ผู้บริหาร','3','1457347624'), ('ผู้บริหาร','5','1457347648'), ('ตรวจรับของ','6','1457347668'), ('รายงานเจ้าหนี้','6','1457347668'), ('รายงานเจ้าหนี้','7','1457347684'), ('รายงานเจ้าหนี้','8','1457347705'), ('รับรู้หนี้','9','1457347740'), ('รับรู้หนี้','10','1457347753'), ('ตรวจรับของ','11','1457347765'), ('ตรวจรับของ','12','1457347777'), ('ตรวจรับของ','13','1457347789'), ('รายงานเจ้าหนี้','14','1457347801'), ('รายงานเจ้าหนี้','15','1457347813'), ('ตรวจรับของ','16','1457347824');
INSERT INTO `auth_item` VALUES ('/gridview/export/download','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gridview/export/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gridview/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/assignment/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/assignment/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/assignment/assign','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/assignment/search','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/assignment/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/default/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/default/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/menu/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/assign','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/search','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/permission/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/assign','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/search','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/role/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/route/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/route/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/route/assign','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/route/search','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/route/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/rule/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/admin/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/update-profile','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/info','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/assignments','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/confirm','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/block','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/admin/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/profile/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/profile/show','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/profile/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/recovery/request','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/recovery/reset','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/recovery/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/registration/register','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/registration/connect','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/registration/confirm','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/registration/resend','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/registration/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/security/auth','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/security/login','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/security/logout','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/security/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/profile','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/account','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/confirm','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/networks','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/disconnect','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/settings/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/user/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/assignment/assign','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/assignment/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/permission/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/permission/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/permission/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/permission/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/permission/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/role/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/role/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/role/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/role/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/role/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/rbac/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/db-explain','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/toolbar','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/download-mail','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/default/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/debug/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/default/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/default/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/default/preview','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/default/diff','2',NULL,NULL,NULL,'1457342240','1457342240');
INSERT INTO `auth_item` VALUES ('/gii/default/action','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/default/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/gii/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/budgets/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/companys/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/creditors/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/idata/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/ihead/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/paymoney/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/updatestock','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/error','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/captcha','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/login','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/logout','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/contact','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/about','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/site/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/stockdata/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/index','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/view','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/create','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/update','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/delete','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/years/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/*','2',NULL,NULL,NULL,'1457342240','1457342240'), ('/receivedata/indexstock','2',NULL,NULL,NULL,'1457342335','1457342335'), ('/stockdata/indexcreditor','2',NULL,NULL,NULL,'1457342391','1457342391'), ('/stockdata/updatecreditor','2',NULL,NULL,NULL,'1457342426','1457342426'), ('/paymoney/budgetbyyear','2',NULL,NULL,NULL,'1457342476','1457342476'), ('/site/showgrap','2',NULL,NULL,NULL,'1457342496','1457342496'), ('ตรวจรับของ','2','บันทึกรายละเอียดของบิลส่งให้พัสดุ',NULL,NULL,'1457345842','1457347915'), ('รายงานเจ้าหนี้','2','จนท.พัสดุ รับของเข้าคลั้งและรายการเจ้าหนี้',NULL,NULL,'1457346054','1457348016'), ('รับรู้หนี้','2','จนท.การเงินรับรายงานเจ้าหนี้จากพัสดุและจ่ายเงิน',NULL,NULL,'1457346233','1457348052'), ('ผู้บริหาร','2','สามารถใช้งานได้ทุกเมนู',NULL,NULL,'1457346346','1457348094'), ('ผู้ดูแลระบบ','2','สามารถใช้งานได้ทุกเมนูรวมถึงจัดการสิทธิ์',NULL,NULL,'1457346437','1457348156'), ('admin','1','ผู้ดูแลระบบ',NULL,NULL,'1457346498','1457347137'), ('manager','1','ผู้บริหาร',NULL,NULL,'1457346557','1457347201'), ('receive','1','ตรวจรับของ',NULL,NULL,'1457346596','1457347270'), ('stock','1','รับของเข้าคลังและรายงงานเจ้าหนี้',NULL,NULL,'1457346646','1457347500'), ('creditor','1','การเงินรับรู้หนี้และชำระหนี้',NULL,NULL,'1457346705','1457347419');
INSERT INTO `auth_item_child` VALUES ('admin','/*'), ('admin','/admin/*'), ('admin','/admin/assignment/*'), ('admin','/admin/assignment/assign'), ('admin','/admin/assignment/index'), ('admin','/admin/assignment/search'), ('admin','/admin/assignment/view'), ('admin','/admin/default/*'), ('admin','/admin/default/index'), ('admin','/admin/menu/*'), ('admin','/admin/menu/create'), ('admin','/admin/menu/delete'), ('admin','/admin/menu/index'), ('admin','/admin/menu/update'), ('admin','/admin/menu/view'), ('admin','/admin/permission/*'), ('admin','/admin/permission/assign'), ('admin','/admin/permission/create'), ('admin','/admin/permission/delete'), ('admin','/admin/permission/index'), ('admin','/admin/permission/search'), ('admin','/admin/permission/update'), ('admin','/admin/permission/view'), ('admin','/admin/role/*'), ('admin','/admin/role/assign'), ('admin','/admin/role/create'), ('admin','/admin/role/delete'), ('admin','/admin/role/index'), ('admin','/admin/role/search'), ('admin','/admin/role/update'), ('admin','/admin/role/view'), ('admin','/admin/route/*'), ('admin','/admin/route/assign'), ('admin','/admin/route/create'), ('admin','/admin/route/index'), ('admin','/admin/route/search'), ('admin','/admin/rule/*'), ('admin','/admin/rule/create'), ('admin','/admin/rule/delete'), ('admin','/admin/rule/index'), ('admin','/admin/rule/update'), ('admin','/admin/rule/view'), ('admin','/budgets/*'), ('admin','/budgets/create'), ('admin','/budgets/delete'), ('admin','/budgets/index'), ('admin','/budgets/update'), ('admin','/budgets/view'), ('admin','/companys/*'), ('admin','/companys/create'), ('admin','/companys/delete'), ('admin','/companys/index'), ('admin','/companys/update'), ('admin','/companys/view'), ('admin','/creditors/*'), ('admin','/creditors/create'), ('admin','/creditors/delete'), ('admin','/creditors/index'), ('admin','/creditors/update'), ('admin','/creditors/view'), ('admin','/debug/*'), ('admin','/debug/default/*'), ('admin','/debug/default/db-explain'), ('admin','/debug/default/download-mail'), ('admin','/debug/default/index'), ('admin','/debug/default/toolbar'), ('admin','/debug/default/view'), ('admin','/gii/*'), ('admin','/gii/default/*'), ('admin','/gii/default/action'), ('admin','/gii/default/diff'), ('admin','/gii/default/index'), ('admin','/gii/default/preview'), ('admin','/gii/default/view'), ('admin','/gridview/*'), ('admin','/gridview/export/*'), ('admin','/gridview/export/download'), ('admin','/idata/*'), ('admin','/idata/create'), ('admin','/idata/delete'), ('admin','/idata/index'), ('admin','/idata/update'), ('admin','/idata/view'), ('admin','/ihead/*'), ('admin','/ihead/create'), ('admin','/ihead/delete'), ('admin','/ihead/index'), ('admin','/ihead/update'), ('admin','/ihead/view'), ('admin','/paymoney/*'), ('admin','/paymoney/budgetbyyear'), ('admin','/paymoney/create'), ('admin','/paymoney/delete'), ('admin','/paymoney/index'), ('admin','/paymoney/update'), ('admin','/paymoney/view'), ('admin','/rbac/*'), ('admin','/rbac/assignment/*'), ('admin','/rbac/assignment/assign'), ('admin','/rbac/permission/*');
INSERT INTO `auth_item_child` VALUES ('admin','/rbac/permission/create'), ('admin','/rbac/permission/delete'), ('admin','/rbac/permission/index'), ('admin','/rbac/permission/update'), ('admin','/rbac/role/*'), ('admin','/rbac/role/create'), ('admin','/rbac/role/delete'), ('admin','/rbac/role/index'), ('admin','/rbac/role/update'), ('admin','/receivedata/*'), ('admin','/receivedata/create'), ('admin','/receivedata/delete'), ('admin','/receivedata/index'), ('admin','/receivedata/indexstock'), ('admin','/receivedata/update'), ('admin','/receivedata/updatestock'), ('admin','/receivedata/view'), ('admin','/site/*'), ('admin','/site/about'), ('admin','/site/captcha'), ('admin','/site/contact'), ('admin','/site/error'), ('admin','/site/index'), ('admin','/site/login'), ('admin','/site/logout'), ('admin','/site/showgrap'), ('admin','/stockdata/*'), ('admin','/stockdata/create'), ('admin','/stockdata/delete'), ('admin','/stockdata/index'), ('admin','/stockdata/indexcreditor'), ('admin','/stockdata/update'), ('admin','/stockdata/updatecreditor'), ('admin','/stockdata/view'), ('admin','/user/*'), ('admin','/user/admin/*'), ('admin','/user/admin/assignments'), ('admin','/user/admin/block'), ('admin','/user/admin/confirm'), ('admin','/user/admin/create'), ('admin','/user/admin/delete'), ('admin','/user/admin/index'), ('admin','/user/admin/info'), ('admin','/user/admin/update'), ('admin','/user/admin/update-profile'), ('admin','/user/profile/*'), ('admin','/user/profile/index'), ('admin','/user/profile/show'), ('admin','/user/recovery/*'), ('admin','/user/recovery/request'), ('admin','/user/recovery/reset'), ('admin','/user/registration/*'), ('admin','/user/registration/confirm'), ('admin','/user/registration/connect'), ('admin','/user/registration/register'), ('admin','/user/registration/resend'), ('admin','/user/security/*'), ('admin','/user/security/auth'), ('admin','/user/security/login'), ('admin','/user/security/logout'), ('admin','/user/settings/*'), ('admin','/user/settings/account'), ('admin','/user/settings/confirm'), ('admin','/user/settings/disconnect'), ('admin','/user/settings/networks'), ('admin','/user/settings/profile'), ('admin','/years/*'), ('admin','/years/create'), ('admin','/years/delete'), ('admin','/years/index'), ('admin','/years/update'), ('admin','/years/view'), ('admin','ผู้ดูแลระบบ'), ('creditor','/creditors/*'), ('creditor','/creditors/create'), ('creditor','/creditors/delete'), ('creditor','/creditors/index'), ('creditor','/creditors/update'), ('creditor','/creditors/view'), ('creditor','/paymoney/*'), ('creditor','/paymoney/budgetbyyear'), ('creditor','/paymoney/create'), ('creditor','/paymoney/delete'), ('creditor','/paymoney/index'), ('creditor','/paymoney/update'), ('creditor','/paymoney/view'), ('creditor','/site/*'), ('creditor','/site/about'), ('creditor','/site/captcha'), ('creditor','/site/contact'), ('creditor','/site/error'), ('creditor','/site/index'), ('creditor','/site/login'), ('creditor','/site/logout'), ('creditor','/site/showgrap'), ('creditor','/stockdata/indexcreditor'), ('creditor','/stockdata/updatecreditor'), ('creditor','รับรู้หนี้'), ('manager','/*'), ('manager','/budgets/*');
INSERT INTO `auth_item_child` VALUES ('manager','/budgets/create'), ('manager','/budgets/delete'), ('manager','/budgets/index'), ('manager','/budgets/update'), ('manager','/budgets/view'), ('manager','/companys/*'), ('manager','/companys/create'), ('manager','/companys/delete'), ('manager','/companys/index'), ('manager','/companys/update'), ('manager','/companys/view'), ('manager','/creditors/*'), ('manager','/creditors/create'), ('manager','/creditors/delete'), ('manager','/creditors/index'), ('manager','/creditors/update'), ('manager','/creditors/view'), ('manager','/paymoney/*'), ('manager','/paymoney/budgetbyyear'), ('manager','/paymoney/create'), ('manager','/paymoney/delete'), ('manager','/paymoney/index'), ('manager','/paymoney/update'), ('manager','/paymoney/view'), ('manager','/receivedata/*'), ('manager','/receivedata/create'), ('manager','/receivedata/delete'), ('manager','/receivedata/index'), ('manager','/receivedata/indexstock'), ('manager','/receivedata/update'), ('manager','/receivedata/updatestock'), ('manager','/receivedata/view'), ('manager','/site/*'), ('manager','/site/about'), ('manager','/site/captcha'), ('manager','/site/contact'), ('manager','/site/error'), ('manager','/site/index'), ('manager','/site/login'), ('manager','/site/logout'), ('manager','/site/showgrap'), ('manager','/stockdata/*'), ('manager','/stockdata/create'), ('manager','/stockdata/delete'), ('manager','/stockdata/index'), ('manager','/stockdata/indexcreditor'), ('manager','/stockdata/update'), ('manager','/stockdata/updatecreditor'), ('manager','/stockdata/view'), ('manager','/years/*'), ('manager','/years/create'), ('manager','/years/delete'), ('manager','/years/index'), ('manager','/years/update'), ('manager','/years/view'), ('manager','ผู้บริหาร'), ('receive','/receivedata/create'), ('receive','/receivedata/delete'), ('receive','/receivedata/index'), ('receive','/receivedata/update'), ('receive','/receivedata/view'), ('receive','/site/*'), ('receive','/site/about'), ('receive','/site/captcha'), ('receive','/site/contact'), ('receive','/site/error'), ('receive','/site/index'), ('receive','/site/login'), ('receive','/site/logout'), ('receive','/site/showgrap'), ('receive','ตรวจรับของ'), ('stock','/receivedata/indexstock'), ('stock','/receivedata/updatestock'), ('stock','/site/*'), ('stock','/site/about'), ('stock','/site/captcha'), ('stock','/site/contact'), ('stock','/site/error'), ('stock','/site/index'), ('stock','/site/login'), ('stock','/site/logout'), ('stock','/site/showgrap'), ('stock','/stockdata/create'), ('stock','/stockdata/delete'), ('stock','/stockdata/index'), ('stock','/stockdata/update'), ('stock','/stockdata/view'), ('stock','รายงานเจ้าหนี้'), ('superadmin','/*'), ('superadmin','/admin/*'), ('superadmin','/admin/assignment/*'), ('superadmin','/admin/assignment/assign'), ('superadmin','/admin/assignment/index'), ('superadmin','/admin/assignment/search'), ('superadmin','/admin/assignment/view'), ('superadmin','/admin/default/*'), ('superadmin','/admin/default/index'), ('superadmin','/admin/menu/*'), ('superadmin','/admin/menu/create'), ('superadmin','/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('superadmin','/admin/menu/index'), ('superadmin','/admin/menu/update'), ('superadmin','/admin/menu/view'), ('superadmin','/admin/permission/*'), ('superadmin','/admin/permission/assign'), ('superadmin','/admin/permission/create'), ('superadmin','/admin/permission/delete'), ('superadmin','/admin/permission/index'), ('superadmin','/admin/permission/search'), ('superadmin','/admin/permission/update'), ('superadmin','/admin/permission/view'), ('superadmin','/admin/role/*'), ('superadmin','/admin/role/assign'), ('superadmin','/admin/role/create'), ('superadmin','/admin/role/delete'), ('superadmin','/admin/role/index'), ('superadmin','/admin/role/search'), ('superadmin','/admin/role/update'), ('superadmin','/admin/role/view'), ('superadmin','/admin/route/*'), ('superadmin','/admin/route/assign'), ('superadmin','/admin/route/create'), ('superadmin','/admin/route/index'), ('superadmin','/admin/route/search'), ('superadmin','/admin/rule/*'), ('superadmin','/admin/rule/create'), ('superadmin','/admin/rule/delete'), ('superadmin','/admin/rule/index'), ('superadmin','/admin/rule/update'), ('superadmin','/admin/rule/view'), ('superadmin','/budgets/*'), ('superadmin','/budgets/create'), ('superadmin','/budgets/delete'), ('superadmin','/budgets/index'), ('superadmin','/budgets/update'), ('superadmin','/budgets/view'), ('superadmin','/companys/*'), ('superadmin','/companys/create'), ('superadmin','/companys/delete'), ('superadmin','/companys/index'), ('superadmin','/companys/update'), ('superadmin','/companys/view'), ('superadmin','/creditors/*'), ('superadmin','/creditors/create'), ('superadmin','/creditors/delete'), ('superadmin','/creditors/index'), ('superadmin','/creditors/update'), ('superadmin','/creditors/view'), ('superadmin','/debug/*'), ('superadmin','/debug/default/*'), ('superadmin','/debug/default/db-explain'), ('superadmin','/debug/default/download-mail'), ('superadmin','/debug/default/index'), ('superadmin','/debug/default/toolbar'), ('superadmin','/debug/default/view'), ('superadmin','/gii/*'), ('superadmin','/gii/default/*'), ('superadmin','/gii/default/action'), ('superadmin','/gii/default/diff'), ('superadmin','/gii/default/index'), ('superadmin','/gii/default/preview'), ('superadmin','/gii/default/view'), ('superadmin','/gridview/*'), ('superadmin','/gridview/export/*'), ('superadmin','/gridview/export/download'), ('superadmin','/idata/*'), ('superadmin','/idata/create'), ('superadmin','/idata/delete'), ('superadmin','/idata/index'), ('superadmin','/idata/update'), ('superadmin','/idata/view'), ('superadmin','/ihead/*'), ('superadmin','/ihead/create'), ('superadmin','/ihead/delete'), ('superadmin','/ihead/index'), ('superadmin','/ihead/update'), ('superadmin','/ihead/view'), ('superadmin','/paymoney/*'), ('superadmin','/paymoney/budgetbyyear'), ('superadmin','/paymoney/create'), ('superadmin','/paymoney/delete'), ('superadmin','/paymoney/index'), ('superadmin','/paymoney/update'), ('superadmin','/paymoney/view'), ('superadmin','/rbac/*'), ('superadmin','/rbac/assignment/*'), ('superadmin','/rbac/assignment/assign'), ('superadmin','/rbac/permission/*'), ('superadmin','/rbac/permission/create'), ('superadmin','/rbac/permission/delete'), ('superadmin','/rbac/permission/index'), ('superadmin','/rbac/permission/update'), ('superadmin','/rbac/role/*'), ('superadmin','/rbac/role/create'), ('superadmin','/rbac/role/delete'), ('superadmin','/rbac/role/index'), ('superadmin','/rbac/role/update'), ('superadmin','/receivedata/*'), ('superadmin','/receivedata/create'), ('superadmin','/receivedata/delete');
INSERT INTO `auth_item_child` VALUES ('superadmin','/receivedata/index'), ('superadmin','/receivedata/indexstock'), ('superadmin','/receivedata/update'), ('superadmin','/receivedata/updatestock'), ('superadmin','/receivedata/view'), ('superadmin','/site/*'), ('superadmin','/site/about'), ('superadmin','/site/captcha'), ('superadmin','/site/contact'), ('superadmin','/site/error'), ('superadmin','/site/index'), ('superadmin','/site/login'), ('superadmin','/site/logout'), ('superadmin','/site/showgrap'), ('superadmin','/stockdata/*'), ('superadmin','/stockdata/create'), ('superadmin','/stockdata/delete'), ('superadmin','/stockdata/index'), ('superadmin','/stockdata/indexcreditor'), ('superadmin','/stockdata/update'), ('superadmin','/stockdata/updatecreditor'), ('superadmin','/stockdata/view'), ('superadmin','/user/*'), ('superadmin','/user/admin/*'), ('superadmin','/user/admin/assignments'), ('superadmin','/user/admin/block'), ('superadmin','/user/admin/confirm'), ('superadmin','/user/admin/create'), ('superadmin','/user/admin/delete'), ('superadmin','/user/admin/index'), ('superadmin','/user/admin/info'), ('superadmin','/user/admin/update'), ('superadmin','/user/admin/update-profile'), ('superadmin','/user/profile/*'), ('superadmin','/user/profile/index'), ('superadmin','/user/profile/show'), ('superadmin','/user/recovery/*'), ('superadmin','/user/recovery/request'), ('superadmin','/user/recovery/reset'), ('superadmin','/user/registration/*'), ('superadmin','/user/registration/confirm'), ('superadmin','/user/registration/connect'), ('superadmin','/user/registration/register'), ('superadmin','/user/registration/resend'), ('superadmin','/user/security/*'), ('superadmin','/user/security/auth'), ('superadmin','/user/security/login'), ('superadmin','/user/security/logout'), ('superadmin','/user/settings/*'), ('superadmin','/user/settings/account'), ('superadmin','/user/settings/confirm'), ('superadmin','/user/settings/disconnect'), ('superadmin','/user/settings/networks'), ('superadmin','/user/settings/profile'), ('superadmin','/years/*'), ('superadmin','/years/create'), ('superadmin','/years/delete'), ('superadmin','/years/index'), ('superadmin','/years/update'), ('superadmin','/years/view'), ('ตรวจรับของ','/receivedata/create'), ('ตรวจรับของ','/receivedata/delete'), ('ตรวจรับของ','/receivedata/index'), ('ตรวจรับของ','/receivedata/update'), ('ตรวจรับของ','/receivedata/view'), ('ตรวจรับของ','/site/*'), ('ตรวจรับของ','/site/about'), ('ตรวจรับของ','/site/captcha'), ('ตรวจรับของ','/site/contact'), ('ตรวจรับของ','/site/error'), ('ตรวจรับของ','/site/index'), ('ตรวจรับของ','/site/login'), ('ตรวจรับของ','/site/logout'), ('ตรวจรับของ','/site/showgrap'), ('ตรวจรับของ','/user/admin/update'), ('ตรวจรับของ','/user/admin/update-profile'), ('ตรวจรับของ','/user/profile/*'), ('ตรวจรับของ','/user/profile/index'), ('ตรวจรับของ','/user/profile/show'), ('ตรวจรับของ','/user/security/login'), ('ตรวจรับของ','/user/security/logout'), ('ตรวจรับของ','/user/settings/account'), ('ตรวจรับของ','/user/settings/profile'), ('ผู้ดูแลระบบ','/*'), ('ผู้ดูแลระบบ','/admin/*'), ('ผู้ดูแลระบบ','/admin/assignment/*'), ('ผู้ดูแลระบบ','/admin/assignment/assign'), ('ผู้ดูแลระบบ','/admin/assignment/index'), ('ผู้ดูแลระบบ','/admin/assignment/search'), ('ผู้ดูแลระบบ','/admin/assignment/view'), ('ผู้ดูแลระบบ','/admin/default/*'), ('ผู้ดูแลระบบ','/admin/default/index'), ('ผู้ดูแลระบบ','/admin/menu/*'), ('ผู้ดูแลระบบ','/admin/menu/create'), ('ผู้ดูแลระบบ','/admin/menu/delete'), ('ผู้ดูแลระบบ','/admin/menu/index'), ('ผู้ดูแลระบบ','/admin/menu/update'), ('ผู้ดูแลระบบ','/admin/menu/view'), ('ผู้ดูแลระบบ','/admin/permission/*'), ('ผู้ดูแลระบบ','/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ','/admin/permission/create'), ('ผู้ดูแลระบบ','/admin/permission/delete'), ('ผู้ดูแลระบบ','/admin/permission/index'), ('ผู้ดูแลระบบ','/admin/permission/search'), ('ผู้ดูแลระบบ','/admin/permission/update'), ('ผู้ดูแลระบบ','/admin/permission/view'), ('ผู้ดูแลระบบ','/admin/role/*'), ('ผู้ดูแลระบบ','/admin/role/assign'), ('ผู้ดูแลระบบ','/admin/role/create'), ('ผู้ดูแลระบบ','/admin/role/delete'), ('ผู้ดูแลระบบ','/admin/role/index'), ('ผู้ดูแลระบบ','/admin/role/search'), ('ผู้ดูแลระบบ','/admin/role/update'), ('ผู้ดูแลระบบ','/admin/role/view'), ('ผู้ดูแลระบบ','/admin/route/*'), ('ผู้ดูแลระบบ','/admin/route/assign'), ('ผู้ดูแลระบบ','/admin/route/create'), ('ผู้ดูแลระบบ','/admin/route/index'), ('ผู้ดูแลระบบ','/admin/route/search'), ('ผู้ดูแลระบบ','/admin/rule/*'), ('ผู้ดูแลระบบ','/admin/rule/create'), ('ผู้ดูแลระบบ','/admin/rule/delete'), ('ผู้ดูแลระบบ','/admin/rule/index'), ('ผู้ดูแลระบบ','/admin/rule/update'), ('ผู้ดูแลระบบ','/admin/rule/view'), ('ผู้ดูแลระบบ','/budgets/*'), ('ผู้ดูแลระบบ','/budgets/create'), ('ผู้ดูแลระบบ','/budgets/delete'), ('ผู้ดูแลระบบ','/budgets/index'), ('ผู้ดูแลระบบ','/budgets/update'), ('ผู้ดูแลระบบ','/budgets/view'), ('ผู้ดูแลระบบ','/companys/*'), ('ผู้ดูแลระบบ','/companys/create'), ('ผู้ดูแลระบบ','/companys/delete'), ('ผู้ดูแลระบบ','/companys/index'), ('ผู้ดูแลระบบ','/companys/update'), ('ผู้ดูแลระบบ','/companys/view'), ('ผู้ดูแลระบบ','/creditors/*'), ('ผู้ดูแลระบบ','/creditors/create'), ('ผู้ดูแลระบบ','/creditors/delete'), ('ผู้ดูแลระบบ','/creditors/index'), ('ผู้ดูแลระบบ','/creditors/update'), ('ผู้ดูแลระบบ','/creditors/view'), ('ผู้ดูแลระบบ','/debug/*'), ('ผู้ดูแลระบบ','/debug/default/*'), ('ผู้ดูแลระบบ','/debug/default/db-explain'), ('ผู้ดูแลระบบ','/debug/default/download-mail'), ('ผู้ดูแลระบบ','/debug/default/index'), ('ผู้ดูแลระบบ','/debug/default/toolbar'), ('ผู้ดูแลระบบ','/debug/default/view'), ('ผู้ดูแลระบบ','/gii/*'), ('ผู้ดูแลระบบ','/gii/default/*'), ('ผู้ดูแลระบบ','/gii/default/action'), ('ผู้ดูแลระบบ','/gii/default/diff'), ('ผู้ดูแลระบบ','/gii/default/index'), ('ผู้ดูแลระบบ','/gii/default/preview'), ('ผู้ดูแลระบบ','/gii/default/view'), ('ผู้ดูแลระบบ','/gridview/*'), ('ผู้ดูแลระบบ','/gridview/export/*'), ('ผู้ดูแลระบบ','/gridview/export/download'), ('ผู้ดูแลระบบ','/idata/*'), ('ผู้ดูแลระบบ','/idata/create'), ('ผู้ดูแลระบบ','/idata/delete'), ('ผู้ดูแลระบบ','/idata/index'), ('ผู้ดูแลระบบ','/idata/update'), ('ผู้ดูแลระบบ','/idata/view'), ('ผู้ดูแลระบบ','/ihead/*'), ('ผู้ดูแลระบบ','/ihead/create'), ('ผู้ดูแลระบบ','/ihead/delete'), ('ผู้ดูแลระบบ','/ihead/index'), ('ผู้ดูแลระบบ','/ihead/update'), ('ผู้ดูแลระบบ','/ihead/view'), ('ผู้ดูแลระบบ','/paymoney/*'), ('ผู้ดูแลระบบ','/paymoney/budgetbyyear'), ('ผู้ดูแลระบบ','/paymoney/create'), ('ผู้ดูแลระบบ','/paymoney/delete'), ('ผู้ดูแลระบบ','/paymoney/index'), ('ผู้ดูแลระบบ','/paymoney/update'), ('ผู้ดูแลระบบ','/paymoney/view'), ('ผู้ดูแลระบบ','/rbac/*'), ('ผู้ดูแลระบบ','/rbac/assignment/*'), ('ผู้ดูแลระบบ','/rbac/assignment/assign'), ('ผู้ดูแลระบบ','/rbac/permission/*'), ('ผู้ดูแลระบบ','/rbac/permission/create'), ('ผู้ดูแลระบบ','/rbac/permission/delete'), ('ผู้ดูแลระบบ','/rbac/permission/index'), ('ผู้ดูแลระบบ','/rbac/permission/update'), ('ผู้ดูแลระบบ','/rbac/role/*'), ('ผู้ดูแลระบบ','/rbac/role/create'), ('ผู้ดูแลระบบ','/rbac/role/delete'), ('ผู้ดูแลระบบ','/rbac/role/index'), ('ผู้ดูแลระบบ','/rbac/role/update'), ('ผู้ดูแลระบบ','/receivedata/*'), ('ผู้ดูแลระบบ','/receivedata/create'), ('ผู้ดูแลระบบ','/receivedata/delete'), ('ผู้ดูแลระบบ','/receivedata/index'), ('ผู้ดูแลระบบ','/receivedata/indexstock'), ('ผู้ดูแลระบบ','/receivedata/update'), ('ผู้ดูแลระบบ','/receivedata/updatestock'), ('ผู้ดูแลระบบ','/receivedata/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ','/site/*'), ('ผู้ดูแลระบบ','/site/about'), ('ผู้ดูแลระบบ','/site/captcha'), ('ผู้ดูแลระบบ','/site/contact'), ('ผู้ดูแลระบบ','/site/error'), ('ผู้ดูแลระบบ','/site/index'), ('ผู้ดูแลระบบ','/site/login'), ('ผู้ดูแลระบบ','/site/logout'), ('ผู้ดูแลระบบ','/site/showgrap'), ('ผู้ดูแลระบบ','/stockdata/*'), ('ผู้ดูแลระบบ','/stockdata/create'), ('ผู้ดูแลระบบ','/stockdata/delete'), ('ผู้ดูแลระบบ','/stockdata/index'), ('ผู้ดูแลระบบ','/stockdata/indexcreditor'), ('ผู้ดูแลระบบ','/stockdata/update'), ('ผู้ดูแลระบบ','/stockdata/updatecreditor'), ('ผู้ดูแลระบบ','/stockdata/view'), ('ผู้ดูแลระบบ','/user/*'), ('ผู้ดูแลระบบ','/user/admin/*'), ('ผู้ดูแลระบบ','/user/admin/assignments'), ('ผู้ดูแลระบบ','/user/admin/block'), ('ผู้ดูแลระบบ','/user/admin/confirm'), ('ผู้ดูแลระบบ','/user/admin/create'), ('ผู้ดูแลระบบ','/user/admin/delete'), ('ผู้ดูแลระบบ','/user/admin/index'), ('ผู้ดูแลระบบ','/user/admin/info'), ('ผู้ดูแลระบบ','/user/admin/update'), ('ผู้ดูแลระบบ','/user/admin/update-profile'), ('ผู้ดูแลระบบ','/user/profile/*'), ('ผู้ดูแลระบบ','/user/profile/index'), ('ผู้ดูแลระบบ','/user/profile/show'), ('ผู้ดูแลระบบ','/user/recovery/*'), ('ผู้ดูแลระบบ','/user/recovery/request'), ('ผู้ดูแลระบบ','/user/recovery/reset'), ('ผู้ดูแลระบบ','/user/registration/*'), ('ผู้ดูแลระบบ','/user/registration/confirm'), ('ผู้ดูแลระบบ','/user/registration/connect'), ('ผู้ดูแลระบบ','/user/registration/register'), ('ผู้ดูแลระบบ','/user/registration/resend'), ('ผู้ดูแลระบบ','/user/security/*'), ('ผู้ดูแลระบบ','/user/security/auth'), ('ผู้ดูแลระบบ','/user/security/login'), ('ผู้ดูแลระบบ','/user/security/logout'), ('ผู้ดูแลระบบ','/user/settings/*'), ('ผู้ดูแลระบบ','/user/settings/account'), ('ผู้ดูแลระบบ','/user/settings/confirm'), ('ผู้ดูแลระบบ','/user/settings/disconnect'), ('ผู้ดูแลระบบ','/user/settings/networks'), ('ผู้ดูแลระบบ','/user/settings/profile'), ('ผู้ดูแลระบบ','/years/*'), ('ผู้ดูแลระบบ','/years/create'), ('ผู้ดูแลระบบ','/years/delete'), ('ผู้ดูแลระบบ','/years/index'), ('ผู้ดูแลระบบ','/years/update'), ('ผู้ดูแลระบบ','/years/view'), ('ผู้บริหาร','/*'), ('ผู้บริหาร','/budgets/*'), ('ผู้บริหาร','/budgets/create'), ('ผู้บริหาร','/budgets/delete'), ('ผู้บริหาร','/budgets/index'), ('ผู้บริหาร','/budgets/update'), ('ผู้บริหาร','/budgets/view'), ('ผู้บริหาร','/companys/*'), ('ผู้บริหาร','/companys/create'), ('ผู้บริหาร','/companys/delete'), ('ผู้บริหาร','/companys/index'), ('ผู้บริหาร','/companys/update'), ('ผู้บริหาร','/companys/view'), ('ผู้บริหาร','/creditors/*'), ('ผู้บริหาร','/creditors/create'), ('ผู้บริหาร','/creditors/delete'), ('ผู้บริหาร','/creditors/index'), ('ผู้บริหาร','/creditors/update'), ('ผู้บริหาร','/creditors/view'), ('ผู้บริหาร','/paymoney/*'), ('ผู้บริหาร','/paymoney/budgetbyyear'), ('ผู้บริหาร','/paymoney/create'), ('ผู้บริหาร','/paymoney/delete'), ('ผู้บริหาร','/paymoney/index'), ('ผู้บริหาร','/paymoney/update'), ('ผู้บริหาร','/paymoney/view'), ('ผู้บริหาร','/receivedata/*'), ('ผู้บริหาร','/receivedata/create'), ('ผู้บริหาร','/receivedata/delete'), ('ผู้บริหาร','/receivedata/index'), ('ผู้บริหาร','/receivedata/indexstock'), ('ผู้บริหาร','/receivedata/update'), ('ผู้บริหาร','/receivedata/updatestock'), ('ผู้บริหาร','/receivedata/view'), ('ผู้บริหาร','/site/*'), ('ผู้บริหาร','/site/about'), ('ผู้บริหาร','/site/captcha'), ('ผู้บริหาร','/site/contact'), ('ผู้บริหาร','/site/error'), ('ผู้บริหาร','/site/index'), ('ผู้บริหาร','/site/login'), ('ผู้บริหาร','/site/logout'), ('ผู้บริหาร','/site/showgrap'), ('ผู้บริหาร','/stockdata/*'), ('ผู้บริหาร','/stockdata/create');
INSERT INTO `auth_item_child` VALUES ('ผู้บริหาร','/stockdata/delete'), ('ผู้บริหาร','/stockdata/index'), ('ผู้บริหาร','/stockdata/indexcreditor'), ('ผู้บริหาร','/stockdata/update'), ('ผู้บริหาร','/stockdata/updatecreditor'), ('ผู้บริหาร','/stockdata/view'), ('ผู้บริหาร','/user/profile/*'), ('ผู้บริหาร','/user/profile/index'), ('ผู้บริหาร','/user/profile/show'), ('ผู้บริหาร','/user/security/login'), ('ผู้บริหาร','/user/security/logout'), ('ผู้บริหาร','/user/settings/account'), ('ผู้บริหาร','/user/settings/profile'), ('ผู้บริหาร','/years/*'), ('ผู้บริหาร','/years/create'), ('ผู้บริหาร','/years/delete'), ('ผู้บริหาร','/years/index'), ('ผู้บริหาร','/years/update'), ('ผู้บริหาร','/years/view'), ('รับรู้หนี้','/creditors/*'), ('รับรู้หนี้','/creditors/create'), ('รับรู้หนี้','/creditors/delete'), ('รับรู้หนี้','/creditors/index'), ('รับรู้หนี้','/creditors/update'), ('รับรู้หนี้','/creditors/view'), ('รับรู้หนี้','/paymoney/*'), ('รับรู้หนี้','/paymoney/create'), ('รับรู้หนี้','/paymoney/delete'), ('รับรู้หนี้','/paymoney/index'), ('รับรู้หนี้','/paymoney/update'), ('รับรู้หนี้','/paymoney/view'), ('รับรู้หนี้','/site/*'), ('รับรู้หนี้','/site/about'), ('รับรู้หนี้','/site/captcha'), ('รับรู้หนี้','/site/contact'), ('รับรู้หนี้','/site/error'), ('รับรู้หนี้','/site/index'), ('รับรู้หนี้','/site/login'), ('รับรู้หนี้','/site/logout'), ('รับรู้หนี้','/site/showgrap'), ('รับรู้หนี้','/stockdata/indexcreditor'), ('รับรู้หนี้','/stockdata/updatecreditor'), ('รับรู้หนี้','/user/profile/*'), ('รับรู้หนี้','/user/profile/index'), ('รับรู้หนี้','/user/profile/show'), ('รับรู้หนี้','/user/security/login'), ('รับรู้หนี้','/user/security/logout'), ('รับรู้หนี้','/user/settings/account'), ('รับรู้หนี้','/user/settings/profile'), ('รายงานเจ้าหนี้','/receivedata/indexstock'), ('รายงานเจ้าหนี้','/receivedata/updatestock'), ('รายงานเจ้าหนี้','/site/*'), ('รายงานเจ้าหนี้','/site/about'), ('รายงานเจ้าหนี้','/site/captcha'), ('รายงานเจ้าหนี้','/site/contact'), ('รายงานเจ้าหนี้','/site/error'), ('รายงานเจ้าหนี้','/site/index'), ('รายงานเจ้าหนี้','/site/login'), ('รายงานเจ้าหนี้','/site/logout'), ('รายงานเจ้าหนี้','/site/showgrap'), ('รายงานเจ้าหนี้','/stockdata/create'), ('รายงานเจ้าหนี้','/stockdata/delete'), ('รายงานเจ้าหนี้','/stockdata/index'), ('รายงานเจ้าหนี้','/stockdata/update'), ('รายงานเจ้าหนี้','/stockdata/view'), ('รายงานเจ้าหนี้','/user/profile/*'), ('รายงานเจ้าหนี้','/user/profile/index'), ('รายงานเจ้าหนี้','/user/profile/show'), ('รายงานเจ้าหนี้','/user/security/login'), ('รายงานเจ้าหนี้','/user/security/logout'), ('รายงานเจ้าหนี้','/user/settings/account'), ('รายงานเจ้าหนี้','/user/settings/profile');
INSERT INTO `banks` VALUES ('1','กรุงไทย สาขาบึงกาฬ'), ('2','ธกส. สาขาศรีวิไล'), ('3','ออมสิน สาขาบึงกาฬ');
INSERT INTO `budgets` VALUES ('1','2558','6530000.5150','1'), ('2','2558','2500520.0000','2'), ('3','2558','650000.0000','5'), ('4','2559','5500000.0000','1'), ('5','2559','2200000.5000','2'), ('6','2559','590500.0000','5');
INSERT INTO `companys` VALUES ('1','tawan','ตะวันคอมพิวเตอร์','042-492222 / 091-3638928','บึงกาฬ'), ('2','wn','ดับเบิลยูเอ็น','042-497000','เซกา'), ('3','chat','ชาติสยาม','042-411111','หนองคาย');
INSERT INTO `creditors` VALUES ('14','1','2016-02-01','1','tn2559001','1-tn2559001','25000.0000','1','2016-02-03','590203001','1','1','2558/015','2558','1','2016-03-04 23:08:05'), ('15','5','2016-02-16','3','inv201559','3-inv201559','32500.0000','1','2016-02-19','59021920','1','1','2558/020','2558','1','2016-03-05 14:47:51'), ('16','1','2016-02-08','1','tn2559010','1-tn2559010','7500.0000','1','2016-03-01','59030303','1','1','5900003','2558','1','2016-03-06 15:45:19');
INSERT INTO `departments` VALUES ('1','บริหารทั่วไป'), ('2','คอมพิวเตอร์');
INSERT INTO `idata` VALUES ('30','28','2016-03-01','2','b22','2','2-b22','200',NULL,NULL,'0'), ('31','28','2016-03-01','2','a11','1','1-a11','150',NULL,NULL,'0');
INSERT INTO `ihead` VALUES ('28','2','2016-03-01',NULL);
INSERT INTO `migration` VALUES ('m000000_000000_base','1456404327'), ('m140209_132017_init','1456404331'), ('m140602_111327_create_menu_table','1456502801');
INSERT INTO `paymoney` VALUES ('8','1','1','tn2559001','1-tn2559001','25000.0000','1','2016-02-03','590203001','1','2558/015','2558',NULL,'11111111','2016-03-01','ธกส. สาขาศรีวิไล','2016-03-04 23:22:04'), ('9','5','3','inv201559','3-inv201559','32500.0000','1','2016-02-19','59021920','0','2558/020','2558',NULL,NULL,NULL,NULL,NULL), ('10','1','1','tn2559010','1-tn2559010','7500.0000','1','2016-03-01','59030303','0','5900003','2558',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pbudgets` VALUES ('1','เงินบำรุง'), ('2','เงินUC'), ('3','เงินPP');
INSERT INTO `profile` VALUES ('1','ไอน้ำ เรืองโพน','','','d41d8cd98f00b204e9800998ecf8427e','','','','จพ.เภสัชกรรมชำนาญงาน','2','nam.jpg'), ('2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('4','นายสาธิต วรรณภา',NULL,NULL,NULL,NULL,NULL,NULL,'จนท.พัสดุ','1','pic1.png'), ('5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), ('16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `receivedata` VALUES ('6','2016-02-01','1','tn2559001','1','1-tn2559001','25000.0000','1','2016-03-04','1'), ('7','2016-02-08','1','tn2559010','1','1-tn2559010','7500.0000','1','2016-03-04','1'), ('8','2016-02-16','5','inv201559','3','3-inv201559','32500.0000','1','2016-03-04','1');
INSERT INTO `stockdata` VALUES ('10','0','1',NULL,'2016-02-01','1','tn2559001','1-tn2559001','25000.0000','1','2558/015','2016-02-03','590203001','1','1','1',NULL,NULL,'2558'), ('11','0','5',NULL,'2016-02-16','3','inv201559','3-inv201559','32500.0000','1','2558/020','2016-02-19','59021920','1','1','1',NULL,NULL,'2558'), ('12','0','1',NULL,'2016-02-08','1','tn2559010','1-tn2559010','7500.0000','1','5900003','2016-03-01','59030303','1','1','1',NULL,NULL,'2558');
INSERT INTO `token` VALUES ('1','w3eJ0H9Ky8RT2I3an50BljdExrryD3nT','1456723200','0'), ('2','qLrMWL0BmaA82-ae6scMIDzYLSsNC7NB','1457342923','0'), ('3','4jyLMlJq-rhEqyOX8uH268rvek0DK_nj','1457342979','0'), ('4','swxPU2di9rv3Qt1_Xb-IcMVvPmSv0qH2','1457343051','0'), ('5','DsmPH8aM1GVpaztHdo393q8zdQlYYAV-','1457343099','0'), ('6','Ky4KOQcGszrPwGZIlCQDqFfAx6-bGYcJ','1457343131','0'), ('7','A4llMsatBpPxU3pECdWCjoFc4VzcdB1h','1457343157','0'), ('8','a4q9Lq9gIC4bXz9NsYnLprztE1wUMlN9','1457343234','0'), ('9','mkhhuQan_MKMhuzKJ0WSdcQSe525dDcx','1457343263','0'), ('10','qiUP2jPXfaJy09myLcpncpKy-uYeye_O','1457343306','0'), ('11','Yo2DAS-t8tec9Ec6eyiuWBSCzTDuMY9o','1457343333','0'), ('12','9hlRjvatcfVcUCR93ay5Pzrg2EjIcB-y','1457343365','0'), ('13','-D-QBFHISjEX5VjWrKkwo20k63lSedHA','1457343404','0'), ('14','3oBSI3u1tmEcrosC67FqUdiN5jTdJYtv','1457343436','0'), ('15','IFP1hnxHbYZl46ZjUhmtDevvienTh-Q7','1457343474','0'), ('16','d5k3gXe57RWvu-7f0klkwQdMbM89RdCE','1457343592','0');
INSERT INTO `types` VALUES ('1','ยา'), ('2','เวชภัณฑ์ที่ไม่ใช่ยา'), ('3','เครื่องมือแพทย์'), ('4','วัสดุทางการแพทย์'), ('5','วัสดุทันตกรรม'), ('6','เครื่องมือทันตกรรม'), ('7','วัสดุชันสูตร');
INSERT INTO `user` VALUES ('1','admin','admin@localhost.com','$2y$12$vFk6DIKqtahNk/XKv0odsOJjcvNMndvARV5F4HWC4/syImkwKc57O','hqphz5xNsc8k9pjjKf_uCUBKR1EkmCc5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1456723200','1456723200','10'), ('2','bomb','user@localhost.com','$2y$12$tEU7ygpcOki0P.5XJwFwHO9LevN9CDEB6k/XClcJraES.G9ieQlEm','2s1M_fZeUmreU0p0KG_sR9EqpKnraLYC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457342923','1457342923','20'), ('3','wanpen','wanpen@local.com','$2y$12$f5Sz0zXz0pqPiuXVXvk./OVOO6H1ccqWkJftbuSFeuQ4ZluQY87gW','tAPqepFB5DyVhaJrnQW5T9-LJhuAnH6W',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457342979','1457342979','20'), ('4','3430300494778','mad@localhost.com','$2y$12$gfiUCNMgGEjtloTU9//TiueOQGOQLkQLqY/VsXhuHoJD6dJBYP0D6','pY4MG67aNMsC48yg2yLdeg6q7IgPYudB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343050','1457343050','20'), ('5','2430900001740','suphatra14@gmail.com','$2y$12$G0lV6.63.VXdiwaw3z4OWOg7m.tK.XfhkUsgS0vvy7GFuKDDyuE2W','PwKJukYTRF0bOMtvwhxAp4ZvAfYtCnND',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343099','1457343099','20'), ('6','3419900099398','tstta-297@hotmail.com','$2y$12$Sg904YLEJ/nF4pVnNp9E1.MDzJdUFqHDK/xDc3toIJz3DE/.6jrzG','qztm_v3AKqQXsLUdle4Dmijd5er8CPyl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343131','1457343131','20'), ('7','3430300707836','Teeranat_t@hotmail.com','$2y$12$RBXQ2QqPYaW2Wthu9q.6Re3606bicVGKdIHGlT3pPmUB3jCEXpcKu','GsAUtex5T8kw5wfitIdD51TYiLvSCuRF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343157','1457343157','20'), ('8','1419900240175','praew.jid@gmail.com','$2y$12$.PE2MEOu9BDo7YWyXnAf8eFg6AZVxgiBlWXAGjAXnSUX/0gW7SMZ.','27WRMdpXTpCXswsSxHNHD_kZE_MqqC0L',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343233','1457343233','20'), ('9','1410800062331','sineenartsaenprasert@gmail.com','$2y$12$GpbFp5uGKmUvJjakFu6svuQhFBpas.R7HFdpE761vTZV0A6Xs1P/y','rSPI8iDZujkiuleeC9Is6y_KYfjIJrMQ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343263','1457343263','20'), ('10','3430900573351','nuchkunlaboot@gmail.com','$2y$12$iAlxKfJkF/PBNK50SnI3COYECmtvgQtovg5xq1eKj8ou.dFLtyfC.','tO2OukGq8-EUKm0dI4FXqKVszYsvMOB3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343305','1457343305','20'), ('11','1431200001235','Ch.sochomphu@hotmail.com','$2y$12$U9Cw9iReZdBWCaieoRjNUOcMrlWGDCRFrOGdvCklAM19kuyZhFDQa','A_5BuBUPoO3dC5fJBOZVgvTOaKDnUBEz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343333','1457343333','20'), ('12','3309901343935','aomkapom.bk@gmail.com','$2y$12$.rz4CVT7d6Tfj93UDVPe2.odYPaBfRAzOa/WaSrJSTzAnPBTwvLKO','ueYajONVAXvxbu-e1BZbfV-1lKH-tJ7Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343365','1457343365','20'), ('13','3430300752734','panatsayaNaka@gmail.com','$2y$12$3..k4shW9LX8pVUzDUAXUeqGkltVDgbdDIPPFgYzDE9vOCrpPpjoK','msZBhjnF0E-fG2i0WTYBibHeJsRX_h0s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343404','1457343404','20'), ('14','3430400015138','intakid@gmail.com','$2y$12$QAXp1vCW75qEGX5kHwmz5eVzeHHytovBZpKPxewAgWi5juxMS4xjy','juRESDG0BkFX1CsKdoQX4cnOpMEtaenx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343435','1457343435','20'), ('15','1430600001291','Dookdui87@Gmail.com','$2y$12$4Hk9lAIgkdjDzx62qiugSObFR9njyUYANb5F4vLuHmkGkCaQtQk0u','2W302kW89AwARRImEZ3W7Gk5-pvGu2xa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343473','1457343473','20'), ('16','3430300905417','planin5@hotmail.com','$2y$12$.g6wGtSm.hgGrbbHYu5HMOaF2k9Jj0AZeGei0gmqwMeu7cX5G2Oye','yz5m30BD590gCFhSTKNNrTAJD4P-plOv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::1',NULL,NULL,'1457343592','1457343592','20');
INSERT INTO `years` VALUES ('1','2557','2013-10-01','2014-09-30'), ('2','2558','2014-10-01','2015-09-30'), ('3','2559','2015-10-01','2016-09-30');
