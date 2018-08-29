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
  `nomor_hp_alias` varchar(200) NOT NULL,
  `foto_penitip` varchar(200) NOT NULL,
  `foto_ktp_penitip` varchar(200) NOT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
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
  `nomor_hp_alias` varchar(200) NOT NULL,
  `foto_penitip` varchar(200) NOT NULL,
  `foto_ktp_penitip` varchar(200) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (18,'123456','Admin','laki-laki','LINE Webtoon','admin','admin',0,0,'','','','','','','','','','','','','','','','','','','','',''),(44,'4545435453','ari','laki-laki','tarakan','ari','ari',0,0,'','3f00fd501b1a9fe0165178252734a0bb.jpg','','','','','','','','','','','','','','','','','','',''),(45,'4646843384','kucing','laki-laki','kota','kucing','kucing',0,0,'','58766833d9ca15f552dfffb4370b321f.jpg','','','','','','','','','','','','menikah','','','','','','',''),(46,'3151351385185531','hantu','perempuan','hantu','hantu','hantu',0,0,'','b3cd5d69057276fb05aa493da0f83617.jpg','','','','','','','','','','','ded7c50287a8ef60a9c9d31c07ef1ed0.jpg','tidak menikah','','','','','','',''),(47,'1000541234509','Zen','laki-laki','Jalan Cipto Mangunkusumo, Loa Janan Ilir, Samarinda Seberang','zen','zen',0,0,'','341f610904dda35df313c06c0c2b8a0a.jpg','','','','','Zen','1000541234509','zen_booking.png','','hai bin halo','2018-08-29 09:11:47','4a76d5e3c758be1d121f3b3565788394.jpg','tidak menikah','tidak','','','33b0a6c79d1fc564cf2bfdcdda33e908.jpg','4351381381','8eb11f214c62aa308e641155b4501ece.jpg','048874735eb81b6d048f9c06f513e797.jpg'),(48,'4343543643453543','Fauzi','laki-laki','Jalan AWS','allahuakbar','12345678',0,0,'','316ba4e73319c964572764e9aa4d2215.jpg','','','','','','','','','','','4c0ec6defcb57bf6bb04af7008d68850.jpg','menikah','','','','','','',''),(49,'463435453435453','Tikus','perempuan','Kandang','tikus','tikus',0,0,'','bf1c8764f5565822212f04fa9c34c991.png','','','','','','','','','','','','tidak menikah','','','','8dcc9458bf8f4fe6c023cab839b0ce9a.jpg','453435135435','',''),(50,'4351351358135135','Dewi','perempuan','Bontang','dewi','dewi',0,0,'','d2d97926d5b878d87da83864ad2a4672.jpg','','','','','','','','','','','f454269950655fdd0d0f537b597a66b5.jpg','tidak menikah','','','5343541354','79df835688db89997faf305328729119.jpg','5343541354','',''),(51,'3535435435453453','kue','laki-laki','Kue','kue','kue',0,0,'','00e9167ed97be1b33e59410e7e2ee3d0.jpg','','','','','','','','','','','1b2ab8c4776f7435fdfbd5c59aa61624.jpg','menikah','','','35435135343543','2524218a95a5651bce73fc31afc5350d.jpg','','','');
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

-- Dump completed on 2018-08-29  9:14:23
