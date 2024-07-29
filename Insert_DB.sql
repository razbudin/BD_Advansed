INSERT INTO genres (ID_genre, Name_genre) VALUES
(1, 'Drum and Bass'),
(2, 'Dance'),
(3, 'Electronic'),
(4, 'Hip-hop');

INSERT INTO artists (id_artist, name_artist) VALUES
(1, 'Pendulum'),
(2, 'Cascada'),
(3, 'The Prodigy'),
(4, 'Snoop Dogg');

INSERT INTO albums (id_album, name_album, year_release) VALUES
(1, 'Hold Your Colour', '2005'),
(2, 'In Silico', '2008'),
(3, 'Everytime We Touch', '2006'),
(4, 'Perfect Day', '2007'),
(5, 'Experience', '1992'),
(6, 'Music for the Jilted Generation', '1994'),
(7, 'Doggystyle', '1993'),
(8, 'Tha Doggfather', '1996');

 INSERT INTO tracks (id_track , name_track , duration, id_album) VALUES
(1, 'Slam', 5.44, 1),
(2, 'Showdown', 5.37, 2),
(3, 'Ready For Love', 3.22, 3),
(4, 'Perfect Day', 3.42, 4),
(5, 'Jericho', 3.42, 5),
(6, 'Voodoo People', 6.27, 6),
(7, 'Lodi Dodi', 4.24, 7),
(8, '(Tear Em Off) Me & My Doggz', 3.41, 8);

INSERT INTO compilations (id_compilation , name_compilation , year_release) VALUES
(1, 'Pendulum no official', '2020'),
(2, 'Cascada Hits', '2019'),
(3, 'Their Law: The Singles', '2005'),
(4, 'The Best of Snoop Dogg', '2005');

INSERT INTO artist_genre (id_artist , id_genre) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO artist_album (id_artist , id_album) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8);

INSERT INTO track_compilation (id_track , id_compilation) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4);
