-- MySQL dump 10.13  Distrib 5.6.12, for Win32 (x86)
--
-- Host: localhost    Database: myoa
-- ------------------------------------------------------
-- Server version	5.6.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tp_client`
--

DROP TABLE IF EXISTS `tp_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_client` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(10) DEFAULT '0' COMMENT '用户ID',
  `Cid` int(10) DEFAULT '0' COMMENT '默认联系人ID',
  `CompanyName` char(60) DEFAULT NULL COMMENT '公司名称',
  `Address` char(100) DEFAULT NULL COMMENT '详细地址',
  `ZipCode` char(10) DEFAULT NULL COMMENT '邮编',
  `WebUrl` varchar(60) DEFAULT NULL COMMENT '网站地址',
  `Industry` tinyint(4) DEFAULT '0' COMMENT '属所行业',
  `ClientType` tinyint(4) DEFAULT '0' COMMENT '客户类型',
  `ClientLevel` tinyint(4) DEFAULT '0' COMMENT '客户级别',
  `ClientSource` tinyint(4) DEFAULT '0' COMMENT '客户来源',
  `FollowUp` tinyint(4) DEFAULT '0' COMMENT '跟进情况',
  `Wast` tinyint(4) DEFAULT '0' COMMENT '跟单类型',
  `Intent` tinyint(4) DEFAULT '0' COMMENT '户客意向',
  `MainItems` varchar(200) DEFAULT NULL COMMENT '主营项目',
  `Message` varchar(1000) DEFAULT NULL COMMENT '备注，其它',
  `OpenShare` tinyint(1) DEFAULT '0' COMMENT '是否共享',
  `Share` varchar(500) DEFAULT NULL COMMENT '针对共享',
  `Recycle` tinyint(1) DEFAULT '0' COMMENT '是否在回收站',
  `Dtime` datetime DEFAULT NULL COMMENT '录入时间',
  `FinalTime` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_client`
--

LOCK TABLES `tp_client` WRITE;
/*!40000 ALTER TABLE `tp_client` DISABLE KEYS */;
INSERT INTO `tp_client` VALUES (5,1,5,'开玩笑有限公司','地球中国','','http://www.zhongguo.com',36,7,16,11,56,46,59,'什么都做。。','有潜力的客户.....',1,NULL,0,'2014-01-07 19:40:46','2014-01-07 19:40:46'),(6,1,6,'某某国际有限公司','美国洛杉矶','','http://www.luoshanji.com',35,10,16,12,56,47,59,'医疗行业。。','没了。。。',1,NULL,0,'2014-01-07 19:42:29','2014-01-07 19:42:29'),(11,9,11,'wu','wu','','wu',34,8,16,11,55,46,59,'','',0,NULL,0,'2014-01-08 14:30:50','2014-01-08 14:30:50'),(12,9,13,'d','d','d','d',34,7,16,11,55,46,58,'','',0,NULL,0,'2014-01-08 14:37:17','2014-01-08 21:38:24'),(13,9,14,'d','d','d','d',34,7,16,11,55,46,58,'','',0,NULL,1,'2014-01-08 14:37:17','2014-01-08 14:37:17');
/*!40000 ALTER TABLE `tp_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_competence`
--

DROP TABLE IF EXISTS `tp_competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_competence` (
  `ID` int(5) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `Sid` int(5) DEFAULT '0' COMMENT '权限分组',
  `Cname` varchar(20) DEFAULT '' COMMENT '权限名称',
  `Description` varchar(50) DEFAULT '' COMMENT '说明',
  `Status` tinyint(2) DEFAULT '0' COMMENT '状态',
  `Dtime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_competence`
--

LOCK TABLES `tp_competence` WRITE;
/*!40000 ALTER TABLE `tp_competence` DISABLE KEYS */;
INSERT INTO `tp_competence` VALUES (1,0,'用户管理','登录用户管理',0,'2013-12-08 17:08:27'),(2,1,'用户列表','',0,'2013-12-08 17:08:47'),(3,1,'添加用户','',0,'2013-12-08 17:08:54'),(4,1,'修改用户','',0,'2013-12-08 17:09:02'),(5,1,'删除用户','',0,'2013-12-08 17:09:30'),(6,0,'角色管理','角色、级别分类',0,'2013-12-08 17:09:53'),(7,6,'浏览角色','',0,'2013-12-08 17:10:03'),(8,6,'添加角色','',0,'2013-12-08 17:10:14'),(9,6,'修改角色','',0,'2013-12-08 17:10:24'),(10,6,'删除角色','',0,'2013-12-08 17:10:33'),(11,0,'权限列表','对权限、功能的管理、操作需谨慎',0,'2013-12-08 17:11:27'),(12,11,'浏览权限','',0,'2013-12-08 17:11:38'),(13,11,'添加权限','',0,'2013-12-08 17:11:47'),(14,11,'修改权限','',0,'2013-12-08 17:11:54'),(15,11,'删除权限','',0,'2013-12-08 17:12:04'),(16,0,'系统管理','对系统管理的设置、修改',0,'2013-12-08 17:15:50'),(17,0,'其它权限','其它琐碎、无关痛痒的操作',0,'2013-12-08 17:16:22'),(18,17,'修改资料','',0,'2013-12-08 17:17:09'),(19,17,'登录日志查看','',0,'2013-12-13 00:24:45'),(20,17,'删除登录日志','',0,'2013-12-13 00:25:04'),(21,16,'IP封禁管理','',0,'2013-12-13 15:31:39'),(22,16,'添加封禁IP','',0,'2013-12-13 15:34:41'),(23,16,'删除封禁IP','',0,'2013-12-13 15:36:04'),(24,16,'清空缓存','清空文件缓存、日志等',0,'2013-12-13 17:56:04'),(25,16,'模块管理','后台功能模块管理',0,'2013-12-15 13:35:24'),(26,16,'添加模块','',0,'2013-12-15 13:35:37'),(27,16,'修改模块','',0,'2013-12-15 13:35:47'),(28,16,'删除模块','',0,'2013-12-15 13:35:56'),(29,31,'系统配置浏览','浏览系统核心配置参数',0,'2013-12-19 09:33:41'),(30,31,'系统配置修改','',0,'2013-12-19 09:33:54'),(31,0,'系统配置','配置系统核心参数',0,'2013-12-19 09:56:54'),(32,31,'核心配置','浏览核心配置参数',0,'2013-12-19 09:58:04'),(33,31,'核心配置修改','',0,'2013-12-19 09:58:35'),(34,0,'云端文件','云端文件管理',0,'2013-12-19 11:37:54'),(35,34,'文件管理','管理所有已上传的文件',0,'2013-12-19 11:38:18'),(36,34,'添加目录','',0,'2013-12-19 11:38:28'),(37,34,'修改目录','',0,'2013-12-19 11:38:36'),(38,34,'删除目录','',0,'2013-12-19 11:38:43'),(39,34,'移动文件','移动文件到其它目录',0,'2013-12-19 11:39:31'),(40,34,'上传文件','',0,'2013-12-19 11:39:47'),(41,34,'修改文件','',0,'2013-12-19 11:40:21'),(42,34,'删除文件','',0,'2013-12-19 11:40:28'),(43,34,'下载文件','',0,'2013-12-24 15:35:52'),(44,0,'新闻动态','',0,'2013-12-25 15:26:20'),(45,44,'分类管理','管理单页分类',0,'2013-12-25 15:26:38'),(46,44,'添加分类','',0,'2013-12-25 15:27:14'),(47,44,'修改分类','',0,'2013-12-25 15:27:28'),(48,44,'删除分类','',0,'2013-12-25 15:27:35'),(49,44,'添加单页','',0,'2013-12-25 15:27:43'),(50,44,'修改单页','',0,'2013-12-25 15:27:50'),(51,44,'删除单页','',0,'2013-12-25 15:27:57'),(52,31,'网站配置浏览','',0,'2013-12-26 23:09:38'),(53,31,'网站配置修改','',0,'2013-12-26 23:10:15'),(59,0,'下拉菜单','管理下拉菜单',0,'2013-12-29 22:34:23'),(60,59,'浏览下拉菜单','',0,'2013-12-29 22:34:43'),(61,59,'添加下拉菜单','',0,'2013-12-29 22:34:55'),(62,59,'修改下拉菜单','',0,'2013-12-29 22:35:05'),(63,59,'删除下拉菜单','',0,'2013-12-29 22:35:16'),(64,0,'客户管理','客户管理中心',0,'2014-01-01 10:40:22'),(65,64,'客户列表','',0,'2014-01-01 10:40:35'),(66,64,'新增客户','',0,'2014-01-01 10:40:44'),(67,64,'修改客户信息','',0,'2014-01-01 10:40:54'),(68,64,'删除客户','',0,'2014-01-01 10:41:09'),(69,64,'新增联系人','',0,'2014-01-01 21:56:11'),(70,64,'修改联系人信息','',0,'2014-01-01 21:56:24'),(71,64,'删除联系人','',0,'2014-01-01 21:56:46'),(72,64,'共享客户','',0,'2014-01-01 21:57:26'),(73,64,'浏览共享数据','',0,'2014-01-01 21:57:48'),(74,64,'回收站','',0,'2014-01-01 21:59:01'),(75,64,'还原数据','',0,'2014-01-01 21:59:43'),(76,64,'删除回收站数据','',0,'2014-01-01 21:59:54'),(77,34,'查看共享文件','查看共享文件',0,'2014-01-04 21:06:16'),(78,64,'跟单管理','',0,'2014-01-05 01:17:01'),(79,64,'新建跟单','',0,'2014-01-05 01:17:20'),(80,64,'修改跟单信息','',0,'2014-01-05 01:17:33'),(81,64,'删除跟单信息','',0,'2014-01-05 01:17:48'),(82,17,'操作日志','',0,'2014-01-05 14:35:00'),(83,17,'删除操作日志','',0,'2014-01-05 14:35:12'),(84,44,'内容列表','',0,'2014-01-21 21:22:26'),(85,64,'联系人列表','',0,'2014-01-21 21:25:27');
/*!40000 ALTER TABLE `tp_competence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_contact`
--

DROP TABLE IF EXISTS `tp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_contact` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(10) DEFAULT '0' COMMENT '用户编号',
  `Cid` int(10) DEFAULT '0' COMMENT '客户档案编号',
  `ContactName` char(30) DEFAULT '' COMMENT '联系人',
  `Sex` char(4) DEFAULT NULL COMMENT '性别',
  `Post` tinyint(4) DEFAULT '0' COMMENT '职位',
  `Qq` char(30) DEFAULT NULL COMMENT '腾讯QQ',
  `Skype` char(30) DEFAULT NULL COMMENT 'msn',
  `Alww` char(30) DEFAULT '' COMMENT '阿里旺旺',
  `Phone` char(30) DEFAULT NULL COMMENT '手机',
  `Tel` char(20) DEFAULT NULL COMMENT '联系电话',
  `Fax` char(20) DEFAULT NULL COMMENT '传真',
  `Email` char(40) DEFAULT '' COMMENT '电子邮箱',
  `Birthday` datetime DEFAULT NULL COMMENT '生日',
  `Content` varchar(1000) DEFAULT NULL COMMENT '备注说明',
  `Recycle` tinyint(1) DEFAULT '0' COMMENT '是否在回收站',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  `FinalTime` datetime DEFAULT NULL COMMENT '最后更新',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_contact`
--

LOCK TABLES `tp_contact` WRITE;
/*!40000 ALTER TABLE `tp_contact` DISABLE KEYS */;
INSERT INTO `tp_contact` VALUES (5,1,5,'开玩笑','男',22,'66666666','Skype@skype.com','lala.com','15102041255','445223115','02066638783','qq@qq.com','2014-01-07 19:40:38',NULL,0,'2014-01-07 19:40:46','2014-01-07 19:40:46'),(6,1,6,'找小姐','女',23,'88888888','Skype@skype.com','lala.com','1520335225','445223115','','qq@qq.com','2014-01-07 19:42:15',NULL,0,'2014-01-07 19:42:29','2014-01-07 19:42:29');
/*!40000 ALTER TABLE `tp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_dmenu`
--

DROP TABLE IF EXISTS `tp_dmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_dmenu` (
  `ID` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `Uid` int(8) DEFAULT NULL,
  `Sid` int(5) DEFAULT '0' COMMENT '下级ID',
  `MenuName` char(50) DEFAULT NULL COMMENT '下拉菜单名称',
  `Description` char(100) DEFAULT NULL COMMENT '描述',
  `Sortid` int(5) DEFAULT '0' COMMENT '序排ID',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_dmenu`
--

LOCK TABLES `tp_dmenu` WRITE;
/*!40000 ALTER TABLE `tp_dmenu` DISABLE KEYS */;
INSERT INTO `tp_dmenu` VALUES (1,1,0,'客户类型','',0,'2013-12-29 21:40:29'),(2,1,0,'客户来源','',0,'2013-12-29 21:42:30'),(3,1,0,'客户级别','',0,'2013-12-29 21:42:40'),(4,1,0,'职位','',0,'2013-12-29 21:42:50'),(5,1,0,'跟单类型','',0,'2013-12-29 21:43:07'),(6,1,0,'是/否','',0,'2013-12-29 21:43:55'),(7,1,1,'成长型','',0,'2013-12-29 21:56:33'),(8,1,1,'创业型','',1,'2013-12-29 21:56:47'),(9,1,1,'完美型','',3,'2013-12-29 21:56:56'),(10,1,1,'鼎盛时期','',2,'2013-12-29 21:57:04'),(11,1,2,'搜索引擎','',0,'2013-12-29 21:57:35'),(12,1,2,'关系介绍','',1,'2013-12-29 21:57:44'),(13,1,2,'婚博会','',2,'2013-12-29 21:58:09'),(14,1,2,'代理商','',3,'2013-12-29 21:58:18'),(15,1,2,'本公司','',4,'2013-12-29 21:58:25'),(16,1,3,'★★★★★★','',0,'2013-12-29 21:59:11'),(17,1,3,'★★★★★','',1,'2013-12-29 21:59:19'),(18,1,3,'★★★★','',2,'2013-12-29 21:59:26'),(19,1,3,'★★★','',3,'2013-12-29 21:59:32'),(20,1,3,'★★','',4,'2013-12-29 21:59:38'),(21,1,3,'★','',5,'2013-12-29 21:59:43'),(22,1,4,'董事长','',0,'2013-12-29 22:01:37'),(23,1,4,'总经理','',1,'2013-12-29 22:01:53'),(24,1,4,'区域经理','',2,'2013-12-29 22:02:01'),(25,1,4,'部门经理','',3,'2013-12-29 22:02:13'),(26,1,0,'从事行业','',0,'2013-12-29 22:02:24'),(27,1,4,'财务','',4,'2013-12-29 22:02:32'),(28,1,4,'技术类','',5,'2013-12-29 22:02:43'),(29,1,4,'业务员','',6,'2013-12-29 22:02:54'),(30,1,4,'其他','',7,'2013-12-29 22:03:01'),(34,1,26,'服务业','',0,'2013-12-29 22:23:21'),(35,1,26,'医疗 | 制药 | 环保','',8,'2013-12-29 22:23:36'),(36,1,26,'财会 | 金融','',9,'2013-12-29 22:23:51'),(37,1,26,'法律 | 教育 | 翻译 | 出版','',10,'2013-12-29 22:24:00'),(38,1,26,'网络 | 通信 | 电子','',11,'2013-12-29 22:24:52'),(39,1,26,'建筑 | 房产 | 物业','',7,'2013-12-29 22:25:01'),(40,1,26,'汽车制造 | 服务','',5,'2013-12-29 22:25:10'),(41,1,26,'生产 | 物流 | 质控','',4,'2013-12-29 22:25:19'),(42,1,26,'市场 | 媒介 | 广告 | 设计','',3,'2013-12-29 22:25:27'),(43,1,26,'销售 | 客服 | 采购','',2,'2013-12-29 22:25:45'),(44,1,26,'人力 | 行政 | 管理','',1,'2013-12-29 22:25:56'),(45,1,26,'其他','',12,'2013-12-29 22:26:04'),(46,1,5,'电话联系','',0,'2013-12-29 22:30:41'),(47,1,5,'上门服务','',1,'2013-12-29 22:30:57'),(48,1,5,'QQ联系','',2,'2013-12-29 22:31:09'),(49,1,5,'Email联系','',3,'2013-12-29 22:31:22'),(50,1,5,'其它方式','',4,'2013-12-29 22:31:38'),(51,1,6,'是','',0,'2013-12-29 22:33:00'),(52,1,6,'否','',1,'2013-12-29 22:33:06'),(53,1,6,'待定','',2,'2013-12-29 22:33:12'),(54,1,0,'跟进情况','',0,'2013-12-30 20:47:40'),(55,1,54,'正在跟进','',0,'2013-12-30 20:48:00'),(56,1,54,'待跟进','',1,'2013-12-30 20:48:41'),(57,1,0,'客户意向','',0,'2013-12-30 20:49:45'),(58,1,57,'有一定意向','',0,'2013-12-30 20:49:57'),(59,1,57,'意向明确','',1,'2013-12-30 20:50:06'),(60,1,57,'不明确','',2,'2013-12-30 20:50:21'),(61,1,57,'未知','',3,'2013-12-30 20:50:29'),(62,1,54,'完成跟进','',2,'2014-01-03 23:30:54');
/*!40000 ALTER TABLE `tp_dmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_file`
--

DROP TABLE IF EXISTS `tp_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_file` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '//ID编号',
  `Sid` int(8) DEFAULT '0' COMMENT '所属目录/分类',
  `Uid` int(10) DEFAULT '0' COMMENT '添加用户ID',
  `FileName` varchar(50) DEFAULT NULL COMMENT '文件/图片名称，可选',
  `Description` varchar(50) DEFAULT NULL COMMENT '文件/图片说明',
  `FilePath` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `FileSize` int(10) DEFAULT '0' COMMENT '文件大小',
  `FileType` varchar(10) DEFAULT NULL COMMENT '文件类型',
  `Share` tinyint(1) DEFAULT '0' COMMENT '是否共享文件或图片',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_file`
--

LOCK TABLES `tp_file` WRITE;
/*!40000 ALTER TABLE `tp_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_fileclass`
--

DROP TABLE IF EXISTS `tp_fileclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_fileclass` (
  `ID` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件分类ID',
  `Sid` int(8) DEFAULT '0' COMMENT '分类SID',
  `Uid` int(8) DEFAULT '0' COMMENT '用户ID',
  `Sortid` int(5) DEFAULT '0' COMMENT '排序ID',
  `ClassName` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `Description` varchar(50) DEFAULT NULL COMMENT '分类描述',
  `Status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_fileclass`
--

LOCK TABLES `tp_fileclass` WRITE;
/*!40000 ALTER TABLE `tp_fileclass` DISABLE KEYS */;
INSERT INTO `tp_fileclass` VALUES (1,0,1,0,'我的图片','我的图片',0,'2014-01-04 20:27:10'),(2,0,1,0,'我的文件','',0,'2014-01-04 20:27:20'),(3,0,1,0,'ueidtor','',0,'2014-01-04 20:27:54');
/*!40000 ALTER TABLE `tp_fileclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_ip`
--

DROP TABLE IF EXISTS `tp_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_ip` (
  `ID` int(8) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `Uid` int(6) DEFAULT NULL COMMENT '操作用户',
  `Ip` varchar(50) DEFAULT NULL COMMENT '被封禁IP',
  `Description` varchar(50) DEFAULT NULL COMMENT '描述',
  `Status` tinyint(1) DEFAULT '0' COMMENT '是否永久封禁',
  `StartTime` date DEFAULT NULL COMMENT '开始日期',
  `EndTime` date DEFAULT NULL COMMENT '结束日期',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_ip`
--

LOCK TABLES `tp_ip` WRITE;
/*!40000 ALTER TABLE `tp_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_loginlog`
--

DROP TABLE IF EXISTS `tp_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_loginlog` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `Uid` int(8) DEFAULT NULL COMMENT '登录用户',
  `User` char(40) DEFAULT NULL COMMENT '户用名',
  `Description` varchar(40) DEFAULT NULL COMMENT '登录说明',
  `Area` char(20) DEFAULT NULL,
  `Loginip` varchar(30) DEFAULT NULL COMMENT '登录IP',
  `Dtime` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_loginlog`
--

LOCK TABLES `tp_loginlog` WRITE;
/*!40000 ALTER TABLE `tp_loginlog` DISABLE KEYS */;
INSERT INTO `tp_loginlog` VALUES (199,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 21:26:38'),(200,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 21:37:02'),(201,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 22:25:34'),(202,2,'LITTLE','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 22:35:04'),(203,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 22:37:50'),(204,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-08 22:41:21'),(205,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-09 21:07:00'),(206,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-09 21:13:05'),(207,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-09 21:15:24'),(208,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-09 21:17:29'),(209,0,'test','<div class=\"de2\">用户不存在</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-13 21:13:03'),(210,0,'test','<div class=\"de2\">用户不存在</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-13 21:13:09'),(211,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-13 21:13:16'),(212,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-13 22:15:48'),(213,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-21 20:44:55'),(214,1,'admin','<div class=\"de1\">登录成功</div>','本机地址.IAMLE.COM','127.0.0.1','2014-01-21 21:36:11'),(215,1,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 15:05:18'),(216,1,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 15:51:44'),(217,1,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 15:58:03'),(218,0,'adminasda','<div class=\"de2\">用户不存在</div>','.',NULL,'2016-11-04 19:37:40'),(219,2,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 19:59:59'),(220,0,'adminsda','<div class=\"de2\">用户不存在</div>','.',NULL,'2016-11-04 20:09:30'),(221,0,'adminsda','<div class=\"de2\">用户不存在</div>','.',NULL,'2016-11-04 20:11:42'),(222,2,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 20:17:02'),(223,2,'admin','<div class=\"de1\">登录成功</div>','.',NULL,'2016-11-04 20:26:59');
/*!40000 ALTER TABLE `tp_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_module`
--

DROP TABLE IF EXISTS `tp_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_module` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Sid` int(5) DEFAULT '0' COMMENT '下级分类',
  `Uid` int(10) DEFAULT '0' COMMENT '操作用户ID',
  `ModuleName` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `ModuleImg` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `ModuleUrl` varchar(50) DEFAULT NULL COMMENT '连接地址',
  `Status` tinyint(4) DEFAULT '0' COMMENT '态状',
  `Description` varchar(50) DEFAULT NULL COMMENT '描述',
  `Msort` int(5) DEFAULT '0' COMMENT '序排ID',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_module`
--

LOCK TABLES `tp_module` WRITE;
/*!40000 ALTER TABLE `tp_module` DISABLE KEYS */;
INSERT INTO `tp_module` VALUES (1,0,1,'用户管理','/myoa/Public/image/home/img/21.png','User',0,'',1,'2013-12-15 17:12:34'),(2,0,1,'系统管理','/myoa/Public/image/home/img/23.png','System/systemconfig',0,'',1,'2013-12-15 17:13:50'),(3,0,1,'日志管理','/myoa/Public/image/home/img/45.png','Loginlog',0,'',2,'2013-12-15 17:14:05'),(4,1,1,'用户管理','/myoa/Public/image/home/img/51.png','User',0,'',0,'2013-12-15 17:15:09'),(5,1,1,'角色管理','/myoa/Public/image/home/img/527.png','Role',0,'',1,'2013-12-15 17:15:54'),(6,1,1,'权限列表','/myoa/Public/image/home/img/613.png','Competence',0,'',2,'2013-12-15 17:18:00'),(7,2,1,'模块管理','/myoa/Public/image/home/img/196.png','System/module',0,'',2,'2013-12-15 17:18:37'),(8,2,1,'封禁IP','/myoa/Public/image/home/img/844.png','System/ip',0,'',3,'2013-12-15 17:20:22'),(9,2,1,'系统配置','/myoa/Public/image/home/img/27.png','System/systemconfig',0,'',1,'2013-12-19 09:29:18'),(10,2,1,'核心配置','/myoa/Public/image/home/img/60.png','System/systemcore',0,'系统核心配置项管理',1,'2013-12-19 10:26:06'),(11,0,1,'云端文件','/myoa/Public/image/home/img/56.png','File/filelist',0,'云端文件管理系统',3,'2013-12-19 11:02:44'),(12,11,1,'文件管理','/myoa/Public/image/home/img/36.png','File/filelist',0,'',0,'2013-12-19 11:03:36'),(13,11,1,'上传图片','/myoa/Public/image/home/img/556.png','File/uploadpic',0,'所有文件管理',1,'2013-12-19 11:05:26'),(14,11,1,'上传文件','/myoa/Public/image/home/img/53.png','File/uploadfile',0,'',2,'2013-12-19 11:05:50'),(15,0,1,'新闻动态','/myoa/Public/image/home/img/399.png','',0,'',4,'2013-12-25 14:48:17'),(16,15,1,'栏目分类','/myoa/Public/image/home/img/838.png','News/classindex',0,'',0,'2013-12-25 14:51:07'),(17,15,1,'发布文章','/myoa/Public/image/home/img/839.png','News/add',0,'',1,'2013-12-25 14:51:47'),(18,15,1,'新闻列表','/myoa/Public/image/home/img/848.png','News/news',0,'',2,'2013-12-25 14:52:17'),(19,2,1,'网站设置','/myoa/Public/image/home/img/934.png','System/systemwebsite',0,'',0,'2013-12-26 22:04:03'),(21,0,1,'客户管理','/myoa/Public/image/home/img/269.png','Client/index',0,'客户管理中心',5,'2013-12-29 18:46:05'),(22,21,1,'所有客户','/myoa/Public/image/home/img/527.png','Client/index',0,'',0,'2013-12-29 18:47:07'),(23,21,1,'联系人','/myoa/Public/image/home/img/516.png','Client/contact',0,'',1,'2013-12-29 18:48:37'),(24,21,1,'客户共享','/myoa/Public/image/home/img/423.png','Client/openshare',0,'',3,'2013-12-29 18:49:20'),(25,2,1,'下拉菜单','/myoa/Public/image/home/img/98.png','Dmenu/index',0,'',4,'2013-12-29 20:51:03'),(26,3,1,'登录日志','/myoa/Public/image/home/img/303.png','Loginlog',0,'',0,'2013-12-29 22:38:08'),(27,3,1,'操作日志','/myoa/Public/image/home/img/9.png','Operating',0,'',1,'2013-12-29 22:39:53'),(28,21,1,'回收站','/myoa/Public/image/home/img/153.png','Client/recycle',0,'',5,'2014-01-01 14:04:33'),(29,0,1,'管理首页','/myoa/Public/image/home/img/22.png','Index/content',0,'',0,'2014-01-03 22:12:51'),(30,11,1,'共享文件','/myoa/Public/image/home/img/569.png','File/fileshare',0,'',1,'2014-01-04 21:10:37'),(31,21,1,'跟单记录','/myoa/Public/image/home/img/161.png','With/with',0,'',2,'2014-01-04 22:12:30');
/*!40000 ALTER TABLE `tp_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_news`
--

DROP TABLE IF EXISTS `tp_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_news` (
  `ID` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Sid` int(6) DEFAULT '0' COMMENT '分类ID',
  `Uid` int(6) DEFAULT '0' COMMENT '用户ID',
  `Title` char(80) DEFAULT NULL COMMENT '标题',
  `Description` char(200) DEFAULT NULL COMMENT '描述',
  `Content` text COMMENT '内容',
  `Sortid` int(6) DEFAULT '0' COMMENT '排序ID',
  `View` int(6) DEFAULT '0' COMMENT '读阅数',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_news`
--

LOCK TABLES `tp_news` WRITE;
/*!40000 ALTER TABLE `tp_news` DISABLE KEYS */;
INSERT INTO `tp_news` VALUES (1,2,1,'“雪龙”号已开辟约1公里破冰跑道 将择机突围','成功完成对俄罗斯“绍卡利斯基院士”号被困52名乘客救援的雪龙船，受复杂海冰和水文气象条件等影响，目前仍受困于南纬66度39分、东经144度25分的密集浮冰区，部分浮冰厚达3米至4米，距离最近的清水区即开阔海域约21公里。','<p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">成功完成对俄罗斯“绍卡利斯基院士”号被困52名乘客救援的雪龙船，受复杂海冰和水文气象条件等影响，目前仍受困于南纬66度39分、东经144度25分的密集浮冰区，部分浮冰厚达3米至4米，距离最近的清水区即开阔海域约21公里。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">1\r\n月4日17时，记者通过与雪龙船前方连线获悉，船上补给物资充足，101名队员情绪稳定，身体健康，船舶设备安全。雪龙船在浮冰中开辟了长约1公里的“破\r\n冰跑道”，等待天气条件转变。1月6日和7日，该海域将有一股热带气旋经过，风向可能会由东南风变为西风，浮冰也会因此产生变化，雪龙船将选择有利时机尝\r\n试突围。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>被浮冰、冰脊包围，前方、右后方有冰山阻挡，海冰堆积很高，远超雪龙船破冰能力</strong></span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">目前，从雪龙船甲板往外望去，视野里全是白色冰雪，看不到水面。根据现场反馈回来的信息，雪龙船距离开阔海域最近约21公里，周围被密集海冰包围，包括大块浮冰和大面积冰脊，部分海冰厚度达3米—4米，前方、右后方各有冰山阻挡，海冰堆积很高，远超雪龙船1米的破冰能力。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">据\r\n雪龙船上大洋科学家矫玉田介绍，雪龙船周围冰山分别距离船几百米、1公里和两三公里不等，约7座左右。目前雪龙船左舷冰山相对稳定，右边冰山则随着冰流移\r\n动。正前方有一座小冰山，移动起来让人有看大片的感觉。为了避免船和冰山撞上，科考队正24小时监测冰山移动速度，使雪龙船和冰山保持一定距离。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">此\r\n前，为了实施救援，雪龙船第一次来到该陌生海域。在1月2日完成救援行动后，雪龙船准备离开浮冰区继续执行原计划科考任务，但由于复杂严重冰情和恶劣天气\r\n的影响，撤离受阻。之后由于气旋和海流影响，浮冰面积不断扩大，不断挤压、叠加和堆积，加上冰上还有浮雪，大大超出了雪龙船的破冰能力。同时周围还出现快\r\n速移动的冰山，对突围带来一定风险。雪龙船因此决定在原地等待，待分析预测未来天气和海冰变化情况后，再行突破冰区围困。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">雪龙船上的气象预报员于海鹏告诉记者，目前气象条件对破冰不利，浮冰堆积严重。1月3日有一个气旋靠近雪龙船并加大，浮冰堆积越发严重，对雪龙船造成不利影响，气旋目前正在发展，使浮冰堆积更加密集，浮冰之间的缝隙更小，增加了雪龙船破冰的难度。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">由于雪龙船此次受阻冰区，对我国第三十次南极考察原计划的大洋考察和航行任务产生了不可避免的影响。但考察队其他计划仍在按计划推进，目前南极中山站科考、格罗夫山考察和南极泰山站建设正有序推进，泰山站主体建筑结构框架搭建基本完成。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">目前，国家海洋局已成立雪龙船脱困应急工作领导小组，进一步研究部署脱困措施，全力组织雪龙船救援脱困工作。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>1月6日天气可能有转好趋势，目前雪龙船及国内各单位正研判信息，将根据冰情择机突围</strong></span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">矫玉田说，目前还算南极初夏，在南极大陆边缘的海域，有这种多年冰比较常见。由于雪龙船是第一次来到这个海域，对该海域情况不了解，这个地区的洋流有些不规则，考察队开展了海洋观测，采集海水、海冰流速、海冰密集度等数据作为参考。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">国\r\n家海洋局极地考察办公室主任曲探宙说，南极天气瞬息万变，1月6日天气可能有转好趋势，是雪龙船突围的机会。但这个时机非常短暂，需要雪龙船做好准备。雪\r\n龙船有160多米长，所谓船大难掉头，要从浮冰区突围，必须提前做好准备，比如调整船头方向，以及防止浮冰在船边堆积。目前船上食品、油料充裕，这方面没\r\n有困难和风险。难的是等待时机和捕捉时机，并提前考虑到不利因素，比如快速移动的冰山会给突围行动带来危险。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">目前，澳大利亚南极光号船已接上脱险人员撤离。由于南极光号破冰能力与雪龙船相当，协助破冰也很难达到救援效果，因此双方决定南极光号先行撤离。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">除\r\n了前方南极考察队积极组织船上气象、海冰观测、物理海洋、船舶航海等相关专业人员加强海冰、冰山变化等监测工作，搜集并分析附近气象、洋流、海冰等资料\r\n外，国内各个极地考察支撑单位也对相关信息进行研判。在了解是否有其他具有强大破冰能力的船只接近这个海域的同时，雪龙船目前主要依靠自身能力，根据冰情\r\n而动。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>对俄罗斯受困船救助体现国际主义精神，科考船 在南极冰区受困并不鲜见</strong></span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">科考船在南极冰区受困并不鲜见。\r\n专家介绍说，在南极大陆边缘的冰区，也曾经发生一些船舶被困的事例。2008年12月，我国第二十五次南极考察队乘坐雪龙船在冰区破冰一天只前进60米。\r\n最有名的可能要数俄罗斯“费德罗夫院士”号破冰船1991年在俄罗斯青年站附近海域被困，这艘破冰能力极强、迄今还是俄罗斯破冰船旗舰的船只被迫在南极冰\r\n区过了一个漫长的冬天。此次雪龙船受困，即便是在最极端的情况下，出现长期被困，也可以把人员接出来，船舶留在冰区越冬，船上燃料食品也足够支持少量留守\r\n的船员过冬，但这种情况将是百年不遇的。即使目前雪龙船无法靠自身脱困，随着南极盛夏到来，浮冰可能退开消散，给雪龙船“让出”水道来。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">曲探宙说，在南极，国际合作非常重要，履行国际主义和人道主义救助体现着责任和义务。一旦遇到别的船只遇险，要力所能及提供帮助。一般南极活动船只对南极的风险有充分估计，不会冒进。俄罗斯受困船所在海域虽然是雪龙船陌生的海域，但雪龙船接到求救后仍然迅速做出反应。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">据介绍，各国都会通报极地考察计划和船舶航行位置，澳大利亚搜救中心也会了解哪些船只在南极海域活动。国际海事组织给出遇险船只的求救信号，周围船舶都有责任和义务提供帮助。但南极情况比较特殊，其海域不是主航道，也不是所有的船都有破冰和救援能力。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">中\r\n国第三十次南极科考队副领队徐挺介绍说，当时雪龙船和澳大利亚南极光号船和法国星盘号船赶往俄罗斯遇险船受困地点，由于法国船破冰能力相对不足，中途返\r\n回。在救援行动中，各船当时也因为天气因素等了好几天，尽管浮冰逐渐出现不利的情况，但在仅有的相对可以的天气中，不能失去营救机会，雪龙船和南极光号仍\r\n坚持进行营救行动。雪龙船上的雪鹰号直升机最后成功运出52名人员，目前俄罗斯受困船上还留有22名船员，油料物资充足。雪鹰号直升机还送去30多公斤面\r\n条和其他食品。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,1,'2014-01-05 16:46:41'),(2,2,1,'把空气变成触摸屏？科幻场景已成现实','全息投影已经不是什么新鲜东西了，但如果是可以直接上手操控的空气触控投影技术，恐怕大多数人只在科幻电影里看过吧。','<p style=\"line-height: 1.75em;\"><span style=\"font-size: 14px;\">　　全息投影已经不是什么新鲜东西了，但如果是可以直接上手操控的空气触控投影技术，恐怕大多数人只在科幻电影里看过吧。<br/>　　但现在，这种未来科技感十足的玩意，其实已经离我们越来越近。<br/>　　俄罗斯Displair公司已经量产（他们曾在2013年CES上展示过）的Displair交互式空气投影系统，就已经有了空气显示+多点触控的雏形。</span></p><p style=\"line-height: 1.75em;\"><img src=\"http://d.hiphotos.baidu.com/news/w%3D638/sign=d9868a47b27eca8012053ae4a9229712/b8389b504fc2d562eea2fc89e51190ef76c66c2f.jpg\"/></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 14px;\">看起来是不是很酷，那么这套系统是怎么实现空气触控的呢？<br/>　　按照Displair创始人、俄罗斯设计师Max Kamanin的说法，这套系统有三个很关键的构成部分：第一部分是加湿器，第二部分是投影机，第三部分是红外摄像头。<br/>　　整个系统的运行方式，就是利用加湿器往上喷出一层薄薄的水蒸气，制造一个用于投影显示的屏幕，再将影像通过3D投影设备投射到这块屏幕上，最后利用类似于Kinect的手势识别技术，捕捉手部动作，完成实时多维操控。<br/>　　所以，这套系统实际上还没有真正达到用空气做显示背景的水平，而是利用了空气中的水雾作为影像显示介质。<br/>　　那为什么也敢叫空气触控屏呢？<br/>　　Kamanin解释说，因为加湿器喷出的水蒸气中，水滴极其微小，就像大气中的水滴一样，所以如果你用纸或者眼镜去测试一下，就会发现即使吸附了水滴，纸依旧是干燥的，眼镜片也不会出现水雾。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 14px;\">所以，这种显示技术也可以说是在空气中实现的。<br/>　　这也是为什么我称它是“雏形”的原因之一。除此之外，这套系统在显示技术方面还要解决如何让投影在空气屏幕上面图像足够清晰稳定的问题。<br/>　　这一点，Displair已经应用了两种技术来改善，一是让成像与背景实现高对比度的色彩校正技术，二是利用空气动力学原理形成的“屏幕外套”。但是从实际的演示效果来看，它还没有达到我们想象中的那个水准。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 14px;\">即使是现在的技术水准，以及每台上万美元的价格，也已经有很多企业对它感兴趣了。<br/>　　在美国，谷歌、可口可乐、百事可乐等大公司已经在用它展示自家的广告。<br/>　　如果在商场里突然看到这么个玩意，我想大多数人都会有上去玩几下的冲动。<br/>　　我相信，随着技术的发展，这玩意应该会在我们有生之年无限接近科幻片中的水平，并且走进普通人的生活中。<br/>　　到时候，我们要烦恼的，就是我们那台老掉牙的触控显示器该往哪里扔了。</span></p><p><br/></p>',0,1,'2014-01-05 16:48:00'),(3,2,1,'支付宝已不值得信任','支付宝昨天爆发了数据泄露丑闻，超过20g的支付数据资料被支付宝前员工从系统中窃取出去，并出售给第三方，后被媒体曝光。','<p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">支付宝昨天爆发了数据泄露丑闻，超过20g的支付数据资料被支付宝前员工从系统中窃取出去，并出售给第三方，后被媒体曝光。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">这已经不是支付宝第一次发生此类事件了，前期谷歌等搜索引擎在网上能搜索到数百万条支付宝用户信息的事情，在引发了一些关注后戛然而止，从此很少被提及，此次用户隐私数据丑闻在支付宝公关部的努力下，也很可能很快远离公众视野，消弭于无形。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">不过，丑闻毕竟是丑闻，还是要引起一些重视。尤其是，支付宝的用户数据包含大量用户隐私，如电话、地址、身份证\r\n号、购物习惯、账户余额等。如果这些资料被不法分子掌握，理论上他们可以用来实施很多犯罪行为，威胁到用户个人财务安全。但在记者时候的采访中，支付宝公\r\n关部认为这些数据并没有被传到网上，对社会不构成公共性危害。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">从一开始，支付宝就给这件事情定了调子，那就是对社会没危害，对用户数据安全没威胁，支付宝没做错。随后支付宝就此事在微博上发表的公开致歉，证实了这一点。那么，让我们分析一下高大上企业支付宝的这份声明，看看这到底是怎样一家企业吧。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">这份声明总共数百字，分为六个部分。以下为原文，括号里是我的评论。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第一部分：今天，我们关注到有媒体报道支付宝前员工李某的案件，在此向关心此事的广大用户做几点说明。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（注意了，这是个正常的开篇，但这短短几十个字能看出很多信息。首先，支付宝做这份声明的原因是注意到有媒体报\r\n道这件事了，做声明是为了在信息外泄后解释一下，而非为了提醒用户注意安全。其次，这个开篇中真正的主语是支付宝前员工李某的案件（不提隐私泄露）），说\r\n的是李某的问题，而非支付宝的问题。从开篇来看，支付宝铁了心要把这件事的责任推卸出去，这个开篇就是后面内容的基调。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第二部分：1、基于已有的数据安全体系，阿里巴巴廉正部在2012年例行内部审计时发现了前员工李某在数据处理上的不正当行为，并在调查后将李某移送公安机关进行侦办。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（首先强调这件事是阿里巴巴内部审计时调查出来的，是阿里巴巴主动报案拿人的，这是先把主动权抓在手里的姿态。\r\n其次，提到了李某因不正当行为被扭送公安机关，拜托，不正当行为是不归公安机关管的。既用不正当行为这个词来轻描淡写这件事情本身的性质，结果还要扭送公\r\n安机关，自相矛盾。洗地的性质和捡肥皂不一样，要注意姿态。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第三部分：2、据李某自述，其销售的数据为了，2010年之前不含密码，不含核心身份信息的部分非敏感交易内容，不涉及用户隐私及安全。同时，我们一直以来对于敏感数据如身份证信息、卡号、密码等全部采用先进加密技术处理，无论是在该事件之前还是之后，任何人都无法获取。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（强调这批泄露的数据不是敏感数据，强调是2010年前不包含密码的数据，强调支付宝的技术固若金汤，强调谁也\r\n得不到敏感数据。用好几个正面的强调，构成一个他们很不好意思说出来的事实，那就是数据已经泄露了，而且还抓了人。话说，如果这些泄露的数据无关紧要，为\r\n什么要抓人？公众有权知道这批信息泄露的程度，对用户信息安全到底有何种威胁。对于这些，支付宝只字未提，只是在强调他们有理，技术高大上等等，一贯的操\r\n作手法。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第四部分：3、对于李某的行为我们深感痛心，并对由此给用户带来的不安深表歉意！但我们对此类事件会一查到底绝不姑息。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（这部分道歉了，替李某道歉，并表明决心。对于支付宝在这一过程中要承担何种责任，则闪烁其词，让人不明白支付宝是为李某的行为向公众道歉，还是为了自己在这个过程中承担的责任向公众道歉。混淆重点的手法，我们领教很久，已成习惯。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第五部分：4、支付宝相关安全体系已经通过了包括国家信息安全测评中心、dci、dss等众多国内国际权威机构的检测认证，并设立了首席安全官体系以完善内部安全架构，确保用户信息的安全永远是我们至高无上的首要任务。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（这一段是广告，是要告诉人们支付宝的安全技术有多牛，他们对此做出了多大努力来维护用户信息安全等等。但他们还是没说清楚，支付宝在这个过程中到底该承担何种责任。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">第六部分：大数据时代，信息安全成为了所有互联网公司所面临的最严峻挑战之一，没有一家公司可以独善其身。如这\r\n篇报道所言，包括即时聊天工具的用户资料，酒店住客信息也已经成为数据盗取及贩卖的主要领域。因此，支付宝呼吁全行业的各个参与者一起行动起来，完善自身\r\n的同时更要共同斩断贩卖数据的黑色产业链，为数据的自由、安全流动贡献全部的力量！<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">（这一段结尾点题，扯到了大数据，即时通讯和酒店等的数据泄露。支付宝一家的事情，要把所有企业拉进来一起陪\r\n绑。这就像是小学生在课堂上看漫画被老师抓住了，被追问时说旁边的同学也看了，那边的同学还画漫画呢。对自己的问题避重就轻，东拉西扯的落脚点竟然是呼吁\r\n企业团结起来斩断数据贩卖的黑色产业链。这就像是小偷被抓住了之后，对自己的罪行只字不提，却大谈特谈起个人生存环境，社会公平正义，社会保障等议题。把\r\n微观问题扯到宏观上去，似乎可以减轻支付宝的过错，让人们不再关注这件事的本身。这个手法，过去阿里巴巴在历次公关危机中屡试不爽。）<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">我对这件事的看法：<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">支付宝的这份声明中，还有很多问题没有回答，也许他们根本就不想回答。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">首先，这名前支付宝员工在3年前就开始窃取支付数据，这是孤立行为还是普遍行为，支付宝那些通过了多重安全鉴定的内部管控机制到底能否起作用？<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">本次数据泄露事件是否如支付宝轻描淡写的那样，仅是违规操作行为，不涉及敏感信息。如果真是这样的话，为什么要动用公安机关抓人。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">支付宝在数据泄露事件中要承担什么责任？这么大一个公司，要对自己的行为负责，李某的职务身份是支付宝员工，履行的是公司职责，这个责任不能简单推给个人或是全社会就完事儿了。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">被交易的用户数据既然有交易价值，为何支付宝还要死硬抵赖说不涉及用户的敏感信息？什么算敏感信息？那些电商网站买去那些没有人名，没有ip地址、信用卡、身份证的信息回去是要做什么？真的没有敏感信息吗？<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">既然支付宝已说这些用来交易的用户信息并没有被传到网上，必然是已经弄清了数据流动的一切来龙去脉，为何不公布这些事实真相，并积极检讨自身，而是要努力推卸责任，并东拉西扯把别的企业牵扯进来？<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">结论<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">支付宝和阿里巴巴的关系大家都清楚，这两家公司的行事风格一脉相承，不管什么事情都是别人的错，社会的错，他们\r\n自己什么都没做错。支付宝的用户信息泄露事件不是第一次，表明其内部管控机制已失灵，就像筛子一样漏的到处都是。可关键问题是，支付宝在公开声明中的推卸\r\n责任、闪烁其词、东拉西扯、让人非常怀疑他们对待数据安全这个问题上的诚信。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一份没有任何歉意的致歉声明，把自己的责任推得干干净净，却反而还要指责别人的数据泄露事件，以洗白自身。支付\r\n宝已成为一家傲慢的公司，面对三番五次出出现的安全事故不知反省，调整内部安全防范机制，却积极动用公关力量去为自己涂脂抹粉。在支付宝的眼里，亿万用户\r\n的信息安全威胁，也比不上他们自己浮华的面子，支付宝未来必将为自己所做过的一切，付出代价。&nbsp;</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,0,'2014-01-05 16:50:11'),(4,2,1,'毛泽东时代的忠奸谱','一九七六年十月六日晚，时任中共中央主席的华国锋以召开政治局常委会讨论《毛泽东选集》第五卷清样的名义，逮捕了毛泽东的妻子江青和其同党王洪文、张春桥、姚文元等人，宣告长达二十七年的毛泽东时代的初步结束，自此，中国进入后毛泽东时代。','<p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一九七六年十月六日晚，时任中共中央主席的华国锋以召开政治局常委会讨论《</span><span style=\"font-size: 14px;\">毛泽东选集》第五卷</span><span style=\"font-size: 14px;\">清样的名义，逮捕了毛泽东的妻子</span><span style=\"font-size: 14px;\">江青</span><span style=\"font-size: 14px;\">和其同党</span><span style=\"font-size: 14px;\">王洪文</span><span style=\"font-size: 14px;\">、</span><span style=\"font-size: 14px;\">张春桥</span><span style=\"font-size: 14px;\">、</span><span style=\"font-size: 14px;\">姚文元</span><span style=\"font-size: 14px;\">等人，宣告长达二十七年的毛泽东时代的初步结束，自此，中国进入后毛泽东时代。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一九六七年七月，中共中央决定编辑出版《毛泽东选集》第五卷，</span><span style=\"font-size: 14px;\">中央文化革命小组</span><span style=\"font-size: 14px;\">理论组总理其事。两年后大功告成，毛泽东却不让出版，一直拖到一九七七年三月才问世。屡经调整终于定稿的这个版本，收集了毛泽东自一九四九年九月到一九五七年的重要著作。一九八二年停止发行。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">以中共中央毛泽东主席著作编辑出版委员会名义发布的出版说明称，“毛泽东同志关于在生产资料所有制的社会主义改\r\n造基本完成以后无产阶级和资产阶级、社会主义道路和资本主义道路的斗争还长期存在的科学论断，关于正确区分和处理社会主义社会中敌我矛盾和人民内部矛盾这\r\n两类不同性质的矛盾的学说，关于无产阶级专政下继续革命的伟大理论，关于社会主义建设总路线的基本思想，就是在这卷著作中首次提出的。”“毛泽东同志的思\r\n想和学说是永存的”。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">1977年7月1日，由“首钢工人理论组”编印的《毛泽东选集第五卷部分词语简释》，出版。这本“内部资料”对\r\n古今中外诸多人物进行褒贬，其评语很能传达那个时代的气息。这种简释是以毛泽东一人的是非为是非，毛赞誉之，毛厌贬之，爱憎极端分明。一个人物，不论是盖\r\n棺论定的历史人物，还是活在当下的现实人物，都被他们进行了政治裁定：好或者坏。他们以如此构筑的“忠奸”谱系，塞给读者一幅黑白分明的“世界观”。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">得到其正面评价的不多。比如：古代美女西施、王昭君、杨贵妃，曹操——政治家、军事家、诗人，诸葛亮——三国时期有作为的政治家、军事家，近代有林则徐——清末反对帝国主义的爱国政治家、鸦片战争时期的抗战派代表，孙中山——伟大的中国革命先行者。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">到了现当代，能得到好评的除了几个劳模外，计有如下人士：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">宣统皇帝溥仪——全国解放后，在战犯监狱经过劳动改造，思想发生了一些变化；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">投诚将领杜聿明、傅作义——热爱伟大领袖毛主席，热爱社会主义祖国，拥护中国共产党；卫立煌——1955年3月回到祖国，发表了《告台湾袍泽朋友书》，称赞祖国在毛主席和共产党领导下，突飞猛进，史无前例，希望在台湾的朋友及早醒悟，不要沉沦毁灭；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">有从海外返回大陆的翁文灏——一九四八年夏任伪行政院院长，不久辞职，寓居巴黎，于一九五一年回到祖国。积极参加社会主义建设，并在多次讲话中，希望留在台湾的旧同事激发爱国心，幡然醒悟，快速回到祖国怀抱；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">有艺人梅兰芳——在敌伪统治下蓄须明志，拒绝演出，坚持了民族气节，1959年加入中国共产党；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">有检举导师胡风的文化人舒芜——曾是胡风所经营的反党文艺小集团的主要成员之一，解放后，在党的教育下，初步认识和检查了过去的错误，在揭露胡风反革命集团的斗争中，写了《关于胡风反党集团的一些材料》；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">有亲共记者斯特朗——美国著名进步作家；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">有推翻埃及政府、反帝国主义和以色列犹太复国主义的纳赛尔。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">坏人亦是各色各样，安在他们头上的名号繁多有趣：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">孔夫子——没落奴隶主阶级的思想家、教育家，杀害革新派少正卯，周游列国宣传复辟奴隶制的主张，到处碰壁，推行“克己复礼”的反动政治纲领，梦想恢复西周奴隶社会的“礼治”，汉以后的历代统治者都把孔丘吹捧为“圣人”；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">老子——春秋末期没落奴隶主阶级的思想家，道家学派创始人，包含不少朴素的辩证法思想，但不懂得转化要有条件，不懂得斗争在转化中的作用，并把转化看成是简单的循环，其辩证法是消极的，保守的；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">武训——他背逆革命潮流，奴颜婢膝，乞讨咋骗，为封建统治者培养奴才；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">陈独秀——党内右倾机会主义路线头子，帝国主义、国民党反动派的走狗；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">王明——1925年混入党内，篡夺了党中央的领导权，疯狂推行“左”倾机会主义路线，在任长江局书记期间，无耻\r\n地吹捧蒋介石“雄才大略，力能胜任领导全国抗战”，反对党在统一战线中的独立自主原则，把抗日战争的领导权拱手送给了国民党，1956年，投靠苏修，恶毒\r\n攻击毛主席的革命路线和无产阶级文化大革命，成了十足的叛徒、卖国贼；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">胡适——五四运动中资产阶级右翼代表，反对在中国传播马克思列宁主义，鼓吹亲美路线，1948年逃往美国，后任台湾蒋帮“驻美大使”，国民党伪中央研究院院长，1962年在台湾病死；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">胡风——恶霸地主家庭出身，混进“左翼作家联盟”，从内部进行破坏活动，解放后隐瞒历史，伪装进步，继续进行反革命活动；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">丁玲——出身于破落地主家庭，混进党内，在南京自首叛变，充当国民党特务。在她主编的《解放日报》文艺副刊上，\r\n刊登托派分子王实味写的《野百合花》，对党和革命根据地进行恶毒的诽谤。一九五七年伙同冯雪峰、陈企霞等人，四处煽风点火，密谋策划，猖狂向党进攻，妄图\r\n篡改党的文艺路线，夺取党对文艺界的领导权。反右斗争中被定为右倾分子，开除出党；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">章伯钧——出身于反动的地主阶级，1957年和罗隆基结成同盟，疯狂向党向社会主义进攻，企图和我党轮流执政；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">费孝通——章罗同盟的骨干分子，留恋资产阶级“民主”，对党、对社会主义制度不满，被定为资产阶级右派分子，1959年摘掉帽子；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">章乃器——在抗战后期和解放战争时期，宣扬“军队国家化”，要共产党向国民党缴枪，解放后，一再强调民主党派要组织独立，政治自由，反对接受共产党的领导；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">梁漱溟——出身于官僚地主家庭，是个极端反动的地主资产阶级思想的代表人物，叫嚷“俄国共产党发明的道路”是“不通的路”，抗战胜利后，两次以“调人”身份到延安，要我党放弃武装斗争；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">潘汉年——叛徒、“CC派”中统特务，解放后窃取全国政协委员、上海市副市长等职，暗中从事反革命活动，1955年肃反运动中被查出后逮捕关押；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">罗斯福——执政期间，为了维护垄断资产阶级利益，摆脱国内的经济、政治危机，推行了所谓“新政”，用“民主”“自由”蒙蔽人民，阻碍革命运动的发展；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">铁托——“二战”胜利后逐步走上民族主义、修正主义道路，大肆攻击斯大林和所谓“斯大林主义”，攻击马克思列宁主义，丑化社会主义制度；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">康德——唯心主义先验论者，不可知论者，有自发的唯物主义倾向，但又害怕革命，反对群众斗争；</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">……</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一九五三年九月，在中共召开的中央人民政府委员会第二十七次会议上，毛泽东当着政府官员和列席会议的政协委员的\r\n面，指着梁漱溟骂道：“讲老实话，蒋介石是用枪杆子杀人，梁漱溟是用笔杆子杀人。杀人有两种，一种是用枪杆子杀人，一种是用笔杆子杀人，伪装得最巧妙，杀\r\n人不见血的，是用笔杀人。你就是这样一个杀人犯。”</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,0,'2014-01-05 16:51:50'),(5,2,1,'中国为何拍不出优秀的恐怖片？','图片是迪斯尼电影《小鹿斑比》（1942）的海报。《时代周刊》曾在2007年评选出电影史上最恐怖的25部影片，将《小鹿斑比》列入其中。《时代周刊》认为：斑比母亲猝死的情节，给小孩的恐怖刺激非常大。','<p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">图片是迪斯尼电影《小鹿斑比》（1942）的海报。《时代周刊》曾在2007年评选出电影史上最恐怖的25部影片，将《小鹿斑比》列入其中。《时代周刊》认为：斑比母亲猝死的情节，给小孩的恐怖刺激非常大。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">在中国所有类型片中，恐怖片是最受电影审查荼毒的类型。从根源上就断绝了中国有优秀恐怖片的可能性。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">1、中国电影审查制度严重制约了电影创作；</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">中国只要是类型片都深受其害。但如果非要在一堆灾民里挑那个最惨的，我觉得还是恐怖片是最无争议的。犯罪题材、\r\n灾难片什么的，好歹都还可以杂糅其他类型稍微淡化一下，只有恐怖片是最单纯的，你没法搞诸如恐怖喜剧，恐怖爱情，恐怖浪漫什么的类型混搭。其他类型都勉强\r\n有曲径通幽之途，恐怖片是妥妥地只能死磕。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">国内的电影审查制度没有一个明确的标准，尺度极其模糊，创作者完全无法掌握和量化。有人说希望举个例子，那我就\r\n讲个真实的惨剧（此片和我没关系，只是听说的真实故事，片名自然不能说），某片本来都拿龙标了，又被追毙了。理由是：片中死人太多了！尼玛这是一部恐怖片\r\n好不好！片中连带路人甲乙丙总共死了十来个角色，还基本都不是中国人！恐怖片啊！恐、怖、片、啊！！！死人太多居然也是理由！！！</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">作为对比，英国电影中好像有明确规定，某个级别的电影中不能有注射器的针头刺入皮肤的特写镜头。那么按照这种可\r\n以事前掌握并且量化的标准，导演在拍摄时起码可以有个备案选择，在后期剪辑时也可以有不同版本的选择。而国内的标准则完全是照死里搞的路子，等审查时才告\r\n诉你哪个哪个镜头不能用，导演哭死都没用。除非你能把演员找来再补拍一遍。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">2、生产经验</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">作为类型片的一种，优秀恐怖片需要有丰富的制作经验才能完成。所谓制作经验，就是基于上面谈到的制约而形成的默契。任何国家的电影都多少会受到非市场因素的制约，但这种制约如果能够公开化、制度化和常态化，那么也能够对类型片的创作起到一定程度的帮助。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">欧美地区的惊悚片、恐怖片其实也有很多约定俗成的规则不能被轻易打破，只要这种规则是观众和创作者之间的默契，\r\n那么遵守规则或者打破规则，都能给创作者带来创作自由。但在国内环境下，创作者在一团迷雾之中瞎摸索，很难积累出有效的制作经验，最后出来的必然不是《三\r\n岔口》而成了《十八摸》。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">3、观众消费需求</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">因为观众一直在吃屎——这个不能怪观众啊，他们没得选啊，——结果就造成一个假象：似乎观众什么样的屎都能吃，而且还砸吧嘴。在这样的消费基础上，生产方也没动力改进技巧。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">值得欣慰的是，这种情况正在得到改善。因为“观众”是需要逐步培养的，当越来越多的年轻观众开始形成电影消费习惯，他们必然会对产品质量有越来越高的要求。同时，市场上提供的其他类型选择也会越来越多，如果恐怖片作为一种类型不提高质量，就会面临被驱逐出市场的命运。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">4、恶性循环</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">因为绝大多数恐怖片拍的太屎，再被审查轮一遍，观众也不耐烦老吃这种东西，票房自然也不高。于是生产方也没心气\r\n改进技巧，增加成本投入。但是呢，恐怖片作为一种低成本但市场需求相对固定的类型片，肯定还有会人前仆后继地往里头跳。但是如果源头的问题不解决，这个坑\r\n里死多少片子都填不满。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">于是只能从1再开始一遍。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,2,'2014-01-05 16:52:34'),(6,2,1,'苏轼在黄州，如何变成月亮、云与流水','嘉佑二年，苏轼去考试，考场作文，论用政宽简——顺便说句，这好比让如今的高考生，写国家刑法实施问题——苏轼临场杜撰 了个帝尧和皋陶的典故。考官梅圣俞看卷子时，觉得这典故似模似样，但自己没听过，有些犯愣，不敢擅断，怕显得自己没读过书。考试后，梅圣俞问苏轼：这典故 出于何书？','<p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">嘉佑二年，苏轼去考试，考场作文，论用政宽简——顺便说句，这好比让如今的高考生，写国家刑法实施问题——苏轼临场杜撰\r\n了个帝尧和皋陶的典故。考官梅圣俞看卷子时，觉得这典故似模似样，但自己没听过，有些犯愣，不敢擅断，怕显得自己没读过书。考试后，梅圣俞问苏轼：这典故\r\n出于何书？苏轼承认是编的，然后补了句“帝尧之圣德，此言亦意料中事耳！”——你看，这就是仗着才学，地道耍无赖啦。这好比我在高考写作文时，肆无忌惮来\r\n一个“马克思曾经说过，甜豆花才是豆花正宗！”《红楼梦》里，出过类似的公安：贾宝玉见林妹妹时，说西方有石名黛，可用来画眉，被探春批出是杜撰。当时宝\r\n玉也学苏轼一撒娇：除了《四书》之外，杜撰的别太多呢。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼初到黄州时住过临桌亭：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“临桌亭下十数步，便是大江，其半是峨眉雪水。吾饮食沐浴皆取焉，何必归乡哉？”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">林黛玉后来说过，“这王十朋也不通得很了，天下水总归一源”，云云，宝玉听了发痴。林姑娘这话，和苏轼也有点相似。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">宝玉的为人，贾雨村和冷子兴聊，所谓“置之千万人之中，其聪俊灵秀之气，则在千万人之上；其乖僻邪谬不近人情之\r\n态，又在千万人之下。”而宝黛其实算一路。当时举例道：“陶潜、米南宫、 \r\n秦少游”，陶渊明算苏轼的偶像，米、秦这俩其实和苏轼都算投契。所以，苏轼其实也是这等聪俊灵秀风流人物——当然，乖僻邪谬就少得多了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">杨万里《诚斋诗话》记个段子：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">徽宗尝问米某：“苏轼书如何？”对曰：“画。”“黄庭坚书如何？”曰：“描。”“卿书如何？”曰：“刷。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">吴可《藏海诗话》记个段子：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">东坡豪，山谷奇，二者有馀，而於渊明则为不足，所以皆慕之。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">如果按诗与字通意的话，苏轼字肥而尚意挥洒，黄山谷如描而出奇致拔，各有所长。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼的字肥，被人说是墨猪，但赵孟頫也夸过他“余观此帖潇洒纵横，虽肥而无墨猪之状。外柔内刚，真所谓绵里裹铁也。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">还是吴可的纪录：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">东坡诗不无精粗，当汰之。叶集之云：“不可。於其不齐不整中时见妙处为佳。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">又，人都认为苏轼不善音律，但陆游认为：苏轼“但豪放不喜剪裁以就声律耳。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">说到底，苏轼自在惯了，讨厌约束，是个喜欢不齐不整自然而然的悠游劲儿。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼以前一直是聪明人，写各种论商君、论留侯什么的散文，写“春宵一刻值千金”这样的“流丽诗”（杨万里说\r\n的）。而且还爱讲冷笑话拿人家打趣（这毛病至死不变）。欧阳修早在苏轼中榜后，就认定他迟早要名动天下的。但因为苏轼太聪明，所以爱出事。冯梦龙写过《王\r\n荆公三难苏学士》，说苏轼不知道黄州风吹花瓣落，擅改王安石“昨夜西风过园林，吹落黄花满地金”之句，结果被王安石一笔流配黄州。这与大多数以苏轼为主角\r\n的民间故事类似：无非讲苏轼“过于聪明”，终于吃了一个教训，以告诫世人聪明不可过于外露等等。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">但其实，苏轼到黄州时，也不是年少气盛时节了：那时他44岁，长子苏迈已21岁。父亲苏洵于十四年前过世，众口传诵的“十年生死两茫茫”已在五年前写出。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">最明显的是，38岁时，他写了《密州出猎》，那时他“老夫犹发少年狂”，“鬓微霜，又何妨？”38岁，头发有些白，但还琢磨着“何日遣冯唐”。而到44岁，他已经“平生文字为吾累，此去声名不厌低。”已经“我为聪明误一生”了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">他初到黄州，住在定惠院，就是“寂寞沙洲冷”那地方。那阙词极凄婉，可见其心情。后来常去安国寺，尤其去那洗澡，那里有个建连和尚，对他说了“知足不辱，知止不殆”。那时他开始正经修点儿禅了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">在黄州开了“东坡”，开始种地后，苏轼开始陶渊明化。黄庭坚说：“渊明千载人，东坡百世士。出处固不同，风味要相似。”苏轼自己写“愧此稚川翁，千载与我俱。画我与渊明，可作三士图。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">顺聊下禅宗。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">铃木大拙先生认为，禅宗的好处是神秘主义和包容性。所以儒、道都对禅宗不反感。苏轼在黄州和和尚们交接，修了禅，但不排斥他的儒和道精神。以前南朝诗人，比如竟陵文学一党，都爱佛，所以钟嵘《诗品》里提南朝那几位，大多都是“清”。苏轼也“清”，但他不遗世独立。所以：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“凡圣无异居，清浊共此世”。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼在黄州后期，写前后赤壁赋，写《念奴娇》，写《夜游承天寺》，写“归去，也无风雨也无晴”。锋芒毕露的聪明\r\n劲削了，变清澈了，但没什么颓丧气。写临桌亭时“江水风月本无常主，闲者便是主人”，其实和《前赤壁赋》的“唯山间之清风江上之明月此造物者之无尽藏也而\r\n吾与子所共适”是差不多的风味了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">到此地步，他有些像陶渊明，但没离群索居；还保留着聪明劲，但自然而然；挺欢乐，挺自嘲，挺甜美，风风流流，清清澈澈，随心所欲。所以苏辙认为他哥哥黄州之后的文，“余皆不能追逐”。打个比方，严子陵还是“山高水长”，苏轼那时已经飘远了。“云无心而出岫”了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">于是在临桌亭，他来了句：“东坡居士酒醉饭饱，倚于几上，白云左绕，青江右回，重门洞开，林峦岔入。当是时，若有思而无所思，以受万物之备。惭愧，惭愧。”是欣慰加自嘲的口吻。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼开了东坡，亲自务农。黄州城东，山坡上开三间房，置十余亩地。给孔平仲写诗说：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“去年东坡拾瓦砾，自种黄桑三百尺。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">今年对草盖雪堂，日炙风吹面如墨。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">拣瓦砾，种树，盖房子，脸吹晒黑了。东坡二字，从此跟死了他。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">他刚去黄州时穷得要命。为了斩断自己购物的手，每月初拿四千五百钱，分三十份挂房梁，每天不敢超过百五十钱。要用时以画叉挑取一块。于是：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“从来破釜跃江鱼，只有清诗嘲饭颗”。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“小屋如渔舟，潆潆水云里。空庖煮寒菜，破灶烧湿苇。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“送行无酒亦无钱，劝尔一杯菩萨泉。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">他开始钻研东坡肉，一半原因也是黄州的猪肉“价贱如泥土”。所以“富者不肯吃，贫者不解煮”。他就开始琢磨吃\r\n肉。主要花招还是耐心水煮，火候足时他自美。估计让他娶到《金瓶梅》里的宋蕙莲来煮猪头，一定拍手大笑。此人嗜猪肉过头，每天早饭都要吃猪肉漱口。真油腻\r\n也。杭州虽然有东坡肉做各馆名菜，本源实在黄州。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">我私人的揣测：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">黄州远不如陶渊明的桃源胜境美好，但半封闭，有山树，临江，气候湿润。简单说，有水气。苏轼的文章、诗画淋漓水气，在这里没断绝过。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">苏轼于诸子百家无一不窥，是为真才子。但去黄州前，还有点儒家气。写《晁错论》时还说：“古之立大事者，不惟有超世之才，亦必有坚韧不拔之志。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">可是他性格和他爷爷苏序类似，热情豪迈，写东西行云流水。这性子本身是箍不住的，到黄州，于是便水气飘散了。开始修禅，修道。他去安国寺洗澡，写：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“岂惟忘净秽，兼以洗荣辱。默归毋多谈，此理观要熟。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">去黄州那年中秋，他写词，开头就是：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“世事一场大梦，人生几度新凉。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">说他那几首词与文。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">这词妙处极多，但有黄州特色的是：“大江东去”开门，“淘尽英雄”、“江山如画”的俯仰天地之后，飘然一收，收\r\n到了末尾的“故国神游，多情应笑我”。这清空萧散的一收，是苏轼与以往决定性的不同。不是“会当雕弓如满月，西北望，射天狼”那个密州苏轼了。如是，词前\r\n大半部分呈现出一种高亢清越、开阔雄浑，这是苏轼的豪放与才情所决定；但末尾感伤、沉郁又不失旷达蕴籍，以及贯穿全词的高远气象，这种能发而复能收的自\r\n如，大可以说，是在黄州的两年经历带给苏轼的。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">妙的也是后半部分。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">如果只到“托遗响于悲风”为止，则此篇境界，还只是“高古”。全文精髓，乃在“苏子曰”到结尾。《前赤壁赋》的\r\n后半部分，境界达到了苏轼文章的新高度：“盖将自其变者而观之，则天地曾不能以一瞬；自其不变者而观之，则物与我皆无尽也，而又何羡乎？”这一段，有超脱\r\n凡俗，上抵宇宙的玄思；而“是造物者之无尽藏也，而吾与子之所共适”则是当初“江水风月本无常主，闲者便是主人”的后续。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">话说，后半部分苏轼所表达的，正是他在黄州游走于佛道、赋性自然而达到的天人合一的精神结果。乐天知命，从心所欲，羚羊挂角无迹可寻，到此至矣尽矣。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">赤壁三首有个很神的共同点：每到结尾，都会超然拔出虚空，自己跟自己玩。开句玩笑话就是：苏轼写东西，很容易到后来漫天飞扬，捕抓不住。《念奴娇》是“故国神游，多情应笑我”，前赤壁是半夜里自说自话，后赤壁是遇到个鹤道人。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“元丰六年十月十二日，夜，解衣欲睡，月色入户，欣然起行。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">质朴得像一小学生日记体，时间地点人物动机。妙在“月色入户，欣然起行”，开始风雅了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“念无与为乐者，遂至承天寺寻张怀民。怀民亦未寝，相与步于中庭。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">和《古诗十九首》一样的秉烛夜游劲儿，又有点王献之所谓“兴起、兴尽”雪夜访戴的事情。张怀民亦与之灵犀暗通，于是俩大老爷们一起散步去。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“庭下如积水空明，水中藻荇交横，盖竹柏影也。何夜无月？何处无竹柏？但少闲人如吾两人者耳。”</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">经典禅意比喻句不须提。然而和赤壁三首一样，把月亮和积水空明一比，又进入赤壁三首末尾那种清空浮游之意，也顺便成全苏轼自己所谓“行于所当行，止于不可不止”的味道。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">若留意一下苏轼的心路变化，很是有趣：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">刚去黄州时，凄凉得很：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">缺月挂疏桐，漏断人初静。时见幽人独往来，缥缈孤鸿影。　</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">惊起却回头，有恨无人省。拣尽寒枝不肯栖，寂寞沙洲冷。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">住了段后，写道：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">夜饮东坡醒复醉，归来仿佛三更。家童鼻息已雷鸣。敲门都不应，倚杖听江声。　</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">长恨此身非我有，何时忘却营营！夜阑风静縠纹平。小舟从此逝，江海寄余生。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">下半段，他又是一个人倚杖听江声，独自琢磨，想就此江海寄余生算了。这时，他的自嘲萧散随意劲儿，已经蓬勃而起。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">又住了段，他开始畅快了：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">落日绣帘卷，亭下水连空。知君为我新作，窗户湿青红。长记平山堂上，欹枕江南烟雨，杳杳没孤鸿。认得醉翁语，山色有无中。　</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一千顷，都镜净，倒碧峰。忽然浪起掀舞，一叶白头翁。堪笑兰台公子，未解庄生天籁，刚道有雌雄。一点浩然气，千里快哉风。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">这时候，苏轼已经觉得，有了浩然气就无所谓了，纵横往来，风流倜傥。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">终于，他写出了以下句子：</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕，一蓑烟雨任平生。　</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">著名的摆造型词。此词前有注曰：“三月七日，沙湖道中遇雨，雨具先去，同行皆狼狈。余独不觉，已而遂晴，故作此词。”三月，即《前赤壁赋》动笔前四个月。姿态也差不多，“何妨”、“谁怕”、“任”。都出来了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">再之后，赤壁三首和承天寺，已经进入云水风月，“造物者之无尽藏也”的境界了。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">冯班有个好比喻，说，字如米，文如饭，诗如酒。我按此推论比方，则苏轼去黄州前，是清冽浓香；到黄州后，变澄澈了，清可见底，有些玄酒化，但后劲超逸至醇，大致如此。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">王国维先生说比宋词于唐诗，苏轼犹如太白。他们俩都是开放、潇洒、豪迈、爱酒、爱世间一切美好事物、高高兴兴不\r\n爱受拘束的人，末了，他们都是四川人。余光中写黄河归了李白（将进酒），长江归了苏轼（念奴娇）。川中山水灵秀，端的天下无双。李白爱和神仙妖怪诸位先贤\r\n外加月亮云海流水打交道，苏轼到赤壁期间也进入这境界。只是他们都不清寒。苏轼自己说上可以陪神仙，下可以陪百姓，李白亦然。他俩都是随心所欲，不用特意\r\n摆架子，去哪都行的可爱人儿。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,1,'2014-01-05 16:53:25'),(7,2,1,'京东：《我是歌手》背后的“大玩主”','岁末交替之时，有《天下网商》的编辑问我对2014年电商趋势的判断，我罗列了几条，其中有一条这样写道：电商平台的生态构建将呈现差异化分野。','<p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">岁末交替之时，有《天下网商》的编辑问我对2014年电商趋势的判断，我罗列了几条，其中有一条这样写道：电商平台的生态构建将呈现差异化分野。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">这一判断主要指向京东，在类商业地产模式与采买模式的长期较量中，京东大势已成，这必然会带来完全不同于阿里系的新玩法。<br style=\"text-indent: 2em; text-align: left;\"/></span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">京东有两位高管的表现值得你去关注。一位是京东副总裁兼开放平台总经理Kate，她在去年6月撰写了檄文《二选一，这条通往奴役之路，你走么？》，后又在年底发文《伟大的试错将指引我们走向成功》，前后对比，不难发现京东POP生态已从“有硬气”转为“有底气”。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">另一位就是负责营销创新的京东集团高级副总裁徐雷，其能力与气质颇为适合一个词“北京顽主”。这是老北京话，抛开原有的褒贬意味不论，“顽主”其实透着一种精气神：将正事玩好，且玩出花来。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">此次京东选择与新赛季《我是歌手》展开营销合作，算是一个例证。它将PC、移动端以及电视等进行多屏整合引爆，让无数在电视前的用户玩起了手机摇一摇。尽管这只是小试牛刀地玩，但透过这次电商营销战的2014第一枪，多少能够窥见京东在营销战略与玩法上的一些转变。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>1.玩出来的互动与效果量化。</strong>麦格尼格尔在著作《游戏改变世界》中称，“游\r\n戏将是21世纪的思维和领导方式，它不再只是为了消遣，而是真正变革的方式”。再来看看电商们对影视娱乐节目的植入，大部分还是“纯露脸”方式，但如何才\r\n能互动起来，如何将营销效果量化，能有多少人变成网购用户？没有人可以回答出来，这是一个待解的难题。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">京东找到了APP上的“喜摇摇”功能作为了突破点。这是一种适合场景化的游戏设计，用户可以边看电视边摇手机，\r\n每人有三次摇奖机会，京东会送出2元、7元、77元、2014元等面额的京券，以及《我是歌手》门票等奖品。这不再是刷脸式的硬性植入，而是组织了一场链\r\n接线下娱乐与电商世界的大型互动游戏，双屏乃至多屏互动实现真正的落地。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>2.人无我有，制造短期内难以模仿的引爆点。</strong>如何在电商营销大战的红海中突围？京东的营销策略就是策划一些只有京东能做的玩法，别人想跟进都很难。比如，去年双十一徐雷策划了“双十一怎能用慢递”的广告创意，直逼阿里的配送瓶颈，而圣诞节期间他又策划了一场Cosplay秀，将2000多个配送员打扮成了圣诞老人。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">这次京东摸索出《我是歌手》与APP联动的方式，其实是抢先制造了一种引爆点的玩法，别人跟进也只能是模仿。实际上，京东的无线端APP已在开始研发一些别人没有的新颖设计，比如在“秒杀”功能中为商品设计一个小闹钟，在秒杀时间快到的时候提醒用户下单。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">不久前，海外学习归来的刘强东在面见媒体时称，在移动和大数据上要有所突破，关键是建立创新研发的机制，比如建\r\n立一些新的小组、虚拟项目甚至是子公司来推进。京东与《我是歌手》的合作算是一次试水，为了配合新的营销推广方式，京东的无线产品部门专门做了一次系统改\r\n变与升级，将原先的“摇一摇””功能做了大幅改进。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\"><strong>3.“主食”与“甜品”搭配吃，京东营销的体系化架构已经成型。</strong>目前，京东\r\n的营销分成了两块：一是运营类的营销资源运作，比如正在推进中的DSP广告平台“JD商务舱项目”，主要基于效果与数据，提升流量生态的效率，这是“主\r\n食”；另一类就是“甜品”，以项目制的方式保持对外部市场的刺激，使得用户对京东品牌有着生动鲜活的认知，比如京东赞助了中超做体育营销，还切入了《男人\r\n帮》、《爱情公寓》、《我是歌手》等影视营销市场。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">“像京东这么大体量的互联网电商公司，已经不是单靠一个点子或者一个创意去开拓市场，它一定是成体系的。”徐雷称，现在京东营销的每一次出手比如与《我是歌手》的合作，只是实现京东在某一个时间节点的营销价值，而不是长期或唯一的营销方式。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">为了放大《我是歌手》的营销效果，京东买下了各大APP应用市场每周五晚八点到十点的首焦位置，但它只买这两个\r\n小时，以此确保ROI效果。同时，京东还与乐视网签订了深度合作，后者是《我是歌手》的独家网络直播平台，它在PC端、PAD端、PHONE端的暂停页面\r\n都是京东的广告；此外，京东还会从自己拿到的三支广告片插口里，专门拿出一个与其他赞助商合作，其创意为将立白、蒙牛、美的、自然堂等品牌的产品放在一\r\n起，标注“以上所有商品齐聚京东有售”。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">如此一来，京东无需在硬性推广自己是做什么的、卖什么的，通过其他品牌证言的方式，即可让用户有最直接的感知。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">实际上，这些都只是京东庞大营销体系的一个个价值节点，当它们运作起来，其实有一条逻辑主线：打造差异化的京东营销新生态，以体系内运营与外部项目制操作相结合，不再以强推硬广的方式介绍京东是什么，京东卖什么，而是更为灵活的方式，获得用户的直观感知与情感认同。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">下附京东“我摇故我在”的营销创意，博君一笑。</span></p><p style=\"line-height: 1.75em;\"><span style=\"font-size: 14px;\"><br style=\"text-indent: 2em; text-align: left;\"/></span></p>',0,1,'2014-01-05 16:54:42'),(8,2,1,'李泰祥大师千古：世间已无“民歌魂”','李泰祥大师终于没能战胜病魔，留下了《橄榄树》、《走在雨中》、《告别》等经典作品和更多不太为内地听众所熟知的杰作， 撒手人寰。先生的离去，除了让人感慨世态炎凉','<p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">李泰祥大师终于没能战胜病魔，留下了《橄榄树》、《走在雨中》、《告别》等经典作品和更多不太为内地听众所熟知的杰作，\r\n撒手人寰。先生的离去，除了让人感慨世态炎凉——一位泰斗级人物竟然曾因拖欠医药费不得不求助两岸歌迷，更让人叹息当年的民歌精神如今已无处可寻。陈志远\r\n和李泰祥两位大师的先后离世，让我们不得不正视这样一个事实：世间已无“民歌魂”。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">那个用情怀创作的年代</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">“我决心要从严肃的音乐工作岗位走入群众，写出有风格，能表现我们现在大众生活最动人、精致的感情，写出众人的欢喜悲乐，和对时代的感觉，并融和文学，透过大众歌曲的形式，带给群众，走进生活。”</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">李泰祥先生的这段话基本上可以代表台湾民歌时代创作者们的心声。在那场轰轰烈烈的运动中，从杨弦的《中国现代民\r\n歌集》（1975）开始，到群星演唱的《明天会更好》（1985）为止，十年时间里，胡德夫、李双泽、李建复、李寿全、李泰祥等音乐人前赴后继地推动着民\r\n间音乐创作至上而下的一次大变革，让阳春白雪的国语歌曲创作趋向于世俗化和生活化。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">这场运动的主力是诗人、是知识分子、是李泰祥这样具有专业音乐素养的创作者，诗和歌的水乳交融，是大家共同的奋\r\n斗目标。于是，整个民歌时代就不免会沉浸于强烈的浪漫主义情怀之中，“情怀”真正成为创作核心价值。李泰祥作曲，三毛作词的《橄榄树》无疑是最典型的代\r\n表。还有李泰祥因为疼惜歌词而重新创作《告别》也成为一段佳话。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">其实，李泰祥更大的成就并不是在流行音乐创作上，而是在把民族音乐、前卫音乐和古典音乐的融会贯通上，这样一个音乐家来创作流行音乐，必然是小试牛刀而已。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">尽管是精英主导，但“民歌运动”却慢慢渗透到了普罗大众中，这才为后来台湾流行音乐工业的蓬勃发展打下了坚实的基础。但正因为有情怀挂帅，这个基础才会打得格外坚实，并由李宗盛等把恩泽带到了现在。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">世间已无“民歌魂”</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">台湾“民歌时代”所谓“民歌”，并不是通常意义的“民歌”（民族歌曲），而更像是内地常说的“通俗歌曲”，也就是基于当下生活的民间创作。而此处所谓“民歌魂”，就是生活中的浪漫主义，就是诗和远方。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">八十年代初的台湾，处于解严的边缘，各种社会思潮风起云涌，高速发展的经济，让民众丰衣足食之后开始想入非非。\r\n有人选择自我放逐（如三毛），有人选择批判社会（如罗大佑），有人则选择实现个人抱负。（如把杂志变成唱片公司的段氏兄弟）……这一切，都是不安于室的心\r\n理作祟，也都同样左右了流行文化的发展。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">相比于当下的音乐创作者而言，“民歌时代”的人无疑要浪漫得多、要有情怀得多。因为他们是开创者，他们没有那么\r\n多商业的包袱，他们可以按自己的想法去构筑未来。当然，还有一个原因是，他们大都是文艺圈里的精英，或是象牙塔里的活跃分子，他们是生活在诗里的，他们有\r\n足够的能力去完成自己的梦想。当他们把这些能力放到流行音乐的创作上，作品的起点自然就会高很多。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">就算是小虎队和林志颖这样的青春偶像也不例外。他们背后的创作主脑，如陈大力、陈秀男、陈志远和李子恒，都是民歌时代过来的，他们的作品里都多多少少残留着那个时代的情怀——把当下偶像歌手唱的歌跟《骊歌》（小虎队）或《牵挂你的我》（林志颖）对比一下就高下立判了。</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">话说回来，每个时代有自己的表达方式，当下的互联网语境下，已不可能再寻回曾经的“民歌魂”，只要是用心创作便足以告慰大师了。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,0,'2014-01-05 16:55:54'),(9,2,1,'当前一步：谈华为、海尔的互联网化','“回到商业的本质：有人提供产品或服务，有人使用。因此，简单来说，商业可以简单分为两大环节：创造价值和传递价值。先 说传递价值。传递价值可以解构为今天广受认同的三个流：信息流、资金流、物流。互联网首先攻占的，就是通过自身的效率，缩短或者重构“传递价值”的商业价 值链','<p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">“回到商业的本质：有人提供产品或服务，有人使用。因此，简单来说，商业可以简单分为两大环节：创造价值和传递价值。先\r\n说传递价值。传递价值可以解构为今天广受认同的三个流：信息流、资金流、物流。互联网首先攻占的，就是通过自身的效率，缩短或者重构“传递价值”的商业价\r\n值链 ... \r\n信息流，资金流和物流本质上大部分是传递价值，而以往这些渠道分走的利润，在今天的效率来说，是过高了。当传递价值被重构之后，互联网将真正地进军传统产\r\n业，重构商业的源头：创造价值端。”</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">摘自华为2013年12月30日《用趋势赢未来，数字化重构新商业》：</span></p><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">http://www.c114.net/news/126/a814524.html</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">“商业过程纷繁复杂，概括起来包括价值创造和价值传递两大环节。在价值传递环节，主要是我们常说的信息\r\n流、资金流和物流，而电子商务的蓬勃发展，则打通了物流、信息流和资金流。互联网已经全面渗透并改造了价值传递环节，实现了数字世界和物理世界的融合，减\r\n少甚至消灭了中间环节，重构了商业链条。当前，互联网开始向价值创造环节进行渗透，特别是向产品研发和制造等领域渗透。”</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">当华为的公关部看到这一段的时候，不用担心，我不是来收版权费的。我非常高兴，华为这样大型的民族企\r\n业，能够深刻地认识到“互联网化”对传统产业的影响。这是非常令人尊敬的。同样令人尊敬的，还有海尔。也是同样看完我的文章后，海尔集团战略部邀请我去了\r\n一趟青岛，在集团董事局大楼里，与集团领导，作了整整一天的闭门交流。我分享了非常多如何从传统企业角度看待互联网的方法，而不是如何站在互联网的角度看\r\n待传统企业。同时，我也在海尔看到了张瑞敏先生对“互联网化”的巨大的决心。更多内容属于商业机密，不便分享。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">华为、海尔，都非常令人尊敬。他们“从不回头欣赏自己的脚印”，一路向前。下面的问题，不是分析过去的一百步，不是展望未来的一万步，而是走好当前一步。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">当前一步，从传递价值，到创造价值的一步，该如何走？“互联网化”用“Internet-”的方式，消\r\n灭、或者极大缩短了“传递价值”的方式：信息流、资金流、物流，现在开始用“Internet+”的方式，使能、或者极大丰富“创造价值”的方式。在互联\r\n网的帮助下，用户前所未有的真正参与，让企业终于可以创造前所未有的满足用户需求的价值。我把这个进程分为三个阶段：</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">1、从“假想用户”的需求出发<br style=\"text-indent: 2em; text-align: left;\"/>任何一个时代，生产者都会明白，产品是用来满足需求的。但问题是，生产者无法接触到真正的用户。所以，他们通常只能揣测用户的需求，或者通过了解周围的小部分用户，假想大部分用户的需求。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">2、从“泛指用户”的需求出发<br style=\"text-indent: 2em; text-align: left;\"/>电话、电视、广播、短信等手\r\n段的普及，让准确的用户需求调查成为可能。很多公司在生产之前都懂得要先对市场做调研，了解用户需求。但是，调查的用户未必就是将来的购买用户。调查公司\r\n用一套数学方法，推断泛指的用户需求是什么，作为生产的依据。生产者、服务者已经离用户，或者说“泛指用户”接近了。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">3、从“个体用户”的需求出发<br style=\"text-indent: 2em; text-align: left;\"/>互联网时代的来临，让生产者\r\n和服务者接触每一个直接的最终的消费者变为了可能。你了解的这个个体用户的需求，就是将来要购买的真实需求。你不需要通过对他的需求判断，推及别人。你就\r\n生产一个他想要的东西就好了。每个人想要的都不一样，或大或小，满足“个体用户”需求，是未来的大方向。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">现在，“颠覆”传统企业的不是互联网，而是互联网里纷繁复杂的全新的话语体系。话语先进，不代表真的先\r\n进。让我们返璞归真，回到本源。商业的本质，我认为就是“为用户创造价值”。最终满足“个体用户”的需求，就是这一轮“互联网化”的终极目标。其手段，可\r\n以通过改变思维模式、商业模式、管理模式来达成。</span></p><br style=\"text-indent: 2em; text-align: left;\"/><p style=\"text-indent: 2em; text-align: left; line-height: 1.75em;\"><span style=\"font-size: 14px;\">我很赞同《创新者的窘境》里说的“大公司死亡框架”，也很赞同任正非先生说的“大公司不必要死亡”。互\r\n联网不是红小兵手里的毛主席语录。互联网是电、是石油，是产业变革的基础物资。问题是，你看明白了吗，抓住了吗，改变了吗？我会通过自己帮助传统企业的实\r\n践，通过专栏文章，和我的新书《传统企业，互联网在踢门（暂定名）》来继续分享“改变思维模式、商业模式、管理模式”的步骤。欢迎大家关注。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,1,'2014-01-05 16:56:56'),(11,2,1,'New feed还能支撑FACEBOOK千亿市值多久？','近半年来，FACEBOOK股价一路飚升，目前FACEBOOK的股价已达54美元，公司市值已达1300亿美元。根据FACEBOOK公布的最近的2013年第三财季季报。下表（图1）反映近两年来FACEBOOK季度各类别营收情况。','<p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">近半年来，FACEBOOK股价一路飚升，目前FACEBOOK的股价已达54美元，公司市值已达1300亿美元。根据FACEBOOK公布的最近的2013年第三财季季报。下表（图1）反映近两年来FACEBOOK季度各类别营收情况。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">一般在FACEBOOK的财报中，会将FACEBOOK的营收划分为两类，一类是广告，另一类是平台分成。在上表中，我将在线广告与移动客户端的广告营收分开列示。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">从FACEBOOK平台分成营收来看，尽管FACEBOOK平台分成营收在2013年相对2012年有所增长，但这种增长有所减缓。下表反映FACEBOOK平台分成近三年的变化情况</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">从上表来看，尽管平台分成仍呈增长趋势，但增长明显趋缓。从上表的趋势图可以看出，增长率从从2011年的425%下降\r\n到2013年前三季度的16%，下降趋势明显。16%的增长率也很难令人信服。同时，2013年平台分成的环比增长率已趋近于零，平台的规模效应也无优势\r\n可言。一般平台分成会随平台的开发者增加、平台应用增长、平台用户增长而形成规模效应，象腾讯平台营收就曾出现连续15个季度环比增长。FACEBOOK\r\n的平台应用中最主要还是社交游戏。随着移动互联网的快速发展，FACEBOOK的平台应用来自移动互联网的冲击，移动互联网的APP \r\nSTORE提供游戏的便捷下载通道。用户只需在移动客户端下APP \r\nSTORE载应用及游戏，而不需要登陆到FACEBOOK再来玩游戏。因此，FACEBOOK的平台应用分成的收入增长缓慢并不是短期的，而是受到移动互\r\n联网的冲击下的正常反映。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">再来看看FACEBOOK的广告营收。下表反映FACEBOOK广告营收近三年的变化情况</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">相对平台分成营收，广告营收的增长率却是另外一番景象。近三年的增长率呈波浪式的变化。2011年的增长率最\r\n高，68%，而在经历2012年的低增长率36%后，在2013年前三季度增长率又回升到57%。2012年成为承上启下的一年。在2012\r\n年，FACEBOOK在移动客户端开始发力。从图1可以看出，FACEBOOK移动客户端自2012年第二季度产生营收以来，一直呈快速增长的势头。在\r\nFACEBOOK发布的最新财季（2013年第三季度），移动客户端广告营收8.8亿美元，占到FACEBOOK广告收入的49%，环比增长34%。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">既然广告营收主要来源是移动客户端，那么我们再回过头来看看在线广告的营收。从图1中在线广告营收看，2013\r\n年前三季度各季度营收相对2012年同期增长不一，有增长也有下降的。而2013年前三季度累计在线广告营收相对于2012年同期竟然是下降的。随着移动\r\n互联网的快速增长，越来越多的用户开始通过移动终端设备登陆FACEBOOK，在线互联网上使用FACEBOOK的频率呈下降趋势。在2013年第三季\r\n度，使用PC机日均活跃用户（DAUs）相比2012年同期出现轻微下降。同时，从在线广告与移动广告营收此消彼长，可以看出移动互联网对在线互联网的广\r\n告营收产生的了分流。同样在FACEBOOK投放的广告的客户，随着用户从在线互联网的迁徙，其广告的投放也会随着向移动互联网迁移。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">FACEBOOK移动客户端的广告主要是来自New Feed的营收。New Feed并不是移动客户端独有的广告模式，FACEBOOK在在线互联网也会有来自New Feed广告营收。只是New Feed与移动互联网的结合，其价值得到更大空间的发挥。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">“通过赞助商内容，Facebook用户发布的内容能够被转换为广告，并面向该用户的好友发布。而\r\nFacebook将从中获得收入。当用户对某一品牌点击“赞”，或是以其他方式提到该品牌时，与该品牌相关的赞助商内容将会生成，而参与Facebook\r\n这一项目的企业将因此付费。”这就是New \r\nFeed广告营收模式。这样的一种收费模式将广告商的支付与FACEBOOK用户群有效的联系起来，用户群越大，点击的次数越多，那么广告商支付给\r\nFACEBOOK的费用就越高。这样在用户群、点击数与广告收入之间就建立某种线性关系。而这种线性关系随着用户群的规模成倍的增长。这是展示广告所不能\r\n比拟的。Facebook new feed营收一直呈快速增长，主要得益于移动用户增长，移动广告单次点击的价格，用户点击频率的增长。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">当然，FACEBOOK New \r\nFeed增长率已在呈下降趋势。从图1看，移动广告营收的增长率也开始趋缓，季度环比增长率已由2012年的100%下降到最低时的24%。环比增长率反\r\n映New Feed规模效应，这样增长趋势意味着New Feed的可持续增长能力越来越弱，越来越接近强弩之末。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">另外，New \r\nFeed这种盈利模式一直饱受质疑，因为在这种模式下广告是与用户的点击与分享相关联，在某种情况实质上违背用户的意志与隐私。前两年，Facebook\r\n因为New Feed也招致过集体诉讼。其诉讼的理由是 \r\nFacebook在没有经过用户同意的情况下，在广告中展示用户的姓名和照片，这是一种不公平、欺诈性的做法。之后，Facebook花费10亿美元予以\r\n和解。然而，最近FACEBOOK的New \r\nFeed又面临新的诉讼。新的集体诉讼指控Facebook拦截了链接外部网站的私人信息，从而了解用户的通信内容，构建用户的网上活动档案，使\r\nFacebook能够挖掘用户数据并与第三方，即广告商、营销者和其他数据聚合服务分享，从中获利。因此， \r\nFacebook的这一举措违反了《电子通讯隐私法》( Electronic Communications Privacy \r\nAct,简称“ECPA”) 的规定。另外，2013年12月20日，美国联邦法官劳雷尔·比勒（Laurel \r\nBeeler）裁决，Hulu因非法向Facebook和市场数据调查公司comScore \r\nInc.分享用户浏览历史记录，必须面临法律诉讼。显然，这样的裁决结果，对Facebook未来的诉讼以及Facebook的New \r\nFeed的未来发展将会产生不利影响。毕竟，随着Facebook重心转向移动互联网，Facebook需要更精准的营销提高用户的点击的效果，就不可避\r\n免地涉入更多用户隐私。这样将会有更多用户拿起法律武器来维护自身权益。New \r\nFeed的未来如何，存在着不可预知性，毕竟这样的一种业务存在侵犯个人隐私的嫌疑，并且Facebook从中获取丰厚的利润。出来混，总是要还的，个人\r\n认为，Facebook将会为此付出代价。或许法官不会裁决禁止Facebook从事New Feed，但若是要与用户来共享广告收益，或者禁止New \r\nFeed对用户的行为涉入过深，这将对Facebook未来的收益产生不利的影响。</span></p><p style=\"line-height: 1.75em; text-indent: 2em; text-align: left;\"><span style=\"font-size: 14px;\">移动互联网的兴起，对Facebook产生一定冲击，Facebook的平台应用与在线广告已今不如昔。如今移\r\n动客户端New Feed已支撑起Facebook千亿的市值。只是New feed来自移动客户端收的增长率也开始趋缓，New \r\nfeed的价值已快发挥到极限。同时New feed又因为涉及个人隐私问题招致潜在的法律风险，未来New \r\nfeed的可持续发展能力越来越受限。而Facebook暂时也没有找到新的盈利模式。Facebook的千亿市值的基础并不稳固，未来有关New \r\nfeed的任何不利的情况都有可能对Facebook的股价造成重创。Facebook的千亿市值大厦摇摇欲坠，或许在不远的某一天被某根稻草压垮。</span></p><p><br style=\"text-indent: 2em; text-align: left;\"/></p>',0,2,'2014-01-05 16:59:24');
/*!40000 ALTER TABLE `tp_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_newsclass`
--

DROP TABLE IF EXISTS `tp_newsclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_newsclass` (
  `ID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `Sid` int(5) DEFAULT '0' COMMENT '下级分类（预留）',
  `Uid` int(8) DEFAULT '0' COMMENT '用户ID',
  `ClassName` char(20) DEFAULT NULL COMMENT '分类名称',
  `Description` char(30) DEFAULT NULL COMMENT '描述',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_newsclass`
--

LOCK TABLES `tp_newsclass` WRITE;
/*!40000 ALTER TABLE `tp_newsclass` DISABLE KEYS */;
INSERT INTO `tp_newsclass` VALUES (1,0,1,'内部新闻','内部新闻','2013-12-25 16:23:33'),(2,0,1,'焦点新闻','焦点新闻','2013-12-25 16:23:53');
/*!40000 ALTER TABLE `tp_newsclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_operating`
--

DROP TABLE IF EXISTS `tp_operating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_operating` (
  `ID` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(8) DEFAULT '0',
  `Url` varchar(300) DEFAULT NULL COMMENT '操作块模URL',
  `Description` varchar(300) DEFAULT NULL COMMENT '说明',
  `Ip` char(60) DEFAULT NULL COMMENT '操作IP',
  `Status` tinyint(4) DEFAULT '0' COMMENT '状态,1代表成功2代表失败',
  `Dtime` datetime DEFAULT NULL COMMENT '发生时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_operating`
--

LOCK TABLES `tp_operating` WRITE;
/*!40000 ALTER TABLE `tp_operating` DISABLE KEYS */;
INSERT INTO `tp_operating` VALUES (4,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-05 13:26:40'),(23,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 13:32:17'),(29,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 13:54:23'),(30,1,'/OA/index.php/File/fileindel','删除成功','127.0.0.1',0,'2014-01-05 13:55:23'),(31,1,'/OA/index.php/System/module_edit_do','更新成功','127.0.0.1',0,'2014-01-05 13:56:14'),(32,1,'/OA/index.php/User/useredit_do','更改用户资料：小峰','127.0.0.1',0,'2014-01-05 14:32:04'),(33,1,'/OA/index.php/User/useredit_do','更改用户资料：小峰','127.0.0.1',0,'2014-01-05 14:34:10'),(34,1,'/OA/index.php/User/useredit_do','更改用户资料：小峰','127.0.0.1',0,'2014-01-05 14:34:14'),(35,1,'/OA/index.php/Competence/cadd_do','新增成功','127.0.0.1',0,'2014-01-05 14:35:00'),(36,1,'/OA/index.php/Competence/cadd_do','新增成功','127.0.0.1',0,'2014-01-05 14:35:12'),(37,1,'/OA/index.php/Role/roleedit_do','更新成功','127.0.0.1',0,'2014-01-05 14:35:50'),(38,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 14:48:00'),(39,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 14:54:05'),(40,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 14:54:11'),(41,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 14:54:55'),(42,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 14:57:41'),(43,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 15:12:45'),(44,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 15:13:00'),(45,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 15:13:08'),(46,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 15:13:13'),(47,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 15:28:27'),(48,1,'/OA/index.php/System/module_edit_do','更新成功','127.0.0.1',0,'2014-01-05 15:32:26'),(49,1,'/OA/index.php/System/systemconfig_do','系统配置修改成功','127.0.0.1',0,'2014-01-05 15:39:34'),(50,1,'/OA/index.php/System/module_edit_do','更新成功','127.0.0.1',0,'2014-01-05 16:00:20'),(51,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 16:00:27'),(52,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 16:03:45'),(53,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-05 16:03:56'),(54,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:05:07'),(55,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:05:22'),(56,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:05:32'),(57,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:05:42'),(58,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:05:54'),(59,1,'/OA/index.php/With/withadd_do','新增成功','127.0.0.1',0,'2014-01-05 16:06:07'),(60,1,'/OA/index.php/System/systemconfig_do','系统配置修改成功','127.0.0.1',0,'2014-01-05 16:33:30'),(61,1,'/OA/index.php/News/add_do','新增失败标题请在80个字符以内！','127.0.0.1',1,'2014-01-05 16:45:36'),(62,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:46:41'),(63,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:48:00'),(64,1,'/OA/index.php/News/edit_do','更新成功','127.0.0.1',0,'2014-01-05 16:48:45'),(65,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:50:11'),(66,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:51:50'),(67,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:52:34'),(68,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:53:25'),(69,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:54:43'),(70,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:55:54'),(71,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:56:56'),(72,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:58:04'),(73,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-05 16:59:24'),(74,1,'/OA/index.php/System/module_edit_do','更新成功','127.0.0.1',0,'2014-01-05 17:07:28'),(75,1,'/OA/index.php/System/module_edit_do','更新成功','127.0.0.1',0,'2014-01-05 17:07:42'),(76,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 17:07:51'),(77,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-05 19:34:29'),(78,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-06 00:19:59'),(79,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-06 00:23:40'),(80,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-06 00:31:33'),(81,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-06 00:38:37'),(82,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-06 22:21:22'),(83,1,'/OA/index.php/User/in_user_del','批量删除ID为：4,3的数据','127.0.0.1',0,'2014-01-07 20:47:05'),(84,1,'/OA/index.php/News/add_do','新增成功','127.0.0.1',0,'2014-01-08 21:28:30'),(85,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:28:39'),(86,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:31:51'),(87,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:33:23'),(88,1,'/OA/index.php/Upload/filedo','上传成功','127.0.0.1',0,'2014-01-08 21:40:11'),(89,1,'/OA/index.php/File/filedel','删除成功','127.0.0.1',0,'2014-01-08 21:40:24'),(90,1,'/OA/index.php/File/fileindel','删除成功','127.0.0.1',0,'2014-01-08 21:48:14'),(91,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:49:06'),(92,1,'/OA/index.php/System/systemcore_do','核心配置文件修改成功','127.0.0.1',0,'2014-01-08 21:56:14'),(93,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:56:20'),(94,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:57:00'),(95,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-08 21:57:31'),(96,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:36:29'),(97,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:36:52'),(98,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:37:04'),(99,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:39:24'),(100,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:39:56'),(101,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:40:22'),(102,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-08 23:40:51'),(104,1,'/OA/index.php/System/systemconfig_do','系统配置修改成功','127.0.0.1',0,'2014-01-09 21:13:47'),(105,1,'/OA/index.php/System/systemconfig_do','系统配置修改成功','127.0.0.1',0,'2014-01-09 21:14:31'),(106,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-09 21:16:33'),(107,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-09 21:16:37'),(108,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-13 22:30:49'),(109,1,'/OA/index.php/With/withedit_do','更新成功','127.0.0.1',0,'2014-01-13 22:30:52'),(110,1,'/OA/index.php/User/useredit_do','更改用户资料：admin','127.0.0.1',0,'2014-01-21 21:07:12'),(111,1,'/OA/index.php/Competence/cedit_do','更新成功','127.0.0.1',0,'2014-01-21 21:08:31'),(112,1,'/OA/index.php/System/systemconfig_do','系统配置修改成功','127.0.0.1',0,'2014-01-21 21:15:45'),(113,1,'/OA/index.php/Competence/cedit_do','更新成功','127.0.0.1',0,'2014-01-21 21:21:26'),(114,1,'/OA/index.php/Competence/cadd_do','新增成功','127.0.0.1',0,'2014-01-21 21:22:26'),(115,1,'/OA/index.php/Competence/cedit_do','更新成功','127.0.0.1',0,'2014-01-21 21:23:58'),(116,1,'/OA/index.php/Competence/cadd_do','新增成功','127.0.0.1',0,'2014-01-21 21:25:27'),(117,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-21 21:34:10'),(118,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:26'),(119,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:30'),(120,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:34'),(121,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:37'),(122,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:41'),(123,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:44'),(124,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:47'),(125,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:50'),(126,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:53'),(127,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:34:56'),(128,1,'/OA/index.php/Loginlog/indel','登录日志删除成功','127.0.0.1',0,'2014-01-21 21:35:02'),(129,1,'/OA/index.php/User/useredit_do','更改用户资料：admin','127.0.0.1',0,'2014-01-21 21:35:43'),(130,1,'/OA/index.php/User/useredit_do','更改用户资料：admin','127.0.0.1',0,'2014-01-21 21:35:52'),(131,1,'/OA/index.php/Common/clearcache','清空站点缓存','127.0.0.1',0,'2014-01-21 21:41:10'),(132,1,'/OA/index.php/Common/clearcache','清空站点缓存','0.0.0.0',0,'2016-11-04 15:57:54');
/*!40000 ALTER TABLE `tp_operating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_role`
--

DROP TABLE IF EXISTS `tp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_role` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Rolename` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `Description` varchar(50) DEFAULT NULL COMMENT '用户组说明',
  `Competence` varchar(255) DEFAULT NULL COMMENT '用户组权限列表',
  `Status` tinyint(2) DEFAULT '0' COMMENT '用户组状态',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_role`
--

LOCK TABLES `tp_role` WRITE;
/*!40000 ALTER TABLE `tp_role` DISABLE KEYS */;
INSERT INTO `tp_role` VALUES (1,'超级管理员','拥有全部权限，网站主要管理人员','2,3,4,5,7,8,9,10,12,13,14,15,21,22,23,24,25,26,27,28,18,19,20,82,83,29,30,32,33,52,53,35,36,37,38,39,40,41,42,43,77,45,46,47,48,49,50,51,60,61,62,63,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,81,',0,'2013-12-08 17:13:02'),(2,'普通管理员','只拥有部分权限操作权限','2,7,12,21,25,18,19,29,32,52,35,43,77,45,60,65,72,73,74,78,',0,'2013-12-08 17:14:40'),(3,'来宾用户','只供浏览本系统','2,7,12,21,25,18,19,29,32,52,35,43,77,45,60,65,72,73,74,78,',0,'2013-12-08 17:18:25');
/*!40000 ALTER TABLE `tp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_statis`
--

DROP TABLE IF EXISTS `tp_statis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_statis` (
  `ID` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(8) DEFAULT '0',
  `Dtime` char(12) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_statis`
--

LOCK TABLES `tp_statis` WRITE;
/*!40000 ALTER TABLE `tp_statis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_statis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_user`
--

DROP TABLE IF EXISTS `tp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `Password` char(40) DEFAULT NULL COMMENT '密码',
  `Email` varchar(30) DEFAULT NULL COMMENT '管理员Email',
  `Roleid` tinyint(2) DEFAULT '0' COMMENT '用户角色',
  `Status` tinyint(2) DEFAULT '0' COMMENT '状态',
  `Competence` varchar(255) DEFAULT NULL COMMENT '权限列表',
  `Description` varchar(50) DEFAULT NULL COMMENT '说明',
  `Loginarea` varchar(20) DEFAULT NULL COMMENT '最后登录地',
  `Logincount` int(5) DEFAULT '0' COMMENT '登录次数',
  `Loginip` varchar(30) DEFAULT NULL COMMENT '最后登录IP',
  `Logintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `Dtime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_user`
--

LOCK TABLES `tp_user` WRITE;
/*!40000 ALTER TABLE `tp_user` DISABLE KEYS */;
INSERT INTO `tp_user` VALUES (1,'admin','10470c3b4b1fed12c3baac014be15fac67c6e815','gu@qq.com',1,0,'2,3,4,5,7,8,9,10,12,13,14,15,21,22,23,24,25,26,27,28,18,19,20,82,83,29,30,32,33,52,53,35,36,37,38,39,40,41,42,43,77,45,46,47,48,49,50,51,84,60,61,62,63,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,81,85,','超级管理员','.',222,NULL,'2016-11-04 15:58:03','2013-12-08 17:18:54'),(2,'LITTLE','10470c3b4b1fed12c3baac014be15fac67c6e815','LITTLE@qq.com',2,0,'2,7,12,21,25,18,19,29,32,35,','普通管理员','.',6,'','2016-11-04 20:26:59','2013-12-08 17:19:17'),(5,'小峰','10470c3b4b1fed12c3baac014be15fac67c6e815','xiaofeng@qq.com',1,0,'2,3,4,5,7,8,9,10,12,13,14,15,21,22,23,24,25,26,27,28,18,19,20,82,83,29,30,32,33,52,53,35,36,37,38,39,40,41,42,43,77,45,46,47,48,49,50,51,60,61,62,63,65,66,67,68,69,70,71,72,73,74,75,76,78,79,80,81,','',NULL,6,'127.0.0.1','2014-01-01 17:20:46','2013-12-29 20:44:29');
/*!40000 ALTER TABLE `tp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_with`
--

DROP TABLE IF EXISTS `tp_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_with` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uid` int(10) DEFAULT '0' COMMENT '户用ID',
  `Cid` int(10) DEFAULT '0' COMMENT '客户档案编号',
  `Wast` tinyint(4) DEFAULT NULL COMMENT '跟单类型',
  `NameId` tinyint(4) DEFAULT NULL COMMENT '跟单对象',
  `NextTime` datetime DEFAULT NULL COMMENT '下次联系时间',
  `RemindTime` datetime DEFAULT NULL COMMENT '提醒时间',
  `Status` tinyint(4) DEFAULT '0',
  `Remind` tinyint(2) DEFAULT '0' COMMENT '是否已完成',
  `Content` varchar(1000) DEFAULT NULL COMMENT '详细描述',
  `Dtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_with`
--

LOCK TABLES `tp_with` WRITE;
/*!40000 ALTER TABLE `tp_with` DISABLE KEYS */;
INSERT INTO `tp_with` VALUES (1,1,6,47,6,'2014-01-09 01:59:30','2014-01-08 23:40:00',0,0,'','2014-01-07 19:43:01'),(2,1,6,48,6,'2014-01-24 23:59:00','2014-01-08 23:40:00',0,0,'','2014-01-07 19:43:12'),(3,1,5,48,5,'2014-01-09 00:00:00','2014-01-08 23:40:00',0,1,'重要客户','2014-01-07 19:43:36'),(8,9,12,46,13,'2014-01-09 00:00:00','2014-01-09 00:00:00',0,0,'','2014-01-08 14:39:36');
/*!40000 ALTER TABLE `tp_with` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-04 21:05:22
