-- MySQL dump 10.14  Distrib 5.5.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: acad
-- ------------------------------------------------------
-- Server version	5.5.44-MariaDB

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
-- Table structure for table `acad_attendance`
--

DROP TABLE IF EXISTS `acad_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `p_a` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acad_attendance_student_id_72086611_fk_acad_student_id` (`student_id`),
  KEY `acad_attendance_subject_id_7f0b1002_fk_acad_subject_id` (`subject_id`),
  CONSTRAINT `acad_attendance_student_id_72086611_fk_acad_student_id` FOREIGN KEY (`student_id`) REFERENCES `acad_student` (`id`),
  CONSTRAINT `acad_attendance_subject_id_7f0b1002_fk_acad_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `acad_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_attendance`
--

LOCK TABLES `acad_attendance` WRITE;
/*!40000 ALTER TABLE `acad_attendance` DISABLE KEYS */;
INSERT INTO `acad_attendance` VALUES (1,1,1,'2016-03-31',1),(2,2,1,'2016-03-31',1),(3,3,1,'2016-03-31',1),(4,4,1,'2016-03-31',1),(5,5,1,'2016-03-31',1),(6,6,1,'2016-03-31',1),(7,7,1,'2016-03-31',1),(8,8,1,'2016-03-31',1),(9,9,1,'2016-03-31',1),(10,10,1,'2016-03-31',1),(11,11,1,'2016-03-31',1),(12,12,1,'2016-03-31',1),(13,13,1,'2016-03-31',1),(14,14,1,'2016-03-31',1),(15,15,1,'2016-03-31',1),(16,16,1,'2016-03-31',1),(17,17,1,'2016-03-31',1),(18,18,1,'2016-03-31',1),(19,19,1,'2016-03-31',1),(20,20,1,'2016-03-31',1),(21,21,1,'2016-03-31',1),(22,22,1,'2016-03-31',1),(23,23,1,'2016-03-31',1),(24,24,1,'2016-03-31',1),(25,25,1,'2016-03-31',1),(26,26,1,'2016-03-31',1),(27,27,1,'2016-03-31',1),(28,28,1,'2016-03-31',1),(29,29,1,'2016-03-31',1),(30,30,1,'2016-03-31',1),(31,31,1,'2016-03-31',1),(32,32,1,'2016-03-31',1),(33,33,1,'2016-03-31',1),(34,34,1,'2016-03-31',1),(35,35,1,'2016-03-31',1),(36,36,1,'2016-03-31',1),(37,37,1,'2016-03-31',1),(38,38,1,'2016-03-31',1),(39,39,1,'2016-03-31',1),(40,40,1,'2016-03-31',1),(41,41,1,'2016-03-31',1),(42,42,1,'2016-03-31',1),(43,43,1,'2016-03-31',1),(44,44,1,'2016-03-31',1),(45,45,1,'2016-03-31',1),(46,46,1,'2016-03-31',1),(47,47,1,'2016-03-31',1),(48,48,1,'2016-03-31',1),(49,49,1,'2016-03-31',1),(50,50,1,'2016-03-31',1),(51,51,1,'2016-03-31',1),(52,52,1,'2016-03-31',1),(53,53,1,'2016-03-31',1),(54,54,1,'2016-03-31',0),(55,55,1,'2016-03-31',1),(56,56,1,'2016-03-31',1),(57,57,1,'2016-03-31',1),(58,58,1,'2016-03-31',0),(59,59,1,'2016-03-31',1),(60,60,1,'2016-03-31',1),(61,61,1,'2016-03-31',1),(62,62,1,'2016-03-31',1),(63,63,1,'2016-03-31',1),(64,64,1,'2016-03-31',1),(65,65,1,'2016-03-31',1),(66,66,1,'2016-03-31',1),(67,67,1,'2016-03-31',1),(68,68,1,'2016-03-31',1),(69,69,1,'2016-03-31',1),(70,70,1,'2016-03-31',1),(71,71,1,'2016-03-31',1),(72,72,1,'2016-03-31',1),(73,73,1,'2016-03-31',1),(74,74,1,'2016-03-31',1),(75,75,1,'2016-03-31',1),(76,76,1,'2016-03-31',1),(77,77,1,'2016-03-31',1),(78,78,1,'2016-03-31',1),(79,79,1,'2016-03-31',1),(80,80,1,'2016-03-31',1),(81,81,1,'2016-03-31',1),(82,82,1,'2016-03-31',1),(83,83,1,'2016-03-31',1),(84,1,1,'2016-04-03',1),(85,2,1,'2016-04-03',1),(86,3,1,'2016-04-03',1),(87,4,1,'2016-04-03',1),(88,5,1,'2016-04-03',1),(89,6,1,'2016-04-03',1),(90,7,1,'2016-04-03',1),(91,8,1,'2016-04-03',1),(92,9,1,'2016-04-03',1),(93,10,1,'2016-04-03',1),(94,11,1,'2016-04-03',1),(95,12,1,'2016-04-03',1),(96,13,1,'2016-04-03',1),(97,14,1,'2016-04-03',1),(98,15,1,'2016-04-03',1),(99,16,1,'2016-04-03',1),(100,17,1,'2016-04-03',1),(101,18,1,'2016-04-03',1),(102,19,1,'2016-04-03',1),(103,20,1,'2016-04-03',1),(104,21,1,'2016-04-03',1),(105,22,1,'2016-04-03',1),(106,23,1,'2016-04-03',1),(107,24,1,'2016-04-03',1),(108,25,1,'2016-04-03',1),(109,26,1,'2016-04-03',1),(110,27,1,'2016-04-03',1),(111,28,1,'2016-04-03',1),(112,29,1,'2016-04-03',1),(113,30,1,'2016-04-03',1),(114,31,1,'2016-04-03',1),(115,32,1,'2016-04-03',1),(116,33,1,'2016-04-03',1),(117,34,1,'2016-04-03',1),(118,35,1,'2016-04-03',1),(119,36,1,'2016-04-03',1),(120,37,1,'2016-04-03',1),(121,38,1,'2016-04-03',1),(122,39,1,'2016-04-03',1),(123,40,1,'2016-04-03',1),(124,41,1,'2016-04-03',1),(125,42,1,'2016-04-03',1),(126,43,1,'2016-04-03',1),(127,44,1,'2016-04-03',1),(128,45,1,'2016-04-03',1),(129,46,1,'2016-04-03',1),(130,47,1,'2016-04-03',1),(131,48,1,'2016-04-03',1),(132,49,1,'2016-04-03',1),(133,50,1,'2016-04-03',1),(134,51,1,'2016-04-03',1),(135,52,1,'2016-04-03',1),(136,53,1,'2016-04-03',1),(137,54,1,'2016-04-03',1),(138,55,1,'2016-04-03',0),(139,56,1,'2016-04-03',1),(140,57,1,'2016-04-03',1),(141,58,1,'2016-04-03',1),(142,59,1,'2016-04-03',1),(143,60,1,'2016-04-03',0),(144,61,1,'2016-04-03',0),(145,62,1,'2016-04-03',1),(146,63,1,'2016-04-03',1),(147,64,1,'2016-04-03',1),(148,65,1,'2016-04-03',1),(149,66,1,'2016-04-03',1),(150,67,1,'2016-04-03',1),(151,68,1,'2016-04-03',1),(152,69,1,'2016-04-03',1),(153,70,1,'2016-04-03',1),(154,71,1,'2016-04-03',1),(155,72,1,'2016-04-03',1),(156,73,1,'2016-04-03',1),(157,74,1,'2016-04-03',1),(158,75,1,'2016-04-03',1),(159,76,1,'2016-04-03',1),(160,77,1,'2016-04-03',1),(161,78,1,'2016-04-03',1),(162,79,1,'2016-04-03',1),(163,80,1,'2016-04-03',1),(164,81,1,'2016-04-03',1),(165,82,1,'2016-04-03',1),(166,83,1,'2016-04-03',1),(167,1,1,'2016-04-05',1),(168,2,1,'2016-04-05',1),(169,3,1,'2016-04-05',1),(170,4,1,'2016-04-05',1),(171,5,1,'2016-04-05',1),(172,6,1,'2016-04-05',1),(173,7,1,'2016-04-05',1),(174,8,1,'2016-04-05',1),(175,9,1,'2016-04-05',1),(176,10,1,'2016-04-05',1),(177,11,1,'2016-04-05',1),(178,12,1,'2016-04-05',1),(179,13,1,'2016-04-05',1),(180,14,1,'2016-04-05',1),(181,15,1,'2016-04-05',1),(182,16,1,'2016-04-05',1),(183,17,1,'2016-04-05',1),(184,18,1,'2016-04-05',1),(185,19,1,'2016-04-05',1),(186,20,1,'2016-04-05',1),(187,21,1,'2016-04-05',1),(188,22,1,'2016-04-05',1),(189,23,1,'2016-04-05',1),(190,24,1,'2016-04-05',1),(191,25,1,'2016-04-05',1),(192,26,1,'2016-04-05',1),(193,27,1,'2016-04-05',1),(194,28,1,'2016-04-05',1),(195,29,1,'2016-04-05',1),(196,30,1,'2016-04-05',1),(197,31,1,'2016-04-05',1),(198,32,1,'2016-04-05',1),(199,33,1,'2016-04-05',1),(200,34,1,'2016-04-05',1),(201,35,1,'2016-04-05',1),(202,36,1,'2016-04-05',1),(203,37,1,'2016-04-05',1),(204,38,1,'2016-04-05',1),(205,39,1,'2016-04-05',1),(206,40,1,'2016-04-05',1),(207,41,1,'2016-04-05',1),(208,42,1,'2016-04-05',1),(209,43,1,'2016-04-05',1),(210,44,1,'2016-04-05',1),(211,45,1,'2016-04-05',1),(212,46,1,'2016-04-05',1),(213,47,1,'2016-04-05',1),(214,48,1,'2016-04-05',1),(215,49,1,'2016-04-05',1),(216,50,1,'2016-04-05',1),(217,51,1,'2016-04-05',1),(218,52,1,'2016-04-05',1),(219,53,1,'2016-04-05',1),(220,54,1,'2016-04-05',1),(221,55,1,'2016-04-05',0),(222,56,1,'2016-04-05',0),(223,57,1,'2016-04-05',0),(224,58,1,'2016-04-05',0),(225,59,1,'2016-04-05',0),(226,60,1,'2016-04-05',0),(227,61,1,'2016-04-05',0),(228,62,1,'2016-04-05',1),(229,63,1,'2016-04-05',1),(230,64,1,'2016-04-05',1),(231,65,1,'2016-04-05',1),(232,66,1,'2016-04-05',1),(233,67,1,'2016-04-05',1),(234,68,1,'2016-04-05',1),(235,69,1,'2016-04-05',1),(236,70,1,'2016-04-05',1),(237,71,1,'2016-04-05',1),(238,72,1,'2016-04-05',1),(239,73,1,'2016-04-05',1),(240,74,1,'2016-04-05',1),(241,75,1,'2016-04-05',1),(242,76,1,'2016-04-05',1),(243,77,1,'2016-04-05',1),(244,78,1,'2016-04-05',1),(245,79,1,'2016-04-05',1),(246,80,1,'2016-04-05',1),(247,81,1,'2016-04-05',1),(248,82,1,'2016-04-05',1),(249,83,1,'2016-04-05',1);
/*!40000 ALTER TABLE `acad_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_batch`
--

DROP TABLE IF EXISTS `acad_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_year` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `group` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_batch`
--

LOCK TABLES `acad_batch` WRITE;
/*!40000 ALTER TABLE `acad_batch` DISABLE KEYS */;
INSERT INTO `acad_batch` VALUES (1,2013,3,6,'3CE34'),(2,2014,2,4,'2CE12');
/*!40000 ALTER TABLE `acad_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_hodrel`
--

DROP TABLE IF EXISTS `acad_hodrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_hodrel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hod_id` (`hod_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `acad_hodrel_hod_id_41e781f5_fk_acad_teacher_id` FOREIGN KEY (`hod_id`) REFERENCES `acad_teacher` (`id`),
  CONSTRAINT `acad_hodrel_user_id_8997a752_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_hodrel`
--

LOCK TABLES `acad_hodrel` WRITE;
/*!40000 ALTER TABLE `acad_hodrel` DISABLE KEYS */;
INSERT INTO `acad_hodrel` VALUES (1,2,5);
/*!40000 ALTER TABLE `acad_hodrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_marks`
--

DROP TABLE IF EXISTS `acad_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `assessment` int(11) NOT NULL,
  `att` int(11) NOT NULL,
  `mst1` int(11) NOT NULL,
  `mst2` int(11) NOT NULL,
  `sports` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acad_marks_ffaba1d1` (`subject_id`),
  KEY `acad_marks_student_id_ab135e18_fk_acad_student_id` (`student_id`),
  CONSTRAINT `acad_marks_student_id_ab135e18_fk_acad_student_id` FOREIGN KEY (`student_id`) REFERENCES `acad_student` (`id`),
  CONSTRAINT `acad_marks_subject_id_dd98b34b_fk_acad_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `acad_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_marks`
--

LOCK TABLES `acad_marks` WRITE;
/*!40000 ALTER TABLE `acad_marks` DISABLE KEYS */;
INSERT INTO `acad_marks` VALUES (1,1,1,10,10,10,10,0,0),(2,2,1,0,0,0,0,0,0),(3,3,1,0,0,0,0,0,0),(4,4,1,0,0,0,0,0,0),(5,5,1,0,0,0,0,0,0),(6,6,1,10,5,10,15,0,0),(7,7,1,0,0,0,0,0,0),(8,8,1,0,0,0,0,0,0),(9,9,1,0,0,0,0,0,0),(10,10,1,0,0,0,0,0,0),(11,11,1,0,0,0,0,0,0),(12,12,1,0,0,0,0,0,0),(13,13,1,0,0,0,0,0,0),(14,14,1,0,0,0,0,0,0),(15,15,1,0,0,0,0,0,0),(16,16,1,0,0,0,0,0,0),(17,17,1,0,0,0,0,0,0),(18,18,1,0,0,0,0,0,0),(19,19,1,0,0,0,0,0,0),(20,20,1,0,0,0,0,0,0),(21,21,1,0,0,0,0,0,0),(22,22,1,0,0,0,0,0,0),(23,23,1,0,0,0,0,0,0),(24,24,1,0,0,0,0,0,0),(25,25,1,0,0,0,0,0,0),(26,26,1,0,0,0,0,0,0),(27,27,1,0,0,0,0,0,0),(28,28,1,0,0,0,0,0,0),(29,29,1,0,0,0,0,0,0),(30,30,1,0,0,0,0,0,0),(31,31,1,0,0,0,0,0,0),(32,32,1,0,0,0,0,0,0),(33,33,1,0,0,0,0,0,0),(34,34,1,0,0,0,0,0,0),(35,35,1,0,0,0,0,0,0),(36,36,1,0,0,0,0,0,0),(37,37,1,0,0,0,0,0,0),(38,38,1,0,0,0,0,0,0),(39,39,1,0,0,0,0,0,0),(40,40,1,0,0,0,0,0,0),(41,41,1,0,0,0,0,0,0),(42,42,1,0,0,0,0,0,0),(43,43,1,0,0,0,0,0,0),(44,44,1,0,0,0,0,0,0),(45,45,1,0,0,0,0,0,0),(46,46,1,0,0,0,0,0,0),(47,47,1,0,0,0,0,0,0),(48,48,1,0,0,0,0,0,0),(49,49,1,0,0,0,0,0,0),(50,50,1,0,0,0,0,0,0),(51,51,1,0,0,0,0,0,0),(52,52,1,0,0,0,0,0,0),(53,53,1,0,0,0,0,0,0),(54,54,1,0,0,0,0,0,0),(55,55,1,0,0,0,0,0,0),(56,56,1,0,0,0,0,0,0),(57,57,1,0,0,0,0,0,0),(58,58,1,0,0,0,0,0,0),(59,59,1,0,0,0,0,0,0),(60,60,1,0,0,15,0,0,0),(61,61,1,0,0,15,0,0,0),(62,62,1,0,0,0,0,0,0),(63,63,1,0,0,0,0,0,0),(64,64,1,0,0,0,0,0,0),(65,65,1,0,0,0,0,0,0),(66,66,1,0,0,0,0,0,0),(67,67,1,0,0,0,0,0,0),(68,68,1,0,0,0,0,0,0),(69,69,1,0,0,0,0,0,0),(70,70,1,0,0,0,0,0,0),(71,71,1,0,0,0,0,0,0),(72,72,1,0,0,0,0,0,0),(73,73,1,0,0,0,0,0,0),(74,74,1,0,0,0,0,0,0),(75,75,1,0,0,0,0,0,0),(76,76,1,0,0,0,0,0,0),(77,77,1,0,0,0,0,0,0),(78,78,1,0,0,0,0,0,0),(79,79,1,0,0,0,0,0,0),(80,80,1,0,0,0,0,0,0),(81,81,1,0,0,0,0,0,0),(82,82,1,0,0,0,0,0,0),(83,83,1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `acad_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_student`
--

DROP TABLE IF EXISTS `acad_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `roll_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acad_student_batch_id_7e6b43fe_fk_acad_batch_id` (`batch_id`),
  CONSTRAINT `acad_student_batch_id_7e6b43fe_fk_acad_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `acad_batch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_student`
--

LOCK TABLES `acad_student` WRITE;
/*!40000 ALTER TABLE `acad_student` DISABLE KEYS */;
INSERT INTO `acad_student` VALUES (1,'Ruchika Devi',1,'F',11301087),(2,'Ruhani Thakur',1,'F',11301088),(3,'Sahil Bansal',1,'M',11301089),(4,'Sanchit Goyal',1,'M',11301090),(5,'Shalini Rana',1,'F',11301091),(6,'Shivam Sharma',1,'M',11301092),(7,'Simran Kaur',1,'F',11301093),(8,'Udhayvir Singh',1,'M',11301094),(9,'Vivek',1,'M',11301095),(10,'Aaina',1,'F',11301096),(11,'Aayush Mehta',1,'M',11301097),(12,'Abhishek Arora',1,'M',11301098),(13,'Aditi Goyal',1,'F',11301099),(14,'Akash Garg',1,'M',11301100),(15,'Anmol Rattan Singh',1,'M',11301101),(16,'Anurag',1,'M',11301102),(17,'Arshdeep Singh Sidhu',1,'M',11301103),(18,'Arshpreet Singh Thind',1,'M',11301104),(19,'Chandan Kumar',1,'M',11301105),(20,'Chirag Walia',1,'M',11301106),(21,'Davinder Singh',1,'M',11301107),(22,'Manish Kumar',1,'M',11301108),(23,'Manpreet Kaur',1,'F',11301109),(24,'Mehakdeep Singh',1,'M',11301110),(25,'Navjit Kaur',1,'F',11301111),(26,'Navneet Kaur Chahal',1,'F',11301112),(27,'Nitin Gupta',1,'M',11301113),(28,'Prerna Verma',1,'F',11301114),(29,'Prince Bansal',1,'M',11301115),(30,'Ravneet Kaur',1,'F',11301116),(31,'Sachin Saini',1,'M',11301117),(32,'Sahil Rawat',1,'M',11301118),(33,'Sarabpreet Singh',1,'M',11301119),(34,'Satnam Singh',1,'M',11301120),(35,'Simranjit Singh',1,'M',11301121),(36,'Sneh Kanwar Singh Sidhu',1,'M',11301122),(37,'Supreet Singh Sandhu',1,'M',11301123),(38,'Tanu',1,'M',11301124),(39,'Taranveer Singh',1,'M',11301125),(40,'Vineet Kapil',1,'M',11301126),(41,'Yuvraj Tuteja',1,'M',11301127),(42,'Aditya Bhardwaj',1,'M',11301128),(43,'Akanksha',1,'F',11301129),(44,'Ankush Goyal',1,'M',11301130),(45,'Ankush Rana',1,'M',11301131),(46,'Deepanshu Goyal',1,'M',11301133),(47,'Dikshita',1,'F',11301134),(48,'Dilsher Singh',1,'M',11301135),(49,'Dinesh Sharma',1,'M',11301136),(50,'Gurpreet Singh Kainth',1,'M',11301137),(51,'Itika Sharma',1,'F',11301138),(52,'Japneet Kaur',1,'F',11301139),(53,'Jasleen Kaur',1,'F',11301140),(54,'Jassimran Singh',1,'M',11301141),(55,'Jatin',1,'M',11301142),(56,'Karamjit Kaur',1,'F',11301143),(57,'Komal Rani',1,'F',11301144),(58,'Kriti Pirta',1,'F',11301145),(59,'Maninderjit Singh',1,'M',11301146),(60,'Mohit Jindal',1,'M',11301147),(61,'Mukul Shaunik',1,'M',11301148),(62,'Navjot Singh',1,'M',11301149),(63,'Nisha',1,'F',11301150),(64,'Paramveer Singh Ranwa',1,'M',11301151),(65,'Pranav Gupta',1,'M',11301152),(66,'Ravneet Kaur',1,'F',11301155),(67,'Sakshi',1,'F',11301156),(68,'Sarthak Dargan',1,'M',11301157),(69,'Vani Kansal',1,'F',11301158),(70,'Vijay Kumar Ram',1,'M',11301159),(71,'Vinamer Goel',1,'M',11301160),(72,'Bhavika Arora',1,'F',11301161),(73,'Bhavya Jindal',1,'F',11301162),(74,'Bindu Garg',1,'F',11301163),(75,'Chanpreet Singh Sehgal',1,'M',11301164),(76,'Damandeep Singh',1,'M',11301165),(77,'Devdeep Singh Nannan',1,'M',11301166),(78,'Diksha Pusha',1,'F',11301167),(79,'Dikshit Garg',1,'M',11301168),(80,'Gunwinder Singh',1,'M',11301169),(81,'Harinder Singh',1,'M',11301170),(82,'Kamna Dhingra',1,'F',11301171),(83,'Karan Garg',1,'M',11301172);
/*!40000 ALTER TABLE `acad_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_studentrel`
--

DROP TABLE IF EXISTS `acad_studentrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_studentrel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `acad_studentrel_student_id_c5867e97_fk_acad_student_id` FOREIGN KEY (`student_id`) REFERENCES `acad_student` (`id`),
  CONSTRAINT `acad_studentrel_user_id_bef401c0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_studentrel`
--

LOCK TABLES `acad_studentrel` WRITE;
/*!40000 ALTER TABLE `acad_studentrel` DISABLE KEYS */;
INSERT INTO `acad_studentrel` VALUES (1,60,3),(2,61,4);
/*!40000 ALTER TABLE `acad_studentrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_subject`
--

DROP TABLE IF EXISTS `acad_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acad_subject_batch_id_2a86e247_fk_acad_batch_id` (`batch_id`),
  KEY `acad_subject_teacher_id_1c32faf9_fk_acad_teacher_id` (`teacher_id`),
  CONSTRAINT `acad_subject_batch_id_2a86e247_fk_acad_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `acad_batch` (`id`),
  CONSTRAINT `acad_subject_teacher_id_1c32faf9_fk_acad_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `acad_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_subject`
--

LOCK TABLES `acad_subject` WRITE;
/*!40000 ALTER TABLE `acad_subject` DISABLE KEYS */;
INSERT INTO `acad_subject` VALUES (1,'RDBMS',1,1),(2,'sasa',1,2);
/*!40000 ALTER TABLE `acad_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_teacher`
--

DROP TABLE IF EXISTS `acad_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acad_teacher_batch_id_2ca16b18_fk_acad_batch_id` (`batch_id`),
  CONSTRAINT `acad_teacher_batch_id_2ca16b18_fk_acad_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `acad_batch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_teacher`
--

LOCK TABLES `acad_teacher` WRITE;
/*!40000 ALTER TABLE `acad_teacher` DISABLE KEYS */;
INSERT INTO `acad_teacher` VALUES (1,'Gurjit Singh Bhathal',1,'M'),(2,'Lakhwinder Kaur',1,'F');
/*!40000 ALTER TABLE `acad_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acad_teacherrel`
--

DROP TABLE IF EXISTS `acad_teacherrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acad_teacherrel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_id` (`teacher_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `acad_teacherrel_teacher_id_64027c51_fk_acad_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `acad_teacher` (`id`),
  CONSTRAINT `acad_teacherrel_user_id_bf151f97_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_teacherrel`
--

LOCK TABLES `acad_teacherrel` WRITE;
/*!40000 ALTER TABLE `acad_teacherrel` DISABLE KEYS */;
INSERT INTO `acad_teacherrel` VALUES (1,1,2);
/*!40000 ALTER TABLE `acad_teacherrel` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add batch',7,'add_batch'),(20,'Can change batch',7,'change_batch'),(21,'Can delete batch',7,'delete_batch'),(22,'Can add teacher',8,'add_teacher'),(23,'Can change teacher',8,'change_teacher'),(24,'Can delete teacher',8,'delete_teacher'),(25,'Can add teacher rel',9,'add_teacherrel'),(26,'Can change teacher rel',9,'change_teacherrel'),(27,'Can delete teacher rel',9,'delete_teacherrel'),(28,'Can add hod rel',10,'add_hodrel'),(29,'Can change hod rel',10,'change_hodrel'),(30,'Can delete hod rel',10,'delete_hodrel'),(31,'Can add student',11,'add_student'),(32,'Can change student',11,'change_student'),(33,'Can delete student',11,'delete_student'),(34,'Can add student rel',12,'add_studentrel'),(35,'Can change student rel',12,'change_studentrel'),(36,'Can delete student rel',12,'delete_studentrel'),(37,'Can add subject',13,'add_subject'),(38,'Can change subject',13,'change_subject'),(39,'Can delete subject',13,'delete_subject'),(40,'Can add marks',14,'add_marks'),(41,'Can change marks',14,'change_marks'),(42,'Can delete marks',14,'delete_marks'),(43,'Can add attendance',15,'add_attendance'),(44,'Can change attendance',15,'change_attendance'),(45,'Can delete attendance',15,'delete_attendance');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$tXk2lPqczty0$tPv/GnDqlvtHLd7+tRYMJRkbeyR5wfsZGVc9LwocNr4=','2016-04-05 09:12:18',1,'root','','','root@root.in',1,1,'2016-03-31 08:39:45'),(2,'pbkdf2_sha256$24000$iTse4sn4SPft$1vosghwhEpW1MeMDaGQJZXsTDklZtQw8vyVa+V7pKvQ=','2016-04-05 09:12:30',0,'gurjit_ucoe','','','',0,1,'2016-03-31 09:42:49'),(3,'pbkdf2_sha256$24000$RuUwHJTqdOAh$jzZYFZRfzLJa4c6qupXPdfi1Tg4+iuFvletSsJrDfbg=','2016-03-31 09:47:29',0,'mj_ucoe','','','',0,1,'2016-03-31 09:44:14'),(4,'pbkdf2_sha256$24000$80erw2yecI1M$BXbMv4AGq4dT7xG9PgVjh+8I2C4TN/RSq6B8P5vR1vE=',NULL,0,'ms_ucoe','','','',0,1,'2016-03-31 09:44:49'),(5,'pbkdf2_sha256$24000$M1uqObIhAK8f$lUDWVBdWIgd4qR4vg2RmoQre6KFaCr+NPuYTV3Txf4A=','2016-04-05 09:38:51',0,'hod_ce','','','',0,1,'2016-04-05 07:51:12');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-03-31 09:12:51','1','3CE34:6:2013',1,'Added.',7,1),(2,'2016-03-31 09:13:55','1','Ruchika Devi',1,'Added.',11,1),(3,'2016-03-31 09:14:32','2','Ruhani Thakur',1,'Added.',11,1),(4,'2016-03-31 09:15:29','3','Sahil Bansal',1,'Added.',11,1),(5,'2016-03-31 09:15:56','4','Sanchit Goyal',1,'Added.',11,1),(6,'2016-03-31 09:16:19','5','Shalini Rana',1,'Added.',11,1),(7,'2016-03-31 09:16:40','6','Shivam Sharma',1,'Added.',11,1),(8,'2016-03-31 09:16:59','7','Simran Kaur',1,'Added.',11,1),(9,'2016-03-31 09:17:28','8','Udhayvir Singh',1,'Added.',11,1),(10,'2016-03-31 09:17:51','9','Vivek',1,'Added.',11,1),(11,'2016-03-31 09:18:17','10','Aaina',1,'Added.',11,1),(12,'2016-03-31 09:18:35','11','Aayush Mehta',1,'Added.',11,1),(13,'2016-03-31 09:18:55','12','Abhishek Arora',1,'Added.',11,1),(14,'2016-03-31 09:19:16','13','Aditi Goyal',1,'Added.',11,1),(15,'2016-03-31 09:19:33','14','Akash Garg',1,'Added.',11,1),(16,'2016-03-31 09:20:02','15','Anmol Rattan Singh',1,'Added.',11,1),(17,'2016-03-31 09:20:18','16','Anurag',1,'Added.',11,1),(18,'2016-03-31 09:21:01','17','Arshdeep Singh Sidhu',1,'Added.',11,1),(19,'2016-03-31 09:21:24','18','Arshpreet Singh Thind',1,'Added.',11,1),(20,'2016-03-31 09:21:50','19','Chandan Kumar',1,'Added.',11,1),(21,'2016-03-31 09:22:03','20','Chirag Walia',1,'Added.',11,1),(22,'2016-03-31 09:22:21','21','Davinder Singh',1,'Added.',11,1),(23,'2016-03-31 09:22:34','22','Manish Kumar',1,'Added.',11,1),(24,'2016-03-31 09:22:48','23','Manpreet Kaur',1,'Added.',11,1),(25,'2016-03-31 09:23:07','24','Mehakdeep Singh',1,'Added.',11,1),(26,'2016-03-31 09:23:27','25','Navjit Kaur',1,'Added.',11,1),(27,'2016-03-31 09:23:48','26','Navneet Kaur Chahal',1,'Added.',11,1),(28,'2016-03-31 09:24:27','27','Nitin Gupta',1,'Added.',11,1),(29,'2016-03-31 09:25:07','28','Prerna Verma',1,'Added.',11,1),(30,'2016-03-31 09:25:19','29','Prince Bansal',1,'Added.',11,1),(31,'2016-03-31 09:25:34','30','Ravneet Kaur',1,'Added.',11,1),(32,'2016-03-31 09:25:51','31','Sachin Saini',1,'Added.',11,1),(33,'2016-03-31 09:26:14','32','Sahil Rawat',1,'Added.',11,1),(34,'2016-03-31 09:26:31','33','Sarabpreet Singh',1,'Added.',11,1),(35,'2016-03-31 09:26:46','34','Satnam Singh',1,'Added.',11,1),(36,'2016-03-31 09:27:01','35','Simranjit Singh',1,'Added.',11,1),(37,'2016-03-31 09:27:17','36','Sneh Kanwar Singh Sidhu',1,'Added.',11,1),(38,'2016-03-31 09:27:30','37','Supreet Singh Sandhu',1,'Added.',11,1),(39,'2016-03-31 09:28:15','38','Tanu',1,'Added.',11,1),(40,'2016-03-31 09:28:29','39','Taranveer Singh',1,'Added.',11,1),(41,'2016-03-31 09:28:43','40','Vineet Kapil',1,'Added.',11,1),(42,'2016-03-31 09:28:57','41','Yuvraj Tuteja',1,'Added.',11,1),(43,'2016-03-31 09:29:15','42','Aditya Bhardwaj',1,'Added.',11,1),(44,'2016-03-31 09:29:28','43','Akanksha',1,'Added.',11,1),(45,'2016-03-31 09:29:46','44','Ankush Goyal',1,'Added.',11,1),(46,'2016-03-31 09:30:04','45','Ankush Rana',1,'Added.',11,1),(47,'2016-03-31 09:30:21','46','Deepanshu Goyal',1,'Added.',11,1),(48,'2016-03-31 09:30:39','47','Dikshita',1,'Added.',11,1),(49,'2016-03-31 09:30:55','48','Dilsher Singh',1,'Added.',11,1),(50,'2016-03-31 09:31:12','49','Dinesh Sharma',1,'Added.',11,1),(51,'2016-03-31 09:31:31','50','Gurpreet Singh Kainth',1,'Added.',11,1),(52,'2016-03-31 09:31:44','51','Itika Sharma',1,'Added.',11,1),(53,'2016-03-31 09:32:19','52','Japneet Kaur',1,'Added.',11,1),(54,'2016-03-31 09:32:37','53','Jasleen Kaur',1,'Added.',11,1),(55,'2016-03-31 09:32:52','54','Jassimran Singh',1,'Added.',11,1),(56,'2016-03-31 09:33:11','55','Jatin',1,'Added.',11,1),(57,'2016-03-31 09:33:24','56','Karamjit Kaur',1,'Added.',11,1),(58,'2016-03-31 09:33:34','57','Komal Rani',1,'Added.',11,1),(59,'2016-03-31 09:33:49','58','Kriti Pirta',1,'Added.',11,1),(60,'2016-03-31 09:34:04','59','Maninderjit Singh',1,'Added.',11,1),(61,'2016-03-31 09:34:27','60','Mohit Jindal',1,'Added.',11,1),(62,'2016-03-31 09:34:49','61','Mukul Shaunik',1,'Added.',11,1),(63,'2016-03-31 09:35:20','62','Navjot Singh',1,'Added.',11,1),(64,'2016-03-31 09:35:38','63','Nisha',1,'Added.',11,1),(65,'2016-03-31 09:35:53','64','Paramveer Singh Ranwa',1,'Added.',11,1),(66,'2016-03-31 09:36:07','65','Pranav Gupta',1,'Added.',11,1),(67,'2016-03-31 09:36:31','66','Ravneet Kaur',1,'Added.',11,1),(68,'2016-03-31 09:36:49','67','Sakshi',1,'Added.',11,1),(69,'2016-03-31 09:37:04','68','Sarthak Dargan',1,'Added.',11,1),(70,'2016-03-31 09:37:17','69','Vani Kansal',1,'Added.',11,1),(71,'2016-03-31 09:37:32','70','Vijay Kumar Ram',1,'Added.',11,1),(72,'2016-03-31 09:37:47','71','Vinamer Goel',1,'Added.',11,1),(73,'2016-03-31 09:38:06','72','Bhavika Arora',1,'Added.',11,1),(74,'2016-03-31 09:38:28','73','Bhavya Jindal',1,'Added.',11,1),(75,'2016-03-31 09:38:43','74','Bindu Garg',1,'Added.',11,1),(76,'2016-03-31 09:38:57','75','Chanpreet Singh Sehgal',1,'Added.',11,1),(77,'2016-03-31 09:39:16','76','Damandeep Singh',1,'Added.',11,1),(78,'2016-03-31 09:39:29','77','Devdeep Singh Nannan',1,'Added.',11,1),(79,'2016-03-31 09:39:47','78','Diksha Pusha',1,'Added.',11,1),(80,'2016-03-31 09:39:59','79','Dikshit Garg',1,'Added.',11,1),(81,'2016-03-31 09:40:16','80','Gunwinder Singh',1,'Added.',11,1),(82,'2016-03-31 09:40:27','81','Harinder Singh',1,'Added.',11,1),(83,'2016-03-31 09:40:43','82','Kamna Dhingra',1,'Added.',11,1),(84,'2016-03-31 09:40:55','83','Karan Garg',1,'Added.',11,1),(85,'2016-03-31 09:41:59','1','Gurjit Singh Bhathal',1,'Added.',8,1),(86,'2016-03-31 09:42:49','2','gurjit_ucoe',1,'Added.',4,1),(87,'2016-03-31 09:42:56','1','gurjit_ucoe:Gurjit Singh Bhathal',1,'Added.',9,1),(88,'2016-03-31 09:43:43','1','RDBMS:3CE34',1,'Added.',13,1),(89,'2016-03-31 09:44:14','3','mj_ucoe',1,'Added.',4,1),(90,'2016-03-31 09:44:32','1','mj_ucoe:Mohit Jindal',1,'Added.',12,1),(91,'2016-03-31 09:44:49','4','ms_ucoe',1,'Added.',4,1),(92,'2016-03-31 09:44:57','2','ms_ucoe:Mukul Shaunik',1,'Added.',12,1),(93,'2016-04-05 07:50:51','2','Lakhwinder Kaur',1,'Added.',8,1),(94,'2016-04-05 07:51:12','5','hod_ce',1,'Added.',4,1),(95,'2016-04-05 07:51:22','1','hod_ce:Lakhwinder Kaur',1,'Added.',10,1),(96,'2016-04-05 07:51:59','2','CE12:4:2014',1,'Added.',7,1),(97,'2016-04-05 07:52:08','2','2CE12:4:2014',2,'Changed group.',7,1),(98,'2016-04-05 08:00:43','2','sasa:3CE34',1,'Added.',13,1);
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (15,'acad','attendance'),(7,'acad','batch'),(10,'acad','hodrel'),(14,'acad','marks'),(11,'acad','student'),(12,'acad','studentrel'),(13,'acad','subject'),(8,'acad','teacher'),(9,'acad','teacherrel'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-03-31 08:37:55'),(2,'auth','0001_initial','2016-03-31 08:37:56'),(3,'acad','0001_initial','2016-03-31 08:37:59'),(4,'acad','0002_auto_20160305_1836','2016-03-31 08:38:00'),(5,'acad','0003_auto_20160306_1548','2016-03-31 08:38:00'),(6,'acad','0004_auto_20160307_1011','2016-03-31 08:38:00'),(7,'acad','0005_auto_20160307_1014','2016-03-31 08:38:02'),(8,'acad','0006_attendance','2016-03-31 08:38:02'),(9,'acad','0007_auto_20160307_1153','2016-03-31 08:38:03'),(10,'acad','0008_student_roll_no','2016-03-31 08:38:03'),(11,'acad','0009_auto_20160308_1349','2016-03-31 08:38:03'),(12,'acad','0010_auto_20160309_2250','2016-03-31 08:38:03'),(13,'acad','0011_auto_20160311_2011','2016-03-31 08:38:04'),(14,'acad','0012_remove_attendance_lec','2016-03-31 08:38:04'),(15,'admin','0001_initial','2016-03-31 08:38:04'),(16,'admin','0002_logentry_remove_auto_add','2016-03-31 08:38:05'),(17,'contenttypes','0002_remove_content_type_name','2016-03-31 08:38:05'),(18,'auth','0002_alter_permission_name_max_length','2016-03-31 08:38:05'),(19,'auth','0003_alter_user_email_max_length','2016-03-31 08:38:05'),(20,'auth','0004_alter_user_username_opts','2016-03-31 08:38:05'),(21,'auth','0005_alter_user_last_login_null','2016-03-31 08:38:05'),(22,'auth','0006_require_contenttypes_0002','2016-03-31 08:38:05'),(23,'auth','0007_alter_validators_add_error_messages','2016-03-31 08:38:06'),(24,'sessions','0001_initial','2016-03-31 08:38:06'),(25,'acad','0013_auto_20160404_1115','2016-04-04 05:45:40'),(26,'acad','0014_marks_flag','2016-04-05 07:49:48'),(27,'acad','0015_auto_20160405_1356','2016-04-05 08:26:32'),(28,'acad','0016_auto_20160405_1508','2016-04-05 09:38:16');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2c5wbhijjljw3ke29iip8pe11qbpwq05','YWJkYTg0NGIwMWMzYjljOWM3Y2U0YTIyYzI0N2E1NjkzMWEyNjdlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhOGM5ODJmZjFhYzk5NzUwNDVmYzU4NmRkZmQ1MTE0NmZkNzkyYTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-04-19 09:38:51'),('4mjc759yeb92qtc2jirzj9s44az501q5','MGViODZjY2M5NjkyMmVkMGYzNWFkMDJkODQ5ZDUxNzg4NmY3NDcwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNDI0NzM3MjY5MmU4NTkwYzcwNjI3ZjQ1ODFiMjUxNTk4MzkzYTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-04-14 08:41:01'),('b3ckijgmcx22slxahepz1zy12rxvb5f7','MGViODZjY2M5NjkyMmVkMGYzNWFkMDJkODQ5ZDUxNzg4NmY3NDcwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViNDI0NzM3MjY5MmU4NTkwYzcwNjI3ZjQ1ODFiMjUxNTk4MzkzYTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-04-19 06:46:31'),('bstjgtfis9xw9yd969cxclocf5twwk3s','M2NjMzM4ZDUzOTNiNzc5MzU5OWI3NTlmZGE3MmYzNjEzM2YzMDc0ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjAwN2MyNjY1YzBlYmVkZjVmMDQ4MTA4ZDA3NWY0ZTEyNWZmYjVhNmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-04-14 09:47:29'),('zeyibgf5vzt9muzwn47c1cz0oyhb3hp3','ODFlNmQ1NDc2NjIwODlhZmZjY2VlYzlkMzZjYWQwMTFiYTkxOGY0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIzOTFiNTY0ODFhYzVkZjc0YzhhNjc2ZjJjYWNlMDQ2NmFhZjYxOTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-04-19 06:53:36');
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

-- Dump completed on 2016-04-05 21:23:20
