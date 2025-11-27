-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2025 at 04:30 PM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agence_location_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int NOT NULL,
  `nom_categorie` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `description`) VALUES
(1, 'SUV', 'Voitures sport utilitaires'),
(2, 'Citadine', 'Petites voitures économiques');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `telephone`, `email`, `adresse`) VALUES
(1, 'Dupont', 'Marie', '0601020304', 'marie.dupont@gmail.com', '12 rue des Lilas'),
(2, 'Martin', 'Julie', '0605060708', 'julie.martin@gmail.com', '45 avenue de Paris');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id_employe` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `poste` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salaire` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id_employe`, `nom`, `prenom`, `poste`, `salaire`) VALUES
(1, 'Bernard', 'Luc', 'Agent', 1800),
(2, 'Petit', 'Sarah', 'Manager', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id_location` int NOT NULL,
  `id_client` int DEFAULT NULL,
  `id_voiture` int DEFAULT NULL,
  `id_employe` int DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `montant_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id_location`, `id_client`, `id_voiture`, `id_employe`, `date_debut`, `date_fin`, `montant_total`) VALUES
(1, 1, 1, 1, '2024-01-10', '2024-01-12', 150),
(2, 2, 2, 2, '2024-01-15', '2024-01-18', 135);

-- --------------------------------------------------------

--
-- Table structure for table `voitures`
--

CREATE TABLE `voitures` (
  `id_voiture` int NOT NULL,
  `immatriculation` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marque` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `modele` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `prix_jour` float DEFAULT NULL,
  `id_categorie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voitures`
--

INSERT INTO `voitures` (`id_voiture`, `immatriculation`, `marque`, `modele`, `annee`, `prix_jour`, `id_categorie`) VALUES
(1, 'AB-123-CD', 'Toyota', 'Rav4', 2020, 75, 1),
(2, 'BC-456-DE', 'Peugeot', '208', 2022, 45, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id_employe`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_voiture` (`id_voiture`),
  ADD KEY `id_employe` (`id_employe`);

--
-- Indexes for table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id_voiture`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id_employe` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id_location` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `id_voiture` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id_voiture`),
  ADD CONSTRAINT `locations_ibfk_3` FOREIGN KEY (`id_employe`) REFERENCES `employes` (`id_employe`);

--
-- Constraints for table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
