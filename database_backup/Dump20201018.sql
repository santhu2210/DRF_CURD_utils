-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: room_book_dev
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_restapi_booking`
--

DROP TABLE IF EXISTS `app_restapi_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_restapi_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(3000) NOT NULL,
  `description` longtext,
  `date` date NOT NULL,
  `start` time(6) NOT NULL,
  `end` time(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_restapi_booking_created_by_id_04d8ac7e_fk_auth_user_id` (`created_by_id`),
  KEY `app_restapi_booking_room_id_d7bdfcac_fk_app_restapi_room_id` (`room_id`),
  CONSTRAINT `app_restapi_booking_created_by_id_04d8ac7e_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `app_restapi_booking_room_id_d7bdfcac_fk_app_restapi_room_id` FOREIGN KEY (`room_id`) REFERENCES `app_restapi_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_restapi_booking`
--

LOCK TABLES `app_restapi_booking` WRITE;
/*!40000 ALTER TABLE `app_restapi_booking` DISABLE KEYS */;
INSERT INTO `app_restapi_booking` VALUES (1,'Python Interview','planned tech Interview for the python developer position','2020-10-20','11:00:00.000000','11:29:50.000000','2020-10-15 11:50:10.571299',0,2,2),(2,'DevOps interview','Interview for DevOps role','2020-10-21','13:00:16.000000','14:00:50.000000','2020-10-15 11:51:51.943439',0,4,3),(3,'Internal Team meeting','Weekly Internal team meeting','2020-10-22','11:00:00.000000','12:00:00.000000','2020-10-15 11:53:56.345714',0,4,2),(4,'Leadership meeting','Leadership meetings','2020-10-22','14:00:00.000000','15:00:00.000000','2020-10-15 12:44:36.509183',0,4,2),(5,'Meeting with CFO','Meeting with CFO to discuss Apraisal','2020-10-22','16:00:00.000000','16:30:00.000000','2020-10-15 17:17:12.192898',0,2,2),(6,'Meeting with CTO','Meeting with CFO to discuss Apraisal','2020-10-22','17:00:00.000000','17:30:00.000000','2020-10-15 17:51:42.280003',0,2,2),(11,'Meeting with CTO-ii','Meeting with CFO to discuss Apraisal','2020-10-22','18:25:00.000000','18:40:00.000000','2020-10-15 18:07:08.190894',0,2,2),(12,'Meeting with CTO-iii','Meeting with CFO to discuss Apraisal','2020-10-22','19:05:00.000000','19:20:00.000000','2020-10-15 18:18:04.228966',0,2,2),(13,'Meeting with CTO-iv','Meeting with CFO to discuss Apraisal','2020-10-22','19:25:00.000000','19:40:00.000000','2020-10-15 18:22:49.861827',0,2,2),(15,'Meeting with CTO-vi','Meeting with CFO to discuss Apraisal','2020-10-22','19:45:00.000000','19:55:00.000000','2020-10-15 18:27:59.954075',0,2,2),(16,'Meeting with CTO-vii','Meeting with CFO to discuss Apraisal','2020-10-22','10:45:00.000000','10:55:00.000000','2020-10-15 18:28:35.010856',0,2,2),(21,'Meeting with CTO-viii','Meeting with CFO to discuss Apraisal','2020-10-22','09:45:00.000000','09:55:00.000000','2020-10-15 18:41:10.633593',0,2,2),(27,'Meeting with CTO-ix','Meeting with CFO to discuss Apraisal','2020-10-21','09:20:01.000000','09:30:00.000000','2020-10-16 18:02:18.874199',0,2,2),(28,'Meeting with CTO-ix','Meeting with CFO to discuss Apraisal','2020-10-21','09:10:01.000000','09:20:00.000000','2020-10-16 18:02:59.872933',0,2,2),(29,'Meeting with CTO-X','Meeting with CFO to discuss Apraisal','2020-10-23','09:15:01.000000','09:30:00.000000','2020-10-16 18:03:57.682853',0,2,2),(31,'Meeting with CTO-XI','Meeting with CFO to discuss Apraisal','2020-10-23','09:45:01.000000','10:00:00.000000','2020-10-16 18:05:18.028829',0,2,2),(33,'Meeting with CTO-XIII','Meeting with CFO to discuss Apraisal','2020-10-23','10:15:01.000000','10:25:00.000000','2020-10-16 18:06:48.889142',0,2,2),(34,'Meeting for checking-2','Meeting with CFO to discuss Apraisal','2020-10-20','10:00:01.000000','10:30:00.000000','2020-10-16 18:46:39.789028',0,2,2),(35,'Meeting for checking-3','Meeting with CFO to discuss Apraisal','2020-10-20','10:00:01.000000','10:30:00.000000','2020-10-16 18:46:55.000850',0,2,3),(36,'Meeting for checking-4','Meeting with CFO to discuss Apraisal','2020-10-20','10:00:01.000000','10:30:00.000000','2020-10-16 18:47:06.222697',0,2,4),(38,'Meeting for checking-3-23','Meeting with CFO to discuss Apraisal','2020-10-23','11:05:01.000000','11:55:00.000000','2020-10-16 19:42:18.915656',0,2,3),(41,'Meeting for checking-4-23','Meeting with CFO to discuss Apraisal','2020-10-23','13:05:01.000000','14:55:00.000000','2020-10-17 18:01:03.642705',0,2,4),(43,'Meeting for checking-5-23','Meeting with CFO to discuss Apraisal','2020-10-23','15:05:01.000000','15:15:00.000000','2020-10-17 19:04:45.814168',0,2,5);
/*!40000 ALTER TABLE `app_restapi_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_restapi_booking_members`
--

DROP TABLE IF EXISTS `app_restapi_booking_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_restapi_booking_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_restapi_booking_members_booking_id_user_id_f33ea3de_uniq` (`booking_id`,`user_id`),
  KEY `app_restapi_booking_members_user_id_80e4d362_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_restapi_booking__booking_id_482de511_fk_app_resta` FOREIGN KEY (`booking_id`) REFERENCES `app_restapi_booking` (`id`),
  CONSTRAINT `app_restapi_booking_members_user_id_80e4d362_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_restapi_booking_members`
--

LOCK TABLES `app_restapi_booking_members` WRITE;
/*!40000 ALTER TABLE `app_restapi_booking_members` DISABLE KEYS */;
INSERT INTO `app_restapi_booking_members` VALUES (1,1,2),(2,1,4),(3,2,2),(5,2,4),(6,3,2),(8,3,4),(10,4,2),(11,4,4),(12,6,2),(22,11,2),(24,12,1),(25,12,2),(27,13,1),(28,13,2),(31,15,1),(32,15,2),(34,16,2),(44,21,4),(56,27,4),(58,28,4),(60,29,4),(64,31,4),(68,33,4),(70,34,4),(72,35,4),(74,36,4),(78,38,4),(84,41,4),(88,43,4);
/*!40000 ALTER TABLE `app_restapi_booking_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_restapi_room`
--

DROP TABLE IF EXISTS `app_restapi_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_restapi_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(3000) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_restapi_room_created_by_id_672692aa_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `app_restapi_room_created_by_id_672692aa_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_restapi_room`
--

LOCK TABLES `app_restapi_room` WRITE;
/*!40000 ALTER TABLE `app_restapi_room` DISABLE KEYS */;
INSERT INTO `app_restapi_room` VALUES (1,'Mercury','The small and hot room,  allocated for an interview, one to one meeting purpose','2020-10-15 10:38:14.614075',0,2),(2,'Venus','Mid-size room, allocated for small groups(4-5) meetings, planning purpose.','2020-10-15 10:42:51.343533',0,2),(3,'Mars','Mid-size room, Located nearby balcony, allocated for groups meetings, events','2020-10-15 10:44:23.396210',0,2),(4,'Jupyter','Very Large size room, allocated for the conference, onsite discussions, team meetings','2020-10-15 10:45:14.267487',0,2),(5,'Saturn','Large size room, allocated for meetings, discussion for leaders, chief officers','2020-10-15 10:46:42.097186',0,2);
/*!40000 ALTER TABLE `app_restapi_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_restapi_userlogin`
--

DROP TABLE IF EXISTS `app_restapi_userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_restapi_userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_restapi_userlogin_user_id_d05d82ea_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_restapi_userlogin_user_id_d05d82ea_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_restapi_userlogin`
--

LOCK TABLES `app_restapi_userlogin` WRITE;
/*!40000 ALTER TABLE `app_restapi_userlogin` DISABLE KEYS */;
INSERT INTO `app_restapi_userlogin` VALUES (1,'2020-10-15 07:55:22.414736',2),(2,'2020-10-16 18:22:52.722630',2),(3,'2020-10-17 18:40:48.175222',2),(4,'2020-10-17 18:42:06.549558',4),(5,'2020-10-17 18:42:15.182558',2),(6,'2020-10-17 19:29:54.514916',2);
/*!40000 ALTER TABLE `app_restapi_userlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user login',7,'add_userlogin'),(20,'Can change user login',7,'change_userlogin'),(21,'Can delete user login',7,'delete_userlogin'),(22,'Can add cors model',8,'add_corsmodel'),(23,'Can change cors model',8,'change_corsmodel'),(24,'Can delete cors model',8,'delete_corsmodel'),(25,'Can add room',9,'add_room'),(26,'Can change room',9,'change_room'),(27,'Can delete room',9,'delete_room'),(28,'Can add booking',10,'add_booking'),(29,'Can change booking',10,'change_booking'),(30,'Can delete booking',10,'delete_booking');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$I4ro3BPTnxog$ArTweImtvDfDB2WyWOAU7AogG9mjA9MzoUCz5zPlf3Q=','2020-10-15 10:41:10.961933',1,'admin','','','msg2shanth@gmail.com',1,1,'2020-10-15 07:31:25.188200'),(2,'pbkdf2_sha256$36000$hoV4noDbmTRs$YRMFPkzHZBKBJN1g4kt6clHWPzUinL/SIK142G7WCMA=',NULL,0,'devuser','development  User','','',0,1,'2020-10-15 07:36:29.000000'),(4,'pbkdf2_sha256$36000$vYbvVXO69OLh$MpZ9UIACDcenCgatJ/JVAoSeUn8aBKaf5hSX/On4iww=',NULL,0,'devuser_TL','','','',0,1,'2020-10-15 11:49:50.771984');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-15 07:36:29.345682','2','devuser',1,'[{\"added\": {}}]',4,1),(2,'2020-10-15 07:37:02.649981','2','devuser',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',4,1),(3,'2020-10-15 07:37:08.163181','2','devuser',2,'[]',4,1),(4,'2020-10-15 10:33:30.111743','3','testuser',1,'[{\"added\": {}}]',4,1),(5,'2020-10-15 10:34:13.721479','3','testuser',2,'[{\"changed\": {\"fields\": [\"first_name\", \"email\"]}}]',4,1),(6,'2020-10-15 10:38:14.625606','1','Room object',1,'[{\"added\": {}}]',9,1),(7,'2020-10-15 10:42:51.405265','2','Venus',1,'[{\"added\": {}}]',9,1),(8,'2020-10-15 10:44:23.407738','3','Mars',1,'[{\"added\": {}}]',9,1),(9,'2020-10-15 10:45:14.300576','4','Jupyter',1,'[{\"added\": {}}]',9,1),(10,'2020-10-15 10:46:42.110219','5','Saturn',1,'[{\"added\": {}}]',9,1),(11,'2020-10-15 11:49:50.905339','4','devuser_TL',1,'[{\"added\": {}}]',4,1),(12,'2020-10-15 11:50:10.810552','1','Python Interview',1,'[{\"added\": {}}]',10,1),(13,'2020-10-15 11:51:51.961484','2','DevOps interview',1,'[{\"added\": {}}]',10,1),(14,'2020-10-15 11:53:44.184809','5','devuser_assistant',1,'[{\"added\": {}}]',4,1),(15,'2020-10-15 11:53:56.388951','3','Internal Team meeting',1,'[{\"added\": {}}]',10,1),(16,'2020-10-15 12:44:36.529263','4','Leadership meeting',1,'[{\"added\": {}}]',10,1),(17,'2020-10-15 12:45:05.212515','3','Internal Team meeting',2,'[{\"changed\": {\"fields\": [\"room\"]}}]',10,1),(18,'2020-10-15 12:45:45.424332','3','Internal Team meeting',2,'[{\"changed\": {\"fields\": [\"start\", \"end\"]}}]',10,1),(19,'2020-10-15 12:46:01.050093','4','Leadership meeting',2,'[]',10,1),(20,'2020-10-16 19:02:54.690690','6','Uranus',1,'[{\"added\": {}}]',9,1),(21,'2020-10-17 19:11:02.113678','6','Uranus',3,'',9,1),(22,'2020-10-17 19:14:26.396828','3','testuser',3,'',4,1),(23,'2020-10-17 19:17:05.207657','5','devuser_assistant',3,'',4,1),(24,'2020-10-17 19:39:45.797855','20','Meeting with CTO-vii',3,'',10,1),(25,'2020-10-17 19:39:45.979340','19','Meeting with CTO-vii',3,'',10,1),(26,'2020-10-17 19:39:46.130740','18','Meeting with CTO-vii',3,'',10,1),(27,'2020-10-17 19:39:46.287156','17','Meeting with CTO-vii',3,'',10,1),(28,'2020-10-17 19:40:52.980003','44','Meeting for checking-5-23',3,'',10,1),(29,'2020-10-17 19:40:53.096314','42','Meeting for checking-4-23',3,'',10,1),(30,'2020-10-17 19:40:53.271780','26','Meeting with CTO-ix',3,'',10,1),(31,'2020-10-17 19:40:53.387086','25','Meeting with CTO-ix',3,'',10,1),(32,'2020-10-17 19:40:53.472312','24','Meeting with CTO-viii',3,'',10,1),(33,'2020-10-17 19:40:53.596644','23','Meeting with CTO-viii',3,'',10,1),(34,'2020-10-17 19:40:53.687886','22','Meeting with CTO-viii',3,'',10,1),(35,'2020-10-17 19:40:53.789156','7','Meeting with CTO',3,'',10,1),(36,'2020-10-17 19:41:13.644902','32','Meeting with CTO-XIII',3,'',10,1),(37,'2020-10-17 19:41:25.876771','40','Meeting for checking-5-23',3,'',10,1),(38,'2020-10-17 19:41:47.099011','30','Meeting with CTO-XI',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app_restapi','booking'),(9,'app_restapi','room'),(7,'app_restapi','userlogin'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'corsheaders','corsmodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-15 07:27:53.969785'),(2,'auth','0001_initial','2020-10-15 07:28:13.463051'),(3,'admin','0001_initial','2020-10-15 07:28:22.230394'),(4,'admin','0002_logentry_remove_auto_add','2020-10-15 07:28:22.473243'),(5,'app_restapi','0001_initial','2020-10-15 07:28:24.670624'),(6,'contenttypes','0002_remove_content_type_name','2020-10-15 07:28:27.784135'),(7,'auth','0002_alter_permission_name_max_length','2020-10-15 07:28:29.804456'),(8,'auth','0003_alter_user_email_max_length','2020-10-15 07:28:30.104255'),(9,'auth','0004_alter_user_username_opts','2020-10-15 07:28:30.245630'),(10,'auth','0005_alter_user_last_login_null','2020-10-15 07:28:35.472648'),(11,'auth','0006_require_contenttypes_0002','2020-10-15 07:28:35.579933'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-15 07:28:35.905800'),(13,'auth','0008_alter_user_username_max_length','2020-10-15 07:28:38.980095'),(14,'sessions','0001_initial','2020-10-15 07:28:40.524472'),(15,'app_restapi','0002_room','2020-10-15 10:32:12.549742'),(16,'app_restapi','0003_auto_20201015_1715','2020-10-15 11:45:34.619372');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('yl1nho9fii79int6p4w7jtlbfr9vosnh','OWZkZGIwZDIzZDVkZjI4ZDJhM2NlOWJlOTVlNDJmMTYxY2EwYmU0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjg1YTg2ZjQyNWVhYzdhZGIwYTRkNWFlNzIyMjBiNWM3N2FhNTMwIn0=','2020-10-29 10:41:11.122360');
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

-- Dump completed on 2020-10-18  1:16:07
