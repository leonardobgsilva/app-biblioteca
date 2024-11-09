-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_administrativo
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
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `status` enum('Pendente','Concluída','Cancelada') DEFAULT 'Pendente',
  PRIMARY KEY (`id_compra`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,'2024-01-05',5000.00,'Concluída'),(2,2,'2024-01-10',1500.00,'Pendente'),(3,3,'2024-01-15',10000.00,'Concluída'),(4,4,'2024-01-20',8000.00,'Concluída'),(5,5,'2024-01-25',1000.00,'Pendente'),(6,6,'2024-02-01',7500.00,'Concluída'),(7,7,'2024-02-05',3000.00,'Pendente'),(8,8,'2024-02-10',12000.00,'Concluída'),(9,9,'2024-02-15',2500.00,'Cancelada'),(10,10,'2024-02-20',1800.00,'Pendente');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Administração','Responsável pela gestão geral da biblioteca'),(2,'Acervo','Cuida da organização e manutenção do acervo'),(3,'Atendimento ao Público','Responsável pelo atendimento aos usuários'),(4,'TI','Gerencia os sistemas de informação da biblioteca'),(5,'Eventos','Organiza eventos culturais e educativos'),(6,'Recursos Humanos','Gerencia assuntos relacionados aos funcionários'),(7,'Financeiro','Responsável pelas finanças da biblioteca'),(8,'Marketing','Cuida da divulgação e imagem da biblioteca'),(9,'Manutenção','Responsável pela manutenção das instalações'),(10,'Pesquisa e Desenvolvimento','Desenvolve novos projetos e melhorias'),(11,'Suporte Técnico','Oferece assistência técnica aos usuários'),(12,'Treinamento','Responsável por capacitação de funcionários'),(13,'Logística','Gerencia o estoque e a distribuição de materiais'),(14,'Jurídico','Cuida das questões legais da biblioteca'),(15,'Comunicação','Gerencia a comunicação interna e externa');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiais`
--

DROP TABLE IF EXISTS `filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiais` (
  `id_filial` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `horario_funcionamento` varchar(100) DEFAULT NULL,
  `data_inauguracao` date DEFAULT NULL,
  PRIMARY KEY (`id_filial`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiais`
--

LOCK TABLES `filiais` WRITE;
/*!40000 ALTER TABLE `filiais` DISABLE KEYS */;
INSERT INTO `filiais` VALUES (1,'Biblioteca Central','Rua Principal, 100','1122223333','central@biblioteca.com','Seg-Sex 8h-20h, Sáb 9h-15h','2000-01-01'),(2,'Biblioteca Norte','Av. Norte, 200','1133334444','norte@biblioteca.com','Seg-Sex 9h-18h','2005-05-15'),(3,'Biblioteca Sul','Rua Sul, 300','1144445555','sul@biblioteca.com','Seg-Sáb 8h-22h','2010-10-10'),(4,'Biblioteca Leste','Av. Leste, 400','1155556666','leste@biblioteca.com','Seg-Dom 10h-20h','2015-03-20'),(5,'Biblioteca Oeste','Rua Oeste, 500','1166667777','oeste@biblioteca.com','Seg-Sex 7h-19h','2020-08-01'),(6,'Biblioteca Nordeste','Praça Nordeste, 600','1177778888','nordeste@biblioteca.com','Seg-Sáb 8h-18h','2018-06-12'),(7,'Biblioteca Sudeste','Alameda Sudeste, 700','1188889999','sudeste@biblioteca.com','Seg-Sex 9h-19h','2016-11-30'),(8,'Biblioteca Noroeste','Travessa Noroeste, 800','1199990000','noroeste@biblioteca.com','Seg-Dom 8h-20h','2019-03-25'),(9,'Biblioteca Sudoeste','Avenida Sudoeste, 900','1100001111','sudoeste@biblioteca.com','Seg-Sáb 10h-22h','2017-09-08'),(10,'Biblioteca Centro-Oeste','Rua Centro-Oeste, 1000','1111112222','centrooeste@biblioteca.com','Seg-Sex 8h-18h','2021-02-14'),(11,'Biblioteca Metropolitana','Rua das Estações, 1100','1122334455','metropolitana@biblioteca.com','Seg-Dom 8h-21h','2022-01-01'),(12,'Biblioteca Regional','Avenida das Regiões, 1200','1133445566','regional@biblioteca.com','Seg-Sex 9h-20h','2023-03-10'),(13,'Biblioteca Cidade Nova','Rua do Futuro, 1300','1144556677','cidadenova@biblioteca.com','Seg-Sáb 8h-19h','2024-04-05'),(14,'Biblioteca São João','Av. da Amizade, 1400','1155667788','saojoao@biblioteca.com','Seg-Dom 10h-18h','2021-08-12'),(15,'Biblioteca Vista Alegre','Rua do Sol, 1500','1166778899','vistaalegre@biblioteca.com','Seg-Sex 9h-19h','2019-12-15'),(16,'Biblioteca Jardim das Flores','Avenida das Flores, 1600','1177889900','jardimflores@biblioteca.com','Seg-Sáb 9h-17h','2020-07-20');
/*!40000 ALTER TABLE `filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo_produto` varchar(50) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Livraria Central','Livros','Rua dos Livros, 100','1133332222','contato@livrariacentral.com'),(2,'Papelaria Útil','Material de escritório','Av. das Canetas, 200','1144443333','vendas@papelariautilcom'),(3,'TechBib','Equipamentos de informática','Rua dos Computadores, 300','1155554444','comercial@techbib.com'),(4,'Móveis Conforto','Mobiliário','Av. das Cadeiras, 400','1166665555','vendas@moveisconforto.com'),(5,'Limpeza Total','Produtos de limpeza','Rua da Higiene, 500','1177776666','contato@limpezatotal.com'),(6,'Editora Conhecimento','Livros acadêmicos','Praça do Saber, 600','1188887777','vendas@editoraconhecimento.com'),(7,'Segurança Máxima','Equipamentos de segurança','Av. da Proteção, 700','1199998888','comercial@segurancamaxima.com'),(8,'Ar Puro','Sistemas de ar condicionado','Rua da Climatização, 800','1100009999','vendas@arpuro.com'),(9,'Luz & Cia','Iluminação','Travessa da Claridade, 900','1111110000','contato@luzecia.com'),(10,'Água Cristalina','Bebedouros e purificadores','Alameda das Águas, 1000','1122221111','vendas@aguacristalina.com');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `data_contratacao` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `id_filial` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_filial` (`id_filial`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_filial`) REFERENCES `filiais` (`id_filial`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (21,'Ana Silva','Bibliotecária Chefe','2000-02-01',5000.00,1,'ana.silva@biblioteca.com','1199998888'),(22,'Carlos Santos','Assistente de Biblioteca','2005-06-15',2500.00,2,'carlos.santos@biblioteca.com','1188887777'),(23,'Mariana Oliveira','Coordenadora de Acervo','2010-11-10',4000.00,3,'mariana.oliveira@biblioteca.com','1177776666'),(24,'Roberto Ferreira','Técnico em Informática','2015-04-20',3000.00,4,'roberto.ferreira@biblioteca.com','1166665555'),(25,'Juliana Costa','Atendente','2020-09-01',2000.00,5,'juliana.costa@biblioteca.com','1155554444'),(26,'Pedro Almeida','Bibliotecário','2018-07-12',3500.00,6,'pedro.almeida@biblioteca.com','1144443333'),(27,'Camila Rodrigues','Auxiliar Administrativo','2019-03-25',2200.00,7,'camila.rodrigues@biblioteca.com','1133332222'),(28,'Fernando Gomes','Analista de Sistemas','2017-10-08',4500.00,8,'fernando.gomes@biblioteca.com','1122221111'),(29,'Luciana Martins','Supervisora de Atendimento','2016-12-01',3800.00,9,'luciana.martins@biblioteca.com','1111110000'),(30,'Ricardo Sousa','Gerente de Filial','2021-02-15',6000.00,10,'ricardo.souza@biblioteca.com','1100009999'),(31,'João Ferreira','Bibliotecário','2022-01-05',3200.00,1,'joao.ferreira@biblioteca.com','1199888777'),(32,'Laura Martins','Assistente de Biblioteca','2022-02-20',2100.00,2,'laura.martins@biblioteca.com','1198776655'),(33,'Sérgio Oliveira','Coordenador de Acervo','2023-01-10',3000.00,3,'sergio.oliveira@biblioteca.com','1197665544'),(34,'Isabela Costa','Bibliotecária','2023-05-15',3400.00,4,'isabela.costa@biblioteca.com','1196554433'),(35,'Thiago Almeida','Analista de Sistemas','2022-03-01',4600.00,5,'thiago.almeida@biblioteca.com','1195443322'),(36,'Renata Dias','Auxiliar Administrativo','2023-06-25',2300.00,6,'renata.dias@biblioteca.com','1194332211'),(37,'Gabriel Santos','Técnico em Informática','2022-04-12',3100.00,7,'gabriel.santos@biblioteca.com','1193221100'),(38,'Felipe Souza','Atendente','2023-08-18',2200.00,8,'felipe.souza@biblioteca.com','1192110099'),(39,'Juliana Ferreira','Bibliotecária','2022-09-07',3600.00,9,'juliana.ferreira@biblioteca.com','1191009988'),(40,'Fernando Lima','Gerente de Filial','2023-11-01',6000.00,10,'fernando.lima@biblioteca.com','1199998877');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios_departamentos`
--

DROP TABLE IF EXISTS `funcionarios_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios_departamentos` (
  `id_funcionario` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionario`,`id_departamento`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `funcionarios_departamentos_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`),
  CONSTRAINT `funcionarios_departamentos_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios_departamentos`
--

LOCK TABLES `funcionarios_departamentos` WRITE;
/*!40000 ALTER TABLE `funcionarios_departamentos` DISABLE KEYS */;
INSERT INTO `funcionarios_departamentos` VALUES (21,1),(27,1),(30,1),(35,1),(36,1),(40,1),(23,2),(26,2),(31,2),(33,2),(39,2),(22,3),(25,3),(29,3),(32,3),(38,3),(24,4),(28,4),(34,4),(37,4);
/*!40000 ALTER TABLE `funcionarios_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencao`
--

DROP TABLE IF EXISTS `manutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao` (
  `id_manutencao` int(11) NOT NULL AUTO_INCREMENT,
  `id_filial` int(11) DEFAULT NULL,
  `tipo_manutencao` varchar(50) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `data_solicitacao` date DEFAULT NULL,
  `data_conclusao` date DEFAULT NULL,
  `custo` decimal(10,2) DEFAULT NULL,
  `status` enum('Pendente','Em andamento','Concluída') DEFAULT 'Pendente',
  PRIMARY KEY (`id_manutencao`),
  KEY `id_filial` (`id_filial`),
  CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`id_filial`) REFERENCES `filiais` (`id_filial`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao`
--

LOCK TABLES `manutencao` WRITE;
/*!40000 ALTER TABLE `manutencao` DISABLE KEYS */;
INSERT INTO `manutencao` VALUES (1,1,'Elétrica','Troca de lâmpadas','2024-01-02','2024-01-03',500.00,'Concluída'),(2,2,'Hidráulica','Reparo em vazamento','2024-01-05',NULL,800.00,'Em andamento'),(3,3,'Pintura','Pintura da fachada','2024-01-10','2024-01-15',3000.00,'Concluída'),(4,4,'Ar Condicionado','Manutenção preventiva','2024-01-20',NULL,1200.00,'Pendente'),(5,5,'Informática','Atualização de sistemas','2024-01-25','2024-01-26',1500.00,'Concluída'),(6,6,'Mobiliário','Reparo em estantes','2024-02-01','2024-02-03',1000.00,'Concluída'),(7,7,'Segurança','Instalação de câmeras','2024-02-05',NULL,2500.00,'Em andamento'),(8,8,'Limpeza','Limpeza de carpetes','2024-02-10','2024-02-11',800.00,'Concluída'),(9,9,'Jardinagem','Poda de árvores','2024-02-15',NULL,600.00,'Pendente'),(10,10,'Estrutural','Reparo no telhado','2024-02-20',NULL,5000.00,'Em andamento');
/*!40000 ALTER TABLE `manutencao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09 15:02:11
