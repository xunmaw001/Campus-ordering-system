-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmmmjc4
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
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `shangjiaming` varchar(200) DEFAULT NULL COMMENT '商家名',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `zhuliao` longtext COMMENT '主料',
  `fenliang` int(11) DEFAULT NULL COMMENT '份量',
  `meishijieshao` longtext COMMENT '美食介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616559272395 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (41,'2021-03-24 03:58:39','101','1','粤菜','美食22','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian1.jpg',12,'猪肉',111,'好吃到爆',2,2,'2021-03-24 12:12:20',8),(43,'2021-03-24 03:58:39','商家编号3','商家名3','菜系3','美食名称3','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian3.jpg',3,'主料3',3,'美食介绍3',3,3,'2021-03-24 11:58:39',3),(44,'2021-03-24 03:58:39','商家编号4','商家名4','菜系4','美食名称4','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian4.jpg',4,'主料4',4,'美食介绍4',4,4,'2021-03-24 11:58:39',4),(45,'2021-03-24 03:58:39','商家编号5','商家名5','菜系5','美食名称5','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian5.jpg',5,'主料5',5,'美食介绍5',5,5,'2021-03-24 11:58:39',5),(46,'2021-03-24 03:58:39','商家编号6','商家名6','菜系6','美食名称6','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian6.jpg',6,'主料6',6,'美食介绍6',6,6,'2021-03-24 12:11:22',7),(1616559260960,'2021-03-24 04:14:20','101','北大美食','粤菜','美食1231','http://localhost:8080/jspmmmjc4/upload/1616559252335.jpg',12,'12213',111,'2133111',0,0,NULL,0),(1616559272394,'2021-03-24 04:14:32','101','北大美食','川菜','美食名称5','http://localhost:8080/jspmmmjc4/upload/1616559282199.jpg',121,'121',12,'1213',0,0,'2021-03-24 12:14:37',2);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixifenlei`
--

DROP TABLE IF EXISTS `caixifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616559230800 DEFAULT CHARSET=utf8 COMMENT='菜系分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixifenlei`
--

LOCK TABLES `caixifenlei` WRITE;
/*!40000 ALTER TABLE `caixifenlei` DISABLE KEYS */;
INSERT INTO `caixifenlei` VALUES (31,'2021-03-24 03:58:39','粤菜'),(1616558757233,'2021-03-24 04:05:56','湘菜'),(1616558770473,'2021-03-24 04:06:09','川菜'),(1616558780351,'2021-03-24 04:06:20','鲁菜'),(1616559230799,'2021-03-24 04:13:50','好菜');
/*!40000 ALTER TABLE `caixifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='联系商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-24 03:58:39',1,1,'‍提问1\r\n','好的，已收到\r\n',0),(62,'2021-03-24 03:58:39',2,2,'提问2','回复2',2),(63,'2021-03-24 03:58:39',3,3,'提问3','回复3',3),(64,'2021-03-24 03:58:39',4,4,'提问4','回复4',4),(65,'2021-03-24 03:58:39',5,5,'提问5','回复5',5),(66,'2021-03-24 03:58:39',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmmmjc4/upload/1616558980753.jpeg'),(2,'picture2','http://localhost:8080/jspmmmjc4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmmmjc4/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (71,'2021-03-24 03:58:39','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture1.jpg','773890001@qq.com'),(72,'2021-03-24 03:58:39','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture2.jpg','773890002@qq.com'),(73,'2021-03-24 03:58:39','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture3.jpg','773890003@qq.com'),(74,'2021-03-24 03:58:39','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture4.jpg','773890004@qq.com'),(75,'2021-03-24 03:58:39','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture5.jpg','773890005@qq.com'),(76,'2021-03-24 03:58:39','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/jspmmmjc4/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusscaipinxinxi` VALUES (101,'2021-03-24 03:58:39',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-24 03:58:39',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-24 03:58:39',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-24 03:58:39',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-24 03:58:39',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-24 03:58:39',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='美食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (92,'2021-03-24 03:58:39','标题2','简介2','http://localhost:8080/jspmmmjc4/upload/news_picture2.jpg','内容2'),(96,'2021-03-24 03:58:39','标题6','简介6','http://localhost:8080/jspmmmjc4/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) NOT NULL COMMENT '商家编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `shangjiaming` varchar(200) DEFAULT NULL COMMENT '商家名',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `yingyezhizhao` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiabianhao` (`shangjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616558667353 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (22,'2021-03-24 03:58:39','商家2','123456','商家名2','负责人2','13823888882','商家地址2','http://localhost:8080/jspmmmjc4/upload/shangjia_yingyezhizhao2.jpg','否','营业执照不正确\r\n'),(24,'2021-03-24 03:58:39','商家4','123456','商家名4','负责人4','13823888884','商家地址4','http://localhost:8080/jspmmmjc4/upload/shangjia_yingyezhizhao4.jpg','是',''),(25,'2021-03-24 03:58:39','商家5','123456','商家名5','负责人5','13823888885','商家地址5','http://localhost:8080/jspmmmjc4/upload/shangjia_yingyezhizhao5.jpg','是',''),(26,'2021-03-24 03:58:39','商家6','123456','商家名6','负责人6','13823888886','商家地址6','http://localhost:8080/jspmmmjc4/upload/shangjia_yingyezhizhao6.jpg','是',''),(1616558667352,'2021-03-24 04:04:27','101','1','北大美食','李忠','13800138000','商家地商家','http://localhost:8080/jspmmmjc4/upload/1616558666240.jpg','是','');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1616559104300 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616559104299,'2021-03-24 04:11:43',11,41,'caipinxinxi','美食22','http://localhost:8080/jspmmmjc4/upload/caipinxinxi_tupian1.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','vg71d2v7g3wp9vu7llwidjmyb6j06pxk','2021-03-24 04:01:04','2021-03-24 05:13:00'),(2,11,'101','yonghu','用户','8gn54uye8xxoo2tuqzwldx86xt5txp8f','2021-03-24 04:11:09','2021-03-24 05:11:10'),(3,1616558667352,'101','shangjia','商家','fnnpno053r9uv8ac0cpwn32xl40iqbuk','2021-03-24 04:13:26','2021-03-24 05:13:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-24 03:58:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waimaidingdan`
--

DROP TABLE IF EXISTS `waimaidingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waimaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `shangjiaming` varchar(200) DEFAULT NULL COMMENT '商家名',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `fenliang` int(11) DEFAULT NULL COMMENT '份量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `qucanshijian` datetime DEFAULT NULL COMMENT '取餐时间',
  `qucanfangshi` varchar(200) DEFAULT NULL COMMENT '取餐方式',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616559120815 DEFAULT CHARSET=utf8 COMMENT='外卖订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waimaidingdan`
--

LOCK TABLES `waimaidingdan` WRITE;
/*!40000 ALTER TABLE `waimaidingdan` DISABLE KEYS */;
INSERT INTO `waimaidingdan` VALUES (1616559120814,'2021-03-24 04:12:00','202132412115127252061','101','1','美食22','','101','王五','13823888881','学生公寓1213',1,0,0,NULL,NULL,'','是','派送中','未支付');
/*!40000 ALTER TABLE `waimaidingdan` ENABLE KEYS */;
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
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuanxi` varchar(200) NOT NULL COMMENT '院系',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `dizhi` longtext COMMENT '地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-24 03:58:39','101','1','王五','男','http://localhost:8080/jspmmmjc4/upload/1616558509618.jpg','院系2','13823888881','学生公寓1213','是',''),(13,'2021-03-24 03:58:39','用户3','123456','姓名3','男','http://localhost:8080/jspmmmjc4/upload/yonghu_zhaopian3.jpg','院系3','13823888883','地址3','否','请核对信息'),(14,'2021-03-24 03:58:39','用户4','123456','姓名4','男','http://localhost:8080/jspmmmjc4/upload/yonghu_zhaopian4.jpg','院系4','13823888884','地址4','是',''),(15,'2021-03-24 03:58:39','用户5','123456','姓名5','男','http://localhost:8080/jspmmmjc4/upload/yonghu_zhaopian5.jpg','院系5','13823888885','地址5','是',''),(16,'2021-03-24 03:58:39','用户6','123456','姓名6','男','http://localhost:8080/jspmmmjc4/upload/yonghu_zhaopian6.jpg','院系6','13823888886','地址6','是','');
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

-- Dump completed on 2021-03-25 20:04:40
