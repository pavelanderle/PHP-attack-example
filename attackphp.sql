-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vytvořeno: Pon 28. zář 2020, 20:44
-- Verze serveru: 5.7.11
-- Verze PHP: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `attackphp`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `email_adress`
--

CREATE TABLE `email_adress` (
  `id` int(11) NOT NULL,
  `email` varchar(150) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `email_adress`
--

INSERT INTO `email_adress` (`id`, `email`) VALUES
(1, 'anderle@spseplzen.cz'),
(2, 'novak@spseplzen.cz'),
(4, 'novy@spseplzen.cz'),
(5, 'novy@spseplzen.cz'),
(6, 'novy2@spseplzen.cz');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(150) COLLATE utf8_czech_ci NOT NULL,
  `passwd` varchar(150) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `user`, `passwd`) VALUES
(1, 'novy', '1234'),
(2, 'novak', '4567');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `email_adress`
--
ALTER TABLE `email_adress`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `email_adress`
--
ALTER TABLE `email_adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
