CREATE DATABASE  IF NOT EXISTS `vr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vr`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vr
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
-- Table structure for table `api_marker_marker`
--

DROP TABLE IF EXISTS `api_marker_marker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_marker_marker` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tooltip` longtext NOT NULL,
  `content` longtext NOT NULL,
  `gps_id` char(32) DEFAULT NULL,
  `node_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_marker_marker_gps_id_46f81aab_fk_api_node_gps_id` (`gps_id`),
  KEY `api_marker_marker_node_id_aa5df7c5_fk_api_node_node_id` (`node_id`),
  CONSTRAINT `api_marker_marker_gps_id_46f81aab_fk_api_node_gps_id` FOREIGN KEY (`gps_id`) REFERENCES `api_node_gps` (`id`),
  CONSTRAINT `api_marker_marker_node_id_aa5df7c5_fk_api_node_node_id` FOREIGN KEY (`node_id`) REFERENCES `api_node_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_marker_marker`
--

LOCK TABLES `api_marker_marker` WRITE;
/*!40000 ALTER TABLE `api_marker_marker` DISABLE KEYS */;
INSERT INTO `api_marker_marker` VALUES ('06dae5f7d3f44f1fa619fa29773aeed8','2023-05-21 13:36:38.000000','2023-05-21 13:37:12.081377','<p>Click me!!!</p>','<p>Đ&acirc;y l&agrave; marker của node</p>','effb265b43664c9c93bcdf7f65c8ff66','f4b38dcfd4354ea1acfaa6a1b38591db');
/*!40000 ALTER TABLE `api_marker_marker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_node_gps`
--

DROP TABLE IF EXISTS `api_node_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_node_gps` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `latitude` double NOT NULL,
  `longtitude` double NOT NULL,
  `altitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_node_gps`
--

LOCK TABLES `api_node_gps` WRITE;
/*!40000 ALTER TABLE `api_node_gps` DISABLE KEYS */;
INSERT INTO `api_node_gps` VALUES ('0a17ad29ad8940bb9c5338bf5ba01433','2023-06-23 10:32:13.000000','2023-06-24 08:34:38.994474',16.100008830660055,108.27668024131172,2),('269831bbe19f44f5b6a303100c02b8df','2023-05-21 13:34:07.000000','2023-06-24 05:50:26.977681',16.100443733529467,108.27789159909497,2),('335fa049fceb4a03a981376fe81b15c3','2023-06-23 10:29:16.000000','2023-06-24 08:40:49.127747',16.100818548683627,108.27800968764811,2),('4007cdebf96b41f895fc2412e5dd158e','2023-06-22 13:53:15.000000','2023-06-22 13:53:48.791756',16.099873161376088,108.27800309483112,2),('4a2ea0012ce94dc48e432e55ecd803e5','2023-06-03 12:03:40.000000','2023-06-22 13:27:32.187191',16.099866471937517,108.27780429851272,2),('51d968e7033b4d6b80db9528699324fa','2023-06-17 10:55:46.000000','2023-06-17 10:55:58.590261',16.100429941092983,108.27783354801402,2),('68ceec7b88bd4b92acaf615919f73cdf','2023-06-23 10:01:46.000000','2023-06-23 16:21:03.911773',16.10060729980823,108.2769652621421,2),('75266ea884a348c8a1cd6d3f6a25173a','2023-06-23 06:57:58.000000','2023-06-23 06:58:17.895537',16.100464712334638,108.27751430242579,2),('86bf423fd2044a02a21d8d4e40d3f1c9','2023-06-22 13:54:55.000000','2023-06-22 13:55:20.352152',16.100064327161043,108.27816807973694,2),('8741040f1f354c63bf2e63b660febfba','2023-06-23 10:31:03.000000','2023-06-23 10:31:37.431452',16.099123588724243,108.2769695739312,2),('8c02019dbf9d4328988d659caae30f6a','2023-06-03 13:34:21.000000','2023-06-24 05:57:00.395902',16.10004560148738,108.27773352131246,2),('94b22bc66a5b4b72b01d70b68dd088b1','2023-06-17 14:15:21.000000','2023-06-21 09:39:26.266066',16.099631063284942,108.27728024059012,2),('a378dcea44f64216b2f68442613fc709','2023-06-23 06:51:28.000000','2023-06-24 08:13:47.502828',16.10025088238247,108.27721717385617,2),('a6f97f389b934fbdb6f9e7b9e98ba924','2023-05-14 12:59:05.000000','2023-05-24 14:57:32.699713',12,12,2),('ae56dfa85ae94eda92382541196fd310','2023-05-12 04:05:23.000000','2023-06-29 08:24:48.959932',16.099560829356484,108.27752394820617,3),('b04762f7baa74b36a755364865e317dc','2023-05-12 04:26:29.000000','2023-06-20 08:52:03.212188',16.09995775237078,108.27751994041334,2),('b1f7f76fee3b41ca87712c6b02f02195','2023-06-17 14:46:25.000000','2023-06-24 05:47:11.884612',16.099601718087406,108.27973130340197,2),('b7b44be3fdcc4916974ae9fdcf5f31b6','2023-06-23 06:53:04.000000','2023-06-23 06:54:49.197004',16.100327772793708,108.27701814891581,2),('bd93e5b6f8374871bb962955b9af3c1a','2023-06-22 17:16:18.000000','2023-06-23 04:35:33.522494',16.099474198131265,108.28024450689554,2),('d4cfd221f6a14327ac29f6ee486c4371','2023-06-23 10:25:29.000000','2023-06-23 10:26:01.403891',16.09914584539088,108.27666740436001,2),('de1913cb7c9f49f8862ab814d7b005f0','2023-06-23 06:46:07.000000','2023-06-23 07:07:14.941311',16.09987352174035,108.2789078940044,2),('e1fa3f32ca07452aab5c60a74459584b','2023-06-22 17:02:52.000000','2023-06-23 04:27:24.766613',16.099770554897745,108.28001115471126,2),('e760f27d34244b5185d218226c9b9ae5','2023-06-22 13:45:15.000000','2023-06-24 05:54:05.697872',16.100260766110488,108.2778104622755,2),('e832c84696224c368ea1a685f5beb0b2','2023-06-23 08:35:37.000000','2023-06-23 16:18:02.178393',16.10082317956805,108.2771800933721,2),('ecc21e13d6d9437b9b8f0c67c801cdb3','2023-06-22 16:40:16.000000','2023-06-23 06:48:32.455556',16.099664237447566,108.27911719041256,2),('effb265b43664c9c93bcdf7f65c8ff66','2023-05-21 13:37:02.000000','2023-05-21 13:37:12.076378',2,40,2),('f072d861fd0e4a08b018b216baead063','2023-06-17 14:05:41.000000','2023-06-17 14:12:02.253138',16.09965149743455,108.27695541607179,2),('f4fdd972461440e4889b2334a8cdd6a0','2023-05-12 04:22:54.000000','2023-06-20 08:41:51.621808',16.099692154682035,108.27759096740078,2),('f9918888cbc443a1b409e80ee4bef8ea','2023-06-23 10:22:11.000000','2023-06-23 10:22:51.827364',16.100098704373792,108.27741549021933,2);
/*!40000 ALTER TABLE `api_node_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_node_link`
--

DROP TABLE IF EXISTS `api_node_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_node_link` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `nodeEnd_id` char(32) DEFAULT NULL,
  `nodeStart_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_node_link_nodeEnd_id_7a9d64b9_fk_api_node_node_id` (`nodeEnd_id`),
  KEY `api_node_link_nodeStart_id_ca7bb2b7_fk_api_node_node_id` (`nodeStart_id`),
  CONSTRAINT `api_node_link_nodeEnd_id_7a9d64b9_fk_api_node_node_id` FOREIGN KEY (`nodeEnd_id`) REFERENCES `api_node_node` (`id`),
  CONSTRAINT `api_node_link_nodeStart_id_ca7bb2b7_fk_api_node_node_id` FOREIGN KEY (`nodeStart_id`) REFERENCES `api_node_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_node_link`
--

LOCK TABLES `api_node_link` WRITE;
/*!40000 ALTER TABLE `api_node_link` DISABLE KEYS */;
INSERT INTO `api_node_link` VALUES ('211ed3baa66c4be897c7a398acfb7f60','2023-06-24 08:07:36.000000','2023-06-24 08:07:53.560591','7c24107f924d49ee87fbfb7fb8938a31','a73c564591334e58b11ea4aa5928dcdb'),('226005159732443ab5bc34dcb713457d','2023-05-12 09:30:32.000000','2023-05-12 09:30:40.399041','f4b38dcfd4354ea1acfaa6a1b38591db','c4b32625597d40e0b3b65003621f213f'),('3608da9138634190892b9e7cc9a08ff4','2023-06-22 13:48:09.000000','2023-06-22 13:48:19.755158','0eafaaf6dad24b3aa619685b1bdc923a','53c4392e6481401da5056b6c726efab9'),('3612624b3c28414da95bbb8d476820fd','2023-06-24 08:36:36.000000','2023-06-24 08:36:55.412272','7c24107f924d49ee87fbfb7fb8938a31','ee33fff2ca7b4a8a87bd3c0c2ae9be10'),('3c1ca021985e4155b0a829d5745a98ad','2023-05-12 09:29:29.000000','2023-05-12 09:43:20.888535','c4b32625597d40e0b3b65003621f213f','f451a15ad01c4a7db18d631137aff8a6'),('55f5f4d45c254152a72b5c36dc919f7b','2023-06-03 12:12:31.000000','2023-06-03 12:12:38.617806','67dbcfcadcef4a569c4781041754d4c4','c4b32625597d40e0b3b65003621f213f'),('6909d05fa1674092ae773d582adebf23','2023-06-23 10:40:02.000000','2023-06-23 10:40:10.450154','6ffaf4c9d3f14ecb82f9601432edbacc','720f6dc6e90c4a4795b2af5b0517ce84'),('74d1c017155142d791556be883759e63','2023-06-23 06:47:42.000000','2023-06-23 06:48:01.730658','4370f09ff2a94066b6eb9630a53408f4','6897abd3cc2c48f0b668ba3355bddc97'),('7f130eb632ff4bd4863fa194a27d313a','2023-06-23 03:36:44.000000','2023-06-23 03:36:57.340829','758ef7a26b8d4d1ca703f2c078f158fb','c170d808029e42528d00a1d732d25f71'),('81c4624ea1164f7987ba3df290bcf7a7','2023-06-03 13:35:23.000000','2023-06-03 13:35:29.522516','53c4392e6481401da5056b6c726efab9','f4b38dcfd4354ea1acfaa6a1b38591db'),('8212adb8c72343f4b02a711543eed5a6','2023-06-23 04:33:02.000000','2023-06-23 04:33:14.411779','5999da81fcf54e738eff49a850a368db','c170d808029e42528d00a1d732d25f71'),('86b6fa2739a5495bb2ed1e10a46d14c5','2023-06-23 10:39:23.000000','2023-06-23 10:39:48.947160','6ffaf4c9d3f14ecb82f9601432edbacc','b71da7b0bd8042daadd495fc5561bd03'),('8891ceea20384d9abcbd658b878afdd4','2023-06-23 16:28:11.000000','2023-06-23 16:28:38.711693','6897abd3cc2c48f0b668ba3355bddc97','798f63718ec74d5db1f6cfd49be89f4f'),('9237eaff24e6494a8558dfb1255937cc','2023-06-24 08:11:55.000000','2023-06-24 08:13:21.039955','10e6ab4efcb64e898773526aa0eb4761','335c54cf9dc9496192cf9a950f227e41'),('949b9ed8640249d2a288cc8cbbf50c20','2023-06-24 08:13:21.000000','2023-06-24 08:14:04.639839','6cf8726bd54b45ee8ee48e23985b03f6','335c54cf9dc9496192cf9a950f227e41'),('98aa6afccee74091b2b212e325cc04ad','2023-06-24 05:41:57.000000','2023-06-24 05:42:21.091607','7c24107f924d49ee87fbfb7fb8938a31','f451a15ad01c4a7db18d631137aff8a6'),('a247f314b2184ca78b31058e14130eac','2023-06-23 04:29:35.000000','2023-06-23 04:29:48.544553','5999da81fcf54e738eff49a850a368db','758ef7a26b8d4d1ca703f2c078f158fb'),('a435fd4fba1c444b99a1ceb72152f2ad','2023-06-24 08:05:45.000000','2023-06-24 08:06:21.034410','b71da7b0bd8042daadd495fc5561bd03','a73c564591334e58b11ea4aa5928dcdb'),('aa6b78e4cb2d4301b0a6f11b04bb71d9','2023-06-22 13:48:22.000000','2023-06-22 13:48:31.726123','720f6dc6e90c4a4795b2af5b0517ce84','0eafaaf6dad24b3aa619685b1bdc923a'),('ab63decb7f264eb39c7274ee79625e7d','2023-06-03 12:06:45.000000','2023-06-03 12:11:39.289072','f4b38dcfd4354ea1acfaa6a1b38591db','67dbcfcadcef4a569c4781041754d4c4'),('b4decba9ed444893a2becfc9321ce29d','2023-06-03 13:35:07.000000','2023-06-03 13:35:21.244481','53c4392e6481401da5056b6c726efab9','67dbcfcadcef4a569c4781041754d4c4'),('bf508cd7ad71472e90440f2959d15b15','2023-06-22 16:46:15.000000','2023-06-22 16:46:21.832311','4370f09ff2a94066b6eb9630a53408f4','f451a15ad01c4a7db18d631137aff8a6'),('c37c26967ca744a1929e42b4c31e0179','2023-06-23 10:37:27.000000','2023-06-23 10:37:49.840835','fbf8a6bee6e54bf0a07433fe2d451457','720f6dc6e90c4a4795b2af5b0517ce84'),('d6cd32d4dd2040549850bd8930336603','2023-06-23 03:35:48.000000','2023-06-23 03:36:08.043678','c170d808029e42528d00a1d732d25f71','4370f09ff2a94066b6eb9630a53408f4'),('ead3decf14e344a1a453af378523db2f','2023-06-22 13:54:06.000000','2023-06-22 13:54:16.520314','04b8da02bfaa43bc95880e953ec75932','67dbcfcadcef4a569c4781041754d4c4'),('ff540dcc180041b9852ae684728a82ee','2023-06-23 16:26:49.000000','2023-06-23 16:27:14.336203','04b8da02bfaa43bc95880e953ec75932','798f63718ec74d5db1f6cfd49be89f4f');
/*!40000 ALTER TABLE `api_node_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_node_node`
--

DROP TABLE IF EXISTS `api_node_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_node_node` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `panoma` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `gps_id` char(32) DEFAULT NULL,
  `place_id` char(32) DEFAULT NULL,
  `poseHeading` int DEFAULT NULL,
  `first` tinyint(1) NOT NULL,
  `audio_url` varchar(200) DEFAULT NULL,
  `text_to_speech` longtext,
  `special_node` tinyint(1) NOT NULL,
  `special_name` varchar(100) DEFAULT NULL,
  `map_x` int DEFAULT NULL,
  `map_y` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_node_node_gps_id_e1ce9b24_fk_api_node_gps_id` (`gps_id`),
  KEY `api_node_node_place_id_2dac10f5_fk_api_place_place_id` (`place_id`),
  CONSTRAINT `api_node_node_gps_id_e1ce9b24_fk_api_node_gps_id` FOREIGN KEY (`gps_id`) REFERENCES `api_node_gps` (`id`),
  CONSTRAINT `api_node_node_place_id_2dac10f5_fk_api_place_place_id` FOREIGN KEY (`place_id`) REFERENCES `api_place_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_node_node`
--

LOCK TABLES `api_node_node` WRITE;
/*!40000 ALTER TABLE `api_node_node` DISABLE KEYS */;
INSERT INTO `api_node_node` VALUES ('04b8da02bfaa43bc95880e953ec75932','2023-06-22 13:53:48.787755','2023-06-22 13:54:00.691944','Sân chùa - Tượng Thích Ca','','image/upload/v1687442037/panorama/djynasjf99r0zjh3ymiz.jpg','image/upload/v1687442040/thumbnail/wndbvxh62l19hglduzvs.jpg','4007cdebf96b41f895fc2412e5dd158e','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('0eafaaf6dad24b3aa619685b1bdc923a','2023-06-22 13:45:38.939080','2023-06-24 05:54:06.082556','Chính điện','<p>Trung t&acirc;m ch&iacute;nh điện l&agrave; tượng phật Bổn Sư Th&iacute;ch Ca M&acirc;u Ni, b&ecirc;n&nbsp; l&agrave; Qu&aacute;n Thế &Acirc;m Bồ T&aacute;t, b&ecirc;n tr&aacute;i l&agrave; Tam Tạng Phật, bốn vị Thần Long Hộ Ph&aacute;p được sắp xếp theo một quy luật mang nhiều &yacute; nghĩa t&acirc;m linh bảo vệ cho ch&iacute;nh điện.</p>','image/upload/v1687441557/panorama/nxk6y4b08jeohldcd8w4.jpg','image/upload/v1687441560/thumbnail/dtb3lrw9wkgpa6exomou.jpg','e760f27d34244b5185d218226c9b9ae5','60786bf862f2457b810060360069b787',160,0,'https://res.cloudinary.com/dssmcuelj/video/upload/v1687441564/dpkz6dvjadvwymmr01kz.wav','Trung tâm chính điện là tượng phật Bổn Sư Thích Ca Mâu Ni, bên  là Quán Thế Âm Bồ Tát, bên trái là Tam Tạng Phật, bốn vị Thần Long Hộ Pháp được sắp xếp theo một quy luật mang nhiều ý nghĩa tâm linh bảo vệ cho chính điện.',0,NULL,NULL,NULL),('10e6ab4efcb64e898773526aa0eb4761','2023-06-23 10:22:51.822367','2023-06-23 10:23:09.514779','Sân chùa - đường đi','','image/upload/v1687515788/panorama/o2x7vufnydi0ghnzvfq4.jpg',NULL,'f9918888cbc443a1b409e80ee4bef8ea','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('335c54cf9dc9496192cf9a950f227e41','2023-06-23 06:51:45.732560','2023-06-23 06:51:55.302792','Sân chùa - Đường đi','<p>Đường đi</p>','image/upload/v1687503116/panorama/pmk0lm3gxaanjjpdg1ic.jpg',NULL,'a378dcea44f64216b2f68442613fc709','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('4370f09ff2a94066b6eb9630a53408f4','2023-06-22 16:44:00.081466','2023-06-23 06:48:32.459704','Tháp Xá Lợi - Cổng vào','<p>Cổng v&agrave;o Th&aacute;p X&aacute; Lợi</p>','image/upload/v1687452260/panorama/qatgdyt3lqbm0rghopbi.jpg','image/upload/v1687452265/thumbnail/ezfxlrrlzrrwb3b6b7jn.jpg','ecc21e13d6d9437b9b8f0c67c801cdb3','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('53c4392e6481401da5056b6c726efab9','2023-06-03 13:33:23.000000','2023-06-24 05:57:00.802272','Trước chính điện','<p>Với diện t&iacute;ch rộng lớn khu vực n&agrave;y l&agrave; nơi trang nghi&ecirc;m nhất trong quần thể nơi m&agrave; hầu như mọi du kh&aacute;ch đều đến đ&acirc;y để cầu b&igrave;nh an.</p>','image/upload/v1687252050/panorama/khcppqz1yicezxcd2gqt.jpg','image/upload/nodes/truoc-chinh-ien/68065562-0213-11ee-b475-94e6f7246854.jpg','8c02019dbf9d4328988d659caae30f6a','60786bf862f2457b810060360069b787',84,0,'https://res.cloudinary.com/dssmcuelj/video/upload/v1687586115/qknrzab01bldwnnykxnq.wav','Bạn đang đứng trước chính điện. Với diện tích rộng lớn khu vực này là nơi trang nghiêm nhất trong quần thể nơi mà hầu như mọi du khách đều đến đây để cầu bình an.',0,NULL,1275,1250),('5999da81fcf54e738eff49a850a368db','2023-06-22 17:16:51.372776','2023-06-23 04:35:33.526496','Tháp Xá Lợi - Tượng Di Lạc','<p>Tượng Di Lạc</p>','image/upload/v1687454246/panorama/csqnjx2n0pjv7wyexod8.jpg','image/upload/v1687454250/thumbnail/hlvxix2wrxykqhrpq1jv.jpg','bd93e5b6f8374871bb962955b9af3c1a','60786bf862f2457b810060360069b787',45,0,NULL,'',0,NULL,NULL,NULL),('67dbcfcadcef4a569c4781041754d4c4','2023-06-03 12:02:50.000000','2023-06-22 13:28:05.583525','Các vị La Hán','<p>C&aacute;c vị La H&aacute;n vẫn c&oacute; những hoạt động như đi, đứng, nằm, ngồi, ăn, uống, ngủ nghỉ như người đời. Tuy nhi&ecirc;n, kh&aacute;c biệt giữa c&aacute;c La H&aacute;n với người ph&agrave;m đ&oacute; l&agrave; c&aacute;c ng&agrave;i khi l&agrave;m việc l&agrave;m g&igrave;, n&oacute;i g&igrave; cũng đều c&oacute; sự ch&aacute;nh niệm tỉnh gi&aacute;c cao độ, từ l&uacute;c thức cho đến khi ngủ c&aacute;c ng&agrave;i cũng đều duy tr&igrave; sự Ch&aacute;nh Niệm li&ecirc;n tục.</p>','image/upload/v1687440478/panorama/mqibh4t8hpjk1mfyzh5z.jpg','image/upload/nodes/cac-vi-la-han/e887fada-0206-11ee-a3ca-94e6f7246854.jpg','4a2ea0012ce94dc48e432e55ecd803e5','60786bf862f2457b810060360069b787',0,0,'https://res.cloudinary.com/dssmcuelj/video/upload/v1687440485/ebye5qlsopezkfc6jghq.wav','Các vị La Hán vẫn có những hoạt động như đi, đứng, nằm, ngồi, ăn, uống, ngủ nghỉ như người đời. Tuy nhiên, khác biệt giữa các La Hán với người phàm đó là các ngài khi làm việc làm gì, nói gì cũng đều có sự chánh niệm tỉnh giác cao độ, từ lúc thức cho đến khi ngủ các ngài cũng đều duy trì sự Chánh Niệm liên tục.',0,NULL,NULL,NULL),('6897abd3cc2c48f0b668ba3355bddc97','2023-06-23 06:47:09.074310','2023-06-23 07:07:15.230012','Vườn Lộc Uyển','<p>Vườn Lộc Uyển tọa lạc ở khoảng 13km về ph&iacute;a Đ&ocirc;ng Bắc của th&agrave;nh Ba La Nại (Varasani), nằm giữa s&ocirc;ng Hằng v&agrave; s&ocirc;ng Porona, miền Đ&ocirc;ng Bắc Ấn Độ. Năm tuần sau khi gi&aacute;c ngộ, Đức Phật đi từ&nbsp;<strong>Bồ Đề Đạo Tr&agrave;ng</strong>, vượt hơn 120km để đến Vườn Lộc Uyển. Đến đ&acirc;y Ng&agrave;i đ&atilde; thuyết giảng b&agrave;i kinh&nbsp;<strong><em>&ldquo;Tứ Diệu Đế&rdquo;</em></strong>&nbsp;cho năm vị tu sĩ khổ hạnh - năm anh em&nbsp;<strong>Kiều Trần Như</strong>&nbsp;- trong lần thuyết ph&aacute;p đầu ti&ecirc;n. Ng&agrave;i đ&atilde; gi&aacute;c ngộ họ v&agrave; Phật gi&aacute;o bắt đầu từ đ&acirc;y được truyền b&aacute; rộng r&atilde;i. Cũng v&agrave;o thời điểm n&agrave;y, tăng đo&agrave;n ở Vườn Lộc Uyển ph&aacute;t triển dần l&ecirc;n 60 vị tỷ-kheo v&agrave; cả 60 vị đều đắc quả A-la-h&aacute;n. Vườn Lộc Uyển được xem l&agrave; trung t&acirc;m Phật gi&aacute;o lớn nhất tồn tại hơn 1.500 năm sau ng&agrave;y Phật nhập diệt (Niết B&agrave;n), l&agrave; nơi đức Phật trải qua m&ugrave;a an cư kiết hạ đầu ti&ecirc;n v&agrave; cũng l&agrave; chiếc n&ocirc;i h&igrave;nh th&agrave;nh Tam bảo giữa thế gian.&nbsp;</p>','image/upload/v1687502841/panorama/qupk61ezd1ymvazkpg7b.jpg','image/upload/v1687502845/thumbnail/iayakmfzduklnuulvulx.jpg','de1913cb7c9f49f8862ab814d7b005f0','60786bf862f2457b810060360069b787',285,0,NULL,'Năm tuần sau khi giác ngộ, Đức Phật vượt hơn 120km để đến Vườn Lộc Uyển. Đến đây Ngài đã thuyết giảng bài kinh “Tứ Diệu Đế” cho năm vị tu sĩ khổ hạnh trong lần thuyết pháp đầu tiên. Ngài đã giác ngộ họ và Phật giáo bắt đầu từ đây được truyền bá rộng rãi.',0,NULL,NULL,NULL),('6cf8726bd54b45ee8ee48e23985b03f6','2023-06-23 06:54:49.194029','2023-06-23 06:55:00.908769','Sân chùa - Đường đi','<p>&nbsp; &nbsp;</p>','image/upload/v1687503301/panorama/uylrhbtt6plwwq2c8wvc.jpg',NULL,'b7b44be3fdcc4916974ae9fdcf5f31b6','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('6ffaf4c9d3f14ecb82f9601432edbacc','2023-06-23 09:51:14.681669','2023-06-23 16:18:02.718247','Vườn Lâm Tì Ni','<p>Trong lịch sử Phật gi&aacute;o c&oacute; ghi lại một sự kiện v&ocirc; c&ugrave;ng đặc biệt khi Đức Phật vừa đản sinh, Ng&agrave;i đ&atilde; bước đi bảy bước, mỗi bước đều c&oacute; hoa sen nở dưới ch&acirc;n. Đến bước thứ 7, một tay chỉ trời, một tay chỉ đất, Ng&agrave;i n&oacute;i rằng: &ldquo;Thi&ecirc;n thượng thi&ecirc;n hạ, duy ng&atilde; độc t&ocirc;n&rdquo;.<br />\r\n<br />\r\n&Yacute; nghĩa 7 bước đi:</p>\r\n\r\n<p><strong>Bước ch&acirc;n thứ nhất:</strong> Bồ T&aacute;t nh&igrave;n về phương Đ&ocirc;ng - Ng&agrave;i sẽ l&agrave; người dẫn đường cho c&aacute;c ch&uacute;ng sinh<br />\r\n<strong>Bước ch&acirc;n thứ hai: </strong>Bồ T&aacute;t nh&igrave;n về phương Nam - Ng&agrave;i sẽ l&agrave;m ruộng phước l&agrave;nh cho tất cả ch&uacute;ng sinh<br />\r\n<strong>Bước ch&acirc;n thứ ba:</strong> Bồ T&aacute;t nh&igrave;n về phương T&acirc;y - Đ&acirc;y l&agrave; th&acirc;n cuối c&ugrave;ng của Ng&agrave;i<br />\r\n<strong>Bước ch&acirc;n thứ tư:</strong> Bồ T&aacute;t nh&igrave;n về phương Bắc - Ng&agrave;i sẽ đắc đạo V&ocirc; thượng Bồ đề ngay trong kiếp n&agrave;y<br />\r\n<strong>Bước ch&acirc;n thứ năm: </strong>Bồ T&aacute;t nh&igrave;n phương dưới - Ng&agrave;i sẽ h&agrave;ng phục c&aacute;c lo&agrave;i ma<br />\r\n<strong>Bước ch&acirc;n thứ s&aacute;u:</strong> Bồ T&aacute;t nh&igrave;n phương tr&ecirc;n - Ng&agrave;i l&agrave; chỗ quy y cho Trời v&agrave; người<br />\r\n<strong>Bước ch&acirc;n thứ bảy:</strong> Bồ T&aacute;t một tay chỉ trời, một tay chỉ đất</p>','image/upload/v1687513888/panorama/mnxnfocq4eox4cmda8tf.jpg','image/upload/v1687513898/thumbnail/zvkswprf8eu1lfdt38s6.jpg','e832c84696224c368ea1a685f5beb0b2','60786bf862f2457b810060360069b787',90,0,NULL,'Trong lịch sử Phật giáo có ghi lại một sự kiện vô cùng đặc biệt khi Đức Phật vừa đản sinh, Ngài đã bước đi bảy bước, mỗi bước đều có hoa sen nở dưới chân. Đến bước thứ 7, một tay chỉ trời, một tay chỉ đất, Ngài nói rằng: “Thiên thượng thiên hạ, duy ngã độc tôn”.',1,'Vườn Lâm Tì Ny',NULL,NULL),('720f6dc6e90c4a4795b2af5b0517ce84','2023-06-17 12:30:28.441150','2023-06-24 05:50:27.338591','Đền thờ tổ','<p>Quan &Acirc;m Ngh&igrave;n Mắt Ngh&igrave;n Tay,&nbsp;tượng trưng cho khả năng nh&igrave;n thấy nỗi đau của tất cả ch&uacute;ng sinh v&agrave; cứu gi&uacute;p ch&uacute;ng bằng l&ograve;ng từ bi. Bồ t&aacute;t được t&ocirc;n trọng v&ocirc; c&ugrave;ng v&igrave; thể hiện đức t&iacute;nh từ bi v&agrave; được coi l&agrave; biểu tượng của l&ograve;ng nh&acirc;n &aacute;i v&agrave; đồng cảm trong truyền thống Phật gi&aacute;o.</p>','image/upload/v1687010195/panorama/l6i2utovqesojnc9oto8.jpg','image/upload/v1687005033/thumbnail/otmbjohhglvkav31fplh.jpg','269831bbe19f44f5b6a303100c02b8df','60786bf862f2457b810060360069b787',180,0,'http://res.cloudinary.com/dssmcuelj/video/upload/v1687252649/pwj5fssb2yik2zypqz4w.wav','Bạn đang đứng ở đền thờ tổ. Nơi đặt tượng Quan Thế Âm Nghìn Mắt Nghìn Tay. Tượng trưng cho khả năng nhìn thấy nỗi đau của tất cả chúng sinh và cứu giúp chúng bằng lòng từ bi. Bồ tát được tôn trọng vô cùng vì thể hiện đức tính từ bi và được coi là biểu tượng của lòng nhân ái và đồng cảm trong truyền thống Phật giáo.',1,'Đền Thờ Tổ',NULL,NULL),('758ef7a26b8d4d1ca703f2c078f158fb','2023-06-22 17:03:18.315442','2023-06-23 04:27:25.149852','Tháp Xá Lợi','<p>Th&aacute;p X&aacute; Lợi sẽ được sử dụng để thờ c&uacute;ng của&nbsp;những Phật Tử. N&oacute; sẽ gi&uacute;p mang tới sự linh thi&ecirc;ng v&agrave; ph&uacute;c l&agrave;nh, cũng như l&agrave; gi&uacute;p tăng th&ecirc;m mối nh&acirc;n duy&ecirc;n giữa người thờ c&uacute;ng đối với Đức Phật.</p>','image/upload/v1687453423/panorama/fikbdo0y9rqryoohrpyx.jpg','image/upload/v1687453426/thumbnail/uoadvb85wvjc3kcsrqy2.jpg','e1fa3f32ca07452aab5c60a74459584b','60786bf862f2457b810060360069b787',120,0,'https://res.cloudinary.com/dssmcuelj/video/upload/v1687494030/llrdkfctbngsuvxvicje.wav','Bạn đang đứng trước Tháp xá lợi sẽ được sử dụng để thờ cúng của những Phật Tử. Nó sẽ giúp mang tới sự linh thiêng và phúc lành, cũng như là giúp tăng thêm mối nhân duyên giữa người thờ cúng đối với Đức Phật.',0,NULL,NULL,NULL),('798f63718ec74d5db1f6cfd49be89f4f','2023-06-22 13:55:20.348190','2023-06-22 13:55:35.326298','Sân Chùa - Đường đi','','image/upload/v1687442135/panorama/wy2qpxi6h4wcxolys9ie.jpg',NULL,'86bf423fd2044a02a21d8d4e40d3f1c9','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('7c24107f924d49ee87fbfb7fb8938a31','2023-06-17 14:07:57.890897','2023-06-17 14:12:04.543035','Quan Âm Phật Đài','<p>Quan &Acirc;m Phật đ&agrave;i</p>','image/upload/v1687010888/panorama/plxwvcalgymytqpfmkqp.jpg','image/upload/v1687011124/thumbnail/n1bijenquirszgl124mq.jpg','f072d861fd0e4a08b018b216baead063','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('8df1db87781644c08e410a5e8e8befd9','2023-06-23 06:58:17.891540','2023-06-23 06:58:28.347199','Sân chùa - Khu chụp ảnh','','image/upload/v1687503509/panorama/t3sccdqfwyi5bwixgzgk.jpg',NULL,'75266ea884a348c8a1cd6d3f6a25173a','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('a73c564591334e58b11ea4aa5928dcdb','2023-06-23 10:32:42.606260','2023-06-24 08:34:38.998225','Quan Âm Phật Đài - Tháp Xá Lợi','','image/upload/v1687516370/panorama/rkkny8zz4i6j1ltcu1mm.jpg',NULL,'0a17ad29ad8940bb9c5338bf5ba01433','60786bf862f2457b810060360069b787',90,0,NULL,'',0,NULL,NULL,NULL),('b71da7b0bd8042daadd495fc5561bd03','2023-06-23 10:14:50.767063','2023-06-23 16:21:03.915446','Quán Thế Âm Phật Đài - Cầu','','image/upload/v1687515310/panorama/okt46swgcdmsotqetkel.jpg',NULL,'68ceec7b88bd4b92acaf615919f73cdf','60786bf862f2457b810060360069b787',270,0,NULL,'',0,NULL,NULL,NULL),('c170d808029e42528d00a1d732d25f71','2023-06-17 14:46:40.927012','2023-06-24 05:47:12.498796','Tháp Xá Lợi - Tượng Phật Nằm','<p>Tượng Phật Nằm</p>','image/upload/v1687252919/panorama/o8nczzefe95dss1s8oiy.jpg','image/upload/v1687013307/thumbnail/w3p384xebqun5quevbnj.jpg','b1f7f76fee3b41ca87712c6b02f02195','60786bf862f2457b810060360069b787',15,0,'http://res.cloudinary.com/dssmcuelj/video/upload/v1687252923/lrkflaacm5jdljutrj4w.wav','Các bạn đang đứng ở Tháp Xá Lợi. Chùa Linh Ứng có thờ một tượng phật nằm ngay trước tháp. Với ý nghĩa mang lại sự thanh tịnh, an yên, ấm no cho hết thảy mọi người con của Phật, cũng như mọi chúng sinh mười phương ba cõi.',0,NULL,NULL,NULL),('c4b32625597d40e0b3b65003621f213f','2023-05-12 04:14:17.000000','2023-06-20 08:42:06.994807','Sân chùa','<p>S&acirc;n ch&ugrave;a</p>','image/upload/v1687250521/panorama/uwsjamm9yqyfvyhml6it.jpg','image/upload/nodes/san-chua/f57c4cb4-f07c-11ed-bdb7-94e6f7246854.jpg','f4fdd972461440e4889b2334a8cdd6a0','60786bf862f2457b810060360069b787',320,0,'http://res.cloudinary.com/dssmcuelj/video/upload/v1687250526/nrxkruxt65usvaxxlpws.wav','Bạn đang đứng ở sân chùa. Ở đây chùa có bố trí 14 vị La Hán và rất nhiều cây xanh được chăm sóc rất là tĩ mỹ và công phu, tạo nên cảm giác yên bình và thoải mái khi hít thở và đi dạo quanh đây',1,'Sân chùa Linh Ứng',NULL,NULL),('ccc302f5f1a5426f8f9187746dbde0e3','2023-06-23 10:31:37.428453','2023-06-23 10:31:41.047910','Quan Âm Phật Đài - Đường đi','','image/upload/v1687516300/panorama/anea7wlvha7pcjnw08dv.jpg',NULL,'8741040f1f354c63bf2e63b660febfba','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('deeb25c4e1034ad7ab1ade3fe0511485','2023-06-17 14:16:07.684962','2023-06-21 09:39:37.076901','Đường tới Quán Thế Âm Phật Đài','<p>Đường tới QTAPD</p>','image/upload/v1687340376/panorama/hesgsgcr3xgacf6dc8aa.jpg','image/upload/v1687011518/thumbnail/yzw6yqhqxyjjuchbf7bz.jpg','94b22bc66a5b4b72b01d70b68dd088b1','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('ee33fff2ca7b4a8a87bd3c0c2ae9be10','2023-06-23 10:26:01.399945','2023-06-23 10:26:15.225427','Quan Âm Phật Đài - Tượng Di Lạc','','image/upload/v1687515974/panorama/ohnaajcjb0d7xn1pk2dq.jpg',NULL,'d4cfd221f6a14327ac29f6ee486c4371','60786bf862f2457b810060360069b787',0,0,NULL,'',0,NULL,NULL,NULL),('f451a15ad01c4a7db18d631137aff8a6','2023-05-12 04:09:56.000000','2023-06-29 08:24:49.138924','Cổng chùa','<p>Đ&acirc;y l&agrave; cổng ch&ugrave;a</p>','image/upload/v1686474539/panorama/lbyva2x4ug5kxk5vkdev.jpg','image/upload/v1686474541/thumbnail/x57eg7rirqoh8r1gbexu.jpg','ae56dfa85ae94eda92382541196fd310','60786bf862f2457b810060360069b787',255,1,'https://res.cloudinary.com/dssmcuelj/video/upload/v1687491216/mfzgqamvx2biptyofcok.wav','Chùa Linh Ứng được khởi công vào năm 2004 và chính thức khánh thành vào năm 2010, cách trung tâm thành phố Đà Nẵng 10km phía trước ngôi chùa hướng về biển đông tạo nên những cảnh sắc truyệt đẹp.',1,'Cổng chùa Linh Ứng',NULL,NULL),('f4b38dcfd4354ea1acfaa6a1b38591db','2023-05-12 04:26:05.000000','2023-06-20 08:52:14.547281','Các vị La Hán','<p>C&aacute;c vị La H&aacute;n</p>','image/upload/v1687251129/panorama/qhdvsupodkqfgnfgp2k5.jpg','image/upload/nodes/cac-vi-la-han/54eac4d1-f07d-11ed-8348-94e6f7246854.jpg','b04762f7baa74b36a755364865e317dc','60786bf862f2457b810060360069b787',30,0,'http://res.cloudinary.com/dssmcuelj/video/upload/v1687251133/xz26tgvdthevcetmhnrg.wav','La Hán là những đệ tử đắc đạo của Phật. Khi tu thành chánh quả La Hán nghĩa là đã đoạn tuyệt được với thất tình lục dục, vĩnh viễn giải thoát khỏi luân hồi.',0,NULL,NULL,NULL),('fbf8a6bee6e54bf0a07433fe2d451457','2023-06-23 10:29:43.951159','2023-06-24 08:40:49.131757','Đền Thờ Tổ -Tượng Gạc Ma','','image/upload/v1687516202/panorama/aq23a6ktwxiicof2lrg5.jpg',NULL,'335fa049fceb4a03a981376fe81b15c3','60786bf862f2457b810060360069b787',300,0,NULL,'',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `api_node_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_place_information`
--

DROP TABLE IF EXISTS `api_place_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_place_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `place_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_place_information_place_id_6da6eda5_fk_api_place_place_id` (`place_id`),
  CONSTRAINT `api_place_information_place_id_6da6eda5_fk_api_place_place_id` FOREIGN KEY (`place_id`) REFERENCES `api_place_place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_place_information`
--

LOCK TABLES `api_place_information` WRITE;
/*!40000 ALTER TABLE `api_place_information` DISABLE KEYS */;
INSERT INTO `api_place_information` VALUES (1,'Thành Phố','Đà Nẵng','60786bf862f2457b810060360069b787'),(2,'Mô tả','Chùa Linh Ứng là một ngôi chùa nằm trên dãy núi Sơn Trà, thuộc địa bàn xã Hòa Hải, huyện Ngũ Hành Sơn, thành phố Đà Nẵng. Ngôi chùa này được xây dựng từ thế kỷ XVIII và được coi là một trong những ngôi chùa lớn và đẹp nhất tại Đà Nẵng.','60786bf862f2457b810060360069b787');
/*!40000 ALTER TABLE `api_place_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_place_place`
--

DROP TABLE IF EXISTS `api_place_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_place_place` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `category_id` char(32) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `api_place_place_category_id_799e2efc_fk_categories_id` (`category_id`),
  CONSTRAINT `api_place_place_category_id_799e2efc_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_place_place`
--

LOCK TABLES `api_place_place` WRITE;
/*!40000 ALTER TABLE `api_place_place` DISABLE KEYS */;
INSERT INTO `api_place_place` VALUES ('3f48fa9d06db43409565c6356f0751d3','2023-05-20 08:04:50.000000','2023-05-20 08:04:54.194815','Phuc Long Grand','Phucs Long','image/upload/v1684569910/z0cog6ki41zyuunr0dev.jpg',1,1,'phuc-long-grand','5651dbe421034a7980ca316503aa0f8c',NULL),('60786bf862f2457b810060360069b787','2023-05-01 11:20:05.000000','2023-06-08 16:20:06.798940','Chùa Linh Ứng','','image/upload/v1684569972/wo4dlawnenrdky5x0t0w.jpg',16.10031719989777,108.27774682373854,'chua-linh-ung','6be61a5f27be4f16a3a96a64f7bf0b79','image/upload/v1686241216/fzanot5zvm7qqsjjx9aq.jpg'),('d43454b435ce459b883d473115483fdc','2023-05-07 11:33:16.000000','2023-05-07 11:37:40.571087','Bãi nam','Một bên là núi xanh một bên là biển, Còn gì đẹp hơn thế này. Tôi thuê một chiếc xe máy và đến đó. Con đường rất tốt. Và đó là kinh nghiệm rất tốt ở tất cả. thích xem.','',16.10511135047878,108.29924521369901,'bai-nam','6be61a5f27be4f16a3a96a64f7bf0b79',NULL);
/*!40000 ALTER TABLE `api_place_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add place',8,'add_place'),(30,'Can change place',8,'change_place'),(31,'Can delete place',8,'delete_place'),(32,'Can view place',8,'view_place'),(33,'Can add information',9,'add_information'),(34,'Can change information',9,'change_information'),(35,'Can delete information',9,'delete_information'),(36,'Can view information',9,'view_information'),(37,'Can add gps',10,'add_gps'),(38,'Can change gps',10,'change_gps'),(39,'Can delete gps',10,'delete_gps'),(40,'Can view gps',10,'view_gps'),(41,'Can add node',11,'add_node'),(42,'Can change node',11,'change_node'),(43,'Can delete node',11,'delete_node'),(44,'Can view node',11,'view_node'),(45,'Can add link',12,'add_link'),(46,'Can change link',12,'change_link'),(47,'Can delete link',12,'delete_link'),(48,'Can view link',12,'view_link'),(49,'Can add marker',13,'add_marker'),(50,'Can change marker',13,'change_marker'),(51,'Can delete marker',13,'delete_marker'),(52,'Can view marker',13,'view_marker');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$oGFcMgsjQ3Qfn5h92wqRZh$tHl3+OqcQPa7HYToiILCgTYrHFUs1cEp9RpyGFGAcCI=','2023-06-18 07:10:38.856163',1,'admin','','','',1,1,'2023-05-12 03:37:04.769944');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `svg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('08815a0749f84aa7958760a77c28d30d','2023-05-03 08:50:40.000000','2023-05-03 10:16:53.864985','Du lịch','Nhiều địa điểm bạn có thể khám phá xung quanh chùa Linh Ứng','du-lich',NULL),('5651dbe421034a7980ca316503aa0f8c','2023-05-20 07:41:14.000000','2023-05-20 07:41:30.852905','Khách sạn','Khách sạn','khach-san',''),('6be61a5f27be4f16a3a96a64f7bf0b79','2023-05-01 11:19:20.000000','2023-05-07 10:18:13.715993','Chùa Linh Ứng','Bãi Bụt, Sơn Trà, Đà Nẵng','chua-linh-ung','places/chua-linh-ung/79a62102-ecc0-11ed-a8f1-94e6f7246854.jpg'),('bae1b39c668240f192ccd097a11c2625','2023-06-17 11:11:26.000000','2023-06-17 11:12:03.163236','Bảo tàng','Báo tàng nơi lưu trữ những di tích lịch sử','bao-tang',''),('e5d5635fcf704dea93ae24a4c384f012','2023-05-01 11:13:03.000000','2023-05-03 10:16:59.334665','Ẩm thực','Đà Nẵng cũng là thiên đường về ẩm thực, nơi nhiều nhà đầu bếp nỗi tiếng thế giới đánh giá cao','am-thuc',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-12 03:59:03.818255','1','Chùa Linh Ứng Thành Phố',1,'[{\"added\": {}}]',9,1),(2,'2023-05-12 04:00:08.108256','2','Chùa Linh Ứng Mô tả',1,'[{\"added\": {}}]',9,1),(3,'2023-05-12 04:06:48.130084','ae56dfa8-5ae9-4eda-9238-2541196fd310','GPS object (ae56dfa8-5ae9-4eda-9238-2541196fd310)',1,'[{\"added\": {}}]',10,1),(4,'2023-05-12 04:10:31.845590','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',1,'[{\"added\": {}}]',11,1),(5,'2023-05-12 04:11:07.700063','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(6,'2023-05-12 04:13:35.882622','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(7,'2023-05-12 04:24:56.813322','f4fdd972-4614-40e4-889b-2334a8cdd6a0','GPS object (f4fdd972-4614-40e4-889b-2334a8cdd6a0)',1,'[{\"added\": {}}]',10,1),(8,'2023-05-12 04:25:00.373610','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',1,'[{\"added\": {}}]',11,1),(9,'2023-05-12 04:26:50.772935','b04762f7-baa7-4b36-a755-364865e317dc','GPS object (b04762f7-baa7-4b36-a755-364865e317dc)',1,'[{\"added\": {}}]',10,1),(10,'2023-05-12 04:26:59.536979','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',1,'[{\"added\": {}}]',11,1),(11,'2023-05-12 04:27:40.483360','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',11,1),(12,'2023-05-12 09:30:30.473146','3c1ca021-985e-4155-b0a8-29d5745a98ad','Cổng chùa - Sân chùa',1,'[{\"added\": {}}]',12,1),(13,'2023-05-12 09:30:40.405039','22600515-9732-443a-b5bc-34dcb713457d','Sân chùa - Các vị La Hán',1,'[{\"added\": {}}]',12,1),(14,'2023-05-12 09:43:20.893533','3c1ca021-985e-4155-b0a8-29d5745a98ad','Cổng chùa - Sân chùa',2,'[]',12,1),(15,'2023-05-12 15:24:56.063981','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(16,'2023-05-13 11:16:11.994913','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(17,'2023-05-13 12:36:48.866309','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(18,'2023-05-13 12:36:54.438170','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(19,'2023-05-13 12:36:59.567481','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(20,'2023-05-13 12:59:01.367418','f4fdd972-4614-40e4-889b-2334a8cdd6a0','GPS object (f4fdd972-4614-40e4-889b-2334a8cdd6a0)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(21,'2023-05-13 13:01:00.292290','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(22,'2023-05-13 13:01:23.681761','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"First\"]}}]',11,1),(23,'2023-05-14 12:59:08.712750','a6f97f38-9b93-4fbd-b6f9-e7b9e98ba924','GPS object (a6f97f38-9b93-4fbd-b6f9-e7b9e98ba924)',1,'[{\"added\": {}}]',10,1),(24,'2023-05-14 12:59:13.431767','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',1,'[{\"added\": {}}]',11,1),(25,'2023-05-20 07:41:30.854893','5651dbe4-2103-4a79-80ca-316503aa0f8c','Khách sạn',1,'[{\"added\": {}}]',7,1),(26,'2023-05-20 07:42:33.818718','b17d8904-06c6-4972-821a-b3a4fc32b446','Phuc Long Grand',1,'[{\"added\": {}}]',8,1),(27,'2023-05-20 07:43:41.765229','b17d8904-06c6-4972-821a-b3a4fc32b446','Phuc Long Grand',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',8,1),(28,'2023-05-20 07:56:53.493546','b17d8904-06c6-4972-821a-b3a4fc32b446','Phuc Long Grand',3,'',8,1),(29,'2023-05-20 08:05:09.987910','3f48fa9d-06db-4340-9565-c6356f0751d3','Phuc Long Grand',1,'[{\"added\": {}}]',8,1),(30,'2023-05-20 08:06:11.119307','60786bf8-62f2-457b-8100-60360069b787','Chùa Linh Ứng',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(31,'2023-05-21 12:10:00.897528','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(32,'2023-05-21 13:34:13.282080','269831bb-e19f-44f5-b6a3-03100c02b8df','GPS object (269831bb-e19f-44f5-b6a3-03100c02b8df)',1,'[{\"added\": {}}]',10,1),(33,'2023-05-21 13:37:09.048125','effb265b-4366-4c9c-93bc-df7f65c8ff66','GPS object (effb265b-4366-4c9c-93bc-df7f65c8ff66)',1,'[{\"added\": {}}]',10,1),(34,'2023-05-21 13:37:12.082378','06dae5f7-d3f4-4f1f-a619-fa29773aeed8','Marker object (06dae5f7-d3f4-4f1f-a619-fa29773aeed8)',1,'[{\"added\": {}}]',13,1),(35,'2023-05-24 14:18:34.384190','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(36,'2023-05-24 14:27:02.245687','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(37,'2023-05-24 14:28:54.311178','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(38,'2023-05-24 14:29:51.411308','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(39,'2023-05-24 14:31:21.217087','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(40,'2023-05-24 14:31:21.671454','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(41,'2023-05-24 14:31:51.832908','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(42,'2023-05-24 14:32:31.469314','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(43,'2023-05-24 14:33:01.816115','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(44,'2023-05-24 14:34:04.237086','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(45,'2023-05-24 14:34:45.097910','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(46,'2023-05-24 14:36:25.795513','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(47,'2023-05-24 14:42:34.087337','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(48,'2023-05-24 14:53:41.020393','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(49,'2023-05-24 14:53:49.348413','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(50,'2023-05-24 14:57:40.459593','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',2,'[]',11,1),(51,'2023-05-26 14:56:15.603378','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(52,'2023-05-30 13:24:04.554611','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(53,'2023-05-30 13:25:03.839596','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(54,'2023-06-03 12:02:00.606252','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Panoma\", \"Text to speech\"]}}]',11,1),(55,'2023-06-03 12:05:01.299274','4a2ea001-2ce9-4dc4-8e43-2e55ecd803e5','GPS object (4a2ea001-2ce9-4dc4-8e43-2e55ecd803e5)',1,'[{\"added\": {}}]',10,1),(56,'2023-06-03 12:05:23.321733','67dbcfca-dcef-4a56-9c47-81041754d4c4','Chùa Linh Ứng - Các vị La Hán',1,'[{\"added\": {}}]',11,1),(57,'2023-06-03 12:06:55.073461','ab63decb-7f26-4eb3-9c72-74ee79625e7d','Sân chùa - Các vị La Hán',1,'[{\"added\": {}}]',12,1),(58,'2023-06-03 12:11:39.294076','ab63decb-7f26-4eb3-9c72-74ee79625e7d','Các vị La Hán - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"NodeStart\"]}}]',12,1),(59,'2023-06-03 12:12:38.624106','55f5f4d4-5c25-4152-a72b-5c36dc919f7b','Sân chùa - Các vị La Hán',1,'[{\"added\": {}}]',12,1),(60,'2023-06-03 13:34:37.649846','8c02019d-bf9d-4328-988d-659caae30f6a','GPS object (8c02019d-bf9d-4328-988d-659caae30f6a)',1,'[{\"added\": {}}]',10,1),(61,'2023-06-03 13:34:46.805835','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',1,'[{\"added\": {}}]',11,1),(62,'2023-06-03 13:35:21.249359','b4decba9-ed44-4893-a2be-cfc9321ce29d','Các vị La Hán - Trước chính điện',1,'[{\"added\": {}}]',12,1),(63,'2023-06-03 13:35:29.523244','81c4624e-a116-4f79-87ba-3df290bcf7a7','Các vị La Hán - Trước chính điện',1,'[{\"added\": {}}]',12,1),(64,'2023-06-04 12:58:01.381520','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Special node\"]}}]',11,1),(65,'2023-06-04 13:07:23.338708','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(66,'2023-06-04 13:07:39.168803','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Special node\"]}}]',11,1),(67,'2023-06-04 13:17:43.541454','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Special node\"]}}]',11,1),(68,'2023-06-04 13:18:05.545374','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Special node\"]}}]',11,1),(69,'2023-06-04 13:21:39.969180','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[]',11,1),(70,'2023-06-04 13:21:46.212724','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(71,'2023-06-04 13:22:19.577770','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Special name\"]}}]',11,1),(72,'2023-06-04 13:33:43.126726','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Special name\"]}}]',11,1),(73,'2023-06-04 13:36:22.165871','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(74,'2023-06-04 13:37:11.575628','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(75,'2023-06-07 12:03:26.052701','f4fdd972-4614-40e4-889b-2334a8cdd6a0','GPS object (f4fdd972-4614-40e4-889b-2334a8cdd6a0)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(76,'2023-06-07 12:03:31.037193','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(77,'2023-06-07 14:37:33.894730','f4fdd972-4614-40e4-889b-2334a8cdd6a0','GPS object (f4fdd972-4614-40e4-889b-2334a8cdd6a0)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(78,'2023-06-08 01:54:10.918259','8c02019d-bf9d-4328-988d-659caae30f6a','GPS object (8c02019d-bf9d-4328-988d-659caae30f6a)',2,'[]',10,1),(79,'2023-06-08 15:00:10.782507','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"Map x\", \"Map y\"]}}]',11,1),(80,'2023-06-08 16:20:16.682756','60786bf8-62f2-457b-8100-60360069b787','Chùa Linh Ứng',2,'[{\"changed\": {\"fields\": [\"Map\"]}}]',8,1),(81,'2023-06-10 12:17:33.251336','d54c6db7-b2c3-4226-9b12-c41852b91e39','Bãi nam - Bãi giữ xe',3,'',11,1),(82,'2023-06-11 08:18:24.213367','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(83,'2023-06-11 08:30:12.620160','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(84,'2023-06-11 08:31:06.157745','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(85,'2023-06-11 08:31:13.959347','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panoma\"]}}]',11,1),(86,'2023-06-11 08:43:06.224479','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(87,'2023-06-11 09:02:11.984164','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(88,'2023-06-11 09:09:01.686863','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Panorama\", \"Thumbnail\"]}}]',11,1),(89,'2023-06-11 09:33:14.333685','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(90,'2023-06-11 14:05:43.728810','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(91,'2023-06-17 10:55:58.593260','51d968e7-033b-4d6b-80db-9528699324fa','GPS object (51d968e7-033b-4d6b-80db-9528699324fa)',1,'[{\"added\": {}}]',10,1),(92,'2023-06-17 11:12:03.164700','bae1b39c-6682-40f1-92cc-d097a11c2625','Bảo tàng',1,'[{\"added\": {}}]',7,1),(93,'2023-06-17 12:30:31.495946','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Sau chính điện',1,'[{\"added\": {}}]',11,1),(94,'2023-06-17 13:56:35.269667','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Sau chính điện',2,'[{\"changed\": {\"fields\": [\"Description\", \"Panorama\"]}}]',11,1),(95,'2023-06-17 13:57:56.473785','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(96,'2023-06-17 14:00:43.213204','269831bb-e19f-44f5-b6a3-03100c02b8df','GPS object (269831bb-e19f-44f5-b6a3-03100c02b8df)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(97,'2023-06-17 14:00:45.810085','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Sau chính điện',2,'[]',11,1),(98,'2023-06-17 14:01:30.688733','269831bb-e19f-44f5-b6a3-03100c02b8df','GPS object (269831bb-e19f-44f5-b6a3-03100c02b8df)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(99,'2023-06-17 14:01:32.312640','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Sau chính điện',2,'[]',11,1),(100,'2023-06-17 14:03:25.098038','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Sau chính điện',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(101,'2023-06-17 14:06:18.787570','f072d861-fd0e-4a08-b018-b216baead063','GPS object (f072d861-fd0e-4a08-b018-b216baead063)',1,'[{\"added\": {}}]',10,1),(102,'2023-06-17 14:08:08.560222','7c24107f-924d-49ee-87fb-fb7fb8938a31','Chùa Linh Ứng - Quan Âm Phật Đài',1,'[{\"added\": {}}]',11,1),(103,'2023-06-17 14:09:04.430770','7c24107f-924d-49ee-87fb-fb7fb8938a31','Chùa Linh Ứng - Quan Âm Phật Đài',2,'[]',11,1),(104,'2023-06-17 14:12:04.547029','7c24107f-924d-49ee-87fb-fb7fb8938a31','Chùa Linh Ứng - Quan Âm Phật Đài',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',11,1),(105,'2023-06-17 14:15:38.678759','94b22bc6-6a5b-4b72-b01d-70b68dd088b1','GPS object (94b22bc6-6a5b-4b72-b01d-70b68dd088b1)',1,'[{\"added\": {}}]',10,1),(106,'2023-06-17 14:16:07.691948','deeb25c4-e103-4ad7-ab1a-de3fe0511485','Chùa Linh Ứng - Đường tới Quán Thế Âm Phật Đài',1,'[{\"added\": {}}]',11,1),(107,'2023-06-17 14:18:39.132351','deeb25c4-e103-4ad7-ab1a-de3fe0511485','Chùa Linh Ứng - Đường tới Quán Thế Âm Phật Đài',2,'[{\"changed\": {\"fields\": [\"Panorama\", \"Thumbnail\"]}}]',11,1),(108,'2023-06-17 14:46:35.508043','b1f7f76f-ee3b-41ca-8771-2c6b02f02195','GPS object (b1f7f76f-ee3b-41ca-8771-2c6b02f02195)',1,'[{\"added\": {}}]',10,1),(109,'2023-06-17 14:48:27.279510','c170d808-029e-4252-8d00-a1d732d25f71','Chùa Linh Ứng - Tượng Phật Nằm',1,'[{\"added\": {}}]',11,1),(110,'2023-06-18 14:36:05.043394','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(111,'2023-06-20 07:36:44.032575','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(112,'2023-06-20 07:37:10.714342','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Audio url\"]}}]',11,1),(113,'2023-06-20 07:37:20.675334','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(114,'2023-06-20 07:38:55.727470','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(115,'2023-06-20 07:39:13.731629','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(116,'2023-06-20 07:42:37.920511','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(117,'2023-06-20 07:43:04.149333','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(118,'2023-06-20 07:50:07.531985','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(119,'2023-06-20 07:50:41.864878','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[]',11,1),(120,'2023-06-20 08:41:55.276391','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(121,'2023-06-20 08:42:06.996808','c4b32625-597d-40e0-b3b6-5003621f213f','Chùa Linh Ứng - Sân chùa',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(122,'2023-06-20 08:52:14.548263','f4b38dcf-d435-4ea1-acfa-a6a1b38591db','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(123,'2023-06-20 08:52:50.166587','67dbcfca-dcef-4a56-9c47-81041754d4c4','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Text to speech\"]}}]',11,1),(124,'2023-06-20 08:55:29.310785','67dbcfca-dcef-4a56-9c47-81041754d4c4','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(125,'2023-06-20 09:06:14.814081','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"Description\", \"Text to speech\"]}}]',11,1),(126,'2023-06-20 09:07:06.538091','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(127,'2023-06-20 09:07:36.410480','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(128,'2023-06-20 09:17:31.300234','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Đền thờ tổ',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Text to speech\", \"Special node\", \"Special name\"]}}]',11,1),(129,'2023-06-20 09:22:04.354054','c170d808-029e-4252-8d00-a1d732d25f71','Chùa Linh Ứng - Tượng Phật Nằm',2,'[{\"changed\": {\"fields\": [\"Panorama\", \"Text to speech\"]}}]',11,1),(130,'2023-06-21 09:36:45.729121','deeb25c4-e103-4ad7-ab1a-de3fe0511485','Chùa Linh Ứng - Đường tới Quán Thế Âm Phật Đài',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(131,'2023-06-21 09:38:45.308342','deeb25c4-e103-4ad7-ab1a-de3fe0511485','Chùa Linh Ứng - Đường tới Quán Thế Âm Phật Đài',2,'[]',11,1),(132,'2023-06-21 09:39:37.078899','deeb25c4-e103-4ad7-ab1a-de3fe0511485','Chùa Linh Ứng - Đường tới Quán Thế Âm Phật Đài',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(133,'2023-06-22 13:28:05.585561','67dbcfca-dcef-4a56-9c47-81041754d4c4','Chùa Linh Ứng - Các vị La Hán',2,'[{\"changed\": {\"fields\": [\"Panorama\"]}}]',11,1),(134,'2023-06-22 13:45:24.254355','e760f27d-3424-4b51-85d2-18226c9b9ae5','GPS object (e760f27d-3424-4b51-85d2-18226c9b9ae5)',1,'[{\"added\": {}}]',10,1),(135,'2023-06-22 13:46:04.855222','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',1,'[{\"added\": {}}]',11,1),(136,'2023-06-22 13:48:19.758157','3608da91-3863-4190-892b-9e7cc9a08ff4','Trước chính điện - Chính điện',1,'[{\"added\": {}}]',12,1),(137,'2023-06-22 13:48:31.728693','aa6b78e4-cb2d-4301-b0a6-f11b04bb71d9','Chính điện - Đền thờ tổ',1,'[{\"added\": {}}]',12,1),(138,'2023-06-22 13:53:39.033840','4007cdeb-f96b-41f8-95fc-2412e5dd158e','GPS object (4007cdeb-f96b-41f8-95fc-2412e5dd158e)',1,'[{\"added\": {}}]',10,1),(139,'2023-06-22 13:54:00.692943','04b8da02-bfaa-43bc-9588-0e953ec75932','Chùa Linh Ứng - Sân chùa - Tượng Thích Ca',1,'[{\"added\": {}}]',11,1),(140,'2023-06-22 13:54:16.523338','ead3decf-14e3-44a1-a453-af378523db2f','Các vị La Hán - Sân chùa - Tượng Thích Ca',1,'[{\"added\": {}}]',12,1),(141,'2023-06-22 13:55:15.118525','86bf423f-d204-4a02-a21d-8d4e40d3f1c9','GPS object (86bf423f-d204-4a02-a21d-8d4e40d3f1c9)',1,'[{\"added\": {}}]',10,1),(142,'2023-06-22 13:55:35.328302','798f6371-8ec7-4d5d-b1f6-cfd49be89f4f','Chùa Linh Ứng - Sân Chùa - Đường đi',1,'[{\"added\": {}}]',11,1),(143,'2023-06-22 16:43:50.582679','ecc21e13-d6d9-437b-9b8f-0c67c801cdb3','GPS object (ecc21e13-d6d9-437b-9b8f-0c67c801cdb3)',1,'[{\"added\": {}}]',10,1),(144,'2023-06-22 16:44:25.409357','4370f09f-f2a9-4066-b6eb-9630a53408f4','Chùa Linh Ứng - Cổng vào Tháp Xá Lợi',1,'[{\"added\": {}}]',11,1),(145,'2023-06-22 16:46:21.835310','bf508cd7-ad71-472e-9044-0f2959d15b15','Cổng chùa - Cổng vào Tháp Xá Lợi',1,'[{\"added\": {}}]',12,1),(146,'2023-06-22 16:49:05.188808','c3fe1497-493f-4527-bb9c-d85e089dbf4e','Đường tới Quán Thế Âm Phật Đài - Tượng Phật Nằm',1,'[{\"added\": {}}]',12,1),(147,'2023-06-22 17:03:10.509990','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',1,'[{\"added\": {}}]',10,1),(148,'2023-06-22 17:03:50.366615','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',1,'[{\"added\": {}}]',11,1),(149,'2023-06-22 17:16:45.326646','bd93e5b6-f837-4871-bb96-2955b9af3c1a','GPS object (bd93e5b6-f837-4871-bb96-2955b9af3c1a)',1,'[{\"added\": {}}]',10,1),(150,'2023-06-22 17:17:29.877883','5999da81-fcf5-4e73-8eff-49a850a368db','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Di Lạc',1,'[{\"added\": {}}]',11,1),(151,'2023-06-23 03:29:01.936775','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(152,'2023-06-23 03:30:33.585994','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(153,'2023-06-23 03:33:35.741302','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(154,'2023-06-23 03:36:08.046674','d6cd32d4-dd20-4054-9850-bd8930336603','Cổng vào Tháp Xá Lợi - Tượng Phật Nằm',1,'[{\"added\": {}}]',12,1),(155,'2023-06-23 03:36:57.342830','7f130eb6-32ff-4bd4-863f-a194a27d313a','Tượng Phật Nằm - Tháp Xá Lợi',1,'[{\"added\": {}}]',12,1),(156,'2023-06-23 03:44:54.121255','c3fe1497-493f-4527-bb9c-d85e089dbf4e','Đường tới Quán Thế Âm Phật Đài - Tượng Phật Nằm',3,'',12,1),(157,'2023-06-23 03:54:55.189152','b1f7f76f-ee3b-41ca-8771-2c6b02f02195','GPS object (b1f7f76f-ee3b-41ca-8771-2c6b02f02195)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(158,'2023-06-23 03:57:55.867829','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(159,'2023-06-23 03:58:19.429665','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[]',11,1),(160,'2023-06-23 04:01:49.995244','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',2,'[{\"changed\": {\"fields\": [\"Longtitude\"]}}]',10,1),(161,'2023-06-23 04:02:02.540274','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[]',11,1),(162,'2023-06-23 04:06:12.627977','bd93e5b6-f837-4871-bb96-2955b9af3c1a','GPS object (bd93e5b6-f837-4871-bb96-2955b9af3c1a)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(163,'2023-06-23 04:06:14.491315','5999da81-fcf5-4e73-8eff-49a850a368db','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Di Lạc',2,'[]',11,1),(164,'2023-06-23 04:06:48.727445','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(165,'2023-06-23 04:07:00.040128','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[]',11,1),(166,'2023-06-23 04:08:48.840821','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(167,'2023-06-23 04:20:28.874278','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[]',11,1),(168,'2023-06-23 04:21:25.440025','bd93e5b6-f837-4871-bb96-2955b9af3c1a','GPS object (bd93e5b6-f837-4871-bb96-2955b9af3c1a)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(169,'2023-06-23 04:21:27.583199','5999da81-fcf5-4e73-8eff-49a850a368db','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Di Lạc',2,'[]',11,1),(170,'2023-06-23 04:23:54.120366','e1fa3f32-ca07-452a-ab5c-60a74459584b','GPS object (e1fa3f32-ca07-452a-ab5c-60a74459584b)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(171,'2023-06-23 04:23:56.003991','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[]',11,1),(172,'2023-06-23 04:25:12.022621','c170d808-029e-4252-8d00-a1d732d25f71','Chùa Linh Ứng - Tượng Phật Nằm',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(173,'2023-06-23 04:26:10.388900','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(174,'2023-06-23 04:27:25.151851','758ef7a2-6b8d-4d1c-a703-f2c078f158fb','Chùa Linh Ứng - Tháp Xá Lợi',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(175,'2023-06-23 04:29:48.547549','a247f314-b218-4ca7-8b31-058e14130eac','Tháp Xá Lợi - Tháp Xá Lợi - Tượng Di Lạc',1,'[{\"added\": {}}]',12,1),(176,'2023-06-23 04:33:14.418418','8212adb8-c723-43f4-b02a-711543eed5a6','Tượng Phật Nằm - Tháp Xá Lợi - Tượng Di Lạc',1,'[{\"added\": {}}]',12,1),(177,'2023-06-23 04:34:49.312783','5999da81-fcf5-4e73-8eff-49a850a368db','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Di Lạc',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(178,'2023-06-23 04:35:33.528497','5999da81-fcf5-4e73-8eff-49a850a368db','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Di Lạc',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(179,'2023-06-23 06:47:00.212240','de1913cb-7c9f-49f8-862a-b814d7b005f0','GPS object (de1913cb-7c9f-49f8-862a-b814d7b005f0)',1,'[{\"added\": {}}]',10,1),(180,'2023-06-23 06:47:24.374051','6897abd3-cc2c-48f0-b668-ba3355bddc97','Chùa Linh Ứng - Vườn Lộc Uyển',1,'[{\"added\": {}}]',11,1),(181,'2023-06-23 06:48:01.732655','74d1c017-1551-42d7-9155-6be883759e63','Vườn Lộc Uyển - Cổng vào Tháp Xá Lợi',1,'[{\"added\": {}}]',12,1),(182,'2023-06-23 06:48:32.461564','4370f09f-f2a9-4066-b6eb-9630a53408f4','Chùa Linh Ứng - Tháp Xá Lợi - Cổng vào',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',11,1),(183,'2023-06-23 06:51:40.379540','a378dcea-44f6-4216-b2f6-8442613fc709','GPS object (a378dcea-44f6-4216-b2f6-8442613fc709)',1,'[{\"added\": {}}]',10,1),(184,'2023-06-23 06:51:55.304787','335c54cf-9dc9-4961-92cf-9a950f227e41','Chùa Linh Ứng - Sân chùa - Đường đi',1,'[{\"added\": {}}]',11,1),(185,'2023-06-23 06:54:03.195740','b7b44be3-fdcc-4916-974a-e9fdcf5f31b6','GPS object (b7b44be3-fdcc-4916-974a-e9fdcf5f31b6)',1,'[{\"added\": {}}]',10,1),(186,'2023-06-23 06:55:00.910782','6cf8726b-d54b-45ee-8ee4-8e23985b03f6','Chùa Linh Ứng - Sân chùa - Đường đi',1,'[{\"added\": {}}]',11,1),(187,'2023-06-23 06:58:09.063621','75266ea8-84a3-48c8-a1cd-6d3f6a25173a','GPS object (75266ea8-84a3-48c8-a1cd-6d3f6a25173a)',1,'[{\"added\": {}}]',10,1),(188,'2023-06-23 06:58:28.349203','8df1db87-7816-44c0-8e41-0a5e8e8befd9','Chùa Linh Ứng - Sân chùa - Khu chụp ảnh',1,'[{\"added\": {}}]',11,1),(189,'2023-06-23 07:07:15.231989','6897abd3-cc2c-48f0-b668-ba3355bddc97','Chùa Linh Ứng - Vườn Lộc Uyển',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(190,'2023-06-23 08:35:46.371794','e832c846-9622-4c36-8ea1-a685f5beb0b2','GPS object (e832c846-9622-4c36-8ea1-a685f5beb0b2)',1,'[{\"added\": {}}]',10,1),(191,'2023-06-23 09:51:38.812339','6ffaf4c9-d3f1-4ecb-82f9-601432edbacc','Chùa Linh Ứng - Vườn Lâm Tì Ni',1,'[{\"added\": {}}]',11,1),(192,'2023-06-23 10:02:06.868986','68ceec7b-88bd-4b92-acaf-615919f73cdf','GPS object (68ceec7b-88bd-4b92-acaf-615919f73cdf)',1,'[{\"added\": {}}]',10,1),(193,'2023-06-23 10:15:11.361124','b71da7b0-bd80-42da-add4-95fc5561bd03','Chùa Linh Ứng - Quán Thế Âm Phật Đài - Cầu',1,'[{\"added\": {}}]',11,1),(194,'2023-06-23 10:22:45.965044','f9918888-cbc4-43a1-b409-e80ee4bef8ea','GPS object (f9918888-cbc4-43a1-b409-e80ee4bef8ea)',1,'[{\"added\": {}}]',10,1),(195,'2023-06-23 10:23:09.516780','10e6ab4e-fcb6-4e89-8773-526aa0eb4761','Chùa Linh Ứng - Sân chùa - đường đi',1,'[{\"added\": {}}]',11,1),(196,'2023-06-23 10:25:53.072116','d4cfd221-f6a1-4327-ac29-f6ee486c4371','GPS object (d4cfd221-f6a1-4327-ac29-f6ee486c4371)',1,'[{\"added\": {}}]',10,1),(197,'2023-06-23 10:26:15.226442','ee33fff2-ca7b-4a8a-87bd-3c0c2ae9be10','Chùa Linh Ứng - Quan Âm Phật Đài - Tượng Di Lạc',1,'[{\"added\": {}}]',11,1),(198,'2023-06-23 10:29:33.283644','335fa049-fceb-4a03-a981-376fe81b15c3','GPS object (335fa049-fceb-4a03-a981-376fe81b15c3)',1,'[{\"added\": {}}]',10,1),(199,'2023-06-23 10:30:02.982124','fbf8a6be-e6e5-4bf0-a074-33fe2d451457','Chùa Linh Ứng - Đền Thờ Tổ -Tượng Gạc Ma',1,'[{\"added\": {}}]',11,1),(200,'2023-06-23 10:31:18.966870','8741040f-1f35-4c63-bf2e-63b660febfba','GPS object (8741040f-1f35-4c63-bf2e-63b660febfba)',1,'[{\"added\": {}}]',10,1),(201,'2023-06-23 10:31:41.052086','ccc302f5-f1a5-426f-8f91-87746dbde0e3','Chùa Linh Ứng - Quan Âm Phật Đài - Đường đi',1,'[{\"added\": {}}]',11,1),(202,'2023-06-23 10:32:28.408834','0a17ad29-ad89-40bb-9c53-38bf5ba01433','GPS object (0a17ad29-ad89-40bb-9c53-38bf5ba01433)',1,'[{\"added\": {}}]',10,1),(203,'2023-06-23 10:32:51.139985','a73c5645-9133-4e58-b11e-a4aa5928dcdb','Chùa Linh Ứng - Quan Âm Phật Đài - Tháp Xá Lợi',1,'[{\"added\": {}}]',11,1),(204,'2023-06-23 10:37:15.832782','335fa049-fceb-4a03-a981-376fe81b15c3','GPS object (335fa049-fceb-4a03-a981-376fe81b15c3)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(205,'2023-06-23 10:37:17.640968','fbf8a6be-e6e5-4bf0-a074-33fe2d451457','Chùa Linh Ứng - Đền Thờ Tổ -Tượng Gạc Ma',2,'[]',11,1),(206,'2023-06-23 10:37:49.842835','c37c2696-7ca7-44a1-929e-42b4c31e0179','Đền thờ tổ - Đền Thờ Tổ -Tượng Gạc Ma',1,'[{\"added\": {}}]',12,1),(207,'2023-06-23 10:38:52.013638','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Đền thờ tổ',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(208,'2023-06-23 10:39:48.949277','86b6fa27-39a5-495b-b2ed-1e10a46d14c5','Quán Thế Âm Phật Đài - Cầu - Vườn Lâm Tì Ni',1,'[{\"added\": {}}]',12,1),(209,'2023-06-23 10:40:10.452174','6909d05f-a167-4092-ae77-3d582adebf23','Đền thờ tổ - Vườn Lâm Tì Ni',1,'[{\"added\": {}}]',12,1),(210,'2023-06-23 16:18:02.720247','6ffaf4c9-d3f1-4ecb-82f9-601432edbacc','Chùa Linh Ứng - Vườn Lâm Tì Ni',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(211,'2023-06-23 16:21:03.916441','b71da7b0-bd80-42da-add4-95fc5561bd03','Chùa Linh Ứng - Quán Thế Âm Phật Đài - Cầu',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(212,'2023-06-23 16:23:17.587140','fbf8a6be-e6e5-4bf0-a074-33fe2d451457','Chùa Linh Ứng - Đền Thờ Tổ -Tượng Gạc Ma',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(213,'2023-06-23 16:23:56.343759','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Đền thờ tổ',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(214,'2023-06-23 16:24:52.978997','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(215,'2023-06-23 16:27:14.341269','ff540dcc-1800-41b9-852a-e684728a82ee','Sân Chùa - Đường đi - Sân chùa - Tượng Thích Ca',1,'[{\"added\": {}}]',12,1),(216,'2023-06-23 16:28:38.715917','8891ceea-2038-4d9a-bcbd-658b878afdd4','Sân Chùa - Đường đi - Vườn Lộc Uyển',1,'[{\"added\": {}}]',12,1),(217,'2023-06-24 05:36:40.210269','fbf8a6be-e6e5-4bf0-a074-33fe2d451457','Chùa Linh Ứng - Đền Thờ Tổ -Tượng Gạc Ma',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(218,'2023-06-24 05:41:07.441383','e760f27d-3424-4b51-85d2-18226c9b9ae5','GPS object (e760f27d-3424-4b51-85d2-18226c9b9ae5)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(219,'2023-06-24 05:41:13.634733','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',2,'[]',11,1),(220,'2023-06-24 05:42:21.094564','98aa6afc-cee7-4091-b2b2-12e325cc04ad','Cổng chùa - Quan Âm Phật Đài',1,'[{\"added\": {}}]',12,1),(221,'2023-06-24 05:46:32.487223','c170d808-029e-4252-8d00-a1d732d25f71','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Phật Nằm',2,'[{\"changed\": {\"fields\": [\"Name\", \"PoseHeading\"]}}]',11,1),(222,'2023-06-24 05:47:12.500779','c170d808-029e-4252-8d00-a1d732d25f71','Chùa Linh Ứng - Tháp Xá Lợi - Tượng Phật Nằm',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(223,'2023-06-24 05:47:54.030767','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(224,'2023-06-24 05:48:44.320244','269831bb-e19f-44f5-b6a3-03100c02b8df','GPS object (269831bb-e19f-44f5-b6a3-03100c02b8df)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(225,'2023-06-24 05:48:46.734287','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Đền thờ tổ',2,'[]',11,1),(226,'2023-06-24 05:50:24.925263','269831bb-e19f-44f5-b6a3-03100c02b8df','GPS object (269831bb-e19f-44f5-b6a3-03100c02b8df)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(227,'2023-06-24 05:50:27.340591','720f6dc6-e90c-4a47-95b2-af5b0517ce84','Chùa Linh Ứng - Đền thờ tổ',2,'[]',11,1),(228,'2023-06-24 05:53:11.703645','e760f27d-3424-4b51-85d2-18226c9b9ae5','GPS object (e760f27d-3424-4b51-85d2-18226c9b9ae5)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(229,'2023-06-24 05:53:13.522972','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',2,'[]',11,1),(230,'2023-06-24 05:53:57.673791','e760f27d-3424-4b51-85d2-18226c9b9ae5','GPS object (e760f27d-3424-4b51-85d2-18226c9b9ae5)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(231,'2023-06-24 05:54:06.084539','0eafaaf6-dad2-4b3a-a619-685b1bdc923a','Chùa Linh Ứng - Chính điện',2,'[]',11,1),(232,'2023-06-24 05:55:02.751216','8c02019d-bf9d-4328-988d-659caae30f6a','GPS object (8c02019d-bf9d-4328-988d-659caae30f6a)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(233,'2023-06-24 05:55:15.630284','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[]',11,1),(234,'2023-06-24 05:57:00.803253','53c4392e-6481-401d-a505-6b6c726efab9','Chùa Linh Ứng - Trước chính điện',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(235,'2023-06-24 08:06:21.044410','a435fd4f-ba1c-444b-99a1-ceb72152f2ad','Quan Âm Phật Đài - Tháp Xá Lợi - Quán Thế Âm Phật Đài - Cầu',1,'[{\"added\": {}}]',12,1),(236,'2023-06-24 08:07:53.564764','211ed3ba-a66c-4be8-97c7-a398acfb7f60','Quan Âm Phật Đài - Tháp Xá Lợi - Quan Âm Phật Đài',1,'[{\"added\": {}}]',12,1),(237,'2023-06-24 08:13:11.938446','9237eaff-24e6-494a-8558-dfb1255937cc','Sân chùa - Đường đi - Sân chùa - đường đi',1,'[{\"added\": {}}]',12,1),(238,'2023-06-24 08:13:19.174634','9237eaff-24e6-494a-8558-dfb1255937cc','Sân chùa - Đường đi - Sân chùa - đường đi',2,'[]',12,1),(239,'2023-06-24 08:13:21.041966','9237eaff-24e6-494a-8558-dfb1255937cc','Sân chùa - Đường đi - Sân chùa - đường đi',2,'[]',12,1),(240,'2023-06-24 08:13:47.504825','a378dcea-44f6-4216-b2f6-8442613fc709','GPS object (a378dcea-44f6-4216-b2f6-8442613fc709)',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longtitude\"]}}]',10,1),(241,'2023-06-24 08:14:04.640841','949b9ed8-6402-49d2-a288-cc8cbbf50c20','Sân chùa - Đường đi - Sân chùa - Đường đi',1,'[{\"added\": {}}]',12,1),(242,'2023-06-24 08:34:38.999224','a73c5645-9133-4e58-b11e-a4aa5928dcdb','Chùa Linh Ứng - Quan Âm Phật Đài - Tháp Xá Lợi',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(243,'2023-06-24 08:36:55.413270','3612624b-3c28-414d-a95b-bb8d476820fd','Quan Âm Phật Đài - Tượng Di Lạc - Quan Âm Phật Đài',1,'[{\"added\": {}}]',12,1),(244,'2023-06-24 08:40:49.134657','fbf8a6be-e6e5-4bf0-a074-33fe2d451457','Chùa Linh Ứng - Đền Thờ Tổ -Tượng Gạc Ma',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(245,'2023-06-29 08:10:05.454520','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(246,'2023-06-29 08:19:05.079124','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(247,'2023-06-29 08:20:03.633046','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[{\"changed\": {\"fields\": [\"PoseHeading\"]}}]',11,1),(248,'2023-06-29 08:24:49.139921','f451a15a-d01c-4a7d-b18d-631137aff8a6','Chùa Linh Ứng - Cổng chùa',2,'[]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api_category','category'),(13,'api_marker','marker'),(10,'api_node','gps'),(12,'api_node','link'),(11,'api_node','node'),(9,'api_place','information'),(8,'api_place','place'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-12 03:36:36.027821'),(2,'auth','0001_initial','2023-05-12 03:36:36.328786'),(3,'admin','0001_initial','2023-05-12 03:36:36.408579'),(4,'admin','0002_logentry_remove_auto_add','2023-05-12 03:36:36.416242'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-12 03:36:36.427245'),(6,'api_category','0001_initial','2023-05-12 03:36:36.448383'),(7,'api_place','0001_initial','2023-05-12 03:36:36.559375'),(8,'api_node','0001_initial','2023-05-12 03:36:36.659373'),(9,'contenttypes','0002_remove_content_type_name','2023-05-12 03:36:36.725378'),(10,'auth','0002_alter_permission_name_max_length','2023-05-12 03:36:36.780050'),(11,'auth','0003_alter_user_email_max_length','2023-05-12 03:36:36.811047'),(12,'auth','0004_alter_user_username_opts','2023-05-12 03:36:36.825051'),(13,'auth','0005_alter_user_last_login_null','2023-05-12 03:36:36.879053'),(14,'auth','0006_require_contenttypes_0002','2023-05-12 03:36:36.886079'),(15,'auth','0007_alter_validators_add_error_messages','2023-05-12 03:36:36.895057'),(16,'auth','0008_alter_user_username_max_length','2023-05-12 03:36:36.957050'),(17,'auth','0009_alter_user_last_name_max_length','2023-05-12 03:36:37.007055'),(18,'auth','0010_alter_group_name_max_length','2023-05-12 03:36:37.030048'),(19,'auth','0011_update_proxy_permissions','2023-05-12 03:36:37.044049'),(20,'auth','0012_alter_user_first_name_max_length','2023-05-12 03:36:37.098049'),(21,'sessions','0001_initial','2023-05-12 03:36:37.141047'),(22,'api_node','0002_link','2023-05-12 09:06:38.054167'),(23,'api_node','0003_node_poseheading','2023-05-13 12:36:29.700346'),(24,'api_node','0004_node_first','2023-05-13 12:52:50.333129'),(25,'api_node','0005_alter_node_options','2023-05-18 14:55:40.376343'),(26,'api_marker','0001_initial','2023-05-21 13:33:32.717881'),(27,'api_place','0002_alter_place_thumbnail','2023-05-21 13:33:32.916886'),(28,'api_marker','0002_marker_node','2023-05-21 13:36:35.412539'),(29,'api_node','0006_auto_20230524_2117','2023-05-24 14:17:51.575130'),(30,'api_node','0007_node_special_node','2023-06-04 12:47:46.388924'),(31,'api_node','0008_node_special_name','2023-06-04 12:56:13.816695'),(32,'api_node','0009_auto_20230608_2136','2023-06-08 14:36:24.754338'),(33,'api_place','0003_auto_20230608_2318','2023-06-08 16:18:20.001243'),(34,'api_node','0010_alter_node_panoma','2023-06-11 08:39:16.225794'),(35,'api_node','0011_alter_node_thumbnail','2023-06-11 09:09:22.414010');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `django_session` VALUES ('0kbmakgcuaqubg9kf00yo0skvtvgknc7','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q0HFN:H-lsJrI8LDrYYv-03gMuaDJyspSlmUl15oMWXzkh8i0','2023-06-03 07:43:25.469586'),('2ylxo46kx71tt5sdbwnyshd7xbxgqv9z','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q6rrw:AQMxH-fzsBi1VD3VPBntw-jIH-s70VCCAPLbN5GcT9w','2023-06-21 12:02:28.598727'),('3veh78aywvspa5zau2oylywab3zr27r4','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1qATVL:ZWpAgYUPYp5mO0A1GqZNRnS_xE37WMPAKShqkWBHDeM','2023-07-01 10:50:03.803054'),('4ptba8odn0wtgst2g507k8nlmlm5dti5','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1qAmYY:iqLjIjaGXVGcfvFPYEjou20hgaYQNocWagDqcom1cj8','2023-07-02 07:10:38.873774'),('6f1tbseu7tifxur8vuees6kw8vspyvqe','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q0HAT:mRJX9a_2Nr8Hke63jig8qatuQGl0-m4__y8OM9aOajo','2023-06-03 07:38:21.253679'),('intmjilfvhuszyd0hy1syjfkyra7p712','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q0hol:e8FWMPQN4nenv-7V2bYEudcpmPRc1i8WL7u5dGcmngM','2023-06-04 12:05:43.079481'),('kq6p06mtvgmaixuigfe1ex9iixyatdvk','.eJxVjEEOwiAQRe_C2hAoDIJL9z0DGYZRqgaS0q6Md7dNutDtf-_9t4i4LiWunec4ZXERWpx-t4T05LqD_MB6b5JaXeYpyV2RB-1ybJlf18P9OyjYy1aDNzQEqxRmPlOAm9aoKbPCwAosk3XoIClSRN6a7DbRwOA8gYUQrPh8AeL2N5U:1pxJaj:pqyOJQoS3hbfFVHYj3yBaUlMbu_DZjBRFdmkxiRgwo4','2023-05-26 03:37:13.205528'),('tns82rlbn7uzhjoc9nkwnj1atltjvowk','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q5n9X:9QUbBymifabL6UPU1UfsXNNUyDshfvm7z-pRnS9O2R0','2023-06-18 12:48:11.137861'),('vrlr356vk23bzlpmcr59nid6od1eyq1x','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q5mmh:FpkfL2z7om6nQ3trfVLKI48X5_pnmdZsjZE9XONNU5U','2023-06-18 12:24:35.238561'),('woeu4c44t2gj5q133zdusb2uwjxbpuai','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q74VT:QdxFRdop75rukpetN9dAKoftTrxbntLlVpgjrqHnpb8','2023-06-22 01:32:07.533965'),('xdbgtdxixxztlx8c1js682m4dvc980af','.eJxVjMsOwiAQRf-FtSE8Kh1cuu83NMMwSNVAUtqV8d-VpAvd3nPOfYkZ9y3Pe-N1XqK4CC1Ov1tAenDpIN6x3KqkWrZ1CbIr8qBNTjXy83q4fwcZW_7WLrjBOmPSmXjwBpJBzwG0D6wjkurQkgJHDrw3RDQmhTZqoBF0SuL9AdlSN98:1q7xL5:CJ0QDyD8pyv3M0MGNURO0o1-hUb0_0AHiP9wlNkSZSY','2023-06-24 12:05:03.332560');
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

-- Dump completed on 2023-06-29 17:01:20
