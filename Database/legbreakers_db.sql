-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: lb_db
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `movies_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (0,'Nick','Fouch','Really cool dude.','movies_nick_fouch_in','../Images/act_img/fouch.jpg'),(1,'John','Johnson','Intense action man.','movies_john_johnson_in','../Images/act_img/johnson.jpg'),(2,'William','Williamson','Method actor.','movies_william_williamson_in','../Images/act_img/williamson.jpg'),(3,'Tom','Hanks','Unique style.','movies_tom_hanks_in','../Images/act_img/hanks.jpg'),(4,'Tom','Cruise','Funny characters','movies_tom_cruise_in','../Images/act_img/cruise.jpg'),(5,'Gary','Oldman','Very old','movies_gary_oldman_in','../Images/act_img/oldman.jpg');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_genericmovie`
--

DROP TABLE IF EXISTS `actors_in_genericmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_in_genericmovie` (
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_genericmovie`
--

LOCK TABLES `actors_in_genericmovie` WRITE;
/*!40000 ALTER TABLE `actors_in_genericmovie` DISABLE KEYS */;
INSERT INTO `actors_in_genericmovie` VALUES (2),(3);
/*!40000 ALTER TABLE `actors_in_genericmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_jaws`
--

DROP TABLE IF EXISTS `actors_in_jaws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_in_jaws` (
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_jaws`
--

LOCK TABLES `actors_in_jaws` WRITE;
/*!40000 ALTER TABLE `actors_in_jaws` DISABLE KEYS */;
INSERT INTO `actors_in_jaws` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `actors_in_jaws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_justiceleague`
--

DROP TABLE IF EXISTS `actors_in_justiceleague`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_in_justiceleague` (
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_justiceleague`
--

LOCK TABLES `actors_in_justiceleague` WRITE;
/*!40000 ALTER TABLE `actors_in_justiceleague` DISABLE KEYS */;
INSERT INTO `actors_in_justiceleague` VALUES (1),(2);
/*!40000 ALTER TABLE `actors_in_justiceleague` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_pineapple_express`
--

DROP TABLE IF EXISTS `actors_in_pineapple_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_in_pineapple_express` (
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_pineapple_express`
--

LOCK TABLES `actors_in_pineapple_express` WRITE;
/*!40000 ALTER TABLE `actors_in_pineapple_express` DISABLE KEYS */;
INSERT INTO `actors_in_pineapple_express` VALUES (4),(5);
/*!40000 ALTER TABLE `actors_in_pineapple_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_star_wars_1`
--

DROP TABLE IF EXISTS `actors_in_star_wars_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_in_star_wars_1` (
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_star_wars_1`
--

LOCK TABLES `actors_in_star_wars_1` WRITE;
/*!40000 ALTER TABLE `actors_in_star_wars_1` DISABLE KEYS */;
INSERT INTO `actors_in_star_wars_1` VALUES (4),(3);
/*!40000 ALTER TABLE `actors_in_star_wars_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critics`
--

DROP TABLE IF EXISTS `critics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `critics` (
  `critic_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critics`
--

LOCK TABLES `critics` WRITE;
/*!40000 ALTER TABLE `critics` DISABLE KEYS */;
INSERT INTO `critics` VALUES (1,'Larry','Thomas','smart and observing'),(2,'Pope','Francis','likes religious movies'),(3,'Movie','Critic','Very critical'),(4,'First','Last','Generic description of a movie critic'),(5,'Lawrence','Whitworth','Likes every movie ever');
/*!40000 ALTER TABLE `critics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `director_id` int(7) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `movies_directed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Steven','Spielberg','Visionary','movies_steven_spielberg_made','../Images/dir_img/spielberg.jpg'),(2,'Zack','Snyder','Slow-motion','movies_zack_snyder_made','../Images/dir_img/snyder.jpg'),(3,'John','Cena','Chill Dude','movies_john_cena_made','../Images/dir_img/cena.jpg'),(4,'Goof','Ba\'al','Silly vision','movies_goof_baal_made','../Images/dir_img/ball.jpg'),(5,'Clark','Ent','Killer Releases You Probably Turn On Nightly Inquiring for Trivial Entertainment','movies_clark_ent_made','../Images/dir_img/kent.jpg'),(6,'Rob','Bor','Known to make wallets lighter with his films.','movies_rob_bor_made','../Images/dir_img/bor.jpg');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_in_genericmovie`
--

DROP TABLE IF EXISTS `directors_in_genericmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_in_genericmovie` (
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_in_genericmovie`
--

LOCK TABLES `directors_in_genericmovie` WRITE;
/*!40000 ALTER TABLE `directors_in_genericmovie` DISABLE KEYS */;
INSERT INTO `directors_in_genericmovie` VALUES (3);
/*!40000 ALTER TABLE `directors_in_genericmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_in_jaws`
--

DROP TABLE IF EXISTS `directors_in_jaws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_in_jaws` (
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_in_jaws`
--

LOCK TABLES `directors_in_jaws` WRITE;
/*!40000 ALTER TABLE `directors_in_jaws` DISABLE KEYS */;
INSERT INTO `directors_in_jaws` VALUES (1),(2);
/*!40000 ALTER TABLE `directors_in_jaws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_in_justice_league`
--

DROP TABLE IF EXISTS `directors_in_justice_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_in_justice_league` (
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_in_justice_league`
--

LOCK TABLES `directors_in_justice_league` WRITE;
/*!40000 ALTER TABLE `directors_in_justice_league` DISABLE KEYS */;
INSERT INTO `directors_in_justice_league` VALUES (5),(2);
/*!40000 ALTER TABLE `directors_in_justice_league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_in_pineapple_express`
--

DROP TABLE IF EXISTS `directors_in_pineapple_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_in_pineapple_express` (
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_in_pineapple_express`
--

LOCK TABLES `directors_in_pineapple_express` WRITE;
/*!40000 ALTER TABLE `directors_in_pineapple_express` DISABLE KEYS */;
INSERT INTO `directors_in_pineapple_express` VALUES (3),(4);
/*!40000 ALTER TABLE `directors_in_pineapple_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_in_star_wars_1`
--

DROP TABLE IF EXISTS `directors_in_star_wars_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_in_star_wars_1` (
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_in_star_wars_1`
--

LOCK TABLES `directors_in_star_wars_1` WRITE;
/*!40000 ALTER TABLE `directors_in_star_wars_1` DISABLE KEYS */;
INSERT INTO `directors_in_star_wars_1` VALUES (1),(6),(3);
/*!40000 ALTER TABLE `directors_in_star_wars_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `runtime` int(11) NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `releasedate` date NOT NULL,
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_director` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Jaws','PG13',130,'Suspense','1975-06-20','actors_in_jaws','directors_in_jaws','../Images/jaws.jpg'),(2,'Pineapple Express','R',117,'Comedy','2008-08-06','actors_in_pineapple_express','directors_in_pineapple_express','../Images/pineappleexpress.jpg'),(3,'Generic Movie','G',180,'Comedy','2017-04-05','actors_in_genericmovie','directors_in_genericmovie','../Images/genericmovie.jpg'),(4,'Star Wars: Episode I - The Phantom Menace','PG',136,'Science Fiction','1999-01-01','actors_in_star_wars_1','directors_in_star_wars_1','../Images/starwars_episode1.jpg'),(5,'Justice League','PG13',119,'Science Fiction','2017-11-17','actors_in_justiceleague','directors_in_justice_league','../Images/justiceleague.jpg');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_clark_ent_made`
--

DROP TABLE IF EXISTS `movies_clark_ent_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_clark_ent_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_clark_ent_made`
--

LOCK TABLES `movies_clark_ent_made` WRITE;
/*!40000 ALTER TABLE `movies_clark_ent_made` DISABLE KEYS */;
INSERT INTO `movies_clark_ent_made` VALUES (3),(5);
/*!40000 ALTER TABLE `movies_clark_ent_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_gary_oldman_in`
--

DROP TABLE IF EXISTS `movies_gary_oldman_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_gary_oldman_in` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_gary_oldman_in`
--

LOCK TABLES `movies_gary_oldman_in` WRITE;
/*!40000 ALTER TABLE `movies_gary_oldman_in` DISABLE KEYS */;
INSERT INTO `movies_gary_oldman_in` VALUES (1),(2);
/*!40000 ALTER TABLE `movies_gary_oldman_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_goof_baal_made`
--

DROP TABLE IF EXISTS `movies_goof_baal_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_goof_baal_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_goof_baal_made`
--

LOCK TABLES `movies_goof_baal_made` WRITE;
/*!40000 ALTER TABLE `movies_goof_baal_made` DISABLE KEYS */;
INSERT INTO `movies_goof_baal_made` VALUES (2);
/*!40000 ALTER TABLE `movies_goof_baal_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_john_cena_made`
--

DROP TABLE IF EXISTS `movies_john_cena_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_john_cena_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_john_cena_made`
--

LOCK TABLES `movies_john_cena_made` WRITE;
/*!40000 ALTER TABLE `movies_john_cena_made` DISABLE KEYS */;
INSERT INTO `movies_john_cena_made` VALUES (5),(3),(2);
/*!40000 ALTER TABLE `movies_john_cena_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_john_johnson_in`
--

DROP TABLE IF EXISTS `movies_john_johnson_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_john_johnson_in` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_john_johnson_in`
--

LOCK TABLES `movies_john_johnson_in` WRITE;
/*!40000 ALTER TABLE `movies_john_johnson_in` DISABLE KEYS */;
INSERT INTO `movies_john_johnson_in` VALUES (1),(5);
/*!40000 ALTER TABLE `movies_john_johnson_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_nick_fouch_in`
--

DROP TABLE IF EXISTS `movies_nick_fouch_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_nick_fouch_in` (
  `movie_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_nick_fouch_in`
--

LOCK TABLES `movies_nick_fouch_in` WRITE;
/*!40000 ALTER TABLE `movies_nick_fouch_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_nick_fouch_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_rob_bor_made`
--

DROP TABLE IF EXISTS `movies_rob_bor_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_rob_bor_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_rob_bor_made`
--

LOCK TABLES `movies_rob_bor_made` WRITE;
/*!40000 ALTER TABLE `movies_rob_bor_made` DISABLE KEYS */;
INSERT INTO `movies_rob_bor_made` VALUES (4);
/*!40000 ALTER TABLE `movies_rob_bor_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_steven_spielberg_made`
--

DROP TABLE IF EXISTS `movies_steven_spielberg_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_steven_spielberg_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_steven_spielberg_made`
--

LOCK TABLES `movies_steven_spielberg_made` WRITE;
/*!40000 ALTER TABLE `movies_steven_spielberg_made` DISABLE KEYS */;
INSERT INTO `movies_steven_spielberg_made` VALUES (1),(4);
/*!40000 ALTER TABLE `movies_steven_spielberg_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_tom_cruise_in`
--

DROP TABLE IF EXISTS `movies_tom_cruise_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_tom_cruise_in` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_tom_cruise_in`
--

LOCK TABLES `movies_tom_cruise_in` WRITE;
/*!40000 ALTER TABLE `movies_tom_cruise_in` DISABLE KEYS */;
INSERT INTO `movies_tom_cruise_in` VALUES (1),(2),(4);
/*!40000 ALTER TABLE `movies_tom_cruise_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_tom_hanks_in`
--

DROP TABLE IF EXISTS `movies_tom_hanks_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_tom_hanks_in` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_tom_hanks_in`
--

LOCK TABLES `movies_tom_hanks_in` WRITE;
/*!40000 ALTER TABLE `movies_tom_hanks_in` DISABLE KEYS */;
INSERT INTO `movies_tom_hanks_in` VALUES (1),(3),(4);
/*!40000 ALTER TABLE `movies_tom_hanks_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_william_williamson_in`
--

DROP TABLE IF EXISTS `movies_william_williamson_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_william_williamson_in` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_william_williamson_in`
--

LOCK TABLES `movies_william_williamson_in` WRITE;
/*!40000 ALTER TABLE `movies_william_williamson_in` DISABLE KEYS */;
INSERT INTO `movies_william_williamson_in` VALUES (1),(3),(5);
/*!40000 ALTER TABLE `movies_william_williamson_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_zack_snyder_made`
--

DROP TABLE IF EXISTS `movies_zack_snyder_made`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_zack_snyder_made` (
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_zack_snyder_made`
--

LOCK TABLES `movies_zack_snyder_made` WRITE;
/*!40000 ALTER TABLE `movies_zack_snyder_made` DISABLE KEYS */;
INSERT INTO `movies_zack_snyder_made` VALUES (5),(1);
/*!40000 ALTER TABLE `movies_zack_snyder_made` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `critic_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `written_review` varchar(255) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,6,'It was an average movie. It wasn\'t my favorite'),(2,1,2,8,'One of the best movies of the year. I loved it.'),(3,2,2,9,'Great storytelling. Beautiful movie.'),(4,3,3,3,'It made me cry tears of sadness'),(5,4,5,10,'This definitely deserves an Oscar'),(6,1,4,2,'I vomited in my mouth'),(7,4,2,8,'This was my favorite movie in the franchise'),(8,3,2,9,'It made me cry tears of joy.'),(9,4,1,10,'I don\'t know how to live my life any more after witnessing this perfection.'),(10,2,5,1,'I lost a whole lot of brain cells');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-06 16:08:26
