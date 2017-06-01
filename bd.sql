-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: controle
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `comprovantes`
--

DROP TABLE IF EXISTS `comprovantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprovantes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vencimento` date NOT NULL,
  `pagamento` date NOT NULL,
  `aproved` tinyint(1) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `recibo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_fk` (`user_id`),
  KEY `recibo_id_fk` (`recibo_id`),
  CONSTRAINT `recibo_id_fk` FOREIGN KEY (`recibo_id`) REFERENCES `files` (`id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprovantes`
--

LOCK TABLES `comprovantes` WRITE;
/*!40000 ALTER TABLE `comprovantes` DISABLE KEYS */;
INSERT INTO `comprovantes` VALUES (1,'2017-05-26','2017-05-26',1,6,5),(2,'2017-06-01','2017-06-01',1,6,13),(3,'2017-06-01','2017-06-01',1,6,14),(4,'2017-06-01','2017-06-01',1,6,15),(5,'2017-06-01','2017-06-01',1,6,16),(6,'2017-06-01','2017-06-01',1,6,23),(7,'2017-06-01','2017-06-01',1,6,24);
/*!40000 ALTER TABLE `comprovantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Active, 0 = Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:22:31','2017-05-26 16:22:31',1),(2,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:24:21','2017-05-26 16:24:21',1),(3,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:31:56','2017-05-26 16:31:56',1),(4,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:33:04','2017-05-26 16:33:04',1),(5,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:33:56','2017-05-26 16:33:56',1),(6,'Main.java','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:34:25','2017-05-26 16:34:25',1),(7,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-05-26 16:53:36','2017-05-26 16:53:36',1),(8,'Main.java','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 20:51:25','2017-06-01 20:51:25',1),(9,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 20:56:23','2017-06-01 20:56:23',1),(10,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:07:08','2017-06-01 21:07:08',1),(11,'WEB II - Aula 08 - Tutorial Inclusão de Categorias.pdf','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:07:42','2017-06-01 21:07:42',1),(12,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:16:42','2017-06-01 21:16:42',1),(13,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:18:05','2017-06-01 21:18:05',1),(14,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:18:24','2017-06-01 21:18:24',1),(15,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:19:15','2017-06-01 21:19:15',1),(16,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:19:36','2017-06-01 21:19:36',0),(17,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:21:11','2017-06-01 21:21:11',0),(18,'WEB II - Aula_05 - Primeira Aplicação - Tutorial Blog.pdf','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:28:37','2017-06-01 21:28:37',0),(19,'WEB II - Aula_05 - Primeira Aplicação - Tutorial Blog.pdf','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:28:42','2017-06-01 21:28:42',0),(20,'WEB II - Aula_05 - Primeira Aplicação - Tutorial Blog.pdf','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:29:57','2017-06-01 21:29:57',0),(21,'WEB II - Aula_05 - Primeira Aplicação - Tutorial Blog.pdf','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:30:27','2017-06-01 21:30:27',0),(22,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:36:42','2017-06-01 21:36:42',0),(23,'ajax-loader.gif','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:37:09','2017-06-01 21:37:09',0),(24,'Main.java','/home/bandeira/controle/webroot/uploads/files/','2017-06-01 21:37:27','2017-06-01 21:37:27',0);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `siape` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `plano` varchar(70) NOT NULL,
  `role` varchar(40) NOT NULL,
  `email` varchar(70) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siape` (`siape`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'sergio','16764131679','bandeira','123','sus','admin','banser2009@gmail.com'),(3,'doido','545613256','vida','$2y$10$.Oyt2tU/nDd5iIU7/TWrwOZ.qTGj8eGP.Ak7qoP4qrIdeugUL56EC','sus','servidor','bandeira1991@hotmail.com'),(4,'louco','123584672','silva','$2y$10$dRZ.bT8bI842tic66P1DjOZj/BTz63bOkrs/ezyfuIsdU4UlHyq8K','sus','servidor','b@gmail.com'),(5,'triste','67494616794','triste01','$2y$10$RWCvfmKWYj0HJLC4lfhgaewqYmyMemQSfXu4EAv.IOBmbRAY1hWMG','sus','servidor','bs@gmail.com'),(6,'silva','123456789','sil','$2y$10$HPbQvNv95/B0zFTNBXWXJ.DxZYu8qhriLT5r9Rl4Wzc8x/B1BL7Yq','ap','servidor','db@gmail.com'),(7,'eu','46461346646','ue','$2y$10$5Ll5nK2kMuazjeXfmK.MgObQMuSGcu5RiYk588FnAGy4REHom0rzu','nkjpke','servidor','fg@gmail.com'),(8,'sergio','546316','ser','$2y$10$xTpMDRYZCZRsOdm4MxD3j.NRLml9Ov5P2FiMl7kNCtfjBREUpiwP.','jpdojhogr','servidor','f@gmail.com');
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

-- Dump completed on 2017-06-01 18:50:31
