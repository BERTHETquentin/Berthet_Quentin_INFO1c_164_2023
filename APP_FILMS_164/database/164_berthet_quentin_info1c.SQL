-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: 164_berthet_quentin_info1c

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS 164_berthet_quentin_info1c;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS 164_berthet_quentin_info1c;

-- Utilisation de cette base de donnée

USE 164_berthet_quentin_info1c;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour 164_berthet_quentin_info1c
CREATE DATABASE IF NOT EXISTS `164_berthet_quentin_info1c` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `164_berthet_quentin_info1c`;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_acheter_produit
CREATE TABLE IF NOT EXISTS `t_acheter_produit` (
  `ID_Acheter_Produit` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Produit` int(11) DEFAULT NULL,
  `FK_Client` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Acheter_Produit`),
  KEY `FK_produit` (`FK_Produit`),
  KEY `FK_Employe` (`FK_Client`),
  CONSTRAINT `FK_T_Acheter_Produit_t_client` FOREIGN KEY (`FK_Client`) REFERENCES `t_client` (`ID_Client`),
  CONSTRAINT `FK_T_Acheter_Produit_t_produit` FOREIGN KEY (`FK_Produit`) REFERENCES `t_produit` (`ID_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_acheter_produit : ~0 rows (environ)
/*!40000 ALTER TABLE `t_acheter_produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_acheter_produit` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_adresse
CREATE TABLE IF NOT EXISTS `t_adresse` (
  `ID_Adresse` int(11) NOT NULL AUTO_INCREMENT,
  `Ville_Adr` char(50) DEFAULT NULL,
  `Rue_Adr` char(50) DEFAULT NULL,
  `Num_Adr` int(11) DEFAULT NULL,
  `NPA_Adr` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_adresse : ~0 rows (environ)
/*!40000 ALTER TABLE `t_adresse` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adresse` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_avoir_adresse
CREATE TABLE IF NOT EXISTS `t_avoir_adresse` (
  `ID_Avoir_Adresse` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Adresse` int(11) DEFAULT NULL,
  `FK_Client` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Avoir_Adresse`),
  KEY `FK_Adresse` (`FK_Adresse`),
  KEY `FK_Client` (`FK_Client`),
  CONSTRAINT `FK_t_avoir_adresse_t_adresse` FOREIGN KEY (`FK_Adresse`) REFERENCES `t_adresse` (`ID_Adresse`),
  CONSTRAINT `FK_t_avoir_adresse_t_client` FOREIGN KEY (`FK_Client`) REFERENCES `t_client` (`ID_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_avoir_adresse : ~0 rows (environ)
/*!40000 ALTER TABLE `t_avoir_adresse` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_avoir_adresse` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_avoir_mail
CREATE TABLE IF NOT EXISTS `t_avoir_mail` (
  `ID_Avoir_Mail` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Mail` int(11) DEFAULT NULL,
  `FK_Client` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Avoir_Mail`),
  KEY `FK_T_Avoir_Mail_t_mail` (`FK_Mail`),
  KEY `FK_T_Avoir_Mail_t_client` (`FK_Client`),
  CONSTRAINT `FK_T_Avoir_Mail_t_client` FOREIGN KEY (`FK_Client`) REFERENCES `t_client` (`ID_Client`),
  CONSTRAINT `FK_T_Avoir_Mail_t_mail` FOREIGN KEY (`FK_Mail`) REFERENCES `t_mail` (`ID_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_avoir_mail : ~0 rows (environ)
/*!40000 ALTER TABLE `t_avoir_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_avoir_mail` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_avoir_tel
CREATE TABLE IF NOT EXISTS `t_avoir_tel` (
  `ID_Avoir_Tel` int(11) NOT NULL AUTO_INCREMENT,
  `FK_Telephone` int(11) DEFAULT NULL,
  `FK_Client` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Avoir_Tel`),
  KEY `FK_Telephone` (`FK_Telephone`),
  KEY `FK_Client` (`FK_Client`),
  CONSTRAINT `FK__t_client` FOREIGN KEY (`FK_Client`) REFERENCES `t_client` (`ID_Client`),
  CONSTRAINT `FK__t_telephone` FOREIGN KEY (`FK_Telephone`) REFERENCES `t_telephone` (`ID_Telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_avoir_tel : ~0 rows (environ)
/*!40000 ALTER TABLE `t_avoir_tel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_avoir_tel` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_client
CREATE TABLE IF NOT EXISTS `t_client` (
  `ID_Client` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Client` char(50) DEFAULT NULL,
  `Prenom_Client` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_client : ~1 rows (environ)
/*!40000 ALTER TABLE `t_client` DISABLE KEYS */;
INSERT INTO `t_client` (`ID_Client`, `Nom_Client`, `Prenom_Client`) VALUES
	(1, 'Delapraz', 'Marlo');
/*!40000 ALTER TABLE `t_client` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_employe
CREATE TABLE IF NOT EXISTS `t_employe` (
  `ID_Employe` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Employe` char(50) DEFAULT NULL,
  `Prenom_Employe` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Employe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_employe : ~0 rows (environ)
/*!40000 ALTER TABLE `t_employe` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_employe` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_mail
CREATE TABLE IF NOT EXISTS `t_mail` (
  `ID_Mail` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_mail : ~0 rows (environ)
/*!40000 ALTER TABLE `t_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mail` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_mettre
CREATE TABLE IF NOT EXISTS `t_mettre` (
  `ID_Mettre` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Mettre` date DEFAULT NULL,
  `Nombre_Mettre` int(11) DEFAULT NULL,
  `FK_Produit` int(11) DEFAULT NULL,
  `FK_Employe` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Mettre`),
  KEY `FK_Produit` (`FK_Produit`),
  KEY `FK_Employe` (`FK_Employe`),
  CONSTRAINT `FK_t_mettre_t_employe` FOREIGN KEY (`FK_Employe`) REFERENCES `t_employe` (`ID_Employe`),
  CONSTRAINT `FK_t_mettre_t_produit` FOREIGN KEY (`FK_Produit`) REFERENCES `t_produit` (`ID_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_mettre : ~0 rows (environ)
/*!40000 ALTER TABLE `t_mettre` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mettre` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_prendre
CREATE TABLE IF NOT EXISTS `t_prendre` (
  `ID_Prendre` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Prendre` date DEFAULT NULL,
  `Nombre_Prendre` int(11) DEFAULT NULL,
  `FK_Produit` int(11) DEFAULT NULL,
  `FK_Employe` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Prendre`),
  KEY `FK_Produit` (`FK_Produit`),
  KEY `FK_Employe` (`FK_Employe`),
  CONSTRAINT `FK_T_Prendre_t_employe` FOREIGN KEY (`FK_Employe`) REFERENCES `t_employe` (`ID_Employe`),
  CONSTRAINT `FK_T_Prendre_t_produit` FOREIGN KEY (`FK_Produit`) REFERENCES `t_produit` (`ID_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_prendre : ~0 rows (environ)
/*!40000 ALTER TABLE `t_prendre` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prendre` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_produit
CREATE TABLE IF NOT EXISTS `t_produit` (
  `ID_Produit` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Prod` char(50) DEFAULT NULL,
  `Type_Prod` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_produit : ~0 rows (environ)
/*!40000 ALTER TABLE `t_produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_produit` ENABLE KEYS */;

-- Export de la structure de la table 164_berthet_quentin_info1c. t_telephone
CREATE TABLE IF NOT EXISTS `t_telephone` (
  `ID_Telephone` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Tel` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table 164_berthet_quentin_info1c.t_telephone : ~0 rows (environ)
/*!40000 ALTER TABLE `t_telephone` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_telephone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
