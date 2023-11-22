-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 22-11-2023 a las 21:38:12
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
(1, 'Cien años de soledad', 'Jane Austen', 'Infantil', 0, 11),
(2, 'El Principito', 'Antoine de Saint-Exupéry', 'Histórica', 1, 5),
(3, 'Orgullo y prejuicio', 'J.R.R. Tolkien', 'Infantil', 1, 2),
(4, 'Cien años de soledad', 'Miguel de Cervantes', 'Romántica', 0, 2),
(5, 'El Señor de los Anillos', 'Gabriel García Márquez', 'Ciencia Ficción', 1, 10),
(6, 'El Quijote', 'Jane Austen', 'Terror', 0, 6),
(7, 'El Quijote', 'J.R.R. Tolkien', 'Poesía', 0, 1),
(8, 'Orgullo y prejuicio', 'Jane Austen', 'Romántica', 0, 12),
(9, 'El Quijote', 'Antoine de Saint-Exupéry', 'Histórica', 0, 3),
(10, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Terror', 0, 12);

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
(1, 6, 7, '2001-08-15', '2017-11-16', NULL),
(2, 1, 6, '2006-07-22', '2021-01-01', NULL),
(3, 6, 12, '2007-06-23', '2006-01-05', NULL),
(4, 9, 2, '2011-11-07', '2008-03-07', NULL),
(5, 8, 11, '2015-04-11', '2011-10-04', NULL),
(6, 7, 7, '2016-12-07', '2007-11-18', NULL),
(7, 7, 6, '2022-01-04', '2014-05-09', NULL),
(8, 9, 7, '2006-10-27', '2018-03-08', NULL),
(9, 2, 10, '2010-06-15', '2004-01-26', NULL),
(10, 9, 5, '2022-02-12', '2005-12-31', NULL);

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
(1, 'Winston', 'Scott', 'winscott@continental.com', 'winscott', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 0),
(2, 'John', 'Wick', 'babayaga@continental.com', 'babayaga', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 0),
(3, 'Raquel', 'López', 'RaqLóp0@ausiasmarch.net', 'Raqop0', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(5, 'Raquel', 'Puig', 'RaqPuqi2@ausiasmarch.net', 'Raqui2', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(6, 'Raquel', 'Gómez', 'RaqGóm3@ausiasmarch.net', 'Raqom3', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(7, 'Rafael', 'García', 'RafGar4@ausiasmarch.net', 'Rafar4', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(8, 'Elena', 'Romero', 'EleRom5@ausiasmarch.net', 'Eleom5', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(9, 'Fernando', 'Navarro', 'FerNav6@ausiasmarch.net', 'Ferav6', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(10, 'Jesús', 'García', 'JesGar7@ausiasmarch.net', 'Jesar7', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(11, 'Raquel', 'Serrano', 'RaqSer8@ausiasmarch.net', 'Raqer8', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1),
(12, 'Laura', 'Serrano', 'LauSer9@ausiasmarch.net', 'Lauer9', '70f56778075ef9f234760032ad49d14d0b62049146042ca88227b3396d3e7e1e', 1);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
