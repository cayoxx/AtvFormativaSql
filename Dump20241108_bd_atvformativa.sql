-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_atvformativa
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudante` (
  `id_estudante` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `id_uni` int DEFAULT NULL,
  PRIMARY KEY (`id_estudante`),
  KEY `id_uni` (`id_uni`),
  CONSTRAINT `estudante_ibfk_1` FOREIGN KEY (`id_uni`) REFERENCES `universidade` (`id_uni`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (1,'Edson','15-1111-2222','Rua A','18200-000','Centro',1),(2,'Fellipe','15-2222-3333','Rua B','18200-001','Centro',2),(3,'Julio','15-3333-4444','Rua C','18200-002','Centro',3),(4,'Nicolle','15-4444-5555','Rua D','18200-003','Centro',4);
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidade`
--

DROP TABLE IF EXISTS `universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universidade` (
  `id_uni` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_uni`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
INSERT INTO `universidade` VALUES (1,'Universidade Estadual Paulista','15-1234-5678','Rua das Universidades, 100 - Itapetininga'),(2,'Universidade Federal de São Paulo','15-2345-6789','Avenida dos Estudantes, 200 - Itapetininga'),(3,'Universidade Ultra Itapetininga','15-3456-7890','Rua Central, 50 - Itapetininga'),(4,'Centro Universitário de Itapetininga','15-4567-8901','Praça Universitária, 10 - Itapetininga'),(5,'Instituto Tecnológico de Itapetininga','15-5678-9012','Avenida do Saber, 300 - Itapetininga');
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_universidadeestudante`
--

DROP TABLE IF EXISTS `vw_universidadeestudante`;
/*!50001 DROP VIEW IF EXISTS `vw_universidadeestudante`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_universidadeestudante` AS SELECT 
 1 AS `id_uni`,
 1 AS `nome_universidade`,
 1 AS `telefone_universidade`,
 1 AS `endereco`,
 1 AS `id_estudante`,
 1 AS `nome_estudante`,
 1 AS `telefone_estudante`,
 1 AS `rua`,
 1 AS `cep`,
 1 AS `bairro`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_universidadeestudante`
--

/*!50001 DROP VIEW IF EXISTS `vw_universidadeestudante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_universidadeestudante` AS select `universidade`.`id_uni` AS `id_uni`,`universidade`.`nome` AS `nome_universidade`,`universidade`.`telefone` AS `telefone_universidade`,`universidade`.`endereco` AS `endereco`,`estudante`.`id_estudante` AS `id_estudante`,`estudante`.`nome` AS `nome_estudante`,`estudante`.`telefone` AS `telefone_estudante`,`estudante`.`rua` AS `rua`,`estudante`.`cep` AS `cep`,`estudante`.`bairro` AS `bairro` from (`universidade` left join `estudante` on((`universidade`.`id_uni` = `estudante`.`id_uni`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08 12:00:23
