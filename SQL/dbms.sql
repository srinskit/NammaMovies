-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: dbms
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `aid` int(5) NOT NULL,
  `aname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Nick Castle'),(2,'Judy Greer'),(3,'Jack Black'),(4,'Madison Iseman'),(5,'Utkarsh Sharma'),(6,'Ishitha Chauhan'),(7,'Amit Tiwari'),(8,'Reba Monica'),(9,'Vishal'),(10,'Keerthy Suresh'),(11,'Dhanush'),(12,'Aishwary Rajesh'),(13,'Vishnu Vishal'),(14,'Amala Paul'),(15,'Sharman Joshi'),(16,'Ayushman Khuranna'),(17,'Radhika Apte');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `mid` int(5) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `a1` int(5) DEFAULT NULL,
  `a2` int(5) DEFAULT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `certificate` varchar(5) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `runningtime` int(11) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `mname` (`mname`),
  KEY `a1` (`a1`),
  KEY `a2` (`a2`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`a1`) REFERENCES `actors` (`aid`),
  CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`a2`) REFERENCES `actors` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Halloween','It has been 40 years since Laurie Strode survived a vicious attack from crazed killer Michael Myers on Halloween night. Locked up in an institution, Myers manages to escape when his bus transfer goes horribly wrong. Laurie now faces a terrifying showdown when the masked madman returns to Haddonfield, Ill.',1,2,'https://www.agscinemas.com/stage/Asserts/Movie/5bcf4072e7c79.jpeg','https://www.youtube.com/embed/ek1ePFp-nBI','R','English','Horror','2018-10-19',106,7.3),(2,'Goosebumps 2','While collecting junk one day, best friends Sonny and Sam meet Slappy, a mischievous talking dummy from an unpublished \"Goosebumps\" book by R.L. Stine. Hoping to start his own family, Slappy kidnaps Sonny\'s mother and brings all of his ghoulish friends back to life -- just in time for Halloween. As the sleepy town becomes overrun with monsters, witches and other mysterious creatures, Sonny joins forces with his sister, Sam and a kindly neighbor to save Sonny\'s mom and foil Slappy\'s plan.',3,4,'https://www.agscinemas.com/stage/Asserts/Movie/5bcf3fd89d8bd.jpeg','https://www.youtube.com/embed/nQeOzfm-lps','PG','English','Adventure','2018-10-12',90,6.0),(3,'Genius',' An orphan, with a brilliant mind, joins RAW and is burdened by the killing of his entire team. Until he doesn\'t avenge their death, he can\'t live in peace with his love. So, he hatches a genius plan. ',5,6,'https://www.imdb.com/title/tt7722258/mediaviewer/rm1705395456?ref_=tt_ov_i','https://www.youtube.com/embed/jvfSjqTTDWo','U','Hindi','Action','2018-08-24',165,5.0),(4,'Jarugandi','This is an action film laced with sentiments and humour. Jai plays a middle-class guy who aspires to make it big. How he gets out of a web of situation is what the film is about.',7,8,'https://www.agscinemas.com/stage/Asserts/Movie/5bcf3e40cfe83.jpeg','https://www.youtube.com/embed/RP-DlV3Osgc','U','Tamil','Action','2018-10-26',136,7.2),(5,'Sandakozhi 2','The story is about Balu, who after 13 years returns to protect his family from an old foe.',9,10,'https://www.agscinemas.com/stage/Asserts/Movie/5bc1b0ccf1f43.jpeg','https://www.youtube.com/embed/71uCBBdNqDg','UA','Tamil','Action','2018-10-18',155,5.6),(6,'Vada Chennai','Vada Chennai is the story of a fisherman from North Chennai who unknowingly becomes involved in a trap set by a mafia gang.',11,12,'https://www.agscinemas.com/stage/Asserts/Movie/5bc1b0bdcd7e3.jpeg','https://www.youtube.com/embed/q5GG5HJ1hVk','A','Tamil','Thriller','2018-10-17',164,9.3),(7,'Ratsasan','A rookie cop attempts to track down a serial killer who is murdering young school girls.',13,14,'https://www.agscinemas.com/stage/Asserts/Movie/5bb1fae5b5ee0.jpeg','https://www.youtube.com/embed/GsrN7rNch9Y','UA','Tamil','Drama','2018-10-09',170,9.3),(8,'Kaashi','The movie is about two siblings, Kashi (Sharman Joshi) and his sister Ganga. The film is set in the Indian city of Benaras, also known as Kashi.[9] Kashi is a man who belongs to a community who are involved in performing cremation rituals.',15,NULL,'https://js.inkhabar.com/wp-content/uploads/2018/09/sharman-joshi-kaashi-644x362.jpg','https://www.youtube.com/embed/8qtQ0wSO2d8','UA','Hindi','Suspense','2018-10-26',125,7.4),(9,'Andhadhun','A series of mysterious events take place in the life of a blind pianist (Ayushmann Khurrana). Now, he must report a crime that he never actually witnessed.',16,17,'https://images.mid-day.com/images/2018/jun/Andadhun-poster_d.jpg','https://www.youtube.com/embed/2iVYI99VGaw','UA','Hindi','Comedy','2018-10-05',139,9.1);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `class` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,80),(2,150),(3,250),(4,500);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `seat_num` varchar(5) NOT NULL,
  `sid` int(5) NOT NULL,
  `class` int(11) DEFAULT NULL,
  `uname` varchar(25) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`seat_num`,`sid`),
  KEY `sid` (`sid`),
  KEY `class` (`class`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `shows` (`sid`),
  CONSTRAINT `seats_ibfk_2` FOREIGN KEY (`class`) REFERENCES `prices` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES ('A0',1,1,NULL,0),('A0',2,1,NULL,0),('A0',3,1,NULL,0),('A0',4,1,NULL,0),('A0',5,1,NULL,0),('A0',6,1,NULL,0),('A0',7,1,NULL,0),('A0',8,1,NULL,0),('A0',9,1,NULL,0),('A0',10,1,NULL,0),('A0',11,1,NULL,0),('A0',12,1,NULL,0),('A0',13,1,NULL,0),('A0',14,1,NULL,0),('A0',15,1,NULL,0),('A0',16,1,NULL,0),('A1',1,1,NULL,0),('A1',2,1,NULL,0),('A1',3,1,NULL,0),('A1',4,1,NULL,0),('A1',5,1,NULL,0),('A1',6,1,NULL,0),('A1',7,1,NULL,0),('A1',8,1,NULL,0),('A1',9,1,NULL,0),('A1',10,1,NULL,0),('A1',11,1,NULL,0),('A1',12,1,NULL,0),('A1',13,1,NULL,0),('A1',14,1,NULL,0),('A1',15,1,NULL,0),('A1',16,1,NULL,0),('A2',1,1,NULL,0),('A2',2,1,NULL,0),('A2',3,1,NULL,0),('A2',4,1,NULL,0),('A2',5,1,NULL,0),('A2',6,1,NULL,0),('A2',7,1,NULL,0),('A2',8,1,NULL,0),('A2',9,1,NULL,0),('A2',10,1,NULL,0),('A2',11,1,NULL,0),('A2',12,1,NULL,0),('A2',13,1,NULL,0),('A2',14,1,NULL,0),('A2',15,1,NULL,0),('A2',16,1,NULL,0),('A3',1,1,NULL,0),('A3',2,1,NULL,0),('A3',3,1,NULL,0),('A3',4,1,NULL,0),('A3',5,1,NULL,0),('A3',6,1,NULL,0),('A3',7,1,NULL,0),('A3',8,1,NULL,0),('A3',9,1,NULL,0),('A3',10,1,NULL,0),('A3',11,1,NULL,0),('A3',12,1,NULL,0),('A3',13,1,NULL,0),('A3',14,1,NULL,0),('A3',15,1,NULL,0),('A3',16,1,NULL,0),('A4',1,1,NULL,0),('A4',2,1,NULL,0),('A4',3,1,NULL,0),('A4',4,1,NULL,0),('A4',5,1,NULL,0),('A4',6,1,NULL,0),('A4',7,1,NULL,0),('A4',8,1,NULL,0),('A4',9,1,NULL,0),('A4',10,1,NULL,0),('A4',11,1,NULL,0),('A4',12,1,NULL,0),('A4',13,1,NULL,0),('A4',14,1,NULL,0),('A4',15,1,NULL,0),('A4',16,1,NULL,0),('A5',1,1,NULL,0),('A5',2,1,NULL,0),('A5',3,1,NULL,0),('A5',4,1,NULL,0),('A5',5,1,NULL,0),('A5',6,1,NULL,0),('A5',7,1,NULL,0),('A5',8,1,NULL,0),('A5',9,1,NULL,0),('A5',10,1,NULL,0),('A5',11,1,NULL,0),('A5',12,1,NULL,0),('A5',13,1,NULL,0),('A5',14,1,NULL,0),('A5',15,1,NULL,0),('A5',16,1,NULL,0),('A6',1,1,NULL,0),('A6',2,1,NULL,0),('A6',3,1,NULL,0),('A6',4,1,NULL,0),('A6',5,1,NULL,0),('A6',6,1,NULL,0),('A6',7,1,NULL,0),('A6',8,1,NULL,0),('A6',9,1,NULL,0),('A6',10,1,NULL,0),('A6',11,1,NULL,0),('A6',12,1,NULL,0),('A6',13,1,NULL,0),('A6',14,1,NULL,0),('A6',15,1,NULL,0),('A6',16,1,NULL,0),('A7',1,1,NULL,0),('A7',2,1,NULL,0),('A7',3,1,NULL,0),('A7',4,1,NULL,0),('A7',5,1,NULL,0),('A7',6,1,NULL,0),('A7',7,1,NULL,0),('A7',8,1,NULL,0),('A7',9,1,NULL,0),('A7',10,1,NULL,0),('A7',11,1,NULL,0),('A7',12,1,NULL,0),('A7',13,1,NULL,0),('A7',14,1,NULL,0),('A7',15,1,NULL,0),('A7',16,1,NULL,0),('A8',1,1,NULL,0),('A8',2,1,NULL,0),('A8',3,1,NULL,0),('A8',4,1,NULL,0),('A8',5,1,NULL,0),('A8',6,1,NULL,0),('A8',7,1,NULL,0),('A8',8,1,NULL,0),('A8',9,1,NULL,0),('A8',10,1,NULL,0),('A8',11,1,NULL,0),('A8',12,1,NULL,0),('A8',13,1,NULL,0),('A8',14,1,NULL,0),('A8',15,1,NULL,0),('A8',16,1,NULL,0),('A9',1,1,NULL,0),('A9',2,1,NULL,0),('A9',3,1,NULL,0),('A9',4,1,NULL,0),('A9',5,1,NULL,0),('A9',6,1,NULL,0),('A9',7,1,NULL,0),('A9',8,1,NULL,0),('A9',9,1,NULL,0),('A9',10,1,NULL,0),('A9',11,1,NULL,0),('A9',12,1,NULL,0),('A9',13,1,NULL,0),('A9',14,1,NULL,0),('A9',15,1,NULL,0),('A9',16,1,NULL,0),('B0',1,1,NULL,0),('B0',2,1,NULL,0),('B0',3,1,NULL,0),('B0',4,1,NULL,0),('B0',5,1,NULL,0),('B0',6,1,NULL,0),('B0',7,1,NULL,0),('B0',8,1,NULL,0),('B0',9,1,NULL,0),('B0',10,1,NULL,0),('B0',11,1,NULL,0),('B0',12,1,NULL,0),('B0',13,1,NULL,0),('B0',14,1,NULL,0),('B0',15,1,NULL,0),('B0',16,1,NULL,0),('B1',1,1,NULL,0),('B1',2,1,NULL,0),('B1',3,1,NULL,0),('B1',4,1,NULL,0),('B1',5,1,NULL,0),('B1',6,1,NULL,0),('B1',7,1,NULL,0),('B1',8,1,NULL,0),('B1',9,1,NULL,0),('B1',10,1,NULL,0),('B1',11,1,NULL,0),('B1',12,1,NULL,0),('B1',13,1,NULL,0),('B1',14,1,NULL,0),('B1',15,1,NULL,0),('B1',16,1,NULL,0),('B2',1,1,NULL,0),('B2',2,1,NULL,0),('B2',3,1,NULL,0),('B2',4,1,NULL,0),('B2',5,1,NULL,0),('B2',6,1,NULL,0),('B2',7,1,NULL,0),('B2',8,1,NULL,0),('B2',9,1,NULL,0),('B2',10,1,NULL,0),('B2',11,1,NULL,0),('B2',12,1,NULL,0),('B2',13,1,NULL,0),('B2',14,1,NULL,0),('B2',15,1,NULL,0),('B2',16,1,NULL,0),('B3',1,1,NULL,0),('B3',2,1,NULL,0),('B3',3,1,NULL,0),('B3',4,1,NULL,0),('B3',5,1,NULL,0),('B3',6,1,NULL,0),('B3',7,1,NULL,0),('B3',8,1,NULL,0),('B3',9,1,NULL,0),('B3',10,1,NULL,0),('B3',11,1,NULL,0),('B3',12,1,NULL,0),('B3',13,1,NULL,0),('B3',14,1,NULL,0),('B3',15,1,NULL,0),('B3',16,1,NULL,0),('B4',1,1,NULL,0),('B4',2,1,NULL,0),('B4',3,1,NULL,0),('B4',4,1,NULL,0),('B4',5,1,NULL,0),('B4',6,1,NULL,0),('B4',7,1,NULL,0),('B4',8,1,NULL,0),('B4',9,1,NULL,0),('B4',10,1,NULL,0),('B4',11,1,NULL,0),('B4',12,1,NULL,0),('B4',13,1,NULL,0),('B4',14,1,NULL,0),('B4',15,1,NULL,0),('B4',16,1,NULL,0),('B5',1,1,NULL,0),('B5',2,1,NULL,0),('B5',3,1,NULL,0),('B5',4,1,NULL,0),('B5',5,1,NULL,0),('B5',6,1,NULL,0),('B5',7,1,NULL,0),('B5',8,1,NULL,0),('B5',9,1,NULL,0),('B5',10,1,NULL,0),('B5',11,1,NULL,0),('B5',12,1,NULL,0),('B5',13,1,NULL,0),('B5',14,1,NULL,0),('B5',15,1,NULL,0),('B5',16,1,NULL,0),('B6',1,1,NULL,0),('B6',2,1,NULL,0),('B6',3,1,NULL,0),('B6',4,1,NULL,0),('B6',5,1,NULL,0),('B6',6,1,NULL,0),('B6',7,1,NULL,0),('B6',8,1,NULL,0),('B6',9,1,NULL,0),('B6',10,1,NULL,0),('B6',11,1,NULL,0),('B6',12,1,NULL,0),('B6',13,1,NULL,0),('B6',14,1,NULL,0),('B6',15,1,NULL,0),('B6',16,1,NULL,0),('B7',1,1,NULL,0),('B7',2,1,NULL,0),('B7',3,1,NULL,0),('B7',4,1,NULL,0),('B7',5,1,NULL,0),('B7',6,1,NULL,0),('B7',7,1,NULL,0),('B7',8,1,NULL,0),('B7',9,1,NULL,0),('B7',10,1,NULL,0),('B7',11,1,NULL,0),('B7',12,1,NULL,0),('B7',13,1,NULL,0),('B7',14,1,NULL,0),('B7',15,1,NULL,0),('B7',16,1,NULL,0),('B8',1,1,NULL,0),('B8',2,1,NULL,0),('B8',3,1,NULL,0),('B8',4,1,NULL,0),('B8',5,1,NULL,0),('B8',6,1,NULL,0),('B8',7,1,NULL,0),('B8',8,1,NULL,0),('B8',9,1,NULL,0),('B8',10,1,NULL,0),('B8',11,1,NULL,0),('B8',12,1,NULL,0),('B8',13,1,NULL,0),('B8',14,1,NULL,0),('B8',15,1,NULL,0),('B8',16,1,NULL,0),('B9',1,1,NULL,0),('B9',2,1,NULL,0),('B9',3,1,NULL,0),('B9',4,1,NULL,0),('B9',5,1,NULL,0),('B9',6,1,NULL,0),('B9',7,1,NULL,0),('B9',8,1,NULL,0),('B9',9,1,NULL,0),('B9',10,1,NULL,0),('B9',11,1,NULL,0),('B9',12,1,NULL,0),('B9',13,1,NULL,0),('B9',14,1,NULL,0),('B9',15,1,NULL,0),('B9',16,1,NULL,0),('C0',1,1,NULL,0),('C0',2,1,NULL,0),('C0',3,1,NULL,0),('C0',4,1,NULL,0),('C0',5,1,NULL,0),('C0',6,1,NULL,0),('C0',7,1,NULL,0),('C0',8,1,NULL,0),('C0',9,1,NULL,0),('C0',10,1,NULL,0),('C0',11,1,NULL,0),('C0',12,1,NULL,0),('C0',13,1,NULL,0),('C0',14,1,NULL,0),('C0',15,1,NULL,0),('C0',16,1,NULL,0),('C1',1,1,NULL,0),('C1',2,1,NULL,0),('C1',3,1,NULL,0),('C1',4,1,NULL,0),('C1',5,1,NULL,0),('C1',6,1,NULL,0),('C1',7,1,NULL,0),('C1',8,1,NULL,0),('C1',9,1,NULL,0),('C1',10,1,NULL,0),('C1',11,1,NULL,0),('C1',12,1,NULL,0),('C1',13,1,NULL,0),('C1',14,1,NULL,0),('C1',15,1,NULL,0),('C1',16,1,NULL,0),('C2',1,1,NULL,0),('C2',2,1,NULL,0),('C2',3,1,NULL,0),('C2',4,1,NULL,0),('C2',5,1,NULL,0),('C2',6,1,NULL,0),('C2',7,1,NULL,0),('C2',8,1,NULL,0),('C2',9,1,NULL,0),('C2',10,1,NULL,0),('C2',11,1,NULL,0),('C2',12,1,NULL,0),('C2',13,1,NULL,0),('C2',14,1,NULL,0),('C2',15,1,NULL,0),('C2',16,1,NULL,0),('C3',1,1,NULL,0),('C3',2,1,'yash',0),('C3',3,1,NULL,0),('C3',4,1,NULL,0),('C3',5,1,NULL,0),('C3',6,1,NULL,0),('C3',7,1,NULL,0),('C3',8,1,NULL,0),('C3',9,1,NULL,0),('C3',10,1,NULL,0),('C3',11,1,NULL,0),('C3',12,1,NULL,0),('C3',13,1,NULL,0),('C3',14,1,NULL,0),('C3',15,1,NULL,0),('C3',16,1,NULL,0),('C4',1,1,NULL,0),('C4',2,1,NULL,0),('C4',3,1,NULL,0),('C4',4,1,NULL,0),('C4',5,1,NULL,0),('C4',6,1,NULL,0),('C4',7,1,NULL,0),('C4',8,1,NULL,0),('C4',9,1,NULL,0),('C4',10,1,NULL,0),('C4',11,1,NULL,0),('C4',12,1,NULL,0),('C4',13,1,NULL,0),('C4',14,1,NULL,0),('C4',15,1,NULL,0),('C4',16,1,NULL,0),('C5',1,1,NULL,0),('C5',2,1,NULL,0),('C5',3,1,NULL,0),('C5',4,1,NULL,0),('C5',5,1,NULL,0),('C5',6,1,NULL,0),('C5',7,1,NULL,0),('C5',8,1,NULL,0),('C5',9,1,NULL,0),('C5',10,1,NULL,0),('C5',11,1,NULL,0),('C5',12,1,NULL,0),('C5',13,1,NULL,0),('C5',14,1,NULL,0),('C5',15,1,NULL,0),('C5',16,1,NULL,0),('C6',1,1,NULL,0),('C6',2,1,NULL,0),('C6',3,1,NULL,0),('C6',4,1,NULL,0),('C6',5,1,NULL,0),('C6',6,1,NULL,0),('C6',7,1,NULL,0),('C6',8,1,NULL,0),('C6',9,1,NULL,0),('C6',10,1,NULL,0),('C6',11,1,NULL,0),('C6',12,1,NULL,0),('C6',13,1,NULL,0),('C6',14,1,NULL,0),('C6',15,1,NULL,0),('C6',16,1,NULL,0),('C7',1,1,NULL,0),('C7',2,1,NULL,0),('C7',3,1,NULL,0),('C7',4,1,NULL,0),('C7',5,1,NULL,0),('C7',6,1,NULL,0),('C7',7,1,NULL,0),('C7',8,1,NULL,0),('C7',9,1,NULL,0),('C7',10,1,NULL,0),('C7',11,1,NULL,0),('C7',12,1,NULL,0),('C7',13,1,NULL,0),('C7',14,1,NULL,0),('C7',15,1,NULL,0),('C7',16,1,NULL,0),('C8',1,1,NULL,0),('C8',2,1,NULL,0),('C8',3,1,NULL,0),('C8',4,1,NULL,0),('C8',5,1,NULL,0),('C8',6,1,NULL,0),('C8',7,1,NULL,0),('C8',8,1,NULL,0),('C8',9,1,NULL,0),('C8',10,1,NULL,0),('C8',11,1,NULL,0),('C8',12,1,NULL,0),('C8',13,1,NULL,0),('C8',14,1,NULL,0),('C8',15,1,NULL,0),('C8',16,1,NULL,0),('C9',1,1,NULL,0),('C9',2,1,NULL,0),('C9',3,1,NULL,0),('C9',4,1,NULL,0),('C9',5,1,NULL,0),('C9',6,1,NULL,0),('C9',7,1,NULL,0),('C9',8,1,NULL,0),('C9',9,1,NULL,0),('C9',10,1,NULL,0),('C9',11,1,NULL,0),('C9',12,1,NULL,0),('C9',13,1,NULL,0),('C9',14,1,NULL,0),('C9',15,1,NULL,0),('C9',16,1,NULL,0),('D0',1,2,NULL,0),('D0',2,2,NULL,0),('D0',3,2,NULL,0),('D0',4,2,NULL,0),('D0',5,2,NULL,0),('D0',6,2,NULL,0),('D0',7,2,NULL,0),('D0',8,2,NULL,0),('D0',9,2,NULL,0),('D0',10,2,NULL,0),('D0',11,2,NULL,0),('D0',12,2,NULL,0),('D0',13,2,NULL,0),('D0',14,2,NULL,0),('D0',15,2,NULL,0),('D0',16,2,NULL,0),('D1',1,2,NULL,0),('D1',2,2,NULL,0),('D1',3,2,NULL,0),('D1',4,2,NULL,0),('D1',5,2,NULL,0),('D1',6,2,NULL,0),('D1',7,2,NULL,0),('D1',8,2,NULL,0),('D1',9,2,NULL,0),('D1',10,2,NULL,0),('D1',11,2,NULL,0),('D1',12,2,NULL,0),('D1',13,2,NULL,0),('D1',14,2,NULL,0),('D1',15,2,NULL,0),('D1',16,2,NULL,0),('D2',1,2,NULL,0),('D2',2,2,NULL,0),('D2',3,2,NULL,0),('D2',4,2,NULL,0),('D2',5,2,NULL,0),('D2',6,2,NULL,0),('D2',7,2,NULL,0),('D2',8,2,NULL,0),('D2',9,2,NULL,0),('D2',10,2,NULL,0),('D2',11,2,NULL,0),('D2',12,2,NULL,0),('D2',13,2,NULL,0),('D2',14,2,NULL,0),('D2',15,2,NULL,0),('D2',16,2,NULL,0),('D3',1,2,NULL,0),('D3',2,2,NULL,0),('D3',3,2,NULL,0),('D3',4,2,NULL,0),('D3',5,2,NULL,0),('D3',6,2,NULL,0),('D3',7,2,NULL,0),('D3',8,2,NULL,0),('D3',9,2,NULL,0),('D3',10,2,NULL,0),('D3',11,2,NULL,0),('D3',12,2,NULL,0),('D3',13,2,NULL,0),('D3',14,2,NULL,0),('D3',15,2,NULL,0),('D3',16,2,NULL,0),('D4',1,2,NULL,0),('D4',2,2,NULL,0),('D4',3,2,NULL,0),('D4',4,2,'yash',0),('D4',5,2,NULL,0),('D4',6,2,NULL,0),('D4',7,2,NULL,0),('D4',8,2,NULL,0),('D4',9,2,NULL,0),('D4',10,2,NULL,0),('D4',11,2,NULL,0),('D4',12,2,NULL,0),('D4',13,2,NULL,0),('D4',14,2,NULL,0),('D4',15,2,NULL,0),('D4',16,2,NULL,0),('D5',1,2,NULL,0),('D5',2,2,NULL,0),('D5',3,2,NULL,0),('D5',4,2,'yash',0),('D5',5,2,NULL,0),('D5',6,2,NULL,0),('D5',7,2,NULL,0),('D5',8,2,NULL,0),('D5',9,2,NULL,0),('D5',10,2,NULL,0),('D5',11,2,NULL,0),('D5',12,2,NULL,0),('D5',13,2,NULL,0),('D5',14,2,NULL,0),('D5',15,2,NULL,0),('D5',16,2,NULL,0),('D6',1,2,NULL,0),('D6',2,2,NULL,0),('D6',3,2,NULL,0),('D6',4,2,'yash',0),('D6',5,2,NULL,0),('D6',6,2,NULL,0),('D6',7,2,NULL,0),('D6',8,2,NULL,0),('D6',9,2,NULL,0),('D6',10,2,NULL,0),('D6',11,2,NULL,0),('D6',12,2,NULL,0),('D6',13,2,NULL,0),('D6',14,2,NULL,0),('D6',15,2,NULL,0),('D6',16,2,NULL,0),('D7',1,2,NULL,0),('D7',2,2,NULL,0),('D7',3,2,NULL,0),('D7',4,2,NULL,0),('D7',5,2,NULL,0),('D7',6,2,NULL,0),('D7',7,2,NULL,0),('D7',8,2,NULL,0),('D7',9,2,NULL,0),('D7',10,2,NULL,0),('D7',11,2,NULL,0),('D7',12,2,NULL,0),('D7',13,2,NULL,0),('D7',14,2,NULL,0),('D7',15,2,NULL,0),('D7',16,2,NULL,0),('D8',1,2,NULL,0),('D8',2,2,NULL,0),('D8',3,2,NULL,0),('D8',4,2,NULL,0),('D8',5,2,NULL,0),('D8',6,2,NULL,0),('D8',7,2,NULL,0),('D8',8,2,NULL,0),('D8',9,2,NULL,0),('D8',10,2,NULL,0),('D8',11,2,NULL,0),('D8',12,2,NULL,0),('D8',13,2,NULL,0),('D8',14,2,NULL,0),('D8',15,2,NULL,0),('D8',16,2,NULL,0),('D9',1,2,NULL,0),('D9',2,2,NULL,0),('D9',3,2,NULL,0),('D9',4,2,NULL,0),('D9',5,2,NULL,0),('D9',6,2,NULL,0),('D9',7,2,NULL,0),('D9',8,2,NULL,0),('D9',9,2,NULL,0),('D9',10,2,NULL,0),('D9',11,2,NULL,0),('D9',12,2,NULL,0),('D9',13,2,NULL,0),('D9',14,2,NULL,0),('D9',15,2,NULL,0),('D9',16,2,NULL,0),('E0',1,2,NULL,0),('E0',2,2,NULL,0),('E0',3,2,NULL,0),('E0',4,2,NULL,0),('E0',5,2,NULL,0),('E0',6,2,NULL,0),('E0',7,2,NULL,0),('E0',8,2,NULL,0),('E0',9,2,NULL,0),('E0',10,2,NULL,0),('E0',11,2,NULL,0),('E0',12,2,NULL,0),('E0',13,2,NULL,0),('E0',14,2,NULL,0),('E0',15,2,NULL,0),('E0',16,2,NULL,0),('E1',1,2,NULL,0),('E1',2,2,NULL,0),('E1',3,2,NULL,0),('E1',4,2,'yash',0),('E1',5,2,NULL,0),('E1',6,2,NULL,0),('E1',7,2,NULL,0),('E1',8,2,NULL,0),('E1',9,2,NULL,0),('E1',10,2,NULL,0),('E1',11,2,NULL,0),('E1',12,2,NULL,0),('E1',13,2,NULL,0),('E1',14,2,NULL,0),('E1',15,2,NULL,0),('E1',16,2,NULL,0),('E2',1,2,NULL,0),('E2',2,2,NULL,0),('E2',3,2,NULL,0),('E2',4,2,NULL,0),('E2',5,2,NULL,0),('E2',6,2,NULL,0),('E2',7,2,NULL,0),('E2',8,2,NULL,0),('E2',9,2,NULL,0),('E2',10,2,NULL,0),('E2',11,2,NULL,0),('E2',12,2,NULL,0),('E2',13,2,NULL,0),('E2',14,2,NULL,0),('E2',15,2,NULL,0),('E2',16,2,NULL,0),('E3',1,2,NULL,0),('E3',2,2,NULL,0),('E3',3,2,NULL,0),('E3',4,2,NULL,0),('E3',5,2,NULL,0),('E3',6,2,NULL,0),('E3',7,2,NULL,0),('E3',8,2,NULL,0),('E3',9,2,NULL,0),('E3',10,2,NULL,0),('E3',11,2,NULL,0),('E3',12,2,NULL,0),('E3',13,2,NULL,0),('E3',14,2,NULL,0),('E3',15,2,NULL,0),('E3',16,2,NULL,0),('E4',1,2,NULL,0),('E4',2,2,NULL,0),('E4',3,2,NULL,0),('E4',4,2,NULL,0),('E4',5,2,NULL,0),('E4',6,2,NULL,0),('E4',7,2,NULL,0),('E4',8,2,NULL,0),('E4',9,2,NULL,0),('E4',10,2,NULL,0),('E4',11,2,NULL,0),('E4',12,2,NULL,0),('E4',13,2,NULL,0),('E4',14,2,NULL,0),('E4',15,2,NULL,0),('E4',16,2,NULL,0),('E5',1,2,NULL,0),('E5',2,2,NULL,0),('E5',3,2,NULL,0),('E5',4,2,NULL,0),('E5',5,2,NULL,0),('E5',6,2,NULL,0),('E5',7,2,NULL,0),('E5',8,2,NULL,0),('E5',9,2,NULL,0),('E5',10,2,NULL,0),('E5',11,2,NULL,0),('E5',12,2,NULL,0),('E5',13,2,NULL,0),('E5',14,2,NULL,0),('E5',15,2,NULL,0),('E5',16,2,NULL,0),('E6',1,2,NULL,0),('E6',2,2,NULL,0),('E6',3,2,NULL,0),('E6',4,2,NULL,0),('E6',5,2,NULL,0),('E6',6,2,NULL,0),('E6',7,2,NULL,0),('E6',8,2,NULL,0),('E6',9,2,NULL,0),('E6',10,2,NULL,0),('E6',11,2,NULL,0),('E6',12,2,NULL,0),('E6',13,2,NULL,0),('E6',14,2,NULL,0),('E6',15,2,NULL,0),('E6',16,2,NULL,0),('E7',1,2,NULL,0),('E7',2,2,NULL,0),('E7',3,2,NULL,0),('E7',4,2,NULL,0),('E7',5,2,NULL,0),('E7',6,2,NULL,0),('E7',7,2,NULL,0),('E7',8,2,NULL,0),('E7',9,2,NULL,0),('E7',10,2,NULL,0),('E7',11,2,NULL,0),('E7',12,2,NULL,0),('E7',13,2,NULL,0),('E7',14,2,NULL,0),('E7',15,2,NULL,0),('E7',16,2,NULL,0),('E8',1,2,NULL,0),('E8',2,2,NULL,0),('E8',3,2,NULL,0),('E8',4,2,NULL,0),('E8',5,2,NULL,0),('E8',6,2,NULL,0),('E8',7,2,NULL,0),('E8',8,2,NULL,0),('E8',9,2,NULL,0),('E8',10,2,NULL,0),('E8',11,2,NULL,0),('E8',12,2,NULL,0),('E8',13,2,NULL,0),('E8',14,2,NULL,0),('E8',15,2,NULL,0),('E8',16,2,NULL,0),('E9',1,2,NULL,0),('E9',2,2,'yash',0),('E9',3,2,NULL,0),('E9',4,2,NULL,0),('E9',5,2,NULL,0),('E9',6,2,NULL,0),('E9',7,2,NULL,0),('E9',8,2,NULL,0),('E9',9,2,NULL,0),('E9',10,2,NULL,0),('E9',11,2,NULL,0),('E9',12,2,NULL,0),('E9',13,2,NULL,0),('E9',14,2,NULL,0),('E9',15,2,NULL,0),('E9',16,2,NULL,0),('F0',1,2,NULL,0),('F0',2,2,NULL,0),('F0',3,2,NULL,0),('F0',4,2,NULL,0),('F0',5,2,NULL,0),('F0',6,2,NULL,0),('F0',7,2,NULL,0),('F0',8,2,NULL,0),('F0',9,2,NULL,0),('F0',10,2,NULL,0),('F0',11,2,NULL,0),('F0',12,2,NULL,0),('F0',13,2,NULL,0),('F0',14,2,NULL,0),('F0',15,2,NULL,0),('F0',16,2,NULL,0),('F1',1,2,NULL,0),('F1',2,2,NULL,0),('F1',3,2,NULL,0),('F1',4,2,'yash',0),('F1',5,2,NULL,0),('F1',6,2,NULL,0),('F1',7,2,NULL,0),('F1',8,2,NULL,0),('F1',9,2,NULL,0),('F1',10,2,NULL,0),('F1',11,2,NULL,0),('F1',12,2,NULL,0),('F1',13,2,NULL,0),('F1',14,2,NULL,0),('F1',15,2,NULL,0),('F1',16,2,NULL,0),('F2',1,2,NULL,0),('F2',2,2,NULL,0),('F2',3,2,NULL,0),('F2',4,2,NULL,0),('F2',5,2,NULL,0),('F2',6,2,NULL,0),('F2',7,2,NULL,0),('F2',8,2,NULL,0),('F2',9,2,NULL,0),('F2',10,2,NULL,0),('F2',11,2,NULL,0),('F2',12,2,NULL,0),('F2',13,2,NULL,0),('F2',14,2,NULL,0),('F2',15,2,NULL,0),('F2',16,2,NULL,0),('F3',1,2,NULL,0),('F3',2,2,NULL,0),('F3',3,2,NULL,0),('F3',4,2,NULL,0),('F3',5,2,NULL,0),('F3',6,2,NULL,0),('F3',7,2,NULL,0),('F3',8,2,NULL,0),('F3',9,2,NULL,0),('F3',10,2,NULL,0),('F3',11,2,NULL,0),('F3',12,2,NULL,0),('F3',13,2,NULL,0),('F3',14,2,NULL,0),('F3',15,2,NULL,0),('F3',16,2,NULL,0),('F4',1,2,NULL,0),('F4',2,2,NULL,0),('F4',3,2,NULL,0),('F4',4,2,NULL,0),('F4',5,2,NULL,0),('F4',6,2,NULL,0),('F4',7,2,NULL,0),('F4',8,2,NULL,0),('F4',9,2,NULL,0),('F4',10,2,NULL,0),('F4',11,2,NULL,0),('F4',12,2,NULL,0),('F4',13,2,NULL,0),('F4',14,2,NULL,0),('F4',15,2,NULL,0),('F4',16,2,NULL,0),('F5',1,2,NULL,0),('F5',2,2,NULL,0),('F5',3,2,NULL,0),('F5',4,2,NULL,0),('F5',5,2,NULL,0),('F5',6,2,NULL,0),('F5',7,2,NULL,0),('F5',8,2,NULL,0),('F5',9,2,NULL,0),('F5',10,2,NULL,0),('F5',11,2,NULL,0),('F5',12,2,NULL,0),('F5',13,2,NULL,0),('F5',14,2,NULL,0),('F5',15,2,NULL,0),('F5',16,2,NULL,0),('F6',1,2,NULL,0),('F6',2,2,NULL,0),('F6',3,2,NULL,0),('F6',4,2,NULL,0),('F6',5,2,NULL,0),('F6',6,2,NULL,0),('F6',7,2,NULL,0),('F6',8,2,NULL,0),('F6',9,2,NULL,0),('F6',10,2,NULL,0),('F6',11,2,NULL,0),('F6',12,2,NULL,0),('F6',13,2,NULL,0),('F6',14,2,NULL,0),('F6',15,2,NULL,0),('F6',16,2,NULL,0),('F7',1,2,NULL,0),('F7',2,2,NULL,0),('F7',3,2,NULL,0),('F7',4,2,NULL,0),('F7',5,2,NULL,0),('F7',6,2,NULL,0),('F7',7,2,NULL,0),('F7',8,2,NULL,0),('F7',9,2,NULL,0),('F7',10,2,NULL,0),('F7',11,2,NULL,0),('F7',12,2,NULL,0),('F7',13,2,NULL,0),('F7',14,2,NULL,0),('F7',15,2,NULL,0),('F7',16,2,NULL,0),('F8',1,2,NULL,0),('F8',2,2,NULL,0),('F8',3,2,NULL,0),('F8',4,2,NULL,0),('F8',5,2,NULL,0),('F8',6,2,NULL,0),('F8',7,2,NULL,0),('F8',8,2,NULL,0),('F8',9,2,NULL,0),('F8',10,2,NULL,0),('F8',11,2,NULL,0),('F8',12,2,NULL,0),('F8',13,2,NULL,0),('F8',14,2,NULL,0),('F8',15,2,NULL,0),('F8',16,2,NULL,0),('F9',1,2,NULL,0),('F9',2,2,NULL,0),('F9',3,2,NULL,0),('F9',4,2,NULL,0),('F9',5,2,NULL,0),('F9',6,2,NULL,0),('F9',7,2,NULL,0),('F9',8,2,NULL,0),('F9',9,2,NULL,0),('F9',10,2,NULL,0),('F9',11,2,NULL,0),('F9',12,2,NULL,0),('F9',13,2,NULL,0),('F9',14,2,NULL,0),('F9',15,2,NULL,0),('F9',16,2,NULL,0),('G0',1,3,NULL,0),('G0',2,3,NULL,0),('G0',3,3,NULL,0),('G0',4,3,'yash',0),('G0',5,3,NULL,0),('G0',6,3,NULL,0),('G0',7,3,NULL,0),('G0',8,3,NULL,0),('G0',9,3,NULL,0),('G0',10,3,NULL,0),('G0',11,3,NULL,0),('G0',12,3,NULL,0),('G0',13,3,NULL,0),('G0',14,3,NULL,0),('G0',15,3,NULL,0),('G0',16,3,NULL,0),('G1',1,3,NULL,0),('G1',2,3,NULL,0),('G1',3,3,NULL,0),('G1',4,3,NULL,0),('G1',5,3,NULL,0),('G1',6,3,NULL,0),('G1',7,3,NULL,0),('G1',8,3,NULL,0),('G1',9,3,NULL,0),('G1',10,3,NULL,0),('G1',11,3,NULL,0),('G1',12,3,NULL,0),('G1',13,3,NULL,0),('G1',14,3,NULL,0),('G1',15,3,NULL,0),('G1',16,3,NULL,0),('G2',1,3,NULL,0),('G2',2,3,'yash',0),('G2',3,3,NULL,0),('G2',4,3,NULL,0),('G2',5,3,NULL,0),('G2',6,3,NULL,0),('G2',7,3,NULL,0),('G2',8,3,NULL,0),('G2',9,3,NULL,0),('G2',10,3,NULL,0),('G2',11,3,NULL,0),('G2',12,3,NULL,0),('G2',13,3,NULL,0),('G2',14,3,NULL,0),('G2',15,3,NULL,0),('G2',16,3,NULL,0),('G3',1,3,NULL,0),('G3',2,3,NULL,0),('G3',3,3,NULL,0),('G3',4,3,'yash',0),('G3',5,3,NULL,0),('G3',6,3,NULL,0),('G3',7,3,NULL,0),('G3',8,3,NULL,0),('G3',9,3,NULL,0),('G3',10,3,NULL,0),('G3',11,3,NULL,0),('G3',12,3,NULL,0),('G3',13,3,NULL,0),('G3',14,3,NULL,0),('G3',15,3,NULL,0),('G3',16,3,NULL,0),('G4',1,3,NULL,0),('G4',2,3,NULL,0),('G4',3,3,NULL,0),('G4',4,3,NULL,0),('G4',5,3,NULL,0),('G4',6,3,NULL,0),('G4',7,3,NULL,0),('G4',8,3,NULL,0),('G4',9,3,NULL,0),('G4',10,3,NULL,0),('G4',11,3,NULL,0),('G4',12,3,NULL,0),('G4',13,3,NULL,0),('G4',14,3,NULL,0),('G4',15,3,NULL,0),('G4',16,3,NULL,0),('G5',1,3,NULL,0),('G5',2,3,NULL,0),('G5',3,3,NULL,0),('G5',4,3,NULL,0),('G5',5,3,NULL,0),('G5',6,3,NULL,0),('G5',7,3,NULL,0),('G5',8,3,NULL,0),('G5',9,3,NULL,0),('G5',10,3,NULL,0),('G5',11,3,NULL,0),('G5',12,3,NULL,0),('G5',13,3,NULL,0),('G5',14,3,NULL,0),('G5',15,3,NULL,0),('G5',16,3,NULL,0),('G6',1,3,NULL,0),('G6',2,3,'yash',0),('G6',3,3,NULL,0),('G6',4,3,NULL,0),('G6',5,3,NULL,0),('G6',6,3,NULL,0),('G6',7,3,NULL,0),('G6',8,3,NULL,0),('G6',9,3,NULL,0),('G6',10,3,NULL,0),('G6',11,3,NULL,0),('G6',12,3,NULL,0),('G6',13,3,NULL,0),('G6',14,3,NULL,0),('G6',15,3,NULL,0),('G6',16,3,NULL,0),('G7',1,3,NULL,0),('G7',2,3,NULL,0),('G7',3,3,NULL,0),('G7',4,3,NULL,0),('G7',5,3,NULL,0),('G7',6,3,NULL,0),('G7',7,3,NULL,0),('G7',8,3,NULL,0),('G7',9,3,NULL,0),('G7',10,3,NULL,0),('G7',11,3,NULL,0),('G7',12,3,NULL,0),('G7',13,3,NULL,0),('G7',14,3,NULL,0),('G7',15,3,NULL,0),('G7',16,3,NULL,0),('G8',1,3,NULL,0),('G8',2,3,NULL,0),('G8',3,3,NULL,0),('G8',4,3,NULL,0),('G8',5,3,NULL,0),('G8',6,3,NULL,0),('G8',7,3,NULL,0),('G8',8,3,NULL,0),('G8',9,3,NULL,0),('G8',10,3,NULL,0),('G8',11,3,NULL,0),('G8',12,3,NULL,0),('G8',13,3,NULL,0),('G8',14,3,NULL,0),('G8',15,3,NULL,0),('G8',16,3,NULL,0),('G9',1,3,'srinag',0),('G9',2,3,NULL,0),('G9',3,3,NULL,0),('G9',4,3,NULL,0),('G9',5,3,NULL,0),('G9',6,3,NULL,0),('G9',7,3,NULL,0),('G9',8,3,NULL,0),('G9',9,3,NULL,0),('G9',10,3,NULL,0),('G9',11,3,NULL,0),('G9',12,3,NULL,0),('G9',13,3,NULL,0),('G9',14,3,NULL,0),('G9',15,3,NULL,0),('G9',16,3,NULL,0),('H0',1,3,NULL,0),('H0',2,3,NULL,0),('H0',3,3,NULL,0),('H0',4,3,'yash',0),('H0',5,3,NULL,0),('H0',6,3,NULL,0),('H0',7,3,NULL,0),('H0',8,3,NULL,0),('H0',9,3,NULL,0),('H0',10,3,NULL,0),('H0',11,3,NULL,0),('H0',12,3,NULL,0),('H0',13,3,NULL,0),('H0',14,3,NULL,0),('H0',15,3,NULL,0),('H0',16,3,NULL,0),('H1',1,3,NULL,0),('H1',2,3,NULL,0),('H1',3,3,NULL,0),('H1',4,3,'bharath',0),('H1',5,3,NULL,0),('H1',6,3,NULL,0),('H1',7,3,NULL,0),('H1',8,3,NULL,0),('H1',9,3,NULL,0),('H1',10,3,NULL,0),('H1',11,3,NULL,0),('H1',12,3,NULL,0),('H1',13,3,NULL,0),('H1',14,3,NULL,0),('H1',15,3,NULL,0),('H1',16,3,NULL,0),('H2',1,3,NULL,0),('H2',2,3,NULL,0),('H2',3,3,NULL,0),('H2',4,3,NULL,0),('H2',5,3,NULL,0),('H2',6,3,NULL,0),('H2',7,3,NULL,0),('H2',8,3,NULL,0),('H2',9,3,NULL,0),('H2',10,3,NULL,0),('H2',11,3,NULL,0),('H2',12,3,NULL,0),('H2',13,3,NULL,0),('H2',14,3,NULL,0),('H2',15,3,NULL,0),('H2',16,3,NULL,0),('H3',1,3,NULL,0),('H3',2,3,NULL,0),('H3',3,3,NULL,0),('H3',4,3,NULL,0),('H3',5,3,NULL,0),('H3',6,3,NULL,0),('H3',7,3,NULL,0),('H3',8,3,NULL,0),('H3',9,3,NULL,0),('H3',10,3,NULL,0),('H3',11,3,NULL,0),('H3',12,3,NULL,0),('H3',13,3,NULL,0),('H3',14,3,NULL,0),('H3',15,3,NULL,0),('H3',16,3,NULL,0),('H4',1,3,NULL,0),('H4',2,3,NULL,0),('H4',3,3,NULL,0),('H4',4,3,NULL,0),('H4',5,3,NULL,0),('H4',6,3,NULL,0),('H4',7,3,NULL,0),('H4',8,3,NULL,0),('H4',9,3,NULL,0),('H4',10,3,NULL,0),('H4',11,3,NULL,0),('H4',12,3,NULL,0),('H4',13,3,NULL,0),('H4',14,3,NULL,0),('H4',15,3,NULL,0),('H4',16,3,NULL,0),('H5',1,3,NULL,0),('H5',2,3,NULL,0),('H5',3,3,NULL,0),('H5',4,3,NULL,0),('H5',5,3,NULL,0),('H5',6,3,NULL,0),('H5',7,3,NULL,0),('H5',8,3,NULL,0),('H5',9,3,NULL,0),('H5',10,3,NULL,0),('H5',11,3,NULL,0),('H5',12,3,NULL,0),('H5',13,3,NULL,0),('H5',14,3,NULL,0),('H5',15,3,NULL,0),('H5',16,3,NULL,0),('H6',1,3,NULL,0),('H6',2,3,NULL,0),('H6',3,3,NULL,0),('H6',4,3,NULL,0),('H6',5,3,NULL,0),('H6',6,3,NULL,0),('H6',7,3,NULL,0),('H6',8,3,NULL,0),('H6',9,3,NULL,0),('H6',10,3,NULL,0),('H6',11,3,NULL,0),('H6',12,3,NULL,0),('H6',13,3,NULL,0),('H6',14,3,NULL,0),('H6',15,3,NULL,0),('H6',16,3,NULL,0),('H7',1,3,NULL,0),('H7',2,3,NULL,0),('H7',3,3,NULL,0),('H7',4,3,NULL,0),('H7',5,3,NULL,0),('H7',6,3,NULL,0),('H7',7,3,NULL,0),('H7',8,3,NULL,0),('H7',9,3,NULL,0),('H7',10,3,NULL,0),('H7',11,3,NULL,0),('H7',12,3,NULL,0),('H7',13,3,NULL,0),('H7',14,3,NULL,0),('H7',15,3,NULL,0),('H7',16,3,NULL,0),('H8',1,3,NULL,0),('H8',2,3,NULL,0),('H8',3,3,NULL,0),('H8',4,3,NULL,0),('H8',5,3,NULL,0),('H8',6,3,NULL,0),('H8',7,3,NULL,0),('H8',8,3,NULL,0),('H8',9,3,NULL,0),('H8',10,3,NULL,0),('H8',11,3,NULL,0),('H8',12,3,NULL,0),('H8',13,3,NULL,0),('H8',14,3,NULL,0),('H8',15,3,NULL,0),('H8',16,3,NULL,0),('H9',1,3,NULL,0),('H9',2,3,NULL,0),('H9',3,3,NULL,0),('H9',4,3,NULL,0),('H9',5,3,NULL,0),('H9',6,3,NULL,0),('H9',7,3,NULL,0),('H9',8,3,NULL,0),('H9',9,3,NULL,0),('H9',10,3,NULL,0),('H9',11,3,NULL,0),('H9',12,3,NULL,0),('H9',13,3,NULL,0),('H9',14,3,NULL,0),('H9',15,3,NULL,0),('H9',16,3,NULL,0),('I0',1,4,NULL,0),('I0',2,4,NULL,0),('I0',3,4,NULL,0),('I0',4,4,NULL,0),('I0',5,4,NULL,0),('I0',6,4,NULL,0),('I0',7,4,NULL,0),('I0',8,4,NULL,0),('I0',9,4,NULL,0),('I0',10,4,NULL,0),('I0',11,4,NULL,0),('I0',12,4,NULL,0),('I0',13,4,NULL,0),('I0',14,4,NULL,0),('I0',15,4,NULL,0),('I0',16,4,NULL,0),('I1',1,4,NULL,0),('I1',2,4,NULL,0),('I1',3,4,NULL,0),('I1',4,4,NULL,0),('I1',5,4,NULL,0),('I1',6,4,NULL,0),('I1',7,4,NULL,0),('I1',8,4,NULL,0),('I1',9,4,NULL,0),('I1',10,4,NULL,0),('I1',11,4,NULL,0),('I1',12,4,NULL,0),('I1',13,4,NULL,0),('I1',14,4,NULL,0),('I1',15,4,NULL,0),('I1',16,4,NULL,0),('I2',1,4,NULL,0),('I2',2,4,NULL,0),('I2',3,4,NULL,0),('I2',4,4,NULL,0),('I2',5,4,NULL,0),('I2',6,4,NULL,0),('I2',7,4,NULL,0),('I2',8,4,NULL,0),('I2',9,4,NULL,0),('I2',10,4,NULL,0),('I2',11,4,NULL,0),('I2',12,4,NULL,0),('I2',13,4,NULL,0),('I2',14,4,NULL,0),('I2',15,4,NULL,0),('I2',16,4,NULL,0),('I3',1,4,NULL,0),('I3',2,4,NULL,0),('I3',3,4,NULL,0),('I3',4,4,NULL,0),('I3',5,4,NULL,0),('I3',6,4,NULL,0),('I3',7,4,NULL,0),('I3',8,4,NULL,0),('I3',9,4,NULL,0),('I3',10,4,NULL,0),('I3',11,4,NULL,0),('I3',12,4,NULL,0),('I3',13,4,NULL,0),('I3',14,4,NULL,0),('I3',15,4,NULL,0),('I3',16,4,NULL,0),('I4',1,4,NULL,0),('I4',2,4,NULL,0),('I4',3,4,NULL,0),('I4',4,4,NULL,0),('I4',5,4,NULL,0),('I4',6,4,NULL,0),('I4',7,4,NULL,0),('I4',8,4,NULL,0),('I4',9,4,NULL,0),('I4',10,4,NULL,0),('I4',11,4,NULL,0),('I4',12,4,NULL,0),('I4',13,4,NULL,0),('I4',14,4,NULL,0),('I4',15,4,NULL,0),('I4',16,4,NULL,0),('I5',1,4,NULL,0),('I5',2,4,NULL,0),('I5',3,4,NULL,0),('I5',4,4,'yash',0),('I5',5,4,NULL,0),('I5',6,4,NULL,0),('I5',7,4,NULL,0),('I5',8,4,NULL,0),('I5',9,4,NULL,0),('I5',10,4,NULL,0),('I5',11,4,NULL,0),('I5',12,4,NULL,0),('I5',13,4,NULL,0),('I5',14,4,NULL,0),('I5',15,4,NULL,0),('I5',16,4,NULL,0),('I6',1,4,NULL,0),('I6',2,4,'yash',0),('I6',3,4,NULL,0),('I6',4,4,NULL,0),('I6',5,4,NULL,0),('I6',6,4,NULL,0),('I6',7,4,NULL,0),('I6',8,4,NULL,0),('I6',9,4,NULL,0),('I6',10,4,NULL,0),('I6',11,4,NULL,0),('I6',12,4,NULL,0),('I6',13,4,NULL,0),('I6',14,4,NULL,0),('I6',15,4,NULL,0),('I6',16,4,NULL,0),('I7',1,4,NULL,0),('I7',2,4,NULL,0),('I7',3,4,NULL,0),('I7',4,4,NULL,0),('I7',5,4,NULL,0),('I7',6,4,NULL,0),('I7',7,4,NULL,0),('I7',8,4,NULL,0),('I7',9,4,NULL,0),('I7',10,4,NULL,0),('I7',11,4,NULL,0),('I7',12,4,NULL,0),('I7',13,4,NULL,0),('I7',14,4,NULL,0),('I7',15,4,NULL,0),('I7',16,4,NULL,0),('I8',1,4,NULL,0),('I8',2,4,NULL,0),('I8',3,4,NULL,0),('I8',4,4,NULL,0),('I8',5,4,NULL,0),('I8',6,4,NULL,0),('I8',7,4,NULL,0),('I8',8,4,NULL,0),('I8',9,4,NULL,0),('I8',10,4,NULL,0),('I8',11,4,NULL,0),('I8',12,4,NULL,0),('I8',13,4,NULL,0),('I8',14,4,NULL,0),('I8',15,4,NULL,0),('I8',16,4,NULL,0),('I9',1,4,NULL,0),('I9',2,4,NULL,0),('I9',3,4,NULL,0),('I9',4,4,NULL,0),('I9',5,4,NULL,0),('I9',6,4,NULL,0),('I9',7,4,NULL,0),('I9',8,4,NULL,0),('I9',9,4,NULL,0),('I9',10,4,NULL,0),('I9',11,4,NULL,0),('I9',12,4,NULL,0),('I9',13,4,NULL,0),('I9',14,4,NULL,0),('I9',15,4,NULL,0),('I9',16,4,NULL,0),('J0',1,4,NULL,0),('J0',2,4,NULL,0),('J0',3,4,NULL,0),('J0',4,4,NULL,0),('J0',5,4,NULL,0),('J0',6,4,NULL,0),('J0',7,4,NULL,0),('J0',8,4,NULL,0),('J0',9,4,NULL,0),('J0',10,4,NULL,0),('J0',11,4,NULL,0),('J0',12,4,NULL,0),('J0',13,4,NULL,0),('J0',14,4,NULL,0),('J0',15,4,NULL,0),('J0',16,4,NULL,0),('J1',1,4,NULL,0),('J1',2,4,NULL,0),('J1',3,4,NULL,0),('J1',4,4,NULL,0),('J1',5,4,NULL,0),('J1',6,4,NULL,0),('J1',7,4,NULL,0),('J1',8,4,NULL,0),('J1',9,4,NULL,0),('J1',10,4,NULL,0),('J1',11,4,NULL,0),('J1',12,4,NULL,0),('J1',13,4,NULL,0),('J1',14,4,NULL,0),('J1',15,4,NULL,0),('J1',16,4,NULL,0),('J2',1,4,NULL,0),('J2',2,4,'yash',0),('J2',3,4,NULL,0),('J2',4,4,NULL,0),('J2',5,4,NULL,0),('J2',6,4,NULL,0),('J2',7,4,NULL,0),('J2',8,4,NULL,0),('J2',9,4,NULL,0),('J2',10,4,NULL,0),('J2',11,4,NULL,0),('J2',12,4,NULL,0),('J2',13,4,NULL,0),('J2',14,4,NULL,0),('J2',15,4,NULL,0),('J2',16,4,NULL,0),('J3',1,4,NULL,0),('J3',2,4,NULL,0),('J3',3,4,NULL,0),('J3',4,4,NULL,0),('J3',5,4,NULL,0),('J3',6,4,NULL,0),('J3',7,4,NULL,0),('J3',8,4,NULL,0),('J3',9,4,NULL,0),('J3',10,4,NULL,0),('J3',11,4,NULL,0),('J3',12,4,NULL,0),('J3',13,4,NULL,0),('J3',14,4,NULL,0),('J3',15,4,NULL,0),('J3',16,4,NULL,0),('J4',1,4,NULL,0),('J4',2,4,NULL,0),('J4',3,4,NULL,0),('J4',4,4,NULL,0),('J4',5,4,NULL,0),('J4',6,4,NULL,0),('J4',7,4,NULL,0),('J4',8,4,NULL,0),('J4',9,4,NULL,0),('J4',10,4,NULL,0),('J4',11,4,NULL,0),('J4',12,4,NULL,0),('J4',13,4,NULL,0),('J4',14,4,NULL,0),('J4',15,4,NULL,0),('J4',16,4,NULL,0),('J5',1,4,NULL,0),('J5',2,4,NULL,0),('J5',3,4,NULL,0),('J5',4,4,NULL,0),('J5',5,4,NULL,0),('J5',6,4,NULL,0),('J5',7,4,NULL,0),('J5',8,4,NULL,0),('J5',9,4,NULL,0),('J5',10,4,NULL,0),('J5',11,4,NULL,0),('J5',12,4,NULL,0),('J5',13,4,NULL,0),('J5',14,4,NULL,0),('J5',15,4,NULL,0),('J5',16,4,NULL,0),('J6',1,4,NULL,0),('J6',2,4,NULL,0),('J6',3,4,NULL,0),('J6',4,4,NULL,0),('J6',5,4,NULL,0),('J6',6,4,NULL,0),('J6',7,4,NULL,0),('J6',8,4,NULL,0),('J6',9,4,NULL,0),('J6',10,4,NULL,0),('J6',11,4,NULL,0),('J6',12,4,NULL,0),('J6',13,4,NULL,0),('J6',14,4,NULL,0),('J6',15,4,NULL,0),('J6',16,4,NULL,0),('J7',1,4,NULL,0),('J7',2,4,NULL,0),('J7',3,4,NULL,0),('J7',4,4,NULL,0),('J7',5,4,NULL,0),('J7',6,4,NULL,0),('J7',7,4,NULL,0),('J7',8,4,NULL,0),('J7',9,4,NULL,0),('J7',10,4,NULL,0),('J7',11,4,NULL,0),('J7',12,4,NULL,0),('J7',13,4,NULL,0),('J7',14,4,NULL,0),('J7',15,4,NULL,0),('J7',16,4,NULL,0),('J8',1,4,NULL,0),('J8',2,4,NULL,0),('J8',3,4,NULL,0),('J8',4,4,NULL,0),('J8',5,4,NULL,0),('J8',6,4,NULL,0),('J8',7,4,NULL,0),('J8',8,4,NULL,0),('J8',9,4,NULL,0),('J8',10,4,NULL,0),('J8',11,4,NULL,0),('J8',12,4,NULL,0),('J8',13,4,NULL,0),('J8',14,4,NULL,0),('J8',15,4,NULL,0),('J8',16,4,NULL,0),('J9',1,4,NULL,0),('J9',2,4,NULL,0),('J9',3,4,NULL,0),('J9',4,4,NULL,0),('J9',5,4,NULL,0),('J9',6,4,NULL,0),('J9',7,4,NULL,0),('J9',8,4,NULL,0),('J9',9,4,NULL,0),('J9',10,4,NULL,0),('J9',11,4,NULL,0),('J9',12,4,NULL,0),('J9',13,4,NULL,0),('J9',14,4,NULL,0),('J9',15,4,NULL,0),('J9',16,4,NULL,0);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shows` (
  `sid` int(5) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `tid` int(5) DEFAULT NULL,
  `mid` int(5) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `mid` (`mid`),
  KEY `tid` (`tid`),
  CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `movie` (`mid`),
  CONSTRAINT `shows_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'2018-10-31 10:00:00',2,4),(2,'2018-10-31 13:00:00',2,9),(3,'2018-10-30 16:00:00',2,1),(4,'2018-10-31 20:00:00',2,8),(5,'2018-10-31 10:00:00',3,5),(6,'2018-10-31 13:00:00',3,6),(7,'2018-10-30 16:00:00',3,2),(8,'2018-10-30 20:00:00',3,7),(9,'2018-10-31 10:00:00',5,6),(10,'2018-10-31 13:00:00',5,2),(11,'2018-10-30 16:00:00',5,1),(12,'2018-10-31 20:00:00',5,3),(13,'2018-10-31 14:00:00',1,3),(14,'2018-10-31 18:00:00',1,6),(15,'2018-10-30 14:00:00',4,3),(16,'2018-10-31 18:00:00',4,1),(17,'2018-10-31 17:00:00',2,1),(18,'2018-10-31 19:00:00',2,1),(19,'2018-10-31 19:00:00',2,1),(20,'2018-10-31 19:00:00',2,1);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theatre` (
  `tid` int(5) NOT NULL,
  `tname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'Prabath Theatre','K S Rao Road '),(2,'Cinepolis','City Centre Mall, Hampankatta'),(3,'PVR Cinemas','Forum Fiza Mall, Pandeshwar'),(4,'Amarashree Theatre','Moodbidri'),(5,'Bharath Cinemas','Bharath Mall, Bejai');
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uname` varchar(25) NOT NULL,
  `pwd` varchar(25) DEFAULT NULL,
  `level` int(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`uname`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `phone_2` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('a','b',1,'a@gmail.com','987665432'),('bharath','pass',0,'b@gmail.com','9987654321'),('bubbles','password',1,'as@gmail.com','1234565789'),('dodeja','pass',1,'d@g.com','1234566789'),('jungle','pass',1,'jungle@gmail.com','9874561232'),('l','pass',1,'l@l.com','1234556789'),('sanjay','pass',1,'sanjay@gmail.com','1223456789'),('shreyas','pass',1,'shreyas@yahoo.com','1234566779'),('skitty','pass',0,'s@g.com','1234567896'),('spandana','pass',1,'span@gmail.com','3421567890'),('srinag','pass',0,'srinagrao2007@gmail.com','9876543210'),('yash','pass',0,'y@gmail.com','9876543211');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06  1:05:57
