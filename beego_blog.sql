-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: localhost    Database: beego_blog
-- ------------------------------------------------------
-- Server version	5.6.22

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
-- Table structure for table `tb_album`
--

DROP TABLE IF EXISTS `tb_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_album` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '相册名称',
  `cover` varchar(70) NOT NULL COMMENT '相册封面',
  `posttime` datetime NOT NULL,
  `ishide` tinyint(1) NOT NULL,
  `rank` tinyint(3) NOT NULL DEFAULT '0',
  `photonum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_album`
--

LOCK TABLES `tb_album` WRITE;
/*!40000 ALTER TABLE `tb_album` DISABLE KEYS */;
INSERT INTO `tb_album` VALUES (14,'青海','','2015-06-08 23:21:44',0,1,0);
/*!40000 ALTER TABLE `tb_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_link`
--

DROP TABLE IF EXISTS `tb_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_link` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(80) NOT NULL DEFAULT '' COMMENT '网站名字',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '友链URL地址',
  `rank` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_link`
--

LOCK TABLES `tb_link` WRITE;
/*!40000 ALTER TABLE `tb_link` DISABLE KEYS */;
INSERT INTO `tb_link` VALUES (1,'个人网站','http://www.nklike.com',0);
/*!40000 ALTER TABLE `tb_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mood`
--

DROP TABLE IF EXISTS `tb_mood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mood` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 NOT NULL,
  `cover` varchar(70) CHARACTER SET utf8 NOT NULL DEFAULT '/static/upload/defaultcover.png' COMMENT '说说图片',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mood`
--

LOCK TABLES `tb_mood` WRITE;
/*!40000 ALTER TABLE `tb_mood` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_option`
--

DROP TABLE IF EXISTS `tb_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_option` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_option`
--

LOCK TABLES `tb_option` WRITE;
/*!40000 ALTER TABLE `tb_option` DISABLE KEYS */;
INSERT INTO `tb_option` VALUES (1,'sitename','成长之旅'),(2,'siteurl','http://www.nklike.com/blog'),(3,'subtitle','一路上你在看风景,风景也在看你'),(4,'pagesize','2'),(5,'keywords','李克'),(6,'description','个人学习网站'),(8,'theme','double'),(9,'timezone','8'),(10,'stat','<script src=\"http://s96.cnzz.com/stat.php?id=4909665&web_id=4909665\" language=\"JavaScript\"></script>'),(11,'weibo','http://weibo.com/nklike'),(12,'github','https://github.com/kongjian'),(16,'duoshuo','12173826'),(17,'albumsize','4'),(18,'nickname','like');
/*!40000 ALTER TABLE `tb_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_photo`
--

DROP TABLE IF EXISTS `tb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_photo` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `albumid` mediumint(8) NOT NULL COMMENT '所属相册ID',
  `des` varchar(100) NOT NULL COMMENT '照片描述',
  `posttime` datetime NOT NULL COMMENT '上传时间',
  `url` varchar(70) NOT NULL COMMENT '照片URL地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_photo`
--

LOCK TABLES `tb_photo` WRITE;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 trigger InsertPhoto
after insert on tb_photo
for each row
	update tb_album set photonum=photonum+1 where id = new.albumid */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_post`
--

DROP TABLE IF EXISTS `tb_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_post` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `author` varchar(15) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` varchar(7) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `urlname` varchar(100) NOT NULL DEFAULT '' COMMENT 'url名',
  `urltype` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'url访问形式',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(100) NOT NULL DEFAULT '' COMMENT '标签',
  `views` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态{0:正常,1:草稿,2:回收站}',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `istop` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `cover` varchar(70) DEFAULT '/static/upload/defaultcover.png' COMMENT '文章封面',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `posttime` (`posttime`),
  KEY `urlname` (`urlname`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_post`
--

LOCK TABLES `tb_post` WRITE;
/*!40000 ALTER TABLE `tb_post` DISABLE KEYS */;
INSERT INTO `tb_post` VALUES (14,1,'admin','学习beego','','',0,'<p>最近项目中用到了go语言,接触到了beego,一个很强大的mvc封装,看到很多使用beego的项目,一时兴起,找了一个看起来不错的项目进行修改和测试.<span style=\"line-height: 1.5em;\">一方面学习了go语言,一方面又能够对网站前端做一些了解.</span></p><p><span style=\"line-height: 1.5em;\">感谢<a href=\"http://beego.me/\" target=\"_self\" title=\"\">astaxie</a>提供的beego</span></p><p><span style=\"line-height: 1.5em;\">感谢<a href=\"https://github.com/jxufeliujj/blog\" target=\"_self\" title=\"\">jxufeliujj</a>开发网站框架</span></p>',',go,',3,0,'2015-06-10 16:04:32','2015-06-10 16:07:37',0,'/static/upload/defaultcover.png');
/*!40000 ALTER TABLE `tb_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tag`
--

DROP TABLE IF EXISTS `tb_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '标签名',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用次数',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tag`
--

LOCK TABLES `tb_tag` WRITE;
/*!40000 ALTER TABLE `tb_tag` DISABLE KEYS */;
INSERT INTO `tb_tag` VALUES (11,'go',1);
/*!40000 ALTER TABLE `tb_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tag_post`
--

DROP TABLE IF EXISTS `tb_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '标签id',
  `postid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容id',
  `poststatus` tinyint(3) NOT NULL DEFAULT '0' COMMENT '内容状态',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `tagid` (`tagid`),
  KEY `postid` (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tag_post`
--

LOCK TABLES `tb_tag_post` WRITE;
/*!40000 ALTER TABLE `tb_tag_post` DISABLE KEYS */;
INSERT INTO `tb_tag_post` VALUES (57,11,14,0,'2015-06-10 16:07:37');
/*!40000 ALTER TABLE `tb_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `logincount` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `lastip` varchar(15) NOT NULL DEFAULT '0' COMMENT '最后登录ip',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后登录时间',
  `authkey` char(10) NOT NULL DEFAULT '' COMMENT '登录key',
  `active` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否激活',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'admin','8ee649c51f6a4cf2b5992137aa04f617','nklike@126.com',8,'127.0.0.1','2015-06-10 15:45:18','',1),(2,'nklike','8ee649c51f6a4cf2b5992137aa04f617','nklike@126.com',0,'','2015-06-10 07:45:35','',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-10 18:03:08
