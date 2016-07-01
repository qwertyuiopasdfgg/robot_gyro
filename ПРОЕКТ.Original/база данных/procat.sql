-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.49-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных procat
CREATE DATABASE IF NOT EXISTS `procat` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `procat`;


-- Дамп структуры для таблица procat.akter
CREATE TABLE IF NOT EXISTS `akter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.akter: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `akter` DISABLE KEYS */;
INSERT INTO `akter` (`ID`, `name`, `familia`) VALUES
	(1, 'Клинт', 'Иствуд'),
	(2, 'Илай', 'Уоллак'),
	(3, 'Альдо', ' Джуффре'),
	(4, 'Сильвестр', 'Сталлоне'),
	(5, 'Джейсон', 'Стэйтем'),
	(6, 'Дольф', 'Лундгрен'),
	(7, 'Терри', 'Крюс'),
	(8, 'Рэнди', 'Кутюр'),
	(9, 'Лиам', 'Хемсворт'),
	(10, 'Нань', 'Юй'),
	(11, 'Чак', 'Норрис'),
	(12, 'Арнольд', 'Шварценеггер'),
	(13, 'Том', 'Хэнкс'),
	(14, 'Дэвид', 'Морс'),
	(15, 'Майкл', 'Дункан'),
	(16, 'Джон', 'Сэксон'),
	(17, 'Рони ', 'Блейкли'),
	(18, 'Роберт', 'Де Ниро'),
	(19, 'Джейсон', 'Стэйтем'),
	(20, 'Доминик', 'Пёрселл'),
	(21, 'Клинт', 'Иствуд');
/*!40000 ALTER TABLE `akter` ENABLE KEYS */;


-- Дамп структуры для таблица procat.akterfilm
CREATE TABLE IF NOT EXISTS `akterfilm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDaktera` int(11) DEFAULT NULL,
  `IDfilm` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_akterfilm_akter` (`IDaktera`),
  KEY `FK_akterfilm_disk1` (`IDfilm`),
  KEY `ID` (`ID`),
  CONSTRAINT `FK_akterfilm_akter` FOREIGN KEY (`IDaktera`) REFERENCES `akter` (`ID`),
  CONSTRAINT `FK_akterfilm_disk1` FOREIGN KEY (`IDfilm`) REFERENCES `disk1` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.akterfilm: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `akterfilm` DISABLE KEYS */;
INSERT INTO `akterfilm` (`ID`, `IDaktera`, `IDfilm`) VALUES
	(4, 1, 3),
	(5, 2, 3),
	(6, 3, 3),
	(7, 12, 7),
	(8, 5, 7),
	(9, 6, 7),
	(10, 9, 7),
	(11, 10, 7),
	(12, 8, 7),
	(13, 4, 7),
	(14, 7, 7),
	(15, 11, 7),
	(16, 13, 4),
	(17, 14, 4),
	(18, 15, 4),
	(19, 16, 6),
	(20, 15, 6);
/*!40000 ALTER TABLE `akterfilm` ENABLE KEYS */;


-- Дамп структуры для таблица procat.disk1
CREATE TABLE IF NOT EXISTS `disk1` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  `god` int(11) DEFAULT NULL,
  `kolvo` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.disk1: ~12 rows (приблизительно)
/*!40000 ALTER TABLE `disk1` DISABLE KEYS */;
INSERT INTO `disk1` (`ID`, `Name`, `god`, `kolvo`) VALUES
	(3, 'Хороший, плохой, злой', 1966, 11),
	(4, 'Зеленая миля', 1999, 7),
	(5, 'Корпорация монстров', 2001, 4),
	(6, 'Кошмар на улице Вязов', 1984, 4),
	(7, 'Неудержимые 2', 2012, 5),
	(48, 'Высотка', 2016, 6),
	(49, 'Запретная зона', 2012, 24),
	(50, 'Белоснежка и Охотник 2', 2016, 34);
/*!40000 ALTER TABLE `disk1` ENABLE KEYS */;


-- Дамп структуры для таблица procat.filmjanr
CREATE TABLE IF NOT EXISTS `filmjanr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `film` int(11) DEFAULT NULL,
  `janr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_filmjanr_disk1` (`film`),
  KEY `FK_filmjanr_janr1` (`janr`),
  CONSTRAINT `FK_filmjanr_disk1` FOREIGN KEY (`film`) REFERENCES `disk1` (`ID`),
  CONSTRAINT `FK_filmjanr_janr1` FOREIGN KEY (`janr`) REFERENCES `janr1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.filmjanr: ~15 rows (приблизительно)
/*!40000 ALTER TABLE `filmjanr` DISABLE KEYS */;
INSERT INTO `filmjanr` (`ID`, `film`, `janr`) VALUES
	(19, 4, 'детектив'),
	(20, 4, 'драма'),
	(21, 5, 'мультфильм'),
	(22, 5, 'комедия'),
	(23, 6, 'ужасы'),
	(24, 7, 'боевик'),
	(25, 3, 'вестерн'),
	(30, 48, 'драма'),
	(31, 48, 'игра'),
	(32, 49, 'ужасы'),
	(33, 50, 'фэнтези');
/*!40000 ALTER TABLE `filmjanr` ENABLE KEYS */;


-- Дамп структуры для таблица procat.filmrejis
CREATE TABLE IF NOT EXISTS `filmrejis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDrejis` int(11) DEFAULT NULL,
  `IDfilm` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_filmrejis_rejicer` (`IDrejis`),
  KEY `FK_filmrejis_disk1` (`IDfilm`),
  CONSTRAINT `FK_filmrejis_disk1` FOREIGN KEY (`IDfilm`) REFERENCES `disk1` (`ID`),
  CONSTRAINT `FK_filmrejis_rejicer` FOREIGN KEY (`IDrejis`) REFERENCES `rejicer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.filmrejis: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `filmrejis` DISABLE KEYS */;
INSERT INTO `filmrejis` (`ID`, `IDrejis`, `IDfilm`) VALUES
	(2, 1, 3),
	(3, 2, 7),
	(4, 3, 5),
	(5, 5, 5),
	(6, 4, 5),
	(7, 6, 6),
	(8, 7, 4);
/*!40000 ALTER TABLE `filmrejis` ENABLE KEYS */;


-- Дамп структуры для таблица procat.filmstrana
CREATE TABLE IF NOT EXISTS `filmstrana` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDfilma` int(11) DEFAULT NULL,
  `Idstrani` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_filmstrana_disk1` (`IDfilma`),
  KEY `FK_filmstrana_strana1` (`Idstrani`),
  CONSTRAINT `FK_filmstrana_disk1` FOREIGN KEY (`IDfilma`) REFERENCES `disk1` (`ID`),
  CONSTRAINT `FK_filmstrana_strana1` FOREIGN KEY (`Idstrani`) REFERENCES `strana1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.filmstrana: ~16 rows (приблизительно)
/*!40000 ALTER TABLE `filmstrana` DISABLE KEYS */;
INSERT INTO `filmstrana` (`ID`, `IDfilma`, `Idstrani`) VALUES
	(13, 4, 'США'),
	(14, 5, 'США'),
	(15, 6, 'США'),
	(16, 7, 'США'),
	(17, 3, 'США'),
	(18, 3, 'Германия(ФРГ)'),
	(19, 3, 'Испания'),
	(20, 3, 'Италия'),
	(22, 48, 'Ирландия'),
	(23, 48, 'Великобритания '),
	(24, 49, 'США'),
	(25, 50, 'США');
/*!40000 ALTER TABLE `filmstrana` ENABLE KEYS */;


-- Дамп структуры для таблица procat.janr1
CREATE TABLE IF NOT EXISTS `janr1` (
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.janr1: ~29 rows (приблизительно)
/*!40000 ALTER TABLE `janr1` DISABLE KEYS */;
INSERT INTO `janr1` (`name`) VALUES
	('аниме'),
	('биография'),
	('боевик'),
	('вестерн'),
	('военный'),
	('детектив'),
	('детский'),
	('документальный'),
	('драма'),
	('другое'),
	('игра'),
	('история'),
	('комедия'),
	('короткометражка'),
	('криминал'),
	('мелодрама'),
	('музыка'),
	('мультфильм'),
	('мюзикл'),
	('приключение'),
	('семейный'),
	('сериал'),
	('спорт'),
	('ток-шоу'),
	('триллер'),
	('ужасы'),
	('фантастика'),
	('фильм-нуар'),
	('фэнтези');
/*!40000 ALTER TABLE `janr1` ENABLE KEYS */;


-- Дамп структуры для таблица procat.klien
CREATE TABLE IF NOT EXISTS `klien` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  `namefilm` int(11) DEFAULT NULL,
  `prodavec` int(11) DEFAULT NULL,
  `datavzyatia` date DEFAULT NULL,
  `datasdachi` date DEFAULT NULL,
  `cenaorendi` int(11) DEFAULT '150',
  `polnayacena` int(11) DEFAULT '500',
  PRIMARY KEY (`ID`),
  KEY `FK_Klien_disk1` (`namefilm`),
  KEY `FK_klien_prodavec` (`prodavec`),
  CONSTRAINT `FK_Klien_disk1` FOREIGN KEY (`namefilm`) REFERENCES `disk1` (`ID`),
  CONSTRAINT `FK_klien_prodavec` FOREIGN KEY (`prodavec`) REFERENCES `prodavec` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.klien: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `klien` DISABLE KEYS */;
INSERT INTO `klien` (`ID`, `name`, `familia`, `namefilm`, `prodavec`, `datavzyatia`, `datasdachi`, `cenaorendi`, `polnayacena`) VALUES
	(31, 'qwert', 'w', 4, 1, '2016-01-01', '2016-01-08', 150, 500);
/*!40000 ALTER TABLE `klien` ENABLE KEYS */;


-- Дамп структуры для таблица procat.prodavec
CREATE TABLE IF NOT EXISTS `prodavec` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.prodavec: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `prodavec` DISABLE KEYS */;
INSERT INTO `prodavec` (`ID`, `FIO`) VALUES
	(1, 'Prod1'),
	(2, 'Prod2'),
	(3, 'Prod3');
/*!40000 ALTER TABLE `prodavec` ENABLE KEYS */;


-- Дамп структуры для таблица procat.rejicer
CREATE TABLE IF NOT EXISTS `rejicer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `familia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.rejicer: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `rejicer` DISABLE KEYS */;
INSERT INTO `rejicer` (`ID`, `name`, `familia`) VALUES
	(1, 'Серджио', 'Леоне'),
	(2, 'Саймон', 'Уэст'),
	(3, 'Пит', 'Доктер'),
	(4, 'Дэвид ', 'Силверман'),
	(5, 'Ли', 'Анкрич'),
	(6, 'Уэс', 'Крэйвен'),
	(7, 'Фрэнк', 'Дарабонт'),
	(9, 'aaa', 'aaa'),
	(10, 'qwert', 'qwert'),
	(11, 'Гери', 'МакКендри');
/*!40000 ALTER TABLE `rejicer` ENABLE KEYS */;


-- Дамп структуры для таблица procat.strana1
CREATE TABLE IF NOT EXISTS `strana1` (
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы procat.strana1: ~59 rows (приблизительно)
/*!40000 ALTER TABLE `strana1` DISABLE KEYS */;
INSERT INTO `strana1` (`name`) VALUES
	('Австралия'),
	('Австрия'),
	('Азербайджан'),
	('Албания'),
	('Алжир'),
	('Аргентина'),
	('Армения'),
	('Беларусь'),
	('Бельгия'),
	('Болгария'),
	('Боливия'),
	('Бразилия'),
	('Великобритания '),
	('Венгрия'),
	('Вьетнам'),
	('Габон'),
	('Гаити'),
	('Германия'),
	('Германия(ГДР)'),
	('Германия(ФРГ)'),
	('Гонконг'),
	('Греция'),
	('Грузия'),
	('Дания'),
	('Другая...'),
	('Египет'),
	('Израиль'),
	('Индия'),
	('Ирак'),
	('Иран'),
	('Ирландия'),
	('Исландия'),
	('Испания'),
	('Италия'),
	('Казахстан'),
	('Канада'),
	('Колумбия'),
	('Корея Северная'),
	('Корея Южная'),
	('Латвия'),
	('Литва'),
	('Лихтенштейн'),
	('Люксембург'),
	('Нидерланды'),
	('Новая Зеландия'),
	('Перу'),
	('Россия'),
	('СССР'),
	('США'),
	('Узбекистан'),
	('Украина'),
	('Финляндия'),
	('Франция'),
	('Хорватия'),
	('Чехия'),
	('Швейцария'),
	('Швеция'),
	('Эстония'),
	('Япония');
/*!40000 ALTER TABLE `strana1` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
