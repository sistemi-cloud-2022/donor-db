-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: donor_db
-- ------------------------------------------------------
-- Server version	5.7.38

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
-- Table structure for table `consents`
--

DROP TABLE IF EXISTS `consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consent_details` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contact_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqhhjx5i29389od9hbmfddg1fu` (`contact_id`),
  KEY `FKnskec24u4kdhlphs0apaphlu3` (`donor_id`),
  CONSTRAINT `FKnskec24u4kdhlphs0apaphlu3` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`),
  CONSTRAINT `FKqhhjx5i29389od9hbmfddg1fu` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consents`
--

LOCK TABLES `consents` WRITE;
/*!40000 ALTER TABLE `consents` DISABLE KEYS */;
INSERT INTO `consents` VALUES (1,'{\"informFamily\": true, \"diagnosisPurposes\": true, \"shareDataResearch\": true, \"scientificResearch\": true, \"shareDataDiagnosis\": true, \"specialRequirements\": null}','2019-09-30 14:22:02',NULL,'2019-09-30 14:22:02',1,1,22);
/*!40000 ALTER TABLE `consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `born_city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `identification_number` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `resident_at` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Chris',NULL,'Martin',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_clinicals`
--

DROP TABLE IF EXISTS `donor_clinicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donor_clinicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_informations` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `donor_desease` varchar(255) DEFAULT NULL,
  `other_informations` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `donor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfbi77ena1ogqvikoffdspbm7s` (`donor_id`),
  CONSTRAINT `FKfbi77ena1ogqvikoffdspbm7s` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_clinicals`
--

LOCK TABLES `donor_clinicals` WRITE;
/*!40000 ALTER TABLE `donor_clinicals` DISABLE KEYS */;
INSERT INTO `donor_clinicals` VALUES (1,'dnvsdonasdfphjap','2019-09-30 14:21:55','saexnhgiolsdfnh','qwfnhfaspiophas','2019-09-30 14:21:55',22),(2,NULL,'2019-10-03 14:29:42',NULL,NULL,'2019-10-03 14:29:42',13);
/*!40000 ALTER TABLE `donor_clinicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birth_date` datetime(6) DEFAULT NULL,
  `collected_data` varchar(255) DEFAULT NULL,
  `contact_information` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `death_cause` varchar(255) DEFAULT NULL,
  `death_date` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `ethnic_group` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `identification_number` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `random_id` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `survey_data` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (13,'1983-06-14 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,'2019-10-16 10:48:00.000000','Caucasian','Angela','CSTANG83H54C351H','Castiglione',NULL,'Female',NULL,'2019-10-16 10:48:00.000000'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','4030929677','','4030929677',NULL,NULL,'2020-10-20 15:46:20.000000'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2560203490','','2560203490',NULL,NULL,'2020-10-20 15:46:51.000000'),(16,'1990-06-13 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,'Caucasian','LIMO','ANGLNA90A35C385A','ANGELO',NULL,'Female',NULL,'2020-11-02 12:06:25.000000'),(17,'1945-01-15 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,'Caucasian','Concordio','TRVCCO45A15A028B','Trevisani',NULL,'Male',NULL,NULL),(18,'1975-03-17 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,'Caucasian','Geraldino','RSSGER75C17C351H','Rossi',NULL,'Male',NULL,NULL),(19,NULL,NULL,NULL,'2019-09-30 14:09:48.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','1447519318','ANONYMOUS','1447519318',NULL,NULL,'2019-09-30 14:09:48.000000'),(20,NULL,NULL,NULL,'2019-09-30 14:17:36.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','1410873500','ANONYMOUS','1410873500',NULL,NULL,'2019-09-30 14:17:36.000000'),(21,NULL,NULL,NULL,'2019-09-30 14:19:03.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','3121823405','ANONYMOUS','3121823405',NULL,NULL,'2019-09-30 14:19:03.000000'),(22,'2019-12-31 00:00:00.000000',NULL,NULL,'2019-09-30 14:20:54.000000',NULL,'2019-12-31 00:00:00.000000',NULL,'African','CIAO','412211241','CIAO2',NULL,'Male',NULL,'2019-09-30 14:20:54.000000'),(23,NULL,NULL,NULL,'2019-10-02 14:57:19.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','3685959996','ANONYMOUS','3685959996',NULL,NULL,'2019-10-02 14:57:19.000000'),(24,'1111-12-12 00:00:00.000000',NULL,NULL,'2019-10-02 14:58:10.000000',NULL,'1115-12-12 00:00:00.000000',NULL,'Other','POIU','123654','UIOP',NULL,'Male',NULL,'2019-10-02 14:58:30.000000'),(25,NULL,NULL,NULL,'2019-10-02 15:30:19.000000',NULL,NULL,NULL,NULL,'AAA','AAA','AAA',NULL,NULL,NULL,'2019-10-02 15:30:19.000000'),(26,NULL,NULL,NULL,'2019-10-02 15:35:06.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','592461437','ANONYMOUS','592461437',NULL,NULL,'2019-10-02 15:35:06.000000'),(27,NULL,NULL,NULL,'2019-10-03 14:11:53.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','369531264','ANONYMOUS','369531264',NULL,NULL,'2019-10-03 14:11:53.000000'),(28,NULL,NULL,NULL,'2019-10-23 13:19:23.000000',NULL,NULL,NULL,NULL,'ANONYMOUS','4157103709','ANONYMOUS','4157103709',NULL,NULL,'2019-10-23 13:19:23.000000'),(29,'2003-09-22 00:00:00.000000',NULL,NULL,'2019-10-23 13:23:14.000000','shot','2018-09-22 00:00:00.000000',NULL,'Other','BHJBK','870707','FGVUFUKY',NULL,'Male',NULL,'2019-10-23 13:23:14.000000'),(30,NULL,NULL,NULL,'2020-06-29 13:32:47.000000',NULL,NULL,NULL,NULL,'ALBERTO','222','LOBERTO',NULL,NULL,NULL,'2020-06-29 13:32:47.000000'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','812080032','','812080032',NULL,NULL,'2020-10-20 15:47:23.000000'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','881796460','','881796460',NULL,NULL,'2020-10-20 15:48:04.000000');
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miabis_ethnic_groups`
--

DROP TABLE IF EXISTS `miabis_ethnic_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miabis_ethnic_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miabis_ethnic_groups`
--

LOCK TABLES `miabis_ethnic_groups` WRITE;
/*!40000 ALTER TABLE `miabis_ethnic_groups` DISABLE KEYS */;
INSERT INTO `miabis_ethnic_groups` VALUES (1,'African'),(2,'Caucasian'),(3,'Pacific Islander'),(4,'East Asian'),(5,'Native American'),(6,'Other');
/*!40000 ALTER TABLE `miabis_ethnic_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 14:16:01
