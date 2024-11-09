-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_catalogo
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'J.K. Rowling','1965-07-31','Britânica','Autora da série Harry Potter.'),(2,'George Orwell','1903-06-25','Britânico','Autor de 1984 e A Revolução dos Bichos.'),(3,'Machado de Assis','1839-06-21','Brasileiro','Um dos maiores escritores da literatura brasileira.'),(4,'Clarice Lispector','1920-12-10','Brasileira','Importante escritora modernista brasileira.'),(5,'Gabriel García Márquez','1927-03-06','Colombiano','Autor de Cem Anos de Solidão.'),(6,'Jane Austen','1775-12-16','Britânica','Autora de Orgulho e Preconceito.'),(7,'William Shakespeare','1564-04-26','Inglês','O mais famoso dramaturgo da língua inglesa.'),(8,'Fyodor Dostoevsky','1821-11-11','Russo','Autor de Crime e Castigo.'),(9,'Virginia Woolf','1882-01-25','Britânica','Importante escritora modernista.'),(10,'Franz Kafka','1883-07-03','Tcheco','Autor de A Metamorfose.'),(11,'Haruki Murakami','1949-01-12','Japonês','Autor de obras surrealistas e pós-modernas.'),(12,'Agatha Christie','1890-09-15','Britânica','A rainha do crime, autora de numerosos mistérios.'),(13,'Jorge Luis Borges','1899-08-24','Argentino','Mestre do realismo mágico e contos filosóficos.'),(14,'Ursula K. Le Guin','1929-10-21','Americana','Autora renomada de ficção científica e fantasia.'),(15,'Italo Calvino','1923-10-15','Italiano','Autor de obras experimentais e pós-modernas.'),(16,'Neil Gaiman','1960-11-10','Britânico','Autor de obras de fantasia e quadrinhos, conhecido por Sandman.'),(17,'Stephen King','1947-09-21','Americano','Famoso por seus romances de terror e suspense.'),(18,'Marcel Proust','1871-07-10','Francês','Autor de Em Busca do Tempo Perdido, um clássico da literatura moderna.'),(19,'Toni Morrison','1931-02-18','Americana','Vencedora do Prêmio Nobel, conhecida por suas obras sobre a experiência afro-americana.'),(20,'Ray Bradbury','1920-08-22','Americano','Famoso por sua ficção científica, especialmente Fahrenheit 451.'),(21,'Isabel Allende','1942-08-02','Chilena','Autora de O Casa dos Espíritos, conhecida por sua prosa mágica.'),(22,'Chuck Palahniuk','1962-02-21','Americano','Conhecido por seu estilo de escrita provocativo e obras como Clube da Luta.'),(23,'Margaret Atwood','1939-11-18','Canadense','Famosa por O Conto da Aia, uma crítica social distópica.'),(24,'David Foster Wallace','1962-02-21','Americano','Conhecido por sua narrativa experimental e obras como Infinite Jest.'),(25,'Gabriel García Márquez','1927-03-06','Colombiano','Vencedor do Nobel e autor de Cem Anos de Solidão.');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_livro` int(11) DEFAULT NULL,
  `pontuacao` decimal(2,1) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `data_avaliacao` date DEFAULT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `id_livro` (`id_livro`),
  CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` VALUES (1,1,4.5,'Uma história mágica e cativante!','2024-10-01'),(2,1,5.0,'O melhor livro que já li!','2024-10-02'),(3,2,4.8,'Uma visão assustadora do futuro.','2024-10-03'),(4,3,4.7,'Um clássico atemporal.','2024-10-04'),(5,4,4.9,'Uma obra-prima da literatura latino-americana.','2024-10-05'),(6,5,4.6,'Jane Austen no seu melhor.','2024-10-06'),(7,6,4.5,'Kafka nos leva a uma jornada surreal.','2024-10-07'),(8,7,4.7,'Clarice Lispector é brilhante.','2024-10-08'),(9,9,4.8,'Uma análise profunda da psique humana.','2024-10-09'),(10,10,4.6,'Machado de Assis é um gênio.','2024-10-10'),(11,11,4.7,'Murakami no seu melhor estilo surreal.','2024-10-11'),(12,12,4.8,'Um clássico do mistério que não decepciona.','2024-10-12'),(13,13,4.6,'Borges nos leva a reflexões profundas.','2024-10-13'),(14,14,4.9,'Uma obra-prima da ficção científica.','2024-10-14'),(15,15,4.5,'Uma experiência de leitura única.','2024-10-15'),(16,1,5.0,'Uma aventura mágica e envolvente.','2024-01-15'),(17,2,4.5,'Uma leitura impactante e reflexiva.','2024-01-16'),(18,3,5.0,'Um clássico da literatura brasileira.','2024-01-17'),(19,4,4.0,'Uma história fascinante e emocionante.','2024-01-18'),(20,5,5.0,'A narrativa é envolvente e poderosa.','2024-01-19'),(21,6,4.5,'Um livro que nos faz refletir sobre a sociedade.','2024-01-20'),(22,7,4.0,'Uma abordagem única sobre a realidade.','2024-01-21'),(23,8,5.0,'Um relato tocante e comovente.','2024-01-22'),(24,9,4.5,'Uma leitura obrigatória para amantes da literatura.','2024-01-23'),(25,10,4.0,'Um conto intrigante com várias reviravoltas.','2024-01-24');
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ficção','Obras literárias baseadas na imaginação'),(2,'Não-ficção','Obras baseadas em fatos reais'),(3,'Literatura Brasileira','Obras de autores brasileiros'),(4,'Clássicos','Obras consagradas da literatura mundial'),(5,'Fantasia','Obras que envolvem elementos mágicos ou sobrenaturais'),(6,'Ciência','Obras sobre descobertas e teorias científicas'),(7,'História','Obras sobre eventos históricos'),(8,'Filosofia','Obras sobre pensamento e reflexão filosófica'),(9,'Poesia','Obras em verso ou prosa poética'),(10,'Biografia','Obras sobre a vida de pessoas reais'),(11,'Ficção Científica','Obras que exploram conceitos científicos e tecnológicos'),(12,'Romance','Obras focadas em relacionamentos amorosos'),(13,'Suspense','Obras que criam tensão e antecipação'),(14,'Autoajuda','Obras que visam o desenvolvimento pessoal'),(15,'Infantil','Obras destinadas ao público infantil'),(16,'Romance Histórico','Obras que misturam romance com contextos históricos.'),(17,'Terror','Obras que exploram o medo e o sobrenatural.'),(18,'Drama','Obras que enfocam conflitos emocionais e pessoais.'),(19,'Ficção Juvenil','Obras destinadas ao público jovem.'),(20,'Literatura Infantil','Obras voltadas para crianças, geralmente educativas.'),(21,'Romance Policial','Obras que envolvem crimes e investigações.'),(22,'Ficção Histórica','Obras que reinterpretam eventos históricos de forma ficcional.'),(23,'Contos','Coleções de histórias curtas.'),(24,'Graphic Novels','Histórias em quadrinhos em formato de livro.'),(25,'Narrativa de Viagem','Obras que relatam experiências de viagens.');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (1,'Rocco','Rua do Rocco, 123, Rio de Janeiro','2199999999','contato@rocco.com.br','www.rocco.com.br'),(2,'Companhia das Letras','Av. das Letras, 456, São Paulo','1188888888','contato@companhiadasletras.com.br','www.companhiadasletras.com.br'),(3,'Editora Globo','Rua Globo, 789, Porto Alegre','5177777777','contato@editoraglobo.com.br','www.editoraglobo.com.br'),(4,'Penguin Random House','1745 Broadway, New York, NY','+1 212-782-9000','contact@penguinrandomhouse.com','www.penguinrandomhouse.com'),(5,'HarperCollins','195 Broadway, New York, NY','+1 212-207-7000','contact@harpercollins.com','www.harpercollins.com'),(6,'Aleph','Rua Aleph, 123, São Paulo','1166666666','contato@aleph.com.br','www.aleph.com.br'),(7,'Intrínseca','Av. Intrínseca, 456, Rio de Janeiro','2155555555','contato@intrinseca.com.br','www.intrinseca.com.br'),(8,'Sextante','Rua Sextante, 789, Belo Horizonte','3144444444','contato@sextante.com.br','www.sextante.com.br'),(9,'Record','Av. Record, 321, São Paulo','1133333333','contato@record.com.br','www.record.com.br'),(10,'Zahar','Rua Zahar, 654, Rio de Janeiro','2122222222','contato@zahar.com.br','www.zahar.com.br'),(11,'Nova Fronteira','Av. Fronteira, 111, Brasília','6133333333','contato@novafronteira.com.br','www.novafronteira.com.br'),(12,'Objetiva','Rua Objetiva, 222, Curitiba','4122222222','contato@objetiva.com.br','www.objetiva.com.br'),(13,'Leya','Av. Leya, 333, São Paulo','1134444444','contato@leya.com.br','www.leya.com.br'),(14,'Grupo Autêntica','Rua Autêntica, 444, Belo Horizonte','3135555555','contato@grupoautentica.com.br','www.grupoautentica.com.br'),(15,'Companhia das Letras','Rua Letras, 555, Rio de Janeiro','2136666666','contato@companhiadasletras.com.br','www.companhiadasletras.com.br'),(16,'Intrínseca','Av. Intrínseca, 666, Salvador','7137777777','contato@intrinseca.com.br','www.intrinseca.com.br'),(17,'Darkside Books','Rua Escura, 777, Porto Alegre','5138888888','contato@darksidebooks.com.br','www.darksidebooks.com.br'),(18,'Planeta','Rua Planeta, 888, São Paulo','1139999999','contato@planeta.com.br','www.planeta.com.br'),(19,'Cia das Letras','Av. Cia, 999, Rio de Janeiro','2130000000','contato@ciadasletras.com.br','www.ciadasletras.com.br'),(20,'Benvirá','Rua Benvirá, 101, Brasília','6131111111','contato@benvira.com.br','www.benvira.com.br');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(200) DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL,
  `numero_paginas` int(11) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  UNIQUE KEY `isbn` (`isbn`),
  KEY `id_editora` (`id_editora`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editoras` (`id_editora`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Harry Potter e a Pedra Filosofal',NULL,'9788532511010',1997,264,'Português',1,5,'O primeiro livro da série Harry Potter.'),(2,'1984',NULL,'9788535914849',1949,416,'Português',2,1,'Uma visão distópica do futuro.'),(3,'Dom Casmurro',NULL,'9788525406026',1899,256,'Português',3,3,'Um clássico da literatura brasileira.'),(4,'Cem Anos de Solidão',NULL,'9788535914840',1967,448,'Português',2,1,'A história da família Buendía.'),(5,'Orgulho e Preconceito',NULL,'9788544001820',1813,424,'Português',4,4,'Um romance clássico de Jane Austen.'),(6,'O Processo',NULL,'9788535911611',1925,272,'Português',2,1,'Um homem é preso e julgado por um crime desconhecido.'),(7,'A Hora da Estrela',NULL,'9788520937068',1977,88,'Português',3,3,'A história de Macabéa, uma nordestina em busca de seu lugar no mundo.'),(8,'O Pequeno Príncipe',NULL,'9788595081512',1943,96,'Português',5,1,'Uma fábula sobre amizade e amor.'),(9,'Crime e Castigo',NULL,'9788535911121',1866,568,'Português',2,4,'Um ex-estudante comete um assassinato e lida com as consequências.'),(10,'Memórias Póstumas de Brás Cubas',NULL,'9788535910663',1881,192,'Português',2,3,'Um defunto autor narra sua própria história.'),(11,'Kafka à Beira-Mar',NULL,'9788535908756',2002,616,'Português',6,1,'Um jovem foge de casa e se envolve em uma jornada surreal.'),(12,'O Assassinato no Expresso Oriente',NULL,'9788595086333',1934,256,'Português',7,13,'Um detetive investiga um assassinato em um trem luxuoso.'),(13,'O Aleph',NULL,'9788535911694',1949,176,'Português',2,1,'Uma coleção de contos que exploram temas metafísicos.'),(14,'A Mão Esquerda da Escuridão',NULL,'9788576573135',1969,304,'Português',8,11,'Uma exploração de gênero e política em um planeta distante.'),(15,'Se um Viajante numa Noite de Inverno',NULL,'9788535908763',1979,272,'Português',2,1,'Um romance experimental sobre o ato de ler.'),(16,'O Hobbit','Uma jornada inesperada','9788532521140',1937,310,'Português',1,5,'A história de Bilbo Bolseiro em uma aventura épica.'),(17,'A Revolução dos Bichos',NULL,'9788535920370',1945,152,'Português',2,1,'Uma fábula política sobre a revolução de animais.'),(18,'O Sol é Para Todos',NULL,'9788535920516',1960,336,'Português',3,3,'Uma história sobre racismo e injustiça no sul dos EUA.'),(19,'A Menina que Roubava Livros',NULL,'9788551002153',2005,552,'Português',4,4,'A história de uma menina que encontra consolo na leitura durante a Segunda Guerra.'),(20,'O Conto da Aia',NULL,'9788573026887',1985,368,'Português',5,1,'Um olhar distópico sobre uma sociedade totalitária.'),(21,'A Casa dos Espíritos',NULL,'9788535920837',1982,432,'Português',6,1,'A saga de uma família ao longo de várias gerações.'),(22,'O Guia do Mochileiro das Galáxias',NULL,'9788573021523',1979,224,'Português',7,1,'Uma comédia de ficção científica sobre a vida, o universo e tudo mais.'),(23,'Morte e Vida Severina',NULL,'9788573021073',1956,80,'Português',8,1,'Um poema que narra a vida de um retirante nordestino.'),(24,'O Morro dos Ventos Uivantes',NULL,'9788573022223',1847,384,'Português',9,4,'Um romance trágico sobre amor e vingança.'),(25,'A Insustentável Leveza do Ser',NULL,'9788573027099',1984,432,'Português',10,1,'Explora os temas do amor e da liberdade na Praga dos anos 60.');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros_autores`
--

DROP TABLE IF EXISTS `livros_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros_autores` (
  `id_livro` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  PRIMARY KEY (`id_livro`,`id_autor`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `livros_autores_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`),
  CONSTRAINT `livros_autores_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros_autores`
--

LOCK TABLES `livros_autores` WRITE;
/*!40000 ALTER TABLE `livros_autores` DISABLE KEYS */;
INSERT INTO `livros_autores` VALUES (1,1),(16,1),(2,2),(17,2),(3,3),(10,3),(7,4),(18,4),(4,5),(19,5),(5,6),(20,6),(21,7),(9,8),(22,8),(23,9),(6,10),(24,10),(11,11),(25,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `livros_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros_palavras_chave`
--

DROP TABLE IF EXISTS `livros_palavras_chave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros_palavras_chave` (
  `id_livro` int(11) NOT NULL,
  `id_palavra_chave` int(11) NOT NULL,
  PRIMARY KEY (`id_livro`,`id_palavra_chave`),
  KEY `id_palavra_chave` (`id_palavra_chave`),
  CONSTRAINT `livros_palavras_chave_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`),
  CONSTRAINT `livros_palavras_chave_ibfk_2` FOREIGN KEY (`id_palavra_chave`) REFERENCES `palavras_chave` (`id_palavra_chave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros_palavras_chave`
--

LOCK TABLES `livros_palavras_chave` WRITE;
/*!40000 ALTER TABLE `livros_palavras_chave` DISABLE KEYS */;
INSERT INTO `livros_palavras_chave` VALUES (1,1),(11,1),(16,1),(22,1),(2,2),(17,2),(20,2),(3,3),(4,3),(7,3),(10,3),(19,3),(22,3),(3,4),(5,4),(18,4),(2,5),(14,5),(21,5),(6,6),(15,6),(16,6),(6,7),(7,7),(10,7),(1,8),(19,8),(3,9),(9,9),(4,10),(21,10),(2,11),(4,11),(5,11),(7,11),(22,11),(6,12),(9,12),(10,12),(13,12),(17,12),(20,12),(1,13),(5,14),(18,14),(9,15),(12,15),(11,16),(18,16),(12,17),(16,17),(13,18),(21,18),(14,19),(19,19),(15,20),(11,21),(12,22),(13,23),(14,24),(20,24),(15,25),(17,25);
/*!40000 ALTER TABLE `livros_palavras_chave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palavras_chave`
--

DROP TABLE IF EXISTS `palavras_chave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palavras_chave` (
  `id_palavra_chave` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(50) NOT NULL,
  PRIMARY KEY (`id_palavra_chave`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palavras_chave`
--

LOCK TABLES `palavras_chave` WRITE;
/*!40000 ALTER TABLE `palavras_chave` DISABLE KEYS */;
INSERT INTO `palavras_chave` VALUES (1,'Magia'),(2,'Distopia'),(3,'Realismo'),(4,'Amor'),(5,'Política'),(6,'Surrealismo'),(7,'Existencialismo'),(8,'Fantasia'),(9,'Psicologia'),(10,'História'),(11,'Sociedade'),(12,'Filosofia'),(13,'Aventura'),(14,'Drama'),(15,'Mistério'),(16,'Viagem'),(17,'Crime'),(18,'Metafísica'),(19,'Gênero'),(20,'Leitura'),(21,'Surrealismo'),(22,'Detetive'),(23,'Conto'),(24,'Ficção Científica'),(25,'Experimental'),(26,'Literatura Juvenil'),(27,'Drama Histórico'),(28,'Clássico'),(29,'Distopia'),(30,'Magia'),(31,'Horror'),(32,'Amor e Amizade'),(33,'Relações Familiares'),(34,'Superação'),(35,'Conflito'),(36,'Esperança'),(37,'Viagem no Tempo'),(38,'Nostalgia'),(39,'Feminismo'),(40,'Guerra');
/*!40000 ALTER TABLE `palavras_chave` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09 15:03:29
