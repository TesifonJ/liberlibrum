-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 19-11-2023 a las 14:14:48
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `liberlibrum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `available` bigint DEFAULT '0',
  `owner_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `category`, `available`, `owner_id`) VALUES
(1, 'El Principito', 'J.R.R. Tolkien', 'Histórica', 1, 1),
(2, 'Orgullo y prejuicio', 'Miguel de Cervantes', 'Fantasía', 0, 1),
(3, 'Orgullo y prejuicio', 'Gabriel García Márquez', 'Fantasía', 0, 1),
(4, 'Orgullo y prejuicio', 'Antoine de Saint-Exupéry', 'Infantil', 0, 2),
(5, 'Cien años de soledad', 'Miguel de Cervantes', 'Juvenil', 1, 1),
(6, 'Cien años de soledad', 'J.R.R. Tolkien', 'Novela', 1, 2),
(7, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Histórica', 0, 2),
(8, 'El Señor de los Anillos', 'Jane Austen', 'Juvenil', 1, 2),
(9, 'Cien años de soledad', 'Jane Austen', 'Poesía', 0, 1),
(10, 'El Quijote', 'Miguel de Cervantes', 'Novela', 1, 1),
(11, 'Orgullo y prejuicio', 'Gabriel García Márquez', 'Romántica', 0, 94),
(12, 'Cien años de soledad', 'Miguel de Cervantes', 'Infantil', 0, 59),
(13, 'Cien años de soledad', 'Gabriel García Márquez', 'Poesía', 1, 58),
(14, 'El Quijote', 'Miguel de Cervantes', 'Romántica', 1, 27),
(15, 'El Hobbit', 'Jane Austen', 'Juvenil', 0, 76),
(16, 'El Hobbit', 'J.R.R. Tolkien', 'Ciencia Ficción', 1, 17),
(17, 'El Principito', 'Miguel de Cervantes', 'Poesía', 0, 88),
(18, 'Orgullo y prejuicio', 'Gabriel García Márquez', 'Infantil', 0, 104),
(19, 'El Quijote', 'Antoine de Saint-Exupéry', 'Poesía', 0, 58),
(20, 'El Señor de los Anillos', 'Miguel de Cervantes', 'Infantil', 1, 100),
(21, 'El Hobbit', 'Gabriel García Márquez', 'Terror', 0, 62),
(22, 'El Quijote', 'J.R.R. Tolkien', 'Romántica', 0, 74),
(23, 'El Hobbit', 'J.R.R. Tolkien', 'Infantil', 0, 34),
(24, 'El Señor de los Anillos', 'Gabriel García Márquez', 'Infantil', 1, 106),
(25, 'Orgullo y prejuicio', 'Antoine de Saint-Exupéry', 'Ciencia Ficción', 1, 65),
(26, 'Orgullo y prejuicio', 'Miguel de Cervantes', 'Poesía', 0, 84),
(27, 'El Principito', 'Miguel de Cervantes', 'Poesía', 0, 72),
(28, 'Orgullo y prejuicio', 'J.R.R. Tolkien', 'Infantil', 1, 30),
(29, 'El Principito', 'Jane Austen', 'Poesía', 0, 94),
(30, 'Cien años de soledad', 'Jane Austen', 'Poesía', 1, 10),
(31, 'El Principito', 'Antoine de Saint-Exupéry', 'Romántica', 1, 75),
(32, 'Cien años de soledad', 'J.R.R. Tolkien', 'Novela', 0, 105),
(33, 'Cien años de soledad', 'J.R.R. Tolkien', 'Ciencia Ficción', 1, 102),
(34, 'El Hobbit', 'Jane Austen', 'Ciencia Ficción', 0, 102),
(35, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Novela', 1, 19),
(36, 'Cien años de soledad', 'Gabriel García Márquez', 'Juvenil', 1, 100),
(37, 'El Quijote', 'Miguel de Cervantes', 'Infantil', 1, 9),
(38, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Infantil', 0, 85),
(39, 'Cien años de soledad', 'Antoine de Saint-Exupéry', 'Poesía', 0, 44),
(40, 'El Quijote', 'Antoine de Saint-Exupéry', 'Juvenil', 0, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loans`
--

CREATE TABLE `loans` (
  `id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `creation_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `user_id`, `creation_date`, `due_date`, `return_date`) VALUES
(1, 1, 1, '2004-12-05', '2021-02-10', NULL),
(2, 3, 2, '2004-11-22', '2000-07-17', NULL),
(3, 6, 1, '2013-04-04', '2011-09-27', NULL),
(4, 5, 1, '2000-12-26', '2009-02-14', NULL),
(5, 8, 2, '2007-08-04', '2001-08-26', NULL),
(6, 1, 2, '2000-06-30', '2011-11-25', NULL),
(7, 6, 2, '2010-03-14', '2006-07-16', NULL),
(8, 8, 1, '2008-04-13', '2009-12-02', NULL),
(9, 6, 2, '2011-03-04', '2013-12-27', NULL),
(10, 5, 2, '2000-05-13', '2009-08-20', NULL),
(11, 27, 33, '2020-08-24', '2012-07-18', NULL),
(12, 27, 94, '2001-02-11', '2007-08-30', NULL),
(13, 18, 42, '2020-08-26', '2016-02-17', NULL),
(14, 21, 46, '2022-02-11', '2003-01-10', NULL),
(15, 19, 7, '2008-10-11', '2015-10-22', NULL),
(16, 17, 5, '2007-06-14', '2007-06-27', NULL),
(17, 27, 42, '2019-11-19', '2006-06-26', NULL),
(18, 6, 56, '2015-01-28', '2004-01-18', NULL),
(19, 5, 79, '2016-01-22', '2001-07-11', NULL),
(20, 5, 111, '2007-08-12', '2012-05-11', NULL),
(21, 7, 50, '2009-02-19', '2009-11-09', NULL),
(22, 30, 44, '2012-02-09', '2011-07-22', NULL),
(23, 28, 73, '2008-05-24', '2018-06-30', NULL),
(24, 13, 88, '2005-03-13', '2020-04-03', NULL),
(25, 12, 14, '2009-03-15', '2020-07-31', NULL),
(26, 17, 21, '2022-04-16', '2006-02-24', NULL),
(27, 4, 30, '2016-11-07', '2011-10-21', NULL),
(28, 1, 1, '2012-07-01', '2010-11-09', NULL),
(29, 2, 30, '2022-04-09', '2007-10-20', NULL),
(30, 21, 48, '2002-07-18', '2002-04-14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf16_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf16_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES
(1, 'Winston', 'Scott', 'winscott@continental.com', 'winscott', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 0),
(2, 'John', 'Wick', 'babayaga@continental.com', 'babayaga', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(3, 'José Antonio', 'Navarro', 'JosNav0@ausiasmarch.net', 'Josav0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(4, 'Jaime', 'López', 'JaiLóp1@ausiasmarch.net', 'Jaiop1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(5, 'Nieves', 'Ferrer', 'NieFer2@ausiasmarch.net', 'Nieer2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(6, 'Sergio', 'Alcañiz', 'SerAlc3@ausiasmarch.net', 'Serlc3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(7, 'Elena', 'Quilez', 'EleQui4@ausiasmarch.net', 'Eleui4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(8, 'Laura', 'Alcañiz', 'LauAlc5@ausiasmarch.net', 'Laulc5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(9, 'Alan', 'Marín', 'AlaMar6@ausiasmarch.net', 'Alaar6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(10, 'Pablo', 'Velarte', 'PabVel7@ausiasmarch.net', 'Pabel7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(11, 'Mónica', 'Briones', 'MónBri8@ausiasmarch.net', 'Monri8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(12, 'Eva', 'Rozalén', 'EvaRoz9@ausiasmarch.net', 'Evaoz9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(13, 'Mónica', 'Rozalén', 'MónRoz0@ausiasmarch.net', 'Monoz0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(14, 'Rafael', 'Navarro', 'RafNav1@ausiasmarch.net', 'Rafav1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(15, 'Jaime', 'Latorre', 'JaiLat2@ausiasmarch.net', 'Jaiat2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(16, 'Elena', 'Maldonado', 'EleMal3@ausiasmarch.net', 'Eleal3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(17, 'Lucas', 'Romero', 'LucRom4@ausiasmarch.net', 'Lucom4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(18, 'Elena', 'Lara', 'EleLar5@ausiasmarch.net', 'Elear5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(19, 'Raquel', 'Alcañiz', 'RaqAlc6@ausiasmarch.net', 'Raqlc6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(20, 'Mónica', 'Lara', 'MónLar7@ausiasmarch.net', 'Monar7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(21, 'Eloy', 'Aparici', 'EloApa8@ausiasmarch.net', 'Elopa8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(22, 'Jesús', 'Ayala', 'JesAya9@ausiasmarch.net', 'Jesya9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(23, 'Paula', 'Latorre', 'PauLat10@ausiasmarch.net', 'Pauat10', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(24, 'Fernando', 'McLure', 'FerMcL11@ausiasmarch.net', 'FercL11', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(25, 'Laura', 'Rozalén', 'LauRoz12@ausiasmarch.net', 'Lauoz12', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(26, 'José Antonio', 'López', 'JosLóp13@ausiasmarch.net', 'Josop13', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(27, 'Elena', 'Serrano', 'EleSer14@ausiasmarch.net', 'Eleer14', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(28, 'Jesús', 'Alarcón', 'JesAla15@ausiasmarch.net', 'Jesla15', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(29, 'Elena', 'McLure', 'EleMcL16@ausiasmarch.net', 'ElecL16', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(30, 'Pablo', 'Briones', 'PabBri17@ausiasmarch.net', 'Pabri17', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(31, 'Eva', 'Ortega', 'EvaOrt18@ausiasmarch.net', 'Evart18', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(32, 'Mónica', 'Alarcón', 'MónAla19@ausiasmarch.net', 'Monla19', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(33, 'Sergio', 'González', 'SerGon20@ausiasmarch.net', 'Seron20', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(34, 'Paula', 'Aznar', 'PauAzn21@ausiasmarch.net', 'Pauzn21', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(35, 'Rafael', 'Latorre', 'RafLat22@ausiasmarch.net', 'Rafat22', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(36, 'Fernando', 'Aznar', 'FerAzn23@ausiasmarch.net', 'Ferzn23', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(37, 'Mónica', 'Rozalén', 'MónRoz24@ausiasmarch.net', 'Monoz24', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(38, 'Jesús', 'McLure', 'JesMcL25@ausiasmarch.net', 'JescL25', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(39, 'Fernando', 'Cano', 'FerCan26@ausiasmarch.net', 'Feran26', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(40, 'Elena', 'Suárez', 'EleSuá27@ausiasmarch.net', 'Eleua27', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(41, 'Alan', 'Gómez', 'AlaGóm28@ausiasmarch.net', 'Alaom28', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(42, 'Alan', 'Esteve', 'AlaEst29@ausiasmarch.net', 'Alast29', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(43, 'Raquel', 'Velarte', 'RaqVel30@ausiasmarch.net', 'Raqel30', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(44, 'Fernando', 'Maldonado', 'FerMal31@ausiasmarch.net', 'Feral31', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(45, 'Sergio', 'Gómez', 'SerGóm32@ausiasmarch.net', 'Serom32', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(46, 'Pablo', 'Alcañiz', 'PabAlc33@ausiasmarch.net', 'Pablc33', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(47, 'Alan', 'Alcañiz', 'AlaAlc34@ausiasmarch.net', 'Alalc34', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(48, 'Eva', 'Suárez', 'EvaSuá35@ausiasmarch.net', 'Evaua35', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(49, 'Mónica', 'Farell', 'MónFar36@ausiasmarch.net', 'Monar36', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(50, 'Jesús', 'Suárez', 'JesSuá37@ausiasmarch.net', 'Jesua37', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(51, 'Jaime', 'Rozalén', 'JaiRoz38@ausiasmarch.net', 'Jaioz38', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(52, 'Laura', 'Ayala', 'LauAya39@ausiasmarch.net', 'Lauya39', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(53, 'Nieves', 'Velarte', 'NieVel40@ausiasmarch.net', 'Nieel40', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(54, 'Laura', 'Puig', 'LauPui41@ausiasmarch.net', 'Lauui41', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(55, 'Paula', 'Ferrer', 'PauFer42@ausiasmarch.net', 'Pauer42', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(56, 'Pablo', 'Cano', 'PabCan43@ausiasmarch.net', 'Paban43', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(57, 'Fernando', 'Gómez', 'FerGóm44@ausiasmarch.net', 'Ferom44', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(58, 'Mónica', 'McLure', 'MónMcL45@ausiasmarch.net', 'MoncL45', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(59, 'Jesús', 'Esteve', 'JesEst46@ausiasmarch.net', 'Jesst46', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(60, 'Rafael', 'Rozalén', 'RafRoz47@ausiasmarch.net', 'Rafoz47', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(61, 'Raquel', 'Marín', 'RaqMar48@ausiasmarch.net', 'Raqar48', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(62, 'Fernando', 'Ayala', 'FerAya49@ausiasmarch.net', 'Ferya49', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(63, 'Paula', 'Esteve', 'PauEst50@ausiasmarch.net', 'Paust50', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(64, 'Pablo', 'Rozalén', 'PabRoz51@ausiasmarch.net', 'Paboz51', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(65, 'Pablo', 'García', 'PabGar52@ausiasmarch.net', 'Pabar52', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(66, 'Mónica', 'González', 'MónGon53@ausiasmarch.net', 'Monon53', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(67, 'Laura', 'Alcañiz', 'LauAlc54@ausiasmarch.net', 'Laulc54', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(68, 'Jaime', 'Muñoz', 'JaiMuñ55@ausiasmarch.net', 'Jaiun55', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(69, 'Rafael', 'Lara', 'RafLar56@ausiasmarch.net', 'Rafar56', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(70, 'Raquel', 'Roselló', 'RaqRos57@ausiasmarch.net', 'Raqos57', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(71, 'Eva', 'Navas', 'EvaNav58@ausiasmarch.net', 'Evaav58', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(72, 'Fernando', 'Molero', 'FerMol59@ausiasmarch.net', 'Ferol59', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(73, 'Eva', 'Díaz', 'EvaDía60@ausiasmarch.net', 'Evaia60', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(74, 'José Antonio', 'Navarro', 'JosNav61@ausiasmarch.net', 'Josav61', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(75, 'José Antonio', 'Maldonado', 'JosMal62@ausiasmarch.net', 'Josal62', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(76, 'Raquel', 'Aznar', 'RaqAzn63@ausiasmarch.net', 'Raqzn63', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(77, 'Paula', 'Navarro', 'PauNav64@ausiasmarch.net', 'Pauav64', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(78, 'Laura', 'Navarro', 'LauNav65@ausiasmarch.net', 'Lauav65', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(79, 'José Antonio', 'Marín', 'JosMar66@ausiasmarch.net', 'Josar66', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(80, 'Eloy', 'Díaz', 'EloDía67@ausiasmarch.net', 'Eloia67', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(81, 'Mónica', 'Serrano', 'MónSer68@ausiasmarch.net', 'Moner68', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(82, 'Pablo', 'Briones', 'PabBri69@ausiasmarch.net', 'Pabri69', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(83, 'Jesús', 'Farell', 'JesFar70@ausiasmarch.net', 'Jesar70', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(84, 'Raquel', 'Alarcón', 'RaqAla71@ausiasmarch.net', 'Raqla71', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(85, 'Lucas', 'Puig', 'LucPui72@ausiasmarch.net', 'Lucui72', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(86, 'Paula', 'Navarro', 'PauNav73@ausiasmarch.net', 'Pauav73', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(87, 'Eloy', 'Marín', 'EloMar74@ausiasmarch.net', 'Eloar74', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(88, 'Raquel', 'Latorre', 'RaqLat75@ausiasmarch.net', 'Raqat75', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(89, 'Pablo', 'Rozalén', 'PabRoz76@ausiasmarch.net', 'Paboz76', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(90, 'Fernando', 'Lara', 'FerLar77@ausiasmarch.net', 'Ferar77', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(91, 'Rafael', 'Rozalén', 'RafRoz78@ausiasmarch.net', 'Rafoz78', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(92, 'José Antonio', 'Aparici', 'JosApa79@ausiasmarch.net', 'Jospa79', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(93, 'Nieves', 'Lara', 'NieLar80@ausiasmarch.net', 'Niear80', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(94, 'Mónica', 'Latorre', 'MónLat81@ausiasmarch.net', 'Monat81', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(95, 'Pablo', 'Puig', 'PabPui82@ausiasmarch.net', 'Pabui82', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(96, 'Sergio', 'Ayala', 'SerAya83@ausiasmarch.net', 'Serya83', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(97, 'Rafael', 'Aguilar', 'RafAgu84@ausiasmarch.net', 'Rafgu84', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(98, 'Jaime', 'Navas', 'JaiNav85@ausiasmarch.net', 'Jaiav85', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(99, 'Nieves', 'Navarro', 'NieNav86@ausiasmarch.net', 'Nieav86', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(100, 'José Antonio', 'Rozalén', 'JosRoz87@ausiasmarch.net', 'Josoz87', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(101, 'Mónica', 'Gómez', 'MónGóm88@ausiasmarch.net', 'Monom88', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(102, 'Lucas', 'Alcañiz', 'LucAlc89@ausiasmarch.net', 'Luclc89', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(103, 'Elena', 'Cano', 'EleCan90@ausiasmarch.net', 'Elean90', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(104, 'Fernando', 'Serrano', 'FerSer91@ausiasmarch.net', 'Ferer91', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(105, 'Alan', 'Navas', 'AlaNav92@ausiasmarch.net', 'Alaav92', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(106, 'Raquel', 'Alcañiz', 'RaqAlc93@ausiasmarch.net', 'Raqlc93', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(107, 'Eloy', 'Marín', 'EloMar94@ausiasmarch.net', 'Eloar94', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(108, 'Raquel', 'Esteve', 'RaqEst95@ausiasmarch.net', 'Raqst95', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(109, 'Nieves', 'Quilez', 'NieQui96@ausiasmarch.net', 'Nieui96', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(110, 'Jaime', 'Quilez', 'JaiQui97@ausiasmarch.net', 'Jaiui97', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(111, 'Alan', 'Navas', 'AlaNav98@ausiasmarch.net', 'Alaav98', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(112, 'Rafael', 'Aguilar', 'RafAgu99@ausiasmarch.net', 'Rafgu99', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loan_book` (`book_id`),
  ADD KEY `fk_loan_user` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
