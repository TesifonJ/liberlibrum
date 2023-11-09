#
# TABLE STRUCTURE FOR: books
#

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('1', 'Sed voluptatem minima soluta laborum.', 'Rubye Funk MD', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('2', 'Accusantium qui ad fugiat qui dolorem ut.', 'Garth Wilderman Jr.', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('3', 'Sed fuga quia sunt at cum aut quidem libero.', 'Prof. Vinnie Turcotte', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('4', 'Eos quia rem placeat est.', 'William Gorczany DDS', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('5', 'Aut alias quas quia aspernatur quia rerum.', 'Althea Reichel', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('6', 'Porro maxime est cum culpa.', 'Aniyah Torphy', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('7', 'Et rem aut sapiente cupiditate quibusdam corporis excepturi.', 'Nels Schowalter PhD', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('8', 'Qui ducimus libero expedita quaerat.', 'Prof. Crawford Langosh II', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('9', 'Et ipsa ipsa aut.', 'Herman Parker', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('10', 'Porro alias cumque minus harum maiores enim error.', 'Lucienne Herzog IV', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('11', 'Deleniti molestiae iusto ut voluptatem.', 'Dr. Lulu Gislason', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('12', 'Ipsam corporis ipsum ut repudiandae accusamus qui exercitationem.', 'Alvena Abshire', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('13', 'Dicta sit id rerum et.', 'Jovan Stanton', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('14', 'Ducimus qui illo possimus consectetur aut et.', 'Prof. Haley Kub I', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('15', 'Dolores voluptas numquam enim sit eos hic.', 'Libbie Bailey', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('16', 'Ut porro vero perferendis et consequuntur vitae nulla recusandae.', 'Percival Beahan', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('17', 'Ipsum odit error consequatur aut.', 'Prof. Yasmin McKenzie', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('18', 'Delectus consequatur suscipit aliquam est fugit nihil inventore.', 'Christine Skiles', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('19', 'Neque aut accusamus aut soluta porro nihil assumenda.', 'Mervin Wintheiser MD', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('20', 'Distinctio molestias quibusdam officiis occaecati nam officia.', 'Amir Thompson Sr.', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('21', 'Necessitatibus sunt nihil corrupti.', 'Theresia Lowe', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('22', 'Quia maiores ut reiciendis excepturi rem consequatur.', 'Danyka Walsh', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('23', 'Dolores eos commodi praesentium accusamus.', 'Mr. Demond Stamm I', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('24', 'Non quia commodi est rem nulla vitae.', 'Garret Hermann', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('25', 'Rem non cum molestiae non quod voluptatum harum.', 'Isabella Jenkins', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('26', 'Optio debitis doloribus minima velit aut.', 'Cassie Bauch', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('27', 'Eligendi at sint possimus iste facilis minus non a.', 'Estel Shields Sr.', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('28', 'Qui eaque et qui nostrum deleniti.', 'Elmore Lemke Jr.', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('29', 'Tempora error quisquam beatae accusantium et sed velit.', 'Lynn Larson', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('30', 'Minus accusamus optio ea est animi iusto.', 'Leonor Kris', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('31', 'Et quis repellendus ut quia voluptas ratione.', 'Dewitt Lakin', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('32', 'Non velit voluptate non adipisci repellendus cupiditate.', 'Toney Emard', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('33', 'Alias aliquam dolorem mollitia atque rem non dolore.', 'Herminia Runolfsdottir', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('34', 'Atque eos pariatur eum velit aspernatur.', 'Tyshawn Rowe', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('35', 'Molestiae ea et consequatur dolorum dolorum sed.', 'Sofia Strosin', 'Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('36', 'Laboriosam ea deserunt consequatur et molestiae deleniti.', 'Kristin Bergstrom', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('37', 'Enim voluptatem rerum dolorem quia qui eligendi.', 'Anabel Kris', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('38', 'Autem et architecto molestias exercitationem adipisci error optio.', 'Dr. Jared Fisher', ' Mistery');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('39', 'Et rerum modi omnis repudiandae est sit rem.', 'Lavada Goodwin', ' Sci-fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('40', 'Consequatur asperiores ratione cum qui iure animi doloremque.', 'Werner Hagenes Jr.', ' Sci-fi');


#
# TABLE STRUCTURE FOR: loan
#

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `loanDate` date NOT NULL,
  `dueDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_loan_book` (`book_id`),
  KEY `fk_loan_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('1', '1', '1', '1972-10-06', '2012-03-25');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('2', '2', '2', '1995-12-16', '2008-12-30');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('3', '3', '3', '1986-03-06', '2018-11-02');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('4', '4', '4', '2015-03-25', '1999-10-02');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('5', '5', '5', '2020-06-15', '2003-08-22');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('6', '6', '6', '2021-03-12', '1995-02-19');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('7', '7', '7', '1993-09-17', '2005-03-01');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('8', '8', '8', '2002-11-26', '2022-10-31');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('9', '9', '9', '2008-05-19', '2012-03-28');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('10', '10', '10', '1976-06-19', '1999-05-07');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('11', '11', '11', '1973-01-15', '2003-09-25');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('12', '12', '12', '2010-12-20', '1988-04-08');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('13', '13', '13', '1984-10-14', '2007-08-13');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('14', '14', '14', '1970-05-10', '2014-03-26');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('15', '15', '15', '2018-05-28', '2017-04-09');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('16', '16', '16', '2006-08-05', '1994-06-06');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('17', '17', '17', '2014-04-25', '2017-04-04');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('18', '18', '18', '1975-12-05', '1981-01-16');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('19', '19', '19', '1989-06-09', '1991-11-16');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('20', '20', '20', '1979-10-21', '1997-07-07');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('21', '21', '21', '1985-02-04', '1983-06-11');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('22', '22', '22', '2022-04-03', '1978-10-05');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('23', '23', '23', '1970-01-29', '1971-11-26');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('24', '24', '24', '1999-02-22', '2016-09-07');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('25', '25', '25', '2015-04-08', '1998-05-02');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('26', '26', '26', '1972-11-03', '2019-11-09');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('27', '27', '27', '1992-02-03', '1992-12-12');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('28', '28', '28', '2020-11-15', '2001-10-20');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('29', '29', '29', '1987-10-08', '1986-11-09');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('30', '30', '30', '1980-07-06', '1990-04-26');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('31', '31', '31', '2000-03-07', '2020-03-24');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('32', '32', '32', '2004-10-29', '2004-11-14');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('33', '33', '33', '1996-10-02', '1987-05-04');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('34', '34', '34', '2007-08-09', '2003-03-26');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('35', '35', '35', '2000-09-13', '2016-05-04');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('36', '36', '36', '1974-01-19', '2007-03-13');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('37', '37', '37', '1973-09-19', '1985-05-08');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('38', '38', '38', '1998-01-14', '1974-10-09');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('39', '39', '39', '2020-12-07', '1988-04-08');
INSERT INTO `loan` (`id`, `book_id`, `user_id`, `loanDate`, `dueDate`) VALUES ('40', '40', '40', '1994-04-20', '2005-01-15');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('1', 'rem', 'dolores', 'saige.raynor@example.com', 'ucarter', 'badc79c80abbc8d7e4d4208cc8d79210e68e66236776ea3691db3afe69562eb4', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('2', 'quam', 'reiciendis', 'oliver09@example.org', 'sibyl.feest', '6fdf5d68fc1db77deed49819233c2b1889108a8830fd7c77d6b54d177851cc95', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('3', 'ex', 'sit', 'ari.satterfield@example.net', 'colt18', '5476842b8f171a42fb950e06f82d735c672f3db99ba9daf95e85fa508f961765', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('4', 'consectetur', 'ut', 'stanton.adah@example.net', 'fisher.mckenzie', '647410f51c60c2fd3a5708385aaad14de142071f60ed8d5d05abe29cf99732c1', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('5', 'ea', 'ratione', 'toy.justice@example.com', 'hilpert.mabelle', '7f3e806da364987a858d4a00a2ba1d72fa399546e4a892ef3622c97707fab088', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('6', 'ut', 'nihil', 'adonis58@example.com', 'dietrich.jaiden', 'ea3db4bbd1fbb4c57aa988f2eaf0670c31eeac7207cc03403d9f016ca0f4bc62', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('7', 'aliquam', 'amet', 'afton.hoeger@example.org', 'euna09', '74d7bf3e64ff712eae76a1fb9f1747187fab1860db9d488a2550942db98e47b7', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('8', 'amet', 'at', 'rullrich@example.net', 'hilll.jaeden', '8649e37286310e927742a03242b3b7980fd5b6101827d5edba10d4a09dcb0c26', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('9', 'at', 'perspiciatis', 'wwilkinson@example.org', 'brolfson', '385c213ce2314b033fbceb43329387b902e0205dac77e01f4a766bff0e9e7ac0', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('10', 'eveniet', 'excepturi', 'mohamed07@example.org', 'pschaefer', 'c37648f32c1598526236584b7fc3eb906842bd3bf975438b2c40fcff9eeed98b', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('11', 'et', 'magni', 'zieme.adeline@example.net', 'kendrick.hilll', '3a3df45f8b6e4f0c8511320a8771b75e71a3f282e2474e4c3a325ce417d56b06', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('12', 'quia', 'repellat', 'rhianna.grant@example.org', 'arely.douglas', '94eb2a1dc7ff6804d4a573b1985ac8421a918c3cbfb07e29fe26b4b0c51652f2', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('13', 'error', 'nesciunt', 'kunze.reuben@example.org', 'pacocha.alberto', '4142a71597b00b84b622ce7a99c234cdd10087fd135247a7501c70aabeb1ea6d', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('14', 'nemo', 'reiciendis', 'stroman.john@example.net', 'ischaefer', 'c96111e0b9996b5ac36da77243867fe40d283e8e0e5bf0e814eb1134f2d765bd', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('15', 'est', 'tempora', 'graham.tierra@example.org', 'ashtyn75', '2ebe13a3428850d8ac88f485237ce9833fc2b31198e9346a3c1d170067d787ee', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('16', 'eum', 'qui', 'torrance79@example.org', 'qwiza', '6fc13d6da90ca046e56e904f291cd8a361e7f72a5d3cc89a2c5ad1724e900134', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('17', 'occaecati', 'quam', 'pearlie52@example.com', 'runolfsdottir.aron', '01b19f477128058ff4c88db4a15b3d66290baa7dde07d73192d9d9b16a86b76f', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('18', 'quos', 'reprehenderit', 'ud\'amore@example.com', 'emilie66', 'bd3cf5d0ea01d4b68dc48fec94b1242c81fda5c0d75668330a8adda1e33ac29f', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('19', 'qui', 'unde', 'schneider.ahmad@example.org', 'emmett18', '589e002d6e4b160f8243509f7faaa40605f57a5fc8b1194ae7c6e0eb0e6b571e', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('20', 'consequatur', 'voluptatem', 'archibald.bins@example.net', 'tjohns', 'e6af07603ee979184a42109cd454d3378e490a3107cf01803a3080ca95cd3b6f', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('21', 'porro', 'soluta', 'iorn@example.net', 'hannah32', '1e3166491ef29764548e7f1bc15230d27f9a74aaed4d570da14b15bb48c3c58b', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('22', 'enim', 'quis', 'shakira.wiegand@example.org', 'karelle79', 'c1de1e63670db634500893d4b51d4d72945f1fd7148bafaf670d18aec82b1d4e', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('23', 'eaque', 'consectetur', 'aaron23@example.com', 'gjakubowski', '59cd6b8cb8650f3dff631d34f5de444afde17dd242756e0eb314b98196e2c391', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('24', 'ad', 'fuga', 'bbeer@example.org', 'beaulah.rolfson', 'edb62128b30e7bd386ff76379a424c0917b689187ceb4122f9f9e9c70302399e', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('25', 'eligendi', 'iusto', 'goldner.keara@example.com', 'jamey41', '6ea5fba73ae8b740b18b26f859cb35836764d55c6180aad048e0e7897981ecb2', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('26', 'enim', 'vitae', 'kdurgan@example.org', 'giuseppe52', 'd3cfe3c4a081f95ff7eddc13fb23f9520221eb7e13964346c1991f6305a72e73', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('27', 'enim', 'dolorem', 'nsteuber@example.net', 'stehr.janice', '6f1b9672cb19186ebaa72835549c99a7296403054d6eb0d4919a87e759e0eaad', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('28', 'eius', 'et', 'tkris@example.net', 'angel14', 'a7dc6f0e38291410d27497e732941faeaad5c547ac02d93efaa1ec194ef4d84b', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('29', 'qui', 'sed', 'dibbert.levi@example.org', 'lexus.wiegand', '0c33f7798804332d3bd81f76b265e7267151f960bed1c0016898e79b40739a8e', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('30', 'quidem', 'eum', 'jennifer76@example.com', 'keara49', 'e4191b21e76d4061fa70449d3f8a0918f3a88184d34dd7d20e34ee4a75fe9254', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('31', 'perferendis', 'odit', 'dlarkin@example.com', 'carlotta93', '7aae05eec89749b9e512c42404d168d2191a023822c73529524c45e2c19a83ad', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('32', 'dolor', 'et', 'reese75@example.net', 'willms.alejandra', 'f5dccbd08c9f87de5a657daac0a5b84839125ea588655f6fd132e086666a3090', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('33', 'non', 'assumenda', 'ldietrich@example.org', 'goyette.ole', '5bcf68d4fee936ac98961fb7314b96cd2627f53b51e1fff8b90475f01327d999', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('34', 'omnis', 'quae', 'kling.joaquin@example.net', 'gutkowski.mylene', '64dce5bf18a6db7a2a75e13ee5539feaa86a66d00dabf0abe78d7da3adfeabf8', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('35', 'dolor', 'ratione', 'xgaylord@example.net', 'rosella63', '89c13878111b968972bfb2bf3eacb49229f8d4065c91bd63fa60423026448bc6', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('36', 'incidunt', 'voluptas', 'dorian85@example.com', 'bethel.mcglynn', '51e4a6907d5390bff046ab3f5f628015f8336b0b8c8855260980ca185298668f', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('37', 'autem', 'quia', 'constance.hammes@example.org', 'rex.botsford', 'e7e02bdf8bd8b3ba0bdb86f0384e3ab4b315f55b4945b8d591e0cb5a62765666', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('38', 'ex', 'impedit', 'krystel72@example.net', 'stracke.cyril', '5442c24fcea183236f678b37c5c75d6ae92a81aed976b37fc07afe3f9f2b5dc4', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('39', 'qui', 'ut', 'lola63@example.net', 'bud.gutkowski', '5001aa7215be6a0eca661148c93ca0ceeb2cf572a34a55fb1e48b92373e5113b', 0);
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `role`) VALUES ('40', 'accusantium', 'ipsam', 'stephany.huels@example.net', 'vdurgan', 'cd6c31b5d961e9df7dac4fa38cc1a616d500741149417c347f693b02e306bbe4', 0);


