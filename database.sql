-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 15 mars 2024 à 11:00
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `database`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
CREATE TABLE IF NOT EXISTS `admin_logs` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_token` varchar(255) NOT NULL,
  `media` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `media_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `proposal` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `proposal_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `logs_time` time NOT NULL,
  `logs_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `admin_logs`
--

INSERT INTO `admin_logs` (`ID`, `user_token`, `media`, `media_status`, `proposal`, `proposal_status`, `logs_time`, `logs_date`) VALUES
(1, '36c43cef8a38bc1a031cd957', '11.png', 'validated', NULL, NULL, '05:04:41', '2024-03-15'),
(2, '36c43cef8a38bc1a031cd957', '12.png', 'validated', NULL, NULL, '05:04:42', '2024-03-15'),
(3, '36c43cef8a38bc1a031cd957', '13.png', 'validated', NULL, NULL, '05:04:43', '2024-03-15'),
(4, '36c43cef8a38bc1a031cd957', '14.jpg', 'validated', NULL, NULL, '05:04:44', '2024-03-15'),
(5, '36c43cef8a38bc1a031cd957', '15.jpg', 'validated', NULL, NULL, '05:08:08', '2024-03-15'),
(6, '36c43cef8a38bc1a031cd957', '16.jpg', 'validated', NULL, NULL, '05:08:08', '2024-03-15'),
(7, '36c43cef8a38bc1a031cd957', '17.jpg', 'validated', NULL, NULL, '05:08:09', '2024-03-15'),
(8, '36c43cef8a38bc1a031cd957', '18.jpg', 'validated', NULL, NULL, '05:08:10', '2024-03-15'),
(9, '36c43cef8a38bc1a031cd957', '19.mp4', 'validated', NULL, NULL, '05:39:24', '2024-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `uploaded_files`
--

DROP TABLE IF EXISTS `uploaded_files`;
CREATE TABLE IF NOT EXISTS `uploaded_files` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_token` varchar(255) NOT NULL,
  `game_name` varchar(25) NOT NULL,
  `category` varchar(25) NOT NULL,
  `title` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `descript` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ext` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `serial_no` int UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_time` time NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `uploaded_files`
--

INSERT INTO `uploaded_files` (`ID`, `user_token`, `game_name`, `category`, `title`, `descript`, `ext`, `serial_no`, `file_path`, `upload_time`, `upload_date`) VALUES
(1, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'png', 11, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo11.png', '04:59:03', '2024-03-15'),
(2, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'png', 12, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo12.png', '04:59:14', '2024-03-15'),
(3, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'png', 13, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo13.png', '04:59:14', '2024-03-15'),
(4, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'jpg', 14, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo14.jpg', '05:04:13', '2024-03-15'),
(5, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'jpg', 15, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo15.jpg', '05:07:58', '2024-03-15'),
(6, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'jpg', 16, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo16.jpg', '05:07:58', '2024-03-15'),
(7, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'jpg', 17, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo17.jpg', '05:07:58', '2024-03-15'),
(8, '36c43cef8a38bc1a031cd957', 'SkyforceReloaded', 'Screenshot', NULL, NULL, 'jpg', 18, '/assets/img/games/screenshots/SkyforceReloaded/SerialNo18.jpg', '05:07:58', '2024-03-15'),
(9, '36c43cef8a38bc1a031cd957', 'EldenRing', 'PvP', 'LeDuelPvP', 'Duel incroyable', 'mp4', 19, '/assets/video/EldenRing/SerialNo19.mp4', '05:38:51', '2024-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `uploaded_files_pending`
--

DROP TABLE IF EXISTS `uploaded_files_pending`;
CREATE TABLE IF NOT EXISTS `uploaded_files_pending` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_token` varchar(255) NOT NULL,
  `game_name` varchar(25) NOT NULL,
  `category` varchar(25) NOT NULL,
  `title` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `descript` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `serial_no` int UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_time` time NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `avatar_path` varchar(50) DEFAULT NULL,
  `user_token` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `email`, `pseudo`, `passwd`, `avatar_path`, `user_token`) VALUES
(1, 'oo@oo.com', 'botvaulkryn', '$2y$12$Vsdj2ICrij7HDRiy9DpV4uG97Rq4/WmrUk.PETPvGkS3HlkdFBt2S', '/assets/img/avatar/botvaulkryn.jpg', '36c43cef8a38bc1a031cd957');

-- --------------------------------------------------------

--
-- Structure de la table `users_logs`
--

DROP TABLE IF EXISTS `users_logs`;
CREATE TABLE IF NOT EXISTS `users_logs` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_uploads` int UNSIGNED DEFAULT NULL,
  `upload_validated` int UNSIGNED DEFAULT NULL,
  `upload_refused` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users_logs`
--

INSERT INTO `users_logs` (`ID`, `total_uploads`, `upload_validated`, `upload_refused`) VALUES
(1, 9, 9, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_proposal`
--

DROP TABLE IF EXISTS `users_proposal`;
CREATE TABLE IF NOT EXISTS `users_proposal` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_token` varchar(255) NOT NULL,
  `proposal_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `proposal_time` time NOT NULL,
  `proposal_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users_proposal`
--

INSERT INTO `users_proposal` (`ID`, `user_token`, `proposal_text`, `proposal_time`, `proposal_date`) VALUES
(1, '36c43cef8a38bc1a031cd957', 'Hey ! Tu vas me valider ou pas ?\r\nHein ?\r\nComment ça ?', '05:40:03', '2024-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `video_comments`
--

DROP TABLE IF EXISTS `video_comments`;
CREATE TABLE IF NOT EXISTS `video_comments` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_token` varchar(255) NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_time` time NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `visitor_info`
--

DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE IF NOT EXISTS `visitor_info` (
  `ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `IP` int UNSIGNED NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(25) NOT NULL,
  `region` varchar(25) NOT NULL,
  `region_name` varchar(25) NOT NULL,
  `region_code` int NOT NULL,
  `city` varchar(25) NOT NULL,
  `accuracy_radius` int UNSIGNED NOT NULL,
  `visitor_time` time NOT NULL,
  `visitor_date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
