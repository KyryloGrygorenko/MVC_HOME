-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Бер 17 2017 р., 18:54
-- Версія сервера: 5.5.53-0ubuntu0.14.04.1
-- Версія PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `mvc`
--

-- --------------------------------------------------------

--
-- Структура таблиці `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблиці `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `style_id` tinyint(3) unsigned DEFAULT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `style_id` (`style_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=503 ;

--
-- Дамп даних таблиці `book`
--

INSERT INTO `book` (`id`, `title`, `price`, `style_id`, `description`, `status`) VALUES
(403, 'odio curabitur convallis duis', '961.87', 1, 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 1),
(404, 'sapien quis libero nullam', '700.99', 5, 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', 0),
(405, 'platea dictumst', '133.80', 2, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 1),
(406, 'morbi sem', '906.11', 8, NULL, 0),
(407, 'turpis sed ante', '614.40', 1, NULL, 1),
(408, 'pellentesque at nulla suspendisse', '320.90', 9, 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 1),
(409, 'porta volutpat', '594.52', 4, 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 1),
(410, 'elementum nullam varius', '907.18', 4, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 0),
(411, 'libero ut massa', '898.87', 6, 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 1),
(412, 'faucibus accumsan odio', '532.69', 9, NULL, 1),
(413, 'odio', '607.47', 12, 'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 0),
(414, 'urna ut tellus', '735.63', 6, 'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 0),
(415, 'quis', '456.48', 10, NULL, 1),
(416, 'ipsum', '708.89', 7, 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', 1),
(417, 'justo', '451.68', 10, 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam', 0),
(418, 'quis lectus suspendisse', '261.89', 12, 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 1),
(419, 'lacus curabitur at ipsum', '928.23', 11, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 1),
(420, 'vehicula condimentum curabitur in', '708.41', 3, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', 0),
(421, 'ultrices', '598.72', 2, NULL, 1),
(422, 'venenatis', '594.42', 2, NULL, 0),
(423, 'lacinia eget tincidunt', '446.83', 8, NULL, 0),
(424, 'elit ac', '117.73', 12, NULL, 1),
(425, 'posuere nonummy integer', '658.06', 11, NULL, 0),
(426, 'scelerisque mauris', '553.07', 1, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 0),
(427, 'et eros vestibulum ac', '834.30', 7, 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 0),
(428, 'aliquam lacus morbi quis', '368.11', 2, 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 0),
(429, 'vel ipsum praesent blandit', '488.30', 10, 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', 0),
(430, 'augue vestibulum ante', '733.59', 3, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', 1),
(431, 'nullam sit amet turpis', '216.84', 7, 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 1),
(432, 'sem praesent', '359.23', 1, 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus', 1),
(433, 'semper porta', '581.77', 1, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 0),
(434, 'sed magna', '148.76', 5, 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', 1),
(435, 'pede lobortis', '953.77', 1, 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 1),
(436, 'molestie nibh in', '928.69', 9, NULL, 0),
(437, 'diam neque vestibulum eget', '845.32', 7, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', 1),
(438, 'luctus et', '112.73', 3, 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 0),
(439, 'pede justo lacinia', '676.16', 1, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', 0),
(440, 'metus aenean fermentum', '635.03', 4, 'rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', 0),
(441, 'sed sagittis nam congue', '397.15', 1, NULL, 0),
(442, 'nunc commodo placerat', '116.27', 6, 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 0),
(443, 'non velit donec diam', '275.38', 6, 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', 0),
(444, 'donec quis', '484.94', 2, 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 0),
(445, 'odio in', '648.50', 5, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', 1),
(446, 'lacus morbi', '184.81', 2, 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', 0),
(447, 'ultricies eu nibh quisque', '212.71', 4, 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 0),
(448, 'luctus nec', '516.79', 9, NULL, 0),
(449, 'ut volutpat sapien arcu', '277.15', 2, 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 0),
(450, 'nibh', '367.73', 6, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 1),
(451, 'lobortis sapien', '178.02', 7, 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 0),
(452, 'vulputate justo in', '491.29', 9, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', 1),
(453, 'quam pharetra', '864.61', 6, 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 1),
(454, 'morbi sem mauris laoreet', '190.44', 7, NULL, 1),
(455, 'nibh in hac habitasse', '902.65', 7, NULL, 0),
(456, 'odio porttitor id consequat', '658.04', 10, NULL, 0),
(457, 'tristique tortor eu pede', '100.74', 9, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 0),
(458, 'sem fusce', '391.42', 6, 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', 0),
(459, 'fusce consequat nulla nisl', '806.04', 2, 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', 0),
(460, 'sapien cursus vestibulum', '159.22', 10, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam', 1),
(461, 'aliquet maecenas leo odio', '890.87', 9, 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 0),
(462, 'ligula vehicula consequat morbi', '356.83', 10, 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 1),
(463, 'donec ut', '975.85', 4, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', 0),
(464, 'cras', '809.14', 4, 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', 1),
(465, 'fringilla rhoncus mauris', '661.86', 7, 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget', 0),
(466, 'ultrices mattis', '342.74', 5, NULL, 0),
(467, 'pulvinar', '266.87', 6, NULL, 0),
(468, 'libero ut massa volutpat', '709.43', 3, 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', 1),
(469, 'dolor sit amet consectetuer', '144.98', 2, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', 1),
(470, 'pede ac', '189.04', 1, 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 0),
(471, 'montes nascetur ridiculus', '455.81', 3, 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis', 0),
(472, 'ut odio cras', '454.49', 5, 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', 0),
(473, 'rhoncus', '321.39', 1, NULL, 1),
(474, 'lectus', '537.49', 8, 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 1),
(475, 'erat', '661.74', 12, 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 0),
(476, 'et ultrices posuere', '152.49', 6, NULL, 0),
(477, 'pellentesque volutpat', '307.09', 7, NULL, 0),
(478, 'vulputate justo', '632.72', 1, NULL, 1),
(479, 'orci', '544.90', 1, 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', 1),
(480, 'blandit ultrices', '361.40', 3, 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 0),
(481, 'maecenas tristique', '647.87', 5, NULL, 1),
(482, 'justo eu', '166.38', 4, 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 0),
(483, 'neque duis', '211.81', 3, NULL, 0),
(484, 'ut', '854.93', 10, 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 1),
(485, 'volutpat', '278.41', 8, 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 0),
(486, 'condimentum id', '674.43', 12, 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', 0),
(487, 'vivamus in felis', '917.14', 1, 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 1),
(488, 'ultrices libero non mattis', '219.85', 7, NULL, 1),
(489, 'nulla', '296.93', 11, 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 1),
(490, 'bibendum', '943.31', 9, 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 1),
(491, 'aliquet', '815.21', 6, 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 1),
(492, 'nisl duis ac', '743.75', 3, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 1),
(493, 'aenean sit amet', '482.87', 2, 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 1),
(494, 'dolor', '416.42', 10, 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', 1),
(495, 'elementum', '641.14', 8, 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 1),
(496, 'velit eu est congue', '306.35', 2, 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 0),
(497, 'justo morbi', '797.72', 8, 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', 1),
(498, 'mi pede malesuada in', '881.91', 6, NULL, 1),
(499, 'donec odio', '846.60', 7, NULL, 1),
(500, 'sit amet consectetuer adipiscing', '205.90', 9, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam', 0),
(501, 'maecenas leo odio', '340.82', 10, 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', 0),
(502, 'a', '894.47', 3, 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `book_author`
--

CREATE TABLE IF NOT EXISTS `book_author` (
  `id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `style`
--

CREATE TABLE IF NOT EXISTS `style` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп даних таблиці `style`
--

INSERT INTO `style` (`id`, `title`) VALUES
(1, 'Baby'),
(2, 'Computers'),
(3, 'Test'),
(4, 'Outdoors'),
(5, 'Shoes'),
(6, 'Electronics'),
(7, 'Beauty'),
(8, 'Music'),
(9, 'Kids'),
(10, 'Games'),
(11, 'Home'),
(12, 'Books'),
(21, 'New style');

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;