-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 10 2019 г., 14:23
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `workflow`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `thirdname` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `degree` int(11) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`id`, `firstname`, `secondname`, `thirdname`, `university`, `position`, `degree`, `rank`, `status`, `phone`, `email`, `active`) VALUES
(1, 'Петренко', 'Вячеслав', 'Иванович', 'Северо-Кавказский федеральный университет', 'Заведующий кафедрой ОТЗИ', 2, 2, 'Руководитель', '', '', 1),
(2, 'Тебуева', 'Фариза', 'Биляловна', 'Северо-Кавказский федеральный университет', 'Заведующий кафедрой ПМКБ', 4, 2, 'Руководитель', '', '', 1),
(4, 'Антонов', 'Владимир', 'Олегович', 'Северо-Кавказский федеральный университет', 'Старший преподаватель кафедры ПМКБ', 1, 1, 'Исследователь', '', '', 1),
(5, 'Гурчинский', 'Михаил', 'Михайлович', 'Северо-Кавказский федеральный университет', 'Лаборант кафедры ПМКБ', 1, 1, 'Аспирант кафедры ПМКБ', '', '', 1),
(6, 'Рябцев', 'Сергей', 'Сергеевич', 'Северо-Кавказский федеральный университет', 'Инженер, преподаватель кафедры ПМКБ, ассистент кафедры ОТЗИ', 1, 1, 'Аспирант кафедры ПМКБ', '', '', 1),
(7, 'Павлов', 'Андрей', 'Сергеевич', 'Северо-Кавказский федеральный университет', 'Инженер-лаборант, ассистент кафедры ПМКБ', 1, 1, 'Аспирант кафедры ПМКБ', '89614401349', 'losde5530@gmail.com, andrew.pavlov.2015@yandex.ru', 1),
(8, 'Шутова', 'Юлия', 'Александровна', 'Северо-Кавказский федеральный университет', 'Сотрудник на общественных началах', 1, 1, 'Аспирант кафедры ОТЗИ', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `journal`
--

INSERT INTO `journal` (`id`, `title`, `theme`, `comment`) VALUES
(1, 'SDIS-2018', '', 'Студенческая конференция');

-- --------------------------------------------------------

--
-- Структура таблицы `paper`
--

CREATE TABLE `paper` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `db` int(10) NOT NULL DEFAULT '1',
  `active` int(10) NOT NULL DEFAULT '1',
  `source_id` varchar(255) NOT NULL,
  `doi` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `project_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `paper`
--

INSERT INTO `paper` (`id`, `title`, `date`, `status`, `db`, `active`, `source_id`, `doi`, `link`, `comments`, `project_id`) VALUES
(1, 'Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-12-19', 1, 2, 1, '1', '', '', '', 1),
(2, 'Повседневная практика показывает, что укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития.', '2018-11-19', 0, 1, 1, '1', '', '', '', 1),
(3, 'Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании новых предложений.', '2018-09-01', 1, 1, 1, '1', '', '', '', 1),
(4, 'Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке модели развития.', '2018-12-19', 1, 1, 1, '1', '', '', '', 1),
(5, 'Повседневная практика показывает, что укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития.', '2018-11-19', 0, 1, 1, '1', '', '', '', 1),
(6, '2Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-09-01', 1, 1, 1, '1', '', '', '', 1),
(7, 'Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-12-19', 1, 2, 1, '1', '', '', '', 1),
(8, '1Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-11-19', 0, 1, 1, '1', '', '', '', 1),
(9, '2Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-09-01', 1, 1, 1, '1', '', '', '', 1),
(10, 'Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-12-19', 1, 1, 1, '1', '', '', '', 1),
(11, '1Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-11-19', 0, 1, 1, '1', '', '', '', 1),
(12, '2Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-09-01', 1, 1, 1, '1', '', '', '', 1),
(13, 'Сравнительный обзор методов обеспечения информационной безопасности от утечки информации в задачах цифровой экономики', '2018-12-19', 1, 1, 1, '1', '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `paper_author`
--

CREATE TABLE `paper_author` (
  `id` int(10) NOT NULL,
  `paper_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `paper_author`
--

INSERT INTO `paper_author` (`id`, `paper_id`, `author_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 7),
(4, 2, 1),
(5, 3, 8),
(6, 4, 1),
(7, 4, 2),
(8, 5, 7),
(9, 6, 5),
(10, 6, 6),
(11, 7, 1),
(12, 8, 2),
(13, 9, 5),
(14, 10, 1),
(15, 11, 4),
(16, 12, 1),
(17, 13, 2),
(18, 13, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`id`, `title`, `date`, `status`) VALUES
(1, 'Студенческое конструкторское бюро', '2018-09-01', 1),
(2, '«Разработка программно-\r\nаппаратного комплекса системы управления на основе решения обратной задачи\r\nдинамики и кинематики» в рамках ФЦПИР 2014-2020 (уникальный идентификатор\r\nRFMEFI57517X0166) при финансовой поддержке Министерства образования и науки\r\nРоссийской Федерации', '2017-09-26', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paper_author`
--
ALTER TABLE `paper_author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `paper`
--
ALTER TABLE `paper`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `paper_author`
--
ALTER TABLE `paper_author`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
