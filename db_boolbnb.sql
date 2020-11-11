-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2020 at 09:15 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_boolbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rooms` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `baths` int(11) NOT NULL,
  `square_meters` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` decimal(6,4) DEFAULT NULL,
  `lon` decimal(6,4) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `user_id`, `title`, `description`, `rooms`, `beds`, `baths`, `square_meters`, `address`, `lat`, `lon`, `price`, `image`, `active`, `created_at`, `updated_at`) VALUES
(31, 7, 'Catania city center', 'Soggiorna nel cuore di Catania\r\nLa camera dispone un balcone\r\nAltissimi tetti a volta impreziositi da stucchi,antichi pavimenti da decori unici.\r\nVista sul mare e sul barocco\r\nVi attende a 2minuti la strada principale Via Etnea e piazza stesicoro.', 3, 2, 1, 100, 'Via Etnea, Catania, Sicilia, Italia', '37.5144', '15.0845', NULL, 'images/et9v3y1El3Ei8HjK4ztKn9ZGKmautEblfmLRcVL5.jpeg', 1, '2020-10-11 20:09:22', '2020-10-11 20:09:22'),
(32, 7, 'Little house plaja', 'Casetta accogliente su due piani, ben illuminata, arieggiata. A pochi passi dal boschetto marino, vicino al mare plaja. Lo si può raggiungere a piedi attraversando il boschetto dal centro commerciale, dalle 7 alle 19. Aeroporto a pochi minuti.', 2, 2, 1, 90, 'Via San Giuseppe la Rena, Catania, Sicilia, Italia', '37.4818', '15.0761', NULL, 'images/rcfrNNaDUa3u0SnSpFdR9sVptXcElYP3F7tY8sHY.jpeg', 1, '2020-10-11 20:11:12', '2020-10-11 20:11:12'),
(33, 7, 'Rooms on the top', 'The bedroom is on the top floor 20th in the highest palace in the historic center of Catania. Only 2 minutes by walk from Etnea street the most important street af Catania and within walking distance of the Duomo and all the monuments of the city, theater Massimo Bellini, Anfiteatro Romano, Monastero dei Benedettini, teatro Romano an so on.', 3, 3, 2, 133, 'Via Enea, Adrano, Sicilia, Italia', '37.6642', '14.8368', NULL, 'images/x09BLyiKKAWexB9qKb1GaYDf690hzpRbwRpmgPVD.jpeg', 1, '2020-10-11 20:12:42', '2020-10-12 10:49:18'),
(34, 8, 'Una terrazza al centro', 'Appartamento nuovo Napoli centro a pochi passi dalla stazione centrale, dalla metropolitana ben collegata,pochi metri dal porto per le imbarcazioni delle isole di Capri Ischia e Procida, fermate dei bus,supermercati ed al centro storico.Tutto percorribile a piedi. A pochi metri dalle pizzerie più rinomate di Napoli tra cui \"pizzeria da Michele\".', 2, 1, 1, 80, 'Napoli, Campania, Italia', '40.8359', '14.2488', NULL, 'images/5zFu5IP46aOqaj16YfvuYpD854ML6IW6vGcJdyva.jpeg', 1, '2020-10-11 20:16:32', '2020-10-11 20:16:32'),
(35, 8, 'La maison bleue', 'Cassetta molto accogliente e luminosa nel cuore di Napoli, a due passi da ogni tipo di trasporto. Nei pressi della Stazione Centrale di Piazza Garibaldi.', 3, 2, 1, 100, 'Piazza Giuseppe Garibaldi, Napoli, Campania, Italia', '40.8524', '14.2695', NULL, 'images/BiE1h8VcWn1PjfIwRQHTOWUSnOwIoBXoT88Nq10D.jpeg', 1, '2020-10-11 20:18:32', '2020-10-11 20:39:39'),
(36, 8, 'La casa sul fiume', 'Appartamento tutto nuovo di pacca, zona lungo dora napoli, a due passi da porta palazzo e dalla scuola Holden,vicinissima a tutti i mezzi e a 20-30 minuti a piedi dal centro!\r\nSotto casa passa il bus numero 10 che vi porta a porta susa!:)', 4, 2, 2, 110, 'Torino, Piemonte, Italia', '45.0678', '7.6825', NULL, 'images/kysMR1eAjd2fwqQooajOLUnD1heSi6uEi8YgMVh4.jpeg', 1, '2020-10-11 20:21:18', '2020-10-11 20:21:18'),
(37, 8, 'La Mansarda', 'Torino è una città che invita al rigore, alla linearità, allo stile.\r\nInvita alla logica, e attraverso la logica apre alla follia. (Italo Calvino)\r\n\r\n“La Mansarda” è un piccolo appartamento monolocale di circa 25 mq dotato di tutti i comfort posto a soli 2 minuti a piedi dalla stazione ferroviaria e metropolitana di Porta Nuova.', 1, 1, 1, 50, 'Porta Nuova, Torino, Piemonte, Italia', '45.0627', '7.6790', NULL, 'images/pd6ehicwvTjAZAUyosZane2rTBT7p9Dou4s3o2L0.jpeg', 1, '2020-10-11 20:23:23', '2020-10-11 20:23:23'),
(38, 7, 'Antico Palmento', 'L\'alloggio è tranquillo, immerso in un\'oasi verde, ma anche centrale, vicino a negozi e ristoranti. Adatto a coppie, anche con un bambino, a single e a chi viaggia per lavoro. La vicinanza alla tangenziale rende facilmente raggiungibile l\'autostrada per Palermo, Siracusa, Ragusa e Messina.', 5, 3, 2, 150, 'Via Etnea, Mascalucia, Sicilia, Italia', '37.5755', '15.0492', NULL, 'images/puxQ2p2A1eBXZluugS3dfTZ6bnn0sBsxY2cdVSNN.jpeg', 1, '2020-10-11 20:26:12', '2020-10-12 06:23:40'),
(39, 9, 'Test23', 'Casaer', 1, 1, 1, 90, 'Via Giuseppe Garibaldi, Catania, Sicilia, Italia', '37.5009', '15.0802', NULL, 'images/cXv8cj5JtCVlYK7dwhjsDdxxJ9Rmr8NF3PWj69Us.jpeg', 1, '2020-10-12 11:13:08', '2020-10-12 11:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_service`
--

CREATE TABLE `apartment_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_service`
--

INSERT INTO `apartment_service` (`id`, `apartment_id`, `service_id`, `created_at`, `updated_at`) VALUES
(62, 31, 1, NULL, NULL),
(63, 31, 2, NULL, NULL),
(64, 31, 4, NULL, NULL),
(65, 32, 2, NULL, NULL),
(66, 32, 3, NULL, NULL),
(67, 32, 6, NULL, NULL),
(68, 33, 1, NULL, NULL),
(69, 33, 3, NULL, NULL),
(70, 33, 4, NULL, NULL),
(71, 33, 5, NULL, NULL),
(72, 34, 1, NULL, NULL),
(73, 34, 2, NULL, NULL),
(74, 35, 1, NULL, NULL),
(75, 35, 3, NULL, NULL),
(76, 35, 4, NULL, NULL),
(77, 36, 1, NULL, NULL),
(78, 36, 2, NULL, NULL),
(79, 36, 4, NULL, NULL),
(80, 37, 1, NULL, NULL),
(81, 37, 2, NULL, NULL),
(82, 38, 1, NULL, NULL),
(83, 38, 2, NULL, NULL),
(84, 38, 3, NULL, NULL),
(85, 38, 5, NULL, NULL),
(86, 39, 1, NULL, NULL),
(87, 39, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartment_sponsorship`
--

CREATE TABLE `apartment_sponsorship` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `sponsorship_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_sponsorship`
--

INSERT INTO `apartment_sponsorship` (`id`, `apartment_id`, `sponsorship_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(6, 38, 3, '2020-10-12 00:26:48', '2020-10-18 00:26:48', NULL, NULL),
(16, 32, 3, '2020-10-12 10:09:38', '2020-10-18 10:09:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `email`, `content`, `apartment_id`, `created_at`, `updated_at`) VALUES
(16, 'andrea@mail.it', 'Salve, vorrei avere alcune informazioni sull\'appartamento. Grazie.', 32, '2020-10-11 20:32:51', '2020-10-11 20:32:51'),
(17, 'andrea@mail.it', 'Mi può contattare la sera, grazie.', 32, '2020-10-11 20:37:57', '2020-10-11 20:37:57'),
(18, 'guest@mail.it', 'Salve, l\'appartamento è disponibile?', 32, '2020-10-12 07:20:08', '2020-10-12 07:20:08'),
(19, 'guest@mail.it', 'Salve, mi da un recapito telefonico?', 32, '2020-10-12 07:23:36', '2020-10-12 07:23:36'),
(20, 'guest@mail.it', 'Salve, mi servirebbe un recapito telefonico', 38, '2020-10-12 07:29:50', '2020-10-12 07:29:50'),
(21, 'guest@mail.it', 'Salve, bell\'appartamento', 37, '2020-10-12 07:34:09', '2020-10-12 07:34:09'),
(22, 'guest@mail.it', 'Salve, quale fiume è?', 36, '2020-10-12 07:36:36', '2020-10-12 07:36:36'),
(23, 'guest@mail.it', 'Salve, quanto è grande la terrazza?', 34, '2020-10-12 07:37:38', '2020-10-12 07:37:38'),
(25, 'guest@mail.it', 'Ciao', 33, '2020-10-12 11:11:00', '2020-10-12 11:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_23_081100_create_apartments_table', 1),
(5, '2020_09_23_082913_create_images_table', 1),
(6, '2020_09_23_083110_create_messages_table', 1),
(7, '2020_09_23_083429_create_views_table', 1),
(8, '2020_09_23_083710_create_sponsorships_table', 1),
(9, '2020_09_23_084122_create_services_table', 1),
(10, '2020_09_23_084318_create_apartment_service_table', 1),
(11, '2020_09_23_084803_create_apartment_sponsorship_table', 1),
(12, '2020_09_23_100116_update_apartments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'WiFi', '2020-09-23 12:06:40', '2020-09-23 12:06:40'),
(2, 'Parcheggio', '2020-09-23 12:06:40', '2020-09-23 12:06:40'),
(3, 'Piscina', '2020-09-23 12:06:40', '2020-09-23 12:06:40'),
(4, 'Portineria', '2020-09-23 12:06:40', '2020-09-23 12:06:40'),
(5, 'Sauna', '2020-09-23 12:06:40', '2020-09-23 12:06:40'),
(6, 'Vista mare', '2020-09-23 12:06:40', '2020-09-23 12:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `sponsorships`
--

CREATE TABLE `sponsorships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `price` decimal(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsorships`
--

INSERT INTO `sponsorships` (`id`, `name`, `duration`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Bronze', 24, '2.99', '2020-09-23 12:00:05', '2020-09-23 12:00:05'),
(2, 'Silver', 72, '5.99', '2020-09-23 12:00:05', '2020-09-23 12:00:05'),
(3, 'Gold', 144, '9.99', '2020-09-23 12:00:05', '2020-09-23 12:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `date_of_birth`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Corrado', 'Caruso', 'corra@mail.com', NULL, '$2y$10$/qZRmkJG/kgkHHWYuVr6GeHDEkMCmZDPfLt5F3VZ7NNgHEYi/4cOm', '1985-09-30', NULL, '2020-10-11 20:07:22', '2020-10-11 20:07:22'),
(8, 'Andrea', 'Caruso', 'andrea@mail.it', NULL, '$2y$10$/EDqQibieNNy2goNc4DkBO9DiecvupBSDTvfJm5aL4tsmuE3Py1G.', '1990-09-12', NULL, '2020-10-11 20:14:23', '2020-10-11 20:14:23'),
(9, 'Samuele', 'Guglielmi', 'samu@mail.it', NULL, '$2y$10$OknHUCdFFF5wTZNV.Dh17.clHMtG6WWcQt832UHlXI0MnXap5AohK', '1993-01-22', NULL, '2020-10-12 11:12:05', '2020-10-12 11:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartments_user_id_foreign` (`user_id`);

--
-- Indexes for table `apartment_service`
--
ALTER TABLE `apartment_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_service_apartment_id_foreign` (`apartment_id`),
  ADD KEY `apartment_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `apartment_sponsorship`
--
ALTER TABLE `apartment_sponsorship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_sponsorship_apartment_id_foreign` (`apartment_id`),
  ADD KEY `apartment_sponsorship_sponsorship_id_foreign` (`sponsorship_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsorships`
--
ALTER TABLE `sponsorships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_apartment_id_foreign` (`apartment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `apartment_service`
--
ALTER TABLE `apartment_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `apartment_sponsorship`
--
ALTER TABLE `apartment_sponsorship`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sponsorships`
--
ALTER TABLE `sponsorships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `apartment_service`
--
ALTER TABLE `apartment_service`
  ADD CONSTRAINT `apartment_service_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  ADD CONSTRAINT `apartment_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `apartment_sponsorship`
--
ALTER TABLE `apartment_sponsorship`
  ADD CONSTRAINT `apartment_sponsorship_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  ADD CONSTRAINT `apartment_sponsorship_sponsorship_id_foreign` FOREIGN KEY (`sponsorship_id`) REFERENCES `sponsorships` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`);

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
