-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `name_book` varchar(100) NOT NULL,
  `id_publ` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `pages` int(4) NOT NULL,
  `price` int(4) NOT NULL,
  `dat` int(4) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Ajax в действии',4,1,'Дейв Крейн,Эрик Паскарелло,Даррен Джеймс,А.Назаренко',640,200,2008,'ajax.jpg'),(2,'Head Rush Ajax',9,7,'Brett McLaughlin',448,195,2008,'head_rush_ajax.jpg'),(3,'Head First Java',9,7,'Kathy Sierra,Beart Bates',720,210,2017,'head_first_java_.jpg'),(4,'Practical Microsoft Visual Studio',10,1,'Peter Ritchie',515,110,2016,'visual_studio.jpg'),(5,'Назад к тебе',1,2,'Sara Djio',320,25,2018,'nazad_k_tebe.jpg'),(6,'Пророчество Паладина',1,2,'Mark Frost',384,37,2018,'prorochestvo_polodina.jpg'),(7,'Лейна.Вернуться домой',1,2,'Mark Frost',384,20,2018,'leyna.jpg'),(8,'ЕГЭ.Физика',3,3,'Shaparenko',215,15,2015,'fizika.jpg'),(9,'ЭГЕ.Литература',3,3,'Nestereva',304,20,2017,'literatura.jpg'),(10,'ЭГЕ.Математика',3,3,'Rogagina',368,25,2017,'matematika.jpg'),(11,'China Language',2,4,'Poliglot',320,38,2017,'china.jpg'),(12,'English Grammer',2,4,'Tatiyana Komyanova',432,15,2016,'english_grammer.jpg'),(13,'Spanish Language',2,4,'Poliglot',256,27,2018,'spanish.jpg'),(14,'연세한국어 활용연습 3-1',8,5,'연세대',320,15,2013,'연세활용 3-1.jpg'),(15,'연세 한국어 5-1',8,5,'연세대',225,20,2013,'연세한국어 5-1.jpg'),(16,'연세 한국어 5-2',8,5,'연세대',240,20,2013,'연세한국어 5-2.jpg'),(17,'현장적용 운동생리학',7,6,'Bob Murray, W. Larry Kenney',200,22,2017,'현장적용.jpg'),(18,'필라테스 바이블',7,6,'대한필라테스연맹',488,35,2015,'pilates.jpg'),(19,'모두를 위한 체육 가르치기 3판',7,6,'George Graham',280,20,2014,'모두를 위한.jpg'),(20,'Chanel: Collections and Creations',10,8,'Danièle Bott',139,36,2007,'chanel.jpg'),(21,'Alexander McQueen: Savage Beauty',10,8,' Andrew Bolton',240,35,2011,'McQueen.jpg'),(22,'Tom Ford',10,8,'Tom Ford, Bridget Foley',414,75,2008,'tomford.jpg'),(23,'The Soul of America',11,9,'Jon Meacham',372,14,2018,'america.jpg'),(24,'The Return of George Washington: Uniting the States, 1783-1789',11,9,'Edward J.Larson',395,15,2014,'washington.jpg'),(25,'Diana:Her True Story-in Her Own Words',11,9,'Andrew Morton',372,14,2018,'diana.jpg'),(26,'Five Ingredient Cookbook',5,10,'Hannie P.Scott',395,15,2014,'5ingredient.jpg'),(27,'Quick and Easy Recipes:30 MINUTE MEALS',5,10,'Hannie P.Scott',51,7,2015,'30minute.jpg'),(28,'The Science of Cooking:Every Question Answered to Perfect Your Cooking',5,10,'Dr.Stuart Farrimond',256,20,2014,'science_of_cooking.jpg'),(29,'Computer Hacking Beginners Guide',4,1,'Alan T.Norman',167,8,2016,'hacking.jpg'),(30,'Coding All-in-One For Dummies',9,7,'Nikhil Abraham',792,23,2017,'coding.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 16:42:42
