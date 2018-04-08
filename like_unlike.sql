CREATE TABLE `like_unlike` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `type` int(2) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `like_unlike` (`id`, `userid`, `postid`, `type`, `timestamp`) VALUES
(1, 1, 1, 1, '2018-02-21 15:29:39'),
(2, 2, 1, 1, '2018-02-21 15:45:51'),
(3, 3, 1, 0, '2018-02-21 15:51:02'),
(4, 4, 1, 1, '2018-02-21 15:50:56'),
(6, 5, 2, 0, '2018-02-21 18:49:55'),
(7, 3, 3, 1, '2018-02-21 16:11:56'),
(8, 4, 2, 0, '2018-02-21 16:11:56'),
(9, 6, 1, 1, '2018-02-21 16:11:56'),
(10, 7, 2, 0, '2018-02-21 16:11:56'),
(11, 9, 2, 1, '2018-02-21 16:11:56'),
(12, 5, 3, 1, '2018-02-21 17:29:29'),
(13, 5, 1, 0, '2018-02-21 18:49:52');