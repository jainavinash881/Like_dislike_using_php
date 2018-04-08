CREATE TABLE `posts` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `posts` (`id`, `title`, `content`, `timestamp`) VALUES
(1, 'Yes, except the Dave Matthews Band doesn''t rock.', 'The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. If rubbin'' frozen dirt in your crotch is wrong, hey I don''t wanna be right.', '2018-02-20 02:29:46'),
(2, 'Saving the world with meals on wheels.', 'You know how I sometimes have really brilliant ideas? Heh-haa! Super squeaky bum time! I''m the Doctor. Well, they call me the Doctor. I don''t know why. I call me the Doctor too. I still don''t know why.', '2018-02-20 02:29:46'),
(3, 'Tell him time is of the essence.', 'This man is a knight in shining armor. Watching ice melt. This is fun. Tell him time is of the essence. This man is a knight in shining armor. You look perfect. He taught me a code. To survive.', '2018-02-20 02:34:41');
