CREATE TABLE IF NOT EXISTS `webpage_hit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `month_` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14;

INSERT INTO `webpage_hit` (`id`, `ip`, `month_`, `location`) VALUES
(1, '117.140.242.107', '14-May', 'APNIC'),
(2, '71.102.15.72', '14-May', 'ARIN'),
(3, '71.102.15.72', '14-May', 'ARIN'),
(4, '71.102.15.72', '14-May', 'ARIN'),
(5, '99.127.144.238', '14-May', 'ARIN'),
(6, '99.127.144.238', '14-May', 'ARIN'),
(7, '99.127.144.238', '14-May', 'ARIN'),
(8, '61.180.16.99', '14-May', 'APNIC'),
(9, '70.26.170.40', '14-May', 'ARIN'),
(10, '108.20.9.59', '14-May', 'ARIN'),
(11, '61.138.177.6', '14-May', 'APNIC'),
(12, '61.138.177.6', '14-May', 'APNIC'),
(13, '61.138.177.6', '14-May', 'APNIC'),