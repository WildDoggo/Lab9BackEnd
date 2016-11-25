-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: kaleidoscope
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Current Database: `kaleidoscope`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kaleidoscope` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kaleidoscope`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('d','Drinks','Purees made from the finest of Venusian insects, government-inspected.','catd.png'),('m','Mains','Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium \"meat\".','catm.png'),('s','Sides','Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.','cats.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('c93393a30e1b2548319c2545d2671b6f51147461','127.0.0.1',1478828747,'__ci_last_regenerate|i:1478828747;userrole|s:5:\"admin\";'),('047e876f981d0123f77a5478ce675de2e891511a','127.0.0.1',1478829056,'__ci_last_regenerate|i:1478829056;userrole|s:5:\"admin\";'),('8a0fa0ef91b1f059da24a15a9cfea2c58651c656','127.0.0.1',1478829423,'__ci_last_regenerate|i:1478829423;userrole|s:5:\"admin\";'),('e4dc4eb495e4f950e2fc734ffe02222b5107fcb2','127.0.0.1',1478829920,'__ci_last_regenerate|i:1478829920;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Cheese\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"s\";}'),('e1118fa1f32d61a4b4e77113549d7788d9d0de22','127.0.0.1',1478830269,'__ci_last_regenerate|i:1478830269;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Cheese\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"s\";}'),('f64feedfe5d509cbec50da04f343f682178ea0e6','127.0.0.1',1478830626,'__ci_last_regenerate|i:1478830626;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Cheese\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"s\";}'),('bc8fe383e43df906348995189cf517db6eaf5dff','127.0.0.1',1478830935,'__ci_last_regenerate|i:1478830935;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('307ee1bb4a0bccaf71e816d4e8644d437084a216','127.0.0.1',1478831271,'__ci_last_regenerate|i:1478831271;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('0c835ba0a65ec87ff2cc0a18a183377cdcb029c3','127.0.0.1',1478832236,'__ci_last_regenerate|i:1478832236;userrole|s:4:\"user\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('f0fa4c4b6cce58c6388f9726ef9de175446b96db','127.0.0.1',1478832567,'__ci_last_regenerate|i:1478832567;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('d838881924fd9d116066e8d068d8e48fc860437b','127.0.0.1',1478833028,'__ci_last_regenerate|i:1478833028;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('c48a468282e4307455d9ece394cef7d25b0824cf','127.0.0.1',1478833331,'__ci_last_regenerate|i:1478833331;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('f77a73dd353b6d4ca4324629d0a8df129c8f92b2','127.0.0.1',1478833636,'__ci_last_regenerate|i:1478833636;userrole|s:5:\"admin\";key|s:1:\"2\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:6:\"Turkey\";s:11:\"description\";s:58:\"Roasted, succulent, stuffed, lovingly sliced turkey breast\";s:5:\"price\";s:4:\"5.95\";s:7:\"picture\";s:5:\"2.png\";s:8:\"category\";s:1:\"m\";}'),('e90c8125b27056889b7d240688e2a66f772ee589','127.0.0.1',1478834150,'__ci_last_regenerate|i:1478834150;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:6:\"Cheese\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('23e432344ac60174ae2cdd4ce05a83b9326fc5c0','127.0.0.1',1478834453,'__ci_last_regenerate|i:1478834453;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:16:\"Cheesey Chickens\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('8a8e2daef81620df740e131ec11540a73966927d','127.0.0.1',1478834863,'__ci_last_regenerate|i:1478834863;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:16:\"Cheesey Chickens\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('10df816ce9bc2e16bd70a91eda08d1ea023fe7b2','127.0.0.1',1478835165,'__ci_last_regenerate|i:1478835165;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:16:\"Cheesey Chickens\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('befed7a9767ec4885f46805c272f33cc6b99c493','127.0.0.1',1478835570,'__ci_last_regenerate|i:1478835570;userrole|s:5:\"admin\";'),('2550068a6e89b204e55a080c5080f59bde6375c9','127.0.0.1',1478835872,'__ci_last_regenerate|i:1478835872;userrole|s:5:\"admin\";'),('1f5682998ea399ad40a814a322fb579fbc72b3cc','127.0.0.1',1478836207,'__ci_last_regenerate|i:1478836207;userrole|s:5:\"admin\";'),('257a540f7a7319cf522730a5b9048ff0b3bf8c16','127.0.0.1',1478836901,'__ci_last_regenerate|i:1478836901;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('2ad943470c342cfbf323fcc850cb478df5e7e24e','127.0.0.1',1478837471,'__ci_last_regenerate|i:1478837471;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('7b3aeafdc3d56c67cfae9af950ec4cf84de19f5c','127.0.0.1',1478837795,'__ci_last_regenerate|i:1478837795;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('4fe87b4f12c27b9ffae1dab431c50b0e76d5a52d','127.0.0.1',1478838097,'__ci_last_regenerate|i:1478838097;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('55c7127cd062e3ebffbb6ada71070a784eabb514','127.0.0.1',1478838398,'__ci_last_regenerate|i:1478838398;userrole|s:5:\"admin\";key|s:3:\"123\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"123\";s:4:\"name\";s:8:\"afewfwef\";s:11:\"description\";s:9:\"fawefwaef\";s:5:\"price\";s:6:\"123.32\";s:7:\"picture\";s:8:\"adsfasdf\";s:8:\"category\";s:1:\"0\";}'),('e5c9953b114821fcf20830771c871f03636ba3d0','127.0.0.1',1478838724,'__ci_last_regenerate|i:1478838724;userrole|s:5:\"admin\";key|s:3:\"222\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"222\";s:4:\"name\";s:3:\"adf\";s:11:\"description\";s:8:\"asdfadsf\";s:5:\"price\";s:5:\"23.23\";s:7:\"picture\";s:0:\"\";s:8:\"category\";s:1:\"0\";}'),('b66ec6b19075e1fcc36f23cc8fd36f751959eeb2','127.0.0.1',1478839280,'__ci_last_regenerate|i:1478839280;userrole|s:5:\"admin\";key|s:3:\"222\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"222\";s:4:\"name\";s:3:\"adf\";s:11:\"description\";s:8:\"asdfadsf\";s:5:\"price\";s:5:\"23.23\";s:7:\"picture\";s:0:\"\";s:8:\"category\";s:1:\"0\";}'),('551a6ca654add0ef9f68c208750e165276ecfc6f','127.0.0.1',1478839583,'__ci_last_regenerate|i:1478839583;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:5:\"1.png\";s:8:\"category\";s:1:\"0\";}'),('197bd03aa3ee0af579e9b5cfecff7ef6cce58ada','127.0.0.1',1478840003,'__ci_last_regenerate|i:1478840003;userrole|s:5:\"admin\";key|s:3:\"999\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"999\";s:4:\"name\";s:4:\"asdf\";s:11:\"description\";s:4:\"asfd\";s:5:\"price\";s:5:\"23.32\";s:7:\"picture\";s:9:\"Small.gif\";s:8:\"category\";s:1:\"1\";}'),('37b89639eec868ce1f652a3c2c7de906e056394a','127.0.0.1',1478840371,'__ci_last_regenerate|i:1478840371;userrole|s:5:\"admin\";key|s:2:\"25\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:6:\"Burger\";s:11:\"description\";s:173:\"Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.\";s:5:\"price\";s:4:\"9.99\";s:7:\"picture\";s:10:\"burger.png\";s:8:\"category\";s:1:\"m\";}'),('1631afde015f4dc358384ab961a2d9e71ec33e7a','127.0.0.1',1478841396,'__ci_last_regenerate|i:1478841396;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:31:\"Small-world-network-example.png\";s:8:\"category\";s:1:\"0\";}'),('af9b489421973457e8c7c18e215fa8b811e79fcb','127.0.0.1',1478841501,'__ci_last_regenerate|i:1478841396;userrole|s:5:\"admin\";key|s:1:\"1\";record|O:8:\"stdClass\":6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:22:\"Cheesey Chicken Chicks\";s:11:\"description\";s:98:\"Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.\";s:5:\"price\";s:4:\"2.95\";s:7:\"picture\";s:31:\"Small-world-network-example.png\";s:8:\"category\";s:1:\"0\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Cheese','Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.',2.95,'1.png','s'),
(2,'Turkey','Roasted, succulent, stuffed, lovingly sliced turkey breast',5.95,'2.png','m'),
(6,'Donut','Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust',1.25,'6.png','s'),
(10,'Bubbly','1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.',14.50,'10.png','d'),
(999,'The God','Jason Cheung',666.66,'Small.gif','1'),
(11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
(8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
(25,'Burger','Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.',9.99,'burger.png','m'),
(21,'Coffee','A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don\'t want to know where they came from!',2.95,'coffee.png','d');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL,
  PRIMARY KEY (`order`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10 21:27:39
