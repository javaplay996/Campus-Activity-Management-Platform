/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssml1ro4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssml1ro4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssml1ro4`;

/*Table structure for table `changdi` */

DROP TABLE IF EXISTS `changdi`;

CREATE TABLE `changdi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdibianhao` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdiweizhi` varchar(200) DEFAULT NULL COMMENT '场地位置',
  `shifoukongxian` varchar(200) DEFAULT NULL COMMENT '是否空闲',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='场地';

/*Data for the table `changdi` */

insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (41,'2021-05-21 15:38:59','场地编号1','场地名称1','场地位置1','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian1.jpg');
insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (42,'2021-05-21 15:38:59','场地编号2','场地名称2','场地位置2','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian2.jpg');
insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (43,'2021-05-21 15:38:59','场地编号3','场地名称3','场地位置3','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian3.jpg');
insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (44,'2021-05-21 15:38:59','场地编号4','场地名称4','场地位置4','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian4.jpg');
insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (45,'2021-05-21 15:38:59','场地编号5','场地名称5','场地位置5','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian5.jpg');
insert  into `changdi`(`id`,`addtime`,`changdibianhao`,`changdimingcheng`,`changdiweizhi`,`shifoukongxian`,`tupian`) values (46,'2021-05-21 15:38:59','场地编号6','场地名称6','场地位置6','空闲','http://localhost:8080/ssml1ro4/upload/changdi_tupian6.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssml1ro4/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssml1ro4/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssml1ro4/upload/picture3.jpg');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `zanzhuqiye` varchar(200) DEFAULT NULL COMMENT '赞助企业',
  `huodongneirong` varchar(200) DEFAULT NULL COMMENT '活动内容',
  `huodongkaishishijian` varchar(200) DEFAULT NULL COMMENT '活动开始时间',
  `huodongjieshushijian` varchar(200) DEFAULT NULL COMMENT '活动结束时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `huodongchangdi` varchar(200) DEFAULT NULL COMMENT '活动场地',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (81,'2021-05-21 15:38:59','活动标题1','赞助企业1','活动内容1','活动开始时间1','活动结束时间1','负责人1','活动场地1','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian1.jpg','学号1','姓名1','2021-05-21','是','',1);
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (82,'2021-05-21 15:38:59','活动标题2','赞助企业2','活动内容2','活动开始时间2','活动结束时间2','负责人2','活动场地2','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian2.jpg','学号2','姓名2','2021-05-21','是','',2);
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (83,'2021-05-21 15:38:59','活动标题3','赞助企业3','活动内容3','活动开始时间3','活动结束时间3','负责人3','活动场地3','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian3.jpg','学号3','姓名3','2021-05-21','是','',3);
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (84,'2021-05-21 15:38:59','活动标题4','赞助企业4','活动内容4','活动开始时间4','活动结束时间4','负责人4','活动场地4','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian4.jpg','学号4','姓名4','2021-05-21','是','',4);
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (85,'2021-05-21 15:38:59','活动标题5','赞助企业5','活动内容5','活动开始时间5','活动结束时间5','负责人5','活动场地5','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian5.jpg','学号5','姓名5','2021-05-21','是','',5);
insert  into `huodongbaoming`(`id`,`addtime`,`huodongbiaoti`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`,`xuehao`,`xingming`,`baomingshijian`,`sfsh`,`shhf`,`userid`) values (86,'2021-05-21 15:38:59','活动标题6','赞助企业6','活动内容6','活动开始时间6','活动结束时间6','负责人6','活动场地6','http://localhost:8080/ssml1ro4/upload/huodongbaoming_zhaopian6.jpg','学号6','姓名6','2021-05-21','是','',6);

/*Table structure for table `huodongcanyurenyuan` */

DROP TABLE IF EXISTS `huodongcanyurenyuan`;

CREATE TABLE `huodongcanyurenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `zanzhuqiye` varchar(200) DEFAULT NULL COMMENT '赞助企业',
  `huodongneirong` varchar(200) DEFAULT NULL COMMENT '活动内容',
  `huodongkaishishijian` varchar(200) DEFAULT NULL COMMENT '活动开始时间',
  `huodongjieshushijian` varchar(200) DEFAULT NULL COMMENT '活动结束时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `huodongchangdi` varchar(200) DEFAULT NULL COMMENT '活动场地',
  `canyurenyuan` longtext COMMENT '参与人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='活动参与人员';

/*Data for the table `huodongcanyurenyuan` */

insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (51,'2021-05-21 15:38:59','活动标题1','发布时间1','赞助企业1','活动内容1','活动开始时间1','活动结束时间1','负责人1','活动场地1','参与人员1');
insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (52,'2021-05-21 15:38:59','活动标题2','发布时间2','赞助企业2','活动内容2','活动开始时间2','活动结束时间2','负责人2','活动场地2','参与人员2');
insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (53,'2021-05-21 15:38:59','活动标题3','发布时间3','赞助企业3','活动内容3','活动开始时间3','活动结束时间3','负责人3','活动场地3','参与人员3');
insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (54,'2021-05-21 15:38:59','活动标题4','发布时间4','赞助企业4','活动内容4','活动开始时间4','活动结束时间4','负责人4','活动场地4','参与人员4');
insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (55,'2021-05-21 15:38:59','活动标题5','发布时间5','赞助企业5','活动内容5','活动开始时间5','活动结束时间5','负责人5','活动场地5','参与人员5');
insert  into `huodongcanyurenyuan`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`canyurenyuan`) values (56,'2021-05-21 15:38:59','活动标题6','发布时间6','赞助企业6','活动内容6','活动开始时间6','活动结束时间6','负责人6','活动场地6','参与人员6');

/*Table structure for table `huodongjingfei` */

DROP TABLE IF EXISTS `huodongjingfei`;

CREATE TABLE `huodongjingfei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `zanzhuqiye` varchar(200) DEFAULT NULL COMMENT '赞助企业',
  `huodongneirong` varchar(200) DEFAULT NULL COMMENT '活动内容',
  `huodongkaishishijian` varchar(200) DEFAULT NULL COMMENT '活动开始时间',
  `huodongjieshushijian` varchar(200) DEFAULT NULL COMMENT '活动结束时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `huodongchangdi` varchar(200) DEFAULT NULL COMMENT '活动场地',
  `huodongjingfei` varchar(200) DEFAULT NULL COMMENT '活动经费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='活动经费';

/*Data for the table `huodongjingfei` */

insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (71,'2021-05-21 15:38:59','活动标题1','发布时间1','赞助企业1','活动内容1','活动开始时间1','活动结束时间1','负责人1','活动场地1','活动经费1');
insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (72,'2021-05-21 15:38:59','活动标题2','发布时间2','赞助企业2','活动内容2','活动开始时间2','活动结束时间2','负责人2','活动场地2','活动经费2');
insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (73,'2021-05-21 15:38:59','活动标题3','发布时间3','赞助企业3','活动内容3','活动开始时间3','活动结束时间3','负责人3','活动场地3','活动经费3');
insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (74,'2021-05-21 15:38:59','活动标题4','发布时间4','赞助企业4','活动内容4','活动开始时间4','活动结束时间4','负责人4','活动场地4','活动经费4');
insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (75,'2021-05-21 15:38:59','活动标题5','发布时间5','赞助企业5','活动内容5','活动开始时间5','活动结束时间5','负责人5','活动场地5','活动经费5');
insert  into `huodongjingfei`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`huodongjingfei`) values (76,'2021-05-21 15:38:59','活动标题6','发布时间6','赞助企业6','活动内容6','活动开始时间6','活动结束时间6','负责人6','活动场地6','活动经费6');

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `zanzhuqiye` varchar(200) DEFAULT NULL COMMENT '赞助企业',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongkaishishijian` datetime DEFAULT NULL COMMENT '活动开始时间',
  `huodongjieshushijian` datetime DEFAULT NULL COMMENT '活动结束时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `huodongchangdi` varchar(200) DEFAULT NULL COMMENT '活动场地',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (31,'2021-05-21 15:38:59','活动标题1','2021-05-21','赞助企业1','活动内容1','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人1','活动场地1','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian1.jpg');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (32,'2021-05-21 15:38:59','活动标题2','2021-05-21','赞助企业2','活动内容2','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人2','活动场地2','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian2.jpg');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (33,'2021-05-21 15:38:59','活动标题3','2021-05-21','赞助企业3','活动内容3','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人3','活动场地3','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian3.jpg');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (34,'2021-05-21 15:38:59','活动标题4','2021-05-21','赞助企业4','活动内容4','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人4','活动场地4','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian4.jpg');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (35,'2021-05-21 15:38:59','活动标题5','2021-05-21','赞助企业5','活动内容5','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人5','活动场地5','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian5.jpg');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongbiaoti`,`fabushijian`,`zanzhuqiye`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fuzeren`,`huodongchangdi`,`zhaopian`) values (36,'2021-05-21 15:38:59','活动标题6','2021-05-21','赞助企业6','活动内容6','2021-05-21 15:38:59','2021-05-21 15:38:59','负责人6','活动场地6','http://localhost:8080/ssml1ro4/upload/huodongxinxi_zhaopian6.jpg');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-05-21 15:38:59',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-05-21 15:38:59',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2021-05-21 15:38:59',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-05-21 15:38:59',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-05-21 15:38:59',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-05-21 15:38:59',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'学生1','xuesheng','学生','3o4777dp5hbic47w75a3z5r8z6ww3o56','2021-05-21 15:40:29','2021-05-21 16:43:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-21 15:38:59');

/*Table structure for table `xinwengao` */

DROP TABLE IF EXISTS `xinwengao`;

CREATE TABLE `xinwengao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanxieren` varchar(200) DEFAULT NULL COMMENT '撰写人',
  `tijiaobumen` varchar(200) DEFAULT NULL COMMENT '提交部门',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `wengaoneirong` longtext COMMENT '文稿内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻稿';

/*Data for the table `xinwengao` */

insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (61,'2021-05-21 15:38:59','撰写人1','提交部门1','2021-05-21 15:38:59','文稿内容1');
insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (62,'2021-05-21 15:38:59','撰写人2','提交部门2','2021-05-21 15:38:59','文稿内容2');
insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (63,'2021-05-21 15:38:59','撰写人3','提交部门3','2021-05-21 15:38:59','文稿内容3');
insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (64,'2021-05-21 15:38:59','撰写人4','提交部门4','2021-05-21 15:38:59','文稿内容4');
insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (65,'2021-05-21 15:38:59','撰写人5','提交部门5','2021-05-21 15:38:59','文稿内容5');
insert  into `xinwengao`(`id`,`addtime`,`zhuanxieren`,`tijiaobumen`,`tijiaoshijian`,`wengaoneirong`) values (66,'2021-05-21 15:38:59','撰写人6','提交部门6','2021-05-21 15:38:59','文稿内容6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-05-21 15:38:59','学生1','123456','姓名1','男','学院1','13823888881','773890001@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-05-21 15:38:59','学生2','123456','姓名2','男','学院2','13823888882','773890002@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-05-21 15:38:59','学生3','123456','姓名3','男','学院3','13823888883','773890003@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-05-21 15:38:59','学生4','123456','姓名4','男','学院4','13823888884','773890004@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-05-21 15:38:59','学生5','123456','姓名5','男','学院5','13823888885','773890005@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-05-21 15:38:59','学生6','123456','姓名6','男','学院6','13823888886','773890006@qq.com','http://localhost:8080/ssml1ro4/upload/xuesheng_touxiang6.jpg');

/*Table structure for table `zanzhuqiye` */

DROP TABLE IF EXISTS `zanzhuqiye`;

CREATE TABLE `zanzhuqiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyexinxi` longtext COMMENT '企业信息',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyedianhua` varchar(200) DEFAULT NULL COMMENT '企业电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `xiangguanfuzeren` varchar(200) DEFAULT NULL COMMENT '相关负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='赞助企业';

/*Data for the table `zanzhuqiye` */

insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (21,'2021-05-21 15:38:59','企业名称1','企业信息1','企业地址1','13823888881','773890001@qq.com','相关负责人1','13823888881','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian1.jpg');
insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (22,'2021-05-21 15:38:59','企业名称2','企业信息2','企业地址2','13823888882','773890002@qq.com','相关负责人2','13823888882','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian2.jpg');
insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (23,'2021-05-21 15:38:59','企业名称3','企业信息3','企业地址3','13823888883','773890003@qq.com','相关负责人3','13823888883','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian3.jpg');
insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (24,'2021-05-21 15:38:59','企业名称4','企业信息4','企业地址4','13823888884','773890004@qq.com','相关负责人4','13823888884','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian4.jpg');
insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (25,'2021-05-21 15:38:59','企业名称5','企业信息5','企业地址5','13823888885','773890005@qq.com','相关负责人5','13823888885','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian5.jpg');
insert  into `zanzhuqiye`(`id`,`addtime`,`qiyemingcheng`,`qiyexinxi`,`qiyedizhi`,`qiyedianhua`,`qiyeyouxiang`,`xiangguanfuzeren`,`lianxifangshi`,`tupian`) values (26,'2021-05-21 15:38:59','企业名称6','企业信息6','企业地址6','13823888886','773890006@qq.com','相关负责人6','13823888886','http://localhost:8080/ssml1ro4/upload/zanzhuqiye_tupian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
