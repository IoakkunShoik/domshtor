-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 31 2020 г., 15:22
-- Версия сервера: 10.3.22-MariaDB-1ubuntu1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `domshtor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogue`
--

CREATE TABLE `catalogue` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `categ` varchar(30) NOT NULL,
  `discr` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `compos` text NOT NULL,
  `care` text NOT NULL,
  `image` text NOT NULL,
  `res1` varchar(2) DEFAULT NULL,
  `res2` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `catalogue`
--

INSERT INTO `catalogue` (`id`, `name`, `categ`, `discr`, `price`, `compos`, `care`, `image`, `res1`, `res2`) VALUES
(1, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Canvas/1 BF 1.jpg\", \"images/Canvas/1 BF 2.jpg\"], \"t2\":[\"images/Canvas/2 BF 1.jpg\"], \"t3\":[\"images/Canvas/3 BF 1.jpg\"]}', NULL, NULL),
(2, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Domino/1 DN 1.jpg\", \"images/Domino/1 DN 2.jpg\", \"images/Domino/1 DN 3.jpg\", \"images/Domino/1 DN 4.jpg\"]}', NULL, NULL),
(3, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Fish/1 Fish 1.jpg\", \"images/Fish/1 Fish 2.jpg\", \"images/Fish/1 Fish 3.jpg\", \"images/Fish/1 Fish 4.jpg\"]}', NULL, NULL),
(4, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Flower city/1 FC 1.jpg\", \"images/Flower city/1 FC 2.jpg\", \"images/Flower city/1 FC 3.jpg\", \"images/Flower city/1 FC 4.jpg\",\"images/Flower city/1 FC 5.jpg\"]}', NULL, NULL),
(5, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Forest/1 FR 1.jpg\", \"images/Forest/1 FR 2.jpg\", \"images/Forest/1 FR 3.jpg\", \"images/Forest/1 FR 4.jpg\",\"images/Forest/1 FR 5.jpg\"]}', NULL, NULL),
(6, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Galaxy/1 GL 1.jpg\", \"images/Galaxy/1 GL 2.jpg\", \"images/Galaxy/1 GL 3.jpg\", \"images/Galaxy/1 GL 4.jpg\",\"images/Galaxy/1 GL 5.jpg\"]}', NULL, NULL),
(7, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Gentle clouds/1 GC 1.jpg\", \"images/Gentle clouds/1 GC 2.jpg\", \"images/Gentle clouds/1 GC 3.jpg\", \"images/Gentle clouds/1 GC 4.jpg\",\"images/Gentle clouds/1 GC 5.jpg\", \"images/Gentle clouds/1 GC 6.jpg\"]}', NULL, NULL),
(8, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Harlequin/1 HRL 1.jpg\"],\r\n\"t2\":[\"images/Harlequin/2 HRL 1.jpg\", \"images/Harlequin/2 HRL 2.jpg\"]\r\n}', NULL, NULL),
(9, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Hello Kitty/1 BC 1.jpg\", \"images/Hello Kitty/1 BC 2.jpg\", \"images/Hello Kitty/1 BC 3.jpg\", \"images/Hello Kitty/1 BC 4.jpg\",\"images/Hello Kitty/1 BC 5.jpg\"]}', NULL, NULL),
(10, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Linen/1 LN 1.png\", \"images/Linen/1 LN 2.png\", \"images/Linen/1 LN 3.png\", \"images/Linen/1 LN 4.png\"]}', NULL, NULL),
(11, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/magic star/1 MS 1.jpg\", \"images/magic star/1 MS 2.jpg\"], \"t2\":[\"images/magic star/2  MS 1.jpg\",\"images/magic star/2  MS 2.jpg\"], \"t3\":[\"images/magic star/3  MS 1.jpg\",\"images/magic star/3  MS 2.jpg\"]}', NULL, NULL),
(12, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Naturel/1 N 1.jpg\", \"images/Naturel/1 N 2.jpg\",\"images/Naturel/1 N 3.jpg\"], \"t2\":[\"images/Naturel/2 N 1.jpg\"], \"t3\":[\"images/Naturel/3 N 1.jpg\"]}', NULL, NULL),
(13, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Rainbow/1 RBW 1.jpg\", \"images/Rainbow/1 RBW 2.jpg\", \"images/Rainbow/1 RBW 3.jpg\", \"images/Rainbow/1 RBW 4.jpg\",\"images/Rainbow/1 RBW 5.jpg\"]}', NULL, NULL),
(14, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Rouse/1 MG 1.jpg\", \"images/Rouse/1 MG 2.jpg\", \"images/Rouse/1 MG 3.jpg\", \"images/Rouse/1 MG 4.jpg\"]}', NULL, NULL),
(15, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Samuel/1 SM 1.jpg\", \"images/Samuel/1 SM 2.jpg\", \"images/Samuel/1 SM 3.jpg\", \"images/Samuel/1 SM 4.jpg\"]}', NULL, NULL),
(16, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Sinell/1 Sin 1.jpg\", \"images/Sinell/1 Sin 2.jpg\", \"images/Sinell/1 Sin 3.jpg\", \"images/Sinell/1 Sin 4.jpg\", \"images/Sinell/1 Sin 5.jpg\", \"images/Sinell/1 Sin 6.jpg\"]}', NULL, NULL),
(17, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/SkyBoy/1 BR 1.jpg\", \"images/SkyBoy/1 BR 2.jpg\", \"images/SkyBoy/1 BR 3.jpg\", \"images/SkyBoy/1 BR 4.jpg\", \"images/SkyBoy/1 BR 5.jpg\", \"images/SkyBoy/1 BR 6.jpg\"]}', NULL, NULL),
(18, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Spring/1 Spr 1.jpg\", \"images/Spring/1 Spr 2.jpg\", \"images/Spring/1 Spr 3.jpg\", \"images/Spring/1 Spr 4.jpg\", \"images/Spring/1 Spr 5.jpg\"]}', NULL, NULL),
(19, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/The Palm/1 PL 1.jpg\", \"images/The Palm/1 PL 2.jpg\", \"images/The Palm/1 PL 3.jpg\", \"images/The Palm/1 PL 4.jpg\"]}', NULL, NULL),
(20, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Tree/1 TR 1.jpg\", \"images/Tree/1 TR 2.jpg\", \"images/Tree/1 TR 3.jpg\", \"images/Tree/1 TR 4.jpg\", \"images/Tree/1 TR 5.jpg\", \"images/Tree/1 TR 6.jpg\"]}', NULL, NULL),
(21, 'Имя', 'Шторы', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, incidunt voluptatibus. Fuga labore laudantium quia ipsam dolor sint aperiam beatae? Neque rem rerum veniam numquam nihil nisi ad doloribus. Sapiente!\r\n', '130000', 'сплав говна с картоном', 'стирать в молоке единорога', '{\"t1\":[\"images/Zigge/1 Zig 1.jpg\", \"images/Zigge/1 Zig 2.jpg\", \"images/Zigge/1 Zig 3.jpg\", \"images/Zigge/1 Zig 4.jpg\"], \"t2\":[\"images/Zigge/2 Zig 1.jpg\"], \"t3\":[\"images/Zigge/3 Zig 1.jpg\"]}', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
