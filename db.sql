/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoshixinchou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoshixinchou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoshixinchou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-25 16:12:34'),(18,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-25 16:12:35'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-25 16:12:35'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-25 16:12:35'),(21,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-25 16:12:35'),(22,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-25 16:12:35'),(23,'tiaoke_types','调课申请类型',1,'调课申请类型1',NULL,NULL,'2023-04-25 16:12:35'),(24,'tiaoke_types','调课申请类型',2,'调课申请类型2',NULL,NULL,'2023-04-25 16:12:35'),(25,'tiaoke_types','调课申请类型',3,'调课申请类型3',NULL,NULL,'2023-04-25 16:12:35'),(26,'tiaoke_types','调课申请类型',4,'调课申请类型4',NULL,NULL,'2023-04-25 16:12:35'),(27,'tiaoke_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-25 16:12:35'),(28,'tiaoke_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-25 16:12:35'),(29,'tiaoke_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-25 16:12:35'),(30,'laoshiqingjia_types','请假类型',1,'生病',NULL,NULL,'2023-04-25 16:12:35'),(31,'laoshiqingjia_types','请假类型',2,'有事',NULL,NULL,'2023-04-25 16:12:35'),(32,'laoshiqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-25 16:12:35'),(33,'laoshiqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-25 16:12:35'),(34,'laoshiqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-25 16:12:35'),(35,'laoshikaoqin_types','考勤结果',1,'正常在岗',NULL,NULL,'2023-04-25 16:12:35'),(36,'laoshikaoqin_types','考勤结果',2,'异常',NULL,NULL,'2023-04-25 16:12:35'),(37,'laoshikaoqin_types','考勤结果',3,'请假',NULL,NULL,'2023-04-25 16:12:35'),(38,'jiaoxuezhiliang_types','考核结果',1,'非常差',NULL,NULL,'2023-04-25 16:12:35'),(39,'jiaoxuezhiliang_types','考核结果',2,'差',NULL,NULL,'2023-04-25 16:12:35'),(40,'jiaoxuezhiliang_types','考核结果',3,'一般',NULL,NULL,'2023-04-25 16:12:35'),(41,'jiaoxuezhiliang_types','考核结果',4,'好',NULL,NULL,'2023-04-25 16:12:35'),(42,'jiaoxuezhiliang_types','考核结果',5,'非常好',NULL,NULL,'2023-04-25 16:12:35'),(43,'keyan_types','科研类型',1,'科研类型1',NULL,NULL,'2023-04-25 16:12:35'),(44,'keyan_types','科研类型',2,'科研类型2',NULL,NULL,'2023-04-25 16:12:35'),(45,'keyan_types','科研类型',3,'科研类型3',NULL,NULL,'2023-04-25 16:12:35'),(46,'keyan_types','科研类型',4,'科研类型4',NULL,NULL,'2023-04-25 16:12:35'),(47,'tiaoke_types','调课申请类型',5,'调课申请类型5',NULL,'','2023-04-25 17:20:38');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-25 16:13:12','公告详情1','2023-04-25 16:13:12'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-25 16:13:12','公告详情2','2023-04-25 16:13:12'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-25 16:13:12','公告详情3','2023-04-25 16:13:12'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-25 16:13:12','公告详情4','2023-04-25 16:13:12'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-25 16:13:12','公告详情5','2023-04-25 16:13:12'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-25 16:13:12','公告详情6','2023-04-25 16:13:12'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-25 16:13:12','公告详情7','2023-04-25 16:13:12'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-25 16:13:12','公告详情8','2023-04-25 16:13:12'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-25 16:13:12','公告详情9','2023-04-25 16:13:12'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-25 16:13:12','公告详情10','2023-04-25 16:13:12'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-25 16:13:12','公告详情11','2023-04-25 16:13:12'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-25 16:13:12','公告详情12','2023-04-25 16:13:12'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-25 16:13:12','公告详情13','2023-04-25 16:13:12'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-25 16:13:12','公告详情14','2023-04-25 16:13:12');

/*Table structure for table `jiaoxuezhiliang` */

DROP TABLE IF EXISTS `jiaoxuezhiliang`;

CREATE TABLE `jiaoxuezhiliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `jiaoxuezhiliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '教学质量编号',
  `jiaoxuezhiliang_address` varchar(200) DEFAULT NULL COMMENT '考核地点',
  `jiaoxuezhiliang_file` varchar(200) DEFAULT NULL COMMENT '考核附件',
  `jiaoxuezhiliang_time` timestamp NULL DEFAULT NULL COMMENT '考核时间',
  `jiaoxuezhiliang_types` int(11) DEFAULT NULL COMMENT '考核结果 Search111',
  `jiaoxuezhiliang_content` longtext COMMENT '考核内容',
  `jiaoxuezhiliang_pingyu_content` longtext COMMENT '考核评语',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教学质量';

/*Data for the table `jiaoxuezhiliang` */

insert  into `jiaoxuezhiliang`(`id`,`laoshi_id`,`jiaoxuezhiliang_uuid_number`,`jiaoxuezhiliang_address`,`jiaoxuezhiliang_file`,`jiaoxuezhiliang_time`,`jiaoxuezhiliang_types`,`jiaoxuezhiliang_content`,`jiaoxuezhiliang_pingyu_content`,`insert_time`,`create_time`) values (1,2,'1682410392162','考核地点1','upload/file.rar','2023-04-25 16:13:12',4,'考核内容1','考核评语1','2023-04-25 16:13:12','2023-04-25 16:13:12'),(2,2,'1682410392171','考核地点2','upload/file.rar','2023-04-25 16:13:12',2,'考核内容2','考核评语2','2023-04-25 16:13:12','2023-04-25 16:13:12'),(3,3,'1682410392114','考核地点3','upload/file.rar','2023-04-25 16:13:12',4,'考核内容3','考核评语3','2023-04-25 16:13:12','2023-04-25 16:13:12'),(4,3,'1682410392134','考核地点4','upload/file.rar','2023-04-25 16:13:12',3,'考核内容4','考核评语4','2023-04-25 16:13:12','2023-04-25 16:13:12'),(5,3,'1682410392134','考核地点5','upload/file.rar','2023-04-25 16:13:12',4,'考核内容5','考核评语5','2023-04-25 16:13:12','2023-04-25 16:13:12'),(6,3,'1682410392170','考核地点6','upload/file.rar','2023-04-25 16:13:12',4,'考核内容6','考核评语6','2023-04-25 16:13:12','2023-04-25 16:13:12'),(7,1,'1682410392120','考核地点7','upload/file.rar','2023-04-25 16:13:12',1,'考核内容7','考核评语7','2023-04-25 16:13:12','2023-04-25 16:13:12'),(8,2,'1682410392173','考核地点8','upload/file.rar','2023-04-25 16:13:12',3,'考核内容8','考核评语8','2023-04-25 16:13:12','2023-04-25 16:13:12'),(9,3,'1682410392187','考核地点9','upload/file.rar','2023-04-25 16:13:12',1,'考核内容9','考核评语9','2023-04-25 16:13:12','2023-04-25 16:13:12'),(10,2,'1682410392162','考核地点10','upload/file.rar','2023-04-25 16:13:12',2,'考核内容10','考核评语10','2023-04-25 16:13:12','2023-04-25 16:13:12'),(11,3,'1682410392159','考核地点11','upload/file.rar','2023-04-25 16:13:12',5,'考核内容11','考核评语11','2023-04-25 16:13:12','2023-04-25 16:13:12'),(12,2,'1682410392142','考核地点12','upload/file.rar','2023-04-25 16:13:12',2,'考核内容12','考核评语12','2023-04-25 16:13:12','2023-04-25 16:13:12'),(13,1,'1682410392105','考核地点13','upload/file.rar','2023-04-25 16:13:12',2,'考核内容13','考核评语13','2023-04-25 16:13:12','2023-04-25 16:13:12'),(14,2,'1682410392106','考核地点14','upload/file.rar','2023-04-25 16:13:12',3,'考核内容14','考核评语14','2023-04-25 16:13:12','2023-04-25 16:13:12'),(15,1,'1682414442606','地点11111','/upload/1682414453400.doc','2023-04-25 17:20:54',4,'<p>高大上疙瘩是多少发货房东说发的回访电话地方价格价格附加费</p>','<p>哼哼唧唧军军军军军军军军</p>','2023-04-25 17:21:04','2023-04-25 17:21:04');

/*Table structure for table `keyan` */

DROP TABLE IF EXISTS `keyan`;

CREATE TABLE `keyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `keyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '科研编号',
  `keyan_name` varchar(200) DEFAULT NULL COMMENT '科研名称  Search111 ',
  `keyan_address` varchar(200) DEFAULT NULL COMMENT '科研地点',
  `keyan_types` int(11) DEFAULT NULL COMMENT '科研类型 Search111',
  `keyan_content` longtext COMMENT '科研内容 ',
  `keyan_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '科研开始时间',
  `keyan_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '科研结束时间',
  `keyan_chengguo_file` varchar(200) DEFAULT NULL COMMENT '成果附件',
  `keyan_chengguo_content` longtext COMMENT '科研成果 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='科研';

/*Data for the table `keyan` */

insert  into `keyan`(`id`,`laoshi_id`,`keyan_uuid_number`,`keyan_name`,`keyan_address`,`keyan_types`,`keyan_content`,`keyan_kaishi_time`,`keyan_jieshu_time`,`keyan_chengguo_file`,`keyan_chengguo_content`,`insert_time`,`create_time`) values (1,3,'1682410392114','科研名称1','科研地点1',2,'科研内容1','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果1','2023-04-25 16:13:12','2023-04-25 16:13:12'),(2,1,'1682410392156','科研名称2','科研地点2',2,'科研内容2','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果2','2023-04-25 16:13:12','2023-04-25 16:13:12'),(3,1,'1682410392192','科研名称3','科研地点3',4,'科研内容3','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果3','2023-04-25 16:13:12','2023-04-25 16:13:12'),(4,2,'1682410392107','科研名称4','科研地点4',3,'科研内容4','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果4','2023-04-25 16:13:12','2023-04-25 16:13:12'),(5,1,'1682410392130','科研名称5','科研地点5',3,'科研内容5','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果5','2023-04-25 16:13:12','2023-04-25 16:13:12'),(6,3,'1682410392198','科研名称6','科研地点6',1,'科研内容6','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果6','2023-04-25 16:13:12','2023-04-25 16:13:12'),(7,3,'1682410392105','科研名称7','科研地点7',1,'科研内容7','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果7','2023-04-25 16:13:12','2023-04-25 16:13:12'),(8,2,'1682410392179','科研名称8','科研地点8',3,'科研内容8','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果8','2023-04-25 16:13:12','2023-04-25 16:13:12'),(9,2,'1682410392174','科研名称9','科研地点9',4,'科研内容9','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果9','2023-04-25 16:13:12','2023-04-25 16:13:12'),(10,3,'1682410392120','科研名称10','科研地点10',1,'科研内容10','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果10','2023-04-25 16:13:12','2023-04-25 16:13:12'),(11,1,'1682410392167','科研名称11','科研地点11',1,'科研内容11','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果11','2023-04-25 16:13:12','2023-04-25 16:13:12'),(12,2,'1682410392199','科研名称12','科研地点12',1,'科研内容12','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果12','2023-04-25 16:13:12','2023-04-25 16:13:12'),(13,1,'1682410392130','科研名称13','科研地点13',4,'科研内容13','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果13','2023-04-25 16:13:12','2023-04-25 16:13:12'),(14,1,'1682410392134','科研名称14','科研地点14',3,'科研内容14','2023-04-25 16:13:12','2023-04-25 16:13:12','upload/file.rar','科研成果14','2023-04-25 16:13:12','2023-04-25 16:13:12'),(15,2,'1682414467188','科研21111','地点1111',3,'<p>广东省广东省固定事故地方时</p>','2023-04-25 17:21:18','2023-04-28 00:00:00','/upload/1682414483419.doc','<p>回复涣发大号翻山倒海</p>','2023-04-25 17:21:25','2023-04-25 17:21:25');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '老师编号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_uuid_number`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1682410392126','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com',1,'2023-04-25 16:13:12'),(2,'a2','123456','1682410392144','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com',1,'2023-04-25 16:13:12'),(3,'a3','123456','1682410392204','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com',2,'2023-04-25 16:13:12');

/*Table structure for table `laoshikaoqin` */

DROP TABLE IF EXISTS `laoshikaoqin`;

CREATE TABLE `laoshikaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `laoshikaoqin_types` int(11) DEFAULT NULL COMMENT '考勤结果 Search111 ',
  `laoshikaoqin_content` longtext COMMENT '考勤备注',
  `kaoqin_time` date DEFAULT NULL COMMENT '考勤日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='老师考勤';

/*Data for the table `laoshikaoqin` */

insert  into `laoshikaoqin`(`id`,`laoshi_id`,`laoshikaoqin_types`,`laoshikaoqin_content`,`kaoqin_time`,`insert_time`,`create_time`) values (1,3,3,'考勤备注1','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(2,3,1,'考勤备注2','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(3,1,2,'考勤备注3','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(4,2,3,'考勤备注4','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(5,2,2,'考勤备注5','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(6,1,2,'考勤备注6','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(7,1,3,'考勤备注7','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(8,1,1,'考勤备注8','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(9,3,2,'考勤备注9','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(10,2,2,'考勤备注10','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(11,2,1,'考勤备注11','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(12,1,3,'考勤备注12','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(13,1,1,'考勤备注13','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(14,2,1,'<p>考勤备注14个第三个十多个第三个</p>','2023-04-25','2023-04-25 16:13:12','2023-04-25 16:13:12'),(15,1,3,'<p>固定死但是跟都是干湿的</p>','2023-04-24','2023-04-25 17:23:02','2023-04-25 17:23:02');

/*Table structure for table `laoshiqingjia` */

DROP TABLE IF EXISTS `laoshiqingjia`;

CREATE TABLE `laoshiqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(200) DEFAULT NULL COMMENT '老师',
  `laoshiqingjia_text` longtext COMMENT '请假缘由',
  `laoshiqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `laoshiqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `laoshiqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `laoshiqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `laoshiqingjia_yesno_text` longtext COMMENT '处理意见',
  `laoshiqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='老师请假';

/*Data for the table `laoshiqingjia` */

insert  into `laoshiqingjia`(`id`,`laoshi_id`,`laoshiqingjia_text`,`laoshiqingjia_types`,`insert_time`,`laoshiqingjia_time`,`laoshiqingjia_number`,`laoshiqingjia_yesno_types`,`laoshiqingjia_yesno_text`,`laoshiqingjia_shenhe_time`,`create_time`) values (1,3,'请假缘由1',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',188,1,NULL,NULL,'2023-04-25 16:13:12'),(2,3,'请假缘由2',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',375,1,NULL,NULL,'2023-04-25 16:13:12'),(3,3,'请假缘由3',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',107,1,NULL,NULL,'2023-04-25 16:13:12'),(4,3,'请假缘由4',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',163,1,NULL,NULL,'2023-04-25 16:13:12'),(5,2,'请假缘由5',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',86,1,NULL,NULL,'2023-04-25 16:13:12'),(6,1,'请假缘由6',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',132,1,NULL,NULL,'2023-04-25 16:13:12'),(7,3,'请假缘由7',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',32,1,NULL,NULL,'2023-04-25 16:13:12'),(8,1,'请假缘由8',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',143,1,NULL,NULL,'2023-04-25 16:13:12'),(9,2,'请假缘由9',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',216,1,NULL,NULL,'2023-04-25 16:13:12'),(10,2,'请假缘由10',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',121,1,NULL,NULL,'2023-04-25 16:13:12'),(11,2,'请假缘由11',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',477,1,NULL,NULL,'2023-04-25 16:13:12'),(12,1,'请假缘由12',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',94,1,NULL,NULL,'2023-04-25 16:13:12'),(13,3,'请假缘由13',1,'2023-04-25 16:13:12','2023-04-25 16:13:12',300,1,NULL,NULL,'2023-04-25 16:13:12'),(14,1,'请假缘由14',2,'2023-04-25 16:13:12','2023-04-25 16:13:12',243,1,NULL,NULL,'2023-04-25 16:13:12'),(15,1,'请假111',1,'2023-04-25 17:19:43','2023-04-25 17:19:41',3,2,'个第三个第三个','2023-04-25 17:23:09','2023-04-25 17:19:43');

/*Table structure for table `tiaoke` */

DROP TABLE IF EXISTS `tiaoke`;

CREATE TABLE `tiaoke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `tiaoke_uuid_number` varchar(200) DEFAULT NULL COMMENT '调课申请编号',
  `tiaoke_name` varchar(200) DEFAULT NULL COMMENT '申请标题  Search111 ',
  `tiaoke_types` int(11) DEFAULT NULL COMMENT '调课申请类型 Search111',
  `tiaoke_yuan` varchar(200) DEFAULT NULL COMMENT '原上课时间',
  `tiaoke_xian` varchar(200) DEFAULT NULL COMMENT '申请调整时间',
  `tiaoke_content` longtext COMMENT '申请缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `tiaoke_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `tiaoke_yesno_text` longtext COMMENT '审核意见',
  `tiaoke_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='调课申请';

/*Data for the table `tiaoke` */

insert  into `tiaoke`(`id`,`laoshi_id`,`tiaoke_uuid_number`,`tiaoke_name`,`tiaoke_types`,`tiaoke_yuan`,`tiaoke_xian`,`tiaoke_content`,`insert_time`,`tiaoke_yesno_types`,`tiaoke_yesno_text`,`tiaoke_shenhe_time`,`create_time`) values (1,3,'1682410392159','申请标题1',4,'原上课时间1','申请调整时间1','申请缘由1','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(2,1,'1682410392202','申请标题2',1,'原上课时间2','申请调整时间2','申请缘由2','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(3,1,'1682410392152','申请标题3',3,'原上课时间3','申请调整时间3','申请缘由3','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(4,3,'1682410392140','申请标题4',3,'原上课时间4','申请调整时间4','申请缘由4','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(5,2,'1682410392208','申请标题5',3,'原上课时间5','申请调整时间5','申请缘由5','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(6,3,'1682410392207','申请标题6',2,'原上课时间6','申请调整时间6','申请缘由6','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(7,3,'1682410392173','申请标题7',1,'原上课时间7','申请调整时间7','申请缘由7','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(8,3,'1682410392123','申请标题8',4,'原上课时间8','申请调整时间8','申请缘由8','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(9,3,'1682410392131','申请标题9',1,'原上课时间9','申请调整时间9','申请缘由9','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(10,3,'1682410392188','申请标题10',3,'原上课时间10','申请调整时间10','申请缘由10','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(11,2,'1682410392131','申请标题11',2,'原上课时间11','申请调整时间11','申请缘由11','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(12,3,'1682410392129','申请标题12',2,'原上课时间12','申请调整时间12','申请缘由12','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(13,3,'1682410392203','申请标题13',1,'原上课时间13','申请调整时间13','申请缘由13','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(14,2,'1682410392199','申请标题14',3,'原上课时间14','申请调整时间14','申请缘由14','2023-04-25 16:13:12',1,NULL,NULL,'2023-04-25 16:13:12'),(15,1,'1682414386295','申请111',3,'2023年4月26日第一节课','2023年4月27日第二节课','<p>发的股份第三个发送到和大傻傻哒广东省发生的个十多个</p>','2023-04-25 17:20:14',2,'呵呵哈哈哈','2023-04-25 17:23:17','2023-04-25 17:20:14');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','tbh8qflk97ycfpbm5qnqnbffbcc537cn','2023-04-25 16:30:28','2023-04-25 18:27:37'),(2,1,'a1','laoshi','老师','tf5gm7kh8mgqwpo19f1jrg8v6i8z2tbj','2023-04-25 17:19:20','2023-04-25 18:19:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-25 16:12:34');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `yingdao_number` int(11) DEFAULT NULL COMMENT '应到天数',
  `shidao_number` int(11) DEFAULT NULL COMMENT '实到天数',
  `kouchu_jine` decimal(10,2) DEFAULT NULL COMMENT '扣除金额',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`laoshi_id`,`xinzi_uuid_number`,`xinzi_month`,`jiben_jine`,`jiangjin_jine`,`jixiao_jine`,`butie_jine`,`yingdao_number`,`shidao_number`,`kouchu_jine`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,3,'1682410392140','月份1','74.24','170.41','371.23','550.99',10,112,'429.76','330.24','备注1','2023-04-25 16:13:12','2023-04-25 16:13:12'),(2,3,'1682410392158','月份2','670.05','634.93','491.30','975.44',298,422,'540.82','514.63','备注2','2023-04-25 16:13:12','2023-04-25 16:13:12'),(3,3,'1682410392150','月份3','95.50','554.79','778.39','990.63',247,296,'294.02','21.53','备注3','2023-04-25 16:13:12','2023-04-25 16:13:12'),(4,2,'1682410392179','月份4','199.96','945.17','406.04','720.05',64,73,'477.11','986.64','备注4','2023-04-25 16:13:12','2023-04-25 16:13:12'),(5,2,'1682410392165','月份5','759.47','795.38','890.41','769.75',35,156,'273.64','292.75','备注5','2023-04-25 16:13:12','2023-04-25 16:13:12'),(6,2,'1682410392198','月份6','627.17','922.37','957.13','794.95',393,268,'134.67','680.96','备注6','2023-04-25 16:13:12','2023-04-25 16:13:12'),(7,1,'1682410392217','月份7','808.79','559.33','670.35','213.07',202,253,'856.18','520.15','备注7','2023-04-25 16:13:12','2023-04-25 16:13:12'),(8,1,'1682410392160','月份8','717.20','14.59','928.35','992.58',450,152,'173.94','458.78','备注8','2023-04-25 16:13:12','2023-04-25 16:13:12'),(9,2,'1682410392182','月份9','268.12','306.03','476.17','884.41',485,17,'180.32','39.24','备注9','2023-04-25 16:13:12','2023-04-25 16:13:12'),(10,3,'1682410392135','月份10','536.91','474.48','356.69','38.25',350,459,'59.65','714.70','备注10','2023-04-25 16:13:12','2023-04-25 16:13:12'),(11,3,'1682410392131','月份11','64.83','785.52','563.96','158.78',49,19,'542.15','762.57','备注11','2023-04-25 16:13:12','2023-04-25 16:13:12'),(12,1,'1682410392189','月份12','352.65','991.62','596.95','926.20',372,35,'228.60','992.73','备注12','2023-04-25 16:13:12','2023-04-25 16:13:12'),(13,1,'1682410392134','月份13','350.61','539.02','278.82','524.93',410,423,'251.70','836.35','备注13','2023-04-25 16:13:12','2023-04-25 16:13:12'),(14,1,'1682410392196','月份14','260.90','952.56','715.83','457.70',340,23,'675.38','155.10','备注14','2023-04-25 16:13:12','2023-04-25 16:13:12'),(15,1,'1682414602118','2023-04','300.00','400.00','200.00','600.00',30,29,'100.00','1400.00','<p>更多的是个第三个退房</p>','2023-04-25 17:23:40','2023-04-25 17:23:40'),(16,1,'1682414624111','2023-04','300.00','400.00','500.00','600.00',25,25,'0.00','1800.00','<p>固定死第三个第三个</p>','2023-04-25 17:24:06','2023-04-25 17:24:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
