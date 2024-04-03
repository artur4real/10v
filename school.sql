-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 18 2023 г., 15:55
-- Версия сервера: 5.6.51
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `school`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lichniye danniye uchenika`
--

CREATE TABLE `lichniye danniye uchenika` (
  `id_Lichniye_Danniye_Uchenika` int(50) NOT NULL,
  `First_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Second_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Login` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Svid_o_rozhden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lichniye danniye uchenika`
--

INSERT INTO `lichniye danniye uchenika` (`id_Lichniye_Danniye_Uchenika`, `First_name_uchenika`, `Second_name_uchenika`, `Last_name_uchenika`, `Email`, `Login`, `Password`, `Svid_o_rozhden`) VALUES
(1, 'Svetlana', 'Koroleva', 'Igorevna', 'Koroleva@mail.ru', 'Sveta2023', 'Koroleva123!', 'RD 11 567890'),
(2, 'Margarita', 'Boiko', 'Alexeevna', 'Boiko@mail.ru', 'Margo2023', 'Boiko123!', 'RD 10345555');

-- --------------------------------------------------------

--
-- Структура таблицы `lichniye danniye uchitelya`
--

CREATE TABLE `lichniye danniye uchitelya` (
  `id_Lichniye Danniye Uchitelya` int(50) NOT NULL,
  `First_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Second_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telephon` double NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Predmet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lichniye danniye uchitelya`
--

INSERT INTO `lichniye danniye uchitelya` (`id_Lichniye Danniye Uchitelya`, `First_name`, `Second_name`, `Last_name`, `Login`, `Password`, `Telephon`, `Email`, `Predmet`) VALUES
(1, 'Galina', 'Ivanova', 'Ivanovna', 'Galina2023', 'Ivanova123!', 8, 'User1@mail.ru', 'Matematica'),
(4, '', '', '', '', '', 0, '', ''),
(6, 'Ivan', 'Yurov', 'Sergeevich', 'Ivan2023!', 'Yurov123!', 8, 'User6@mail.ru', 'Phizkultura');

-- --------------------------------------------------------

--
-- Структура таблицы `uspevaemost uchenika`
--

CREATE TABLE `uspevaemost uchenika` (
  `id_Uspevaemost Uchenika` int(50) NOT NULL,
  `id_Predmet` int(50) NOT NULL,
  `Predmet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Class` int(50) NOT NULL,
  `Otsenka` int(50) NOT NULL,
  `Data_Otsenki` date NOT NULL,
  `Sred_ball` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zhurnal_uchitelya`
--

CREATE TABLE `zhurnal_uchitelya` (
  `id_Zhurnal_Uchitelya` int(50) NOT NULL,
  `id_Predmet` int(50) NOT NULL,
  `Class` int(50) NOT NULL,
  `First_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Second_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_name_uchenika` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Otsenka` int(50) NOT NULL,
  `Data_Otsenki` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lichniye danniye uchenika`
--
ALTER TABLE `lichniye danniye uchenika`
  ADD PRIMARY KEY (`id_Lichniye_Danniye_Uchenika`),
  ADD KEY `First_name_uchenika` (`First_name_uchenika`,`Second_name_uchenika`,`Last_name_uchenika`),
  ADD KEY `First_name_uchenika_2` (`First_name_uchenika`,`Second_name_uchenika`,`Last_name_uchenika`);

--
-- Индексы таблицы `lichniye danniye uchitelya`
--
ALTER TABLE `lichniye danniye uchitelya`
  ADD PRIMARY KEY (`id_Lichniye Danniye Uchitelya`);

--
-- Индексы таблицы `uspevaemost uchenika`
--
ALTER TABLE `uspevaemost uchenika`
  ADD PRIMARY KEY (`id_Uspevaemost Uchenika`),
  ADD KEY `id_Predmet` (`id_Predmet`),
  ADD KEY `Class` (`Class`),
  ADD KEY `Otsenka` (`Otsenka`),
  ADD KEY `Data_Otsenki` (`Data_Otsenki`);

--
-- Индексы таблицы `zhurnal_uchitelya`
--
ALTER TABLE `zhurnal_uchitelya`
  ADD PRIMARY KEY (`id_Zhurnal_Uchitelya`),
  ADD KEY `id_Predmet` (`id_Predmet`),
  ADD KEY `Class` (`Class`),
  ADD KEY `Otsenka` (`Otsenka`),
  ADD KEY `Data_Otsenki` (`Data_Otsenki`),
  ADD KEY `First_name_uchenika` (`First_name_uchenika`),
  ADD KEY `First_name_uchenika_2` (`First_name_uchenika`,`Second_name_uchenika`),
  ADD KEY `Last_name_uchenika` (`Last_name_uchenika`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lichniye danniye uchenika`
--
ALTER TABLE `lichniye danniye uchenika`
  MODIFY `id_Lichniye_Danniye_Uchenika` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `lichniye danniye uchitelya`
--
ALTER TABLE `lichniye danniye uchitelya`
  MODIFY `id_Lichniye Danniye Uchitelya` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `uspevaemost uchenika`
--
ALTER TABLE `uspevaemost uchenika`
  MODIFY `id_Uspevaemost Uchenika` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zhurnal_uchitelya`
--
ALTER TABLE `zhurnal_uchitelya`
  MODIFY `id_Zhurnal_Uchitelya` int(50) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `uspevaemost uchenika`
--
ALTER TABLE `uspevaemost uchenika`
  ADD CONSTRAINT `uspevaemost uchenika_ibfk_1` FOREIGN KEY (`id_Predmet`) REFERENCES `zhurnal_uchitelya` (`id_Predmet`);

--
-- Ограничения внешнего ключа таблицы `zhurnal_uchitelya`
--
ALTER TABLE `zhurnal_uchitelya`
  ADD CONSTRAINT `zhurnal_uchitelya_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `uspevaemost uchenika` (`Class`),
  ADD CONSTRAINT `zhurnal_uchitelya_ibfk_2` FOREIGN KEY (`Otsenka`) REFERENCES `uspevaemost uchenika` (`Otsenka`),
  ADD CONSTRAINT `zhurnal_uchitelya_ibfk_3` FOREIGN KEY (`Data_Otsenki`) REFERENCES `uspevaemost uchenika` (`Data_Otsenki`),
  ADD CONSTRAINT `zhurnal_uchitelya_ibfk_4` FOREIGN KEY (`First_name_uchenika`) REFERENCES `lichniye danniye uchenika` (`First_name_uchenika`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
