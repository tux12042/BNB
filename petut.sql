-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 21 mars 2021 à 20:12
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `petut`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE IF NOT EXISTS `abonnement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `id_reunion` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`id`, `id_utilisateur`, `id_reunion`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 4, 1),
(5, 1, 4),
(6, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reunion` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `nom_utilisateur` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_reunion`, `id_utilisateur`, `commentaire`, `nom_utilisateur`) VALUES
(1, 1, 1, 'je suis un commentaire', 'Prevalet virgile'),
(2, 2, 1, 'Je me suis retrouvé avec la canadiène', 'Prevalet virgile'),
(3, 1, 3, 'Yahoo', 'julien fera'),
(4, 3, 1, 'sympa', 'Prevalet virgile');

-- --------------------------------------------------------

--
-- Structure de la table `compte_rendu`
--

DROP TABLE IF EXISTS `compte_rendu`;
CREATE TABLE IF NOT EXISTS `compte_rendu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reunion` int(11) NOT NULL,
  `lien` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte_rendu`
--

INSERT INTO `compte_rendu` (`id`, `id_reunion`, `lien`) VALUES
(1, 2, '../../compte_rendu/1690410857.pdf'),
(2, 1, '../../compte_rendu/337929492.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

DROP TABLE IF EXISTS `reunion`;
CREATE TABLE IF NOT EXISTS `reunion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `description` text NOT NULL,
  `date_creation` date NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL,
  `lieu` text NOT NULL,
  `nb_perso_max` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reunion`
--

INSERT INTO `reunion` (`id`, `nom`, `description`, `date_creation`, `date`, `lieu`, `nb_perso_max`, `categorie`) VALUES
(1, 'vrai réunion', 'description stylé', '2021-01-31', '2021-01-27', 'besac', 5, 104),
(2, 'nouvelle réu', 'vrai descript', '2021-02-03', '2021-03-20', 'dole', 9, 2),
(3, 'reu test', 'description ', '2021-03-19', '2021-06-17', 'Dijon', 7, 3),
(4, 'Reu test', 'qsdqsdqsdqs', '2021-03-20', '2021-04-07', 'ici', 3, 4),
(5, 'Reu test 2', 'qsdqsdqsdqs', '2021-03-20', '2021-04-14', 'là', 5, 3),
(6, 'retour', 'pour vous jouer un mauvais tour', '2021-03-21', '2021-04-22', 'besac', 3, 101);

-- --------------------------------------------------------

--
-- Structure de la table `sousdomaines`
--

DROP TABLE IF EXISTS `sousdomaines`;
CREATE TABLE IF NOT EXISTS `sousdomaines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_domaine` int(11) NOT NULL,
  `id_sous_domaine` int(11) NOT NULL,
  `nom` text NOT NULL,
  `urlimage` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sousdomaines`
--

INSERT INTO `sousdomaines` (`id`, `id_domaine`, `id_sous_domaine`, `nom`, `urlimage`) VALUES
(1, 2, 105, 'test', '2'),
(2, 4, 308, 'argent', '4'),
(3, 5, 404, 'Allemand', '5'),
(4, 1, 1, 'Transition énergétique', 'rien'),
(10, 1, 11, 'truc', '1'),
(6, 1, 2, 'Méthanisation', 'rien'),
(7, 1, 3, 'Gestion de l\'eau', 'rien'),
(8, 1, 4, 'Compost', 'rien'),
(9, 1, 5, 'Gestion des déchets', 'rien'),
(11, 2, 100, 'Maison de santé', 'rien'),
(12, 2, 101, 'Maison des associations', 'rien'),
(13, 2, 102, 'Centre d\'animation', 'rien'),
(14, 2, 103, 'Conseil Municipal des Enfants', 'rien'),
(15, 2, 104, 'Sport et bien-être', 'rien'),
(16, 3, 200, 'EHPAD', 'rien'),
(17, 3, 201, 'MARPA', 'rien'),
(18, 3, 202, 'Crèche', 'rien'),
(19, 3, 203, 'Collège', 'rien'),
(20, 3, 204, 'Ecole', 'rien'),
(21, 4, 300, 'Camping', 'rien'),
(22, 4, 301, 'Urbanisme', 'rien'),
(23, 4, 302, 'Etape touristique', 'rien'),
(24, 4, 303, 'Rive de Meuse', 'rien'),
(25, 4, 304, 'Etang de pêche et de pique-nique', 'rien'),
(26, 4, 305, 'Point d\'information touristique', 'rien'),
(27, 4, 306, 'Voie verte', 'rien'),
(28, 4, 307, 'Marché labellisé', 'rien'),
(29, 5, 400, 'Attirer les entreprises', 'rien'),
(30, 5, 401, 'Viabiliser la sortie d\'autoroute', 'rien'),
(31, 5, 402, 'Agriculture', 'rien'),
(32, 5, 403, 'Commerce de proximité', 'rien');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reunion` int(11) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `mail` text NOT NULL,
  `mdp` text NOT NULL,
  `numero_tel` int(11) NOT NULL,
  `url_image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `mail`, `mdp`, `numero_tel`, `url_image`) VALUES
(1, 'Prevalet virgile', 'virgile.prevalet@laposte.net', '$2y$10$miyRaDkvc73YDujM3JSnI.wlrO.oGipn.7gemeMDhHll65q638ARy', 636656565, ''),
(3, 'julien fera', 'tuxgaming99@gmail.com', '$2y$10$visxlPjNRO7VzZecpvToVuBmsDhKKWQFOc1BPpZRovisU7Qz7QFtC', 69584565, ''),
(4, 'gile brachotte', 'gile.bra@laposte.net', '$2y$10$yFFGmU5eP5SxXMXemSiy3embFJsSpp65neuhiTUH5DkAH.1QIPVSO', 5498684, 'rien'),
(5, 'fabien laurent', 'quentin.prevalet@laposte.net', '$2y$10$Bkg6iEqN/AQyJOn.4OCgxe5gdHk7bv1MfN6GTx8N1d.RupjmTBCz2', 521354, 'rien');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
