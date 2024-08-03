
--Название и продолжительность самого длительного трека.
SELECT name_track, duration 
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name_track, duration
FROM tracks
WHERE duration > 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_compilation, year_release
FROM compilations
WHERE year_release  >= '2018' AND year_release  <= '2020';

--Исполнители, чьё имя состоит из одного слова.
SELECT name_artist
FROM artists
WHERE name_artist NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name_track
FROM tracks
WHERE name_track LIKE '%My%';

--Количество исполнителей в каждом жанре.
SELECT COUNT(id_artist), id_genre
FROM artist_genre
GROUP BY id_genre;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_compilation.id_track), year_release, name_compilation
FROM track_compilation
JOIN compilations ON track_compilation.id_compilation = compilations.id_compilation
WHERE compilations.year_release >= '2019' AND compilations.year_release <= '2020'
GROUP BY compilations.id_compilation;

--Догружаю базу треком к альбому т.к. в базе по 1му треку на альбом
INSERT INTO tracks (id_track , name_track , duration, id_album) VALUES
(9, 'Doggfather', 3.57, 8);

--Средняя продолжительность треков по каждому альбому.
SELECT AVG(duration), name_album
FROM tracks
JOIN albums ON tracks.id_album = albums.id_album
GROUP BY albums.id_album;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name_artist 
FROM artists
WHERE name_artist NOT IN (SELECT name_artist --, albums.id_album, albums.year_release -- проверка
					                FROM artists
					                JOIN artist_album ON artist_album.id_artist = artists.id_artist
					                JOIN albums ON albums.id_album = artist_album.id_album
					                WHERE albums.year_release = '2020');

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT compilations.name_compilation
FROM compilations
JOIN track_compilation ON track_compilation.id_compilation = compilations.id_compilation
JOIN tracks ON tracks.id_track = track_compilation.id_track
JOIN albums ON albums.id_album = tracks.id_album
JOIN artist_album ON artist_album.id_album = albums.id_album
JOIN artists ON artists.id_artist = artist_album.id_artist
WHERE artists.name_artist = 'The Prodigy';
