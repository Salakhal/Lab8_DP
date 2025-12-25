-- MySQL dump 10.13  Distrib 8.0.x, for Win64 (x86_64)
-- Host: localhost    Database: universite
-- ------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Table structure for table `ETUDIANT` (Utilisée pour l'étape 4 et 7)
--
DROP TABLE IF EXISTS `ETUDIANT`;
CREATE TABLE `ETUDIANT` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `ETUDIANT` WRITE;
INSERT INTO `ETUDIANT` VALUES (1,'Alami','Ahmed','ahmed@mail.com'),(2,'Bennani','Sara','sara@mail.com');
UNLOCK TABLES;

--
-- Table structure for table `COURS` (Utilisée pour l'étape 9)
--
DROP TABLE IF EXISTS `COURS`;
CREATE TABLE `COURS` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `COURS` WRITE;
INSERT INTO `COURS` VALUES (1,'Java','CS101'),(2,'Bases de Données','CS102');
UNLOCK TABLES;

--
-- Table structure for table `INSCRIPTION` (Utilisée pour l'étape 6, 7 et 8)
--
DROP TABLE IF EXISTS `INSCRIPTION`;
CREATE TABLE `INSCRIPTION` (
  `id` int NOT NULL AUTO_INCREMENT,
  `etudiant_id` int NOT NULL,
  `cours_id` int NOT NULL,
  `date_inscription` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_etudiant` (`etudiant_id`),
  KEY `fk_cours` (`cours_id`),
  CONSTRAINT `fk_cours` FOREIGN KEY (`cours_id`) REFERENCES `COURS` (`id`),
  CONSTRAINT `fk_etudiant` FOREIGN KEY (`etudiant_id`) REFERENCES `ETUDIANT` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `INSCRIPTION` WRITE;
INSERT INTO `INSCRIPTION` VALUES (1,1,1,'2023-09-01'),(2,2,2,'2023-09-02');
UNLOCK TABLES;

--
-- Table structure for table `EXAMEN` (Utilisée pour l'étape 9)
--
DROP TABLE IF EXISTS `EXAMEN`;
CREATE TABLE `EXAMEN` (
  `id` int NOT NULL AUTO_INCREMENT,
  `etudiant_id` int NOT NULL,
  `note` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Routines, Triggers et Events (Requis par l'option --routines --triggers --events)
--
DELIMITER ;;
/*!50003 CREATE TRIGGER `avant_inscription` BEFORE INSERT ON `INSCRIPTION` FOR EACH ROW 
BEGIN 
  -- Logique du trigger ici
END */;;
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
