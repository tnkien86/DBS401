CREATE DATABASE  IF NOT EXISTS `dbs401`; --!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' 
USE `dbs401`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: dbs401
-- ------------------------------------------------------
-- Server version	8.0.25

-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!50503 SET NAMES utf8 */;
-- /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
-- /*!40103 SET TIME_ZONE='+00:00' */;
-- /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
-- /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
-- /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- /*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
-- /*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Christa','Kawayan','$296.60','parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id'),(2,'Karissa','Kosong','$163.83','quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam'),(3,'Aubrey','Phú Vang','$274.60','lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et'),(4,'Catlee','Teberda','$119.52','at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget'),(5,'Annabela','Malaga','$237.13','viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla'),(6,'Adrianne','Avelar','$169.30','sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra'),(7,'Bidget','Diaoling','$131.09','risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus'),(8,'Kinna','Waldbredimus','$217.57','mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus'),(9,'Regan','Hasuda','$211.74','mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate'),(10,'Carolina','Przybyszówka','$190.90','interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor'),(11,'Abbie','Hanušovice','$226.37','tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque'),(12,'Ethelind','Duwe','$269.93','accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor'),(13,'Lizette','Kabuynan','$278.30','tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum'),(14,'Shoshanna','Basel','$193.48','risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula'),(15,'Kerri','Prokhladnyy','$130.91','metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula'),(16,'Carmella','Parque Industrial','$273.19','mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue'),(17,'Coral','Qiaodong','$190.44','neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras'),(18,'Bunny','Mlawat','$261.25','vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum'),(19,'Patrice','Limanowa','$169.62','nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum'),(20,'Elladine','Bulawin','$200.58','ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam'),(21,'Evie','Poputnaya','$286.83','at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante'),(22,'Gretal','Koukkuniemi','$271.70','lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum'),(23,'Nikolia','Cúa','$148.63','luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium'),(24,'Lia','Amiens','$215.22','praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget'),(25,'Georgina','Lakhdenpokh’ya','$110.66','volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet'),(26,'Caren','Calimete','$169.78','porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper'),(27,'Crissy','Venda','$127.57','nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit'),(28,'Sibeal','Bayangol','$244.66','elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in'),(29,'Ardeen','Manzë','$207.75','sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in'),(30,'Cary','Mỹ Tho','$221.17','in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin');
-- /*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `credit_card` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- /*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
-- /*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lmcmeanma0','Skawica','Avavee','627de89ecc2ef547bf75eb04640d4ad6','Female','3584285716984328'),(2,'bdimblebee1','Jiuxian','Geba','61110888f0f81a7cee82e90ac98960a5','Male','3563090166772032'),(3,'ebottell2','Kawerau','Gigabox','88a13e4c3c1e0aa0d3c5951ebe534161','Male','5007669099471595'),(4,'bfurmston3','Örebro','Kare','c004cc6322edf57b60e6caab29a9fe00','Female','372301934637515'),(5,'hbras4','Baganga','Mymm','57f61015477b56dc2747b68464a58e88','Male','3588813741600589'),(6,'akinnon5','Maripipi','Realblab','9d61ccda73698d48d379782599e10103','Female','4508759430604819'),(7,'baldwick6','Xicheng','Voomm','4492eba2e76996649a074490c7660c36','Female','3574920174040310'),(8,'ebridger7','Paitan Este','Kwideo','7a9886a9d0821085e0edfe4e6bf4df67','Male','6709645804026398301'),(9,'idibbs8','Brgy. Nalook, kalibo','Quaxo','471100cf436ab47cd6302809434daa70','Female','3538128188413409'),(10,'tmarple9','Badung','Eadel','6255980fcf44069689c1f6fd0b513227','Male','5100171960553110'),(11,'lmacdermota','Oslo','Jayo','0972af935d3d07fcffd4fb74b43df62e','Female','560223233139169594'),(12,'ageckb','Boroko','Jetwire','49afd0725fb1364084356255da639cb5','Female','6394085716715844'),(13,'tpiserc','Río Gallegos','Mita','722d71a1e1b853da74ed15b436e29abd','Male','3533529761217445'),(14,'mrasord','Roissy Charles-de-Gaulle','Dabjam','feef2d28c6627609139c1662db6b97b8','Female','3535431071657741'),(15,'wbroxape','Mammari','Minyx','af9e651e641280aed91086afc9015264','Male','6762365481912162'),(16,'rholmef','Ardazubre','Topiclounge','23ce4df07d03caebd73ccefcbc10b4d7','Female','3587445462731946'),(17,'ldolesg','Ljungbyholm','Oyoyo','234d51305d8408a7760bf781a1c9b153','Female','3565245859180798'),(18,'vsternh','Kalengwa','Kwimbee','7595d1f4875bfdd40c160ca1ad6a36ef','Male','3544852015648794'),(19,'cdevericksi','Santa Cruz Cabrália','Browsetype','25497d0114a94612733f08405e74b07b','Female','633378246007991608'),(20,'kstobiej','São Bento','Fadeo','0bb974b12b49e99fb278cca43a1e9cf9','Male','3566705269778852'),(21,'dstronoughk','Boromlya','Livepath','20e14e125dd806ce04c59d8a5b5df390','Female','5578291723781783'),(22,'btanderl','Aengceleng','Jabbersphere','72e2f4589fb0de55c296abb6041d2d28','Female','3578446247084503'),(23,'npolsinm','Taquile','Skipfire','d6d785e4760748d1f2d4a794e31e16a0','Male','5585799784616780'),(24,'tdreakinn','Zhuxi Chengguanzhen','Oyoloo','a43376cb3bf2cd4e44f734821f9ff6a1','Male','4905152467525777'),(25,'hdobrowskio','Buritis','Eidel','77a990dfb1b7a1a2fdccea65d6eb2f45','Male','5431264803161132'),(26,'gspinellap','Sōka','Brainsphere','ad72539786cc29af47e01205ebf1afee','Female','3530078989329080'),(27,'adixsonq','Qimeng','Zoonder','fa05e416ac89a08f07a009faf36a740d','Female','3543872207870015'),(28,'hbeckinsaler','Hudson','Zoomdog','da91bab310fe51df27574a35a1751416','Female','344492549083867'),(29,'aendecotts','Bagong Barrio','Vinder','41ad8601ec7acc20fb83476890c2dd89','Male','201932875548639'),(30,'mscuset','Caoping','Ozu','dd7b631d3f5133f54d5c41412892e03c','Male','30381818664276'),(31,'ccrottyu','Svetlyy','Bubblemix','371ba1bc8ece7fcb36f913cb5b3fd5a1','Male','5108759661722992'),(32,'aprielv','Wuyun','LiveZ','ccbeea725f3c360dda83c58f710ebacc','Male','3539679626988518'),(33,'nmourantw','Sydney','Dabvine','863b09bbbb9a21ae13b9e7b018cdb603','Male','6334979404611884113'),(34,'bbaroschx','Plaški','Yoveo','509a2c75fa6f8f6262ad9081ef7eaaa2','Female','633306799027977608'),(35,'ccrebotty','Neftçala','Muxo','a93eec73ceac52461e796d409bb59467','Male','3555648598010808'),(36,'wclemenzaz','Upper Hell\'s Gate','Jetpulse','5d2b43a9f011cdee3980ce68bbe07706','Female','4913750390247995'),(37,'bhargie10','Novi Vinodolski','Skyba','2d36782d3d4cfaa78ecb70374ab0a5fa','Female','4917650943556858'),(38,'nariss11','Renyi','Buzzster','ff6c25dcb134ca862688231fda319b1f','Female','560223269045409385'),(39,'ecaesar12','Téra','Latz','e8d82c007a8b878b2f4b08248dc36829','Female','3529177007874508'),(40,'amarquis13','Recarei','Topicware','108b1b72e3cca99e20ff74350a341848','Male','3545982705372774'),(41,'sreinisch14','Megulung','Zoovu','e9a9b1fe165ce2e20c3e19dd77bc7b65','Male','3588084389644459'),(42,'mgress15','Hallstahammar','Kanoodle','ccb9bffe3be882bda089b189401034d3','Female','3563390591488208'),(43,'svern16','Satsumasendai','Zoomlounge','18cfe6d1f4c8109b8eaf893072bf6ac2','Female','67094686143832204'),(44,'gthirkettle17','Colquechaca','Gabtype','dc891ab25213a7f833940f267f226f12','Female','5100131896232932'),(45,'jdudden18','Monte Carmelo','Skilith','e7676b225e8c5647d7f1a0f4ca6d9d08','Male','3541372689034562'),(46,'aeborall19','Xiajiashan','Ooba','375db56a3e19953f9acad59379e78aef','Female','5100145540137552'),(47,'rweathers1a','Puerto Berrío','Thoughtsphere','3674c979bdf057737de1f0473ae64cc7','Male','3552227114409274'),(48,'bbuesden1b','Kuala Lumpur','Skyble','04e3c313ff1c61b8c72b5ffdfec1f0f9','Male','378345654751117'),(49,'hwaplinton1c','Jinan-gun','Podcat','862ce852b60bfe51706710290abec1d1','Female','3540328997000670'),(50,'oegleton1d','Op','Linklinks','d965b863f7f2df525d849bbd7787b344','Male','4917745571216948'),(51,'langtumuadong','Ho Chi Minh','FPT Sotfware','b475051d4a80f7b2af72affb1098ad8c','Male','1111111111111111');
-- /*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
-- /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

-- /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
-- /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
-- /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20  1:58:28
