--Задание 2
--Название и продолжительность самого длительного трека.
SELECT track_title, duration FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_title, duration FROM Track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_title FROM collection
WHERE year_of_realease BETWEEN 2018 AND 2020; 

--Исполнители, чьё имя состоит из одного слова.
SELECT name_pseudonym FROM Artist
WHERE name_pseudonym NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT track_title FROM Track
WHERE track_title ILIKE 'my %'
OR track_title ILIKE '% my'
OR track_title ILIKE '% my %'
OR track_title ILIKE 'my';

--Количество исполнителей в каждом жанре.
SELECT genre_title, COUNT(artist_id) FROM Genre AS g
JOIN Genre_Artist AS ga ON g.genre_id = ga.genre_id
GROUP BY genre_title;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(year_of_release) FROM Track AS t
JOIN Album AS a ON t.album_id = a.album_id
WHERE year_of_release BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT album_title, AVG(duration) FROM Album AS a
JOIN Track AS t ON a.album_id = t.album_id 
GROUP BY album_title;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name_pseudonym FROM Artist
WHERE name_pseudonym NOT IN (
	SELECT name_pseudonym FROM Artist AS ar
	JOIN Artist_Album AS aa ON ar.artist_id = aa.artist_id  
	JOIN Album AS al ON aa.album_id = al.album_id 
	WHERE year_of_release = 2020
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT collection_title, name_pseudonym FROM collection AS c 
JOIN Track_Collection AS tc ON c.collection_id = tc.collection_id  
JOIN Track AS tr ON tc.track_id = tr.track_id 
JOIN Album AS al ON tr.album_id = al.album_id 
JOIN Artist_Album AS ara ON al.album_id = ara.album_id 
JOIN Artist AS ar ON ara.artist_id = ar.artist_id 
WHERE name_pseudonym LIKE 'Сплин'
GROUP BY collection_title, name_pseudonym;