-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_usuarios
-- ------------------------------------------------------
-- Server version	11.4.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimos` (
  `id_emprestimo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao_prevista` date NOT NULL,
  `data_devolucao_real` date DEFAULT NULL,
  `status` enum('Em andamento','Devolvido','Atrasado') DEFAULT 'Em andamento',
  PRIMARY KEY (`id_emprestimo`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,1,1,'2024-01-01','2024-01-15','2024-01-14','Devolvido'),(2,2,2,'2024-01-02','2024-01-16',NULL,'Em andamento'),(3,3,3,'2024-01-03','2024-01-17','2024-01-18','Devolvido'),(4,4,4,'2024-01-04','2024-01-18',NULL,'Atrasado'),(5,5,5,'2024-01-05','2024-01-19','2024-01-19','Devolvido'),(6,6,6,'2024-01-06','2024-01-20',NULL,'Em andamento'),(7,7,7,'2024-01-07','2024-01-21','2024-01-20','Devolvido'),(8,8,8,'2024-01-08','2024-01-22',NULL,'Atrasado'),(9,9,9,'2024-01-09','2024-01-23','2024-01-22','Devolvido'),(10,10,10,'2024-01-10','2024-01-24',NULL,'Em andamento'),(21,11,1,'2024-02-01','2024-02-15',NULL,'Em andamento'),(22,12,2,'2024-02-02','2024-02-16','2024-02-15','Devolvido'),(23,13,3,'2024-02-03','2024-02-17',NULL,'Em andamento'),(24,14,4,'2024-02-04','2024-02-18',NULL,'Atrasado'),(25,15,5,'2024-02-05','2024-02-19','2024-02-18','Devolvido'),(26,16,6,'2024-02-06','2024-02-20','2024-02-19','Devolvido'),(27,17,7,'2024-02-07','2024-02-21',NULL,'Em andamento'),(28,18,8,'2024-02-08','2024-02-22',NULL,'Atrasado'),(29,11,1,'2024-02-01','2024-02-15',NULL,'Em andamento'),(30,11,1,'2024-02-02','2024-02-16','2024-02-15','Devolvido'),(31,13,1,'2024-02-03','2024-02-17',NULL,'Em andamento'),(32,14,1,'2024-02-04','2024-02-18',NULL,'Atrasado'),(33,15,5,'2024-02-05','2024-02-19','2024-02-18','Devolvido'),(34,16,5,'2024-02-06','2024-02-20','2024-02-19','Devolvido'),(35,17,5,'2024-02-07','2024-02-21',NULL,'Em andamento'),(36,18,8,'2024-02-08','2024-02-22',NULL,'Atrasado'),(37,11,1,'2024-02-03','2024-02-15',NULL,'Em andamento'),(38,11,1,'2024-02-05','2024-02-16','2024-02-15','Devolvido'),(39,13,1,'2024-02-08','2024-02-17',NULL,'Em andamento'),(40,14,1,'2024-02-12','2024-02-18',NULL,'Atrasado'),(41,15,5,'2024-02-25','2024-02-19','2024-02-18','Devolvido'),(42,16,5,'2024-02-16','2024-02-20','2024-02-19','Devolvido'),(43,17,5,'2024-02-17','2024-02-21',NULL,'Em andamento'),(44,18,8,'2024-02-28','2024-02-22',NULL,'Atrasado'),(45,11,9,'2024-02-03','2024-02-15',NULL,'Em andamento'),(46,11,9,'2024-02-05','2024-02-16','2024-02-15','Devolvido'),(47,13,9,'2024-02-08','2024-02-17',NULL,'Em andamento'),(48,14,8,'2024-02-12','2024-02-18',NULL,'Atrasado'),(49,15,7,'2024-02-25','2024-02-19','2024-02-18','Devolvido'),(50,16,7,'2024-02-16','2024-02-20','2024-02-19','Devolvido'),(51,17,7,'2024-02-17','2024-02-21',NULL,'Em andamento'),(52,18,8,'2024-02-28','2024-02-22',NULL,'Atrasado');
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_leitura`
--

DROP TABLE IF EXISTS `historico_leitura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_leitura` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `data_leitura` date NOT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `historico_leitura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_leitura`
--

LOCK TABLES `historico_leitura` WRITE;
/*!40000 ALTER TABLE `historico_leitura` DISABLE KEYS */;
INSERT INTO `historico_leitura` VALUES (1,1,1,'2024-01-14',5,'Excelente leitura!'),(2,2,2,'2024-01-16',4,'Muito bom, recomendo.'),(3,3,3,'2024-01-18',3,'Interessante, mas um pouco confuso.'),(4,4,4,'2024-01-18',5,'Um dos melhores livros que já li!'),(5,5,5,'2024-01-19',4,'Ótima história, vale a pena ler.'),(6,6,6,'2024-01-20',2,'Não gostei muito, achei o enredo fraco.'),(7,7,7,'2024-01-21',5,'Surpreendente! Não consegui parar de ler.'),(8,8,8,'2024-01-22',3,'Mediano. Esperava mais do autor.'),(9,9,9,'2024-01-23',4,'Bem escrito e envolvente.'),(10,10,10,'2024-01-24',5,'Uma obra-prima! Recomendo fortemente.'),(21,11,1,'2024-02-14',4,'Bom livro, gostei!'),(22,12,2,'2024-02-16',5,'Excelente!'),(23,13,3,'2024-02-18',3,'Ok, mas poderia ser melhor.'),(24,14,4,'2024-02-18',5,'Adorei, recomendo!'),(25,15,5,'2024-02-19',4,'Muito bom, vale a leitura.'),(26,16,6,'2024-02-20',2,'Não gostei muito, fraco.'),(27,17,7,'2024-02-21',5,'Fantástico, não consegui parar de ler!'),(28,18,8,'2024-02-22',4,'Bom, mas esperava mais.'),(29,2,9,'2024-02-23',3,'Um pouco decepcionante.'),(30,8,10,'2024-02-24',5,'Obra incrível! Ler é preciso.');
/*!40000 ALTER TABLE `historico_leitura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multas`
--

DROP TABLE IF EXISTS `multas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multas` (
  `id_multa` int(11) NOT NULL AUTO_INCREMENT,
  `id_emprestimo` int(11) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `status` enum('Pendente','Paga') DEFAULT 'Pendente',
  `data_aplicacao` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id_multa`),
  KEY `id_emprestimo` (`id_emprestimo`),
  CONSTRAINT `multas_ibfk_1` FOREIGN KEY (`id_emprestimo`) REFERENCES `emprestimos` (`id_emprestimo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multas`
--

LOCK TABLES `multas` WRITE;
/*!40000 ALTER TABLE `multas` DISABLE KEYS */;
INSERT INTO `multas` VALUES (1,4,5.00,'Pendente','2024-01-19',NULL),(2,3,2.50,'Paga','2024-01-18','2024-01-20'),(3,2,7.50,'Pendente','2024-01-17',NULL),(4,1,3.00,'Paga','2024-01-15','2024-01-16'),(5,5,1.50,'Pendente','2024-01-20',NULL),(6,8,6.00,'Pendente','2024-01-23',NULL),(7,7,4.50,'Paga','2024-01-22','2024-01-24'),(8,6,8.00,'Pendente','2024-01-21',NULL),(9,9,3.50,'Paga','2024-01-24','2024-01-25'),(10,10,2.00,'Pendente','2024-01-25',NULL),(21,21,4.00,'Pendente','2024-02-19',NULL),(22,22,2.00,'Paga','2024-02-15','2024-02-16'),(23,23,6.00,'Pendente','2024-02-17',NULL),(24,24,3.50,'Paga','2024-02-18','2024-02-19'),(25,25,5.00,'Pendente','2024-02-20',NULL),(26,26,1.00,'Paga','2024-02-21','2024-02-22'),(27,27,7.00,'Pendente','2024-02-23',NULL),(28,28,4.00,'Paga','2024-02-24','2024-02-25');
/*!40000 ALTER TABLE `multas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `data_reserva` date NOT NULL,
  `status` enum('Ativa','Concluída','Cancelada') DEFAULT 'Ativa',
  PRIMARY KEY (`id_reserva`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,6,'2024-01-20','Ativa'),(2,2,7,'2024-01-21','Concluída'),(3,3,8,'2024-01-22','Ativa'),(4,4,9,'2024-01-23','Cancelada'),(5,5,10,'2024-01-24','Ativa'),(6,6,1,'2024-01-25','Ativa'),(7,7,2,'2024-01-26','Concluída'),(8,8,3,'2024-01-27','Cancelada'),(9,9,4,'2024-01-28','Ativa'),(10,10,5,'2024-01-29','Concluída'),(11,11,6,'2024-02-20','Ativa'),(12,12,7,'2024-02-21','Concluída'),(13,13,8,'2024-02-22','Ativa'),(14,14,9,'2024-02-23','Cancelada'),(15,15,10,'2024-02-24','Ativa'),(16,16,1,'2024-02-25','Ativa'),(17,17,2,'2024-02-26','Concluída'),(18,18,3,'2024-02-27','Cancelada');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `status` enum('Ativo','Inativo','Suspenso') DEFAULT 'Ativo',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'João Silva','joao.silva@email.com','11999999999','Rua A, 123','1990-05-15','2023-01-01','Ativo'),(2,'Maria Santos','maria.santos@email.com','11988888888','Av. B, 456','1985-10-20','2023-01-02','Ativo'),(3,'Pedro Oliveira','pedro.oliveira@email.com','11977777777','Rua C, 789','1995-03-25','2023-01-03','Ativo'),(4,'Ana Livia','ana.livia@email.com','11966666666','Av. D, 1011','1992-07-30','2023-01-04','Ativo'),(5,'Carlos Ferreira','carlos.ferreira@email.com','11955555555','Rua E, 1213','1988-12-05','2023-01-05','Ativo'),(6,'Lucia Mendes','lucia.mendes@email.com','11944444444','Av. F, 1415','1993-06-10','2023-01-06','Ativo'),(7,'Roberto Alves','roberto.alves@email.com','11933333333','Rua G, 1617','1987-09-15','2023-01-07','Inativo'),(8,'Fernanda Lima','fernanda.lima@email.com','11922222222','Av. H, 1819','1991-02-20','2023-01-08','Ativo'),(9,'Paulo Souza','paulo.souza@email.com','11911111111','Rua I, 2021','1986-11-25','2023-01-09','Suspenso'),(10,'Camila Costa','camila.costa@email.com','11900000000','Av. J, 2223','1994-04-30','2023-01-10','Ativo'),(11,'Julia Almeida','julia.almeida@email.com','11922223333','Rua K, 444','1990-11-15','2023-01-11','Ativo'),(12,'Fernando Costa','fernando.costa@email.com','11933324444','Av. L, 555','1988-08-20','2023-01-12','Ativo'),(13,'Roberta Lima','roberta.lima@email.com','11944435555','Rua M, 666','1995-12-30','2023-01-13','Ativo'),(14,'Lucas Pereira','lucas.pereira@email.com','11955546666','Av. N, 777','1993-04-25','2023-01-14','Ativo'),(15,'Tatiane Santos','tatiane.santos@email.com','11966657777','Rua O, 888','1991-09-10','2023-01-15','Ativo'),(16,'Diego Almeida','diego.almeida@email.com','11977768888','Av. P, 999','1986-01-05','2023-01-16','Suspenso'),(17,'Sofia Martins','sofia.martins@email.com','11988879999','Rua Q, 1010','1994-07-15','2023-01-17','Ativo'),(18,'Vinicius Oliveira','vinicius.oliveira@email.com','11999981111','Av. R, 1111','1992-03-30','2023-01-18','Ativo');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09 15:03:40
