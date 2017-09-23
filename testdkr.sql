-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: testdkr
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (274,1,54),(273,1,53),(272,1,52),(271,1,51),(270,1,50),(269,1,49),(268,1,48),(267,1,47),(266,1,46),(265,1,45),(264,1,44),(263,1,43),(285,2,39),(284,2,38),(283,2,37),(280,3,37),(279,3,44),(278,3,43),(286,2,43),(287,2,44),(288,2,49),(289,2,50),(290,2,51),(291,2,25),(262,1,42),(261,1,41),(260,1,40),(259,1,39),(258,1,38),(257,1,37),(256,1,36),(255,1,35),(254,1,34),(253,1,33),(252,1,32),(251,1,31),(250,1,30),(249,1,29),(248,1,28),(247,1,27),(246,1,26),(245,1,25),(244,1,24),(243,1,23),(242,1,22),(275,1,55),(276,1,56),(277,1,57),(281,3,38),(282,3,39),(292,2,26),(293,2,27);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add test multi email',7,'add_testmultiemail'),(20,'Can change test multi email',7,'change_testmultiemail'),(21,'Can delete test multi email',7,'delete_testmultiemail'),(22,'Can add lead',8,'add_lead'),(23,'Can change lead',8,'change_lead'),(24,'Can delete lead',8,'delete_lead'),(25,'Can add holiday list',9,'add_holidaylist'),(26,'Can change holiday list',9,'change_holidaylist'),(27,'Can delete holiday list',9,'delete_holidaylist'),(28,'Can add shift rate',10,'add_shiftrate'),(29,'Can change shift rate',10,'change_shiftrate'),(30,'Can delete shift rate',10,'delete_shiftrate'),(31,'Can add employee',11,'add_employee'),(32,'Can change employee',11,'change_employee'),(33,'Can delete employee',11,'delete_employee'),(34,'Can add project',12,'add_project'),(35,'Can change project',12,'change_project'),(36,'Can delete project',12,'delete_project'),(37,'Can add on call',13,'add_oncall'),(38,'Can change on call',13,'change_oncall'),(39,'Can delete on call',13,'delete_oncall'),(40,'Can add allowance allocation',14,'add_allowanceallocation'),(41,'Can change allowance allocation',14,'change_allowanceallocation'),(42,'Can delete allowance allocation',14,'delete_allowanceallocation'),(43,'Can add calculate allowance',15,'add_calculateallowance'),(44,'Can change calculate allowance',15,'change_calculateallowance'),(45,'Can delete calculate allowance',15,'delete_calculateallowance'),(46,'Can add people allocation',16,'add_peopleallocation'),(47,'Can change people allocation',16,'change_peopleallocation'),(48,'Can delete people allocation',16,'delete_peopleallocation'),(49,'Can add roster',17,'add_roster'),(50,'Can change roster',17,'change_roster'),(51,'Can delete roster',17,'delete_roster'),(52,'Can add project over',18,'add_projectover'),(53,'Can change project over',18,'change_projectover'),(54,'Can delete project over',18,'delete_projectover'),(55,'Can add employee exit',19,'add_employeeexit'),(56,'Can change employee exit',19,'change_employeeexit'),(57,'Can delete employee exit',19,'delete_employeeexit'),(71,'Can change employee skill',24,'change_employeeskill'),(70,'Can add employee skill',24,'add_employeeskill'),(67,'Can add skill detail',23,'add_skilldetail'),(68,'Can change skill detail',23,'change_skilldetail'),(69,'Can delete skill detail',23,'delete_skilldetail'),(64,'Can add skill track',22,'add_skilltrack'),(65,'Can change skill track',22,'change_skilltrack'),(66,'Can delete skill track',22,'delete_skilltrack'),(72,'Can delete employee skill',24,'delete_employeeskill');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (133,'admin',NULL,1,'admin','admin','admin','amishra76@sapient.com',1,1,'2015-11-02 07:58:40'),(1,'pbkdf2_sha256$36000$3QdLhtwAlPZr$88U0glrdP+cxoKAwQ3Rw6ua0Ox2m/30xKDdGultQEV8=','2017-09-21 07:59:09',1,'113662','Lalit','Agrawal','lagrawal4@sapient.com',1,1,'2015-11-02 07:58:40'),(4,'pbkdf2_sha256$20000$66PtTGayWzmO$2yX8LD6H6JvYi36D1Z598N0SQjgrQPuH56B2e6sW/GE=','2017-09-10 16:33:05',0,'114455','Saujanya','Kumar','skumar217@sapient.com',1,1,'2015-12-04 09:43:12'),(3,'pbkdf2_sha256$20000$bbTxe9U0w0yx$QoOZgb6GRxygL2z6HAi2ztDFLfoWwOl+OnNyzqhGNvE=','2017-09-05 10:28:48',0,'80789','Keshab','Saha','ksaha@sapient.com',1,1,'2015-11-25 08:10:37'),(5,'pbkdf2_sha256$20000$oAVPmlfHXKYI$ctgXufIO2yTVkTSjEoQMAQwuIlo2s8SK2jwXSZ4COMA=','2017-09-08 08:37:31',0,'116826','Ankur','mehta','amehta15@sapient.com',1,1,'2015-12-07 04:21:41'),(6,'pbkdf2_sha256$20000$7KtyQiRWK2WT$R+6qD80iPhxiWk7D0OuhHJBPDsaaZQRRy1qRSncGM2U=',NULL,0,'113006','Harish','Roy','hroy@sapient.com',1,1,'2015-12-07 04:22:22'),(7,'pbkdf2_sha256$20000$OyX6ROHHXI81$4uGY63TY4Kjaig0eirfK0Z8SGRabBxEx3MfOLOswqBM=','2017-08-29 12:47:33',0,'104030','Ansuman','Dhal','adhal@sapient.com',1,1,'2015-12-07 04:23:01'),(8,'pbkdf2_sha256$20000$PkcBzCRGpI1W$lgblPiO9rJuuEe+ZmJFjmV0GqibRRWU8pRmpU1xNGKE=','2017-09-19 06:23:22',0,'88052','Mayank','Nigam','mnigam@sapient.com',1,1,'2015-12-07 04:23:46'),(9,'pbkdf2_sha256$20000$iR87j3k6jhrz$ojcl6TYcVckGxnvqJSd/neoEh+CXNXpXNG2GLAPqPzo=','2016-01-04 08:22:15',0,'65243','Priyavart','Kaushik','pkaushik2@sapient.com',1,1,'2015-12-07 04:24:27'),(10,'pbkdf2_sha256$20000$fW1sI1cHYdwz$LI42889qKbXLYF9rEyE9CjMublz7o0C9NbDNDUkq9YA=','2017-09-05 10:14:43',0,'43848','Amit','Kumar V','akumar20@sapient.com',1,1,'2015-12-07 04:28:23'),(11,'pbkdf2_sha256$20000$vnwHak17nL4Z$jmedIxF0bdV8TOGuFPMtlo5gzA46UEnSVdNCgtIY3GU=','2017-06-20 04:53:22',1,'100905','Deep','Malik','dmalik2@sapient.com',1,1,'2015-12-07 04:37:52'),(12,'pbkdf2_sha256$20000$2c9WMsxJNYCo$aJUd65bAF6sfkFj3RKg1SzCk+m21bfF71+p2hLv2D5o=','2017-09-11 16:55:16',0,'116817','Abhishek','Gaur','agaur3@sapient.com',1,1,'2015-12-07 05:39:57'),(13,'pbkdf2_sha256$20000$aEu6r3ggKiNz$1s5lni9fou69737YOoDnsNZxqy8Gm95bMd9JhjfYKIo=','2017-08-30 05:58:49',0,'116899','Nimish','Wadhwa','nwadhwa@sapient.com',1,1,'2015-12-07 09:23:47'),(14,'pbkdf2_sha256$20000$I5C4r10xElJr$dIrBhnt34zOF2EBS+6fftmss5e+5sef4Va6LKunvhQ8=','2016-07-12 09:45:43',0,'116442','Virendra',' Singh 4','vsingh99@sapient.com',1,1,'2015-12-07 09:24:39'),(15,'pbkdf2_sha256$20000$r3vekFWUmD8P$85oxS6H92iYcSp7Qt+rVMJcBQaC2deQslbkAZFvte+Q=','2017-09-01 03:06:52',0,'116030','Yogesh','Kumar 11','ykumar14@sapient.com',1,1,'2015-12-07 09:25:23'),(16,'pbkdf2_sha256$20000$CLTa8IqQ7m83$g4bvIKlWG09QAnQ71kNfrmTr8IWZdvfrSYYLxdzgmVs=','2016-04-28 07:16:31',0,'101026','Chandan','Kumar 3','ckumar6@sapient.com',1,1,'2015-12-07 09:26:20'),(17,'pbkdf2_sha256$20000$v6uo8Yosqszj$kPYAI0oazXzSGHiGR0Uud7yGrXsqIQnB1j2WacBC42c=','2017-08-24 13:16:15',0,'114467','Sandeep','Singh Bisht','sbisht3@sapient.com',1,1,'2015-12-07 09:27:20'),(18,'pbkdf2_sha256$20000$ltnPw9qqWyAR$Vsz9MUxNXaiJ7HJVqF7eWLhORCg9/BCWhD6NMg2ceRw=','2017-07-17 08:31:39',0,'114276','Ayushi','Miglani','amiglani@sapient.com',1,1,'2015-12-07 09:28:08'),(19,'pbkdf2_sha256$20000$t3bT0bVklna9$XOZv6ipGtW+SZ2iOPWnUC1lCCACVTYslnhkctkvkdCo=','2017-09-05 15:58:42',0,'105803','Manoj','Kumar 10','mkumar58@sapient.com',1,1,'2015-12-07 09:28:58'),(20,'pbkdf2_sha256$20000$FWBzXoR147UP$zyiWPz5lntYAF9x7M33uWKwpgOIAQMOXQIHJZxe4vB0=','2016-09-30 10:47:16',0,'101949','Virender','Singh 3','vsingh612@sapient.com',1,1,'2015-12-07 09:29:57'),(21,'pbkdf2_sha256$20000$ppfXUhaENSlH$PpoNP7JqmENKOAZ9E1XY43I6OR4xuP+BV4lcUgiezE4=','2017-01-25 05:32:00',0,'101438','Mayuresh','Bhardwaj','mbhardwaj1@sapient.com',1,1,'2015-12-07 09:30:58'),(22,'pbkdf2_sha256$20000$rHD2V4g6WOE4$6kNBFyMRUJauBV1BG1xM+uWZnGFjLR2wZ0yj4D4qHgQ=','2016-01-29 14:48:31',0,'97803','Shanky','Gupta','sgupta44@sapient.com',1,1,'2015-12-07 09:32:00'),(23,'pbkdf2_sha256$20000$GcdqtuelWbRI$yLOIVbAYP+wkzf6ud8Z3DIJLUjc02qb38PILKJMROmk=','2017-08-11 05:01:49',0,'97014','Rohit','Prabhakar','rprabhakar@sapient.com',1,1,'2015-12-07 09:32:42'),(24,'pbkdf2_sha256$20000$446u2uZmtVlM$CAjLfaRWTdEI2svCSu+KV7vIXEFZFMikqrFLpz1JUcw=','2017-08-03 05:08:59',0,'73607','Sunil','Kumar 4','skumar75@sapient.com',1,1,'2015-12-07 09:33:37'),(25,'pbkdf2_sha256$20000$edTr1FmpDnLJ$ZJFQ6G2xcngJyE9pdtd180VhZSe2zuLnUsUAgKtrEjk=','2017-08-03 05:59:59',0,'106369','Arvind','Deora','adeora@sapient.com',1,1,'2015-12-07 09:34:37'),(26,'pbkdf2_sha256$20000$jOOr6xH5dxiS$W8rWx+26PPJ4L3eM7U0s3DTVih+0uchSz0HRnI+9QtU=','2016-02-24 11:27:19',0,'111242','Rahul','Azad','razad2@sapient.com',1,1,'2015-12-07 09:41:06'),(27,'pbkdf2_sha256$20000$3nqgTFf9m5V2$8om9eGFTVficeh/bgS8f/UbVCJnxk/xUpeiD2qW8ndo=','2015-12-28 09:34:52',0,'107411','Mohit','Kumar 9','mkumar85@sapient.com',1,1,'2015-12-07 09:41:45'),(28,'pbkdf2_sha256$20000$YZ8iM340gvrr$IcpuJeSNus/UVB6Pl17uwX4XX9OmGB15Rw/dc4jXLyY=','2017-09-18 10:27:58',0,'107302','Aakash','Sharma 4','asharma150@sapient.com',1,1,'2015-12-09 06:06:11'),(29,'pbkdf2_sha256$20000$Ag70in90Iuyy$tyNrbTyzvS75T60tRCHauMfjb24qQN98wJgdpasr0LU=','2017-02-08 06:16:32',0,'107613','Saurabh','Pathak','spathak5@sapient.com',1,1,'2015-12-09 06:09:02'),(30,'pbkdf2_sha256$20000$620tbdDwaXNl$AzLP9jWKGz4AvizoTizWrA22QECk+0yRy/seiMq2Nnw=','2015-12-28 10:06:13',0,'97013','Shitij','Mehra','smehra1@sapient.com',1,1,'2015-12-09 06:17:13'),(32,'pbkdf2_sha256$20000$s4lJc1J0ry4Z$O+VFUqYVFJifPDVg8FrpFdDo8Ir/Ka+ghfBI1A651PM=','2016-05-27 01:45:08',0,'101605','Karan','Dhall','kdhall@sapient.com',1,1,'2015-12-09 06:19:46'),(33,'pbkdf2_sha256$20000$8loPEASA9DCN$cmv6UA8DCw5QCI70Ze85PqgFskScEU+79tS9VLHpaAo=',NULL,0,'114372','Pawan','Kumar 9','pkumar12@sapient.com',1,1,'2015-12-09 06:20:37'),(34,'pbkdf2_sha256$20000$cogwLJAF8iF6$xvitj9Un5Epnz0REu/U1+Pi/UgaG65CeN/U5FSG3WbA=','2017-02-07 14:47:21',0,'109715','Aditya','Gannamaneni','agannamaneni@sapient.com',1,1,'2015-12-09 06:22:04'),(35,'pbkdf2_sha256$20000$AUlmxlvIPbsW$7jdbRSauTuUrQJ+EFCusON0E39I0vWWQEkQkz303//U=','2017-09-01 13:15:51',0,'114368','Alok','Raj','araj4@sapient.com',1,1,'2015-12-09 06:23:03'),(36,'pbkdf2_sha256$20000$n8IlhPUhfJPp$tWbJJT4HGmQcMGBPo3x1EzbQbdn5hBv5KOevR74b0DY=','2017-08-31 11:48:46',0,'107558','Amit','Pandey 2','apandey29@sapient.com',1,1,'2015-12-09 06:23:41'),(37,'pbkdf2_sha256$20000$ZEBPDQZ8y5OK$vJzRSM0ysfTCbd83fegbWHlSeu6WbvEoZ6xejTiwFGw=','2017-08-29 06:32:46',0,'107060','Amit','Yadav 3','ayadav26@sapient.com',1,1,'2015-12-09 06:24:36'),(38,'pbkdf2_sha256$20000$Y8kFbsUDiFIR$3PkP+rKxpt+ijZjFHxsnihZYslvVD8hNi6d6gzJ8UG8=','2016-07-05 06:10:44',0,'111342','Amitanshu','Mishra','amishra50@sapient.com',1,1,'2015-12-09 06:25:37'),(39,'pbkdf2_sha256$20000$ESNfzGPnVbEr$kcUlJJ+b6L2mtGbDFL8MlyJdkDPVgmXGdQcFgd0gaqU=','2017-09-18 06:33:26',0,'94958','Anil','Kumar 10','akumar178@sapient.com',1,1,'2015-12-09 06:28:49'),(40,'pbkdf2_sha256$20000$FJFRdPCo7tU7$MNZQ6JmoLxnSOwWOrH+CYQaHLzk1dNgTpIW7RycgWac=','2017-09-15 09:42:55',0,'76610','Ashish','Nair','anair@sapient.com',1,1,'2015-12-09 06:29:45'),(41,'pbkdf2_sha256$20000$LqEUpCTvH0VU$78DlxJMOIHZHW6QLKQxVJhbKqevoft1cmSmj8scwu4U=',NULL,0,'107415','Bhumi','Malhotra','bmalhotra2@sapient.com',1,1,'2015-12-09 06:30:50'),(42,'pbkdf2_sha256$20000$QouP1pV4B9LQ$EZLs2KF/I5d18dGpp4A9IJsQu3qmZDqoHwsESFZB2Vo=','2017-08-28 03:44:31',0,'45149','Esha','Kapoor','ekapoor@sapient.com',1,1,'2015-12-09 06:32:00'),(43,'pbkdf2_sha256$20000$sIPAJlhvrT6Y$fqOZXtBpu1LeM8/PZsS2dJNSbh1ZkOrwoWVrSR2/WHQ=','2017-08-31 14:16:52',0,'93837','Farid','Alam','falam2@sapient.com',1,1,'2015-12-09 06:32:51'),(44,'pbkdf2_sha256$20000$LfyJAkfggsCM$T0NMja42iMlLujP26N8so4gwUimn1QHZn7Y5feAcl3c=','2015-12-29 14:41:36',0,'104621','Girish','Adoni','gadoni@sapient.com',1,1,'2015-12-09 06:33:43'),(45,'pbkdf2_sha256$20000$njXVDwlnQ5Og$yVsQKmT5/IS4FyC46/dVatXs/6Ruu89+kKA08kVyUf4=','2017-08-30 07:51:46',0,'114274','Harish','Kumar 2','humar14@sapient.com',1,1,'2015-12-09 06:34:27'),(46,'pbkdf2_sha256$20000$MpAWl59VhEYG$Pz3lTYV2hoGowDnUSGDPFo74e10mE2wF6yTOZlakPXw=','2017-09-12 12:04:19',0,'114365','Irfad C','Ahamed','iahamed@sapient.com',1,1,'2015-12-09 06:35:20'),(47,'pbkdf2_sha256$20000$IBoYpZxNQHMv$bSSEAChI5FF2I9VWvb/GbFtosz75PFLRtRHR1r23P5M=','2016-04-28 11:56:39',0,'93307','Abhinav','Kumar','kabhinav@sapient.com',1,1,'2015-12-09 06:36:05'),(48,'pbkdf2_sha256$20000$WrdPaMuhrEug$KKQK7rjg/+LkfxM6IMKooUduK+A54YVscK+pn9+etx0=','2016-02-21 07:27:00',0,'108635','Saurabh','Kumar','ksaurabh3@sapient.com',1,1,'2015-12-09 06:36:44'),(49,'pbkdf2_sha256$20000$lxGrKWhWb7ha$Ip1KVUDwJNqVA7AlMlIj7gKXiasvYuYYI/KfNkybMQc=',NULL,0,'111072','Mandip','Mankotia','mmankotia@sapient.com',1,1,'2015-12-09 06:37:32'),(50,'pbkdf2_sha256$20000$uQblZhRQIIFX$CdskLhq3vHlj575Q2nW9pJTAsdCOIfdJpyDKjo9/WqU=','2017-03-03 14:28:50',0,'102630','Manoj','Payandath','mpayandath@sapient.com',1,1,'2015-12-09 06:38:45'),(51,'pbkdf2_sha256$20000$Ave3QkJfD2nq$2JgM91ifevxLADy/PxUaN7Z0CESQNZfJbHe8CcU+i30=','2017-09-13 07:10:39',0,'94454','Manoj','Sharma','msharma46@sapient.com',1,1,'2015-12-09 06:39:38'),(52,'pbkdf2_sha256$20000$ce4pRYTE0Yds$6A3hFux5iUCe1w5h1PE4EsCbka+8IwhLGc7U72pLQ0Y=','2016-09-02 09:50:44',0,'110425','Mozammil','','mmozammil@sapient.com',1,1,'2015-12-09 06:49:22'),(53,'pbkdf2_sha256$20000$EjrlxuHMyH8i$ZhCnFduU4a9kkrtgsf/MBDGbsQHnLt1cYOdV4pAlEm8=','2017-08-31 06:55:20',0,'107104','Mukesh','Chaudhary','Mukesh.Chaudhary@sapient.com',1,1,'2015-12-09 06:50:16'),(54,'pbkdf2_sha256$20000$G7ELMYwG3Jnz$a+BC3/fZ4CIx5pU02tmN8GVTzGLv7YOyfVaqin1yEhY=','2017-08-29 17:48:16',0,'109778','Nagaraj','Chikodi','nchikodi@sapient.com',1,1,'2015-12-09 06:51:07'),(55,'pbkdf2_sha256$20000$rDBhGoXsUlaT$12zUD+exzwR+F+rYXJ87IUE4QTUzofcuySPXWw4ZfPU=','2017-09-12 06:10:52',0,'95829','Neeraj','Srivastava','nsrivastava3@sapient.com',1,1,'2015-12-09 06:53:21'),(56,'pbkdf2_sha256$20000$UkmHiooHde2P$paw6eJnSfslVRg2Dxb62eCv788O9uX0S9j5dG9Dch5w=','2017-07-17 05:38:46',0,'117124','Pankaj','Kumar 7','pkumar75@sapient.com',1,1,'2015-12-09 06:54:21'),(58,'pbkdf2_sha256$20000$JGBdz6C8uh8c$TiMf23qsqGsM5X93EcsAhvKdbOE8KGFOepdRgjQTFZA=','2017-06-13 10:12:51',0,'116253','Parul','Chaudhary','pchaudhary5@sapient.com',1,1,'2015-12-09 07:23:09'),(59,'pbkdf2_sha256$20000$I8oPWoatCxG8$KYLF0HtAU3tOOLIbdDZ0Fi9sobgtime2g6PosxPLtb8=','2017-02-28 12:41:42',0,'112146','Prajitha','Nambiar','pnambiar@sapient.com',1,1,'2015-12-09 07:23:44'),(60,'pbkdf2_sha256$20000$b1TdLiDXTMQd$SkeHPHjgyE+sodmquGTc7996IO8XYMW/aXp18h0Lrj4=','2017-09-18 10:28:23',0,'126196','Pramod','','ppunnuche@sapient.com',1,1,'2015-12-09 07:24:24'),(61,'pbkdf2_sha256$20000$sSjBCct0ylzI$jscG4C4PfvphKpIWZpbjhFR+0wB2jBV+u/WjsoUPCjs=',NULL,0,'102105','Purushottam','Parsoon','pparsoon1@sapient.com',1,1,'2015-12-09 07:25:03'),(62,'pbkdf2_sha256$20000$PNxv7jlqCwwr$dLy+0+sfjApwLBvXgFBoV2SG13Ks2ACUvBoumifyWeU=','2017-05-04 16:31:22',0,'114463','Raghavendra','K','rkalvar@sapient.com',1,1,'2015-12-09 07:25:50'),(63,'pbkdf2_sha256$20000$iqekZAX0yYJP$YuM2SGTfQUI2vtWLo7kcv/v1f8v5dvxJ9bd14k/OjVg=','2017-08-03 21:58:56',0,'109853','Raghu','Priyan','rpriyan@sapient.com',1,1,'2015-12-09 07:26:23'),(87,'pbkdf2_sha256$20000$nep8gEiUOIgd$zCnqmW/QZjuDfpNZjaIsqS0/OO0+xW/xEtjrO0ngYxk=','2016-11-29 11:19:37',0,'118413','Ashish','Kumar 24','akumar290@sapient.com',1,1,'2016-04-05 02:54:01'),(66,'pbkdf2_sha256$20000$hPFdMgE8CoUm$MZZ6KNn2fgOqO85WkLld86Bj5VQWyoRsW6SUFeY4SuQ=','2016-03-02 14:36:08',0,'96810','Rakesh','Behera','rbehera1@sapient.com',1,1,'2015-12-09 07:28:34'),(67,'pbkdf2_sha256$20000$rGi5T4JJv2Gg$g/kN8vks7qMqSip4MaRqsHJA0q0IVEQ4a3isDKlZR2E=','2017-07-31 07:59:08',0,'102163','Ravinder','Kumar 2','rkumar35@sapient.com',1,1,'2015-12-09 07:29:24'),(68,'pbkdf2_sha256$20000$tAkoFViPWxnS$6hVw0pyZN2FOwBklK2ldHf0dzJV4Axtu3U5OrvPDBEI=','2017-02-28 05:05:54',0,'115570','Rohit','Saini','rasini8@sapient.com',1,1,'2015-12-09 07:30:05'),(69,'pbkdf2_sha256$20000$Ep9qmFIzbUM6$yQw3mFjN3ZFpTp4pAAD8kJI9JgPrcdx+psTGv6BYygE=','2017-09-12 11:04:46',0,'110722','Rohit','Rathi','rrathi@sapient.com',1,1,'2015-12-09 07:30:57'),(70,'pbkdf2_sha256$20000$LgZQuMHabQ41$zZu1L9D/rYLNUbvLY9RT86sOdR1HBd6Gy4XFq/Ab2jU=','2016-01-29 10:27:31',0,'116222','Sachin','Kumar','skumar270@sapient.com',1,1,'2015-12-09 07:31:53'),(71,'pbkdf2_sha256$20000$ZyI7q5H29FCm$KnnB6wc9zOpvcJikH+XbiV1JsgO9nw6XdTp0/UH3zc4=',NULL,0,'114102','Sarfuddin','Siddiqui','ssiddiqui2@sapient.com',1,1,'2015-12-09 07:32:42'),(72,'pbkdf2_sha256$20000$IeAfNHU9uM23$QsvsnMQaUQk8DIrdlh+Mgterov5bWRXFZv0NCPXFYKc=','2016-10-03 10:55:30',0,'113403','Seethu','Thekkin Kattil','skattil@sapient.com',1,1,'2015-12-09 07:33:48'),(73,'pbkdf2_sha256$20000$zveLOyOnMcfo$wmAtEzEQu3XLLuQXgmdczYz+Csu+J+kEXMf+l0jxTis=','2017-09-06 06:09:18',0,'109678','Shaminder','Singh','ssingh184@sapient.com',1,1,'2015-12-09 07:34:48'),(74,'pbkdf2_sha256$20000$dFOkMfVfHkDd$it8BW/H+T3g6+X1S8dgMgqW/2kzSYN4HUJlxrk64PiA=',NULL,0,'76553','Shweta','Rani','srani2@sapient.com',0,1,'2015-12-09 07:35:24'),(75,'pbkdf2_sha256$20000$oLeQG5aFaaMS$Z2Y+ekhei2iEFJjKLTX1al9WcJB3tuA34aZIJvGPzQA=','2017-09-01 07:45:47',0,'116468','Sijo','Jose1','sjose4@sapient.com',1,1,'2015-12-09 07:36:14'),(76,'pbkdf2_sha256$20000$u6G4ZXw4H6KX$a4KqDEOxLmPRWJ/JB5unhXTDIgeBGEI65dAhkyuOJY8=','2017-08-03 03:47:28',0,'100160','Sunil','Joshi','sjoshi9@sapient.com',1,1,'2015-12-09 07:36:52'),(77,'pbkdf2_sha256$20000$S13y8Fl4DIai$iMdG1ymEa6fxFhvxgGisrkS8GuARs7ASUTJpzuUOLYs=','2017-03-15 05:54:46',0,'110566','Thomas','Manipadam','tmanippadam@sapient.com',1,1,'2015-12-09 07:37:33'),(78,'pbkdf2_sha256$20000$lf2c7zajpZvJ$JlJbAeLwvHHEJIZKzBfieqMrWuhCGT6ueHsyCU/gJ2o=','2017-09-05 11:10:50',0,'38159','Vishwanath','Ramaprasad 2','vramaprasad@sapient.com',1,1,'2015-12-09 07:38:17'),(79,'pbkdf2_sha256$20000$rBi1QyyX0liv$OcwCGp+Q3XKiMKwMZGX3ykRXF5ktK+PuyJ4U0jhrFLM=','2016-08-09 09:41:57',0,'112158','Vysakh','Viswan','vviswan@sapient.com',1,1,'2015-12-09 07:39:28'),(80,'pbkdf2_sha256$20000$6cxTzpIDeo9Y$kc3ijfOmFSoR8Fe7LSQHr08VhDklpexPyJDb89L1WRk=','2017-09-04 08:26:15',0,'88549','Anurag','Tripathi','atripathi11@sapient.com',1,1,'2015-12-15 04:04:08'),(81,'pbkdf2_sha256$20000$sxaUCbq0L5Ii$4tlajSYQ9klk32ukAFM3Ma7ADhb1DCNZmPkQsQi65JU=','2017-06-06 05:01:01',0,'108082','Rajasekhar','Bille','rbille@sapient.com',1,1,'2016-01-27 11:24:35'),(82,'pbkdf2_sha256$20000$01cV74J6z7At$PPzrGu+lR3I31yRO7lfMHFO4vHbbxC1YlenvGEkTIs4=','2017-08-31 11:08:38',0,'97623','Abhinab','Padhi','apadhi@sapient.com',1,1,'2016-02-03 09:22:01'),(83,'pbkdf2_sha256$20000$llxAbAAzCoDY$VnCBBuxDJNBKAQlm65wM4shIOMCbG04NvZZ5Wy2A5NA=','2017-09-15 03:40:36',0,'117502','Amandeep','Sharma','samandeep@sapient.com',1,1,'2016-02-25 07:09:26'),(84,'pbkdf2_sha256$20000$yAa0xscCxKNt$3wP7DBNJyR/EXKp43t3wYxzuv8hP+Zu0ZkfuujMlluA=','2017-09-11 07:17:16',0,'117454','Paras','Sharma','psharma56@sapient.com',1,1,'2016-03-02 12:14:14'),(85,'pbkdf2_sha256$20000$mpuTpvy7GVbk$aNzWR91LikDYM743JaIRcLMwY1/Vy8SoVLWwHpKCt94=','2017-08-22 05:45:36',0,'105263','Anil','Sharma 5','asharma132@sapient.com',1,1,'2016-04-01 09:13:45'),(86,'pbkdf2_sha256$20000$UI5GUkXQPTLT$U0MV54wqiXSVeFbF264VmSJDpqcwNgPuq3MPmisFgXU=','2017-05-22 11:57:20',0,'104207','Raj','Sundar','rsundar@sapient.com',1,1,'2016-04-04 05:16:39'),(88,'pbkdf2_sha256$20000$7YzNDoPKwRvo$S23PcIa+hG6M77p5vhAce0CTpioOAPGX/WdUytN+EGA=','2017-09-06 03:08:14',0,'112987','Shashank','Sharma 3','ssharma166@sapient.com',1,1,'2016-04-18 03:55:49'),(89,'pbkdf2_sha256$20000$12b94bFzdqMY$vXYInbZowVIUce4JM+1DdGyk6pRZ3Y/f9WbHIL4mFaI=','2017-08-28 19:51:33',0,'120265','Tej Pratap','Singh','tsingh26@sapient.com',1,1,'2016-04-18 07:05:32'),(90,'pbkdf2_sha256$20000$KYRbwfEJQg3o$pETO/hwTAwDSticI/ZwqU8+cLBwTDFBb4IPBGfXvvec=','2017-09-11 05:28:17',0,'118073','Arun','Sharma 7','asharma197@sapient.com',1,1,'2016-05-18 05:01:38'),(91,'pbkdf2_sha256$20000$LflqQacgJKl9$Rv1/c1UWErJ49Cm1rEG+pzVHVyq3koq18T+hrPqyE5A=','2017-09-16 13:28:27',0,'121013','Sumit','Pathak','spathak8@sapient.com',1,1,'2016-05-18 05:06:07'),(92,'pbkdf2_sha256$20000$dxwvpU5AgXd2$H4XfaTYvNRXxp/0XW9uWNswxP7NzD53pkei+i84arpU=','2017-08-30 00:49:06',0,'120843','Ashish','Singh 3','asingh278@sapient.com',1,1,'2016-05-18 05:06:40'),(93,'pbkdf2_sha256$20000$ckxiI8UFbisc$0GrPnMGet78yiG9EItZDy7DQIYqv2uUL1aoFmj9EFsw=','2017-08-03 06:50:24',0,'112583','Renu','Bansal','rbansal20@sapient.com',1,1,'2016-05-24 10:06:38'),(94,'pbkdf2_sha256$20000$XgcKTNGKPlFE$TYOg2NRvAYm/bUPIHVsL+KCT9PTPDBvXtXVHRhfPtsw=','2017-09-06 09:35:53',0,'117363','Abhishek','Singh 15','asingh261@sapient.com',1,1,'2016-07-05 10:19:21'),(95,'pbkdf2_sha256$20000$Wzmg9a3fJAHL$kWTUydFbX4OhD+ma1sJRLbsG41TqEro8htvxOpYup8U=','2017-09-13 08:35:05',0,'121509','Jimmy','Sebastian','jsebastian5@sapient.com',1,1,'2016-07-08 05:53:53'),(96,'pbkdf2_sha256$20000$AcuSqlk43Jqi$AixteI/tbUaK1R3vP9RTj//297UBa2M6mMDu2yH1O+w=','2017-07-03 09:58:30',0,'119432','Deepamudra','Samal ','dsamal2@sapient.com',1,1,'2016-08-09 09:20:11'),(97,'pbkdf2_sha256$20000$SSYisGj5ibzK$L3zUhO9D/PAMTsTKVGQqVfuCz7okvFCEoMzGd+QXvco=','2017-07-24 19:10:15',0,'121434','Soumapriyo','Das','sdas36@sapient.com',1,1,'2016-08-09 09:21:17'),(98,'pbkdf2_sha256$20000$xwnjWaAzeEO6$GmXVenUhlXp0+U8E9zIdYPffyLreiK/sNdlmtHCU6QE=','2017-09-07 11:13:19',0,'118061','Vijaya Krishna','Korukondabhattar','vkorukondabhattar@sapient.com',1,1,'2016-08-09 11:00:47'),(99,'pbkdf2_sha256$20000$LvWGUVd7CaCK$bKtkuRrRU3T1EwInRt4nAwbOLa6m47gYUuAcRA522+4=','2017-09-04 11:06:55',0,'121666','Vaibhav','Saxena 2','vsaxena4@sapient.com',1,1,'2016-08-12 10:21:17'),(100,'pbkdf2_sha256$20000$LYaLIDJglNoa$FBISNTWuckCNkgTOFZd7dvCkhG/XnzFajWrKXUOc6NI=','2017-01-09 10:46:39',0,'124744','Anup','Gupta','agupta247@sapient.com',1,1,'2016-08-30 06:23:18'),(101,'pbkdf2_sha256$20000$XRB0edSqvX42$PoW1hrQ9OLT8OuvLG8oF/0HFlE7y+R8u9ziFP0mW+Mg=','2017-09-01 06:07:04',0,'122010','Gaurav','Dubey','gdubey2@sapient.com',1,1,'2016-08-30 06:43:14'),(102,'pbkdf2_sha256$20000$0c4X1IwRtTAR$VrkaitoJOsQ7DCR+2hCgFIPyI2V3nbcPfZGRhsRB6ZQ=','2017-09-04 04:59:45',0,'122256','Angiras','Bakshi','abakshi3@sapient.com',1,1,'2016-08-30 11:38:57'),(103,'pbkdf2_sha256$20000$y2AalGJduL6Y$qinkbd9tuk/teFrwa7O3GqZy4qjISbKog7pB0fZwrhY=','2017-09-06 06:57:42',0,'123618','Ishan','Bukharia','ibukharia@sapient.com',1,1,'2016-09-26 05:30:34'),(104,'pbkdf2_sha256$20000$bTsMp4qpj2Y2$JWKpQ1hO5mASLyIWo/XFyt2wn5EXT3VcbY7+pgwoPDI=','2017-08-31 11:08:47',0,'119903','Narendra','Choubey','nchoubey@sapient.com',1,1,'2016-09-26 08:54:01'),(105,'pbkdf2_sha256$20000$3tLI9hHQYmfQ$NYdHUFoK20ksi+gRWvdMAOrM/9syhps2qdWO+yx9vac=','2017-05-15 12:33:46',0,'124200','Vishal','Bhardwaj3','vbhardwaj18@sapient.com',1,1,'2016-09-29 09:44:52'),(106,'pbkdf2_sha256$20000$ODSgl95tlydD$2l8SE69V/7BjjE2VeehuEA9FJtP/XNFKrluLzks0Xbo=','2017-09-01 10:23:56',0,'119018','Rohan','Kapoor','rkapoor22@sapient.com',1,1,'2016-10-21 05:23:44'),(107,'pbkdf2_sha256$20000$RzI7khdPCwZk$+wRubg2+2EFlfRQ4jJlecDMIjJQxlpQ0Vuv2gG8DB1M=','2017-09-13 10:10:30',0,'122211','Vishal','Sharma 8','vsharma103@sapient.com',1,1,'2016-11-01 07:23:02'),(108,'pbkdf2_sha256$20000$MD7FsjQLiGb0$V40Zx9RjuXHM+T6LQ0vXUH2sbh4mE3sxnckRHouqw3M=','2017-06-10 08:14:13',0,'126262','Mukesh','Singh 3','msingh115@sapient.com',1,1,'2016-11-01 07:24:18'),(109,'pbkdf2_sha256$20000$rzqtzOq1xFSz$me1PdfCRQWItF8R8NPtWmBmEbvBPXzKtgFsZ39lSMcs=','2017-09-17 09:28:17',0,'126208','Virendra','Singh 5','vsingh125@sapient.com',1,1,'2016-11-01 07:25:10'),(110,'pbkdf2_sha256$20000$ZAeRGdlCOYOU$m1JfQh+KwsVg7rFDx33n97fJxcR4MWO6Ey6jS5CU/DM=','2017-09-19 16:25:57',0,'125247','Abhishek','Sriram','asriram@sapient.com',1,1,'2016-11-17 03:52:58'),(111,'pbkdf2_sha256$20000$65ibUsDkluVu$wcgIQzGxgGm90ggRepFgn7pDfw2SdNwvC/5oiBTQw8Y=','2017-09-04 07:18:53',0,'122698','Raj','Keshav','rkeshav2@sapient.com',1,1,'2016-11-21 07:31:43'),(112,'pbkdf2_sha256$20000$SmonO1hwa8gV$jzi63dkSm1TjcB+b8rTjdT329l9kjwi1SYVhvBC8kD4=','2017-06-05 10:20:20',0,'126346','Sabir Ahmed','Choudhury','schoudhury5@sapient.com',1,1,'2016-12-08 04:11:49'),(113,'pbkdf2_sha256$20000$Ut0uxLXqIGbj$cRRfknf5fPm6obqiZihV3ozQ8WPPEtTMDyzRRE6nWO8=','2017-04-25 18:33:00',0,'126319','Jitendra','Kumar 10','jkumar25@sapient.com',1,1,'2016-12-26 05:11:20'),(114,'pbkdf2_sha256$20000$9mdwOTuA2Piw$EqIzZYRCGWZL73EIfpVcHLfLfpmsoinBWKAxvcTGWgs=','2017-08-11 09:37:17',0,'123663','Deepak','Dogra','ddogra@sapient.com',1,1,'2016-12-28 08:51:01'),(115,'pbkdf2_sha256$20000$TTqhEHU2y5Xr$zfli2dLrQa6g6YakIV2XjnA7BZ2T2fC9F1gIjydEsqg=','2017-04-18 16:21:35',0,'125862','Vikram','Sharma 2','vsharma108@sapient.com',1,1,'2017-01-19 11:54:19'),(116,'pbkdf2_sha256$20000$Y9wpjnmwLfrC$esqZbiL6w/g7R2bxTTF+upcTiJwRkRRs8sbbtOVI9CM=','2017-07-22 06:31:10',0,'115398','Subhendu','Kumar Tiwari','stiwari19@sapient.com',1,1,'2017-01-30 10:09:14'),(117,'pbkdf2_sha256$20000$fiekYnD6OPcg$7xiHWe10e+p0G68CXXcrWSurIN5AxFgEhfz4aeOBnyY=','2017-05-29 06:04:06',0,'122417','Chetan','Jangir','cjangir@sapient.com',1,1,'2017-02-01 06:50:03'),(118,'pbkdf2_sha256$20000$X62LI7y5AzQw$u4fFVwZhc9elGrExmXP1AhqNP1q4Ej8Gdx0rpel1B9k=',NULL,0,'128000','Mohit','Dubey ','mdubey4@sapient.com',1,1,'2017-03-06 13:38:59'),(119,'pbkdf2_sha256$20000$Fnl28ji04Mlj$eT7/G9n16ms4w08gWZ6q4mSZYZnSh014wWhvjINE8GI=','2017-08-30 16:10:59',0,'127048','Farheen','Khan','fkhan10@sapient.com',1,1,'2017-03-09 12:27:12'),(120,'pbkdf2_sha256$20000$9ylBoRfjpmvj$xapslqW/7HZaOgnVFi8ZEL2gzma4qFIx+kG/ahSXyng=','2017-09-11 16:39:21',0,'128296','Umesh','Bhatt','ubhatt@sapient.com',1,1,'2017-03-10 04:15:03'),(121,'pbkdf2_sha256$20000$9MLiUk91lnrP$RHNh79xjEwunscpQJkQQDu/sYyDe3H20BhBQ03tpzeY=','2017-09-05 10:21:13',0,'121545','RaviKumar','Kasim','rashokkumar@sapient.com',1,1,'2017-03-10 06:17:50'),(122,'pbkdf2_sha256$20000$NmgszR1W77su$6uTOcqckjb0HXPFmwpb77FQhact3SQ5lz+I6YlGG96I=','2017-09-20 10:11:24',0,'124581','Rajesh','Mekala','rmekala@sapient.com',1,1,'2017-03-21 08:52:22'),(123,'pbkdf2_sha256$20000$kdVdnki0hzwI$GpnVDKhp9t4yst5nlmEuZJypaDz+lJiNAavXQT/WUyE=',NULL,0,'128491','Aagam','Jain','ajain229@sapient.com',1,1,'2017-03-24 05:23:50'),(124,'pbkdf2_sha256$20000$uRHlCfadpXP7$SVJ6Kq1angZVoAXAIaq+jG0SXycULiCgLGIbdvqNU28=','2017-09-01 02:55:35',0,'126451','Piyush','Kumar','pkumar152@sapient.com',1,1,'2017-05-03 09:31:32'),(125,'pbkdf2_sha256$20000$ZydKyz9jA6Qr$UBjg5w5CiGmHMFvz3A/hZ0oJidUqeL34Cga0Wn4XSJ0=','2017-09-13 12:03:14',0,'128701','Shailesh','Singh','ssingh282@sapient.com',1,1,'2017-05-15 07:33:00'),(126,'pbkdf2_sha256$20000$BsGomDBQoP5M$3mV8blo5dhQ3GSAFQn/y4hdxKEp6GF4m4KPFt9S47CY=','2017-09-05 11:18:52',0,'130896','Narendra','Pandey','npandey14@sapient.com',1,1,'2017-05-24 04:33:39'),(127,'pbkdf2_sha256$20000$zFowuJQI9bmV$aImYhbPXhyoUXY7w2hxDJ2MOlnBS8IFbHn9y/Tnt+ZY=','2017-09-01 20:15:49',0,'131793','Mukesh','Singh 3','msingh115@sapient.com',1,1,'2017-06-20 10:11:50'),(128,'pbkdf2_sha256$36000$bCQO02WZgmlE$7VRmL9vV7VRlwJlomodSP4d1gj/BCM13JE16DNQ4RiY=','2017-09-21 08:07:54',0,'128128','Amit Kumar','Mishra','amishra76@sapient.com',1,1,'2017-07-04 07:48:40'),(129,'pbkdf2_sha256$20000$CRvdgyPVFsJg$IoxAHKSBfnkX+kkpFxr2abR3nYUinvhZmNjP5G9sLHU=','2017-09-05 03:44:30',0,'109756','Yamini','Kanwar','ykanwar@sapient.com',1,1,'2017-08-02 10:36:53'),(130,'pbkdf2_sha256$20000$jQsn0VvbCOYr$LP9gL6ynDMj0lkajbJ/cg+g9KTv1Vo22dhMyV2+wg+s=','2017-09-18 09:45:11',0,'124730','Naresh','Dhaundiyal','ndhaundiyal2@sapient.com',1,1,'2017-08-30 07:52:36'),(131,'pbkdf2_sha256$20000$i2BoYcfRrwdc$zP7lbDhMNujasu2YZS75lBSqB4V4oDPiajiokhOqX5Y=','2017-09-20 01:59:43',0,'115773','Venkata Krishna','Godavarthi','vgodavarthi@sapient.com',1,1,'2017-09-01 03:47:49'),(132,'pbkdf2_sha256$20000$7z7pfFq8i3N0$VYCSBpUUYJbhRkRjOuN3JrIxhdCy6+AM6YJ3UpsAk2w=','2017-09-08 10:58:24',0,'133302','Vaibhav','Saxena 2','vsaxena4@sapient.com',1,1,'2017-09-08 10:57:11');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (2,3,1),(28,4,2),(97,5,1),(7,6,1),(8,7,1),(9,8,1),(10,9,1),(29,10,1),(101,80,1),(14,12,2),(15,13,3),(16,14,3),(17,15,3),(18,16,3),(19,17,3),(20,18,3),(181,19,2),(22,20,2),(99,21,2),(24,22,2),(25,23,3),(32,24,2),(167,25,2),(30,26,2),(33,27,2),(34,28,3),(36,29,2),(37,30,2),(72,32,2),(40,33,2),(43,34,3),(105,35,3),(106,36,2),(48,37,3),(49,38,3),(131,39,2),(125,40,1),(53,41,3),(55,42,2),(57,43,3),(58,44,3),(179,45,2),(159,46,2),(62,47,3),(63,48,2),(64,49,3),(65,50,3),(66,51,2),(67,52,2),(120,53,2),(171,54,2),(157,55,1),(96,56,3),(110,85,2),(148,58,2),(75,59,3),(153,60,3),(77,61,3),(132,62,2),(100,63,2),(113,87,2),(107,82,3),(82,66,3),(156,67,2),(149,68,2),(85,69,3),(86,70,3),(87,71,3),(88,72,3),(89,73,3),(90,74,3),(160,75,2),(174,76,2),(158,77,2),(126,78,1),(95,79,3),(104,81,2),(108,83,3),(109,84,3),(112,86,3),(121,88,2),(115,89,1),(116,90,3),(117,91,3),(118,92,3),(122,93,3),(123,94,2),(124,95,1),(127,96,2),(128,97,2),(129,98,3),(130,99,3),(133,100,1),(134,101,2),(135,102,2),(146,103,2),(137,104,3),(138,105,2),(139,106,3),(140,107,3),(141,108,3),(142,109,3),(143,110,3),(145,111,3),(147,112,3),(150,113,3),(151,114,3),(152,115,1),(154,116,3),(155,117,3),(161,118,3),(162,119,3),(163,120,2),(164,121,3),(165,122,3),(166,123,3),(168,124,3),(169,125,2),(170,126,1),(172,127,3),(173,128,2),(176,129,1),(178,130,2),(180,131,3),(182,132,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2293 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (25,'auth','group');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c84cku3yx77xt2pq1gdpvyhp76o8phcm','NDRiNTEzYTVkMDRiYzE5NjliNmNiMTcwY2E3MDY0OWFmOWFlZDQyMDp7Il9hdXRoX3VzZXJfaWQiOiIxMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFlNDMyY2VkZTBjNjZlNDRjNWU5NTVjYWJlZDZjNWRlZTliZjg4ZGUifQ==','2017-10-05 07:55:41'),('eqen3dfnmzc5u2hhyupcnbwi5dxz9r3y','M2Y2MzM1ZTFkMmI0MzUzMThjOGU2YjlhZDNkNTk4NjE1YWM1OWE5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWVkYTA2ZmFjYmZkMjIxMGVjZWYyODdlYTNmMDMyYzEwODE1ZTFhIn0=','2017-10-05 07:59:09');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-21  8:41:19
