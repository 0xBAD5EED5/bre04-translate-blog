-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : mer. 23 juil. 2025 à 09:24
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bre04_translate_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_en` varchar(511) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `description_fr` varchar(511) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title_en`, `description_en`, `title_fr`, `description_fr`) VALUES
(1, 'Development', 'Posts about development and life as a developer', 'Développement', 'Articles sur le développement et la vie de développeur'),
(2, 'Design', 'Posts about challenges and evolutions in design', 'Conception', 'Articles sur les défis et les évolutions du design'),
(3, 'Accessibility', 'Posts about accessibility and inclusiveness', 'Accessibilité', 'Articles sur l\'accessibilité et l\'inclusion');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `excerpt_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `excerpt_fr` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title_en`, `excerpt_en`, `title_fr`, `excerpt_fr`, `category`) VALUES
(1, 'Navigating the Digital Canvas: Unveiling the Art of Intuitive Web Design', 'In the realm of intuitive web design, aesthetics play a pivotal role.', 'Naviguer sur la toile numérique : dévoiler l\'art de la conception Web intuitive', 'Dans le domaine de la conception Web intuitive, l’esthétique joue un rôle essentiel.', 2),
(2, 'Behind the Screens: Crafting Seamless User Experiences with Responsive Design Magic', 'Welcome to the enchanting realm where screens come to life', 'Derrière les écrans : créer des expériences utilisateur fluides grâce à la magie du design réactif', 'Bienvenue dans le royaume enchanteur où les écrans prennent vie', 2),
(3, 'Coding Chronicles: Navigating the Ever-Evolving Landscape of Web Development', 'Over the years, HTML has transformed from a simple markup language', 'Chroniques du codage : naviguer dans le paysage en constante évolution du développement Web', 'Au fil des années, HTML est passé d\'un simple langage de balisage', 1),
(4, 'Beyond the Basics: Unlocking the Power of Advanced JavaScript Techniques', 'Closures in JavaScript are a powerful concept.', 'Au-delà des bases : exploiter la puissance des techniques JavaScript avancées', 'Les fermetures en JavaScript sont un concept puissant.', 1),
(5, 'Inclusive Design 101: Crafting Digital Spaces for All Abilities', 'In the realm of web design, creating inclusive digital', 'Conception inclusive 101 : créer des espaces numériques pour tous les niveaux', 'Dans le domaine de la conception Web, la création de contenu numérique inclusif', 3),
(6, 'Beyond Compliance: Elevating Your Website\'s Accessibility Game', 'Creating an accessible website goes beyond meeting minimum compliance ', 'Au-delà de la conformité : améliorer l\'accessibilité de votre site Web', 'Créer un site Web accessible va au-delà du respect des normes minimales', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
