-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: phpu1613
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
-- Current Database: `phpu1613`
--

/*!40000 DROP DATABASE IF EXISTS `phpu1613`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `phpu1613` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `phpu1613`;

--
-- Table structure for table `banjixiangce`
--

DROP TABLE IF EXISTS `banjixiangce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangcemingcheng` varchar(200) DEFAULT NULL COMMENT '相册名称',
  `suoshubanji` varchar(200) DEFAULT NULL COMMENT '所属班级',
  `xiangcemiaoshu` longtext COMMENT '相册描述',
  `xiangcetupian` varchar(200) DEFAULT NULL COMMENT '相册图片',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='班级相册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixiangce`
--

LOCK TABLES `banjixiangce` WRITE;
/*!40000 ALTER TABLE `banjixiangce` DISABLE KEYS */;
INSERT INTO `banjixiangce` VALUES (61,'2022-03-25 04:47:58','相册名称1','所属班级1','相册描述1','upload/banjixiangce_xiangcetupian1.jpg','2022-03-25 12:47:58','教师编号1','教师姓名1',1),(62,'2022-03-25 04:47:58','相册名称2','所属班级2','相册描述2','upload/banjixiangce_xiangcetupian2.jpg','2022-03-25 12:47:58','教师编号2','教师姓名2',2),(63,'2022-03-25 04:47:58','相册名称3','所属班级3','相册描述3','upload/banjixiangce_xiangcetupian3.jpg','2022-03-25 12:47:58','教师编号3','教师姓名3',3),(64,'2022-03-25 04:47:58','相册名称4','所属班级4','相册描述4','upload/banjixiangce_xiangcetupian4.jpg','2022-03-25 12:47:58','教师编号4','教师姓名4',4),(65,'2022-03-25 04:47:58','相册名称5','所属班级5','相册描述5','upload/banjixiangce_xiangcetupian5.jpg','2022-03-25 12:47:58','教师编号5','教师姓名5',5),(66,'2022-03-25 04:47:58','相册名称6','所属班级6','相册描述6','upload/banjixiangce_xiangcetupian6.jpg','2022-03-25 12:47:58','教师编号6','教师姓名6',6);
/*!40000 ALTER TABLE `banjixiangce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjibianhao` varchar(200) DEFAULT NULL COMMENT '班级编号',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `banjiweizhi` varchar(200) DEFAULT NULL COMMENT '班级位置',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `banjijieshao` longtext COMMENT '班级介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banjibianhao` (`banjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (31,'2022-03-25 04:47:58','班级编号1','班级名称1','班级位置1','班主任1','班级介绍1'),(32,'2022-03-25 04:47:58','班级编号2','班级名称2','班级位置2','班主任2','班级介绍2'),(33,'2022-03-25 04:47:58','班级编号3','班级名称3','班级位置3','班主任3','班级介绍3'),(34,'2022-03-25 04:47:58','班级编号4','班级名称4','班级位置4','班主任4','班级介绍4'),(35,'2022-03-25 04:47:58','班级编号5','班级名称5','班级位置5','班主任5','班级介绍5'),(36,'2022-03-25 04:47:58','班级编号6','班级名称6','班级位置6','班主任6','班级介绍6');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengjixinxi`
--

DROP TABLE IF EXISTS `chengjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `chengji` float DEFAULT NULL COMMENT '成绩',
  `paiming` int(11) DEFAULT NULL COMMENT '排名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='成绩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjixinxi`
--

LOCK TABLES `chengjixinxi` WRITE;
/*!40000 ALTER TABLE `chengjixinxi` DISABLE KEYS */;
INSERT INTO `chengjixinxi` VALUES (121,'2022-03-25 04:47:58','姓名1','男','班级1','科目1',1,1,'upload/chengjixinxi_tupian1.jpg','教师编号1','教师姓名1'),(122,'2022-03-25 04:47:58','姓名2','男','班级2','科目2',2,2,'upload/chengjixinxi_tupian2.jpg','教师编号2','教师姓名2'),(123,'2022-03-25 04:47:58','姓名3','男','班级3','科目3',3,3,'upload/chengjixinxi_tupian3.jpg','教师编号3','教师姓名3'),(124,'2022-03-25 04:47:58','姓名4','男','班级4','科目4',4,4,'upload/chengjixinxi_tupian4.jpg','教师编号4','教师姓名4'),(125,'2022-03-25 04:47:58','姓名5','男','班级5','科目5',5,5,'upload/chengjixinxi_tupian5.jpg','教师编号5','教师姓名5'),(126,'2022-03-25 04:47:58','姓名6','男','班级6','科目6',6,6,'upload/chengjixinxi_tupian6.jpg','教师编号6','教师姓名6');
/*!40000 ALTER TABLE `chengjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (131,'2022-03-25 04:47:58','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(132,'2022-03-25 04:47:58','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(133,'2022-03-25 04:47:58','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(134,'2022-03-25 04:47:58','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(135,'2022-03-25 04:47:58','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(136,'2022-03-25 04:47:58','帖子标题6','帖子内容6',0,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdaka`
--

DROP TABLE IF EXISTS `jiankangdaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shentiqingkuang` varchar(200) DEFAULT NULL COMMENT '身体情况',
  `shifoufare` varchar(200) DEFAULT NULL COMMENT '是否发热',
  `shifoukesou` varchar(200) DEFAULT NULL COMMENT '是否咳嗽',
  `jiechushi` varchar(200) DEFAULT NULL COMMENT '接触史',
  `dakashijian` date DEFAULT NULL COMMENT '打卡时间',
  `dakadidian` varchar(200) DEFAULT NULL COMMENT '打卡地点',
  `jiankangma` varchar(200) DEFAULT NULL COMMENT '健康码',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='健康打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdaka`
--

LOCK TABLES `jiankangdaka` WRITE;
/*!40000 ALTER TABLE `jiankangdaka` DISABLE KEYS */;
INSERT INTO `jiankangdaka` VALUES (81,'2022-03-25 04:47:58','账号1','姓名1','体温1','正常','是','是','有','2022-03-25','打卡地点1','upload/jiankangdaka_jiankangma1.jpg',1),(82,'2022-03-25 04:47:58','账号2','姓名2','体温2','正常','是','是','有','2022-03-25','打卡地点2','upload/jiankangdaka_jiankangma2.jpg',2),(83,'2022-03-25 04:47:58','账号3','姓名3','体温3','正常','是','是','有','2022-03-25','打卡地点3','upload/jiankangdaka_jiankangma3.jpg',3),(84,'2022-03-25 04:47:58','账号4','姓名4','体温4','正常','是','是','有','2022-03-25','打卡地点4','upload/jiankangdaka_jiankangma4.jpg',4),(85,'2022-03-25 04:47:58','账号5','姓名5','体温5','正常','是','是','有','2022-03-25','打卡地点5','upload/jiankangdaka_jiankangma5.jpg',5),(86,'2022-03-25 04:47:58','账号6','姓名6','体温6','正常','是','是','有','2022-03-25','打卡地点6','upload/jiankangdaka_jiankangma6.jpg',6);
/*!40000 ALTER TABLE `jiankangdaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeibianhao` varchar(200) DEFAULT NULL COMMENT '缴费编号',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `jiaofeijine` float DEFAULT NULL COMMENT '缴费金额',
  `feiyongmiaoshu` longtext COMMENT '费用描述',
  `jiaofeishijian` datetime DEFAULT NULL COMMENT '缴费时间',
  `feiyongtupian` varchar(200) DEFAULT NULL COMMENT '费用图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (71,'2022-03-25 04:47:58','缴费编号1','学费',1,'费用描述1','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian1.jpg','账号1','姓名1','未支付',1),(72,'2022-03-25 04:47:58','缴费编号2','学费',2,'费用描述2','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian2.jpg','账号2','姓名2','未支付',2),(73,'2022-03-25 04:47:58','缴费编号3','学费',3,'费用描述3','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian3.jpg','账号3','姓名3','未支付',3),(74,'2022-03-25 04:47:58','缴费编号4','学费',4,'费用描述4','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian4.jpg','账号4','姓名4','未支付',4),(75,'2022-03-25 04:47:58','缴费编号5','学费',5,'费用描述5','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian5.jpg','账号5','姓名5','未支付',5),(76,'2022-03-25 04:47:58','缴费编号6','学费',6,'费用描述6','2022-03-25 12:47:58','upload/jiaofeixinxi_feiyongtupian6.jpg','账号6','姓名6','未支付',6);
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshibianhao` varchar(200) NOT NULL COMMENT '教师编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshibianhao` (`jiaoshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-25 04:47:58','教师编号1','123456','教师姓名1','男','13823888881','班级1','职务1','upload/jiaoshi_tupian1.jpg'),(22,'2022-03-25 04:47:58','教师编号2','123456','教师姓名2','男','13823888882','班级2','职务2','upload/jiaoshi_tupian2.jpg'),(23,'2022-03-25 04:47:58','教师编号3','123456','教师姓名3','男','13823888883','班级3','职务3','upload/jiaoshi_tupian3.jpg'),(24,'2022-03-25 04:47:58','教师编号4','123456','教师姓名4','男','13823888884','班级4','职务4','upload/jiaoshi_tupian4.jpg'),(25,'2022-03-25 04:47:58','教师编号5','123456','教师姓名5','男','13823888885','班级5','职务5','upload/jiaoshi_tupian5.jpg'),(26,'2022-03-25 04:47:58','教师编号6','123456','教师姓名6','男','13823888886','班级6','职务6','upload/jiaoshi_tupian6.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengbiao`
--

DROP TABLE IF EXISTS `kechengbiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhoushu` varchar(200) DEFAULT NULL COMMENT '周数',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `kechengbiao` longtext COMMENT '课程表',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengbiao`
--

LOCK TABLES `kechengbiao` WRITE;
/*!40000 ALTER TABLE `kechengbiao` DISABLE KEYS */;
INSERT INTO `kechengbiao` VALUES (91,'2022-03-25 04:47:58','周数1','2022-03-25','课程表1','upload/kechengbiao_tupian1.jpg','账号1','姓名1',1),(92,'2022-03-25 04:47:58','周数2','2022-03-25','课程表2','upload/kechengbiao_tupian2.jpg','账号2','姓名2',2),(93,'2022-03-25 04:47:58','周数3','2022-03-25','课程表3','upload/kechengbiao_tupian3.jpg','账号3','姓名3',3),(94,'2022-03-25 04:47:58','周数4','2022-03-25','课程表4','upload/kechengbiao_tupian4.jpg','账号4','姓名4',4),(95,'2022-03-25 04:47:58','周数5','2022-03-25','课程表5','upload/kechengbiao_tupian5.jpg','账号5','姓名5',5),(96,'2022-03-25 04:47:58','周数6','2022-03-25','课程表6','upload/kechengbiao_tupian6.jpg','账号6','姓名6',6);
/*!40000 ALTER TABLE `kechengbiao` ENABLE KEYS */;
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
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (151,'2022-03-25 04:47:58',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(152,'2022-03-25 04:47:58',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(153,'2022-03-25 04:47:58',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(154,'2022-03-25 04:47:58',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(155,'2022-03-25 04:47:58',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(156,'2022-03-25 04:47:58',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2022-03-25 04:47:58','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(142,'2022-03-25 04:47:58','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(143,'2022-03-25 04:47:58','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(144,'2022-03-25 04:47:58','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(145,'2022-03-25 04:47:58','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(146,'2022-03-25 04:47:58','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `huilaishijian` datetime DEFAULT NULL COMMENT '回来时间',
  `qingjiashiyou` longtext COMMENT '请假事由',
  `qingjiatupian` varchar(200) DEFAULT NULL COMMENT '请假图片',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (111,'2022-03-25 04:47:58','账号1','姓名1','班级1','13823888881','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由1','upload/qingjiashenqing_qingjiatupian1.jpg','教师编号1','是','',1),(112,'2022-03-25 04:47:58','账号2','姓名2','班级2','13823888882','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由2','upload/qingjiashenqing_qingjiatupian2.jpg','教师编号2','是','',2),(113,'2022-03-25 04:47:58','账号3','姓名3','班级3','13823888883','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由3','upload/qingjiashenqing_qingjiatupian3.jpg','教师编号3','是','',3),(114,'2022-03-25 04:47:58','账号4','姓名4','班级4','13823888884','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由4','upload/qingjiashenqing_qingjiatupian4.jpg','教师编号4','是','',4),(115,'2022-03-25 04:47:58','账号5','姓名5','班级5','13823888885','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由5','upload/qingjiashenqing_qingjiatupian5.jpg','教师编号5','是','',5),(116,'2022-03-25 04:47:58','账号6','姓名6','班级6','13823888886','2022-03-25 12:47:58','2022-03-25 12:47:58','请假事由6','upload/qingjiashenqing_qingjiatupian6.jpg','教师编号6','是','',6);
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongxunlu`
--

DROP TABLE IF EXISTS `tongxunlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongxunlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='通讯录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongxunlu`
--

LOCK TABLES `tongxunlu` WRITE;
/*!40000 ALTER TABLE `tongxunlu` DISABLE KEYS */;
INSERT INTO `tongxunlu` VALUES (101,'2022-03-25 04:47:58','姓名1','男',1,'班级1','住址1','13823888881','备注1','upload/tongxunlu_touxiang1.jpg','教师编号1','教师姓名1'),(102,'2022-03-25 04:47:58','姓名2','男',2,'班级2','住址2','13823888882','备注2','upload/tongxunlu_touxiang2.jpg','教师编号2','教师姓名2'),(103,'2022-03-25 04:47:58','姓名3','男',3,'班级3','住址3','13823888883','备注3','upload/tongxunlu_touxiang3.jpg','教师编号3','教师姓名3'),(104,'2022-03-25 04:47:58','姓名4','男',4,'班级4','住址4','13823888884','备注4','upload/tongxunlu_touxiang4.jpg','教师编号4','教师姓名4'),(105,'2022-03-25 04:47:58','姓名5','男',5,'班级5','住址5','13823888885','备注5','upload/tongxunlu_touxiang5.jpg','教师编号5','教师姓名5'),(106,'2022-03-25 04:47:58','姓名6','男',6,'班级6','住址6','13823888886','备注6','upload/tongxunlu_touxiang6.jpg','教师编号6','教师姓名6');
/*!40000 ALTER TABLE `tongxunlu` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-25 04:47:58');
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-25 04:47:58','账号1','123456','姓名1','男','13823888881','住址1','班级1','upload/yonghu_touxiang1.jpg'),(12,'2022-03-25 04:47:58','账号2','123456','姓名2','男','13823888882','住址2','班级2','upload/yonghu_touxiang2.jpg'),(13,'2022-03-25 04:47:58','账号3','123456','姓名3','男','13823888883','住址3','班级3','upload/yonghu_touxiang3.jpg'),(14,'2022-03-25 04:47:58','账号4','123456','姓名4','男','13823888884','住址4','班级4','upload/yonghu_touxiang4.jpg'),(15,'2022-03-25 04:47:58','账号5','123456','姓名5','男','13823888885','住址5','班级5','upload/yonghu_touxiang5.jpg'),(16,'2022-03-25 04:47:58','账号6','123456','姓名6','男','13823888886','住址6','班级6','upload/yonghu_touxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyefabu`
--

DROP TABLE IF EXISTS `zuoyefabu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyefabu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `suoshubanji` varchar(200) DEFAULT NULL COMMENT '所属班级',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `tijiaoqixian` datetime DEFAULT NULL COMMENT '提交期限',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='作业发布';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyefabu`
--

LOCK TABLES `zuoyefabu` WRITE;
/*!40000 ALTER TABLE `zuoyefabu` DISABLE KEYS */;
INSERT INTO `zuoyefabu` VALUES (41,'2022-03-25 04:47:58','作业名称1','所属班级1','作业内容1','upload/zuoyefabu_zuoyetupian1.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号1','教师姓名1'),(42,'2022-03-25 04:47:58','作业名称2','所属班级2','作业内容2','upload/zuoyefabu_zuoyetupian2.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号2','教师姓名2'),(43,'2022-03-25 04:47:58','作业名称3','所属班级3','作业内容3','upload/zuoyefabu_zuoyetupian3.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号3','教师姓名3'),(44,'2022-03-25 04:47:58','作业名称4','所属班级4','作业内容4','upload/zuoyefabu_zuoyetupian4.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号4','教师姓名4'),(45,'2022-03-25 04:47:58','作业名称5','所属班级5','作业内容5','upload/zuoyefabu_zuoyetupian5.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号5','教师姓名5'),(46,'2022-03-25 04:47:58','作业名称6','所属班级6','作业内容6','upload/zuoyefabu_zuoyetupian6.jpg','2022-03-25 12:47:58','2022-03-25 12:47:58','教师编号6','教师姓名6');
/*!40000 ALTER TABLE `zuoyefabu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyefankui`
--

DROP TABLE IF EXISTS `zuoyefankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyefankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `suoshubanji` varchar(200) DEFAULT NULL COMMENT '所属班级',
  `tijiaoneirong` longtext COMMENT '提交内容',
  `tijiaotupian` varchar(200) DEFAULT NULL COMMENT '提交图片',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `jiaoshibianhao` varchar(200) DEFAULT NULL COMMENT '教师编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='作业反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyefankui`
--

LOCK TABLES `zuoyefankui` WRITE;
/*!40000 ALTER TABLE `zuoyefankui` DISABLE KEYS */;
INSERT INTO `zuoyefankui` VALUES (51,'2022-03-25 04:47:58','作业名称1','所属班级1','提交内容1','upload/zuoyefankui_tijiaotupian1.jpg','2022-03-25 12:47:58','教师编号1','账号1','姓名1','是','',1),(52,'2022-03-25 04:47:58','作业名称2','所属班级2','提交内容2','upload/zuoyefankui_tijiaotupian2.jpg','2022-03-25 12:47:58','教师编号2','账号2','姓名2','是','',2),(53,'2022-03-25 04:47:58','作业名称3','所属班级3','提交内容3','upload/zuoyefankui_tijiaotupian3.jpg','2022-03-25 12:47:58','教师编号3','账号3','姓名3','是','',3),(54,'2022-03-25 04:47:58','作业名称4','所属班级4','提交内容4','upload/zuoyefankui_tijiaotupian4.jpg','2022-03-25 12:47:58','教师编号4','账号4','姓名4','是','',4),(55,'2022-03-25 04:47:58','作业名称5','所属班级5','提交内容5','upload/zuoyefankui_tijiaotupian5.jpg','2022-03-25 12:47:58','教师编号5','账号5','姓名5','是','',5),(56,'2022-03-25 04:47:58','作业名称6','所属班级6','提交内容6','upload/zuoyefankui_tijiaotupian6.jpg','2022-03-25 12:47:58','教师编号6','账号6','姓名6','是','',6);
/*!40000 ALTER TABLE `zuoyefankui` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-26 10:26:55
