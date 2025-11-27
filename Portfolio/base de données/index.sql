-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 18 nov. 2025 à 11:27
-- Version du serveur : 8.0.44
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `applications_paris_sportif`
--

-- --------------------------------------------------------

--
-- Structure de la table `gain`
--

CREATE TABLE `gain` (
  `id_gain` int NOT NULL,
  `id_pari` int NOT NULL,
  `montant_gain` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gain`
--

INSERT INTO `gain` (`id_gain`, `id_pari`, `montant_gain`) VALUES
(1, 1, 35),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

CREATE TABLE `matchs` (
  `id_matchs` int NOT NULL,
  `equipe_dom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `equipe_ext` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_match` datetime NOT NULL,
  `id_sport` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matchs`
--

INSERT INTO `matchs` (`id_matchs`, `equipe_dom`, `equipe_ext`, `date_match`, `id_sport`) VALUES
(1, 'PSG', 'OM', '2025-11-18 11:12:40', 1),
(2, 'Lakers ', 'Bulls', '2025-11-18 11:12:40', 2),
(3, 'Nadal ', 'Federer', '2025-11-18 11:12:40', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pari`
--

CREATE TABLE `pari` (
  `id_pari` int NOT NULL,
  `id_user` int NOT NULL,
  `id_match` int NOT NULL,
  `id_typepari` int NOT NULL,
  `mise` decimal(6,0) NOT NULL,
  `choix` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pari`
--

INSERT INTO `pari` (`id_pari`, `id_user`, `id_match`, `id_typepari`, `mise`, `choix`) VALUES
(1, 1, 1, 1, 20, '1'),
(2, 2, 2, 2, 15, '2'),
(3, 3, 3, 3, 10, '3');

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

CREATE TABLE `sport` (
  `id_sport` int NOT NULL,
  `nom_sport` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
... (167lignes restantes)