-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: antrian
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

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
-- Table structure for table `antrian`
--

DROP TABLE IF EXISTS `antrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antrian` (
  `id_antrian` int(50) NOT NULL,
  `nomor_antrian` int(50) NOT NULL,
  PRIMARY KEY (`id_antrian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antrian`
--

LOCK TABLES `antrian` WRITE;
/*!40000 ALTER TABLE `antrian` DISABLE KEYS */;
INSERT INTO `antrian` VALUES (1,1);
/*!40000 ALTER TABLE `antrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id_history` int(50) NOT NULL AUTO_INCREMENT,
  `ktp` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nomor_antrian` int(50) NOT NULL,
  `immortal` int(50) NOT NULL,
  `jenis_besuk` varchar(200) NOT NULL,
  `foto_diri` varchar(200) NOT NULL,
  `pengikut_nama` varchar(200) NOT NULL,
  `pengikut_ktp` varchar(200) NOT NULL,
  `pengikut_foto_diri` varchar(200) NOT NULL,
  `pengikut_foto_ktp` varchar(200) NOT NULL,
  `nama_alias` varchar(200) NOT NULL,
  `ktp_alias` varchar(200) NOT NULL,
  `qrcode` varchar(200) NOT NULL,
  `surat_besukan` varchar(200) NOT NULL,
  `nama_dibesuk` varchar(200) NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `foto_ktp` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `verifikasi` varchar(200) NOT NULL,
  `nomor_hp` varchar(200) NOT NULL,
  `foto_barang_titipan` varchar(200) NOT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (6,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','hai','45343543242','6d2df934730cfc98e81c1c990693fe34.jpg','8e342860daab3a65b50b07be2d5f2e7d.jpg','ari','4545435453','ari.png','f914eb8650f853a11c4f75a946d44d5b.jpg','hai bin hai','2018-04-27 03:54:54','','','','',''),(8,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','anjing','524254254254','9c1fb50246e02fe7934885045693024c.jpg','f512d9d67a1a3e302b58ba41dd3b3c6b.jpg','ari','4545435453','ari.png','7fbcd555f2bcb55cc1b6a60f9da532dc.jpg','hai bin kucing','2018-04-28 00:40:51','','','','',''),(10,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','hantu','245452425','d32485d2aa26ed2a06412e2dea79d0f4.jpg','7f26c81836178b55357961e6d2fe038f.jpg','ari','4545435453','ari.png','718d0216e6c563a40633de17488dc7c5.jpg','kucing bin anjing','2018-04-28 01:02:30','','','','',''),(12,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','hewan','247545433','b37dd8238e0eeea9211005b44ca9587f.jpg','c8211ad3238a3459091330c7c6b95589.jpg','ari','4545435453','ari.png','ab100948b0067ecfc14672d35823f511.jpg','han bin han','2018-04-28 01:07:24','','','','',''),(15,'4646843384','kucing','laki-laki','kota','kucing','kucing',1,0,'besuk_tahanan','58766833d9ca15f552dfffb4370b321f.jpg','halo','43514534534','be273ab1e9157ccfe8eab491af92c012.jpg','cf6cdf90de3c55ded24bc698343f1eae.jpg','kucing','4646843384','kucing.png','7961abeab2309c09a9960214f686b13b.jpg','hai bin halo','2018-04-28 23:53:38','','menikah','','',''),(19,'3151351385185531','hantu','perempuan','hantu','hantu','hantu',1,0,'besuk_napi','b3cd5d69057276fb05aa493da0f83617.jpg','hantu','3545345343','8ffe8c62be28958db4411c1a5e47359e.jpg','4c9283c3cc16c54fc0f2d4cc19f9b7ba.jpg','hantu','3151351385185531','hantu.png','','hantu bin hantu','2018-04-28 23:58:50','ded7c50287a8ef60a9c9d31c07ef1ed0.jpg','tidak menikah','','',''),(23,'3151351385185531','hantu','perempuan','hantu','hantu','hantu',1,0,'besuk_tahanan','b3cd5d69057276fb05aa493da0f83617.jpg','kjljlk','24454538','10796392ed5d8ee2138aaf4035dfc263.jpg','88ab163127686181c5cd4b2566edcb22.jpg','hantu','3151351385185531','hantu.png','7a6d50e6ec302748f55a41b5c0e88c82.jpg','lakjslkfjklsj','2018-04-29 00:06:40','ded7c50287a8ef60a9c9d31c07ef1ed0.jpg','tidak menikah','','',''),(27,'3151351385185531','hantu','perempuan','hantu','hantu','hantu',1,0,'besuk_napi','b3cd5d69057276fb05aa493da0f83617.jpg','lkjlkjkljkljkl','4534534354','342cc9f63b9410f5b01c5093f7d8f1ca.jpg','a6c5290fc4049967c8c66328c41e9662.jpg','hantu','3151351385185531','hantu.png','','kajlkfjlaksjfl;kj','2018-04-29 00:07:53','ded7c50287a8ef60a9c9d31c07ef1ed0.jpg','tidak menikah','','',''),(29,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','3453435453453453','54cd49d9083ab68a25de224a8f301a1b.jpg','c80ee526a7ac536afd5b4b7708fc1f8d.jpg','ari','4545435453','ari.png','d1f62743536c35e5d23e1ab0abb36508.jpg','kucing bin kucing','2018-05-05 17:35:21','','','','',''),(33,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','35453435444','039aa27af7ff96a3eb4cb6aff3923efc.jpg','02ff43924251316b4546efbf5e5b2136.jpg','ari','4545435453','ari.png','175143f14602f0001074d31fcad651f9.jpg','kucing bin kucing','2018-05-06 00:34:41','','','','',''),(37,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','4545345345','9fe15a7e9cc0deb999b6401099dd554f.jpg','6d160e83f9c538144876196e416bd931.jpg','ari','4545435453','ari.png','104b7bdf55dccd21d999d728278fb1e6.jpg','kucing bin kucing','2018-05-05 16:46:54','','','','',''),(41,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','4131531351','38e4e1b4d9ace0804ef6a28f8dddd968.jpg','6caccaaa9d99ed5a9c37790c19e52f71.jpg','ari','4545435453','ari.png','248c582a0ee786daabd7a37c5e0d04c0.jpg','kucing bin kucing','2018-05-05 16:55:47','','','tidak','',''),(43,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','224254534534','0993313f684976a26f59f95646f06db0.jpg','f75dda8f763ce2c11c619a4f6ba8c283.jpg','ari','4545435453','ari.png','cdddcc584778cdda36b1c99371183cb7.jpg','kucing bin kucing','2018-05-05 16:57:21','','','tidak','',''),(47,'4545435453','ari','laki-laki','tarakan','ari','ari',4,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','43435435','d2e2e4acd3eb302ef9844e4575459dc9.jpg','dea92a361a37b8392523189844493630.jpg','ari','4545435453','ari_antrian.png','bd453ad578df9cc9017d9c8fdfe3fd18.jpg','kucing bin kucing','2018-05-06 10:01:26','','','iya','',''),(59,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','kucing','3547534354354354','c9859808ec43c1347d02686b57f52d09.jpg','3d220c33748ad396baa717fe652bd88e.jpg','ari','4545435453','ari_antrian.png','49609bd34895e0b288469c2450b6dbd3.jpg','kucing bin kucing','2018-06-28 17:32:27','','','iya','',''),(63,'4545435453','ari','laki-laki','tarakan','ari','ari',6,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','ari','4545435453','ari_antrian.png','','a','2018-06-28 17:38:06','','','iya','',''),(67,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','ari','4545435453','ari_antrian.png','','a','2018-06-28 18:18:10','','','iya','',''),(71,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','ari','4545435453','ari_antrian.png','','a','2018-06-28 18:21:09','','','iya','',''),(75,'4545435453','ari','laki-laki','tarakan','ari','ari',1,0,'besuk_tahanan','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','ari','4545435453','ari_antrian.png','','a','2018-06-28 19:05:32','','','iya','',''),(80,'1000541234509','Zen','laki-laki','Jalan Cipto Mangunkusumo, Loa Janan Ilir, Samarinda Seberang','zen','zen',1,0,'besuk_tahanan','341f610904dda35df313c06c0c2b8a0a.jpg','','','','','Zen','1000541234509','zen_antrian.png','585fae7e396d04caa5f0f2c5d473dc2d.jpg','Orang bin Orang','2018-08-23 04:21:02','4a76d5e3c758be1d121f3b3565788394.jpg','tidak menikah','iya','',''),(85,'1000541234509','Zen','laki-laki','Jalan Cipto Mangunkusumo, Loa Janan Ilir, Samarinda Seberang','zen','zen',1,0,'besuk_tahanan','341f610904dda35df313c06c0c2b8a0a.jpg','','','','','Zen','1000541234509','zen_antrian.png','3859cc8344cba02eaf14de51fbef551e.jpg','Siapa bin Siapa','2018-08-23 04:40:19','4a76d5e3c758be1d121f3b3565788394.jpg','tidak menikah','iya','',''),(90,'1000541234509','Zen','laki-laki','Jalan Cipto Mangunkusumo, Loa Janan Ilir, Samarinda Seberang','zen','zen',1,0,'besuk_tahanan','341f610904dda35df313c06c0c2b8a0a.jpg','','','','','Zen','1000541234509','zen_antrian.png','3de21f11cf733f82b4dfde0d45a8c8c7.jpg','Siapa bin Siapa','2018-08-23 04:45:29','4a76d5e3c758be1d121f3b3565788394.jpg','tidak menikah','iya','',''),(107,'3535435435453453','kue','laki-laki','Kue','kue','kue',1,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','kue','3535435435453453','kue_antrian.png','','Kucing bin Tikus','2018-08-28 20:36:00','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','iya','35435135343543',''),(116,'3535435435453453','kue','laki-laki','Kue','kue','kue',1,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','kue','3535435435453453','kue_antrian.png','','Kucing bin Tikus','2018-08-28 20:37:48','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','iya','35435135343543',''),(161,'3535435435453453','kue','laki-laki','Kue','kue','kue',1,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','kue','3535435435453453','kue_antrian.png','','hai bin haaaaai','2018-08-28 21:11:16','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','iya','35435135343543',''),(170,'3535435435453453','kue','laki-laki','Kue','kue','kue',1,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','kue','3535435435453453','kue_antrian.png','','kucing bin halo','2018-08-28 21:16:18','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','iya','35435135343543','');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(50) NOT NULL AUTO_INCREMENT,
  `ktp` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nomor_antrian` int(50) NOT NULL,
  `immortal` int(50) NOT NULL,
  `jenis_besuk` varchar(200) NOT NULL,
  `foto_diri` varchar(200) NOT NULL,
  `pengikut_nama` varchar(200) NOT NULL,
  `pengikut_ktp` varchar(200) NOT NULL,
  `pengikut_foto_diri` varchar(200) NOT NULL,
  `pengikut_foto_ktp` varchar(200) NOT NULL,
  `nama_alias` varchar(200) NOT NULL,
  `ktp_alias` varchar(200) NOT NULL,
  `qrcode` varchar(200) NOT NULL,
  `surat_besukan` varchar(200) NOT NULL,
  `nama_dibesuk` varchar(200) NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `foto_ktp` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `verifikasi` varchar(200) NOT NULL,
  `verifikasi_reload` varchar(200) NOT NULL,
  `nomor_hp` varchar(200) NOT NULL,
  `foto_barang_titipan` varchar(200) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (18,'123456','Admin','laki-laki','LINE Webtoon','admin','admin',0,0,'','','','','','','','','','','','','','','','','',''),(44,'4545435453','ari','laki-laki','tarakan','ari','ari',0,0,'','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','','','','','','','','','','','',''),(45,'4646843384','kucing','laki-laki','kota','kucing','kucing',0,0,'','58766833d9ca15f552dfffb4370b321f.jpg','','','','','','','','','','','','menikah','','','',''),(46,'3151351385185531','hantu','perempuan','hantu','hantu','hantu',0,0,'','b3cd5d69057276fb05aa493da0f83617.jpg','','','','','','','','','','','ded7c50287a8ef60a9c9d31c07ef1ed0.jpg','tidak menikah','','','',''),(47,'1000541234509','Zen','laki-laki','Jalan Cipto Mangunkusumo, Loa Janan Ilir, Samarinda Seberang','zen','zen',0,0,'','341f610904dda35df313c06c0c2b8a0a.jpg','','','','','','','','','','','4a76d5e3c758be1d121f3b3565788394.jpg','tidak menikah','','','',''),(48,'4343543643453543','Fauzi','laki-laki','Jalan AWS','allahuakbar','12345678',0,0,'','316ba4e73319c964572764e9aa4d2215.jpg','','','','','','','','','','','4c0ec6defcb57bf6bb04af7008d68850.jpg','menikah','','','',''),(49,'463435453435453','Tikus','perempuan','Kandang','tikus','tikus',0,0,'','bf1c8764f5565822212f04fa9c34c991.png','','','','','','','','','','','','tidak menikah','','','',''),(50,'4351351358135135','Dewi','perempuan','Bontang','dewi','dewi',0,0,'','d2d97926d5b878d87da83864ad2a4672.jpg','','','','','','','','','','','f454269950655fdd0d0f537b597a66b5.jpg','tidak menikah','','','5343541354',''),(51,'3535435435453453','kue','laki-laki','Kue','kue','kue',0,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','','','','','','','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','','','35435135343543','2524218a95a5651bce73fc31afc5350d.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-28 21:21:03
