-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm1428t
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm1428t/upload/1618307819241.jpg'),(2,'picture2','http://localhost:8080/ssm1428t/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1428t/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuxinxi`
--

DROP TABLE IF EXISTS `discusstushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuxinxi`
--

LOCK TABLES `discusstushuxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuxinxi` VALUES (111,'2021-04-13 09:45:46',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-13 09:45:46',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-13 09:45:46',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-13 09:45:46',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-13 09:45:46',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-13 09:45:46',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaonafajin`
--

DROP TABLE IF EXISTS `jiaonafajin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaonafajin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `fakuanshuoming` varchar(200) DEFAULT NULL COMMENT '罚款说明',
  `fakuanjine` int(11) DEFAULT NULL COMMENT '罚款金额',
  `fakuanriqi` date DEFAULT NULL COMMENT '罚款日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308337921 DEFAULT CHARSET=utf8 COMMENT='缴纳罚金';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaonafajin`
--

LOCK TABLES `jiaonafajin` WRITE;
/*!40000 ALTER TABLE `jiaonafajin` DISABLE KEYS */;
INSERT INTO `jiaonafajin` VALUES (71,'2021-04-13 09:45:46','借阅单号1','图书编号1','图书名称1','罚款说明1',1,'2021-04-13','用户名1','联系电话1','未支付'),(72,'2021-04-13 09:45:46','借阅单号2','图书编号2','图书名称2','罚款说明2',2,'2021-04-13','用户名2','联系电话2','未支付'),(73,'2021-04-13 09:45:46','借阅单号3','图书编号3','图书名称3','罚款说明3',3,'2021-04-13','用户名3','联系电话3','未支付'),(74,'2021-04-13 09:45:46','借阅单号4','图书编号4','图书名称4','罚款说明4',4,'2021-04-13','用户名4','联系电话4','未支付'),(75,'2021-04-13 09:45:46','借阅单号5','图书编号5','图书名称5','罚款说明5',5,'2021-04-13','用户名5','联系电话5','未支付'),(76,'2021-04-13 09:45:46','借阅单号6','图书编号6','图书名称6','罚款说明6',6,'2021-04-13','用户名6','联系电话6','未支付'),(1618308337920,'2021-04-13 10:05:37','20214131801963097611','1618307763050','晚熟的人','超期还书',10,'2021-04-13','1','12312312312','已支付');
/*!40000 ALTER TABLE `jiaonafajin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308052355 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-04-13 09:45:46',1,'用户名1','留言内容1','回复内容1'),(102,'2021-04-13 09:45:46',2,'用户名2','留言内容2','回复内容2'),(103,'2021-04-13 09:45:46',3,'用户名3','留言内容3','回复内容3'),(104,'2021-04-13 09:45:46',4,'用户名4','留言内容4','回复内容4'),(105,'2021-04-13 09:45:46',5,'用户名5','留言内容5','回复内容5'),(106,'2021-04-13 09:45:46',6,'用户名6','留言内容6','回复内容6'),(1618308052354,'2021-04-13 10:00:52',1618307918897,'1','请问有狼图腾小说吗','有的，可直接搜索');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618307883812 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-04-13 09:45:46','标题1','简介1','http://localhost:8080/ssm1428t/upload/1618307440593.jpg','<p>内容1</p>'),(92,'2021-04-13 09:45:46','标题2','简介2','http://localhost:8080/ssm1428t/upload/1618307448886.jpg','<p>内容2</p>'),(93,'2021-04-13 09:45:46','标题3','简介3','http://localhost:8080/ssm1428t/upload/1618307456404.jpg','<p>内容3</p>'),(94,'2021-04-13 09:45:46','标题4','简介4','http://localhost:8080/ssm1428t/upload/1618307463932.jpg','<p>内容4</p>'),(95,'2021-04-13 09:45:46','标题5','简介5','http://localhost:8080/ssm1428t/upload/1618307475620.jpg','<p>内容5</p>'),(96,'2021-04-13 09:45:46','标题6','简介6','http://localhost:8080/ssm1428t/upload/1618307482887.jpg','<p>内容6</p>'),(1618307883811,'2021-04-13 09:58:03','图书借阅须知','借阅须知','http://localhost:8080/ssm1428t/upload/1618307831487.jpg','<p>图书借阅须知</p><p>图书借阅天数为30天，超过规定的天数需缴纳罚金</p><p><img src=\"http://localhost:8080/ssm1428t/upload/1618307880705.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308060581 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ld0jobr1u89un8j0vdu7d6r0aecjb659','2021-04-13 09:47:03','2021-04-13 11:08:07'),(2,1618307918897,'1','yonghu','用户','pa448f6vw5cpzfxjevviz37d3r155bda','2021-04-13 09:58:45','2021-04-13 11:07:55');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618307759557 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (21,'2021-04-13 09:45:46','世界名著'),(22,'2021-04-13 09:45:46','人文社科'),(23,'2021-04-13 09:45:46','少儿读物'),(24,'2021-04-13 09:45:46','休闲生活'),(25,'2021-04-13 09:45:46','经管励志'),(1618307759556,'2021-04-13 09:55:59','文学小说');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguihai`
--

DROP TABLE IF EXISTS `tushuguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `yinghairiqi` varchar(200) DEFAULT NULL COMMENT '应还日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308253787 DEFAULT CHARSET=utf8 COMMENT='图书归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguihai`
--

LOCK TABLES `tushuguihai` WRITE;
/*!40000 ALTER TABLE `tushuguihai` DISABLE KEYS */;
INSERT INTO `tushuguihai` VALUES (51,'2021-04-13 09:45:46','借阅单号1','图书编号1','图书名称1','可借天数1','借阅日期1','应还日期1','2021-04-13','用户名1','联系电话1','是',''),(52,'2021-04-13 09:45:46','借阅单号2','图书编号2','图书名称2','可借天数2','借阅日期2','应还日期2','2021-04-13','用户名2','联系电话2','是',''),(53,'2021-04-13 09:45:46','借阅单号3','图书编号3','图书名称3','可借天数3','借阅日期3','应还日期3','2021-04-13','用户名3','联系电话3','是',''),(54,'2021-04-13 09:45:46','借阅单号4','图书编号4','图书名称4','可借天数4','借阅日期4','应还日期4','2021-04-13','用户名4','联系电话4','是',''),(55,'2021-04-13 09:45:46','借阅单号5','图书编号5','图书名称5','可借天数5','借阅日期5','应还日期5','2021-04-13','用户名5','联系电话5','是',''),(56,'2021-04-13 09:45:46','借阅单号6','图书编号6','图书名称6','可借天数6','借阅日期6','应还日期6','2021-04-13','用户名6','联系电话6','是',''),(1618308253786,'2021-04-13 10:04:13','20214131801963097611','1618307763050','晚熟的人','30','2021-04-13','2021-05-13','2021-05-31','1','12312312312','是','超过规定天数2周，产生罚金10元');
/*!40000 ALTER TABLE `tushuguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushujieyue`
--

DROP TABLE IF EXISTS `tushujieyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushujieyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `kejieshuliang` varchar(200) DEFAULT NULL COMMENT '可借数量',
  `jieyueriqi` date NOT NULL COMMENT '借阅日期',
  `jieyuetianshu` varchar(200) NOT NULL COMMENT '借阅天数',
  `yinghairiqi` date DEFAULT NULL COMMENT '应还日期',
  `jieyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '借阅状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuedanhao` (`jieyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308031447 DEFAULT CHARSET=utf8 COMMENT='图书借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushujieyue`
--

LOCK TABLES `tushujieyue` WRITE;
/*!40000 ALTER TABLE `tushujieyue` DISABLE KEYS */;
INSERT INTO `tushujieyue` VALUES (41,'2021-04-13 09:45:46','借阅单号1','图书编号1','图书名称1','世界名著','http://localhost:8080/ssm1428t/upload/1618307391465.jpg','可借天数1','可借数量1','2021-04-13','借阅天数1','2021-04-13','借阅','用户名1','联系电话1','身份证1','是',''),(42,'2021-04-13 09:45:46','借阅单号2','图书编号2','图书名称2','人文社科','http://localhost:8080/ssm1428t/upload/1618307408814.jpg','可借天数2','可借数量2','2021-04-13','借阅天数2','2021-04-13','借阅','用户名2','联系电话2','身份证2','是',''),(43,'2021-04-13 09:45:46','借阅单号3','图书编号3','图书名称3','少儿读物','http://localhost:8080/ssm1428t/upload/1618307415343.jpg','可借天数3','可借数量3','2021-04-13','借阅天数3','2021-04-13','借阅','用户名3','联系电话3','身份证3','是',''),(44,'2021-04-13 09:45:46','借阅单号4','图书编号4','图书名称4','经管励志','http://localhost:8080/ssm1428t/upload/1618307422514.jpg','可借天数4','可借数量4','2021-04-13','借阅天数4','2021-04-13','借阅','用户名4','联系电话4','身份证4','是',''),(45,'2021-04-13 09:45:46','借阅单号5','图书编号5','图书名称5','经管励志','http://localhost:8080/ssm1428t/upload/tushujieyue_tupian5.jpg','可借天数5','可借数量5','2021-04-13','借阅天数5','2021-04-13','借阅','用户名5','联系电话5','身份证5','是',''),(46,'2021-04-13 09:45:46','借阅单号6','图书编号6','图书名称6','休闲生活','http://localhost:8080/ssm1428t/upload/1618307430303.jpg','可借天数6','可借数量6','2021-04-13','借阅天数6','2021-04-13','借阅','用户名6','联系电话6','身份证6','是',''),(1618308031446,'2021-04-13 10:00:30','20214131801963097611','1618307763050','晚熟的人','文学小说','http://localhost:8080/ssm1428t/upload/1618307774296.jpg','30','5','2021-04-13','30','2021-05-13','已归还','1','12312312312','123456789789456123','是','ok,请及时归还');
/*!40000 ALTER TABLE `tushujieyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushupingjia`
--

DROP TABLE IF EXISTS `tushupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `yonghupingfen` varchar(200) DEFAULT NULL COMMENT '用户评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618308463194 DEFAULT CHARSET=utf8 COMMENT='图书评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushupingjia`
--

LOCK TABLES `tushupingjia` WRITE;
/*!40000 ALTER TABLE `tushupingjia` DISABLE KEYS */;
INSERT INTO `tushupingjia` VALUES (61,'2021-04-13 09:45:46','借阅单号1','图书名称1','图书分类1','1','评价内容1','2021-04-13','用户名1','联系电话1','是',''),(62,'2021-04-13 09:45:46','借阅单号2','图书名称2','图书分类2','1','评价内容2','2021-04-13','用户名2','联系电话2','是',''),(63,'2021-04-13 09:45:46','借阅单号3','图书名称3','图书分类3','1','评价内容3','2021-04-13','用户名3','联系电话3','是',''),(64,'2021-04-13 09:45:46','借阅单号4','图书名称4','图书分类4','1','评价内容4','2021-04-13','用户名4','联系电话4','是',''),(65,'2021-04-13 09:45:46','借阅单号5','图书名称5','图书分类5','1','评价内容5','2021-04-13','用户名5','联系电话5','是',''),(66,'2021-04-13 09:45:46','借阅单号6','图书名称6','图书分类6','1','评价内容6','2021-04-13','用户名6','联系电话6','是',''),(1618308463193,'2021-04-13 10:07:42','20214131801963097611','晚熟的人','文学小说','5','很不错的书籍','2021-04-13','1','12312312312','是','感谢支持');
/*!40000 ALTER TABLE `tushupingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushuzhuangtai` varchar(200) DEFAULT NULL COMMENT '图书状态',
  `kejietianshu` int(11) NOT NULL COMMENT '可借天数',
  `kejieshuliang` int(11) NOT NULL COMMENT '可借数量',
  `tushujianjie` longtext COMMENT '图书简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618307805473 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (31,'2021-04-13 09:45:46','图书编号1','图书名称1','经管励志','http://localhost:8080/ssm1428t/upload/1618307231371.jpg','作者1','出版社1','可借阅',1,1,'<p>图书简介1</p>','2021-04-13 17:48:30',3),(32,'2021-04-13 09:45:46','图书编号2','图书名称2','经管励志','http://localhost:8080/ssm1428t/upload/1618307238695.jpg','作者2','出版社2','可借阅',2,2,'<p>图书简介2</p>','2021-04-13 18:01:05',8),(33,'2021-04-13 09:45:46','图书编号3','图书名称3','世界名著','http://localhost:8080/ssm1428t/upload/1618307329698.jpg','作者3','出版社3','可借阅',3,3,'<p>图书简介3</p>','2021-04-13 17:48:42',4),(34,'2021-04-13 09:45:46','图书编号4','图书名称4','休闲生活','http://localhost:8080/ssm1428t/upload/1618307342413.jpg','作者4','出版社4','可借阅',4,4,'<p>图书简介4</p>','2021-04-13 17:48:53',5),(35,'2021-04-13 09:45:46','图书编号5','图书名称5','少儿读物','http://localhost:8080/ssm1428t/upload/1618307355171.jpg','作者5','出版社5','可借阅',5,5,'<p>图书简介5</p>','2021-04-13 17:58:46',8),(36,'2021-04-13 09:45:46','图书编号6','图书名称6','人文社科','http://localhost:8080/ssm1428t/upload/1618307381662.jpg','作者6','出版社6','可借阅',6,6,'<p>图书简介6</p>','2021-04-13 17:59:12',13),(1618307805472,'2021-04-13 09:56:44','1618307763050','晚熟的人','文学小说','http://localhost:8080/ssm1428t/upload/1618307774296.jpg','莫言','人民文学出版社','可借阅',30,5,'<p>莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外</p>','2021-04-13 18:06:37',6);
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-13 09:45:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618307918898 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-13 09:45:46','用户1','123456','姓名1','http://localhost:8080/ssm1428t/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001'),(12,'2021-04-13 09:45:46','用户2','123456','姓名2','http://localhost:8080/ssm1428t/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002'),(13,'2021-04-13 09:45:46','用户3','123456','姓名3','http://localhost:8080/ssm1428t/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003'),(14,'2021-04-13 09:45:46','用户4','123456','姓名4','http://localhost:8080/ssm1428t/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004'),(15,'2021-04-13 09:45:46','用户5','123456','姓名5','http://localhost:8080/ssm1428t/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005'),(16,'2021-04-13 09:45:46','用户6','123456','姓名6','http://localhost:8080/ssm1428t/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006'),(1618307918897,'2021-04-13 09:58:38','1','1','陈一','http://localhost:8080/ssm1428t/upload/1618307934456.jpg','女','12312312312','123456789789456123');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 15:39:19
