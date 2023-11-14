-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 14-11-2023 a las 13:45:56
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
  `user_id` bigint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `category`, `available`, `user_id`) VALUES
(1, 'Sed voluptatem minima soluta laborum.', 'Rubye Funk MD', ' Sci-fi', 0, NULL),
(2, 'Accusantium qui ad fugiat qui dolorem ut.', 'Garth Wilderman Jr.', ' Sci-fi', 0, NULL),
(3, 'Sed fuga quia sunt at cum aut quidem libero.', 'Prof. Vinnie Turcotte', ' Mistery', 0, NULL),
(4, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'Horror', 0, NULL),
(5, 'Aut alias quas quia aspernatur quia rerum.', 'Althea Reichel', ' Fantasy', 0, NULL),
(6, 'Porro maxime est cum culpa.', 'Aniyah Torphy', ' Fantasy', 0, NULL),
(7, 'Et rem aut sapiente cupiditate quibusdam corporis excepturi.', 'Nels Schowalter PhD', ' Sci-fi', 0, NULL),
(8, 'Qui ducimus libero expedita quaerat.', 'Prof. Crawford Langosh II', ' Mistery', 0, NULL),
(9, 'Et ipsa ipsa aut.', 'Herman Parker', ' Mistery', 0, NULL),
(10, 'Porro alias cumque minus harum maiores enim error.', 'Lucienne Herzog IV', ' Mistery', 0, NULL),
(11, 'Deleniti molestiae iusto ut voluptatem.', 'Dr. Lulu Gislason', ' Fantasy', 0, NULL),
(12, 'Ipsam corporis ipsum ut repudiandae accusamus qui exercitationem.', 'Alvena Abshire', 'Horror', 0, NULL),
(13, 'Dicta sit id rerum et.', 'Jovan Stanton', ' Fantasy', 0, NULL),
(14, 'Ducimus qui illo possimus consectetur aut et.', 'Prof. Haley Kub I', ' Sci-fi', 0, NULL),
(15, 'Dolores voluptas numquam enim sit eos hic.', 'Libbie Bailey', ' Mistery', 0, NULL),
(16, 'Ut porro vero perferendis et consequuntur vitae nulla recusandae.', 'Percival Beahan', ' Fantasy', 0, NULL),
(17, 'Ipsum odit error consequatur aut.', 'Prof. Yasmin McKenzie', 'Horror', 0, NULL),
(18, 'Delectus consequatur suscipit aliquam est fugit nihil inventore.', 'Christine Skiles', ' Sci-fi', 0, NULL),
(19, 'Neque aut accusamus aut soluta porro nihil assumenda.', 'Mervin Wintheiser MD', 'Horror', 0, NULL),
(20, 'Distinctio molestias quibusdam officiis occaecati nam officia.', 'Amir Thompson Sr.', 'Horror', 0, NULL),
(21, 'Necessitatibus sunt nihil corrupti.', 'Theresia Lowe', ' Fantasy', 0, NULL),
(22, 'Quia maiores ut reiciendis excepturi rem consequatur.', 'Danyka Walsh', 'Horror', 0, NULL),
(23, 'Dolores eos commodi praesentium accusamus.', 'Mr. Demond Stamm I', ' Sci-fi', 0, NULL),
(24, 'Non quia commodi est rem nulla vitae.', 'Garret Hermann', ' Sci-fi', 0, NULL),
(25, 'Rem non cum molestiae non quod voluptatum harum.', 'Isabella Jenkins', ' Sci-fi', 0, NULL),
(26, 'Optio debitis doloribus minima velit aut.', 'Cassie Bauch', ' Fantasy', 0, NULL),
(27, 'Eligendi at sint possimus iste facilis minus non a.', 'Estel Shields Sr.', 'Horror', 0, NULL),
(28, 'Qui eaque et qui nostrum deleniti.', 'Elmore Lemke Jr.', ' Sci-fi', 0, NULL),
(29, 'Tempora error quisquam beatae accusantium et sed velit.', 'Lynn Larson', ' Fantasy', 0, NULL),
(30, 'Minus accusamus optio ea est animi iusto.', 'Leonor Kris', ' Mistery', 0, NULL),
(31, 'Et quis repellendus ut quia voluptas ratione.', 'Dewitt Lakin', 'Horror', 0, NULL),
(32, 'Non velit voluptate non adipisci repellendus cupiditate.', 'Toney Emard', 'Horror', 0, NULL),
(33, 'Alias aliquam dolorem mollitia atque rem non dolore.', 'Herminia Runolfsdottir', ' Fantasy', 0, NULL),
(34, 'Atque eos pariatur eum velit aspernatur.', 'Tyshawn Rowe', ' Mistery', 0, NULL),
(35, 'Molestiae ea et consequatur dolorum dolorum sed.', 'Sofia Strosin', 'Horror', 0, NULL),
(36, 'Laboriosam ea deserunt consequatur et molestiae deleniti.', 'Kristin Bergstrom', ' Fantasy', 0, NULL),
(37, 'Enim voluptatem rerum dolorem quia qui eligendi.', 'Anabel Kris', ' Sci-fi', 0, NULL),
(38, 'Autem et architecto molestias exercitationem adipisci error optio.', 'Dr. Jared Fisher', ' Mistery', 0, NULL),
(39, 'Et rerum modi omnis repudiandae est sit rem.', 'Lavada Goodwin', ' Sci-fi', 0, NULL),
(40, 'Consequatur asperiores ratione cum qui iure animi doloremque.', 'Werner Hagenes Jr.', ' Sci-fi', 0, NULL),
(41, 'Medio Rey', 'Antonio Banderas', 'Horror', 0, NULL),
(42, 'El Hobbit', 'Antoine de Saint-Exupéry', 'Ciencia Ficción', 0, NULL),
(43, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'adsa', 0, NULL),
(44, 'El Hobbit', 'J.R.R. Tolkien', 'Ciencia Ficción', 0, NULL),
(45, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'adsa', 0, NULL),
(47, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'adsa', 0, NULL),
(48, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'adsa', 0, NULL),
(49, 'Orgullo y prejuicio', 'Antoine de Saint-Exupéry', 'Terror', 0, NULL),
(50, 'aaaaaaaaaaabbbbbbbbbb', 'William Gorczany DDS', 'adsa', 0, NULL),
(51, 'Eos quia rem placeat est.', 'William Gorczany DDS', 'adsa', 0, NULL),
(52, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Histórica', 0, NULL),
(53, 'Medio Rey 2', 'Antonio Banderas', 'Horror', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loans`
--

CREATE TABLE `loans` (
  `id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `user_id`, `loan_date`, `due_date`) VALUES
(1, 1, 1, '1972-10-06', '2012-03-25'),
(2, 2, 2, '1995-12-16', '2008-12-30'),
(3, 3, 3, '1986-03-06', '2018-11-02'),
(4, 4, 4, '2015-03-25', '1999-10-02'),
(5, 5, 5, '2020-06-15', '2003-08-22'),
(6, 6, 6, '2021-03-12', '1995-02-19'),
(7, 7, 7, '1993-09-17', '2005-03-01'),
(8, 8, 8, '2002-11-26', '2022-10-31'),
(9, 9, 9, '2008-05-19', '2012-03-28'),
(10, 10, 10, '1976-06-19', '1999-05-07'),
(11, 11, 11, '1973-01-15', '2003-09-25'),
(12, 12, 12, '2010-12-20', '1988-04-08'),
(13, 13, 13, '1984-10-14', '2007-08-13'),
(14, 14, 14, '1970-05-10', '2014-03-26'),
(15, 15, 15, '2018-05-28', '2017-04-09'),
(16, 16, 16, '2006-08-05', '1994-06-06'),
(17, 17, 17, '2014-04-25', '2017-04-04'),
(18, 18, 18, '1975-12-05', '1981-01-16'),
(19, 19, 19, '1989-06-09', '1991-11-16'),
(20, 20, 20, '1979-10-21', '1997-07-07'),
(21, 21, 21, '1985-02-04', '1983-06-11'),
(22, 22, 22, '2022-04-03', '1978-10-05'),
(23, 23, 23, '1970-01-29', '1971-11-26'),
(24, 24, 24, '1999-02-22', '2016-09-07'),
(25, 25, 25, '2015-04-08', '1998-05-02'),
(26, 26, 26, '1972-11-03', '2019-11-09'),
(27, 27, 27, '1992-02-03', '1992-12-12'),
(28, 28, 28, '2020-11-15', '2001-10-20'),
(29, 29, 29, '1987-10-08', '1986-11-09'),
(30, 30, 30, '1980-07-06', '1990-04-26'),
(31, 31, 31, '2000-03-07', '2020-03-24'),
(32, 32, 32, '2004-10-29', '2004-11-14'),
(33, 33, 33, '1996-10-02', '1987-05-04'),
(34, 34, 34, '2007-08-09', '2003-03-26'),
(35, 35, 35, '2000-09-13', '2016-05-04'),
(36, 36, 36, '1974-01-19', '2007-03-13'),
(37, 37, 37, '1973-09-19', '1985-05-08'),
(38, 38, 38, '1998-01-14', '1974-10-09'),
(39, 39, 39, '2020-12-07', '1988-04-08'),
(40, 40, 40, '1994-04-20', '2005-01-15');

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
(0, 'rem', 'dolores', 'saige.raynor@example.com', 'ucarter', 'badc79c80abbc8d7e4d4208cc8d79210e68e66236776ea3691db3afe69562eb4', 0),
(3, 'ex', 'sit', 'ari.satterfield@example.net', 'colt18', '5476842b8f171a42fb950e06f82d735c672f3db99ba9daf95e85fa508f961765', 0),
(4, 'consectetur', 'ut', 'stanton.adah@example.net', 'fisher.mckenzie', '647410f51c60c2fd3a5708385aaad14de142071f60ed8d5d05abe29cf99732c1', 0),
(5, 'flash', 'batman', 'erikaaa20@example.net', 'cardoba', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(6, 'ut', 'nihil', 'adonis58@example.com', 'dietrich.jaiden', 'ea3db4bbd1fbb4c57aa988f2eaf0670c31eeac7207cc03403d9f016ca0f4bc62', 0),
(7, 'aliquam', 'amet', 'afton.hoeger@example.org', 'euna09', '74d7bf3e64ff712eae76a1fb9f1747187fab1860db9d488a2550942db98e47b7', 0),
(8, 'amet', 'at', 'rullrich@example.net', 'hilll.jaeden', '8649e37286310e927742a03242b3b7980fd5b6101827d5edba10d4a09dcb0c26', 0),
(9, 'at', 'perspiciatis', 'wwilkinson@example.org', 'brolfson', '385c213ce2314b033fbceb43329387b902e0205dac77e01f4a766bff0e9e7ac0', 1),
(10, 'eveniet', 'excepturi', 'mohamed07@example.org', 'pschaefer', 'c37648f32c1598526236584b7fc3eb906842bd3bf975438b2c40fcff9eeed98b', 0),
(11, 'et', 'magni', 'zieme.adeline@example.net', 'kendrick.hilll', '3a3df45f8b6e4f0c8511320a8771b75e71a3f282e2474e4c3a325ce417d56b06', 0),
(12, 'quia', 'repellat', 'rhianna.grant@example.org', 'arely.douglas', '94eb2a1dc7ff6804d4a573b1985ac8421a918c3cbfb07e29fe26b4b0c51652f2', 0),
(13, 'error', 'nesciunt', 'kunze.reuben@example.org', 'pacocha.alberto', '4142a71597b00b84b622ce7a99c234cdd10087fd135247a7501c70aabeb1ea6d', 0),
(14, 'nemo', 'reiciendis', 'stroman.john@example.net', 'ischaefer', 'c96111e0b9996b5ac36da77243867fe40d283e8e0e5bf0e814eb1134f2d765bd', 0),
(15, 'est', 'tempora', 'graham.tierra@example.org', 'ashtyn75', '2ebe13a3428850d8ac88f485237ce9833fc2b31198e9346a3c1d170067d787ee', 0),
(16, 'eum', 'qui', 'torrance79@example.org', 'qwiza', '6fc13d6da90ca046e56e904f291cd8a361e7f72a5d3cc89a2c5ad1724e900134', 0),
(17, 'occaecati', 'quam', 'pearlie52@example.com', 'runolfsdottir.aron', '01b19f477128058ff4c88db4a15b3d66290baa7dde07d73192d9d9b16a86b76f', 0),
(18, 'quos', 'reprehenderit', 'ud\'amore@example.com', 'emilie66', 'bd3cf5d0ea01d4b68dc48fec94b1242c81fda5c0d75668330a8adda1e33ac29f', 0),
(19, 'qui', 'unde', 'schneider.ahmad@example.org', 'emmett18', '589e002d6e4b160f8243509f7faaa40605f57a5fc8b1194ae7c6e0eb0e6b571e', 0),
(20, 'consequatur', 'voluptatem', 'archibald.bins@example.net', 'tjohns', 'e6af07603ee979184a42109cd454d3378e490a3107cf01803a3080ca95cd3b6f', 0),
(21, 'porro', 'soluta', 'iorn@example.net', 'hannah32', '1e3166491ef29764548e7f1bc15230d27f9a74aaed4d570da14b15bb48c3c58b', 0),
(22, 'enim', 'quis', 'shakira.wiegand@example.org', 'karelle79', 'c1de1e63670db634500893d4b51d4d72945f1fd7148bafaf670d18aec82b1d4e', 0),
(23, 'eaque', 'consectetur', 'aaron23@example.com', 'gjakubowski', '59cd6b8cb8650f3dff631d34f5de444afde17dd242756e0eb314b98196e2c391', 0),
(24, 'ad', 'fuga', 'bbeer@example.org', 'beaulah.rolfson', 'edb62128b30e7bd386ff76379a424c0917b689187ceb4122f9f9e9c70302399e', 0),
(25, 'eligendi', 'iusto', 'goldner.keara@example.com', 'jamey41', '6ea5fba73ae8b740b18b26f859cb35836764d55c6180aad048e0e7897981ecb2', 0),
(26, 'enim', 'vitae', 'kdurgan@example.org', 'giuseppe52', 'd3cfe3c4a081f95ff7eddc13fb23f9520221eb7e13964346c1991f6305a72e73', 0),
(27, 'enim', 'dolorem', 'nsteuber@example.net', 'stehr.janice', '6f1b9672cb19186ebaa72835549c99a7296403054d6eb0d4919a87e759e0eaad', 0),
(28, 'eius', 'et', 'tkris@example.net', 'angel14', 'a7dc6f0e38291410d27497e732941faeaad5c547ac02d93efaa1ec194ef4d84b', 0),
(29, 'qui', 'sed', 'dibbert.levi@example.org', 'lexus.wiegand', '0c33f7798804332d3bd81f76b265e7267151f960bed1c0016898e79b40739a8e', 0),
(30, 'quidem', 'eum', 'jennifer76@example.com', 'keara49', 'e4191b21e76d4061fa70449d3f8a0918f3a88184d34dd7d20e34ee4a75fe9254', 0),
(31, 'perferendis', 'odit', 'dlarkin@example.com', 'carlotta93', '7aae05eec89749b9e512c42404d168d2191a023822c73529524c45e2c19a83ad', 0),
(32, 'dolor', 'et', 'reese75@example.net', 'willms.alejandra', 'f5dccbd08c9f87de5a657daac0a5b84839125ea588655f6fd132e086666a3090', 0),
(33, 'non', 'assumenda', 'ldietrich@example.org', 'goyette.ole', '5bcf68d4fee936ac98961fb7314b96cd2627f53b51e1fff8b90475f01327d999', 0),
(34, 'omnis', 'quae', 'kling.joaquin@example.net', 'gutkowski.mylene', '64dce5bf18a6db7a2a75e13ee5539feaa86a66d00dabf0abe78d7da3adfeabf8', 0),
(35, 'dolor', 'ratione', 'xgaylord@example.net', 'rosella63', '89c13878111b968972bfb2bf3eacb49229f8d4065c91bd63fa60423026448bc6', 0),
(36, 'incidunt', 'voluptas', 'dorian85@example.com', 'bethel.mcglynn', '51e4a6907d5390bff046ab3f5f628015f8336b0b8c8855260980ca185298668f', 0),
(37, 'autem', 'quia', 'constance.hammes@example.org', 'rex.botsford', 'e7e02bdf8bd8b3ba0bdb86f0384e3ab4b315f55b4945b8d591e0cb5a62765666', 0),
(38, 'ex', 'impedit', 'krystel72@example.net', 'stracke.cyril', '5442c24fcea183236f678b37c5c75d6ae92a81aed976b37fc07afe3f9f2b5dc4', 0),
(39, 'qui', 'ut', 'lola63@example.net', 'bud.gutkowski', '5001aa7215be6a0eca661148c93ca0ceeb2cf572a34a55fb1e48b92373e5113b', 0),
(40, 'accusantium', 'ipsam', 'stephany.huels@example.net', 'vdurgan', 'cd6c31b5d961e9df7dac4fa38cc1a616d500741149417c347f693b02e306bbe4', 0),
(41, 'architecto', NULL, 'erika20@example.net', 'alicia', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(46, 'flash', 'batman', 'erikaaa20@example.net', 'cardoba', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(50, 'flash', 'batman', 'erikaaa20@example.net', 'cardoba', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(51, 'Rafael', 'McLure', 'RafMcL0@ausiasmarch.net', 'RafcL0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(52, 'Rafael', 'Aguilar', 'RafAgu1@ausiasmarch.net', 'Rafgu1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(54, 'Elena', 'Puig', 'ElePui3@ausiasmarch.net', 'Eleui3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(55, 'Rafael', 'Romero', 'RafRom4@ausiasmarch.net', 'Rafom4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(56, 'aaaa', NULL, 'erika20@example.net', 'alicia', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(57, 'Pablo', 'Gómez', 'PabGóm0@ausiasmarch.net', 'Pabom0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(58, 'Eva', 'Velarte', 'EvaVel1@ausiasmarch.net', 'Evael1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(59, 'Rafael', 'Farell', 'RafFar2@ausiasmarch.net', 'Rafar2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(60, 'Raquel', 'Suárez', 'RaqSuá3@ausiasmarch.net', 'Raqua3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(61, 'Nieves', 'García', 'NieGar4@ausiasmarch.net', 'Niear4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
