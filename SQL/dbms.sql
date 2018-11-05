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
INSERT INTO `seats` VALUES ('A0',1,1,NULL),('A0',2,1,NULL),('A0',3,1,NULL),('A0',4,1,NULL),('A0',5,1,NULL),('A0',6,1,NULL),('A0',7,1,NULL),('A0',8,1,NULL),('A0',9,1,NULL),('A0',10,1,NULL),('A0',11,1,NULL),('A0',12,1,NULL),('A0',13,1,NULL),('A0',14,1,NULL),('A0',15,1,NULL),('A0',16,1,NULL),('A1',1,1,NULL),('A1',2,1,NULL),('A1',3,1,NULL),('A1',4,1,NULL),('A1',5,1,NULL),('A1',6,1,NULL),('A1',7,1,NULL),('A1',8,1,NULL),('A1',9,1,NULL),('A1',10,1,NULL),('A1',11,1,NULL),('A1',12,1,NULL),('A1',13,1,NULL),('A1',14,1,NULL),('A1',15,1,NULL),('A1',16,1,NULL),('A2',1,1,NULL),('A2',2,1,NULL),('A2',3,1,NULL),('A2',4,1,NULL),('A2',5,1,NULL),('A2',6,1,NULL),('A2',7,1,NULL),('A2',8,1,NULL),('A2',9,1,NULL),('A2',10,1,NULL),('A2',11,1,NULL),('A2',12,1,NULL),('A2',13,1,NULL),('A2',14,1,NULL),('A2',15,1,NULL),('A2',16,1,NULL),('A3',1,1,NULL),('A3',2,1,NULL),('A3',3,1,NULL),('A3',4,1,NULL),('A3',5,1,NULL),('A3',6,1,NULL),('A3',7,1,NULL),('A3',8,1,NULL),('A3',9,1,NULL),('A3',10,1,NULL),('A3',11,1,NULL),('A3',12,1,NULL),('A3',13,1,NULL),('A3',14,1,NULL),('A3',15,1,NULL),('A3',16,1,NULL),('A4',1,1,NULL),('A4',2,1,NULL),('A4',3,1,NULL),('A4',4,1,NULL),('A4',5,1,NULL),('A4',6,1,NULL),('A4',7,1,NULL),('A4',8,1,NULL),('A4',9,1,NULL),('A4',10,1,NULL),('A4',11,1,NULL),('A4',12,1,NULL),('A4',13,1,NULL),('A4',14,1,NULL),('A4',15,1,NULL),('A4',16,1,NULL),('A5',1,1,NULL),('A5',2,1,NULL),('A5',3,1,NULL),('A5',4,1,NULL),('A5',5,1,NULL),('A5',6,1,NULL),('A5',7,1,NULL),('A5',8,1,NULL),('A5',9,1,NULL),('A5',10,1,NULL),('A5',11,1,NULL),('A5',12,1,NULL),('A5',13,1,NULL),('A5',14,1,NULL),('A5',15,1,NULL),('A5',16,1,NULL),('A6',1,1,NULL),('A6',2,1,NULL),('A6',3,1,NULL),('A6',4,1,NULL),('A6',5,1,NULL),('A6',6,1,NULL),('A6',7,1,NULL),('A6',8,1,NULL),('A6',9,1,NULL),('A6',10,1,NULL),('A6',11,1,NULL),('A6',12,1,NULL),('A6',13,1,NULL),('A6',14,1,NULL),('A6',15,1,NULL),('A6',16,1,NULL),('A7',1,1,NULL),('A7',2,1,NULL),('A7',3,1,NULL),('A7',4,1,NULL),('A7',5,1,NULL),('A7',6,1,NULL),('A7',7,1,NULL),('A7',8,1,NULL),('A7',9,1,NULL),('A7',10,1,NULL),('A7',11,1,NULL),('A7',12,1,NULL),('A7',13,1,NULL),('A7',14,1,NULL),('A7',15,1,NULL),('A7',16,1,NULL),('A8',1,1,NULL),('A8',2,1,NULL),('A8',3,1,NULL),('A8',4,1,NULL),('A8',5,1,NULL),('A8',6,1,NULL),('A8',7,1,NULL),('A8',8,1,NULL),('A8',9,1,NULL),('A8',10,1,NULL),('A8',11,1,NULL),('A8',12,1,NULL),('A8',13,1,NULL),('A8',14,1,NULL),('A8',15,1,NULL),('A8',16,1,NULL),('A9',1,1,NULL),('A9',2,1,NULL),('A9',3,1,NULL),('A9',4,1,NULL),('A9',5,1,NULL),('A9',6,1,NULL),('A9',7,1,NULL),('A9',8,1,NULL),('A9',9,1,NULL),('A9',10,1,NULL),('A9',11,1,NULL),('A9',12,1,NULL),('A9',13,1,NULL),('A9',14,1,NULL),('A9',15,1,NULL),('A9',16,1,NULL),('B0',1,1,NULL),('B0',2,1,NULL),('B0',3,1,NULL),('B0',4,1,NULL),('B0',5,1,NULL),('B0',6,1,NULL),('B0',7,1,NULL),('B0',8,1,NULL),('B0',9,1,NULL),('B0',10,1,NULL),('B0',11,1,NULL),('B0',12,1,NULL),('B0',13,1,NULL),('B0',14,1,NULL),('B0',15,1,NULL),('B0',16,1,NULL),('B1',1,1,NULL),('B1',2,1,NULL),('B1',3,1,NULL),('B1',4,1,NULL),('B1',5,1,NULL),('B1',6,1,NULL),('B1',7,1,NULL),('B1',8,1,NULL),('B1',9,1,NULL),('B1',10,1,NULL),('B1',11,1,NULL),('B1',12,1,NULL),('B1',13,1,NULL),('B1',14,1,NULL),('B1',15,1,NULL),('B1',16,1,NULL),('B2',1,1,NULL),('B2',2,1,NULL),('B2',3,1,NULL),('B2',4,1,NULL),('B2',5,1,NULL),('B2',6,1,NULL),('B2',7,1,NULL),('B2',8,1,NULL),('B2',9,1,NULL),('B2',10,1,NULL),('B2',11,1,NULL),('B2',12,1,NULL),('B2',13,1,NULL),('B2',14,1,NULL),('B2',15,1,NULL),('B2',16,1,NULL),('B3',1,1,NULL),('B3',2,1,NULL),('B3',3,1,NULL),('B3',4,1,NULL),('B3',5,1,NULL),('B3',6,1,NULL),('B3',7,1,NULL),('B3',8,1,NULL),('B3',9,1,NULL),('B3',10,1,NULL),('B3',11,1,NULL),('B3',12,1,NULL),('B3',13,1,NULL),('B3',14,1,NULL),('B3',15,1,NULL),('B3',16,1,NULL),('B4',1,1,NULL),('B4',2,1,NULL),('B4',3,1,NULL),('B4',4,1,NULL),('B4',5,1,NULL),('B4',6,1,NULL),('B4',7,1,NULL),('B4',8,1,NULL),('B4',9,1,NULL),('B4',10,1,NULL),('B4',11,1,NULL),('B4',12,1,NULL),('B4',13,1,NULL),('B4',14,1,NULL),('B4',15,1,NULL),('B4',16,1,NULL),('B5',1,1,NULL),('B5',2,1,NULL),('B5',3,1,NULL),('B5',4,1,NULL),('B5',5,1,NULL),('B5',6,1,NULL),('B5',7,1,NULL),('B5',8,1,NULL),('B5',9,1,NULL),('B5',10,1,NULL),('B5',11,1,NULL),('B5',12,1,NULL),('B5',13,1,NULL),('B5',14,1,NULL),('B5',15,1,NULL),('B5',16,1,NULL),('B6',1,1,NULL),('B6',2,1,NULL),('B6',3,1,NULL),('B6',4,1,NULL),('B6',5,1,NULL),('B6',6,1,NULL),('B6',7,1,NULL),('B6',8,1,NULL),('B6',9,1,NULL),('B6',10,1,NULL),('B6',11,1,NULL),('B6',12,1,NULL),('B6',13,1,NULL),('B6',14,1,NULL),('B6',15,1,NULL),('B6',16,1,NULL),('B7',1,1,NULL),('B7',2,1,NULL),('B7',3,1,NULL),('B7',4,1,NULL),('B7',5,1,NULL),('B7',6,1,NULL),('B7',7,1,NULL),('B7',8,1,NULL),('B7',9,1,NULL),('B7',10,1,NULL),('B7',11,1,NULL),('B7',12,1,NULL),('B7',13,1,NULL),('B7',14,1,NULL),('B7',15,1,NULL),('B7',16,1,NULL),('B8',1,1,NULL),('B8',2,1,NULL),('B8',3,1,NULL),('B8',4,1,NULL),('B8',5,1,NULL),('B8',6,1,NULL),('B8',7,1,NULL),('B8',8,1,NULL),('B8',9,1,NULL),('B8',10,1,NULL),('B8',11,1,NULL),('B8',12,1,NULL),('B8',13,1,NULL),('B8',14,1,NULL),('B8',15,1,NULL),('B8',16,1,NULL),('B9',1,1,NULL),('B9',2,1,NULL),('B9',3,1,NULL),('B9',4,1,NULL),('B9',5,1,NULL),('B9',6,1,NULL),('B9',7,1,NULL),('B9',8,1,NULL),('B9',9,1,NULL),('B9',10,1,NULL),('B9',11,1,NULL),('B9',12,1,NULL),('B9',13,1,NULL),('B9',14,1,NULL),('B9',15,1,NULL),('B9',16,1,NULL),('C0',1,1,NULL),('C0',2,1,NULL),('C0',3,1,NULL),('C0',4,1,NULL),('C0',5,1,NULL),('C0',6,1,NULL),('C0',7,1,NULL),('C0',8,1,NULL),('C0',9,1,NULL),('C0',10,1,NULL),('C0',11,1,NULL),('C0',12,1,NULL),('C0',13,1,NULL),('C0',14,1,NULL),('C0',15,1,NULL),('C0',16,1,NULL),('C1',1,1,NULL),('C1',2,1,NULL),('C1',3,1,NULL),('C1',4,1,NULL),('C1',5,1,NULL),('C1',6,1,NULL),('C1',7,1,NULL),('C1',8,1,NULL),('C1',9,1,NULL),('C1',10,1,NULL),('C1',11,1,NULL),('C1',12,1,NULL),('C1',13,1,NULL),('C1',14,1,NULL),('C1',15,1,NULL),('C1',16,1,NULL),('C2',1,1,NULL),('C2',2,1,NULL),('C2',3,1,NULL),('C2',4,1,NULL),('C2',5,1,NULL),('C2',6,1,NULL),('C2',7,1,NULL),('C2',8,1,NULL),('C2',9,1,NULL),('C2',10,1,NULL),('C2',11,1,NULL),('C2',12,1,NULL),('C2',13,1,NULL),('C2',14,1,NULL),('C2',15,1,NULL),('C2',16,1,NULL),('C3',1,1,NULL),('C3',2,1,'yash'),('C3',3,1,NULL),('C3',4,1,NULL),('C3',5,1,NULL),('C3',6,1,NULL),('C3',7,1,NULL),('C3',8,1,NULL),('C3',9,1,NULL),('C3',10,1,NULL),('C3',11,1,NULL),('C3',12,1,NULL),('C3',13,1,NULL),('C3',14,1,NULL),('C3',15,1,NULL),('C3',16,1,NULL),('C4',1,1,NULL),('C4',2,1,NULL),('C4',3,1,NULL),('C4',4,1,NULL),('C4',5,1,NULL),('C4',6,1,NULL),('C4',7,1,NULL),('C4',8,1,NULL),('C4',9,1,NULL),('C4',10,1,NULL),('C4',11,1,NULL),('C4',12,1,NULL),('C4',13,1,NULL),('C4',14,1,NULL),('C4',15,1,NULL),('C4',16,1,NULL),('C5',1,1,NULL),('C5',2,1,NULL),('C5',3,1,NULL),('C5',4,1,NULL),('C5',5,1,NULL),('C5',6,1,NULL),('C5',7,1,NULL),('C5',8,1,NULL),('C5',9,1,NULL),('C5',10,1,NULL),('C5',11,1,NULL),('C5',12,1,NULL),('C5',13,1,NULL),('C5',14,1,NULL),('C5',15,1,NULL),('C5',16,1,NULL),('C6',1,1,NULL),('C6',2,1,NULL),('C6',3,1,NULL),('C6',4,1,NULL),('C6',5,1,NULL),('C6',6,1,NULL),('C6',7,1,NULL),('C6',8,1,NULL),('C6',9,1,NULL),('C6',10,1,NULL),('C6',11,1,NULL),('C6',12,1,NULL),('C6',13,1,NULL),('C6',14,1,NULL),('C6',15,1,NULL),('C6',16,1,NULL),('C7',1,1,NULL),('C7',2,1,NULL),('C7',3,1,NULL),('C7',4,1,NULL),('C7',5,1,NULL),('C7',6,1,NULL),('C7',7,1,NULL),('C7',8,1,NULL),('C7',9,1,NULL),('C7',10,1,NULL),('C7',11,1,NULL),('C7',12,1,NULL),('C7',13,1,NULL),('C7',14,1,NULL),('C7',15,1,NULL),('C7',16,1,NULL),('C8',1,1,NULL),('C8',2,1,NULL),('C8',3,1,NULL),('C8',4,1,NULL),('C8',5,1,NULL),('C8',6,1,NULL),('C8',7,1,NULL),('C8',8,1,NULL),('C8',9,1,NULL),('C8',10,1,NULL),('C8',11,1,NULL),('C8',12,1,NULL),('C8',13,1,NULL),('C8',14,1,NULL),('C8',15,1,NULL),('C8',16,1,NULL),('C9',1,1,NULL),('C9',2,1,NULL),('C9',3,1,NULL),('C9',4,1,NULL),('C9',5,1,NULL),('C9',6,1,NULL),('C9',7,1,NULL),('C9',8,1,NULL),('C9',9,1,NULL),('C9',10,1,NULL),('C9',11,1,NULL),('C9',12,1,NULL),('C9',13,1,NULL),('C9',14,1,NULL),('C9',15,1,NULL),('C9',16,1,NULL),('D0',1,2,NULL),('D0',2,2,NULL),('D0',3,2,NULL),('D0',4,2,NULL),('D0',5,2,NULL),('D0',6,2,NULL),('D0',7,2,NULL),('D0',8,2,NULL),('D0',9,2,NULL),('D0',10,2,NULL),('D0',11,2,NULL),('D0',12,2,NULL),('D0',13,2,NULL),('D0',14,2,NULL),('D0',15,2,NULL),('D0',16,2,NULL),('D1',1,2,NULL),('D1',2,2,NULL),('D1',3,2,NULL),('D1',4,2,NULL),('D1',5,2,NULL),('D1',6,2,NULL),('D1',7,2,NULL),('D1',8,2,NULL),('D1',9,2,NULL),('D1',10,2,NULL),('D1',11,2,NULL),('D1',12,2,NULL),('D1',13,2,NULL),('D1',14,2,NULL),('D1',15,2,NULL),('D1',16,2,NULL),('D2',1,2,NULL),('D2',2,2,NULL),('D2',3,2,NULL),('D2',4,2,NULL),('D2',5,2,NULL),('D2',6,2,NULL),('D2',7,2,NULL),('D2',8,2,NULL),('D2',9,2,NULL),('D2',10,2,NULL),('D2',11,2,NULL),('D2',12,2,NULL),('D2',13,2,NULL),('D2',14,2,NULL),('D2',15,2,NULL),('D2',16,2,NULL),('D3',1,2,NULL),('D3',2,2,NULL),('D3',3,2,NULL),('D3',4,2,NULL),('D3',5,2,NULL),('D3',6,2,NULL),('D3',7,2,NULL),('D3',8,2,NULL),('D3',9,2,NULL),('D3',10,2,NULL),('D3',11,2,NULL),('D3',12,2,NULL),('D3',13,2,NULL),('D3',14,2,NULL),('D3',15,2,NULL),('D3',16,2,NULL),('D4',1,2,NULL),('D4',2,2,NULL),('D4',3,2,NULL),('D4',4,2,'yash'),('D4',5,2,NULL),('D4',6,2,NULL),('D4',7,2,NULL),('D4',8,2,NULL),('D4',9,2,NULL),('D4',10,2,NULL),('D4',11,2,NULL),('D4',12,2,NULL),('D4',13,2,NULL),('D4',14,2,NULL),('D4',15,2,NULL),('D4',16,2,NULL),('D5',1,2,NULL),('D5',2,2,NULL),('D5',3,2,NULL),('D5',4,2,'yash'),('D5',5,2,NULL),('D5',6,2,NULL),('D5',7,2,NULL),('D5',8,2,NULL),('D5',9,2,NULL),('D5',10,2,NULL),('D5',11,2,NULL),('D5',12,2,NULL),('D5',13,2,NULL),('D5',14,2,NULL),('D5',15,2,NULL),('D5',16,2,NULL),('D6',1,2,NULL),('D6',2,2,NULL),('D6',3,2,NULL),('D6',4,2,'yash'),('D6',5,2,NULL),('D6',6,2,NULL),('D6',7,2,NULL),('D6',8,2,NULL),('D6',9,2,NULL),('D6',10,2,NULL),('D6',11,2,NULL),('D6',12,2,NULL),('D6',13,2,NULL),('D6',14,2,NULL),('D6',15,2,NULL),('D6',16,2,NULL),('D7',1,2,NULL),('D7',2,2,NULL),('D7',3,2,NULL),('D7',4,2,NULL),('D7',5,2,NULL),('D7',6,2,NULL),('D7',7,2,NULL),('D7',8,2,NULL),('D7',9,2,NULL),('D7',10,2,NULL),('D7',11,2,NULL),('D7',12,2,NULL),('D7',13,2,NULL),('D7',14,2,NULL),('D7',15,2,NULL),('D7',16,2,NULL),('D8',1,2,NULL),('D8',2,2,NULL),('D8',3,2,NULL),('D8',4,2,NULL),('D8',5,2,NULL),('D8',6,2,NULL),('D8',7,2,NULL),('D8',8,2,NULL),('D8',9,2,NULL),('D8',10,2,NULL),('D8',11,2,NULL),('D8',12,2,NULL),('D8',13,2,NULL),('D8',14,2,NULL),('D8',15,2,NULL),('D8',16,2,NULL),('D9',1,2,NULL),('D9',2,2,NULL),('D9',3,2,NULL),('D9',4,2,NULL),('D9',5,2,NULL),('D9',6,2,NULL),('D9',7,2,NULL),('D9',8,2,NULL),('D9',9,2,NULL),('D9',10,2,NULL),('D9',11,2,NULL),('D9',12,2,NULL),('D9',13,2,NULL),('D9',14,2,NULL),('D9',15,2,NULL),('D9',16,2,NULL),('E0',1,2,NULL),('E0',2,2,NULL),('E0',3,2,NULL),('E0',4,2,NULL),('E0',5,2,NULL),('E0',6,2,NULL),('E0',7,2,NULL),('E0',8,2,NULL),('E0',9,2,NULL),('E0',10,2,NULL),('E0',11,2,NULL),('E0',12,2,NULL),('E0',13,2,NULL),('E0',14,2,NULL),('E0',15,2,NULL),('E0',16,2,NULL),('E1',1,2,NULL),('E1',2,2,NULL),('E1',3,2,NULL),('E1',4,2,'yash'),('E1',5,2,NULL),('E1',6,2,NULL),('E1',7,2,NULL),('E1',8,2,NULL),('E1',9,2,NULL),('E1',10,2,NULL),('E1',11,2,NULL),('E1',12,2,NULL),('E1',13,2,NULL),('E1',14,2,NULL),('E1',15,2,NULL),('E1',16,2,NULL),('E2',1,2,NULL),('E2',2,2,NULL),('E2',3,2,NULL),('E2',4,2,NULL),('E2',5,2,NULL),('E2',6,2,NULL),('E2',7,2,NULL),('E2',8,2,NULL),('E2',9,2,NULL),('E2',10,2,NULL),('E2',11,2,NULL),('E2',12,2,NULL),('E2',13,2,NULL),('E2',14,2,NULL),('E2',15,2,NULL),('E2',16,2,NULL),('E3',1,2,NULL),('E3',2,2,NULL),('E3',3,2,NULL),('E3',4,2,NULL),('E3',5,2,NULL),('E3',6,2,NULL),('E3',7,2,NULL),('E3',8,2,NULL),('E3',9,2,NULL),('E3',10,2,NULL),('E3',11,2,NULL),('E3',12,2,NULL),('E3',13,2,NULL),('E3',14,2,NULL),('E3',15,2,NULL),('E3',16,2,NULL),('E4',1,2,NULL),('E4',2,2,NULL),('E4',3,2,NULL),('E4',4,2,NULL),('E4',5,2,NULL),('E4',6,2,NULL),('E4',7,2,NULL),('E4',8,2,NULL),('E4',9,2,NULL),('E4',10,2,NULL),('E4',11,2,NULL),('E4',12,2,NULL),('E4',13,2,NULL),('E4',14,2,NULL),('E4',15,2,NULL),('E4',16,2,NULL),('E5',1,2,NULL),('E5',2,2,NULL),('E5',3,2,NULL),('E5',4,2,NULL),('E5',5,2,NULL),('E5',6,2,NULL),('E5',7,2,NULL),('E5',8,2,NULL),('E5',9,2,NULL),('E5',10,2,NULL),('E5',11,2,NULL),('E5',12,2,NULL),('E5',13,2,NULL),('E5',14,2,NULL),('E5',15,2,NULL),('E5',16,2,NULL),('E6',1,2,NULL),('E6',2,2,NULL),('E6',3,2,NULL),('E6',4,2,NULL),('E6',5,2,NULL),('E6',6,2,NULL),('E6',7,2,NULL),('E6',8,2,NULL),('E6',9,2,NULL),('E6',10,2,NULL),('E6',11,2,NULL),('E6',12,2,NULL),('E6',13,2,NULL),('E6',14,2,NULL),('E6',15,2,NULL),('E6',16,2,NULL),('E7',1,2,NULL),('E7',2,2,NULL),('E7',3,2,NULL),('E7',4,2,NULL),('E7',5,2,NULL),('E7',6,2,NULL),('E7',7,2,NULL),('E7',8,2,NULL),('E7',9,2,NULL),('E7',10,2,NULL),('E7',11,2,NULL),('E7',12,2,NULL),('E7',13,2,NULL),('E7',14,2,NULL),('E7',15,2,NULL),('E7',16,2,NULL),('E8',1,2,NULL),('E8',2,2,NULL),('E8',3,2,NULL),('E8',4,2,NULL),('E8',5,2,NULL),('E8',6,2,NULL),('E8',7,2,NULL),('E8',8,2,NULL),('E8',9,2,NULL),('E8',10,2,NULL),('E8',11,2,NULL),('E8',12,2,NULL),('E8',13,2,NULL),('E8',14,2,NULL),('E8',15,2,NULL),('E8',16,2,NULL),('E9',1,2,NULL),('E9',2,2,'yash'),('E9',3,2,NULL),('E9',4,2,NULL),('E9',5,2,NULL),('E9',6,2,NULL),('E9',7,2,NULL),('E9',8,2,NULL),('E9',9,2,NULL),('E9',10,2,NULL),('E9',11,2,NULL),('E9',12,2,NULL),('E9',13,2,NULL),('E9',14,2,NULL),('E9',15,2,NULL),('E9',16,2,NULL),('F0',1,2,NULL),('F0',2,2,NULL),('F0',3,2,NULL),('F0',4,2,NULL),('F0',5,2,NULL),('F0',6,2,NULL),('F0',7,2,NULL),('F0',8,2,NULL),('F0',9,2,NULL),('F0',10,2,NULL),('F0',11,2,NULL),('F0',12,2,NULL),('F0',13,2,NULL),('F0',14,2,NULL),('F0',15,2,NULL),('F0',16,2,NULL),('F1',1,2,NULL),('F1',2,2,NULL),('F1',3,2,NULL),('F1',4,2,'yash'),('F1',5,2,NULL),('F1',6,2,NULL),('F1',7,2,NULL),('F1',8,2,NULL),('F1',9,2,NULL),('F1',10,2,NULL),('F1',11,2,NULL),('F1',12,2,NULL),('F1',13,2,NULL),('F1',14,2,NULL),('F1',15,2,NULL),('F1',16,2,NULL),('F2',1,2,NULL),('F2',2,2,NULL),('F2',3,2,NULL),('F2',4,2,NULL),('F2',5,2,NULL),('F2',6,2,NULL),('F2',7,2,NULL),('F2',8,2,NULL),('F2',9,2,NULL),('F2',10,2,NULL),('F2',11,2,NULL),('F2',12,2,NULL),('F2',13,2,NULL),('F2',14,2,NULL),('F2',15,2,NULL),('F2',16,2,NULL),('F3',1,2,NULL),('F3',2,2,NULL),('F3',3,2,NULL),('F3',4,2,NULL),('F3',5,2,NULL),('F3',6,2,NULL),('F3',7,2,NULL),('F3',8,2,NULL),('F3',9,2,NULL),('F3',10,2,NULL),('F3',11,2,NULL),('F3',12,2,NULL),('F3',13,2,NULL),('F3',14,2,NULL),('F3',15,2,NULL),('F3',16,2,NULL),('F4',1,2,NULL),('F4',2,2,NULL),('F4',3,2,NULL),('F4',4,2,NULL),('F4',5,2,NULL),('F4',6,2,NULL),('F4',7,2,NULL),('F4',8,2,NULL),('F4',9,2,NULL),('F4',10,2,NULL),('F4',11,2,NULL),('F4',12,2,NULL),('F4',13,2,NULL),('F4',14,2,NULL),('F4',15,2,NULL),('F4',16,2,NULL),('F5',1,2,NULL),('F5',2,2,NULL),('F5',3,2,NULL),('F5',4,2,NULL),('F5',5,2,NULL),('F5',6,2,NULL),('F5',7,2,NULL),('F5',8,2,NULL),('F5',9,2,NULL),('F5',10,2,NULL),('F5',11,2,NULL),('F5',12,2,NULL),('F5',13,2,NULL),('F5',14,2,NULL),('F5',15,2,NULL),('F5',16,2,NULL),('F6',1,2,NULL),('F6',2,2,NULL),('F6',3,2,NULL),('F6',4,2,NULL),('F6',5,2,NULL),('F6',6,2,NULL),('F6',7,2,NULL),('F6',8,2,NULL),('F6',9,2,NULL),('F6',10,2,NULL),('F6',11,2,NULL),('F6',12,2,NULL),('F6',13,2,NULL),('F6',14,2,NULL),('F6',15,2,NULL),('F6',16,2,NULL),('F7',1,2,NULL),('F7',2,2,NULL),('F7',3,2,NULL),('F7',4,2,NULL),('F7',5,2,NULL),('F7',6,2,NULL),('F7',7,2,NULL),('F7',8,2,NULL),('F7',9,2,NULL),('F7',10,2,NULL),('F7',11,2,NULL),('F7',12,2,NULL),('F7',13,2,NULL),('F7',14,2,NULL),('F7',15,2,NULL),('F7',16,2,NULL),('F8',1,2,NULL),('F8',2,2,NULL),('F8',3,2,NULL),('F8',4,2,NULL),('F8',5,2,NULL),('F8',6,2,NULL),('F8',7,2,NULL),('F8',8,2,NULL),('F8',9,2,NULL),('F8',10,2,NULL),('F8',11,2,NULL),('F8',12,2,NULL),('F8',13,2,NULL),('F8',14,2,NULL),('F8',15,2,NULL),('F8',16,2,NULL),('F9',1,2,NULL),('F9',2,2,NULL),('F9',3,2,NULL),('F9',4,2,NULL),('F9',5,2,NULL),('F9',6,2,NULL),('F9',7,2,NULL),('F9',8,2,NULL),('F9',9,2,NULL),('F9',10,2,NULL),('F9',11,2,NULL),('F9',12,2,NULL),('F9',13,2,NULL),('F9',14,2,NULL),('F9',15,2,NULL),('F9',16,2,NULL),('G0',1,3,NULL),('G0',2,3,NULL),('G0',3,3,NULL),('G0',4,3,'yash'),('G0',5,3,NULL),('G0',6,3,NULL),('G0',7,3,NULL),('G0',8,3,NULL),('G0',9,3,NULL),('G0',10,3,NULL),('G0',11,3,NULL),('G0',12,3,NULL),('G0',13,3,NULL),('G0',14,3,NULL),('G0',15,3,NULL),('G0',16,3,NULL),('G1',1,3,NULL),('G1',2,3,NULL),('G1',3,3,NULL),('G1',4,3,NULL),('G1',5,3,NULL),('G1',6,3,NULL),('G1',7,3,NULL),('G1',8,3,NULL),('G1',9,3,NULL),('G1',10,3,NULL),('G1',11,3,NULL),('G1',12,3,NULL),('G1',13,3,NULL),('G1',14,3,NULL),('G1',15,3,NULL),('G1',16,3,NULL),('G2',1,3,NULL),('G2',2,3,'yash'),('G2',3,3,NULL),('G2',4,3,NULL),('G2',5,3,NULL),('G2',6,3,NULL),('G2',7,3,NULL),('G2',8,3,NULL),('G2',9,3,NULL),('G2',10,3,NULL),('G2',11,3,NULL),('G2',12,3,NULL),('G2',13,3,NULL),('G2',14,3,NULL),('G2',15,3,NULL),('G2',16,3,NULL),('G3',1,3,NULL),('G3',2,3,NULL),('G3',3,3,NULL),('G3',4,3,'yash'),('G3',5,3,NULL),('G3',6,3,NULL),('G3',7,3,NULL),('G3',8,3,NULL),('G3',9,3,NULL),('G3',10,3,NULL),('G3',11,3,NULL),('G3',12,3,NULL),('G3',13,3,NULL),('G3',14,3,NULL),('G3',15,3,NULL),('G3',16,3,NULL),('G4',1,3,NULL),('G4',2,3,NULL),('G4',3,3,NULL),('G4',4,3,NULL),('G4',5,3,NULL),('G4',6,3,NULL),('G4',7,3,NULL),('G4',8,3,NULL),('G4',9,3,NULL),('G4',10,3,NULL),('G4',11,3,NULL),('G4',12,3,NULL),('G4',13,3,NULL),('G4',14,3,NULL),('G4',15,3,NULL),('G4',16,3,NULL),('G5',1,3,NULL),('G5',2,3,NULL),('G5',3,3,NULL),('G5',4,3,NULL),('G5',5,3,NULL),('G5',6,3,NULL),('G5',7,3,NULL),('G5',8,3,NULL),('G5',9,3,NULL),('G5',10,3,NULL),('G5',11,3,NULL),('G5',12,3,NULL),('G5',13,3,NULL),('G5',14,3,NULL),('G5',15,3,NULL),('G5',16,3,NULL),('G6',1,3,NULL),('G6',2,3,'yash'),('G6',3,3,NULL),('G6',4,3,NULL),('G6',5,3,NULL),('G6',6,3,NULL),('G6',7,3,NULL),('G6',8,3,NULL),('G6',9,3,NULL),('G6',10,3,NULL),('G6',11,3,NULL),('G6',12,3,NULL),('G6',13,3,NULL),('G6',14,3,NULL),('G6',15,3,NULL),('G6',16,3,NULL),('G7',1,3,NULL),('G7',2,3,NULL),('G7',3,3,NULL),('G7',4,3,NULL),('G7',5,3,NULL),('G7',6,3,NULL),('G7',7,3,NULL),('G7',8,3,NULL),('G7',9,3,NULL),('G7',10,3,NULL),('G7',11,3,NULL),('G7',12,3,NULL),('G7',13,3,NULL),('G7',14,3,NULL),('G7',15,3,NULL),('G7',16,3,NULL),('G8',1,3,NULL),('G8',2,3,NULL),('G8',3,3,NULL),('G8',4,3,NULL),('G8',5,3,NULL),('G8',6,3,NULL),('G8',7,3,NULL),('G8',8,3,NULL),('G8',9,3,NULL),('G8',10,3,NULL),('G8',11,3,NULL),('G8',12,3,NULL),('G8',13,3,NULL),('G8',14,3,NULL),('G8',15,3,NULL),('G8',16,3,NULL),('G9',1,3,'srinag'),('G9',2,3,NULL),('G9',3,3,NULL),('G9',4,3,NULL),('G9',5,3,NULL),('G9',6,3,NULL),('G9',7,3,NULL),('G9',8,3,NULL),('G9',9,3,NULL),('G9',10,3,NULL),('G9',11,3,NULL),('G9',12,3,NULL),('G9',13,3,NULL),('G9',14,3,NULL),('G9',15,3,NULL),('G9',16,3,NULL),('H0',1,3,NULL),('H0',2,3,NULL),('H0',3,3,NULL),('H0',4,3,'yash'),('H0',5,3,NULL),('H0',6,3,NULL),('H0',7,3,NULL),('H0',8,3,NULL),('H0',9,3,NULL),('H0',10,3,NULL),('H0',11,3,NULL),('H0',12,3,NULL),('H0',13,3,NULL),('H0',14,3,NULL),('H0',15,3,NULL),('H0',16,3,NULL),('H1',1,3,NULL),('H1',2,3,NULL),('H1',3,3,NULL),('H1',4,3,NULL),('H1',5,3,NULL),('H1',6,3,NULL),('H1',7,3,NULL),('H1',8,3,NULL),('H1',9,3,NULL),('H1',10,3,NULL),('H1',11,3,NULL),('H1',12,3,NULL),('H1',13,3,NULL),('H1',14,3,NULL),('H1',15,3,NULL),('H1',16,3,NULL),('H2',1,3,NULL),('H2',2,3,NULL),('H2',3,3,NULL),('H2',4,3,NULL),('H2',5,3,NULL),('H2',6,3,NULL),('H2',7,3,NULL),('H2',8,3,NULL),('H2',9,3,NULL),('H2',10,3,NULL),('H2',11,3,NULL),('H2',12,3,NULL),('H2',13,3,NULL),('H2',14,3,NULL),('H2',15,3,NULL),('H2',16,3,NULL),('H3',1,3,NULL),('H3',2,3,NULL),('H3',3,3,NULL),('H3',4,3,NULL),('H3',5,3,NULL),('H3',6,3,NULL),('H3',7,3,NULL),('H3',8,3,NULL),('H3',9,3,NULL),('H3',10,3,NULL),('H3',11,3,NULL),('H3',12,3,NULL),('H3',13,3,NULL),('H3',14,3,NULL),('H3',15,3,NULL),('H3',16,3,NULL),('H4',1,3,NULL),('H4',2,3,NULL),('H4',3,3,NULL),('H4',4,3,NULL),('H4',5,3,NULL),('H4',6,3,NULL),('H4',7,3,NULL),('H4',8,3,NULL),('H4',9,3,NULL),('H4',10,3,NULL),('H4',11,3,NULL),('H4',12,3,NULL),('H4',13,3,NULL),('H4',14,3,NULL),('H4',15,3,NULL),('H4',16,3,NULL),('H5',1,3,NULL),('H5',2,3,NULL),('H5',3,3,NULL),('H5',4,3,NULL),('H5',5,3,NULL),('H5',6,3,NULL),('H5',7,3,NULL),('H5',8,3,NULL),('H5',9,3,NULL),('H5',10,3,NULL),('H5',11,3,NULL),('H5',12,3,NULL),('H5',13,3,NULL),('H5',14,3,NULL),('H5',15,3,NULL),('H5',16,3,NULL),('H6',1,3,NULL),('H6',2,3,NULL),('H6',3,3,NULL),('H6',4,3,NULL),('H6',5,3,NULL),('H6',6,3,NULL),('H6',7,3,NULL),('H6',8,3,NULL),('H6',9,3,NULL),('H6',10,3,NULL),('H6',11,3,NULL),('H6',12,3,NULL),('H6',13,3,NULL),('H6',14,3,NULL),('H6',15,3,NULL),('H6',16,3,NULL),('H7',1,3,NULL),('H7',2,3,NULL),('H7',3,3,NULL),('H7',4,3,NULL),('H7',5,3,NULL),('H7',6,3,NULL),('H7',7,3,NULL),('H7',8,3,NULL),('H7',9,3,NULL),('H7',10,3,NULL),('H7',11,3,NULL),('H7',12,3,NULL),('H7',13,3,NULL),('H7',14,3,NULL),('H7',15,3,NULL),('H7',16,3,NULL),('H8',1,3,NULL),('H8',2,3,NULL),('H8',3,3,NULL),('H8',4,3,NULL),('H8',5,3,NULL),('H8',6,3,NULL),('H8',7,3,NULL),('H8',8,3,NULL),('H8',9,3,NULL),('H8',10,3,NULL),('H8',11,3,NULL),('H8',12,3,NULL),('H8',13,3,NULL),('H8',14,3,NULL),('H8',15,3,NULL),('H8',16,3,NULL),('H9',1,3,NULL),('H9',2,3,NULL),('H9',3,3,NULL),('H9',4,3,NULL),('H9',5,3,NULL),('H9',6,3,NULL),('H9',7,3,NULL),('H9',8,3,NULL),('H9',9,3,NULL),('H9',10,3,NULL),('H9',11,3,NULL),('H9',12,3,NULL),('H9',13,3,NULL),('H9',14,3,NULL),('H9',15,3,NULL),('H9',16,3,NULL),('I0',1,4,NULL),('I0',2,4,NULL),('I0',3,4,NULL),('I0',4,4,NULL),('I0',5,4,NULL),('I0',6,4,NULL),('I0',7,4,NULL),('I0',8,4,NULL),('I0',9,4,NULL),('I0',10,4,NULL),('I0',11,4,NULL),('I0',12,4,NULL),('I0',13,4,NULL),('I0',14,4,NULL),('I0',15,4,NULL),('I0',16,4,NULL),('I1',1,4,NULL),('I1',2,4,NULL),('I1',3,4,NULL),('I1',4,4,NULL),('I1',5,4,NULL),('I1',6,4,NULL),('I1',7,4,NULL),('I1',8,4,NULL),('I1',9,4,NULL),('I1',10,4,NULL),('I1',11,4,NULL),('I1',12,4,NULL),('I1',13,4,NULL),('I1',14,4,NULL),('I1',15,4,NULL),('I1',16,4,NULL),('I2',1,4,NULL),('I2',2,4,NULL),('I2',3,4,NULL),('I2',4,4,NULL),('I2',5,4,NULL),('I2',6,4,NULL),('I2',7,4,NULL),('I2',8,4,NULL),('I2',9,4,NULL),('I2',10,4,NULL),('I2',11,4,NULL),('I2',12,4,NULL),('I2',13,4,NULL),('I2',14,4,NULL),('I2',15,4,NULL),('I2',16,4,NULL),('I3',1,4,NULL),('I3',2,4,NULL),('I3',3,4,NULL),('I3',4,4,NULL),('I3',5,4,NULL),('I3',6,4,NULL),('I3',7,4,NULL),('I3',8,4,NULL),('I3',9,4,NULL),('I3',10,4,NULL),('I3',11,4,NULL),('I3',12,4,NULL),('I3',13,4,NULL),('I3',14,4,NULL),('I3',15,4,NULL),('I3',16,4,NULL),('I4',1,4,NULL),('I4',2,4,NULL),('I4',3,4,NULL),('I4',4,4,NULL),('I4',5,4,NULL),('I4',6,4,NULL),('I4',7,4,NULL),('I4',8,4,NULL),('I4',9,4,NULL),('I4',10,4,NULL),('I4',11,4,NULL),('I4',12,4,NULL),('I4',13,4,NULL),('I4',14,4,NULL),('I4',15,4,NULL),('I4',16,4,NULL),('I5',1,4,NULL),('I5',2,4,NULL),('I5',3,4,NULL),('I5',4,4,'yash'),('I5',5,4,NULL),('I5',6,4,NULL),('I5',7,4,NULL),('I5',8,4,NULL),('I5',9,4,NULL),('I5',10,4,NULL),('I5',11,4,NULL),('I5',12,4,NULL),('I5',13,4,NULL),('I5',14,4,NULL),('I5',15,4,NULL),('I5',16,4,NULL),('I6',1,4,NULL),('I6',2,4,'yash'),('I6',3,4,NULL),('I6',4,4,NULL),('I6',5,4,NULL),('I6',6,4,NULL),('I6',7,4,NULL),('I6',8,4,NULL),('I6',9,4,NULL),('I6',10,4,NULL),('I6',11,4,NULL),('I6',12,4,NULL),('I6',13,4,NULL),('I6',14,4,NULL),('I6',15,4,NULL),('I6',16,4,NULL),('I7',1,4,NULL),('I7',2,4,NULL),('I7',3,4,NULL),('I7',4,4,NULL),('I7',5,4,NULL),('I7',6,4,NULL),('I7',7,4,NULL),('I7',8,4,NULL),('I7',9,4,NULL),('I7',10,4,NULL),('I7',11,4,NULL),('I7',12,4,NULL),('I7',13,4,NULL),('I7',14,4,NULL),('I7',15,4,NULL),('I7',16,4,NULL),('I8',1,4,NULL),('I8',2,4,NULL),('I8',3,4,NULL),('I8',4,4,NULL),('I8',5,4,NULL),('I8',6,4,NULL),('I8',7,4,NULL),('I8',8,4,NULL),('I8',9,4,NULL),('I8',10,4,NULL),('I8',11,4,NULL),('I8',12,4,NULL),('I8',13,4,NULL),('I8',14,4,NULL),('I8',15,4,NULL),('I8',16,4,NULL),('I9',1,4,NULL),('I9',2,4,NULL),('I9',3,4,NULL),('I9',4,4,NULL),('I9',5,4,NULL),('I9',6,4,NULL),('I9',7,4,NULL),('I9',8,4,NULL),('I9',9,4,NULL),('I9',10,4,NULL),('I9',11,4,NULL),('I9',12,4,NULL),('I9',13,4,NULL),('I9',14,4,NULL),('I9',15,4,NULL),('I9',16,4,NULL),('J0',1,4,NULL),('J0',2,4,NULL),('J0',3,4,NULL),('J0',4,4,NULL),('J0',5,4,NULL),('J0',6,4,NULL),('J0',7,4,NULL),('J0',8,4,NULL),('J0',9,4,NULL),('J0',10,4,NULL),('J0',11,4,NULL),('J0',12,4,NULL),('J0',13,4,NULL),('J0',14,4,NULL),('J0',15,4,NULL),('J0',16,4,NULL),('J1',1,4,NULL),('J1',2,4,NULL),('J1',3,4,NULL),('J1',4,4,NULL),('J1',5,4,NULL),('J1',6,4,NULL),('J1',7,4,NULL),('J1',8,4,NULL),('J1',9,4,NULL),('J1',10,4,NULL),('J1',11,4,NULL),('J1',12,4,NULL),('J1',13,4,NULL),('J1',14,4,NULL),('J1',15,4,NULL),('J1',16,4,NULL),('J2',1,4,NULL),('J2',2,4,'yash'),('J2',3,4,NULL),('J2',4,4,NULL),('J2',5,4,NULL),('J2',6,4,NULL),('J2',7,4,NULL),('J2',8,4,NULL),('J2',9,4,NULL),('J2',10,4,NULL),('J2',11,4,NULL),('J2',12,4,NULL),('J2',13,4,NULL),('J2',14,4,NULL),('J2',15,4,NULL),('J2',16,4,NULL),('J3',1,4,NULL),('J3',2,4,NULL),('J3',3,4,NULL),('J3',4,4,NULL),('J3',5,4,NULL),('J3',6,4,NULL),('J3',7,4,NULL),('J3',8,4,NULL),('J3',9,4,NULL),('J3',10,4,NULL),('J3',11,4,NULL),('J3',12,4,NULL),('J3',13,4,NULL),('J3',14,4,NULL),('J3',15,4,NULL),('J3',16,4,NULL),('J4',1,4,NULL),('J4',2,4,NULL),('J4',3,4,NULL),('J4',4,4,NULL),('J4',5,4,NULL),('J4',6,4,NULL),('J4',7,4,NULL),('J4',8,4,NULL),('J4',9,4,NULL),('J4',10,4,NULL),('J4',11,4,NULL),('J4',12,4,NULL),('J4',13,4,NULL),('J4',14,4,NULL),('J4',15,4,NULL),('J4',16,4,NULL),('J5',1,4,NULL),('J5',2,4,NULL),('J5',3,4,NULL),('J5',4,4,NULL),('J5',5,4,NULL),('J5',6,4,NULL),('J5',7,4,NULL),('J5',8,4,NULL),('J5',9,4,NULL),('J5',10,4,NULL),('J5',11,4,NULL),('J5',12,4,NULL),('J5',13,4,NULL),('J5',14,4,NULL),('J5',15,4,NULL),('J5',16,4,NULL),('J6',1,4,NULL),('J6',2,4,NULL),('J6',3,4,NULL),('J6',4,4,NULL),('J6',5,4,NULL),('J6',6,4,NULL),('J6',7,4,NULL),('J6',8,4,NULL),('J6',9,4,NULL),('J6',10,4,NULL),('J6',11,4,NULL),('J6',12,4,NULL),('J6',13,4,NULL),('J6',14,4,NULL),('J6',15,4,NULL),('J6',16,4,NULL),('J7',1,4,NULL),('J7',2,4,NULL),('J7',3,4,NULL),('J7',4,4,NULL),('J7',5,4,NULL),('J7',6,4,NULL),('J7',7,4,NULL),('J7',8,4,NULL),('J7',9,4,NULL),('J7',10,4,NULL),('J7',11,4,NULL),('J7',12,4,NULL),('J7',13,4,NULL),('J7',14,4,NULL),('J7',15,4,NULL),('J7',16,4,NULL),('J8',1,4,NULL),('J8',2,4,NULL),('J8',3,4,NULL),('J8',4,4,NULL),('J8',5,4,NULL),('J8',6,4,NULL),('J8',7,4,NULL),('J8',8,4,NULL),('J8',9,4,NULL),('J8',10,4,NULL),('J8',11,4,NULL),('J8',12,4,NULL),('J8',13,4,NULL),('J8',14,4,NULL),('J8',15,4,NULL),('J8',16,4,NULL),('J9',1,4,NULL),('J9',2,4,NULL),('J9',3,4,NULL),('J9',4,4,NULL),('J9',5,4,NULL),('J9',6,4,NULL),('J9',7,4,NULL),('J9',8,4,NULL),('J9',9,4,NULL),('J9',10,4,NULL),('J9',11,4,NULL),('J9',12,4,NULL),('J9',13,4,NULL),('J9',14,4,NULL),('J9',15,4,NULL),('J9',16,4,NULL);
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
INSERT INTO `users` VALUES ('a','b',1,'a@gmail.com','987665432'),('bharath','pass',1,'b@gmail.com','9987654321'),('bubbles','password',1,'as@gmail.com','1234565789'),('dodeja','pass',1,'d@g.com','1234566789'),('jungle','pass',1,'jungle@gmail.com','9874561232'),('l','pass',1,'l@l.com','1234556789'),('sanjay','pass',1,'sanjay@gmail.com','1223456789'),('shreyas','pass',1,'shreyas@yahoo.com','1234566779'),('skitty','pass',1,'s@g.com','1234567896'),('spandana','pass',1,'span@gmail.com','3421567890'),('srinag','pass',1,'srinagrao2007@gmail.com','9876543210'),('yash','pass',1,'y@gmail.com','9876543211');
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

-- Dump completed on 2018-11-05 21:02:49
