-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Sie 2017, 11:18
-- Wersja serwera: 5.7.14
-- Wersja PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tasksheduler`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `mid`, `created_at`, `updated_at`) VALUES
(175, 'SDR (MFW)', 'XDR', '5.1165', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(174, 'yuan renminbi (Chiny)', 'CNY', '0.5453', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(173, 'won południowokoreański', 'KRW', '0.003221', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(172, 'rupia indyjska', 'INR', '0.056713', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(171, 'rupia indonezyjska', 'IDR', '0.0002722', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(170, 'rubel rosyjski', 'RUB', '0.0614', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(169, 'ringgit (Malezja)', 'MYR', '0.8485', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(168, 'real (Brazylia)', 'BRL', '1.1567', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(167, 'rand (Republika Południowej Afryki)', 'ZAR', '0.2747', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(166, 'peso meksykańskie', 'MXN', '0.2053', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(165, 'peso filipińskie', 'PHP', '0.0712', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(164, 'peso chilijskie', 'CLP', '0.005672', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(163, 'nowy izraelski szekel', 'ILS', '1.0067', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(162, 'lira turecka', 'TRY', '1.0427', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(161, 'lew (Bułgaria)', 'BGN', '2.1897', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(160, 'lej rumuński', 'RON', '0.9337', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(159, 'kuna (Chorwacja)', 'HRK', '0.5777', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(158, 'korona szwedzka', 'SEK', '0.45', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(157, 'korona norweska', 'NOK', '0.4622', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(156, 'korona islandzka', 'ISK', '0.033829', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(155, 'korona duńska', 'DKK', '0.5759', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(154, 'korona czeska', 'CZK', '0.1641', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(153, 'jen (Japonia)', 'JPY', '0.033221', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(152, 'hrywna (Ukraina)', 'UAH', '0.1422', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(151, 'funt szterling', 'GBP', '4.6551', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(150, 'frank szwajcarski', 'CHF', '3.7639', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(149, 'forint (Węgry)', 'HUF', '0.014142', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(148, 'euro', 'EUR', '4.2827', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(147, 'dolar singapurski', 'SGD', '2.6676', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(146, 'dolar nowozelandzki', 'NZD', '2.6179', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(145, 'dolar kanadyjski', 'CAD', '2.8965', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(141, 'bat (Tajlandia)', 'THB', '0.1089', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(142, 'dolar amerykański', 'USD', '3.6329', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(143, 'dolar australijski', 'AUD', '2.8663', '2017-08-24 07:07:09', '2017-08-24 11:18:23'),
(144, 'dolar Hongkongu', 'HKD', '0.4643', '2017-08-24 07:07:09', '2017-08-24 11:18:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_08_23_113520_create_currency_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jan', 'jandz1988@gmail.com', '$2a$06$AQJ1nE48YsSKuMFNm50CL.E8lgdW/9CfoOX0Wb1aK6fa1gFSRtCU.', '6OQatJM3EqgAJcgaaaJLznIpYfbs3Itmsz8tbGKYsn4NLXTbZCur7YoRuskT', NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
