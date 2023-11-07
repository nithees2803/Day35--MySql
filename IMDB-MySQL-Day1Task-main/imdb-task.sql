-- MySQL Day1 IMDB Task

-- Creating movie table;

CREATE TABLE Movies(
    Movie_id INTEGER PRIMARY KEY,
    Name TEXT,
    Year INTEGER
);

-- Inserting movies data;

INSERT INTO Movies VALUES(001,'All Quiet On The Western Front',2022);
INSERT INTO Movies VALUES(002,'Thiruchitrambalam',2022);
INSERT INTO Movies VALUES(003,'Sardar',2022);
INSERT INTO Movies VALUES(004,'Nope',2022);

-- Creating media table;

CREATE TABLE Media(
    Media_id INTEGER,
    Poster TEXT,
    Trailer TEXT
);

-- Inserting media data;

INSERT INTO Media VALUES(001, 'https://upload.wikimedia.org/wikipedia/en/c/c3/All_quiet_on_the_western_front_%282022_film%29.jpg','https://youtu.be/hf8EYbVxtCY');
INSERT INTO Media VALUES(002,'https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Thiruchitrambalam_poster.jpg/220px-Thiruchitrambalam_poster.jpg','https://youtu.be/tNnPHz1u3RM');
INSERT INTO Media VALUES(003,'https://m.media-amazon.com/images/M/MV5BYzc3NDI0NzQtYWYyYi00ZmJkLTgxOWMtZTA1MWM2MDQ5YmZjXkEyXkFqcGdeQXVyMTEzNzg0Mjkx._V1_.jpg','https://youtu.be/8OQzz_i3KFE');
INSERT INTO Media VALUES(004,'https://m.media-amazon.com/images/M/MV5BZjI4YWU5MWUtZTg4ZC00MmYzLWIyMjMtODhhOGQ4YTY5MmVkXkEyXkFqcGdeQXVyMTUzOTcyODA5._V1_.jpg');

SELECT * FROM Movies
inner join Media
on Movie_id=Media_id;

-- Creating artists table;

CREATE TABLE Artists(
    Artist TEXT,
    Role TEXT,
    M_id INTEGER
);

-- Inserting artists data;

INSERT INTO Artists VALUES('Edward Berger','Director',001);
INSERT INTO Artists VALUES('Felix Kammerer','Male Lead',001);
INSERT INTO Artists VALUES('Mithran Jawahar','Director',002);
INSERT INTO Artists VALUES('Dhanush','Male Lead',002);
INSERT INTO Artists VALUES('Nithya Menon','Female Lead',002);
INSERT INTO Artists VALUES('P S Mithran','Director',003);
INSERT INTO Artists VALUES('Karthi','Male Lead',003);
INSERT INTO Artists VALUES('Jordan Peele','Director',004);
INSERT INTO Artists VALUES('Daniel Kaluuya','Male Lead',004);

SELECT * FROM Movies
inner join Artists
on Movie_id=M_id;

-- Creating genre table;

CREATE TABLE Genre(
    Genre TEXT,
    Genre_id INTEGER
);

-- Inserting genre data;

INSERT INTO Genre VALUES('Action'001);
INSERT INTO Genre VALUES('War',001);
INSERT INTO Genre VALUES('Comedy',002);
INSERT INTO Genre VALUES('Drama',002);
INSERT INTO Genre VALUES('Drama',003);
INSERT INTO Genre VALUES('Action',003);
INSERT INTO Genre VALUES('Horror',004);
INSERT INTO Genre VALUES('Sci-Fi',004);

SELECT * FROM Movies
inner join Genre
on Movie_id=Genre_id;

-- Creating review table;

CREATE TABLE Review(
    Rating FLOAT,
    Review_id INTEGER
);

-- Inserting review data;

INSERT INTO Review VALUES(7.9,002);
INSERT INTO Review VALUES(7.6,003);
INSERT INTO Review VALUES(6.9,004);
INSERT INTO Review VALUES(7.8,001);

SELECT * FROM Movies
inner join Review
on Movie_id=Review_id;