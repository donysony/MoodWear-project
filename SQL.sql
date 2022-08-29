-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_num` int NOT NULL,
  `address_name` varchar(20) NOT NULL,
  `address_reciever` varchar(10) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `address_zipcode` int NOT NULL,
  `address_member_id` varchar(10) NOT NULL,
  `address_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`address_num`),
  KEY `address_member_id_idx` (`address_member_id`),
  CONSTRAINT `address_member_id` FOREIGN KEY (`address_member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'이모네','김말이','인천 연수구 센트럴로 415(송도동, 힐스테이트 송도 더테라스)','1동',22020,'abc','01078944563'),(2,'학원','노을이','인천 남동구 경신상로 28(구월동, 남동문화근린공원)','11층',21588,'abc','01055441212');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pw` varchar(30) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_phone` int NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_num` int NOT NULL,
  `board_title` varchar(50) NOT NULL,
  `board_content` varchar(1000) NOT NULL,
  `board_reply` varchar(1000) DEFAULT NULL,
  `board_regdate` date NOT NULL,
  `board_views` int NOT NULL,
  `board_pw` varchar(10) NOT NULL,
  `board_reply_yn` char(1) NOT NULL DEFAULT '1' COMMENT '답변유무 yse:0, no:1',
  `board_member_id` varchar(10) NOT NULL,
  PRIMARY KEY (`board_num`),
  KEY `board_member_id_idx` (`board_member_id`),
  CONSTRAINT `board_member_id` FOREIGN KEY (`board_member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'title','content','','2022-08-14',0,'123','1','abc'),(2,'123123','123123','','2022-08-14',0,'123','1','abc'),(3,'456','드디어 목록이 보인다!!','','2022-08-14',0,'456','1','abc'),(4,'111','111','','2022-08-14',0,'111','1','abc'),(5,'123','이건 다른아이디로 글을 썼다!','','2022-08-14',0,'123','1','ddd'),(6,'111','11111','','2022-08-14',1,'111','1','ddd'),(7,'222','2222222','','2022-08-14',0,'222','1','ddd'),(8,'333','3333333333','','2022-08-14',1,'333','1','ddd'),(9,'444','444444','','2022-08-14',1,'444','1','ddd'),(10,'555','55555','','2022-08-14',3,'555','1','ddd'),(11,'666','666666','','2022-08-14',2,'666','1','ddd'),(12,'777','7777777','','2022-08-14',7,'777','1','ddd'),(13,'123','페이징 어려워ㅜㅜㅜ','','2022-08-15',0,'123','1','abc'),(14,'어려워우어우어','456','','2022-08-15',0,'456','1','abc'),(15,'재밌는데 어렵고 어려운데 재밌는것은?','789\r\njsp~','','2022-08-15',0,'789','1','abc'),(16,'게시글 10개','아장자ㅏ\r\n','','2022-08-15',0,'123','1','abc'),(17,' 개미네 집 주소는? ','허리도 가늘군 만지면 부러지리.','','2022-08-15',0,'123','1','abc'),(18,'이혼이란?','이제 자유로운 혼자','','2022-08-15',0,'123','1','abc'),(19,' 눈치코치란?123','눈 때리고 코 때리고','','2022-08-15',0,'123','1','abc'),(20,'오리지날이란? 123','오리도 지랄하면 날수 있다','','2022-08-15',0,'123','1','abc'),(21,'재밌는 곳은 어딜까? 123','냉장고에 잼 있다.','','2022-08-15',0,'123','1','abc'),(22,'수학을 한 글자로 줄이면? 123','솩','','2022-08-15',0,'123','1','abc'),(23,'닭은 닭인데 먹지 못하는 닭은?123','까닭','','2022-08-15',0,'123','1','abc'),(24,'병아리가 제일 잘 먹는 약은?','삐약','','2022-08-15',0,'123','1','abc'),(25,'개 중에 가장 아름다운 개는?','무지개','','2022-08-15',0,'123','1','abc'),(26,'누구나 즐겁게 웃으며 읽는 글은? ','싱글벙글','','2022-08-15',1,'123','1','abc'),(27,'문은 문인데 닫지 못하는 문은? ','소문','','2022-08-15',0,'123','1','abc'),(28,'묵은 묵인데 먹지 못하는 묵은? ','침묵','','2022-08-15',0,'123','1','abc'),(29,'발이 두 개 달린 소는?','이발소','','2022-08-15',0,'123','1','abc'),(30,'사람이 즐겨 먹는 피는? ','커피','','2022-08-15',0,'123','1','abc'),(31,'사람이 즐겨 먹는 제비는? ','수제비','','2022-08-15',0,'123','1','abc'),(32,'아홉 명의 자식을 세자로 줄이면? ','아이구','','2022-08-15',0,'123','1','abc'),(33,'바닷가에서는 해도 되는 욕은?','해수욕','','2022-08-15',0,'123','1','abc'),(34,'아홉 명의 자식을 세자로 줄이면?','아이구 111','','2022-08-15',0,'111','1','abc'),(35,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(36,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(37,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(38,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(39,'이기고도 지는 것은?','123이기고도 지는 것은?이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(40,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(41,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(42,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',2,'123','1','abc'),(43,'213','123','','2022-08-15',0,'123','1','abc'),(44,'123','123212323213','','2022-08-15',2,'123','1','abc'),(45,'수정456','123','','2022-08-15',3,'456','1','abc'),(46,'글수정456','글을 수정합니다','','2022-08-15',5,'456','1','abc'),(47,'글수정789','789','','2022-08-15',8,'789','1','abc'),(48,'1231','123','','2022-08-15',7,'123','1','abc'),(49,'456','456','','2022-08-15',16,'456','0','abc'),(50,'789','789','','2022-08-15',23,'789','1','abc'),(52,'안녕하세요','안녕하세요 문의드립니다','안녕하세요 moodwear입니다','2022-08-17',14,'123','0','ccc'),(53,'555test입니다','안녕하세요`','0','2022-08-25',2,'555','1','ccc');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_num` varchar(100) NOT NULL,
  `cart_quantity` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` varchar(50) NOT NULL,
  PRIMARY KEY (`cart_num`),
  KEY `cart_member_id_idx` (`member_id`),
  KEY `cart_product_num_idx` (`product_num`),
  CONSTRAINT `cart_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailed_order`
--

DROP TABLE IF EXISTS `detailed_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailed_order` (
  `dtorder_num` varchar(20) NOT NULL,
  `order_num` varchar(20) NOT NULL,
  `product_num` varchar(50) NOT NULL,
  `dtorder_volume` int NOT NULL,
  `dtorder_do` char(1) NOT NULL,
  `dtorder_payment` varchar(20) NOT NULL,
  PRIMARY KEY (`dtorder_num`),
  KEY `detailed_order_num_idx` (`order_num`),
  KEY `detailed_product_num_idx` (`product_num`),
  KEY `detailed_status_idx` (`dtorder_do`),
  CONSTRAINT `detailed_order_num` FOREIGN KEY (`order_num`) REFERENCES `order` (`order_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detailed_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detailed_status` FOREIGN KEY (`dtorder_do`) REFERENCES `processing_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailed_order`
--

LOCK TABLES `detailed_order` WRITE;
/*!40000 ALTER TABLE `detailed_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailed_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` varchar(10) NOT NULL,
  `member_pw` varchar(20) NOT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_email` varchar(45) NOT NULL,
  `member_birth` date NOT NULL,
  `member_phone` varchar(20) NOT NULL,
  `member_withdrawal` char(1) NOT NULL DEFAULT '1' COMMENT 'defalut 1 (가입:1, 탈퇴:0)',
  `member_reverse` int NOT NULL DEFAULT '2000' COMMENT '가입적립금 : 2000',
  `member_grade` varchar(2) NOT NULL DEFAULT '2' COMMENT '관리자:1\n회원 :2',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aaa','123456','박두리둥둥','hellonaver.com','2022-02-02','01012345678','1',2000,'2'),('abc','123','경선','11111@daum.com','1998-12-03','01050211234','1',2000,'2'),('ccc','456','박경선','cc@naver.com','2022-08-17','01022554466','1',2000,'2'),('ddd','987','노을','mmm@gmail.com','2010-05-10','01012345678','1',2000,'2');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_num` int NOT NULL,
  `notice_pw` varchar(10) NOT NULL,
  `notice_title` varchar(30) NOT NULL,
  `notice_content` varchar(3000) NOT NULL,
  `notice_regdate` date NOT NULL,
  `notice_views` int NOT NULL,
  `admin_id` varchar(10) NOT NULL,
  PRIMARY KEY (`notice_num`),
  KEY `notice_admin_id_idx` (`admin_id`),
  CONSTRAINT `notice_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_num` varchar(20) NOT NULL,
  `order_date` date NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` varchar(50) NOT NULL,
  PRIMARY KEY (`order_num`),
  KEY `member_id_idx` (`member_id`),
  KEY `order_product_num_idx` (`product_num`),
  CONSTRAINT `order_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processing_status`
--

DROP TABLE IF EXISTS `processing_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processing_status` (
  `status` char(1) NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processing_status`
--

LOCK TABLES `processing_status` WRITE;
/*!40000 ALTER TABLE `processing_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `processing_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_brand` varchar(20) NOT NULL,
  `product_volume` int NOT NULL,
  `product_tagimg1` varchar(50) NOT NULL,
  `product_tagimg2` varchar(50) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_info` varchar(1000) NOT NULL,
  `product_tag1` varchar(10) NOT NULL,
  `product_tag2` varchar(10) NOT NULL,
  `product_tag3` varchar(10) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  PRIMARY KEY (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_num` int NOT NULL,
  `review_title` varchar(30) NOT NULL,
  `review_content` varchar(3000) NOT NULL,
  `review_img1` varchar(50) NOT NULL,
  `review_img2` varchar(50) NOT NULL,
  `review_img3` varchar(50) NOT NULL,
  `review_regdate` date NOT NULL,
  `review_views` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` varchar(50) NOT NULL,
  PRIMARY KEY (`review_num`),
  KEY `review_member_id_idx` (`member_id`),
  KEY `review_product_num_idx` (`product_num`),
  CONSTRAINT `review_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wishlist_num` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` varchar(50) NOT NULL,
  `wishlist_regdate` date NOT NULL,
  PRIMARY KEY (`wishlist_num`),
  KEY `wishlist_member_id_idx` (`member_id`),
  KEY `wishlist_product_num_idx` (`product_num`),
  CONSTRAINT `wishlist_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlist_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30  0:00:50
