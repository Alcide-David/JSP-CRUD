-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2024 at 06:06 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ittech`
--

-- --------------------------------------------------------

--
-- Table structure for table `materiaux`
--

DROP TABLE IF EXISTS `materiaux`;
CREATE TABLE IF NOT EXISTS `materiaux` (
  `id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `modele` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `se` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `stockage` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `processeur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `peripheriques` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `service` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `localisation` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `utilisateur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `statut` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materiaux`
--

INSERT INTO `materiaux` (`id`, `type`, `marque`, `modele`, `se`, `stockage`, `processeur`, `peripheriques`, `service`, `localisation`, `utilisateur`, `statut`) VALUES
('MT-82', 'Laptop', 'Dell', 'Dell-Latitude543', 'Linux', '250GB', 'core I3', 'ecran, souris, clavier', 'Technique', 'Diffusion', 'David', 'Plus disponible'),
('245132', 'laptop', 'HP', 'HP 2000', 'linux', '500GB', 'core i5', 'ecran', 'technique', 'Haiti', 'Mana', 'Mauvais etat'),
('MP-09305', 'Computer', 'ASUS', 'hp-ELITEBNOOK', 'Windows', '700GB', 'corei5', 'ecran, souris', 'technique', 'Diffusion', 'Wally', 'Mauvais etat');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`email`,`password`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`nom`, `prenom`, `email`, `password`, `type`) VALUES
('Roberson', 'Etienne', 'roberson@gmail.com', 'Robersonpass@123', 'Admin'),
('Alcide', 'David', 'davidalcide205@gmail.com', 'Davidpass@123', 'Admin'),
('Cerisier', 'Rosemana', 'cerisierRosemana@gmail.com', 'Cerisierpass@123', 'Admin'),
('Clervoyant', 'Potensky', 'clervoyant@gmail.com', 'Clervoyantpass@123', 'Simple-Utilisateur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
