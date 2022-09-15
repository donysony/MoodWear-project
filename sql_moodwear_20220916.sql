-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: moodwear
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
INSERT INTO `admin` VALUES ('admin','1234','정장박',1011112222);
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
INSERT INTO `board` VALUES (1,'title','content','','2022-08-14',0,'123','1','abc'),(2,'123123','123123','','2022-08-14',0,'123','1','abc'),(3,'456','드디어 목록이 보인다!!','','2022-08-14',0,'456','1','abc'),(4,'111','111','','2022-08-14',0,'111','1','abc'),(5,'123','이건 다른아이디로 글을 썼다!','','2022-08-14',0,'123','1','ddd'),(6,'111','11111','','2022-08-14',1,'111','1','ddd'),(7,'222','2222222','','2022-08-14',0,'222','1','ddd'),(8,'333','3333333333','','2022-08-14',1,'333','1','ddd'),(9,'444','444444','','2022-08-14',1,'444','1','ddd'),(10,'555','55555','','2022-08-14',3,'555','1','ddd'),(11,'666','666666','','2022-08-14',2,'666','1','ddd'),(12,'777','7777777','','2022-08-14',7,'777','1','ddd'),(13,'123','페이징 어려워ㅜㅜㅜ','','2022-08-15',0,'123','1','abc'),(14,'어려워우어우어','456','','2022-08-15',0,'456','1','abc'),(15,'재밌는데 어렵고 어려운데 재밌는것은?','789\r\njsp~','','2022-08-15',0,'789','1','abc'),(16,'게시글 10개','아장자ㅏ\r\n','','2022-08-15',0,'123','1','abc'),(17,' 개미네 집 주소는? ','허리도 가늘군 만지면 부러지리.','','2022-08-15',0,'123','1','abc'),(18,'이혼이란?','이제 자유로운 혼자','','2022-08-15',0,'123','1','abc'),(19,' 눈치코치란?123','눈 때리고 코 때리고','','2022-08-15',0,'123','1','abc'),(20,'오리지날이란? 123','오리도 지랄하면 날수 있다','','2022-08-15',0,'123','1','abc'),(21,'재밌는 곳은 어딜까? 123','냉장고에 잼 있다.','','2022-08-15',0,'123','1','abc'),(22,'수학을 한 글자로 줄이면? 123','솩','','2022-08-15',0,'123','1','abc'),(23,'닭은 닭인데 먹지 못하는 닭은?123','까닭','','2022-08-15',0,'123','1','abc'),(24,'병아리가 제일 잘 먹는 약은?','삐약','','2022-08-15',0,'123','1','abc'),(25,'개 중에 가장 아름다운 개는?','무지개','','2022-08-15',0,'123','1','abc'),(26,'누구나 즐겁게 웃으며 읽는 글은? ','싱글벙글','','2022-08-15',1,'123','1','abc'),(27,'문은 문인데 닫지 못하는 문은? ','소문','','2022-08-15',0,'123','1','abc'),(28,'묵은 묵인데 먹지 못하는 묵은? ','침묵','','2022-08-15',0,'123','1','abc'),(29,'발이 두 개 달린 소는?','이발소','','2022-08-15',0,'123','1','abc'),(30,'사람이 즐겨 먹는 피는? ','커피','','2022-08-15',0,'123','1','abc'),(31,'사람이 즐겨 먹는 제비는? ','수제비','','2022-08-15',0,'123','1','abc'),(32,'아홉 명의 자식을 세자로 줄이면? ','아이구','','2022-08-15',0,'123','1','abc'),(33,'바닷가에서는 해도 되는 욕은?','해수욕','','2022-08-15',0,'123','1','abc'),(34,'아홉 명의 자식을 세자로 줄이면?','아이구 111','','2022-08-15',0,'111','1','abc'),(35,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(36,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(37,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(38,'이기고도 지는 것은?','상품','','2022-08-15',0,'123','1','abc'),(39,'이기고도 지는 것은?','123이기고도 지는 것은?이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(40,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(41,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',0,'123','1','abc'),(42,'이기고도 지는 것은?','이기고도 지는 것은?','','2022-08-15',2,'123','1','abc'),(43,'123','12312312312321321dd\r\nd\r\nddd\r\n\r\n\r\n','','2022-08-15',3,'123','1','abc'),(44,'123123','123212323213','','2022-08-15',5,'123','1','abc'),(45,'수정456','123','','2022-08-15',3,'456','1','abc'),(46,'글수정456','글을 수정합니다','','2022-08-15',7,'456','1','abc'),(47,'글수정789','789','','2022-08-15',9,'789','1','abc'),(48,'1231','123\r\nddddd\r\ndddd','','2022-08-15',9,'123','1','abc'),(49,'수정123','아아아아ㅏㅏ','','2022-08-15',18,'123','0','abc'),(50,'789','789','','2022-08-15',25,'789','1','abc'),(52,'안녕하세요','안녕하세요 문의드립니다','안녕하세요 moodwear입니다','2022-08-17',14,'123','0','ccc'),(53,'555test입니다','안녕하세요`','0','2022-08-25',3,'555','1','ccc');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_num` int NOT NULL AUTO_INCREMENT,
  `cart_quantity` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` int(5) unsigned zerofill NOT NULL,
  PRIMARY KEY (`cart_num`),
  KEY `cart_product_num_idx` (`product_num`),
  KEY `cart_member_id_idx` (`member_id`),
  CONSTRAINT `cart_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'abc',00001),(2,1,'abc',00002),(3,1,'abc',00004),(4,1,'aaa',00003);
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
  `product_num` int(5) unsigned zerofill NOT NULL,
  `dtorder_volume` int NOT NULL,
  `dtorder_do` char(1) NOT NULL,
  `dtorder_payment` varchar(20) NOT NULL,
  PRIMARY KEY (`dtorder_num`),
  KEY `detailed_order_num_idx` (`order_num`),
  KEY `detailed_status_idx` (`dtorder_do`),
  KEY `detailed_product_num_idx` (`product_num`),
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
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer` (
  `title` varchar(20) NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
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
INSERT INTO `member` VALUES ('aaa','123456','박두리둥둥','hellonaver.com','2022-02-02','01012345678','1',2000,'2'),('abc','123','경선','hekdnd@naver.com','1998-12-03','01050211212','1',2000,'2'),('ccc','456','박경선','cc@naver.com','2022-08-17','01022554466','1',2000,'2'),('ddd','987','노을','mmm@gmail.com','2010-05-10','01012345678','1',2000,'2');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_num` int NOT NULL AUTO_INCREMENT,
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
  `product_num` int(5) unsigned zerofill NOT NULL,
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
  `product_num` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_brand` varchar(20) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_volume` int NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_info` varchar(1000) NOT NULL,
  `product_tag1` varchar(10) NOT NULL,
  `product_tag2` varchar(10) NOT NULL,
  `product_tag3` varchar(10) NOT NULL,
  `product_tagImg1` varchar(50) NOT NULL,
  `product_tagImg2` varchar(50) NOT NULL,
  PRIMARY KEY (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (00001,'가브리엘','샤넬','242000',100,'가브리엘4.png','열정적이며 자유로운 여성이었던 마드모아젤에게 영감을 받아 탄생한 가브리엘 샤넬 & 스스로 자신의 길을 만들어 가는 빛나는 여성을 위해 관능적인 향기를 선사하는 가브리엘 샤넬 에쌍스. 바스 앤 바디 제품과 함께 사용하면 태양 빛을 머금은 플로랄 향을 오래도록 즐길 수 있습니다.\r\n','20대','꽃','가벼움','20대.png','꽃.png'),(00002,'네롤리아베티베르','겔랑','32000',120,'겔랑 네롤리아베티베르.jfif','블러드 오렌지, 우드 노트, 베르가못이 어우러진 시트러스 프레시 계열 향수. 석류, 세이지, 장미가 어우러진 \'그라나다 샐비어\'와 함께 선보이는 겔랑 아쿠아 알레고리아의 새로운 향이다. 반짝거리는 햇빛과 함께 시칠리아의 시트러스 숲에서 난 신선한 오렌지를 맛보는 듯한 느낌을 선사한다.\r\n','달달한','풀숲','20대','오렌지.png','상큼한.png'),(00003,'로즈 압솔뤼','구딸 파리','32000',120,'구딸 파리 로즈 압솔뤼.png','로즈 압솔뤼는 ‘장미 향수의 정석’이라고 할 수 있을 정도로 장미 생화의 향과 가장 닮아있다. 특히 첫 향에서 생화 특유의 달콤하면서도 자연 그대로가 느껴지는 냄새를 맡았을 때, ‘오, 이건 진짜다!’ 하는 생각이 들었다. 우리가 흔히 맡는 장미향은, 뭐랄까, 진짜가 아니라 장미의 예쁘장한 이미지만을 담은 느낌이 든다. 하지만 로즈 압솔뤼의 향기에는 자연에서 만난 장미의 느낌이 생생하다.\r\n','꽃','러블리','20대','꽃1.png','20대1.png'),(00004,'블룸','구찌','32000',120,'구찌 블룸.jpg','구찌 블룸 부케에 새롭게 추가된 오 드 뚜왈렛은 기존의 향보다 가볍고도 선명해져 많은 여성들이 진정한 자신을 표현할 수 있도록 합니다. 하우스의 크리에이티브 디렉터, 알레산드로 미켈레의 아이디어만으로 탄생한 이 향수는 자스민 버드 추출물과 튜베로즈, 랑군 덩굴이 특징적입니다. 향을 한층 풍성하게 해주는 네롤리 향이 더해져 달콤한 꿀 향과 그린 시트러스 향이 베어납니다. 네롤리의 산뜻하고도 우아한 향은 블룸의 시그니처 화이트 플로라 향에 놀라운 반전을 선사합니다.\r\n','꽃','30대','달달한','꽃2.png','30대.png'),(00005,'뿌르 팜므','구찌','32000',120,'구찌 뿌르 팜므 오 드 뚜왈렛.jpg','전통적인 틀에서 벗어난 자유와 사랑에서 영감을 얻어 새롭게 선보이는 구찌 오 드 뚜왈렛 뿌르 팜므 보틀 디자인과 패키지. 진정한 자유로움을 찾은 여성을 표현함. 알레산드로 미켈레의 창의적인 비전으로 재해석한 향수 보틀 디자인은 남성 향수인 뿌르 옴므의 실루엣을 반영하여 여성과 남성이 평등함을 표현함.\r\n','섹시한','30대','겨울','섹시한.png','30대1.png'),(00006,'글로시에 유','글로시에','32000',120,'글로시에 글로시에 유.png','글로시에 유는 따뜻하고 크리미한 베이스 노트를 갖고있고 이 베이스노트는 사람마다 살짝 달라집니다. 흙냄새, 녹색 아이리스 뿌리, 향신료 냄새, 핑크 페퍼 향기를 갖고있는 탑노트는 지나치지 않게 프레시하고 깔끔한 향을 줍니다. \r\n','꽃','비누','20대','꽃3.png','비누향.png'),(00007,'자도르','디올','32000',120,'디올 쟈도르15.jpg','\"쟈도르, 여성의 대담함과 아름다움에 대한 찬사.\r\n쟈도르 오 드 퍼퓸에서 강렬한 압솔뤼 그리고 배쓰 리추얼에 이르기까지, 쟈도르의 아이코닉한 플로럴 부케는 가장 아름다운 꽃들의 관능적이면서도 동시에 산뜻한 향이 이루어낸 균형으로 표현되었습니다\"\r\n','러블리','20대','커리어우먼','러블리.png','20대2.png'),(00008,'필로시코스','딥티크','32000',120,'딥디크 필로시코스.png','탑노트 무화과, 무화과잎, 미들 코코넛과 그린노트, 베이스 무과화나무, 화이트시더, 우디노트로 이루어져있는 매력적인 향\r\n','무화과','우디한 ','20대','무화과.png','우디한.png'),(00009,'바니유 앙상세 코롱 압솔뤼','아뜰리에 코롱','32000',120,'바니유 앙상세 코롱 압솔뤼.png','바닐라와 우디한 향의 예상치 못한 조합이 중독적인 향입니다. 달콤하고 무거운 바닐라향이기보다는 은은하고 드라이한 느낌의 바닐라 향입니다.\r\n','포근한','우디한','아침','포근한.png','우디한1.png'),(00010,'블랑쉬','바이레도','32000',120,'바이레도 블랑쉬.jpg','순수하고 심플하면서도 개성이 강한 블랑쉬는 \"white color\"에 대한 벤 고햄의 지각에서 출발한다. 자연의 투명한 향기와 함께 여성의 순수하고 맑은 면을 담아, 특별한 사람을 위해 만들어낸 향으로, 클래식한 아름다움에 감사를 표현한다.\r\n','꽃','비누','30대','꽃4.png','비누향1.png'),(00011,'her','버버리','32000',120,'버버리 her.png','\"피오니 꽃 향기에 딸기, 블랙커런트, 핑크 페퍼콘이 어우러진 풍부한 그린 페어 톱 노트, 은방울꽃, 장미 향을 더한 허니서클 미들 노트, 중독성 있는 머스크와 시더우드의 부드러운 베이스 노트가 특징입니다.\r\n매혹적이고 자신감 넘치면서도 자연스러운 매력을 지닌 Her 오드트왈렛은 도시적이고 현대적인 버버리 여성의 모습을 그대로 담았습니다. 새로운 시선으로 세계를 바라보고, 그 세계에 매료되는 여성. 자신을 규정 짓는 틀에서 벗어나 새로운 세계, 새로운 자신을 발견해 보세요.\r\n고급스러우면서도 절제된 감각의 보틀은 버버리 아카이브의 향수 디자인에서 영감을 얻어 제작되었습니다. 그린 페어 노트를 나타내는 새로운 페일 그린 색상은 자연스러우면서도 자신감 있는 향수의 특징을 담아냅니다.\"\r\n','커리어우먼','꽃','머스크','커리어우먼.png','꽃5.png'),(00012,'넘버파이브 오 드 빠르펭','샤넬','32000',120,'샤넬 넘버파이브.png','1921년 가브리엘 샤넬은 에르네스트 보(Ernest Beaux)에게 진귀하고 강렬한 \"여성의 향기를 지닌 여성용 향수\"를 만들어 달라고 부탁하였습니다. 그리고 그 결과, 알데하이드를 사용한 전례 없는 조향의 향수가 제작되었습니다. 가브리엘 샤넬은 5번째 샘플을 선택하기로 결정하면서 N°5라는 이름을 선택하였고, 화이트 라벨을 장식하고 상단에 각면 처리된 카보숑을 장식한 혁신적인 디자인의 보틀을 새로운 향수를 위한 보틀로 선정하였습니다. 1978년부터 샤넬의 조향사로 활약해온 자크 뽈쥬는 1986년, N°5의 향기를 새롭게 재해석한 오 드 빠르펭을 제작하였습니다.\r\n','30대','묵직한','섹시한','30대2.png','묵직한.png'),(00013,'라 휘드 베흘랑 오 드 퍼퓸','세르주 루텐','32000',120,'세르주 루텐4.png','\"차가운 도시와 외로움이 공존하는 곳, 그 그늘의 장미\r\n폐허가 된 도시 부서진 아스팔트의 벽에 기대어 금방이라도 차오를 것 같은 눈물에 가만히 숨을 고르던 여자\r\n극한의 외로움과 아름다움의 대조\"\r\n','꽃','스파이시','20대','꽃6.png','스파이시.png'),(00014,'포멜로 파라디','아뜰리에 코롱','32000',120,'아뜰리에 코롱 포멜로.png','\"플로리다 포멜로의\r\n세련된 시트러스 노트의 코롱 압솔뤼이며,\r\n아틀리에 코롱의 베스트 셀러로\r\n프루티 시트러스 계열의 니치향수이다.\r\n프레쉬하고 풍부한  향으로 \r\n‘자몽향수’ 로도 많이 알려져 있다.\"\r\n','꽃','자몽','봄','꽃7.png','자몽.png'),(00015,'아쿠아 알레고리아 오렌지 쏠레이아','겔랑','32000',120,'아쿠아 알레고리아.png','블러드 오렌지, 우드 노트, 베르가못이 어우러진 시트러스 프레시 계열 향수. 석류, 세이지, 장미가 어우러진 \'그라나다 샐비어\'와 함께 선보이는 겔랑 아쿠아 알레고리아의 새로운 향이다. 반짝거리는 햇빛과 함께 시칠리아의 시트러스 숲에서 난 신선한 오렌지를 맛보는 듯한 느낌을 선사한다.\r\n','오렌지','상큼한','20대','오렌지1.png','상큼한1.png'),(00016,'판타지아 머메이드','안나수이','32000',120,'안나수이 판타지아.png','\"숨겨진 보석이 가득한 매직 캐슬을 찾아 전설 속 신비스러운 머메이드를 만난다.\r\n끝없이 펼쳐지는 청록색의 바다가 부르는 소리에 응답하고 육지의 세계는 신경쓰지 않는 듯 장난치고 서로 즐겁게 춤추고 노래하는 신화 속 환상적인 인어들의 세계로 데려가준다.\"\r\n','오렌지','달달한','시원한','오렌지2.png','달달한.png'),(00017,'퀸오브 씨덕션','안토니오 반데라스','32000',120,'안토니오 반데라스 퀸오브 씨덕션1.jpg','\"여성을 위한 플로럴 아쿠아틱 계열\r\n산뜻하고 따뜻하며 촉촉하고 섬세한 향\r\n오피스 룩 또는 따뜻한 날씨에 잘 어울립니다\"\r\n','포근한','꽃','커리어우먼','포근한1.png','꽃8.png'),(00018,'런던 우드 세이지 앤 씨솔트','조말론','32000',120,'조말론 런던 우드세이지.png','\"바람이 부는 해변가에서 바람을 맞을 때 느껴지는 잔잔함, 쓸쓸함, 모던함을 그린 우드 세이지 & 씨솔트\r\n\r\n마치 잘게 부서진 해변가의 부드러운 모래 알맹이가 바다에서 부는 특유의 시원하고 짭짜름한 공기의 향기와 섞여서 내 몸을 가볍게 훑고 지나가는 듯한 평화로움이 느껴지네요\r\n\r\n흔히 말하는 세련됨, 모던한 감수성이 물씬 풍겨 데일리로 편하게,\r\n꾸민 듯 안 꾸민 듯 사용하기 좋습니다.\"\r\n','시원한','20대','아침','시원한.png','20대3.png'),(00019,'어벤투스 코롱','크리드','32000',120,'크리드 어벤투스.png','\"젊은 여성을 위한 아로마틱 프룻티 계열\r\n산뜻하고 깔끔하며 중성적인 향\"\r\n','아침','커리어우먼','포근한','아침.png','커리어우먼1.png'),(00020,'테싯','이솝','32000',120,'테싯.png','\"우드향 아래 흙냄새, 차분한 느낌과 더불어 여름에 어울리는 에너제틱한 느낌\r\n쌉쌀하면서 스파이시한 우드향에 가벼운 느낌을 줄 수 있는 시트러스 향\r\n바질을 짓이겼을 때의 쌉싸름함과 비슷합니다.\"\r\n','절향','우디한','묵직한','절향.png','우디한2.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_num` int unsigned NOT NULL AUTO_INCREMENT,
  `review_title` varchar(30) NOT NULL,
  `review_content` varchar(3000) NOT NULL,
  `review_img1` varchar(50) NOT NULL,
  `review_img2` varchar(50) NOT NULL,
  `review_img3` varchar(50) NOT NULL,
  `review_regdate` date NOT NULL,
  `review_views` int NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `product_num` int(5) unsigned zerofill NOT NULL,
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
-- Table structure for table `wearer`
--

DROP TABLE IF EXISTS `wearer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wearer` (
  `wearer_Btitle` varchar(50) NOT NULL,
  `wearer_Stitle` varchar(50) DEFAULT NULL,
  `wearer_content` varchar(3000) DEFAULT NULL,
  `wearer_img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`wearer_Btitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wearer`
--

LOCK TABLES `wearer` WRITE;
/*!40000 ALTER TABLE `wearer` DISABLE KEYS */;
/*!40000 ALTER TABLE `wearer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wishlist_num` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(10) NOT NULL,
  `product_num` int(5) unsigned zerofill NOT NULL,
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

-- Dump completed on 2022-09-16  0:22:09
