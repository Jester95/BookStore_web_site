-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 27 2019 г., 08:11
-- Версия сервера: 5.5.58
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket_books`
--

CREATE TABLE `basket_books` (
  `id_bask` char(15) NOT NULL,
  `id_book` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `date_bask` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `basket_books`
--

INSERT INTO `basket_books` (`id_bask`, `id_book`, `quantity`, `date_bask`) VALUES
('', 2, 1, '0000-00-00'),
('', 14, 1, '0000-00-00'),
('ID5b0ec21572aee', 18, 2, '0000-00-00'),
('', 23, 11, '0000-00-00'),
('ID5b0ec21572aee', 25, 4, '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `name_book` varchar(100) NOT NULL,
  `id_publ` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `pages` int(4) NOT NULL,
  `price` int(4) NOT NULL,
  `dat` int(4) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id_book`, `name_book`, `id_publ`, `id_cat`, `author`, `pages`, `price`, `dat`, `image`) VALUES
(1, 'Ajax в действии', 4, 1, 'Дейв Крейн,Эрик Паскарелло,Даррен Джеймс,А.Назаренко', 640, 200, 2008, 'ajax.jpg'),
(2, 'Head Rush Ajax', 9, 7, 'Brett McLaughlin', 448, 195, 2008, 'head_rush_ajax.jpg'),
(3, 'Head First Java', 9, 7, 'Kathy Sierra,Beart Bates', 720, 210, 2017, 'head_first_java_.jpg'),
(4, 'Practical Microsoft Visual Studio', 10, 1, 'Peter Ritchie', 515, 110, 2016, 'visual_studio.jpg'),
(5, 'Назад к тебе', 1, 2, 'Sara Djio', 320, 25, 2018, 'nazad_k_tebe.jpg'),
(6, 'Пророчество Паладина', 1, 2, 'Mark Frost', 384, 37, 2018, 'prorochestvo_polodina.jpg'),
(7, 'Лейна.Вернуться домой', 1, 2, 'Mark Frost', 384, 20, 2018, 'leyna.jpg'),
(8, 'ЕГЭ.Физика', 3, 3, 'Shaparenko', 215, 15, 2015, 'fizika.jpg'),
(9, 'ЭГЕ.Литература', 3, 3, 'Nestereva', 304, 20, 2017, 'literatura.jpg'),
(10, 'ЭГЕ.Математика', 3, 3, 'Rogagina', 368, 25, 2017, 'matematika.jpg'),
(11, 'China Language', 2, 4, 'Poliglot', 320, 38, 2017, 'china.jpg'),
(12, 'English Grammer', 2, 4, 'Tatiyana Komyanova', 432, 15, 2016, 'english_grammer.jpg'),
(13, 'Spanish Language', 2, 4, 'Poliglot', 256, 27, 2018, 'spanish.jpg'),
(14, '연세한국어 활용연습 3-1', 8, 5, '연세대', 320, 15, 2013, '연세활용 3-1.jpg'),
(15, '연세 한국어 5-1', 8, 5, '연세대', 225, 20, 2013, '연세한국어 5-1.jpg'),
(16, '연세 한국어 5-2', 8, 5, '연세대', 240, 20, 2013, '연세한국어 5-2.jpg'),
(17, '현장적용 운동생리학', 7, 6, 'Bob Murray, W. Larry Kenney', 200, 22, 2017, '현장적용.jpg'),
(18, '필라테스 바이블', 7, 6, '대한필라테스연맹', 488, 35, 2015, 'pilates.jpg'),
(19, '모두를 위한 체육 가르치기 3판', 7, 6, 'George Graham', 280, 20, 2014, '모두를 위한.jpg'),
(20, 'Chanel: Collections and Creations', 10, 8, 'Danièle Bott', 139, 36, 2007, 'chanel.jpg'),
(21, 'Alexander McQueen: Savage Beauty', 10, 8, ' Andrew Bolton', 240, 35, 2011, 'McQueen.jpg'),
(22, 'Tom Ford', 10, 8, 'Tom Ford, Bridget Foley', 414, 75, 2008, 'tomford.jpg'),
(23, 'The Soul of America', 11, 9, 'Jon Meacham', 372, 14, 2018, 'america.jpg'),
(24, 'The Return of George Washington: Uniting the States, 1783-1789', 11, 9, 'Edward J.Larson', 395, 15, 2014, 'washington.jpg'),
(25, 'Diana:Her True Story-in Her Own Words', 11, 9, 'Andrew Morton', 372, 14, 2018, 'diana.jpg'),
(26, 'Five Ingredient Cookbook', 5, 10, 'Hannie P.Scott', 395, 15, 2014, '5ingredient.jpg'),
(27, 'Quick and Easy Recipes:30 MINUTE MEALS', 5, 10, 'Hannie P.Scott', 51, 7, 2015, '30minute.jpg'),
(28, 'The Science of Cooking:Every Question Answered to Perfect Your Cooking', 5, 10, 'Dr.Stuart Farrimond', 256, 20, 2014, 'science_of_cooking.jpg'),
(29, 'Computer Hacking Beginners Guide', 4, 1, 'Alan T.Norman', 167, 8, 2016, 'hacking.jpg'),
(30, 'Coding All-in-One For Dummies', 9, 7, 'Nikhil Abraham', 792, 23, 2017, 'coding.jpg'),
(31, '과학적 트레이닝을 위한 인체해부학', 6, 6, 'Mark Vella', 46, 15, 2014, '인제해.jfif'),
(32, 'NSCA 체력관리의 정수 3판', 6, 6, 'Thomas R. Baechle, Roger W. Earle', 620, 35, 2013, '체력관리.jfif');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(11) NOT NULL,
  `name_cat` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_cat`, `name_cat`) VALUES
(1, 'Компьютерная литература'),
(2, 'Художественная литература'),
(3, 'Справочники'),
(4, 'Иностранные языки'),
(5, '한국어'),
(6, '스포츠'),
(7, '컴뮤터 기술'),
(8, 'Fashion'),
(9, 'Historical'),
(10, 'Cooking');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id_cust` int(11) NOT NULL,
  `fam` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `login` varchar(10) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`id_cust`, `fam`, `name`, `addr`, `mail`, `login`, `pass`) VALUES
(1, 'vaga', 'VAGA', 'faaf', 'vaga95@mail.com', 'vava', '111'),
(2, 'Tsedrik', 'Vagif', 'vaga95@mail.ru', 'vaga95@mail.com', 'vaga', '123'),
(3, 'fff', 'aaaa', 'ddddd', 'aaaaaa', 'ttttt', '111'),
(4, 'ssss', 'aaaa', 'aaaaaa', 'aaaaaaa', 'qqqqqqqqqq', '111'),
(5, 'Tsedrik', 'Vagif', '동보아파트', 'vaga95@mail.com', 'Rias', '111'),
(6, 'Tsoy', 'Andrey', 'soul', 'andr@kpr.ru', 'andr_soul', '111'),
(7, 'NIM', 'Kostya', 'MOSKOW', 'kaha@gruzin.ru', 'kaha', '111');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` char(15) NOT NULL,
  `date_ord` date NOT NULL,
  `id_cust` int(11) NOT NULL,
  `dilivery` int(1) NOT NULL,
  `bonus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_books`
--

CREATE TABLE `order_books` (
  `id_order` char(15) NOT NULL,
  `id_book` int(11) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `publishers`
--

CREATE TABLE `publishers` (
  `id_publ` int(11) NOT NULL,
  `name_publ` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `publishers`
--

INSERT INTO `publishers` (`id_publ`, `name_publ`) VALUES
(1, 'ПИТЕР'),
(2, 'BHV'),
(3, 'ЛОРИ'),
(4, 'Диалектика'),
(5, 'Que'),
(6, '굿스포츠'),
(7, '대한미디어'),
(8, '나무스'),
(9, '삼성당'),
(10, 'Longman'),
(11, 'Tor Books');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket_books`
--
ALTER TABLE `basket_books`
  ADD PRIMARY KEY (`id_book`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_cust`);

--
-- Индексы таблицы `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id_publ`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket_books`
--
ALTER TABLE `basket_books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id_cust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id_publ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
