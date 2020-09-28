-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 24 sep. 2020 à 14:44
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shoutit`
--

-- --------------------------------------------------------

--
-- Structure de la table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(10, 'Ð¡Ð°Ð²Ð²Ð°', 'Ð¡Ð¿Ð°ÑÐ¸Ð±Ð¾ Ð·Ð° Ð’Ð°ÑˆÐµ Ñ‚ÐµÑÑ‚Ð¾Ð²Ð¾Ðµ Ð·Ð°Ð´Ð°Ð½Ð¸Ðµ. ÐžÐ½Ð¾, Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾, Ð¸Ð·ÑƒÐ¼Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ', 'Sep,24,2020 05:27:18 PM'),
(11, 'Ð•Ð²Ð´Ð¾ÐºÐ¸Ð¼', 'Ð•ÑÐ»Ð¸ Ð²ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð¼Ð¾Ð·Ð³Ð¸, Ñ‚Ð¾ Ð²ÑÐµ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð°Ñ€Ð½Ð¾ Ð’Ð°Ñ‚ÑÐ¾Ð½!', 'Sep,24,2020 05:28:04 PM'),
(12, 'ÐÑ€Ñ‚ÐµÐ¼Ð¸Ð¹', 'ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ñ‚Ð°ÐºÐ¾Ðµ ÑÐ»Ð¾Ð¶Ð½Ð¾Ðµ Ð·Ð°Ð´Ð°Ð½Ð¸Ðµ??? ÐœÐ½Ðµ ÐºÐ°Ð¶ÐµÑ‚ÑÑ, Ð½ÑƒÐ¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¿ÐµÑ€Ð²Ð¾ÐºÐ»Ð°ÑÑÐ½Ñ‹Ð¼ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸ÑÑ‚Ð¾Ð¼, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²Ñ‹Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÑŒ ÐµÐ³Ð¾ (', 'Sep,24,2020 05:28:42 PM');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
