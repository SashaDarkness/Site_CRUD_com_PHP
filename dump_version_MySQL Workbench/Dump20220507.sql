CREATE DATABASE  IF NOT EXISTS `prontuario_digital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prontuario_digital`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: prontuario_digital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `assistente`
--

DROP TABLE IF EXISTS `assistente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistente` (
  `Id_Assistente` bigint NOT NULL AUTO_INCREMENT,
  `CPF_Assistente` varchar(11) NOT NULL,
  `Nome_Assistente` varchar(128) NOT NULL,
  PRIMARY KEY (`Id_Assistente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistente`
--

LOCK TABLES `assistente` WRITE;
/*!40000 ALTER TABLE `assistente` DISABLE KEYS */;
INSERT INTO `assistente` VALUES (1,'34679844488','Hélio Meir Braz'),(2,'47500170010','Patrícia Paula de Souza'),(3,'84514177906','Abraão de Souza Correa'),(4,'57532169880','Tatiane Luiza Sonsa'),(5,'44806450531','Danila Lurdes de Oliveira'),(6,'75250020074','Andrey Rafael Marcedo '),(7,'95405064140','Yasmin Cecília Brito'),(8,'75405160077','Kayanne Beatriz Silva'),(9,'11247604041','Renato Castro Moraes'),(10,'27680245540','Roberto Carlos Pereira');
/*!40000 ALTER TABLE `assistente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atendente`
--

DROP TABLE IF EXISTS `atendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendente` (
  `Id_Atendente` bigint NOT NULL AUTO_INCREMENT,
  `CPF_Atendente` varchar(11) NOT NULL,
  `Nome_Atendente` varchar(128) NOT NULL,
  PRIMARY KEY (`Id_Atendente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendente`
--

LOCK TABLES `atendente` WRITE;
/*!40000 ALTER TABLE `atendente` DISABLE KEYS */;
INSERT INTO `atendente` VALUES (1,'60586943120','Antero Hernandes Caiado'),(2,'04190304093','Jairo Aveiro Carvalhoso'),(3,'48157396840','Abdullah Dias Mondragão'),(4,'50030169880','Andriy Proença Granjeiro'),(5,'40004450531','Noemi Sardinha Rijo'),(6,'07050420074','Lola Alencar Sobreira'),(7,'09405260140','Esperança Rebelo Lobato'),(8,'05405163007','Maira Moura Pedroso'),(9,'00247604001','Brayan Mangueira Vieira'),(10,'00081245500','Romão Domingos Barbalho');
/*!40000 ALTER TABLE `atendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro` (
  `Id_Cadastro_Paciente` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(128) NOT NULL,
  `Senha` varchar(15) NOT NULL,
  KEY `fk_Id_Cadastro_Paciente` (`Id_Cadastro_Paciente`),
  CONSTRAINT `fk_Id_Cadastro_Paciente` FOREIGN KEY (`Id_Cadastro_Paciente`) REFERENCES `paciente` (`Id_Cadastro_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro`
--

LOCK TABLES `cadastro` WRITE;
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` VALUES (1,'fatimasouza@hotmail.com','*tdOd4-Ep'),(2,'michelesantana@gmail.com','+Ste_0oX&'),(3,'marcelaalvares@yahoo.com','khCaXvbEt'),(4,'suelicardoso@hotmail.com.br','0Jl7Q-cWg'),(5,'fernandocarvalho@gmail.com','a3EiN8QUfI'),(6,'armanebarbosa@outlook.com','Ij$uU1m(Z'),(7,'eleanorshellstrop@gmail.com.br','avqzmwgqe'),(8,'rafaelmoreira@outlook.com','%tzlAAbgQ'),(9,'kimmyschmidt@outlook.com.br','Ql5+yJy75'),(10,'jorgeneyalmeida@outlook.com.br','6K_gdRjWZ'),(11,'joanacoelho@hotmail.com.br','A%5hctlFh'),(12,'jurandirsantos@outlook.com','Pv1tamszp'),(13,'chidianagonye@hotmail.com','iF!9hG(++'),(14,'marcoalvares@hotmail.com','vesHWaf4D'),(15,'liliankaushtupper@gmail.com.br','dZe)NssZC'),(16,'tahanialjamil@outlook.com.br','k%sgSts)6'),(17,'gloriaribeiro@gmail.com.br','VV8G7KIlK'),(18,'titusandromedon@gmail.com','vzh+TG8I%'),(19,'jasonmendoza@yahoo.com','z22Idbt@q'),(20,'andresantana@hotmail.com.br','J#ywiYflk');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carteira_vacinacao`
--

DROP TABLE IF EXISTS `carteira_vacinacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carteira_vacinacao` (
  `Cod_CarteiraVacinacao` bigint NOT NULL AUTO_INCREMENT,
  `Data_hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Id_Cadastr_Paciente` bigint NOT NULL,
  `Id_Assistente` bigint NOT NULL,
  `Cod_PostoVacinacao` bigint NOT NULL,
  PRIMARY KEY (`Cod_CarteiraVacinacao`),
  KEY `fk_Id_Cadastr_Paciente` (`Id_Cadastr_Paciente`),
  KEY `fk_Id_Assistente` (`Id_Assistente`),
  KEY `fk_Cod_PostoVacinacao` (`Cod_PostoVacinacao`),
  CONSTRAINT `fk_Cod_PostoVacinacao` FOREIGN KEY (`Cod_PostoVacinacao`) REFERENCES `posto_vacinacao` (`Cod_PostoVacinacao`),
  CONSTRAINT `fk_Id_Assistente` FOREIGN KEY (`Id_Assistente`) REFERENCES `assistente` (`Id_Assistente`),
  CONSTRAINT `fk_Id_Cadastr_Paciente` FOREIGN KEY (`Id_Cadastr_Paciente`) REFERENCES `paciente` (`Id_Cadastro_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carteira_vacinacao`
--

LOCK TABLES `carteira_vacinacao` WRITE;
/*!40000 ALTER TABLE `carteira_vacinacao` DISABLE KEYS */;
INSERT INTO `carteira_vacinacao` VALUES (1,'2021-09-25 09:35:00',10,1,5),(2,'2021-11-28 14:10:00',17,2,4),(3,'2021-12-23 10:30:00',20,3,10),(4,'2021-12-27 13:50:00',14,4,9),(5,'2021-08-26 10:30:00',8,5,7),(6,'2021-11-13 14:20:02',11,6,8),(7,'2021-12-23 10:24:45',3,7,3),(8,'2021-12-25 08:00:00',7,8,6),(9,'2021-12-26 09:00:00',6,9,1),(10,'2021-12-26 08:15:00',2,10,2),(11,'2021-10-27 11:00:00',18,1,8),(12,'2021-10-22 15:20:00',1,2,9),(13,'2021-10-09 14:18:52',19,3,10),(14,'2021-10-08 09:25:22',16,4,1),(15,'2021-12-26 11:00:12',9,5,2),(16,'2021-12-25 08:00:00',4,6,3),(17,'2021-11-25 11:26:57',15,7,5),(18,'2021-09-30 09:47:24',5,8,6),(19,'2021-12-27 14:28:50',12,9,7),(20,'2021-12-27 13:00:00',13,10,4);
/*!40000 ALTER TABLE `carteira_vacinacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinico`
--

DROP TABLE IF EXISTS `clinico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinico` (
  `CRM_Clinico` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Clinico` varchar(128) NOT NULL,
  `CPF_Clinico` varchar(11) NOT NULL,
  `Especializacao_Clinico` varchar(128) NOT NULL,
  PRIMARY KEY (`CRM_Clinico`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinico`
--

LOCK TABLES `clinico` WRITE;
/*!40000 ALTER TABLE `clinico` DISABLE KEYS */;
INSERT INTO `clinico` VALUES (1,'Clara Martins Rodrigues','89515779900','Clínico Geral'),(2,'Daniel Oliveira Cunha','26627911442','Clínico Geral'),(3,'Lavinia Pinto Correia','33506800469','Clínico Geral'),(4,'Emilly Vilariça Quirino','45612347878','Clínico Geral'),(5,'Sharon Aguiar Valim','10442574800','Clínico Geral'),(6,'Apolo Cobra Júdice','10486500145','Clínico Geral'),(7,'Alice Fernandes Castro','68544709354','Clínico Geral'),(8,'Gabriel Rodrigues Barbosa','80345604806','Clínico Geral'),(9,'Mathias Rosa Pastana','15221460052','Clínico Geral'),(10,'Cauã Cavalcanti Pinto','57575522123','Clínico Geral');
/*!40000 ALTER TABLE `clinico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `Cod_Consulta` bigint NOT NULL AUTO_INCREMENT,
  `Data_hora_Consulta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Resultado_Consulta` text NOT NULL,
  `Id_Cadastro_Pacientes` bigint NOT NULL,
  `CRM_Medico` bigint NOT NULL,
  PRIMARY KEY (`Cod_Consulta`),
  KEY `fk_Id_Cadastro_Pacientes` (`Id_Cadastro_Pacientes`),
  KEY `fk_CRM_Medico` (`CRM_Medico`),
  CONSTRAINT `fk_CRM_Medico` FOREIGN KEY (`CRM_Medico`) REFERENCES `medico` (`CRM_Medico`),
  CONSTRAINT `fk_Id_Cadastro_Pacientes` FOREIGN KEY (`Id_Cadastro_Pacientes`) REFERENCES `paciente` (`Id_Cadastro_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'2021-09-20 08:55:05','Asma e Sinusite',1,12),(2,'2021-09-01 09:35:52','Dores no torax',2,3),(3,'2021-09-27 10:16:22','Infecção no ouvido e garganta',3,20),(4,'2021-10-15 11:38:24','Intolerância à Lactose',4,11),(5,'2021-10-10 13:42:09','Catapora',5,12),(6,'2021-10-23 15:30:52','Grau leve de astigmatismo',6,8),(7,'2021-11-14 14:29:52','Grau leve de Míopia',7,9),(8,'2021-11-26 16:00:52','Reflexo e funcionamento dos nervos',8,14),(9,'2021-12-02 10:35:18','Terapia cognitivo-comportamental',9,10),(10,'2021-12-02 09:24:00','Equilíbrio e coordenação mental',10,19),(11,'2021-12-12 08:53:52','Testes sensorias e motoras',11,15),(12,'2021-12-20 08:00:52','Herpes grau leve',12,18),(13,'2021-12-25 09:00:52','Síndrome do Túnel do Cárpico',13,16),(14,'2021-12-26 10:00:52','Audiometria Vocal',14,20),(15,'2021-12-27 13:00:52','Audiometria tonal',15,20),(16,'2021-12-28 14:00:52','Teste ortóptico',16,8),(17,'2021-11-22 15:00:52','Alergia na pele',17,5),(18,'2021-10-27 16:00:52',' Tratamento de manchas na pele',18,6),(19,'2021-12-24 11:15:52','Extração dos sisos',19,1),(20,'2021-12-05 08:00:52','Dores na região intíma',20,17);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exames`
--

DROP TABLE IF EXISTS `exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exames` (
  `Cod_Exame` bigint NOT NULL AUTO_INCREMENT,
  `Data_hora_Exame` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Resultado_Exame` text NOT NULL,
  `Cod_Consulta` bigint NOT NULL,
  `CRM_Clinico` bigint NOT NULL,
  `Cod_Local_Exame` bigint NOT NULL,
  PRIMARY KEY (`Cod_Exame`),
  KEY `fk_Cod_Consulta` (`Cod_Consulta`),
  KEY `fk_CRM_Clinico` (`CRM_Clinico`),
  KEY `fk_Cod_Local_Exame` (`Cod_Local_Exame`),
  CONSTRAINT `fk_Cod_Consulta` FOREIGN KEY (`Cod_Consulta`) REFERENCES `consulta` (`Cod_Consulta`),
  CONSTRAINT `fk_Cod_Local_Exame` FOREIGN KEY (`Cod_Local_Exame`) REFERENCES `local_exames` (`Cod_Local_Exame`),
  CONSTRAINT `fk_CRM_Clinico` FOREIGN KEY (`CRM_Clinico`) REFERENCES `clinico` (`CRM_Clinico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exames`
--

LOCK TABLES `exames` WRITE;
/*!40000 ALTER TABLE `exames` DISABLE KEYS */;
INSERT INTO `exames` VALUES (1,'2021-08-15 09:55:00','Câncer de colo de útero',7,1,1),(2,'2021-08-01 15:00:00','esclerose múltipla',8,2,2),(3,'2021-09-17 14:35:32','Cirrose - doença no fígado',2,3,3),(4,'2021-09-28 08:45:45','Detecção qualitativa de Corona Vírus - SARS-CoV-2',3,4,4),(5,'2021-10-04 11:00:53','Hipertensão e diabete alta',12,5,5),(6,'2021-10-21 10:32:18','hipertensão',6,6,6),(7,'2021-10-27 16:06:28','Epilepsia',10,7,7),(8,'2021-11-10 13:35:16','Dormência e fraqueza nas mãos',13,8,8),(9,'2021-11-19 09:00:52','Vulvite',20,9,9),(10,'2021-11-23 10:38:00','Síndrome de Gilbert',9,10,10),(11,'2021-11-29 14:35:57','Infecção urinária',4,1,11),(12,'2021-12-08 16:35:57','Insuficiência cardíaca congestiva',11,2,12),(13,'2021-12-15 09:35:52','Perda de audição Leve',15,3,13),(14,'2021-12-24 08:00:00','Câncer de Pele',18,4,14),(15,'2021-12-25 09:00:00','Dentes cheios de Cárie',19,5,15),(16,'2021-12-26 10:00:00','Irritação na pele',17,6,16),(17,'2021-12-27 13:00:00','Cirurgia de retirada de carne crescida',16,7,17),(18,'2021-12-28 14:00:00','Problemas nas glândulas vocais',14,8,18),(19,'2021-12-29 15:00:00','Problema Respiratório',1,9,19),(20,'2021-12-30 16:00:00','Febre e Dores no Corpo',5,10,20);
/*!40000 ALTER TABLE `exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_exames`
--

DROP TABLE IF EXISTS `local_exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_exames` (
  `Cod_Local_Exame` bigint NOT NULL AUTO_INCREMENT,
  `Tipo_Exame` varchar(128) NOT NULL,
  `Cod_Unid_Saude` bigint NOT NULL,
  PRIMARY KEY (`Cod_Local_Exame`),
  KEY `fk_Cod_Unid_Saude` (`Cod_Unid_Saude`),
  CONSTRAINT `fk_Cod_Unid_Saude` FOREIGN KEY (`Cod_Unid_Saude`) REFERENCES `unidade_saude` (`Cod_Unid_Saude`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_exames`
--

LOCK TABLES `local_exames` WRITE;
/*!40000 ALTER TABLE `local_exames` DISABLE KEYS */;
INSERT INTO `local_exames` VALUES (1,'Ultra-sonografia',1),(2,'RM - Ressonância Magnética',2),(3,'Ureia e Creatinina',3),(4,'Sorologia - Teste Covid',4),(5,'Eletrocardiograma',5),(6,'Holter/Mapa',6),(7,'Eletroencefalograma',7),(8,'Eletrofisiológicos',8),(9,'EAS - Exame Urinário',9),(10,'testes hepático e hemograma',10),(11,'Urocultura',1),(12,'Ecodopler',2),(13,'Audiometria',3),(14,' Biópsia',4),(15,'Diagnóstico Bocal',5),(16,'Análise dermatológico',6),(17,'Pterígio',7),(18,'Otoneurológico',8),(19,'Espirometria',9),(20,'Hemograma completo',10);
/*!40000 ALTER TABLE `local_exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `CRM_Medico` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Medico` varchar(128) NOT NULL,
  `CPF_Medico` varchar(11) NOT NULL,
  `Especializacao_Medico` varchar(128) NOT NULL,
  PRIMARY KEY (`CRM_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Andrew Cardim Vinhas','10045898544','Cardiologista'),(2,'Luna Santos Cardoso dos Santos','75444411000','Dentista'),(3,'Helena Setúbal Palmas','04145898500','Dermatologista'),(4,'Eduardo Costa Gonçalves','04145898578','Cardiologista'),(5,'Éder Prado Espargosa','04145890000','Dermatologista'),(6,'Noé Guedes Picão','04140091000','Dermatologista'),(7,'Edvaldo Fernado Pereira','45612347898','Neurologista'),(8,'Rita Maria Mercedes','45612347878','Oftamologista'),(9,'Solange Noite Gameiros','45622247878','Oftamologista'),(10,'José Ricardo Moraes','10440074800','Terapeuta'),(11,'Elaine Souza Figueredo','10486500140','Pediatra'),(12,'Alice Freire Muniz','10444400140','Pediatra'),(13,'Ronald Gustavo da Silva','10478411196','Fisioterapeuta'),(14,'Renan Ferreira Alvesa','98099209702','Fisioterapeuta'),(15,'Lara Souza Barros','97538065903','Fisioterapeuta'),(16,'Beatrice Araujo Cardoso','32041361166','Fisioterapeuta'),(17,'Júlia Paes Cardoso Freire','05005410148','Ginecologista'),(18,'Igor Sousa Ribeiroe','80001495160','Ginecologista'),(19,'Piere Oliveira Culler','26504011008','Psicólogo'),(20,'Celso Rosivaldo Junior Ferreira','15221469252','Otorrino');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `Id_Cadastro_Paciente` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Paciente` varchar(128) NOT NULL,
  `Nacimento_Paciente` date NOT NULL,
  `Sexo_Paciente` char(10) NOT NULL,
  `Num_SUS_Paciente` bigint NOT NULL,
  `CPF_Paciente` varchar(11) NOT NULL,
  `Telefone_Paciente` bigint DEFAULT NULL,
  `Celular_Paciente` bigint DEFAULT NULL,
  `Cidade_Paciente` varchar(50) NOT NULL,
  `Bairro_Paciente` varchar(50) NOT NULL,
  `Rua_Paciente` varchar(128) NOT NULL,
  `Num_Residencia_Paciente` int NOT NULL,
  `CEP_Paciente` varchar(15) NOT NULL,
  `Id_Atendente` bigint NOT NULL,
  PRIMARY KEY (`Id_Cadastro_Paciente`),
  KEY `fk_Id_Atendente` (`Id_Atendente`),
  CONSTRAINT `fk_Id_Atendente` FOREIGN KEY (`Id_Atendente`) REFERENCES `atendente` (`Id_Atendente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Fátima de Souza','1965-09-15','Feminino',898000406027953,'05613000070',9128641788,91991445384,'Belém','Fátima','Passagem Ademar de Barros',2715,'66060-650',1),(2,'Michele Santana','1985-11-19','Feminino',701114610202817,'23019235525',9135488400,91981305848,'Belém','Marambaia','Rua Acará',5231,'66620-320',2),(3,'Marcela Álvares','1978-02-17','Feminino',700137286846756,'07338766413',9135088714,91985291464,'Belém','Jurunas','Vila Adiel',9326,'66026-025',3),(4,'Sueli Cardoso','1963-09-16','Feminino',898160938222755,'04595175324',9130088714,91973891628,'Belém','Umarizal','Vila Aguiar',4391,'66050-010',4),(5,'Fernando Carvalho','1989-02-04','Masculino',700967499160003,'02764832401',9130080014,91981049128,'Belém','Castanheira','Passagem Aidee',5435,'66645435',5),(6,'Armane Barbosa ','1976-03-22','Masculino',701200076607217,'03474114851',9138618834,91985241175,'Belém','Tapanã','Rua Alasca',156,'66833-330',6),(7,'Eleanor Shellstrop','1980-07-18','Feminino',700309935035931,'08468614330',9134010834,91998571834,'Belém','Bengui','Rua Ajax de Oliveira',8669,'66630-000',7),(8,'Rafael Moreira','1993-03-08','Masculino',898983467852715,'12345678998',9135487015,91985952600,'Belém','Terra Firme','Rua São Domingos',653,'66077-650',8),(9,'Kimberly Kimmy Schmidt','1980-05-02','Feminino',898000602332828,'15968544950',9126870007,91993285281,'Belém','Guamá','Rua Barão de Igarapé Miri',1609,'66075-000',9),(10,'Jorgeney Jorge Almeida','1971-08-10','Masculino',701200076607217,'16417399255',9134877580,91974823008,'Belém','Itaiteua','Rua da Horta',1146,'66842-180',10),(11,'Joana Coelho','1988-08-12','Feminino',700002752358207,'18245268507',9134877555,91987622357,'Belém','Águas Lindas','Passagem Paraíba',4687,'66690-763',1),(12,'Jurandir dos Santos ','1979-03-05','Masculino',703201623962398,'15200311655',9138038318,91992581779,'Belém','Nazaré','Jardim São Luís',1020,'66035-240',2),(13,'Chidi Anagonye','1980-02-08','Masculino',898004943664026,'15258311655',9138038001,91975311862,'Belém','Pedreira','Vila Estreita',2755,'66087-740',3),(14,'Marco Álvares','1989-02-27','Masculino',701543552310156,'27635408030',9145438020,91979721452,'Belém','Reduto','Beco da Piedade',2755,'66053-220',4),(15,'Lillian Kaushtupper','1952-06-18','Feminino',700468793268669,'22486675242',9146438201,91968168118,'Belém','São Braz','Travessa das Mercedes',8684,'66093-630',5),(16,'Tahani Al-Jamil','1986-02-25','Feminino',700439161787052,'25297865654',9120888306,91973372030,'Belém','Val-de-Cães','Avenida Brasil',1372,'66617-300',6),(17,'Glória Ribeiro','1991-11-27','Feminino',898000085774482,'29441182925',9140258306,91985697567,'Belém','Agulha','Rua Oito de Maio',6785,'66811-130',7),(18,'Titus Andromedon','1979-02-21','Masculino',700510413908665,'30579024332',9131419001,91969016565,'Belém','Batista Campos','Passagem do Horto',6756,'66035-260',8),(19,'Jason Mendoza','1987-08-19','Masculino',704201205468582,'35445221764',9131419000,91984615111,'Belém','Chapéu Virado','Travessa Sete',9834,'66913-360',9),(20,'André Santana','1989-05-24','Masculino',898003400540716,'38418682772',9136519121,91986356372,'Belém','Farol','Alameda Erondinha',3822,'66916-260',10);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posto_vacinacao`
--

DROP TABLE IF EXISTS `posto_vacinacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posto_vacinacao` (
  `Cod_PostoVacinacao` bigint NOT NULL AUTO_INCREMENT,
  `Cod_Vacina` bigint NOT NULL,
  `Cod_Unidade_Saude` bigint NOT NULL,
  PRIMARY KEY (`Cod_PostoVacinacao`),
  KEY `fk_Cod_Vacina` (`Cod_Vacina`),
  KEY `fk_Cod_Unidade_Saude` (`Cod_Unidade_Saude`),
  CONSTRAINT `fk_Cod_Unidade_Saude` FOREIGN KEY (`Cod_Unidade_Saude`) REFERENCES `unidade_saude` (`Cod_Unid_Saude`),
  CONSTRAINT `fk_Cod_Vacina` FOREIGN KEY (`Cod_Vacina`) REFERENCES `vacina` (`Cod_Vacina`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posto_vacinacao`
--

LOCK TABLES `posto_vacinacao` WRITE;
/*!40000 ALTER TABLE `posto_vacinacao` DISABLE KEYS */;
INSERT INTO `posto_vacinacao` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `posto_vacinacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remedio`
--

DROP TABLE IF EXISTS `remedio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remedio` (
  `Cod_Remedio` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Remedio` varchar(100) NOT NULL,
  `CRM_Medicos` bigint NOT NULL,
  PRIMARY KEY (`Cod_Remedio`),
  KEY `fk_CRM_Medico` (`CRM_Medicos`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remedio`
--

LOCK TABLES `remedio` WRITE;
/*!40000 ALTER TABLE `remedio` DISABLE KEYS */;
INSERT INTO `remedio` VALUES (1,'Azitromicina  di-hidratada 500mg',12),(2,'hidroclorotiazida 25mg',8),(3,'toragesic - trometamol cetorolaco 10mg',3),(4,'trabsamin ácido tranexâmico 250mg',20),(5,'Max Sulid - nimesulida betaciclodextrina 400mg',11),(6,'PraIVA - Cloridrato de moxifloxacino 400mg',12),(7,'Advil - ibuprofeno 400mg',5),(8,'Sertralina 50 mg ',20),(9,'Zolpidem 10 mg',6),(10,'Nimesulida 100 mg ',18),(11,'Gencitabina 1g',17),(12,'5-fluorouracil ',8),(13,'Naproxeno 500 mg ',9),(14,'Gino-Canesten 3 100mg',1),(15,'Tylenol 500mg',69850),(16,'Polaramine 2mg',20),(17,'Proex 50mg',10),(18,'Aduhelm 170mg',19),(19,'Proex 50mg',15),(20,'Cloridrato de Sibutramina 15mg',16);
/*!40000 ALTER TABLE `remedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade_saude`
--

DROP TABLE IF EXISTS `unidade_saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidade_saude` (
  `Cod_Unid_Saude` bigint NOT NULL AUTO_INCREMENT,
  `Nome_Unid_Saude` varchar(128) NOT NULL,
  `Cidade_Unid_Saude` varchar(50) NOT NULL,
  `Bairro_Unid_Saude` varchar(50) NOT NULL,
  `Rua_Unid_Saude` varchar(128) NOT NULL,
  `Num_resid_Unid_Saude` int NOT NULL,
  `CEP_Unid_Saude` varchar(9) NOT NULL,
  PRIMARY KEY (`Cod_Unid_Saude`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade_saude`
--

LOCK TABLES `unidade_saude` WRITE;
/*!40000 ALTER TABLE `unidade_saude` DISABLE KEYS */;
INSERT INTO `unidade_saude` VALUES (1,'Hospital Ophir Loyola','Belém','São Brás','Avenida Governador Magalhães Barata',992,'66060-281'),(2,'Hospital Público Estadual Galileu','Belém','Una','Rodovia Mário Covas',2553,'66652-000'),(3,'Hospital Abelardo Santos','Belém','Campina de Icoaraci','Avenida Augusto Montenegro',335,'66811-000'),(4,'Hospital Santa Casa Misericórdia','Belém','Umarizal','Rua Oliveira Belo',4785,'66050-380'),(5,'Hospital de Clínicas Gaspar Viana','Belém','Pedreira','Travessa Alferes Costa',7891,'66087-660'),(6,'Unidade Municipal de Saúde Icoaraci','Belém','Centro','Rua Manuel Barata',840,'66812-020'),(7,'Unidade Municipal de Saúde Guamá','Belém','Guamá','Rua Barão de Igarapé Miri',476,'66075-000'),(8,'Unidade Municipal de Saúde Outeiro','Belém','São João do Outeiro','Rua Manuel Barata',478,'66840-040'),(9,'Unidade Básica de Saúde Tenoné II','Belém','Tenoné','Passagem Sexta Linha',549,'66820-170'),(10,'Unidade Básica de Saúde Providência','Belém','Val de Caes','Avenida Norte',6401,'66110-054');
/*!40000 ALTER TABLE `unidade_saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacina`
--

DROP TABLE IF EXISTS `vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacina` (
  `Cod_Vacina` bigint NOT NULL AUTO_INCREMENT,
  `Tipo_Vacina` varchar(50) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Lote` varchar(50) NOT NULL,
  PRIMARY KEY (`Cod_Vacina`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina`
--

LOCK TABLES `vacina` WRITE;
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
INSERT INTO `vacina` VALUES (1,'Raiva','Rabipur, Verorab','22054DN'),(2,'Sarampo','MMR-II e Priorix','78940BD'),(3,'Febre Amarela','Stamaril','10256BC'),(4,'Hepatite A','Avaxim, Havrix, Vaqta','28230LP'),(5,'Hepatite B','Engerix, Euvax, Recombivax','FC24890'),(6,'HPV','Cervarix, Gardasil','BE45789'),(7,'Influenza','Influvac','78784SD'),(8,'Rubéola e Varicela','ProQuad','23740RT'),(9,'Varicela','Varilrix e Varivax','DT14514'),(10,'Pneumocócica 10 V','Synflorix','TF45601'),(11,'Meningocócica C','Nimenrix','71120RF');
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07  0:06:00
