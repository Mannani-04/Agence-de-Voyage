-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 déc. 2024 à 12:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_backend_pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `telephone`, `email`, `created_at`, `updated_at`) VALUES
(162, 'RAHEL', 'OTHMANE', '0677083904', 'rahelothmane@gmail.com', '2024-06-04 09:15:34', '2024-06-04 09:15:34'),
(163, 'RAHEL', 'OTHMANE', '0677083904', 'rahelothmane@gmail.com', '2024-06-04 09:18:37', '2024-06-04 09:18:37'),
(164, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-04 09:22:08', '2024-06-04 09:22:08'),
(165, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-04 09:27:34', '2024-06-04 09:27:34'),
(166, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-04 09:36:34', '2024-06-04 09:36:34'),
(167, 'qwerty', 'Co', '0606591862', 'rahelothmane@gmail.com', '2024-06-05 11:54:01', '2024-06-05 11:54:01'),
(168, 'qwerty', 'Co', '0606591862', 'rahelothmane@gmail.com', '2024-06-05 11:56:58', '2024-06-05 11:56:58'),
(169, 'qwerty', 'Co', '0606591862', 'rahelothmane@gmail.com', '2024-06-05 19:19:21', '2024-06-05 19:19:21'),
(170, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-05 19:20:44', '2024-06-05 19:20:44'),
(171, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-05 20:57:50', '2024-06-05 20:57:50'),
(172, 'Birouk', 'Oumaima', '0694262922', 'oumayma.birouk@gmail.com', '2024-06-06 08:17:26', '2024-06-06 08:17:26'),
(173, 'mannani', 'mostafa', '0677083904', 'azerty1234@gmail.comv', '2024-06-06 10:00:29', '2024-06-06 10:00:29'),
(174, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-08 14:44:55', '2024-06-08 14:44:55'),
(175, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-06-10 18:22:51', '2024-06-10 18:22:51'),
(176, 'AL MANNANI', 'MOSTAFA', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-24 14:02:08', '2024-11-24 14:02:08'),
(177, 'TALIB', 'OTHMANE', '0643086370', 'mannanimostafa04@gmail.com', '2024-11-24 14:16:54', '2024-11-24 14:16:54'),
(178, 'AL MANNANI', 'MOSTAFA', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-28 12:54:33', '2024-11-28 12:54:33');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_vol`
--

CREATE TABLE `commentaires_vol` (
  `idV` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `idVolDispo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_voyages`
--

CREATE TABLE `commentaires_voyages` (
  `idC` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `idVygDispo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idC` bigint(20) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `adresseEmail` varchar(255) NOT NULL,
  `vue` tinyint(1) NOT NULL DEFAULT 0,
  `NomDemande` varchar(255) NOT NULL,
  `autre_demande` varchar(255) DEFAULT NULL,
  `demande` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idC`, `Nom`, `Prenom`, `adresseEmail`, `vue`, `NomDemande`, `autre_demande`, `demande`, `created_at`, `updated_at`) VALUES
(1, 'RAHEL', 'OTHMANE', 'rahelothmane@gmail.com', 1, 'hotel', NULL, 'hotel s\'il vous plait', '2024-06-05 09:58:47', '2024-06-05 10:05:16'),
(2, 'RAHEL', 'OTHMANE', 'rahelothmane@gmail.com', 1, 'voyage', NULL, 'demande voyage', '2024-06-05 10:24:14', '2024-06-05 10:24:54'),
(3, 'RAHEL', 'OTHMANE', 'rahelothmane@gmail.com', 1, 'billet', NULL, 'hasdadh', '2024-06-05 11:58:37', '2024-06-05 11:58:59'),
(4, 'RAHEL', 'OTHMANE', 'rahelothmane@gmail.com', 1, 'hotel', NULL, 'demande hotel', '2024-06-05 12:24:11', '2024-06-05 12:25:17'),
(5, 'qwerty', 'Co', 'rahelothmane@gmail.com', 1, 'voyage', NULL, 'uhuoh', '2024-06-05 12:38:25', '2024-06-05 13:03:14'),
(6, 'RAHEL', 'OTHMANE', 'rahelothmane@gmail.com', 1, 'voyage', NULL, 'qwetrjigdf', '2024-06-05 14:25:30', '2024-06-05 17:20:23'),
(7, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'buoup', '2024-06-05 17:31:33', '2024-06-05 17:31:50'),
(8, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'zxjpd', '2024-06-05 17:34:44', '2024-06-05 17:49:43'),
(9, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'billet', NULL, 'ohohhoh', '2024-06-05 17:51:53', '2024-06-05 17:53:41'),
(10, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'ohoh', '2024-06-05 17:54:36', '2024-06-05 17:54:50'),
(11, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'hotel', NULL, 'hoh', '2024-06-05 17:55:26', '2024-06-05 17:55:45'),
(12, 'qwerty', 'Co', 'rahelothmane@gmail.com', 1, 'billet', NULL, 'osddj', '2024-06-05 17:59:23', '2024-06-05 18:05:37'),
(13, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'billet', NULL, 'zxpjd', '2024-06-05 18:06:11', '2024-06-05 18:06:28'),
(14, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'hotel', NULL, 'onn', '2024-06-05 18:11:10', '2024-06-05 18:11:41'),
(15, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'n hzxc', '2024-06-05 19:37:41', '2024-06-05 19:40:28'),
(16, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'houh', '2024-06-05 19:56:12', '2024-06-05 19:57:17'),
(17, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'voyage', NULL, 'hijpjaasis', '2024-06-05 20:00:38', '2024-06-05 20:02:58'),
(18, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'autres', 'autre', 'ddfdpo', '2024-06-05 21:30:21', '2024-06-05 21:30:56'),
(19, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 1, 'billet', NULL, 'je veux un billet d\'avion', '2024-06-06 07:12:33', '2024-06-06 08:20:34');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hajomra`
--

CREATE TABLE `hajomra` (
  `idHO` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `prix` double(8,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hajomra`
--

INSERT INTO `hajomra` (`idHO`, `nom`, `image`, `date_depart`, `date_arrivee`, `prix`, `description`, `created_at`, `updated_at`) VALUES
(1, 'عمرة شعبان', 'picturesPFEHaj/ZuVSnDkush6fpDfM75thnxzZfHNwxJfFdwQ6nKvP.jpg', '2024-05-01', '2024-06-01', 14340.00, 'رحلة عمرة خلال شهر شعبان لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة', '2024-05-04 14:46:33', '2024-05-04 14:46:33'),
(2, 'عمرة رمضان', 'picturesPFEHaj/rySfiFjn1Lu0NI4VB28UGpEyo2exPJ7sx8EGGq5M.jpg', '2024-05-01', '2024-06-01', 18700.00, 'رمضان المبارك لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بالأجواء الروحانية والفضيلة خلال هذا الشهر المبارك', '2024-05-04 14:49:55', '2024-05-04 14:49:55'),
(3, 'دبي عمرة', 'picturesPFEHaj/iMOQU26RzaPtlCYj7rxTRNG4aAskOjvQ1YVvMEeI.jpg', '2024-05-01', '2024-06-01', 17900.00, 'رحلة عمرة من دبي لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بجمال الديار الإماراتية قبل وبعد العمرة', '2024-05-04 14:51:17', '2024-05-04 14:51:17'),
(4, 'اسطنبول عمرة', 'picturesPFEHaj/OVN8GtpPanrQSeHzeMyOpedxAJDTkeabcps6haOo.jpg', '2024-05-01', '2024-06-01', 24900.00, 'رحلة عمرة من اسطنبول لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بجمال مدينة اسطنبول الساحرة قبل وبعد العمرة', '2024-05-04 14:52:20', '2024-05-04 14:52:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_30_170247_create_client_table', 1),
(6, '2024_03_30_181911_create_voyage_table', 1),
(7, '2024_03_30_182339_create_vol_table', 1),
(9, '2024_03_31_015352_create-_haj_omra', 1),
(10, '2024_03_30_171617_create__reservation_voyage_dispo_table', 2),
(11, '2024_03_30_171802_create__reservation_vol_dispo_table', 2),
(12, '2024_03_30_170624_create_commentaires_voyages_table', 3),
(13, '2024_03_30_170744_create_commentaires_vol_table', 3),
(14, '2024_04_29_154746_create_reservation_table', 4),
(17, '2024_04_29_155955_create_reservation_table', 5),
(18, '2024_03_31_014626_create-contact', 6);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 2, 'login_test', 'bee3333163e8a04b8cac7179393710d6ed859197e75cb211d32861af68c3f012', '[\"*\"]', NULL, NULL, '2024-05-18 22:14:02', '2024-05-18 22:14:02'),
(7, 'App\\Models\\User', 2, 'login_test', '99dc2451ee0977288b1a1d11fe7b64189debebe7764b72c4e312cc74658bf82d', '[\"*\"]', NULL, NULL, '2024-05-18 22:47:01', '2024-05-18 22:47:01'),
(8, 'App\\Models\\User', 2, 'login_test', '38c88697a94e891175f4342942a9d1cbb7edebb7f2d289396339f1d9d09b6026', '[\"*\"]', NULL, NULL, '2024-05-20 18:29:06', '2024-05-20 18:29:06'),
(9, 'App\\Models\\User', 2, 'login_test', 'acec2cd2effddb68b3ce592ed698df22ae125c962c03a3f5ec980db46da39c84', '[\"*\"]', NULL, NULL, '2024-05-21 06:56:09', '2024-05-21 06:56:09'),
(10, 'App\\Models\\User', 2, 'login_test', '07746ba5a4f71eaae53d27a00004bba718c99409b4843137ff2004b2f72db587', '[\"*\"]', NULL, NULL, '2024-05-21 06:57:34', '2024-05-21 06:57:34'),
(11, 'App\\Models\\User', 2, 'login_test', '53c1145186d1290f7bf66a975dd8e3ec578ca5ce2228f1b67cafef51d870087c', '[\"*\"]', NULL, NULL, '2024-05-21 09:02:19', '2024-05-21 09:02:19'),
(12, 'App\\Models\\User', 2, 'login_test', 'af3debcaf3e60500451b92c6021478310e3e334115d2add43969cb5acbebe821', '[\"*\"]', NULL, NULL, '2024-05-21 09:15:27', '2024-05-21 09:15:27'),
(13, 'App\\Models\\User', 2, 'login_test', '8b9ce43665bf7efc5064574582ae260da6def6070ed6d8e92c58dca7f77f3d71', '[\"*\"]', NULL, NULL, '2024-05-21 11:16:52', '2024-05-21 11:16:52'),
(14, 'App\\Models\\User', 2, 'login_test', 'a06d4023b356bc0643da295ec50c0632d9c71e3402a8b71f5b600fa57d7b1034', '[\"*\"]', NULL, NULL, '2024-05-21 11:29:32', '2024-05-21 11:29:32'),
(15, 'App\\Models\\User', 2, 'login_test', '79c300080399d2dfef407c34d08fd4b4548dbff8a8b10c4c9611f376a6dc5994', '[\"*\"]', NULL, NULL, '2024-05-21 11:34:21', '2024-05-21 11:34:21'),
(16, 'App\\Models\\User', 2, 'login_test', '5a8d4abe3d506504cfbbed313db99f2c4cd1ad018b20b97a835dcc228a2f3579', '[\"*\"]', NULL, NULL, '2024-05-21 11:39:11', '2024-05-21 11:39:11'),
(17, 'App\\Models\\User', 2, 'login_test', '23720ee3561661416690d691ba97107e766c73f6950559b31cdb839c763126a6', '[\"*\"]', NULL, NULL, '2024-05-21 18:32:58', '2024-05-21 18:32:58'),
(18, 'App\\Models\\User', 2, 'login_test', '7902a0471dcd14d649789b50c55ab638a59bde130617d6a9f00fece9f64fed66', '[\"*\"]', NULL, NULL, '2024-05-21 18:33:47', '2024-05-21 18:33:47'),
(19, 'App\\Models\\User', 2, 'login_test', '359032930876a4fa208ccee78b592acba89552771f3c9ac69073cf857b1e28f3', '[\"*\"]', NULL, NULL, '2024-05-21 18:34:56', '2024-05-21 18:34:56'),
(20, 'App\\Models\\User', 2, 'login_test', '88b495305126b1a93e87d508fdd6685ab0fb9119e3d33f6f97bae32142acfb6f', '[\"*\"]', NULL, NULL, '2024-05-21 18:36:01', '2024-05-21 18:36:01'),
(21, 'App\\Models\\User', 2, 'login_test', '09941274a360a1094f36bcfd01d882f72a27fad5fb7539bca319155289bedafd', '[\"*\"]', NULL, NULL, '2024-05-21 18:37:08', '2024-05-21 18:37:08'),
(22, 'App\\Models\\User', 2, 'login_test', 'd3369957ed4ef0f2943fbdf7580c16c0cb15cb2f84812fb071236a6df31f1a41', '[\"*\"]', '2024-05-21 18:39:26', NULL, '2024-05-21 18:38:59', '2024-05-21 18:39:26'),
(23, 'App\\Models\\User', 2, 'login_test', '05dfcc117100bc47b59cb56192b3912d08cc754cedf773e9cf46d9feb3a8bb32', '[\"*\"]', NULL, NULL, '2024-05-21 19:10:24', '2024-05-21 19:10:24'),
(24, 'App\\Models\\User', 2, 'login_test', '2af213f8db12d75db00da8e5631e54fb3055eeefdddd136e67315ab07c116452', '[\"*\"]', NULL, NULL, '2024-05-21 19:24:51', '2024-05-21 19:24:51'),
(25, 'App\\Models\\User', 2, 'login_test', 'b7925b5c733266fb079652ad052cfeaf67b365ef5657c2ad7feb57ad05f6f47b', '[\"*\"]', NULL, NULL, '2024-05-21 20:24:26', '2024-05-21 20:24:26'),
(26, 'App\\Models\\User', 2, 'login_test', '14c964c7747faecdb58bff811ca2f268f719c9257fe2fc34d5e504fdc8421162', '[\"*\"]', NULL, NULL, '2024-05-21 20:25:05', '2024-05-21 20:25:05'),
(27, 'App\\Models\\User', 2, 'login_test', 'e100ab0a425d8cfa4ac843f590b453aa4b56ff26ee9201d85168553e96e26b71', '[\"*\"]', NULL, NULL, '2024-05-21 20:27:13', '2024-05-21 20:27:13'),
(28, 'App\\Models\\User', 2, 'login_test', 'de00f3804f798cbcde509946eb1a4527f514afc420c91fb0051f9a0e1b53d37f', '[\"*\"]', NULL, NULL, '2024-05-21 20:28:13', '2024-05-21 20:28:13'),
(29, 'App\\Models\\User', 2, 'login_test', '9ccd95e66355c782476095018b6735ec0515c39386daafdc43e19d6162ee1374', '[\"*\"]', NULL, NULL, '2024-05-21 20:33:33', '2024-05-21 20:33:33'),
(30, 'App\\Models\\User', 2, 'login_test', 'ee41795bde2f23958ac75bb35e5f40e25ba3d33f21df9856dd7bd2e4c4301404', '[\"*\"]', NULL, NULL, '2024-05-22 13:31:22', '2024-05-22 13:31:22'),
(31, 'App\\Models\\User', 2, 'login_test', '9b51597b7cd0c7425ce1f429a6b9f3056ee11551eb332198d1eb8791ddb52224', '[\"*\"]', NULL, NULL, '2024-05-22 13:43:55', '2024-05-22 13:43:55'),
(32, 'App\\Models\\User', 2, 'login_test', '4a69c4c8be231e8f86a450d7631ab7061d253a701ecc2f9e1531c8c026acfc3c', '[\"*\"]', NULL, NULL, '2024-05-22 13:44:49', '2024-05-22 13:44:49'),
(33, 'App\\Models\\User', 2, 'login_test', '5d14114d954b11206ff5ee2f667a84229787d9119dc9f540b4a6b8758cfca1b4', '[\"*\"]', NULL, NULL, '2024-05-22 13:46:08', '2024-05-22 13:46:08'),
(34, 'App\\Models\\User', 2, 'login_test', '51a63fdc83f186e1c1724040fc1869da63b37205a98db5c7ac968bfb5456978c', '[\"*\"]', NULL, NULL, '2024-05-22 14:38:00', '2024-05-22 14:38:00'),
(35, 'App\\Models\\User', 2, 'login_test', '58cfa068f8f44354e65c317b9fcf04a6ee3393f5fc88a23e756a082253259e67', '[\"*\"]', NULL, NULL, '2024-05-22 14:43:19', '2024-05-22 14:43:19'),
(36, 'App\\Models\\User', 2, 'login_test', '5b0705cb7bf3dd45c8515156d57510954fbc07fb3bc4f97f1d11b5a5eedf15a0', '[\"*\"]', NULL, NULL, '2024-05-22 21:16:35', '2024-05-22 21:16:35'),
(37, 'App\\Models\\User', 2, 'login_test', '3534949947e537d6922fe8c565ceb107b4bc26edb8bd3db538e7d8890ad8baec', '[\"*\"]', '2024-05-22 21:20:12', NULL, '2024-05-22 21:17:11', '2024-05-22 21:20:12'),
(38, 'App\\Models\\User', 2, 'login_test', '093683a5361933d4df7194a754f4b826cf7296035eacb9ea565659e41bf04aea', '[\"*\"]', '2024-05-22 21:23:30', NULL, '2024-05-22 21:20:02', '2024-05-22 21:23:30'),
(39, 'App\\Models\\User', 2, 'login_test', '22de34fbcf512b48d97ca5563fdfbc9bf6895a8fcdc8f2fbeb15aaece64f6a7e', '[\"*\"]', NULL, NULL, '2024-05-22 21:26:15', '2024-05-22 21:26:15'),
(40, 'App\\Models\\User', 2, 'login_test', 'd25eafd4c227e211b14fe35af77bae621af103d83f95757d05f705296414d4bb', '[\"*\"]', NULL, NULL, '2024-05-22 21:40:23', '2024-05-22 21:40:23'),
(41, 'App\\Models\\User', 2, 'login_test', '2fd4bb31b8d0f15de9f5eb0cc2039b95c110a0a5a0892844bced72a5a731acd5', '[\"*\"]', NULL, NULL, '2024-05-22 21:48:41', '2024-05-22 21:48:41'),
(42, 'App\\Models\\User', 2, 'login_test', 'c16f19c80b321ce5c2a481cdc48558627a31ef5fee45c51516270f59c06a66f5', '[\"*\"]', NULL, NULL, '2024-05-22 21:50:39', '2024-05-22 21:50:39'),
(43, 'App\\Models\\User', 2, 'login_test', '5f562a82ea7e7119ecbe61f0781fa97b3d1be7fe9dd65b68f357e44fad0075e2', '[\"*\"]', '2024-05-22 22:33:41', NULL, '2024-05-22 21:55:39', '2024-05-22 22:33:41'),
(44, 'App\\Models\\User', 2, 'login_test', '97d6138097de55d5ad0bec26da3a95d63bfe2f3390657de3c501a12a53b907d3', '[\"*\"]', NULL, NULL, '2024-05-22 22:36:58', '2024-05-22 22:36:58'),
(45, 'App\\Models\\User', 2, 'login_test', 'fd224a77f6dbd2f4d293866eaf62da93b56f3f17f73cab3d208613d8b8199297', '[\"*\"]', NULL, NULL, '2024-05-28 09:10:37', '2024-05-28 09:10:37'),
(46, 'App\\Models\\User', 2, 'login_test', '5f78246dd74e33b43b159dc8bf397c855ad78824e63eacedf5474115a63e74ce', '[\"*\"]', NULL, NULL, '2024-05-28 19:03:27', '2024-05-28 19:03:27'),
(47, 'App\\Models\\User', 2, 'login_test', '453359a74e4291021fe8d226a4ec179998e129b58643f991ff427c0ff2fc550f', '[\"*\"]', NULL, NULL, '2024-05-28 19:13:39', '2024-05-28 19:13:39'),
(48, 'App\\Models\\User', 2, 'login_test', '262d27a8a047bc1d591c569de9462f560374e7e815326b6cb0fdc0935dda8b79', '[\"*\"]', NULL, NULL, '2024-05-28 20:37:24', '2024-05-28 20:37:24'),
(49, 'App\\Models\\User', 2, 'login_test', '712914413ce3052cd2084207218fc1194c22c6366ad003e265d55c18ba4bc2ee', '[\"*\"]', NULL, NULL, '2024-05-28 20:54:15', '2024-05-28 20:54:15'),
(50, 'App\\Models\\User', 2, 'login_test', '07a54484978d3735fa73fc31fd005a5f9a316a371899e42b4b1b6b99dd6e4968', '[\"*\"]', NULL, NULL, '2024-05-29 07:23:42', '2024-05-29 07:23:42'),
(51, 'App\\Models\\User', 2, 'login_test', 'b7417da4840b766495a44cc6778ee72b6831217b0fd9bbc9e4deeb22ca772232', '[\"*\"]', NULL, NULL, '2024-05-31 15:30:10', '2024-05-31 15:30:10'),
(52, 'App\\Models\\User', 2, 'login_test', '0c47114519fd3c31c5561b5a527ecba6bf14e2fb051f5b996031652505f7a6ca', '[\"*\"]', NULL, NULL, '2024-05-31 16:09:53', '2024-05-31 16:09:53'),
(53, 'App\\Models\\User', 2, 'login_test', 'a53cd4cd851354a2a8797856dd8192faf0cd8ee841f90604a8c4fc2231631772', '[\"*\"]', NULL, NULL, '2024-05-31 16:09:56', '2024-05-31 16:09:56'),
(54, 'App\\Models\\User', 2, 'login_test', 'a8ffae155a7141607095fc32e8cbf9fd570c67242ab089656d73bc2ee27624c4', '[\"*\"]', NULL, NULL, '2024-05-31 16:09:56', '2024-05-31 16:09:56'),
(55, 'App\\Models\\User', 2, 'login_test', '25f62ee65906e96b16cdab1b65c9fcbc49c68e595cdad07c409590dc47f3b776', '[\"*\"]', NULL, NULL, '2024-06-02 12:27:50', '2024-06-02 12:27:50'),
(56, 'App\\Models\\User', 2, 'login_test', 'ae4f25f54c8b28e12c1d04743098accc3d4f9b6fe1e3bdfb0093d42400c9e2f0', '[\"*\"]', NULL, NULL, '2024-06-02 12:39:16', '2024-06-02 12:39:16'),
(57, 'App\\Models\\User', 2, 'login_test', 'bd36f7f28f1ae9d6ff5d7f15d8cf4933ad5d2915c3d503f26a674df4c4432c13', '[\"*\"]', NULL, NULL, '2024-06-02 13:07:47', '2024-06-02 13:07:47'),
(58, 'App\\Models\\User', 2, 'login_test', '4994dd92121e23011a80f555dafbf6413a29add552bd0fef44f2fc957ebfcebd', '[\"*\"]', NULL, NULL, '2024-06-02 13:35:28', '2024-06-02 13:35:28'),
(59, 'App\\Models\\User', 2, 'login_test', 'c83194f6ea65e9daade446ab8ac5700d8b3adaa0bf82fa8810b4a029d34bb926', '[\"*\"]', NULL, NULL, '2024-06-02 14:20:37', '2024-06-02 14:20:37'),
(60, 'App\\Models\\User', 2, 'login_test', 'f0d23e15d22c7c0201b6af440302a3ac7c2385e6b169d901b5c8e37aaf6305ab', '[\"*\"]', NULL, NULL, '2024-06-02 14:30:18', '2024-06-02 14:30:18'),
(61, 'App\\Models\\User', 2, 'login_test', '684b7d727134542e68673fde24dae71f38631d7d2a05b2db4c5a899a723f0554', '[\"*\"]', NULL, NULL, '2024-06-02 14:47:08', '2024-06-02 14:47:08'),
(63, 'App\\Models\\User', 2, 'login_test', '6560ca82d9d52f7c0373c28deac481733ee0a9f8f68bbe40238eb53663437e05', '[\"*\"]', NULL, NULL, '2024-06-02 14:58:19', '2024-06-02 14:58:19'),
(64, 'App\\Models\\User', 2, 'login_test', '5fb9ff9f6c4530267ba69267bd12295b3baa91bac9c4fdbb96ea8e3c9e1d3c29', '[\"*\"]', NULL, NULL, '2024-06-02 15:00:02', '2024-06-02 15:00:02'),
(65, 'App\\Models\\User', 2, 'login_test', 'fd3ab3d2d6a8f119019eaa28b6175caf3f4b24f1b4f88c839327383d87d60350', '[\"*\"]', NULL, NULL, '2024-06-02 15:05:29', '2024-06-02 15:05:29'),
(66, 'App\\Models\\User', 2, 'login_test', '4c82e5efa95c0ed13e3e1bc710df4ffd478d1dbda7c228c461e13934ff499550', '[\"*\"]', NULL, NULL, '2024-06-02 15:06:55', '2024-06-02 15:06:55'),
(67, 'App\\Models\\User', 2, 'login_test', 'a907502c175c31ace248b9279983a065dd5adb6e82ac6f5a2bb878c4339da977', '[\"*\"]', NULL, NULL, '2024-06-02 15:14:58', '2024-06-02 15:14:58'),
(68, 'App\\Models\\User', 2, 'login_test', 'f998d82ef8f86d71ea438eb49f3d33fc5f8bde4194852cb9700670b328a900c7', '[\"*\"]', NULL, NULL, '2024-06-02 15:20:23', '2024-06-02 15:20:23'),
(69, 'App\\Models\\User', 2, 'login_test', '2fbd0ddcb4c66a0b40e11b866dc684ce3fbf3519af93b88d93821c4e25d4f9fc', '[\"*\"]', NULL, NULL, '2024-06-02 15:21:07', '2024-06-02 15:21:07'),
(70, 'App\\Models\\User', 2, 'login_test', '91471f2deffc06e143edfdeb6fb2cf7f5e5031484e21b839dd3c8525e5628845', '[\"*\"]', NULL, NULL, '2024-06-02 15:23:09', '2024-06-02 15:23:09'),
(71, 'App\\Models\\User', 2, 'login_test', 'd069f334a14d3fa64f250990e6af784c5b83d5ce805986e7e14dd62b341b79cb', '[\"*\"]', NULL, NULL, '2024-06-02 15:24:53', '2024-06-02 15:24:53'),
(72, 'App\\Models\\User', 2, 'login_test', '1016b813822f277aaf7ec1e2d9abd2877e3fadba4b0747e1e23bbeeaa8df7bb3', '[\"*\"]', NULL, NULL, '2024-06-02 15:27:07', '2024-06-02 15:27:07'),
(73, 'App\\Models\\User', 2, 'login_test', '5a47356f042b8cf41c07864c5e85b1d245f705da0486fd9671fe9b5fa92d9501', '[\"*\"]', NULL, NULL, '2024-06-02 15:31:27', '2024-06-02 15:31:27'),
(74, 'App\\Models\\User', 2, 'login_test', '3137b2ddaff7969242c350df458889006753199388c5e3c4bc5e81d8fb2b47c2', '[\"*\"]', NULL, NULL, '2024-06-02 15:39:27', '2024-06-02 15:39:27'),
(75, 'App\\Models\\User', 2, 'login_test', '282e2f2dfcb074977de63d382bc906911ead33c573ce97e7e0f03064e69e88d6', '[\"*\"]', NULL, NULL, '2024-06-02 15:56:35', '2024-06-02 15:56:35'),
(76, 'App\\Models\\User', 2, 'login_test', '2b36b1b4db0cd8175784f5dd06b9660907de95f7c2a1e2313ee932e3ad0e6bb2', '[\"*\"]', NULL, NULL, '2024-06-02 15:59:55', '2024-06-02 15:59:55'),
(77, 'App\\Models\\User', 2, 'login_test', '4ec949171c49158ccdc4f253fcb725371e05b74b18397a1248ecbf72038398fd', '[\"*\"]', NULL, NULL, '2024-06-02 16:02:07', '2024-06-02 16:02:07'),
(78, 'App\\Models\\User', 2, 'login_test', '346cddb9f35dd8c34ede5f0f1145c953f766891bd967aad3e683ffddab38355c', '[\"*\"]', NULL, NULL, '2024-06-02 16:11:28', '2024-06-02 16:11:28'),
(79, 'App\\Models\\User', 2, 'login_test', 'ac51d7d81a10a684181cf5848c3e4ae7bdbb2e46cee935c7a0c092c1db158b8a', '[\"*\"]', NULL, NULL, '2024-06-02 16:21:28', '2024-06-02 16:21:28'),
(80, 'App\\Models\\User', 2, 'login_test', 'f5b2a9ab992012551668e4f037b410ed094ff0d831261f12ea495af38474b870', '[\"*\"]', NULL, NULL, '2024-06-02 16:28:25', '2024-06-02 16:28:25'),
(81, 'App\\Models\\User', 2, 'login_test', 'b82325ee034e4bdcf249d9cbb6d1879b481c3d565ea5e44d1bee86fdfdd52b69', '[\"*\"]', NULL, NULL, '2024-06-02 16:29:12', '2024-06-02 16:29:12'),
(82, 'App\\Models\\User', 2, 'login_test', '8b2db92e41c7dc4d7e0231bb8ff2a53c3892daa8eb0a92433573e5bd1370b6f4', '[\"*\"]', NULL, NULL, '2024-06-02 16:29:47', '2024-06-02 16:29:47'),
(83, 'App\\Models\\User', 2, 'login_test', 'b3d8a3e0e593223a91ab732c767674aad67ab55ae48bbf0a9e40ec57b61ae7ef', '[\"*\"]', NULL, NULL, '2024-06-02 16:30:30', '2024-06-02 16:30:30'),
(84, 'App\\Models\\User', 2, 'login_test', '54ffe315c5659524ee31ca13e32b144abe675beb6080ad8674bece9249901a2c', '[\"*\"]', '2024-06-02 16:48:28', NULL, '2024-06-02 16:31:08', '2024-06-02 16:48:28'),
(85, 'App\\Models\\User', 2, 'login_test', '9d8f9829113749fe3386859e42c4a2eaea618de95e68d6edf1c6f9394e573f33', '[\"*\"]', '2024-06-02 16:48:57', NULL, '2024-06-02 16:48:54', '2024-06-02 16:48:57'),
(86, 'App\\Models\\User', 2, 'login_test', 'adc935780ae9a1fe4432cdb4f09b8ae34a17236bdb050d2dc1cc7fbdfbfee817', '[\"*\"]', '2024-06-02 16:53:14', NULL, '2024-06-02 16:52:02', '2024-06-02 16:53:14'),
(87, 'App\\Models\\User', 2, 'login_test', '507a3210955a7386212d9853031717bbaba454a3be1fd009701cf117231d9eaa', '[\"*\"]', NULL, NULL, '2024-06-02 16:53:39', '2024-06-02 16:53:39'),
(88, 'App\\Models\\User', 2, 'login_test', 'c64c20b94d1eea04166052005f60e714228937329d0c7016ccaf2894215d5190', '[\"*\"]', '2024-06-02 16:55:51', NULL, '2024-06-02 16:55:27', '2024-06-02 16:55:51'),
(89, 'App\\Models\\User', 2, 'login_test', 'bafa248ec5245f285fa34142200ef6edd291dee1fb1c85ba28132bbd4fba8d2d', '[\"*\"]', '2024-06-02 17:11:21', NULL, '2024-06-02 16:58:21', '2024-06-02 17:11:21'),
(90, 'App\\Models\\User', 2, 'login_test', '4de06a2ff2f897c4b44074446d439232a098cebb09326a77514d4a35e4b8147a', '[\"*\"]', NULL, NULL, '2024-06-02 17:12:33', '2024-06-02 17:12:33'),
(91, 'App\\Models\\User', 2, 'login_test', 'bce9b84a96111890075bf6348372bc0b3ca7d4e0ddfebcad0ab92d5f38ef16d6', '[\"*\"]', NULL, NULL, '2024-06-02 17:12:48', '2024-06-02 17:12:48'),
(92, 'App\\Models\\User', 2, 'login_test', '9368b0dd7b59de37c3280155f00bfa6601416ffb76829c392233312e5f32150b', '[\"*\"]', '2024-06-02 17:15:14', NULL, '2024-06-02 17:14:14', '2024-06-02 17:15:14'),
(93, 'App\\Models\\User', 2, 'login_test', '6fcee04bdbbe721efd4fecdd67f2a332eab72c8cca6c11abaeb793c5bbcc03c7', '[\"*\"]', '2024-06-02 17:15:38', NULL, '2024-06-02 17:15:26', '2024-06-02 17:15:38'),
(94, 'App\\Models\\User', 2, 'login_test', '76e53d216724bfff040652c1a19ae458c0ccc635bcccbb4e5c10e6279eaa6b9c', '[\"*\"]', '2024-06-02 17:18:21', NULL, '2024-06-02 17:16:44', '2024-06-02 17:18:21'),
(95, 'App\\Models\\User', 2, 'login_test', 'b581614a6d43ea29718de15c6ed4eb75655fe1f35d7934c3947e15e57d40bd24', '[\"*\"]', '2024-06-02 17:18:41', NULL, '2024-06-02 17:18:40', '2024-06-02 17:18:41'),
(96, 'App\\Models\\User', 2, 'login_test', 'fb39c44da01e2571fadf8f9bb3361f1d5ba26981dedd5b942e1f7787ea3ab198', '[\"*\"]', '2024-06-02 18:00:06', NULL, '2024-06-02 17:49:35', '2024-06-02 18:00:06'),
(97, 'App\\Models\\User', 2, 'login_test', '5840f339e733ecc737d526b0c28ce212b3ae3b5853f05702d6777a8755fac391', '[\"*\"]', '2024-06-02 18:39:31', NULL, '2024-06-02 18:02:39', '2024-06-02 18:39:31'),
(98, 'App\\Models\\User', 2, 'login_test', '9693d356e0c1787dbb6a907ed3c70199a0030c71ccbcf2a87476f5eb0956dec0', '[\"*\"]', '2024-06-02 18:42:04', NULL, '2024-06-02 18:39:55', '2024-06-02 18:42:04'),
(99, 'App\\Models\\User', 2, 'login_test', 'f3ff64f6b36985d2bb98461caca436a11013c71d94d7c652e608c0e8fdb5c678', '[\"*\"]', '2024-06-02 18:52:21', NULL, '2024-06-02 18:42:20', '2024-06-02 18:52:21'),
(100, 'App\\Models\\User', 2, 'login_test', '00c427dd895fb29395457c3080232be5e496cf74e902e94bd5809eaa861b0741', '[\"*\"]', '2024-06-02 18:59:41', NULL, '2024-06-02 18:52:50', '2024-06-02 18:59:41'),
(101, 'App\\Models\\User', 2, 'login_test', '3989d08d82e2abb80c6cda81a09201684e391dd8d7896bc6d4949f21e124c64e', '[\"*\"]', '2024-06-02 20:50:42', NULL, '2024-06-02 19:30:46', '2024-06-02 20:50:42'),
(102, 'App\\Models\\User', 2, 'login_test', '2f870e7cd2c9d190ea1f90a1123e8c0eb9095daae165343228e72c32f5e54809', '[\"*\"]', '2024-06-02 20:52:45', NULL, '2024-06-02 20:50:57', '2024-06-02 20:52:45'),
(103, 'App\\Models\\User', 2, 'login_test', 'e95b9184668e4ce19794ee02960fcc9efcefe51f711904d3129d9d678cbf9ca4', '[\"*\"]', '2024-06-03 08:09:22', NULL, '2024-06-02 21:27:04', '2024-06-03 08:09:22'),
(104, 'App\\Models\\User', 2, 'login_test', '1ccf6288090b35256db0470da8ccbd18ec5780aeddfb19f9c766e88d7568ba90', '[\"*\"]', '2024-06-03 08:13:05', NULL, '2024-06-03 08:09:38', '2024-06-03 08:13:05'),
(105, 'App\\Models\\User', 2, 'login_test', '78c0508f3de69e5fd024276f8658301d8b1b584777927d6d82efb04b83c6e1f3', '[\"*\"]', '2024-06-03 08:19:26', NULL, '2024-06-03 08:17:05', '2024-06-03 08:19:26'),
(106, 'App\\Models\\User', 2, 'login_test', '336ac6a40eb96f1f815fd3234ffd6b7913f04cde61b08c372271572019eb7f9e', '[\"*\"]', '2024-06-03 08:20:49', NULL, '2024-06-03 08:19:38', '2024-06-03 08:20:49'),
(107, 'App\\Models\\User', 2, 'login_test', 'bf48822db280b7e22bd29c50ffcaee944aff998a04e923c95e2eb51432d0334a', '[\"*\"]', '2024-06-03 08:24:33', NULL, '2024-06-03 08:20:51', '2024-06-03 08:24:33'),
(108, 'App\\Models\\User', 2, 'login_test', '87f058749b5608913dcd09e76772d3688579c1a79eb90446a379744c21239372', '[\"*\"]', '2024-06-03 08:34:46', NULL, '2024-06-03 08:24:44', '2024-06-03 08:34:46'),
(109, 'App\\Models\\User', 2, 'login_test', '776e4103a1b0d4a3761b8580593fe320da3406e61e0f81b41c3836e18f9a3ccb', '[\"*\"]', '2024-06-03 08:46:54', NULL, '2024-06-03 08:36:19', '2024-06-03 08:46:54'),
(110, 'App\\Models\\User', 2, 'login_test', '4c58108ea4af90047b0db9e6d53365b3815348cd508c0fb0920e9b116c2d3d79', '[\"*\"]', '2024-06-03 08:59:18', NULL, '2024-06-03 08:56:44', '2024-06-03 08:59:18'),
(111, 'App\\Models\\User', 2, 'login_test', '28e6b22224c1d82e58f55fefcf6fc2bbe28bec24fd1d51bd1834ff5b735da217', '[\"*\"]', '2024-06-03 08:59:42', NULL, '2024-06-03 08:59:40', '2024-06-03 08:59:42'),
(112, 'App\\Models\\User', 2, 'login_test', '4a07be9f6618c4282225a59ff2314dacfed52b9f8720d5c834da3044d208729c', '[\"*\"]', '2024-06-03 09:07:26', NULL, '2024-06-03 09:02:47', '2024-06-03 09:07:26'),
(113, 'App\\Models\\User', 2, 'login_test', '0c65499113093952cdb724e7408c59f6a25da6e8302b43003f225f5c65a997f7', '[\"*\"]', '2024-06-03 09:31:26', NULL, '2024-06-03 09:08:40', '2024-06-03 09:31:26'),
(114, 'App\\Models\\User', 2, 'login_test', '025f4d6a647aa56b79b4102f9b3d000783b031f4912f2b86efab2415c659efdb', '[\"*\"]', '2024-06-03 09:41:52', NULL, '2024-06-03 09:38:53', '2024-06-03 09:41:52'),
(115, 'App\\Models\\User', 2, 'login_test', 'd554d71906fcabf91515274352b949e993dae1f1adefae03f040f773e54b62c4', '[\"*\"]', '2024-06-03 11:45:31', NULL, '2024-06-03 11:45:12', '2024-06-03 11:45:31'),
(116, 'App\\Models\\User', 2, 'login_test', '6f5adfb6138c11ea67cb3e79fa83138cac66d85356d1f8b43c658dc1f6c8dc32', '[\"*\"]', '2024-06-03 11:48:03', NULL, '2024-06-03 11:48:00', '2024-06-03 11:48:03'),
(117, 'App\\Models\\User', 2, 'login_test', 'cc66f9e59e6432e312fed25c0008f0ce9e5af11720713f1b473cfaa8820b0785', '[\"*\"]', '2024-06-03 11:51:22', NULL, '2024-06-03 11:51:19', '2024-06-03 11:51:22'),
(118, 'App\\Models\\User', 2, 'login_test', '1d26eabf08e5b968442a699e5a8b10ef921072b17d3d8f1f3d3dbe02d9908807', '[\"*\"]', '2024-06-03 12:03:39', NULL, '2024-06-03 11:53:55', '2024-06-03 12:03:39'),
(119, 'App\\Models\\User', 2, 'login_test', 'd9448f197e1dda6138099db39db0e63dc5e6d595cd42bc32ed31135d87902182', '[\"*\"]', '2024-06-03 12:20:13', NULL, '2024-06-03 12:20:09', '2024-06-03 12:20:13'),
(120, 'App\\Models\\User', 2, 'login_test', '23ac1c6ee56f94052620974a913d572ce093213f13a442021e3b31666fc548ed', '[\"*\"]', '2024-06-04 07:17:28', NULL, '2024-06-04 07:17:23', '2024-06-04 07:17:28'),
(121, 'App\\Models\\User', 2, 'login_test', 'a96b8fa38313a80f14f5be365b231e681bbbfe52e8f407ee1b5bf66529e0c4bc', '[\"*\"]', '2024-06-04 08:18:43', NULL, '2024-06-04 08:18:40', '2024-06-04 08:18:43'),
(122, 'App\\Models\\User', 2, 'login_test', '06e55119bb2b5894fe33d5158d8e307baab84c5ca121854da59a0f279bdd68c1', '[\"*\"]', '2024-06-04 08:59:43', NULL, '2024-06-04 08:45:14', '2024-06-04 08:59:43'),
(123, 'App\\Models\\User', 2, 'login_test', 'fb5dbf75cc7a56590e2f378194edd0bfacda792bcaf056aabda8b32d7791b321', '[\"*\"]', '2024-06-04 09:27:48', NULL, '2024-06-04 09:01:34', '2024-06-04 09:27:48'),
(124, 'App\\Models\\User', 2, 'login_test', '7e7fac0b7173b5ddc4644fe69e8015d4bd6da4d5c21467e78d1a7fca1a33473c', '[\"*\"]', '2024-06-04 09:37:12', NULL, '2024-06-04 09:37:08', '2024-06-04 09:37:12'),
(125, 'App\\Models\\User', 2, 'login_test', 'cce7fd9e1bbc10e4441b2ab70b306bbb2a321f9e431d07f1502ddaba9180f5ff', '[\"*\"]', '2024-06-04 10:12:35', NULL, '2024-06-04 10:02:17', '2024-06-04 10:12:35'),
(126, 'App\\Models\\User', 2, 'login_test', 'fff5afa6b0e72787d66d3b5c41dc765de9dcddf60bd052aff1aa6019af091ab0', '[\"*\"]', '2024-06-04 10:26:14', NULL, '2024-06-04 10:15:50', '2024-06-04 10:26:14'),
(127, 'App\\Models\\User', 2, 'login_test', 'b1b84dc8e7c2ed9d916a2f4295ed742d6971a3975716d02bf7c00ca2f9f2b324', '[\"*\"]', '2024-06-04 10:34:54', NULL, '2024-06-04 10:26:33', '2024-06-04 10:34:54'),
(128, 'App\\Models\\User', 2, 'login_test', '6886cad9ed1ce5803f1953a58e07663fe4c4af4e2fe02bdb31d35589d126e51d', '[\"*\"]', '2024-06-04 19:46:09', NULL, '2024-06-04 10:35:59', '2024-06-04 19:46:09'),
(129, 'App\\Models\\User', 2, 'login_test', '8d93ceb17cdfba0e7a8191f26d3873042883a9755d5bb6c08ee2173f64cb395d', '[\"*\"]', '2024-06-05 09:48:53', NULL, '2024-06-04 19:47:23', '2024-06-05 09:48:53'),
(130, 'App\\Models\\User', 2, 'login_test', '6018b5bee49b27f80ab2beaf34e3d93d01d2f4a8a9b1eef40de6068bbfb68b95', '[\"*\"]', '2024-06-05 09:59:39', NULL, '2024-06-05 09:49:28', '2024-06-05 09:59:39'),
(131, 'App\\Models\\User', 2, 'login_test', '342c1c62add594e22d4c8ae5354f3b0b5e98d64356d77b5249ddb4c8ed3bfa26', '[\"*\"]', '2024-06-05 10:13:07', NULL, '2024-06-05 09:59:59', '2024-06-05 10:13:07'),
(132, 'App\\Models\\User', 2, 'login_test', '23bd422c5b2e13e35532c52b21075dff28f6f11c18e5974146bffda83a03e647', '[\"*\"]', '2024-06-05 10:28:05', NULL, '2024-06-05 10:24:35', '2024-06-05 10:28:05'),
(133, 'App\\Models\\User', 2, 'login_test', '8f4a1bc56084bb1e86a95c73c578961dfe9e946d58be85edcdd47747a26a205f', '[\"*\"]', '2024-06-05 10:35:06', NULL, '2024-06-05 10:30:00', '2024-06-05 10:35:06'),
(134, 'App\\Models\\User', 2, 'login_test', 'dcce5c95efc0b69defa8d42b828b6fc6c2098be847f85be2a9fd8c108234ec46', '[\"*\"]', '2024-06-05 11:52:51', NULL, '2024-06-05 11:52:41', '2024-06-05 11:52:51'),
(135, 'App\\Models\\User', 2, 'login_test', '8d973fc3d62e79314379efd837198773a55e7c72a05bb0ac9f654ec7b1f92da6', '[\"*\"]', '2024-06-05 11:54:13', NULL, '2024-06-05 11:52:47', '2024-06-05 11:54:13'),
(136, 'App\\Models\\User', 2, 'login_test', 'b09681b5225a331b45b6918c3bdc8e663ad91cea3a672123f12ac8da0b46f581', '[\"*\"]', '2024-06-05 11:57:10', NULL, '2024-06-05 11:54:35', '2024-06-05 11:57:10'),
(137, 'App\\Models\\User', 2, 'login_test', '3d430b66bb2600711910e7a02091abb6880f2c3610bf92caab64f881c1a7d668', '[\"*\"]', '2024-06-05 11:59:15', NULL, '2024-06-05 11:57:43', '2024-06-05 11:59:15'),
(138, 'App\\Models\\User', 2, 'login_test', '529cda941f42d46613558cc413c532baed7fc6e49a80004e819d587567665995', '[\"*\"]', '2024-06-05 12:24:27', NULL, '2024-06-05 12:04:01', '2024-06-05 12:24:27'),
(139, 'App\\Models\\User', 2, 'login_test', '2467ccbf64684781331c832b509d61c7a21344ace3e15c460048fd5679cb7bca', '[\"*\"]', '2024-06-05 12:38:34', NULL, '2024-06-05 12:24:58', '2024-06-05 12:38:34'),
(140, 'App\\Models\\User', 2, 'login_test', '183dec9bc06c8cb3a92de503b8c247c141bdd11394841c656accab864e722694', '[\"*\"]', '2024-06-05 12:43:15', NULL, '2024-06-05 12:39:05', '2024-06-05 12:43:15'),
(141, 'App\\Models\\User', 2, 'login_test', 'e56b7ff082adc52451c12944d95de6653723bb615abc0c79decfe457e97c7245', '[\"*\"]', '2024-06-05 14:23:09', NULL, '2024-06-05 12:44:45', '2024-06-05 14:23:09'),
(142, 'App\\Models\\User', 2, 'login_test', '284179da2c814d18b7e8877ce24df147737d0fe749a8711f14318ec800ef4219', '[\"*\"]', '2024-06-05 14:25:43', NULL, '2024-06-05 14:23:23', '2024-06-05 14:25:43'),
(143, 'App\\Models\\User', 2, 'login_test', 'f2afa1fc00e3b94262da28638f3a061f9a696a89cfa7279f46eb50c2ffba9905', '[\"*\"]', '2024-06-05 14:29:34', NULL, '2024-06-05 14:26:06', '2024-06-05 14:29:34'),
(144, 'App\\Models\\User', 2, 'login_test', 'af4cb5eb7d574ed2f5629223c4a553e27cb0ac80634629e3bc4adf255de48415', '[\"*\"]', '2024-06-05 17:20:32', NULL, '2024-06-05 14:29:49', '2024-06-05 17:20:32'),
(145, 'App\\Models\\User', 2, 'login_test', '5677d7bbb08ca7d619b56b2d18018648d073df540107892a08e41e5bbca08689', '[\"*\"]', '2024-06-05 17:22:18', NULL, '2024-06-05 17:21:17', '2024-06-05 17:22:18'),
(146, 'App\\Models\\User', 2, 'login_test', 'c34895daf8e4c809c1b99e50ba0760e77f61dc83215052df4de3ca863ed0dfcd', '[\"*\"]', '2024-06-05 17:26:59', NULL, '2024-06-05 17:22:33', '2024-06-05 17:26:59'),
(147, 'App\\Models\\User', 2, 'login_test', '0ef393b13bfec02bc5e1547829bc3a1b53166db5c64e6cd41d7d421700aed418', '[\"*\"]', '2024-06-05 17:38:15', NULL, '2024-06-05 17:27:09', '2024-06-05 17:38:15'),
(148, 'App\\Models\\User', 2, 'login_test', '7a5e2ee0f9aee1e7ff5babbfc16c3028b9ba3a9f7f2e28d942dccb4cfd9b9931', '[\"*\"]', '2024-06-05 17:51:23', NULL, '2024-06-05 17:38:47', '2024-06-05 17:51:23'),
(149, 'App\\Models\\User', 2, 'login_test', 'b8f6e78bf13091c56738cc966a45aad01bd2c51f918485c170b345359a67c0aa', '[\"*\"]', '2024-06-05 18:11:25', NULL, '2024-06-05 17:51:35', '2024-06-05 18:11:25'),
(150, 'App\\Models\\User', 2, 'login_test', 'c9b29e968c9022bc43ff914a4e620d9268d103667f15e80a0821aa7d31429023', '[\"*\"]', '2024-06-05 19:32:00', NULL, '2024-06-05 19:22:23', '2024-06-05 19:32:00'),
(151, 'App\\Models\\User', 2, 'login_test', '657e7089be8c970ec0b7cf4d56a7cb9bfd5f0e4d5d65583286ec81f8c6c09c2f', '[\"*\"]', '2024-06-05 20:03:28', NULL, '2024-06-05 19:32:23', '2024-06-05 20:03:28'),
(152, 'App\\Models\\User', 2, 'login_test', 'b536d82a7bf2ecfd2a93a2e4e925cff73229d6f8c091e15b3b6886809f5dc70e', '[\"*\"]', '2024-06-05 20:07:51', NULL, '2024-06-05 20:07:43', '2024-06-05 20:07:51'),
(153, 'App\\Models\\User', 2, 'login_test', '07fd9d46eae507020aa95b59941c34a8c632c7006f4d40175b72452073584d88', '[\"*\"]', '2024-06-05 21:17:27', NULL, '2024-06-05 20:58:51', '2024-06-05 21:17:27'),
(154, 'App\\Models\\User', 2, 'login_test', '849ef7aaf0e9f17f12da37a16f7beadbd0dc3909eeaf55a056984bba0df7159e', '[\"*\"]', '2024-06-05 21:25:57', NULL, '2024-06-05 21:17:38', '2024-06-05 21:25:57'),
(155, 'App\\Models\\User', 2, 'login_test', '4ccff2dcd8213e50437f0976b3ca9d6b90fd3c2dc24fd68305aa57e94cc693d2', '[\"*\"]', '2024-06-05 21:28:48', NULL, '2024-06-05 21:26:14', '2024-06-05 21:28:48'),
(156, 'App\\Models\\User', 2, 'login_test', '4077903188e45711adcb5d2522d5ba30e349677ef814f5fa17ed42baaf9a93a0', '[\"*\"]', '2024-06-05 21:30:41', NULL, '2024-06-05 21:29:26', '2024-06-05 21:30:41'),
(157, 'App\\Models\\User', 2, 'login_test', '82b54aa097abfc920a5fb6ee77b8d557e0e53001e3ca5cdac7fe659e761bc384', '[\"*\"]', '2024-06-05 21:36:28', NULL, '2024-06-05 21:36:18', '2024-06-05 21:36:28'),
(158, 'App\\Models\\User', 2, 'login_test', '5db8c2c9a514ad048c962684b17a278f6c6b6d1b26b167f483aeae9b759d2232', '[\"*\"]', '2024-06-06 07:12:46', NULL, '2024-06-06 07:10:56', '2024-06-06 07:12:46'),
(159, 'App\\Models\\User', 2, 'login_test', '6395f9beeb303a873dcda6622f9a61c932036fcdc684fc13d4a4985d4f286b4d', '[\"*\"]', '2024-06-06 08:51:21', NULL, '2024-06-06 07:14:07', '2024-06-06 08:51:21'),
(160, 'App\\Models\\User', 2, 'login_test', '55fa50cc7f461f46a2c9fe6c9f8eba8817c1e456ff65f3e9620f11ca3ba4304e', '[\"*\"]', '2024-06-06 07:57:27', NULL, '2024-06-06 07:57:22', '2024-06-06 07:57:27'),
(161, 'App\\Models\\User', 2, 'login_test', '497de466bcb4d586d26644a0da0772b0c6207deddd087016f6db280b1b35f0e9', '[\"*\"]', '2024-06-06 08:19:00', NULL, '2024-06-06 08:18:57', '2024-06-06 08:19:00'),
(162, 'App\\Models\\User', 2, 'login_test', 'e1b698fd79ee27207ba5e4e256ba6f71e5368a6002e61691f4b4b550afb86bd8', '[\"*\"]', '2024-06-06 09:14:54', NULL, '2024-06-06 09:14:48', '2024-06-06 09:14:54'),
(163, 'App\\Models\\User', 2, 'login_test', '81c1ca07d4cd94422d35d7c994a6b09d845573d98a1415ac811f0b7f9412ba7c', '[\"*\"]', '2024-06-06 10:01:55', NULL, '2024-06-06 10:01:48', '2024-06-06 10:01:55'),
(164, 'App\\Models\\User', 2, 'login_test', 'e1775bc880dbdf7350431d35cb5676703d315f3586ae00d8fbbda37b7b999183', '[\"*\"]', '2024-06-06 10:52:15', NULL, '2024-06-06 10:52:07', '2024-06-06 10:52:15'),
(165, 'App\\Models\\User', 2, 'login_test', '9cdaddefb22a9a2167f9b5bba4cbdbb312468b1521a56126b86681d92d2386f1', '[\"*\"]', '2024-06-08 14:56:23', NULL, '2024-06-08 14:56:14', '2024-06-08 14:56:23'),
(166, 'App\\Models\\User', 2, 'login_test', 'bb5d771fc780d3e11018c89795ac9c84372a79e7b013b54ac389d837f94e55c1', '[\"*\"]', '2024-06-08 15:05:26', NULL, '2024-06-08 15:05:17', '2024-06-08 15:05:26'),
(167, 'App\\Models\\User', 2, 'login_test', 'dc5896b67535d8d089b837e4d021981de1a79710753f679c9908abb4a7031492', '[\"*\"]', '2024-06-10 18:24:43', NULL, '2024-06-10 18:24:31', '2024-06-10 18:24:43'),
(168, 'App\\Models\\User', 3, 'login_test', 'f3b5762244ccad81b48a5a624da62bf641447d407d2c0db9dc5a517ad070e92a', '[\"*\"]', NULL, NULL, '2024-11-06 14:56:44', '2024-11-06 14:56:44'),
(169, 'App\\Models\\User', 3, 'login_test', '64d3d4fca2f62df5b66488bec7f640cd4cefb56aadbbc2f2ce3fc00725b9d453', '[\"*\"]', NULL, NULL, '2024-11-24 10:09:55', '2024-11-24 10:09:55'),
(170, 'App\\Models\\User', 3, 'login_test', '3bbd9529f8321a74c27657557c4117859aab2d7bde04f10861001a312beee0ef', '[\"*\"]', NULL, NULL, '2024-11-28 12:55:40', '2024-11-28 12:55:40'),
(171, 'App\\Models\\User', 3, 'login_test', '238cad16b16d9a3ada82c19017ad8d0103c1f6774ce16e93cf4855b3ef3e8342', '[\"*\"]', NULL, NULL, '2024-11-28 12:56:20', '2024-11-28 12:56:20');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` bigint(20) UNSIGNED NOT NULL,
  `nombre_adultes` int(11) NOT NULL,
  `vue` tinyint(1) NOT NULL DEFAULT 0,
  `nombre_enfants` int(11) NOT NULL,
  `nombre_bebe` int(11) NOT NULL,
  `nombre_chambres` int(11) NOT NULL,
  `montant_total` decimal(8,2) NOT NULL,
  `idclient` bigint(20) UNSIGNED NOT NULL,
  `idVolDispo` bigint(20) UNSIGNED DEFAULT NULL,
  `idVygDispo` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `nombre_adultes`, `vue`, `nombre_enfants`, `nombre_bebe`, `nombre_chambres`, `montant_total`, `idclient`, `idVolDispo`, `idVygDispo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 1, 7990.00, 165, NULL, 16, '2024-06-04 09:27:36', '2024-06-05 17:28:13'),
(2, 4, 1, 0, 0, 2, 31960.00, 166, NULL, 71, '2024-06-04 09:36:36', '2024-06-05 17:27:18'),
(3, 1, 1, 2, 0, 2, 21970.00, 167, NULL, 20, '2024-06-05 11:54:03', '2024-06-05 17:26:51'),
(4, 1, 1, 2, 0, 2, 21970.00, 168, NULL, 20, '2024-06-05 11:57:00', '2024-06-05 17:26:46'),
(5, 2, 1, 2, 1, 2, 31960.00, 169, 6, NULL, '2024-06-05 19:19:22', '2024-06-05 19:25:31'),
(6, 1, 1, 0, 0, 1, 7990.00, 170, NULL, 16, '2024-06-05 19:20:46', '2024-06-05 19:25:27'),
(7, 1, 1, 0, 0, 1, 7990.00, 171, NULL, 16, '2024-06-05 20:57:53', '2024-06-05 21:00:18'),
(8, 1, 1, 3, 1, 2, 30960.00, 172, NULL, 41, '2024-06-06 08:17:28', '2024-06-06 08:20:23'),
(9, 2, 1, 1, 1, 1, 24970.00, 173, NULL, 102, '2024-06-06 10:00:31', '2024-06-06 10:02:43'),
(10, 1, 1, 0, 0, 2, 7990.00, 174, NULL, 78, '2024-06-08 14:44:58', '2024-06-08 14:56:41'),
(11, 1, 1, 2, 1, 1, 23970.00, 175, NULL, 109, '2024-06-10 18:22:55', '2024-06-10 18:25:15'),
(12, 2, 0, 0, 0, 2, 15980.00, 176, NULL, 12, '2024-11-24 14:02:10', '2024-11-24 14:02:10'),
(13, 2, 0, 1, 1, 2, 24970.00, 177, NULL, 17, '2024-11-24 14:16:55', '2024-11-24 14:16:55'),
(14, 2, 0, 1, 1, 1, 24970.00, 178, NULL, 41, '2024-11-28 12:54:36', '2024-11-28 12:54:36');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_vol_dispo`
--

CREATE TABLE `reservation_vol_dispo` (
  `idVolDispo` bigint(20) UNSIGNED NOT NULL,
  `agenceVyg` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `prixV` int(11) NOT NULL,
  `formule` varchar(255) NOT NULL,
  `idVol` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_vol_dispo`
--

INSERT INTO `reservation_vol_dispo` (`idVolDispo`, `agenceVyg`, `date_debut`, `date_fin`, `prixV`, `formule`, `idVol`, `created_at`, `updated_at`) VALUES
(1, 'agencesVolsDispo/A1.png', '2024-05-01', '2024-06-01', 12500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:30', '2024-04-28 15:03:30'),
(2, 'agencesVolsDispo/A2.png', '2024-06-02', '2024-06-12', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:32', '2024-04-28 15:03:32'),
(3, 'agencesVolsDispo/A1.png', '2024-06-15', '2024-06-30', 7799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:33', '2024-04-28 15:03:33'),
(4, 'agencesVolsDispo/A2.png', '2024-05-01', '2024-06-01', 11500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:25', '2024-04-28 18:51:25'),
(5, 'agencesVolsDispo/A1.png', '2024-04-20', '2024-05-15', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:25', '2024-04-28 18:51:25'),
(6, 'agencesVolsDispo/A2.png', '2024-05-20', '2024-06-15', 7799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:26', '2024-04-28 18:51:26'),
(7, 'agencesVolsDispo/A1.png', '2024-04-01', '2024-05-01', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:01', '2024-04-28 18:59:01'),
(8, 'agencesVolsDispo/A1.png', '2024-05-02', '2024-06-02', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:03', '2024-04-28 18:59:03'),
(9, 'agencesVolsDispo/A2.png', '2024-06-03', '2024-07-03', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:04', '2024-04-28 18:59:04'),
(10, 'agencesVolsDispo/A1.png', '2024-06-04', '2024-07-04', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:04', '2024-04-28 18:59:04'),
(11, 'agencesVoyages/A2.png', '2024-07-05', '2024-07-31', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-06-03 09:07:54', '2024-06-03 09:07:54');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_voyage_dispo`
--

CREATE TABLE `reservation_voyage_dispo` (
  `idVygDispo` bigint(20) UNSIGNED NOT NULL,
  `agenceVyg` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `prixV` int(11) NOT NULL,
  `formule` varchar(255) NOT NULL,
  `idVoyage` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_voyage_dispo`
--

INSERT INTO `reservation_voyage_dispo` (`idVygDispo`, `agenceVyg`, `date_debut`, `date_fin`, `prixV`, `formule`, `idVoyage`, `created_at`, `updated_at`) VALUES
(11, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 9290, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:34', '2024-04-26 15:12:34'),
(12, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 8990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:34', '2024-04-26 15:12:34'),
(13, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:35', '2024-04-26 15:12:35'),
(14, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:35', '2024-04-26 15:12:35'),
(15, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:36', '2024-04-26 15:12:36'),
(16, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:36', '2024-04-26 15:12:36'),
(17, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:45', '2024-04-26 15:48:45'),
(18, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:46', '2024-04-26 15:48:46'),
(19, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:46', '2024-04-26 15:48:46'),
(20, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 12900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:47', '2024-04-26 15:48:47'),
(21, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 14490, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:47', '2024-04-26 15:48:47'),
(22, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 14890, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:48', '2024-04-26 15:48:48'),
(23, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 16900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:49', '2024-04-26 15:48:49'),
(24, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 16900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:49', '2024-04-26 15:48:49'),
(25, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:50', '2024-04-26 15:48:50'),
(26, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:50', '2024-04-26 15:48:50'),
(27, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:51', '2024-04-26 15:48:51'),
(28, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:18', '2024-04-26 17:24:18'),
(29, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:18', '2024-04-26 17:24:18'),
(30, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 8999, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:19', '2024-04-26 17:24:19'),
(31, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 10500, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:20', '2024-04-26 17:24:20'),
(32, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 9499, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:20', '2024-04-26 17:24:20'),
(33, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 10000, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:21', '2024-04-26 17:24:21'),
(34, 'agencesVoyages/A1.png', '2025-01-15', '2025-02-15', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:28', '2024-04-26 17:40:28'),
(35, 'agencesVoyages/A2.png', '2025-01-15', '2025-02-15', 8750, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:29', '2024-04-26 17:40:29'),
(36, 'agencesVoyages/ZptgF6hUg7jkbqjcBRh2JXCs0lnrq6yj8eJDuYi0.png', '2025-01-15', '2025-02-15', 9800, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:29', '2024-04-26 17:40:29'),
(37, 'agencesVoyages/PbclQjUjg0ISXUBCo4NrPyjrrxrN53rq08cPwDMM.png', '2025-01-15', '2025-02-15', 9900, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:30', '2024-04-26 17:40:30'),
(38, 'agencesVoyages/AZvo2HBBT9gEHqWGlRFZ8Lw4rP70Rf8jWKhi5h8i.png', '2025-01-15', '2025-02-15', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:30', '2024-04-26 17:40:30'),
(39, 'agencesVoyages/X8r5YDHlDf12zLuaonY1dwcQrNuoeP2PDKqsJV8R.png', '2025-01-15', '2025-02-15', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:31', '2024-04-26 17:40:31'),
(40, 'agencesVoyages/2stBfcSTa7NAfutNFJ0IsxnMRdCnDMHafsyoO62T.png', '2025-01-15', '2025-02-15', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:45', '2024-04-27 11:21:45'),
(41, 'agencesVoyages/ehPA783BZ1e764Xc3C8QVHlsANOemRjy8zC38cg2.png', '2025-01-15', '2025-02-15', 8799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:46', '2024-04-27 11:21:46'),
(42, 'agencesVoyages/yrRNjI22yJkSdbkkiH1yblTiIeOT6qhK9BSkBtHM.png', '2025-01-15', '2025-02-15', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:46', '2024-04-27 11:21:46'),
(43, 'agencesVoyages/xQoIL4iFbLghQ1DXMaGvnZshhRX9DKYEnhtBA5Dz.png', '2025-01-15', '2025-02-15', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:47', '2024-04-27 11:21:47'),
(44, 'agencesVoyages/TsNdRJJysnxyx9Ep0P5fRBpbGHFGQNNhGIhV8BLY.png', '2025-01-15', '2025-02-15', 9699, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:48', '2024-04-27 11:21:48'),
(48, 'agencesVoyages/BLBTk59QLgxaJRtr4DYLId3IUHrAAkPRTH07m9GU.png', '2025-01-15', '2025-02-15', 12500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:33', '2024-04-27 14:49:33'),
(49, 'agencesVoyages/ReGs1NDiaKPIs6j1lG5p6gIrUtsDJZB6xuBOV461.png', '2025-01-15', '2025-02-15', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:34', '2024-04-27 14:49:34'),
(50, 'agencesVoyages/yWAhvs2P3ZiNECjP96rmHISMBLZhsRhUbT4KN3uQ.png', '2025-01-15', '2025-02-15', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:35', '2024-04-27 14:49:35'),
(51, 'agencesVoyages/btg2czCxtUNAKsvftPXA1bZsAU1zbcfmdKAkk5m9.png', '2025-01-15', '2025-02-15', 8899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:35', '2024-04-27 14:49:35'),
(52, 'agencesVoyages/GfH83A5L7jGvZABKILPC6yXBX6dFEnikbSCDo05A.png', '2025-01-15', '2025-02-15', 6500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:36', '2024-04-27 14:49:36'),
(53, 'agencesVoyages/nt7TLhDfDrtUZfaAMNqoH0c2Rq3HcnxstUffGakh.png', '2025-01-15', '2025-02-15', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:36', '2024-04-27 14:49:36'),
(54, 'agencesVoyages/yXTTJfVThJroUlcsMMEzSVvR44noxGH0nOFjPOyo.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:17', '2024-04-27 14:58:17'),
(55, 'agencesVoyages/SQIK41z65ZTwjrgTdacZhF8tMDRPcrvRaYZ7OXKy.png', '2025-01-15', '2025-02-15', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:18', '2024-04-27 14:58:18'),
(56, 'agencesVoyages/3ANUodCUMEMvbJJlL8l33FgBYePv1N6hlXgNIfnP.png', '2025-01-15', '2025-02-15', 9998, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:18', '2024-04-27 14:58:18'),
(57, 'agencesVoyages/qiunMJYkeRlMXjJY32i3TKTeOEUyENXEd0H54WFZ.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:19', '2024-04-27 14:58:19'),
(58, 'agencesVoyages/ieMiS1ximP3maDIeEs7G16PZ9A7w5Ij0ppuUSLT6.png', '2025-01-15', '2025-02-15', 9899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:19', '2024-04-27 14:58:19'),
(65, 'agencesVoyages/eweHuLcCssEXOvDw8rVI7732OuImMLWEeiKf4EvN.png', '2025-01-15', '2025-02-15', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(66, 'agencesVoyages/AhIryBuAukes9WB2rk1AKFI2zXSW2pNn4kEKBJXE.png', '2025-01-15', '2025-02-15', 8500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(67, 'agencesVoyages/BtCzmahacBmajglAnOcWrWYQjAROMOlIDcheSwZC.png', '2025-01-15', '2025-02-15', 9000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(68, 'agencesVoyages/dZbDZ9UiH8IKWUixBB4jsLCkNGaub84Z2CfmpX2Y.png', '2025-01-15', '2025-02-15', 12000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:18', '2024-04-27 15:13:18'),
(69, 'agencesVoyages/2GjThv0JLEKptjkjHGTXd8y8UC1jmxupKaeTfTmx.png', '2025-01-15', '2025-02-15', 5000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:19', '2024-04-27 15:13:19'),
(70, 'agencesVoyages/FAEF9Gd55ziF7MuTGPtOmAwSBwCkWNQH0lheq8Kl.png', '2025-01-15', '2025-02-15', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:39', '2024-04-27 16:33:39'),
(71, 'agencesVoyages/pA2nbJ7GdezUkK0eRtveFSJA5Gp5JrGmsHkgNPm1.png', '2025-01-15', '2025-02-15', 9000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:40', '2024-04-27 16:33:40'),
(72, 'agencesVoyages/c9gy6jkwWFzFklI0p4PTEauL7OqJC63qHbLQR4Ak.png', '2025-01-15', '2025-02-15', 7500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:41', '2024-04-27 16:33:41'),
(73, 'agencesVoyages/oAgLCRq2LFxm4A7CxxE8QucEl0RrtyeZSVviT0yM.png', '2025-01-15', '2025-02-15', 6500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:42', '2024-04-27 16:33:42'),
(74, 'agencesVoyages/BRZplJS9ScyL7Dy31AqLpRbYWUBEepsjczK0K3Ml.png', '2025-01-15', '2025-02-15', 5000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:42', '2024-04-27 16:33:42'),
(75, 'agencesVoyages/X625z2jqkNSjzbODCIjEWQeJiLJ17xNhPTHpB75m.png', '2025-01-15', '2025-02-15', 2500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:43', '2024-04-27 16:33:43'),
(76, 'agencesVoyages/8vnHsKBTqrEIuqX8yopxd3TZyUVzYKnSvX7wSwF1.png', '2025-01-15', '2025-02-15', 12899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:43', '2024-04-27 16:47:43'),
(77, 'agencesVoyages/a6iwIidoSi0FmvcAWj2evwSl4tnHePeLnCvBv0G3.png', '2025-01-15', '2025-02-15', 6449, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:44', '2024-04-27 16:47:44'),
(78, 'agencesVoyages/Ma5zNdeiygPccc4NnT3IY1TvAkUXEFnM1fhJYk72.png', '2025-01-15', '2025-02-15', 5499, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:45', '2024-04-27 16:47:45'),
(79, 'agencesVoyages/XcOJguryzcrlWWf3zeUtKhYuhtyCl8kkraFmCAVa.png', '2025-01-15', '2025-02-15', 15000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:45', '2024-04-27 16:47:45'),
(80, 'agencesVoyages/161oehqTXpxQC4x6bFILgRY2mg9VNIkq7ZiQVns3.png', '2025-01-15', '2025-02-15', 12000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:27', '2024-04-27 17:01:27'),
(81, 'agencesVoyages/dk2fEZjSbzGQuUEFeeYe8sICO1BN1BkAoe2PN0wE.png', '2025-01-15', '2025-02-15', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:28', '2024-04-27 17:01:28'),
(82, 'agencesVoyages/w6p2I30p7QyJTGyOk4enCGMP9aLbu11HariHkeDE.png', '2025-01-15', '2025-02-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:34', '2024-04-27 17:01:34'),
(83, 'agencesVoyages/wVjV3pQYmOkp3m10lEonKpsO4Poabal6oIXTmlcW.png', '2025-01-15', '2025-02-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:36', '2024-04-27 17:01:36'),
(84, 'agencesVoyages/OMmOJkZHrCUBzXwLQlZ8zdAlV3nTpUkxD7y0kQj9.png', '2025-01-15', '2025-02-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:39', '2024-04-27 17:01:39'),
(85, 'agencesVoyages/ewtBkGPRvW9SFwMoh5EG9oGYGrj5IfPbkNtvcU7n.png', '2025-01-15', '2025-02-15', 17999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:29', '2024-04-27 17:07:29'),
(86, 'agencesVoyages/6i3wxlfufpwPt7AR0FIzySum8F94uFD1HGhv7PZm.png', '2025-01-15', '2025-02-15', 12799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:31', '2024-04-27 17:07:31'),
(87, 'agencesVoyages/94gw07pKFFcWaAFnMjZ0Ubntfpb0rZXAnTvcPR73.png', '2025-01-15', '2025-02-15', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:32', '2024-04-27 17:07:32'),
(88, 'agencesVoyages/x6UgTo3rsT7sMVdgZa7gtT24Ep00bnfjJSgwelaR.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:32', '2024-04-27 17:07:32'),
(89, 'agencesVoyages/hkZbhwCuCi5B535cuC2foARFbIjUs2ef2bzqA3aA.png', '2025-01-15', '2025-02-15', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:25:59', '2024-04-27 17:25:59'),
(90, 'agencesVoyages/qDvNQOpFICfpJxxIG3PBn4R2JjOBgfhqESCEi1gu.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:00', '2024-04-27 17:26:00'),
(91, 'agencesVoyages/3DerLvN1qjcwC1I9GxUpTaRmCJ8PdT81KowHxQEE.png', '2025-01-15', '2025-02-15', 6799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:00', '2024-04-27 17:26:00'),
(92, 'agencesVoyages/8TFy8MhmEuPcKljbwI9l9FfKJEZMP6gsfu46wXqz.png', '2025-01-15', '2025-02-15', 6799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:01', '2024-04-27 17:26:01'),
(93, 'agencesVoyages/2bJlRIQbznOzPI9Qz0UqZBACzJaw21LGiVLfHWFS.png', '2025-01-15', '2025-02-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:02', '2024-04-27 17:26:02'),
(94, 'agencesVoyages/Wphl1clucGPqVJC3M3PUmBHr30Kt4K1GXP3OIdJy.png', '2025-01-15', '2025-02-15', 11999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:00', '2024-04-27 17:44:00'),
(95, 'agencesVoyages/lZreKdlh5HoU9OE4XkeL5AHj9Q3QvSRMtdwlcZdr.png', '2025-01-15', '2025-02-15', 10699, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:01', '2024-04-27 17:44:01'),
(96, 'agencesVoyages/JBPXo6gOp0ArwoSJgXodtV9mO1MTRebmXUJu2X0o.png', '2025-01-15', '2025-02-15', 9899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:01', '2024-04-27 17:44:01'),
(97, 'agencesVoyages/ERa8Hsa3H7rC490W4MGfJ5M5Hf7rZE1uvxnziw1a.png', '2025-01-15', '2025-02-15', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:02', '2024-04-27 17:44:02'),
(98, 'agencesVoyages/HFp1X3sFf7ZlkkdVUkjtuiRnqsRbTEshPepKVcJC.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:03', '2024-04-27 17:44:03'),
(99, 'agencesVoyages/COgHaibuBDJQ4CJToAidMyiohZc7VG5auh5SIyog.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:03', '2024-04-27 17:44:03'),
(100, 'agencesVoyages/avMDlh7bsx14Dd4Y2CROOSaZO1nP3MD9cXQQIbyi.png', '2025-01-15', '2025-02-15', 16599, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:38', '2024-04-27 17:52:38'),
(101, 'agencesVoyages/1I7LpqJLeekGJpMZjRZWzdoHtA0xaoMNTpTkjexh.png', '2025-01-15', '2025-02-15', 14599, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:39', '2024-04-27 17:52:39'),
(102, 'agencesVoyages/TMkBFaFyM5aTpr7TzOVbBLZFwB78OwIHuxXBTJAW.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:39', '2024-04-27 17:52:39'),
(103, 'agencesVoyages/GctCVhJCZCtpNyvg567a3UVIVq6uXFy1SL7BTW0S.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:41', '2024-04-27 17:52:41'),
(104, 'agencesVoyages/CnjcYSoZITtUtNL362kI5JA3nvIRreCIzTo4sxAk.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:42', '2024-04-27 17:52:42'),
(105, 'agencesVoyages/zG2hbTVUezyp0tt8ryZ1LhGGEd768gDAnoC01pdZ.png', '2025-01-15', '2025-02-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:42', '2024-04-27 17:52:42'),
(109, 'agencesVoyages/beMqjhJXNmfLi1oiAiOpsuPpcmbOvGhvQW8U1sSq.png', '2025-01-15', '2025-02-15', 9799, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-06-03 08:30:09', '2024-06-03 08:30:09');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'RAHEL OTHMANE', 'rahelothmane@gmail.com', NULL, '$2y$10$P4PXVXa2RiyXm7Ckb.gbOuLUG50F72CPxsXjKC4ArbxpogeGhEiDK', NULL, NULL, NULL),
(3, 'Admin', 'mostafaalmannani@gmail.com', '2024-10-08 05:15:19', '$2y$12$knIfWCNEAv/rhBGOJXWxVOSX1YHhGDgOZVWv43aAd1Am1JwU1IJmu', '7A9McOQmVj', '2024-10-08 05:15:19', '2024-10-08 05:15:19');

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `idVol` bigint(20) UNSIGNED NOT NULL,
  `nomVille` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`idVol`, `nomVille`, `image`, `prix`, `date_depart`, `date_arrivee`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Espagne', 'picturesPFE/espagne.jpg', 12500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Espagne avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 15:03:30', '2024-04-28 15:03:30'),
(2, 'France', 'picturesPFE/france.jpg', 11500, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/France avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 18:51:22', '2024-04-28 18:51:22'),
(3, 'China', 'picturesPFE/china.jpg', 17500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/China avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 18:59:00', '2024-04-28 18:59:00');

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `idVoyage` bigint(20) UNSIGNED NOT NULL,
  `nomVille` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`idVoyage`, `nomVille`, `image`, `prix`, `date_depart`, `date_arrivee`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Dubai', 'picturesPFE/dubai.jpg', 7990, '2024-04-01', '2024-08-01', '- Vol Aller/Retour Casablanca/Dubai avec la RAM ou Emirates\r\n\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 15:12:30', '2024-04-26 15:12:30'),
(3, 'Malaisie', 'picturesPFE/malaisie.jpeg', 12900, '2024-05-01', '2024-06-01', '- Vols Aller - Retour Casablanca - Kualalumpur avec EMIRATES ou Qatar Airways\r\n- 10 nuits hôtel metro hotel bukit bintang 3* ou similaire en petit déjeuner\r\n- Transferts: Aéroport - Hôtel - Aéropor', '2024-04-26 15:48:42', '2024-04-26 15:48:42'),
(4, 'Turkish', 'picturesPFE/turkish.jpg', 6999, '2024-04-03', '2024-05-03', '- Vol Aller/Retour Casablanca/Turkish avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 17:24:15', '2024-04-26 17:24:15'),
(5, 'Canada', 'picturesPFE/canada.jpg', 9999, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/Canada avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 17:40:26', '2024-04-26 17:40:26'),
(6, 'France', 'picturesPFE/france.jpg', 7899, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/France avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 11:21:40', '2024-04-27 11:21:40'),
(8, 'China', 'picturesPFE/china.jpg', 12500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/China avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 14:49:33', '2024-04-27 14:49:33'),
(9, 'Hollande', 'picturesPFE/hollande.jpg', 13500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Hollande avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 14:58:17', '2024-04-27 14:58:17'),
(12, 'Espagne', 'picturesPFE/espagne.jpg', 7999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 15:13:16', '2024-04-27 15:13:16'),
(13, 'America', 'picturesPFE/america.jpg', 13000, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/America avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 16:33:33', '2024-04-27 16:33:33'),
(14, 'Thailand', 'picturesPFE/thailand.jpg', 12899, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 16:47:43', '2024-04-27 16:47:43'),
(15, 'Tunisie', 'picturesPFE/tunisie.jpg', 12000, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Tunisie avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:01:25', '2024-04-27 17:01:25'),
(16, 'Portugal', 'picturesPFE/portugal.jpg', 17999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:07:29', '2024-04-27 17:07:29'),
(17, 'Oman', 'picturesPFE/oman.jpg', 8999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Oman avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:25:57', '2024-04-27 17:25:57'),
(18, 'Mouscou', 'picturesPFE/mouscou.jpg', 11999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Mouscou avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:43:58', '2024-04-27 17:43:58'),
(19, 'London', 'picturesPFE/london.jpg', 16599, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/London avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:52:35', '2024-04-27 17:52:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`);

--
-- Index pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  ADD PRIMARY KEY (`idV`),
  ADD KEY `commentaires_vol_idvoldispo_foreign` (`idVolDispo`);

--
-- Index pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `commentaires_voyages_idvygdispo_foreign` (`idVygDispo`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `hajomra`
--
ALTER TABLE `hajomra`
  ADD PRIMARY KEY (`idHO`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `reservation_idclient_foreign` (`idclient`),
  ADD KEY `reservation_idvoldispo_foreign` (`idVolDispo`),
  ADD KEY `reservation_idvygdispo_foreign` (`idVygDispo`);

--
-- Index pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  ADD PRIMARY KEY (`idVolDispo`),
  ADD KEY `reservation_vol_dispo_idvol_foreign` (`idVol`);

--
-- Index pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  ADD PRIMARY KEY (`idVygDispo`),
  ADD KEY `reservation_voyage_dispo_idvoyage_foreign` (`idVoyage`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`idVol`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`idVoyage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  MODIFY `idV` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  MODIFY `idC` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idC` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hajomra`
--
ALTER TABLE `hajomra`
  MODIFY `idHO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idReservation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  MODIFY `idVolDispo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  MODIFY `idVygDispo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vol`
--
ALTER TABLE `vol`
  MODIFY `idVol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `idVoyage` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  ADD CONSTRAINT `commentaires_vol_idvoldispo_foreign` FOREIGN KEY (`idVolDispo`) REFERENCES `reservation_vol_dispo` (`idVolDispo`);

--
-- Contraintes pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD CONSTRAINT `commentaires_voyages_idvygdispo_foreign` FOREIGN KEY (`idVygDispo`) REFERENCES `reservation_voyage_dispo` (`idVygDispo`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_idclient_foreign` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`),
  ADD CONSTRAINT `reservation_idvoldispo_foreign` FOREIGN KEY (`idVolDispo`) REFERENCES `reservation_vol_dispo` (`idVolDispo`),
  ADD CONSTRAINT `reservation_idvygdispo_foreign` FOREIGN KEY (`idVygDispo`) REFERENCES `reservation_voyage_dispo` (`idVygDispo`);

--
-- Contraintes pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  ADD CONSTRAINT `reservation_vol_dispo_idvol_foreign` FOREIGN KEY (`idVol`) REFERENCES `vol` (`idVol`);

--
-- Contraintes pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  ADD CONSTRAINT `reservation_voyage_dispo_idvoyage_foreign` FOREIGN KEY (`idVoyage`) REFERENCES `voyage` (`idVoyage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
