# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: Stu_Class
# Generation Time: 2019-05-25 10:24:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `classno` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`classno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;

INSERT INTO `class` (`classno`, `num`)
VALUES
	(1,40),
	(2,45),
	(3,42),
	(4,46),
	(5,51),
	(6,23);

/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stuno` varchar(30) NOT NULL,
  `stuname` varchar(255) DEFAULT NULL,
  `stuage` int(11) DEFAULT NULL,
  `stusex` varchar(20) DEFAULT NULL,
  `stuclass` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;

INSERT INTO `student` (`stuno`, `stuname`, `stuage`, `stusex`, `stuclass`)
VALUES
	('2016032255','17号',20,'女',4),
	('2016044333','贝吉塔',20,'男',2),
	('2016051000','孙悟空',20,'男',1),
	('2016051012','孙悟天',15,'男',1),
	('2016051137','陈政',20,'男',4),
	('2016053028','孙悟饭',10,'男',3),
	('2016072234','悟天克斯',10,'男',5),
	('2016444033','饺子',9,'男',2),
	('2016444133','林克',19,'男',4),
	('2016444233','萨鲁',36,'男',1),
	('2016444333','弗利萨',21,'男',2),
	('2016444733','天津饭',18,'男',2),
	('2016444833','龟仙人',60,'男',3),
	('2016444933','比克',30,'男',2);

/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
