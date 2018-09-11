-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 15 Juin 2016 à 15:45
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ifraroute`
--
CREATE DATABASE IF NOT EXISTS `ifraroute` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ifraroute`;

-- --------------------------------------------------------

--
-- Structure de la table `commettre`
--

DROP TABLE IF EXISTS `commettre`;
CREATE TABLE IF NOT EXISTS `commettre` (
  `vehicule_id` int(11) NOT NULL,
  `infraction_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  KEY `fk_commettre_vehicule1_idx` (`vehicule_id`),
  KEY `fk_commettre_infraction1_idx` (`infraction_id`),
  KEY `fk_commettre_utilisateur1_idx` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commettre`
--

INSERT INTO `commettre` (`vehicule_id`, `infraction_id`, `utilisateur_id`) VALUES
(123456789, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `comportement`
--

DROP TABLE IF EXISTS `comportement`;
CREATE TABLE IF NOT EXISTS `comportement` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(25) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `comportement`
--

INSERT INTO `comportement` (`id`, `intitule`, `date`) VALUES
(1, 'Normal', '2016-05-05'),
(2, 'Fuite', '2016-05-05'),
(3, 'Agressif', '2016-05-18');

-- --------------------------------------------------------

--
-- Structure de la table `degre`
--

DROP TABLE IF EXISTS `degre`;
CREATE TABLE IF NOT EXISTS `degre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amende` int(11) NOT NULL,
  `peine` varchar(15) DEFAULT NULL,
  `nombr_pts_retir` int(11) NOT NULL,
  `typeinfraction_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_degre_typeinfraction1_idx` (`typeinfraction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `degre`
--

INSERT INTO `degre` (`id`, `amende`, `peine`, `nombr_pts_retir`, `typeinfraction_id`) VALUES
(1, 2500, NULL, 1, 1),
(2, 3000, NULL, 2, 1),
(3, 4000, NULL, 4, 1),
(4, 6000, NULL, 6, 1),
(5, 20000, '3 mois à 3 ans', 8, 2),
(6, 300000, '2 à 5 ans', 8, 2),
(7, 150000, '1 à 3 ans', 8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `infraction`
--

DROP TABLE IF EXISTS `infraction`;
CREATE TABLE IF NOT EXISTS `infraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dat_inf` date NOT NULL,
  `heur` time NOT NULL,
  `lieu` varchar(45) NOT NULL,
  `commune` varchar(45) NOT NULL,
  `daira` varchar(45) NOT NULL,
  `wilaya` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `comportement_id` int(11) NOT NULL,
  `nominfraction_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_infraction_comportement1_idx` (`comportement_id`),
  KEY `fk_infraction_nominfraction1_idx` (`nominfraction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `infraction`
--

INSERT INTO `infraction` (`id`, `dat_inf`, `heur`, `lieu`, `commune`, `daira`, `wilaya`, `date`, `comportement_id`, `nominfraction_id`) VALUES
(1, '2013-06-06', '18:00:00', 'CARFORT DES 4CHEMIN', 'Bejaia', 'Bejaia', 'Bejaia', '2016-06-13', 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marq` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`id`, `nom_marq`) VALUES
(1, 'PEUGEOT'),
(2, 'RENAULT'),
(3, 'CITROEN'),
(4, 'AUDI'),
(5, 'BMW'),
(6, 'HYUNDAI'),
(7, 'MERCEDES'),
(8, 'KIA'),
(9, 'CHEVROLET'),
(10, 'FORD'),
(11, 'DACIA'),
(12, 'TOYOTA'),
(13, 'HONDA'),
(14, 'MITSUBISHI'),
(15, 'NISSAN'),
(16, 'SUZUKI');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_model` varchar(10) NOT NULL,
  `marque_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_modele_marque1_idx` (`marque_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `modele`
--

INSERT INTO `modele` (`id`, `nom_model`, `marque_id`) VALUES
(1, '308', 1),
(2, '208', 1),
(3, 'CLIO', 2),
(4, 'MEGANE', 2),
(5, 'C3', 3),
(6, 'Berlingo', 3),
(7, 'A3', 4),
(8, 'A6', 4),
(9, 'X5', 5),
(10, 'M3', 5),
(11, 'I20', 6),
(12, 'I40', 6);

-- --------------------------------------------------------

--
-- Structure de la table `nominfraction`
--

DROP TABLE IF EXISTS `nominfraction`;
CREATE TABLE IF NOT EXISTS `nominfraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `degre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nominfraction_degre1_idx` (`degre_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `nominfraction`
--

INSERT INTO `nominfraction` (`id`, `description`, `degre_id`) VALUES
(1, 'Eclairage, signalisation et freinage  des  cycles.', 1),
(2, 'Usage d’un dispositif ou d’un équipement de véhicule  non conforme.', 1),
(3, 'Réduction anormale de la vitesse, sans raison impérieuse, de nature à diminuer la fluidité du trafic.', 2),
(5, 'Emploi des dispositifs sonores', 2),
(6, ' Non apposition d’une signalisation appropriée par tout conducteur titulaire d’un permis de conduire probatoire.', 2),
(7, 'Empiètement d’une ligne continue', 2),
(8, 'Non port de la ceinture de sécurité', 3),
(9, 'Arrêt ou au stationnement dangereux', 3),
(10, 'Non respect  de la distance légale entre les véhicules en mouvement.', 3),
(11, 'Circulation, l’arrêt ou le stationnement sans nécessité impérieuse sur la bande d’arrêt d’urgence ', 3),
(12, 'Non respect du panneau prescrivant l’arrêt absolu.', 4),
(13, 'Accélération d’allure par le conducteur d’un véhicule sur le point d’être dépassé.', 4),
(14, 'Franchissement d’une ligne continue.', 4),
(15, 'Homicide et/ou des blessures involontaires.', 5),
(16, 'Tout conducteur en  état d’ivresse ou sous l’effet de substances ou de plantes classées comme stupéfiants qui commet un homicide involontaire.', 6),
(17, 'Tout conducteur en état d’ivresse ou sous l’effet de substances ou de plantes classées comme stupéfiants qui commet un délit de blessures involontaires.', 7);

-- --------------------------------------------------------

--
-- Structure de la table `permis`
--

DROP TABLE IF EXISTS `permis`;
CREATE TABLE IF NOT EXISTS `permis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dat_deliv` date NOT NULL,
  `lieu_deliv` varchar(45) NOT NULL,
  `debut_valab` date NOT NULL,
  `fin_valab` date NOT NULL,
  `categorie` varchar(2) NOT NULL,
  `nombr_pts` int(11) NOT NULL,
  `wilaya_pc` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  `utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permis_utilisateur1_idx` (`utilisateur_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `permis`
--

INSERT INTO `permis` (`id`, `dat_deliv`, `lieu_deliv`, `debut_valab`, `fin_valab`, `categorie`, `nombr_pts`, `wilaya_pc`, `date`, `utilisateur_id`) VALUES
(1, '2015-06-02', 'Amizour', '2015-03-01', '2017-02-28', 'B', 24, 'bejaia', '2016-06-15', 3),
(2, '0000-00-00', '', '0000-00-00', '0000-00-00', '- ', 24, '- - - Choisir - - -', NULL, 4),
(3, '0000-00-00', '', '0000-00-00', '0000-00-00', '- ', 24, '- - - Choisir - - -', NULL, 5);

-- --------------------------------------------------------

--
-- Structure de la table `typeinfraction`
--

DROP TABLE IF EXISTS `typeinfraction`;
CREATE TABLE IF NOT EXISTS `typeinfraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type_inf` varchar(15) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `typeinfraction`
--

INSERT INTO `typeinfraction` (`id`, `nom_type_inf`, `date`) VALUES
(1, 'contravantion', '2016-05-02'),
(2, 'delits', '2016-05-10');

-- --------------------------------------------------------

--
-- Structure de la table `typevehicule`
--

DROP TABLE IF EXISTS `typevehicule`;
CREATE TABLE IF NOT EXISTS `typevehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type_veh` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `typevehicule`
--

INSERT INTO `typevehicule` (`id`, `nom_type_veh`, `date`) VALUES
(1, 'VÉHICULE PARTICULIER ', '2016-05-23'),
(2, 'VÉHICULE UTILITAIRE ', '2016-05-23'),
(3, 'VEHICULE DE  TRANSPORT EN  COMMUN ', '2016-05-23'),
(4, 'VEHICULE INDUSTRIEL  CAMIONNETTE', '2016-05-23'),
(5, 'VEHICULE INDUSTRIEL  CAMION SEMI- REMORQUE', '2016-05-23'),
(6, 'VÉHICULE SPÉCIFIQUE', '2016-05-23'),
(7, 'MOTO', '2016-05-23');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `dat_naiss` date NOT NULL,
  `lieu_naiss` varchar(25) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `group_sang` varchar(3) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL,
  `motdepass` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `grade` varchar(25) DEFAULT NULL,
  `service` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `photo`, `dat_naiss`, `lieu_naiss`, `adress`, `group_sang`, `mail`, `role`, `motdepass`, `date`, `grade`, `service`) VALUES
(1, 'ABBACI', 'Narimane', 'elledu61794@gmail.com.png', '1994-07-01', 'Amizour', 'Amizour', 'O+', 'elledu61794@gmail.com', 'Policeadmin', 'super', '2016-06-08', NULL, NULL),
(2, 'ALITOUCHE', 'lamia', 'starhorse@outlook.fr.jpg', '1994-07-13', 'Bejaia', 'Bejaia', 'A-', 'starhorse@outlook.fr', 'Police', 'aaaa', '2016-06-08', NULL, NULL),
(3, 'IZEM', 'Massinissa', 'massinissaizem@gmail.com.jpg', '1994-01-24', 'Amizour', 'Feraoun Amizour Bejaia', ' B+', 'massinissaizem@gmail.com', 'Superadmin', 'izem', '2016-06-15', NULL, NULL),
(4, 'IZEM', 'Rafik', 'izem.9994@gmail.com.jpg', '1994-09-09', 'Amizour', 'Feraoun Amizour Bejaia', 'B+', 'izem.9994@gmail.com', 'Administrateur', '1994.09.09', '2016-06-15', NULL, NULL),
(5, 'Madi', 'Mebrouka', 'madi.meb14@gmail.com.jpg', '2016-06-23', 'Bejaia', 'Bejaia', 'B+', 'madi.meb14@gmail.com', 'Conducteur', '2016.06.15', '2016-06-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `modele_id` int(11) NOT NULL,
  `typevehicule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicule_modele1_idx` (`modele_id`),
  KEY `fk_vehicule_typevehicule1_idx` (`typevehicule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123456790 ;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `date`, `modele_id`, `typevehicule_id`) VALUES
(123456789, '2016-06-15', 3, 3);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commettre`
--
ALTER TABLE `commettre`
  ADD CONSTRAINT `fk_commettre_infraction1` FOREIGN KEY (`infraction_id`) REFERENCES `infraction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_commettre_utilisateur1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_commettre_vehicule1` FOREIGN KEY (`vehicule_id`) REFERENCES `vehicule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `degre`
--
ALTER TABLE `degre`
  ADD CONSTRAINT `fk_degre_typeinfraction1` FOREIGN KEY (`typeinfraction_id`) REFERENCES `typeinfraction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `infraction`
--
ALTER TABLE `infraction`
  ADD CONSTRAINT `fk_infraction_comportement1` FOREIGN KEY (`comportement_id`) REFERENCES `comportement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_infraction_nominfraction1` FOREIGN KEY (`nominfraction_id`) REFERENCES `nominfraction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `fk_modele_marque1` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `nominfraction`
--
ALTER TABLE `nominfraction`
  ADD CONSTRAINT `fk_nominfraction_degre1` FOREIGN KEY (`degre_id`) REFERENCES `degre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `permis`
--
ALTER TABLE `permis`
  ADD CONSTRAINT `fk_permis_utilisateur1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `fk_vehicule_modele1` FOREIGN KEY (`modele_id`) REFERENCES `modele` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicule_typevehicule1` FOREIGN KEY (`typevehicule_id`) REFERENCES `typevehicule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
