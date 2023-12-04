--Задание 1
--не менее 4 исполнителей
INSERT INTO Artist
VALUES
	(1, 'Сплин'),
	(2, 'Король и Шут'),
	(3, 'Лобода'),
	(4, '#2Маши')
;

--не менее 3 жанров
INSERT INTO Genre
VALUES
	(1, 'Альтернативный рок'),
	(2, 'Панк-рок'),
	(3, 'Поп')
;

--не менее 3 альбомов
INSERT INTO Album
VALUES
	(1, 'Фонарь под глазом', 1997),
	(2, 'Всем нашим', 2018),
	(3, 'Sold Out', 2019),
	(4, 'Как в старой сказке', 2001),
	(5, 'Теперь нас много', 2020)
;

--не менее 6 треков
INSERT INTO Track 
VALUES
	(1, '«Много кофеина»', 206, 2),
	(2, '«Три цвета (Первый снег)»', 280, 1),
	(3, '«Мой проклятый старый дом»', 257, 4),
	(4, '«Пуля-дура»', 210, 3),
	(5, '«Мама, я танцую»', 252, 2),
	(6, '«Я забираю твою подругу»', 204, 5)
;

--не менее 4 сборников
INSERT INTO Collection 
VALUES
	(1, '«Boom Boom» (EP Remixes)', 2020),
	(2, 'Лучшие песни', 2019),
	(3, '«13 лет в рок-н-ролле»', 2018),
	(4, '«Зн@менатель»', 2000)
;

INSERT INTO Genre_Artist
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 3)
;

INSERT INTO Artist_Album
VALUES
	(1, 1, 1),
	(2, 2, 4),
	(3, 3, 3),
	(4, 4, 2),
	(5, 4, 5)
;

INSERT INTO Track_Collection
VALUES
	(1, 4, 1),
	(2, 3, 2),
	(3, 2, 3),
	(4, 2, 4)
;