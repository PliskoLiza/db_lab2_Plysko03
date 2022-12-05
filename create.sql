CREATE TABLE Film
(
  film_id      char(10)   NOT NULL ,
  film_name    text       NOT NULL ,
  release_date date       NULL ,
  runtime      int        NULL ,
  production   char(255)  NOT NULL
);


CREATE TABLE FilmGenres
(
  film_id     char(10)   NOT NULL ,
  genre_id    char(10)   NULL 
);


CREATE TABLE FilmAwards
(
  film_id     char(10)   NOT NULL ,
  award_id    char(10)   NULL ,
  quantity    int        NULL
);


CREATE TABLE FilmRating
(
  film_id       char(10)   NOT NULL ,
  platform_id   char(10)   NULL ,
  rating        NUMERIC        NULL
);


CREATE TABLE Genres
(
  genre_id     char(10)   NOT NULL ,
  genre_name   text       NOT NULL 
);


CREATE TABLE Awards
(
  award_id     char(50)   NOT NULL ,
  award_name   text       NOT NULL 
);


CREATE TABLE Rating_platforms
(
  platform_id      char(50)   NOT NULL ,
  platform_name    char(50)   NOT NULL 
);


ALTER TABLE Film ADD PRIMARY KEY (film_id);
ALTER TABLE Genres ADD PRIMARY KEY (genre_id);
ALTER TABLE Awards ADD PRIMARY KEY (award_id);
ALTER TABLE Rating_platforms ADD PRIMARY KEY (platform_id);


ALTER TABLE FilmGenres ADD CONSTRAINT FK_FilmGenres_Film 
FOREIGN KEY (film_id) REFERENCES Film (film_id);
ALTER TABLE FilmGenres ADD CONSTRAINT FK_FilmGenres_Genres 
FOREIGN KEY (genre_id) REFERENCES Genres (genre_id);

ALTER TABLE FilmAwards ADD CONSTRAINT FK_FilmAwards_Film 
FOREIGN KEY (film_id) REFERENCES Film (film_id);
ALTER TABLE FilmAwards ADD CONSTRAINT FK_FilmAwards_Awards 
FOREIGN KEY (award_id) REFERENCES Awards (award_id);

ALTER TABLE FilmRating ADD CONSTRAINT FK_FilmRating_Film 
FOREIGN KEY (film_id) REFERENCES Film (film_id);
ALTER TABLE FilmRating ADD CONSTRAINT FK_FilmRating_Rating_platforms 
FOREIGN KEY (platform_id) REFERENCES Rating_platforms (platform_id);