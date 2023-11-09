#
# TABLE STRUCTURE FOR: books
#

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('1', 'Sapiente corrupti est omnis omnis reprehenderit.', 'Dr. Alexys Becker', ' Action');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('2', 'Consequatur nam tempora eos.', 'Gretchen Legros PhD', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('3', 'Doloremque culpa quae quo earum odit est eos dolor.', 'Vicenta Auer', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('4', 'Nulla a velit id unde.', 'Antonio Sanford', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('5', 'Qui quibusdam vel blanditiis eos eos laborum.', 'Tyra Bradtke IV', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('6', 'Aut ut distinctio molestiae velit.', 'Camilla Bauch', ' Action');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('7', 'Quod numquam voluptatem quas.', 'Vesta Kunze', ' Action');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('8', 'Dolores et asperiores numquam quam sunt sit molestiae et.', 'Claud Kuhlman IV', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('9', 'Sunt officiis veniam occaecati reprehenderit aliquam molestiae omnis.', 'Julia Gislason', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('10', 'Dolore voluptas est sit similique accusantium fugiat perspiciatis sed.', 'Stone Kshlerin', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('11', 'Laborum animi eaque laborum dolor illum.', 'Mia Stracke Sr.', ' Action');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('12', 'Ipsa fuga ab doloribus tenetur molestiae.', 'Margarett Bode', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('13', 'Quam asperiores temporibus neque accusantium voluptatem consectetur autem.', 'Lucinda Dietrich', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('14', 'Ex aut beatae illo.', 'Asa Monahan', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('15', 'Minima sit perspiciatis veniam et voluptatem nam.', 'Kayley Leuschke', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('16', 'Animi sit qui et quidem consectetur dolores.', 'Lia Vandervort', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('17', 'Pariatur aliquid doloremque esse dicta alias.', 'Melody Bergnaum', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('18', 'Nostrum voluptatibus sed accusantium facere quia sint ratione.', 'Eldora Marvin', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('19', 'Reprehenderit quidem dicta ipsam.', 'Ms. Beverly Grimes Sr.', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('20', 'Aut modi perferendis veniam temporibus facilis deserunt.', 'Hertha Langworth', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('21', 'Sed illum ex culpa necessitatibus aperiam illo placeat quo.', 'Wayne Raynor', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('22', 'Labore est veniam blanditiis voluptatibus aliquam blanditiis debitis.', 'Dr. Addie Crona MD', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('23', 'Dolorem maiores voluptatum velit.', 'Flossie Rempel', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('24', 'Corrupti dolorum a qui impedit facere.', 'Nikolas Jerde', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('25', 'Quas sed saepe velit nisi at est sunt provident.', 'Nasir Reichert', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('26', 'Rerum qui reiciendis quo autem sed minus eos.', 'Miss Verda Brakus', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('27', 'Error quaerat nostrum praesentium nobis.', 'Wiley Lebsack Sr.', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('28', 'Enim facilis praesentium quas.', 'Kaleigh Green', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('29', 'Ipsa et deserunt numquam laborum quibusdam.', 'Leda Dietrich', ' Sci-Fi');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('30', 'Laboriosam qui maiores exercitationem quis aliquid minus perferendis.', 'Jackie Klocko MD', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('31', 'Qui similique non explicabo et tempore beatae.', 'Rene Parker', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('32', 'Rerum et voluptatibus minus beatae assumenda.', 'Lelah Jenkins', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('33', 'Voluptatem voluptatibus dolores velit qui eos in voluptatem.', 'Prof. Blake Prohaska V', ' Fantasy');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('34', 'Harum libero officiis quia reiciendis rerum sit.', 'Luis Mante', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('35', 'Impedit nisi voluptas placeat laborum id.', 'Timmy Parisian', ' Action');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('36', 'Voluptatem et ipsam exercitationem aliquam architecto.', 'Mrs. Kaitlyn Weimann', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('37', 'Praesentium sunt aut autem ducimus qui quo aliquam dolorem.', 'Aletha Wiegand III', ' Horror');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('38', 'Iusto rerum recusandae rerum culpa sint doloremque atque.', 'Gordon Schowalter', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('39', 'Omnis ab nesciunt quas quisquam praesentium.', 'Lucy Kilback', 'History');
INSERT INTO `books` (`id`, `title`, `author`, `category`) VALUES ('40', 'Nesciunt laudantium dolor a quia aliquid.', 'Hoyt Dare', 'History');


#
# TABLE STRUCTURE FOR: loans
#

DROP TABLE IF EXISTS `loans`;

CREATE TABLE `loans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `loanDate` date NOT NULL,
  `dueDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_loan_user` (`user_id`),
  KEY `fk_loan_book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('1', '1', '1', '1982-10-23', '2015-11-16');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('2', '2', '2', '1997-12-31', '1974-02-14');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('3', '3', '3', '1981-06-06', '2014-09-16');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('4', '4', '4', '2002-08-17', '2007-03-30');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('5', '5', '5', '1992-08-21', '1993-10-27');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('6', '6', '6', '1982-08-05', '1975-02-18');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('7', '7', '7', '1977-01-29', '1991-11-06');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('8', '8', '8', '1995-05-09', '1989-12-24');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('9', '9', '9', '1975-05-22', '1976-05-28');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('10', '10', '10', '1999-02-03', '2018-10-08');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('11', '11', '11', '2021-06-16', '2007-08-22');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('12', '12', '12', '2018-09-06', '1992-03-22');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('13', '13', '13', '1980-09-10', '1989-06-09');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('14', '14', '14', '2017-09-25', '2022-09-08');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('15', '15', '15', '1992-04-16', '2008-02-16');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('16', '16', '16', '1980-04-02', '1981-08-26');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('17', '17', '17', '1985-02-01', '2014-05-07');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('18', '18', '18', '1997-06-02', '2002-12-10');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('19', '19', '19', '1977-11-07', '1995-04-22');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('20', '20', '20', '2019-04-15', '2015-07-22');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('21', '21', '21', '2018-10-21', '1997-03-20');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('22', '22', '22', '1997-04-28', '1991-01-02');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('23', '23', '23', '1987-06-27', '2014-09-18');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('24', '24', '24', '2010-10-25', '1977-11-27');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('25', '25', '25', '1999-05-16', '1984-08-17');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('26', '26', '26', '1979-05-21', '1974-08-21');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('27', '27', '27', '1983-09-07', '2007-07-13');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('28', '28', '28', '1993-03-21', '2000-05-07');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('29', '29', '29', '1995-11-09', '1978-09-23');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('30', '30', '30', '1980-02-15', '2006-04-18');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('31', '31', '31', '2021-12-16', '1981-04-07');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('32', '32', '32', '1990-03-21', '1991-11-18');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('33', '33', '33', '2013-12-28', '1970-04-23');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('34', '34', '34', '2000-06-30', '1996-07-13');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('35', '35', '35', '1973-08-20', '1975-08-22');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('36', '36', '36', '2011-07-08', '2005-03-16');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('37', '37', '37', '1975-05-10', '1974-08-05');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('38', '38', '38', '2007-05-13', '1985-06-27');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('39', '39', '39', '2006-02-07', '2005-09-20');
INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loanDate`, `dueDate`) VALUES ('40', '40', '40', '2003-09-14', '2003-08-24');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('1', 'soluta', 'reprehenderit', 'jerde.philip', 'wyatt13@example.org', '349fa07ce71b52f1a88eccdc3fa3d05eef4176f350b5172c6eaf61d5f88bc22f');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('2', 'consectetur', 'consectetur', 'kory.daniel', 'pcronin@example.org', '61e817eb2ec16cde99352b90924cae3cb905bc07433f04916869eec257041833');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('3', 'earum', 'quis', 'ahmad61', 'lavinia.boyer@example.net', '47598511da004c177bfde0510d70c958860299ceaef6e10869aef95acb26e430');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('4', 'voluptas', 'reprehenderit', 'eleazar74', 'tyshawn72@example.com', 'e3fc09573bee3d775478e2c848ce7db5e86d80576ef759124e0773c77e023ec9');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('5', 'voluptas', 'laudantium', 'nettie61', 'daniel.dulce@example.org', '81e15259a5c6a29d8e1572f4733c3d6effbb864f74344d5d23e38cda48e1eede');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('6', 'est', 'voluptatibus', 'luciano72', 'ukovacek@example.org', '9f454387a150f57a381a9137dfe30932a3c13343a364cb45f31abd101e164e99');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('7', 'neque', 'excepturi', 'adaugherty', 'rutherford.herman@example.com', 'e55b0db8663da92567ed0bd9ed1d2a3b3344531ad6ed72edb32da96eeb3391d8');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('8', 'ut', 'aut', 'gveum', 'kulas.lesly@example.net', 'c723bd1d35f40712f49edc79a43efd5a6db1a7d1bad1595639c845bdf3bf51b9');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('9', 'quam', 'et', 'loyce54', 'kunde.jamir@example.net', 'ecf8d19aa6987c80bcac8fc71efc4f069fb863eb69ad51825f62a973e4cc4db9');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('10', 'sunt', 'natus', 'ramon.klocko', 'jmann@example.com', 'da58590456a2226fabc53a09552d3f5a6154a0cc55d26810aba6c4e2276e4154');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('11', 'dolore', 'ut', 'micah89', 'wyman.tavares@example.org', '527052d41d6d840d1749fb116323a52b3ddd8b720edf1756727b8c2e4dee6a91');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('12', 'assumenda', 'consequatur', 'dora75', 'deshawn.schroeder@example.com', '0100afaade65f1dbec00c210404968c6d49ffb0f9b59c18c18f6e8d1a3d5a634');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('13', 'aperiam', 'rem', 'padberg.friedrich', 'eve01@example.net', 'ac4fcc123f3ef413888bffc2ad3d7b563032027d7630c43e5f925241a57eab60');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('14', 'recusandae', 'quis', 'nlebsack', 'elenora.shields@example.net', '2b47fd9d556d7242e7f82fa59154009ddd045cbf7a2348e9a90ac991a218f885');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('15', 'voluptatum', 'aperiam', 'boyle.javon', 'isai25@example.org', 'f77b2911c4af8443c5f43fd0e3baae56cbb4336f9981085946ff1bbb6935177d');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('16', 'voluptatibus', 'quis', 'adams.cassidy', 'treutel.francesco@example.com', '614dee3601700621e0e6a911e7ea72edbec3c8e8473fb255fe5f25057620648e');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('17', 'sapiente', 'sapiente', 'green91', 'ronny92@example.net', '728d87b45b76861fc86152393b8a0e064824e85ce96274fd4ad72c4c74ba0f80');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('18', 'amet', 'fuga', 'odie.hoeger', 'swelch@example.com', '20df6bbd319985d9264a77ee0c828f20fcc45c366db8290a0393897e94af8df8');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('19', 'enim', 'excepturi', 'okuneva.elena', 'abe.veum@example.com', '08eeba1a5c5451d041480035a3f2c15cdda8f10d43e3de8e37f3c4b87a313cee');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('20', 'est', 'sed', 'camron55', 'katheryn.grady@example.com', '055b396a3cd1ea3f9bf91271a1b5114ccee885ee57d52a512ce9fd3b8f1b89dd');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('21', 'sed', 'ipsa', 'jlynch', 'llittle@example.org', 'bc5ddc15a16221499cfc7d3777afd02b19eabbbcb5b070b143c1c76a0539d2cc');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('22', 'eum', 'perferendis', 'lstrosin', 'valentin.bayer@example.org', '0f94e98b22ebe66eba6eb9756153a997ca0bbefc4f93815ed95930f8bf67e528');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('23', 'delectus', 'placeat', 'kbotsford', 'morgan51@example.com', '73df37ebe34e89e2bffd730c5b9f4da7bf1191b286eef5ea7385f40e280cb0c6');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('24', 'repellat', 'similique', 'modesta67', 'klein.lionel@example.org', '17bb5b4e1a04b4bddc521eb6341a06b929ae33796a60fec083f449bcde7cf708');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('25', 'nam', 'reiciendis', 'vhyatt', 'rutherford.vinnie@example.org', '700f0688d99854e92dffb0da7fb4297f440e099293adedb018a8425761b7b7f5');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('26', 'aut', 'facere', 'rempel.arlene', 'windler.agustin@example.net', 'ec5166f87f4455e3a110638ec90964ef44e21ef7d49240a19aabc56206ebaf5c');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('27', 'ex', 'et', 'ledner.antonette', 'odaugherty@example.org', '288165ec903b82d991eaae7fddc6bcc5fb8965e856575c59c383841517be03f6');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('28', 'et', 'doloribus', 'emmerich.adonis', 'zwehner@example.net', 'efdf37b638ea6edef8aaa809a31791f47ce345c1e3a5991f742b4d26626639d7');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('29', 'aut', 'ut', 'yessenia.littel', 'janelle64@example.org', 'faec293508de327fe7b46b6f6712d84eb9bc2da08cf4c561e49a615c756ffa54');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('30', 'ducimus', 'repellendus', 'qwest', 'abbott.evan@example.net', '6df8b7e2815baae4eb85ca6250c04d5b6ebeaa7b73bf78cf1f64cca1ec9f60a4');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('31', 'quas', 'adipisci', 'cordell28', 'collin.kris@example.com', 'affb475a4600c23f97b2c449f133c07649ae5ac45ee02e38fb410b10812e0e8f');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('32', 'ut', 'excepturi', 'ymcglynn', 'eleanora.fahey@example.com', '755b3a1fdb55e790fea473a7ed9c4566a2f5901401e711f2d75970f7f18fec21');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('33', 'non', 'ullam', 'uwalker', 'laurine78@example.net', 'ab35665dd2070aa3ad9475388fc1624df85c344a4c5b155d8580d54ef3fcce89');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('34', 'beatae', 'aperiam', 'maymie50', 'kailee.jenkins@example.org', '781ebe82be39970458d4627cf08b2d232cd239dcb9d5039bede7f0af0ff0dadb');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('35', 'molestiae', 'voluptate', 'gdietrich', 'vo\'hara@example.net', '292d7849c9a01b33d40baafd4fd633997f774a24bd89e65c726b7437ccde5f34');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('36', 'qui', 'eum', 'rolfson.darwin', 'mike26@example.net', '2bdc94c1cd9100b35c506fe432c1754a177edb5a28dd5b8648de05b322ba224f');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('37', 'incidunt', 'numquam', 'gerlach.norberto', 'lori72@example.com', 'e9062e747d731bdf594fc51c90b0c45cbe156771d2a698845a86d09fab41f33a');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('38', 'atque', 'reprehenderit', 'edna62', 'jayden48@example.org', '05c3e80e5178bebb193444f1b628c403d2d60bfa4c8fc0379fcc5c9fe00a4992');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('39', 'sit', 'est', 'dtowne', 'theo07@example.org', '1f963b46b1e8729b07ea091b3dd123ae1d3a24302f3e052100fcd0a29505ca06');
INSERT INTO `users` (`id`, `name`, `surname`, `username`, `email`, `password`) VALUES ('40', 'quidem', 'harum', 'botsford.cyrus', 'marks.rosalee@example.net', '04c22b7e3b67f123bb94f3a8d13100cd44cf58f8ed2eea1964d0714a51ffecda');


