-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 30 2023 г., 20:47
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blissdatabase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `№` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`№`, `name`, `message`) VALUES
(1, 'А. С. Пушкин. Евгений Онегин', '&lt;i&gt;И жить торопится, и чувствовать спешит.&lt;/i&gt;<br />\r\nКн. Вяземский.<br />\r\n<br />\r\nI<br />\r\n&laquo;Мой дядя самых честных правил,<br />\r\nКогда не в шутку занемог,<br />\r\nОн уважать себя заставил<br />\r\nИ лучше выдумать не мог.<br />\r\nЕго пример другим наука;<br />\r\nНо, боже мой, какая скука<br />\r\nС больным сидеть и день и ночь,<br />\r\nНе отходя ни шагу прочь!<br />\r\nКакое низкое коварство<br />\r\nПолуживого забавлять,<br />\r\nЕму подушки поправлять,<br />\r\nПечально подносить лекарство,<br />\r\nВздыхать и думать про себя:<br />\r\nКогда же черт возьмет тебя!&raquo;<br />\r\nII<br />\r\nТак думал молодой повеса,<br />\r\nЛетя в пыли на почтовых,<br />\r\nВсевышней волею Зевеса<br />\r\nНаследник всех своих родных.<br />\r\nДрузья Людмилы и Руслана!<br />\r\nС героем моего романа<br />\r\nБез предисловий, сей же час<br />\r\nПозвольте познакомить вас:<br />\r\nОнегин, добрый мой приятель,<br />\r\nРодился на брегах Невы,<br />\r\nГде, может быть, родились вы<br />\r\nИли блистали, мой читатель;<br />\r\nТам некогда гулял и я:<br />\r\nНо вреден север для меня 1.'),
(3, 'динозаврик!', '█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█<br />\r\n▌██████████████████████████████████████▐<br />\r\n▌██████████████████▀░░█░░▀█████████████▐<br />\r\n▌███████████████▀▀█░░░█░░░█████████████▐<br />\r\n▌███████████████░░██░░█░░░█▀███████████▐<br />\r\n▌████████████▀▀█▄░░█░░██░██░░██████████▐<br />\r\n▌████████████░░▀█▄░██░██░██░▄██████████▐<br />\r\n▌██████████▀▀█▄░▀█▄▀█░██░█░░█▀█████████▐<br />\r\n▌██████████▄▄░▀█▄███▀▀▀▀▀▀███▄▄████████▐<br />\r\n▌█████████░▀███▀▀░░░░░░░░░░░░░▀▀░░░▀███▐<br />\r\n▌█████████▄█▀░░░░░░░░░░░░░░░░░░░░░░▄▄▄█▐<br />\r\n▌███████▀▀▀░░░░░░░░░░░░░░░░░░░▄▄▄▄▄▄███▐<br />\r\n▌██▀▀▀░░░▄▄▄███░░░░░░░░░░░░░▄██████████▐<br />\r\n▌█▄▄▄██████████░░░▀▀██████░░░▀█████████▐<br />\r\n▌██████████████████████████████████████▐<br />\r\n█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█'),
(4, 'ещё улиточка!', '<br />\r\n┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼██┼┼┼██<br />\r\n┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼█┼┼┼┼█<br />\r\n┼┼┼┼┼┼┼┼┼┼█████┼┼┼┼▒▒▒▒<br />\r\n┼┼┼┼┼┼┼┼█████████┼▒▒◕▒◕▒<br />\r\n┼┼┼┼┼┼┼███████████▒▒▒▒▒▒<br />\r\n┼┼┼┼┼┼████▒▒▒▒█████▒▒░▒<br />\r\n┼┼┼┼┼████▒▒██▒▒█████▒▒<br />\r\n┼┼┼┼┼███▒██████▒████▒▒<br />\r\n┼┼┼┼┼██▒███▒▒███▒███▒▒<br />\r\n┼┼┼┼┼██▒██▒██▒██▒███▒▒<br />\r\n┼┼┼┼┼███▒███▒██▒███▒▒▒<br />\r\n┼┼┼┼┼┼███▒████▒███▒▒▒<br />\r\n┼┼┼▒▒▒▒███▒▒▒▒███▒▒▒<br />\r\n┼┼┼┼▒▒▒▒▒██████▒▒▒▒<br />\r\n┼┼┼┼┼┼▒▒▒▒▒▒▒▒▒▒▒▒<br />\r\n┼┼┼┼┼┼┼┼┼┼▒▒▒▒▒<br />\r\n'),
(5, 'морской конёк', '┼┼┼┼┼┼█┼┼┼┼█<br />\r\n┼┼┼┼┼┼██┼┼┼█<br />\r\n┼┼┼┼┼┼████████┼┼┼█<br />\r\n┼┼┼█┼┼██████████┼┼█<br />\r\n┼┼┼█████▒█████████<br />\r\n┼┼┼████▒▒█████████<br />\r\n┼┼┼███▒▒█▒████████<br />\r\n┼┼████▒▒███████████<br />\r\n┼████▒█▒▒▒██████████<br />\r\n█████▒▒████████░░████<br />\r\n┼┼█████████████░◕████<br />\r\n┼┼███████████████████<br />\r\n┼███▒█████████████████<br />\r\n███▒██▒▒███▒█████████████<br />\r\n┼┼███▒██████┼┼███████████<br />\r\n┼┼███████▒█┼┼┼┼┼┼┼┼┼┼┼███<br />\r\n┼██▒██▒▒███<br />\r\n█████▒█████<br />\r\n┼┼█▒█████▒██<br />\r\n┼┼██████▒████<br />\r\n┼┼████▒████▒██<br />\r\n┼███▒█████▒████<br />\r\n┼┼┼█████▒████▒██<br />\r\n┼┼┼┼██▒█████▒████<br />\r\n┼┼┼███████▒███████<br />\r\n┼┼┼┼┼███▒█████▒█▒██<br />\r\n┼┼┼┼┼┼┼████▒█▒██████<br />\r\n┼┼┼┼┼██▒█▒██▒███████<br />\r\n┼┼┼┼█▒▒█▒███████████<br />\r\n┼┼┼┼█▒▒▒███▒█▒███████<br />\r\n┼┼┼█▒▒█▒▒████████████<br />\r\n┼┼█▒▒▒▒█▒▒█▒█▒███████<br />\r\n┼┼█▒▒█▒▒█▒███████████<br />\r\n┼┼█▒▒▒█▒▒██▒█▒███████<br />\r\n┼┼█▒█▒▒█▒████████████<br />\r\n┼█▒▒▒█████▒█████████<br />\r\n┼█▒▒▒▒▒▒████▒███████<br />\r\n┼█▒▒█████▒███▒██████<br />\r\n┼█▒▒▒▒▒████▒██▒█▒██<br />\r\n┼┼█▒▒██▒███████▒██<br />\r\n┼┼┼██▒███▒██▒█▒██<br />\r\n┼┼█████▒██▒██▒███<br />\r\n┼┼▒█████▒██▒███<br />\r\n┼┼█▒█████▒████<br />\r\n┼████▒██▒███<br />\r\n┼┼┼████▒███<br />\r\n┼┼┼███████<br />\r\n┼┼██▒█████<br />\r\n┼██████▒█┼┼┼┼┼█████<br />\r\n┼┼┼██████┼┼┼┼████████<br />\r\n┼┼┼██████┼┼┼███┼┼┼┼███<br />\r\n┼┼██▒██▒█┼┼███┼┼┼┼┼┼███<br />\r\n┼████████┼┼██┼┼████┼┼██<br />\r\n┼┼┼┼█████┼┼██┼██████┼███<br />\r\n┼┼┼████▒█┼┼██┼██┼┼██┼┼██<br />\r\n┼┼███████┼┼███┼┼┼┼██┼┼██<br />\r\n┼┼┼┼█████┼┼┼███┼┼███┼┼██<br />\r\n┼┼┼┼███▒██┼┼┼██████┼┼█▒█<br />\r\n┼┼┼███████┼┼┼┼███┼┼┼┼███<br />\r\n┼┼┼┼┼███▒██┼┼┼┼┼┼┼┼┼█▒█<br />\r\n┼┼┼┼┼┼┼██████┼┼┼┼┼┼████<br />\r\n┼┼┼┼┼┼┼███▒████████▒██<br />\r\n┼┼┼┼┼┼█┼┼███▒██▒█▒███<br />\r\n┼┼┼┼┼┼┼┼┼┼┼┼████████'),
(6, 'очень большая картинка', '&lt;img src=&quot;https://images.hdqwalls.com/download/reindeer-digital-art-4k-lf-3840x2400.jpg&quot;&gt;'),
(7, 'олень!', '════█══██════════════════██ <br />\r\n═══███═██══██════════════██══██═══██ <br />\r\n══███████████════════════███═███████ <br />\r\n██═███═██═██══██══════════████═█████ <br />\r\n██═█═███═██══███═════██════█═███══██ <br />\r\n═███═══█══██████═════███═══█═███══██ <br />\r\n═══████████═█═██═════███═███══█══██ <br />\r\n════██════████████████═████████████ <br />\r\n═════██═════════════█████══███ <br />\r\n══════█████════════════════███ <br />\r\n════════███═════██════█═█████ <br />\r\n═════════█═════█o═█═══████ <br />\r\n════════█═════════════██ <br />\r\n══════█████══════════███ <br />\r\n══════█████═══════███═██ <br />\r\n══════███═════██████══██<br />\r\n═══════█████████═══════███═████████████ <br />\r\n═════════██═██═══════════████════════█████ <br />\r\n════════════██═══════════════════════════██ <br />\r\n════════════█═════════════════════════════██<br />\r\n═══════════██════════════════██════════════█<br />\r\n═══════════████═══════════════██═══════════█<br />\r\n═══════════████════════════════██═════════██<br />\r\n════════════███════════════════██═════════██<br />\r\n════════════██═█═══════════════██═════════██<br />\r\n═════════════███═══════════════██═════════██<br />\r\n══════════════███══════════════█══════════██<br />\r\n══════════════████═════════════█═════════███<br />\r\n══════════════██═████══█══════██═════════██ <br />\r\n══════════════██═══██═██═█════██═████════██ <br />\r\n═══════════════██════██████══██══██═██════█ <br />\r\n═══════════════██═══██══███══██══██═██═══██ <br />\r\n════════════════██══██═══██══██══██═██═══█ <br />\r\n════════════════██═══██══█════██═██═██══██ <br />\r\n════════════════██═══██══██═══██═██══█══██ <br />\r\n════════════════██══██═══██══██═██═══█══██ <br />\r\n═════════════════█══██════██═████═══██═██ <br />\r\n═════════════════█══█═════██═█═█════██═██ <br />\r\n════════════════██══█═════██═█═██══██══██ <br />\r\n════════════════██══█═════██═█═█═══█═══██ <br />\r\n════════════════██══█═════█══███══██═══██ <br />\r\n════════════════█═══██═══██═══█═══██████ <br />\r\n═══════════════██═══██═══█════██══█████ <br />\r\n══════════════██═══██════██═══█════██ <br />\r\n═════════════████══█════███████ <br />\r\n═════════════███████═════██████'),
(40, 'осьминожка', '░░░░░░▄████████▄▄░░░░░░░░░░░░░░░░░░░░░<br />\r\n░░░░▄█████████████░░░░░░░░░░░░░░░░░░░░<br />\r\n░░░░███████████████░░░░░░▄█████▄░░░░░░<br />\r\n░░░░████████████████░░░▄██▀▀▀████▄░░░░<br />\r\n░░░░████████████████▄▄░▀██░░░░████░░░░<br />\r\n░░░░▀█████████▀████░▀█▄░░▀░░░░████░░░░<br />\r\n░░░░░▀████████░░███▄▄█▀░░░░░░░████░░░░<br />\r\n░░░░░░░░▀▀████████████▄░░░░░▄████░░░░░<br />\r\n░░░░░░░▄▄▄██████████████████████░░░░░░<br />\r\n░░░▄▄█████████████████▀████▀▀▀░░████▄░<br />\r\n░░█████▀▀▀▀▀▀▀████████▄░░░░░░░░░░░▀██▄<br />\r\n░████▀░░░░░░▄████▀▀▀████▄▄░░░░░░░░▄███<br />\r\n████░░░░░░░████▀░░░░▀██████▄▄▄▄▄▄████▀<br />\r\n███▄░░░░░░░████░░░░░░░░▀▀██████████▀░░<br />\r\n▀███▄░░█▄░░███▄░░░░▀███░░░░▀▀▀▀▀▀░░░░░<br />\r\n░▀███████░░████░░░░░░███░░░░░░░░░░░░░░<br />\r\n░░░░▀▀▀▀░░░░█████▄▄▄▄███░░░░░░░░░░░░░░<br />\r\n░░░░░░░░░░░░░▀████████▀░░░░░░░░░░░░░░░'),
(41, 'котёночек', '░░░░░░░░░░░░░░░░░░░░░░░░▄▄█▀▀█▄░░░░░░░░░<br />\r\n░░░░░░░░░░░░░░░░░░░░░░▄█▀░▄▄▄░▀█░░░░░░░░<br />\r\n░░▄██▄▄▄▄░░░░░░░░░░▄▄█▀░▄█▀░██░█▄░░░░░░░<br />\r\n░██████████▄▄▄▄▄▄▀▀▀▀░░░█▄▄░░█░░█░░░░░░░<br />\r\n░██░░░░▀██████░░░░░░░░░░░░▀▀▀░░▄█░░░░░░░<br />\r\n░▀█▄░░░░██████▄░░░░░░░░░░░░░░░░▀█░░░░░░░<br />\r\n░░██▄░░▄███████░░░░░░░░░░░░░░░░░▀█░░░░░░<br />\r\n░░▀███████████▀░░░░░░░░░░░░░░░░░░▀█░░░░░<br />\r\n░░░███████████░░░░░░░░░░░░░░░░░░░░█░░░░░<br />\r\n░░░░█████████░░░░░░░░░░░░░▄▀▀▀░░░░█░░░░░<br />\r\n░░▄█████████░░░░░░░░░░░░░░░░░░▄▄░░█░░░░░<br />\r\n░▄▀░░░░░▀██░░░█▀▀░░░░▄▄▄▄░░░░░▄░░░█░░░░░<br />\r\n▄░░░░░░░░░▀█░░░░░░░░░███░░░░░░░▄▄▄█░░░░░<br />\r\n█░░░░░░▄░▀▄░█░▀░░░░░░░░█▄░▄█░░░░░██▄░░░░<br />\r\n█░░█░▀░░░░░░█░▀▀░░░█▄▄▄▀▀▀░░░░░▄█░░░█▄░░<br />\r\n░░░░▀▄▄░░░▄█▀░░▀░░░░░░░░░░░░░▄██░░░▄██▄░<br />\r\n░░░░░░░▀▀▀▀▀█▄▄░░░░░░░░░▄▄▄████░░░░████▄<br />\r\n░░░░░░░░░░░░░▀█████████▀▀░░░░░▀█░░░▀████<br />\r\n░░░░░░░░░░░░░░░░▀▀▀▀██░░░░░░░░░░█░░░░▀██'),
(42, 'пушин :3', '───────────────────────────────────────<br />\r\n───▐▀▄───────▄▀▌───▄▄▄▄▄▄▄─────────────<br />\r\n───▌▒▒▀▄▄▄▄▄▀▒▒▐▄▀▀▒██▒██▒▀▀▄──────────<br />\r\n──▐▒▒▒▒▀▒▀▒▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄────────<br />\r\n──▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▒▒▒▒▒▒▒▒▒▒▒▒▀▄──────<br />\r\n▀█▒▒▒█▌▒▒█▒▒▐█▒▒▒▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌─────<br />\r\n▀▌▒▒▒▒▒▒▀▒▀▒▒▒▒▒▒▀▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐───▄▄<br />\r\n▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌▄█▒█<br />\r\n▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▒█▀─<br />\r\n▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▀───<br />\r\n▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌────<br />\r\n─▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐─────<br />\r\n─▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌─────<br />\r\n──▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐──────<br />\r\n──▐▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▌──────<br />\r\n────▀▄▄▀▀▀▀▀▄▄▀▀▀▀▀▀▀▄▄▀▀▀▀▀▄▄▀────────');

-- --------------------------------------------------------

--
-- Структура таблицы `users_achievments`
--

CREATE TABLE `users_achievments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_tester` tinyint(1) DEFAULT NULL,
  `html_l1` tinyint(1) DEFAULT NULL,
  `html_l2` tinyint(1) DEFAULT NULL,
  `html_l3` tinyint(1) DEFAULT NULL,
  `html_l4` tinyint(1) DEFAULT NULL,
  `html_l5` tinyint(1) DEFAULT NULL,
  `php_l1` tinyint(1) DEFAULT NULL,
  `php_l2` tinyint(1) DEFAULT NULL,
  `php_l3` tinyint(1) DEFAULT NULL,
  `php_l4` tinyint(1) DEFAULT NULL,
  `php_l5` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_achievments`
--

INSERT INTO `users_achievments` (`id`, `user_id`, `is_admin`, `is_tester`, `html_l1`, `html_l2`, `html_l3`, `html_l4`, `html_l5`, `php_l1`, `php_l2`, `php_l3`, `php_l4`, `php_l5`) VALUES
(1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 0, NULL, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 6, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 10, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 14, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 24, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_list`
--

CREATE TABLE `users_list` (
  `ID` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mail` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_logged_in` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_path` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_list`
--

INSERT INTO `users_list` (`ID`, `username`, `password`, `mail`, `registration_date`, `last_logged_in`, `token`, `avatar_path`, `is_admin`) VALUES
(1, 'admin', '$2y$10$qDavJ19egHipsNmOZ5LJYOlNlqdoe81M0XW5DxZVDN9tNsDBMmqOu', 'admin@istra.tor', '2020-10-24 17:26:26', '2022-10-09 16:45:26', NULL, '../users/1/ava.jpg', 1),
(2, 'т0рТиК', '$2y$10$w0W.c0NhjOupLHkpL4m3X.UflIDtAnvGKqCNPqRS9pXBkVBAs0DlO', 'tortiki@moya.lubov', '2020-10-24 23:43:41', '2022-10-09 16:47:32', NULL, '../users/2/ava.png', 0),
(3, '_w0w_', '$2y$10$Hgw1j69QfyvjLrMzIUjjq.91mjNLZ9bA8gcbBLrs8jEGR9ST1gHUO', 'much@mail.wow', '2020-10-25 19:14:37', '2021-06-22 22:33:37', NULL, '../users/3/ava.png', 1),
(5, 'gnida228', '$2y$10$wBCwYA8rhOGxvlAvUVs4A.kWzsBhZVTE6Y1j7KPJOWsMPEF.3FZzW', 'ny3uko@inbox.ru', '2020-10-26 16:19:57', '2020-10-27 22:14:28', NULL, '../users/5/ava.jpg', 0),
(6, 'omelette', '$2y$10$dQDCQ8W2JTH4/IbMtWiggOmeo8etLwawY566ZLpVmalQGKfh8rnoK', 'little@omelet.te', '2020-10-27 16:46:51', '2021-06-13 03:45:32', NULL, '../users/6/ava.jpg', 0),
(9, 'PolikarpovaDS', '$2y$10$gJvez72/584yFckrVWuRC.wNxdlzfx9mk134Lr/o6ZAVCe3qp4SCW', 'polikarpovads@mdtk21.ru', '2020-10-29 14:55:07', '2020-10-29 14:57:06', NULL, '../users/9/ava.png', 0),
(10, 'таджик', '$2y$10$3piemY3B07tdEtKO3EPHj.iJzW7rC2uXLqnG7s36nhEP6.gi.srfi', 'tajiki@mail.ru', '2020-10-30 16:13:25', '2020-10-30 16:13:51', NULL, '../users/10/ava.png', 0),
(12, 'guchigachigichi', '$2y$10$q1BACZx5voJW9xd0vHYFOeeYazI/zVW2.mb1Lt59WnKIT0jHVJOyq', 'ppppppp733@gmail.com', '2020-11-01 23:58:24', '2020-11-02 00:22:48', NULL, '../users/12/ava.png', 0),
(14, 'увуово', '$2y$10$IT4ent6BGV3zuiYyUGMXz.ktlwWtO76qQoFBAgV6hWzUdwIkVWF3K', 'dazzlyray@gmail.com', '2020-11-06 14:48:05', '2021-06-12 14:47:15', NULL, '../users/14/ava.jpg', 1),
(20, 'seishun', '$2y$10$/pYP2e/LWA0UAGUqXOe/RuIvSk.QcEC271i/PzTB/ywSjWkj/dQTe', 'yandereev1205@gmail.ru', '2021-03-01 16:53:02', '2021-03-01 16:53:23', NULL, '../users/20/ava.png', 1),
(21, 'Екатерина', '$2y$10$vNuimGO/jw1veP0.P1bB.O3Rdi2xs7W29UxPgtLufz/Jjg.Yowira', 'fedorovaea@mdtk21.ru', '2021-03-01 16:59:02', '2021-03-01 16:59:48', NULL, NULL, 1),
(24, 'example', '$2y$10$TDGg5YdZAP5KZfcIpuassuYGOcBRvhxz/lEcGJFK4Rl7NyHwbR2dm', 'example@mail.ru', '2021-06-13 04:04:25', '2021-06-14 06:46:07', NULL, NULL, 0);

--
-- Триггеры `users_list`
--
DELIMITER $$
CREATE TRIGGER `Add_users_in_ach_table` AFTER INSERT ON `users_list` FOR EACH ROW INSERT INTO users_achievments(user_id) VALUE (NEW.id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Is_admin_update` AFTER UPDATE ON `users_list` FOR EACH ROW UPDATE users_achievments SET is_admin=NEW.is_admin WHERE users_achievments.user_id=NEW.id
$$
DELIMITER ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`№`);

--
-- Индексы таблицы `users_achievments`
--
ALTER TABLE `users_achievments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_list_foreign` (`user_id`) USING BTREE;

--
-- Индексы таблицы `users_list`
--
ALTER TABLE `users_list`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `№` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `users_achievments`
--
ALTER TABLE `users_achievments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users_list`
--
ALTER TABLE `users_list`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users_achievments`
--
ALTER TABLE `users_achievments`
  ADD CONSTRAINT `users_list_foreign` FOREIGN KEY (`user_id`) REFERENCES `users_list` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
