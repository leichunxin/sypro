/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : 127.0.0.1:3306
Source Database       : sypro

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2015-08-15 01:47:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbug`
-- ----------------------------
DROP TABLE IF EXISTS `tbug`;
CREATE TABLE `tbug` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `NOTE` longtext,
  `BUGTYPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_q8x2eyh7d65rv7vcd7iw2h8yf` (`BUGTYPE_ID`),
  CONSTRAINT `FK_q8x2eyh7d65rv7vcd7iw2h8yf` FOREIGN KEY (`BUGTYPE_ID`) REFERENCES `tbugtype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbug
-- ----------------------------

-- ----------------------------
-- Table structure for `tbugtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbugtype`;
CREATE TABLE `tbugtype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbugtype
-- ----------------------------
INSERT INTO `tbugtype` VALUES ('0', '错误');
INSERT INTO `tbugtype` VALUES ('1', '功能');

-- ----------------------------
-- Table structure for `tresource`
-- ----------------------------
DROP TABLE IF EXISTS `tresource`;
CREATE TABLE `tresource` (
  `ID` varchar(36) NOT NULL,
  `ICON` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `PID` varchar(36) DEFAULT NULL,
  `TRESOURCETYPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_m0i6pj14hcg1mleojnl7igg6o` (`PID`),
  KEY `FK_6w0sgqbec1o81uqqjsmejg57p` (`TRESOURCETYPE_ID`),
  CONSTRAINT `FK_6w0sgqbec1o81uqqjsmejg57p` FOREIGN KEY (`TRESOURCETYPE_ID`) REFERENCES `tresourcetype` (`ID`),
  CONSTRAINT `FK_m0i6pj14hcg1mleojnl7igg6o` FOREIGN KEY (`PID`) REFERENCES `tresource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresource
-- ----------------------------
INSERT INTO `tresource` VALUES ('buggl', 'bug', 'BUG管理', null, '4', '/bugController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('bugglAdd', 'bug_add', '添加BUG', null, '3', '/bugController/add', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglAddPage', 'bug_add', '添加BUG页面', null, '2', '/bugController/addPage', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglDateGrid', 'bug_link', 'BUG表格', null, '1', '/bugController/dataGrid', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglDelete', 'bug_delete', '删除BUG', null, '6', '/bugController/delete', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglEdit', 'bug_edit', '编辑BUG', null, '5', '/bugController/edit', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglEditPage', 'bug_edit', '编辑BUG页面', null, '4', '/bugController/editPage', 'buggl', '1');
INSERT INTO `tresource` VALUES ('bugglView', 'bug_link', '查看BUG', null, '7', '/bugController/view', 'buggl', '1');
INSERT INTO `tresource` VALUES ('chart', 'chart_bar', '图表管理', null, '7', null, null, '0');
INSERT INTO `tresource` VALUES ('jeasyuiApi', 'book', 'EasyUI API', null, '1000', 'http://jeasyui.com/documentation', null, '0');
INSERT INTO `tresource` VALUES ('jsgl', 'tux', '角色管理', null, '2', '/roleController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('jsglAdd', 'wrench', '添加角色', null, '3', '/roleController/add', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglAddPage', 'wrench', '添加角色页面', null, '2', '/roleController/addPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglDelete', 'wrench', '删除角色', null, '6', '/roleController/delete', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglEdit', 'wrench', '编辑角色', null, '5', '/roleController/edit', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglEditPage', 'wrench', '编辑角色页面', null, '4', '/roleController/editPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglGrant', 'wrench', '角色授权', null, '8', '/roleController/grant', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglGrantPage', 'wrench', '角色授权页面', null, '7', '/roleController/grantPage', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('jsglTreeGrid', 'wrench', '角色表格', null, '1', '/roleController/treeGrid', 'jsgl', '1');
INSERT INTO `tresource` VALUES ('sjygl', 'server_database', '数据源管理', null, '5', '/druidController/druid', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('userCreateDatetimeChart', 'chart_curve', '用户图表', null, '1', '/chartController/userCreateDatetimeChart', 'chart', '0');
INSERT INTO `tresource` VALUES ('wjgl', 'server_database', '文件管理', null, '6', '', 'xtgl', '1');
INSERT INTO `tresource` VALUES ('wjglUpload', 'server_database', '上传文件', null, '2', '/fileController/upload', 'wjgl', '1');
INSERT INTO `tresource` VALUES ('wjglView', 'server_database', '浏览服务器文件', null, '1', '/fileController/fileManage', 'wjgl', '1');
INSERT INTO `tresource` VALUES ('xtgl', 'plugin', '系统管理', null, '0', null, null, '0');
INSERT INTO `tresource` VALUES ('yhgl', 'status_online', '用户管理', null, '3', '/userController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('yhglAdd', 'wrench', '添加用户', null, '3', '/userController/add', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglAddPage', 'wrench', '添加用户页面', null, '2', '/userController/addPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglBatchDelete', 'wrench', '批量删除用户', null, '7', '/userController/batchDelete', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglDateGrid', 'wrench', '用户表格', null, '1', '/userController/dataGrid', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglDelete', 'wrench', '删除用户', null, '6', '/userController/delete', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEdit', 'wrench', '编辑用户', null, '5', '/userController/edit', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPage', 'wrench', '编辑用户页面', null, '4', '/userController/editPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPwd', 'wrench', '用户修改密码', null, '11', '/userController/editPwd', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglEditPwdPage', 'wrench', '用户修改密码页面', null, '10', '/userController/editPwdPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglGrant', 'wrench', '用户授权', null, '9', '/userController/grant', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('yhglGrantPage', 'wrench', '用户授权页面', null, '8', '/userController/grantPage', 'yhgl', '1');
INSERT INTO `tresource` VALUES ('zygl', 'database_gear', '资源管理', '管理系统中所有的菜单或功能', '1', '/resourceController/manager', 'xtgl', '0');
INSERT INTO `tresource` VALUES ('zyglAdd', 'wrench', '添加资源', null, '4', '/resourceController/add', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglAddPage', 'wrench', '添加资源页面', null, '3', '/resourceController/addPage', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglDelete', 'wrench', '删除资源', null, '7', '/resourceController/delete', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglEdit', 'wrench', '编辑资源', null, '6', '/resourceController/edit', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglEditPage', 'wrench', '编辑资源页面', null, '5', '/resourceController/editPage', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglMenu', 'wrench', '功能菜单', null, '2', '/resourceController/tree', 'zygl', '1');
INSERT INTO `tresource` VALUES ('zyglTreeGrid', 'wrench', '资源表格', '显示资源列表', '1', '/resourceController/treeGrid', 'zygl', '1');

-- ----------------------------
-- Table structure for `tresourcetype`
-- ----------------------------
DROP TABLE IF EXISTS `tresourcetype`;
CREATE TABLE `tresourcetype` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresourcetype
-- ----------------------------
INSERT INTO `tresourcetype` VALUES ('0', '菜单');
INSERT INTO `tresourcetype` VALUES ('1', '功能');

-- ----------------------------
-- Table structure for `trole`
-- ----------------------------
DROP TABLE IF EXISTS `trole`;
CREATE TABLE `trole` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `PID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_3qq9eyhwbhblv83lt270gxbik` (`PID`),
  CONSTRAINT `FK_3qq9eyhwbhblv83lt270gxbik` FOREIGN KEY (`PID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole
-- ----------------------------
INSERT INTO `trole` VALUES ('0', '超管', '超级管理员角色，拥有系统中所有的资源访问权限', '0', null);
INSERT INTO `trole` VALUES ('bugAdmin', 'BUG管理员', null, '5', '0');
INSERT INTO `trole` VALUES ('guest', 'Guest', '只拥有只看的权限', '1', null);
INSERT INTO `trole` VALUES ('jsAdmin', '角色管理员', null, '2', '0');
INSERT INTO `trole` VALUES ('sjyAdmin', '数据源管理员', null, '4', '0');
INSERT INTO `trole` VALUES ('yhAdmin', '用户管理员', null, '3', '0');
INSERT INTO `trole` VALUES ('zyAdmin', '资源管理员', null, '1', '0');

-- ----------------------------
-- Table structure for `trole_tresource`
-- ----------------------------
DROP TABLE IF EXISTS `trole_tresource`;
CREATE TABLE `trole_tresource` (
  `TROLE_ID` varchar(36) NOT NULL,
  `TRESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`TRESOURCE_ID`,`TROLE_ID`),
  KEY `FK_18oms8g4ib4h67dqx0f3fwaed` (`TRESOURCE_ID`),
  KEY `FK_aunc1ssqh18meky8cxl48i4m9` (`TROLE_ID`),
  CONSTRAINT `FK_18oms8g4ib4h67dqx0f3fwaed` FOREIGN KEY (`TRESOURCE_ID`) REFERENCES `tresource` (`ID`),
  CONSTRAINT `FK_aunc1ssqh18meky8cxl48i4m9` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole_tresource
-- ----------------------------
INSERT INTO `trole_tresource` VALUES ('0', 'buggl');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'buggl');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglAdd');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglAddPage');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglDateGrid');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglDateGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglDelete');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglEdit');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglEditPage');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'bugglView');
INSERT INTO `trole_tresource` VALUES ('bugAdmin', 'bugglView');
INSERT INTO `trole_tresource` VALUES ('0', 'chart');
INSERT INTO `trole_tresource` VALUES ('0', 'jeasyuiApi');
INSERT INTO `trole_tresource` VALUES ('guest', 'jeasyuiApi');
INSERT INTO `trole_tresource` VALUES ('0', 'jsgl');
INSERT INTO `trole_tresource` VALUES ('guest', 'jsgl');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsgl');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglAdd');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglAddPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglDelete');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglEdit');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglEditPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglGrant');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglGrant');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglGrantPage');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglGrantPage');
INSERT INTO `trole_tresource` VALUES ('0', 'jsglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('guest', 'jsglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('jsAdmin', 'jsglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'sjygl');
INSERT INTO `trole_tresource` VALUES ('sjyAdmin', 'sjygl');
INSERT INTO `trole_tresource` VALUES ('0', 'userCreateDatetimeChart');
INSERT INTO `trole_tresource` VALUES ('0', 'wjgl');
INSERT INTO `trole_tresource` VALUES ('0', 'wjglUpload');
INSERT INTO `trole_tresource` VALUES ('0', 'wjglView');
INSERT INTO `trole_tresource` VALUES ('0', 'xtgl');
INSERT INTO `trole_tresource` VALUES ('guest', 'xtgl');
INSERT INTO `trole_tresource` VALUES ('0', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('guest', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhgl');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglAdd');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglAddPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglBatchDelete');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglBatchDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('guest', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglDateGrid');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglDelete');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEdit');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPwd');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPwd');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglEditPwdPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglEditPwdPage');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglGrant');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglGrant');
INSERT INTO `trole_tresource` VALUES ('0', 'yhglGrantPage');
INSERT INTO `trole_tresource` VALUES ('yhAdmin', 'yhglGrantPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zygl');
INSERT INTO `trole_tresource` VALUES ('guest', 'zygl');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zygl');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglAdd');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglAdd');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglAddPage');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglAddPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglDelete');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglDelete');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglEdit');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglEdit');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglEditPage');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglEditPage');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglMenu');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglMenu');
INSERT INTO `trole_tresource` VALUES ('0', 'zyglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('guest', 'zyglTreeGrid');
INSERT INTO `trole_tresource` VALUES ('zyAdmin', 'zyglTreeGrid');

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `ID` varchar(36) NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `MODIFYDATETIME` datetime DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  `PWD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('0', '2015-06-16 00:14:08', null, '孙宇', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('1', '2015-06-16 00:14:08', null, 'admin1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('2', '2015-06-16 00:14:08', null, 'admin2', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('3', '2015-06-16 00:14:08', null, 'admin3', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('4', '2015-06-16 00:14:08', null, 'admin4', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('5', '2015-06-16 00:14:08', null, 'admin5', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `tuser` VALUES ('guest', '2015-06-16 00:14:08', null, 'guest', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `tuser_trole`
-- ----------------------------
DROP TABLE IF EXISTS `tuser_trole`;
CREATE TABLE `tuser_trole` (
  `TUSER_ID` varchar(36) NOT NULL,
  `TROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`TROLE_ID`,`TUSER_ID`),
  KEY `FK_30t0khk63muiwisjpp0h7e57l` (`TROLE_ID`),
  KEY `FK_mipcojqd9xymdghov18fobf7e` (`TUSER_ID`),
  CONSTRAINT `FK_30t0khk63muiwisjpp0h7e57l` FOREIGN KEY (`TROLE_ID`) REFERENCES `trole` (`ID`),
  CONSTRAINT `FK_mipcojqd9xymdghov18fobf7e` FOREIGN KEY (`TUSER_ID`) REFERENCES `tuser` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser_trole
-- ----------------------------
INSERT INTO `tuser_trole` VALUES ('0', '0');
INSERT INTO `tuser_trole` VALUES ('0', 'bugAdmin');
INSERT INTO `tuser_trole` VALUES ('5', 'bugAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'guest');
INSERT INTO `tuser_trole` VALUES ('guest', 'guest');
INSERT INTO `tuser_trole` VALUES ('0', 'jsAdmin');
INSERT INTO `tuser_trole` VALUES ('2', 'jsAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'sjyAdmin');
INSERT INTO `tuser_trole` VALUES ('4', 'sjyAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'yhAdmin');
INSERT INTO `tuser_trole` VALUES ('3', 'yhAdmin');
INSERT INTO `tuser_trole` VALUES ('0', 'zyAdmin');
INSERT INTO `tuser_trole` VALUES ('1', 'zyAdmin');
