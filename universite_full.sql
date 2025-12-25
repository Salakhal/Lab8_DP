-- MariaDB / MySQL dump
-- Base de données : universite

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- ------------------------------------------------------
-- 1. Table ETUDIANT (Cruciale pour l'étape 4 et 7)
-- ------------------------------------------------------
DROP TABLE IF EXISTS `ETUDIANT`;
CREATE TABLE `ETUDIANT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) UNIQUE,
  `ville` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ETUDIANT` VALUES (1,'Alami','Ahmed','ahmed@mail.com','Casablanca'), (2,'Bennani','Sara','sara@mail.com','Marrakech');

-- ------------------------------------------------------
-- 2. Table PROFESSEUR
-- ------------------------------------------------------
DROP TABLE IF EXISTS `PROFESSEUR`;
CREATE TABLE `PROFESSEUR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `specialite` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `PROFESSEUR` VALUES (1,'Dr. Zaid','Informatique'), (2,'Mme. Idrissi','Mathématiques');

-- ------------------------------------------------------
-- 3. Table COURS (Déjà vue dans votre extrait)
-- ------------------------------------------------------
DROP TABLE IF EXISTS `COURS`;
CREATE TABLE `COURS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `code` varchar(20) UNIQUE,
  `credits` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `COURS` VALUES (1,'Java','CS101',4), (2,'Algèbre','MA201',3);

-- ------------------------------------------------------
-- 4. Table INSCRIPTION (Importante pour l'optimisation)
-- ------------------------------------------------------
DROP TABLE IF EXISTS `INSCRIPTION`;
CREATE TABLE `INSCRIPTION` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etudiant_id` int(11),
  `cours_id` int(11),
  `date_inscription` date,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_ins_etudiant` FOREIGN KEY (`etudiant_id`) REFERENCES `ETUDIANT` (`id`),
  CONSTRAINT `fk_ins_cours` FOREIGN KEY (`cours_id`) REFERENCES `COURS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `INSCRIPTION` VALUES (1,1,1,'2023-09-01'), (2,2,2,'2023-09-02');

-- ------------------------------------------------------
-- 5. Table EXAMEN (Requise pour l'étape 9)
-- ------------------------------------------------------
DROP TABLE IF EXISTS `EXAMEN`;
CREATE TABLE `EXAMEN` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etudiant_id` int(11),
  `note` decimal(4,2),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------
-- 6. ROUTINES / TRIGGERS (Option --routines --triggers)
-- ------------------------------------------------------
-- (Le contenu ici dépend de ce que vous avez créé en cours)

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
