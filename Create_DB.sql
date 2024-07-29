CREATE TABLE Genres (
    ID_genre INT PRIMARY KEY,
    Name_genre VARCHAR(255) NOT NULL
);
CREATE TABLE Artists (
    ID_artist INT PRIMARY KEY,
    Name_artist VARCHAR(255) NOT NULL
);
CREATE TABLE Artist_Genre (
    ID_artist INT,
    ID_genre INT,
    FOREIGN KEY (ID_artist) REFERENCES Artists(ID_artist),
    FOREIGN KEY (ID_genre) REFERENCES Genres(ID_genre),
    PRIMARY KEY (ID_artist, ID_genre)
);
CREATE TABLE Albums (
    ID_album INT PRIMARY KEY,
    Name_album VARCHAR(255) NOT NULL,
    Year_release VARCHAR(10) NOT NULL
);
CREATE TABLE Artist_Album (
    ID_artist INT,
    ID_album INT,
    FOREIGN KEY (ID_artist) REFERENCES Artists(ID_artist),
    FOREIGN KEY (ID_album) REFERENCES Albums(ID_album),
    PRIMARY KEY (ID_artist, ID_album)
);
CREATE TABLE Tracks (
    ID_track INT PRIMARY KEY,
    Name_track VARCHAR(255) NOT NULL,
    Duration DECIMAL(10, 2) NOT NULL,
    ID_album INT,
    FOREIGN KEY (ID_album) REFERENCES Albums(ID_album)
);
CREATE TABLE Compilations (
    ID_compilation INT PRIMARY KEY,
    Name_compilation VARCHAR(255) NOT NULL,
    Year_release VARCHAR(10) NOT NULL
);
CREATE TABLE Track_Compilation (
    ID_track INT,
    ID_compilation INT,
    FOREIGN KEY (ID_track) REFERENCES Tracks(ID_track),
    FOREIGN KEY (ID_compilation) REFERENCES Compilations(ID_compilation),
    PRIMARY KEY (ID_track, ID_compilation)
);
