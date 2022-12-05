INSERT INTO 
Film(film_id, film_name, release_date, runtime, production)
VALUES
(1, 'The Shawshank Redemption', '14.10.1994', 142, 'Columbia Pictures'),
(2, 'The Godfather', '24.03.1972', 175, 'Paramount Pictures'),
(3, 'The Godfather: Part II', '20.12.1974', 202, 'Paramount Pictures'),
(4, 'The Dark Knight', '18.07.2008', 152, 'Warner Bros. Pictures/Legendary'),
(5,'12 Angry Men', '01.04.1957', 96, 'Criterion Collection'),
(6,	'Schindler''s List', '04.02.1994', 195, 'Universal Pictures'),
(7, 'The Lord of the Rings: The Return of the King', '17.12.2003', 201, 'New Line Cinema'),
(8, 'Pulp Fiction', '14.10.1994', 154, 'Miramax Films'), 
(9, 'Fight Club', '15.10.1999', 139, '20th Century Fox'),
(10, 'The Lord of the Rings: The Fellowship of the Ring', '19.12.2001', 178, 'New Line Cinema');

INSERT INTO
Genres(genre_id, genre_name)
VALUES
('Crime', 'Crime'),
('Drama', 'Drama'),
('Adventure', 'Adventure'),
('Fantasy', 'Fantasy'),
('Biography', 'Biography'),
('Action', 'Action'),
('History', 'History'),
('Sci-Fi', 'Science fiction');

INSERT INTO
Rating_platforms(platform_id, platform_name)
VALUES
('Metascore', 'Metascore'),
('IMDb', 'Internet Movie Database'),
('Metacritic', 'Metacritic'),
('IGN', 'IGN'),
('Rotten Tomatoes', 'Rotten Tomatoes');

INSERT INTO
Awards(award_id, award_name)
VALUES
('Oscar', 'Oscar'),
('BAFTA', ' BAFTA Film Award'),
('Golden Globe', 'Golden Globe'),
('Saturn', 'Saturn Award'),
('ASC', 'ASC Award');

INSERT INTO 
FilmGenres(film_id, genre_id)
VALUES
(1, 'Crime'),
(1, 'Drama'),
(2, 'Crime'),
(2, 'Drama'),
(3, 'Crime'),
(3, 'Drama'),
(4, 'Action'),
(4, 'Crime'),
(4, 'Drama'),
(5, 'Crime'),
(5, 'Drama'),
(6, 'Biography'),
(6, 'Drama'),
(6, 'History'),
(7, 'Adventure'),
(7, 'Drama'),
(7, 'Fantasy'),
(8, 'Crime'),
(8, 'Drama'),
(9, 'Drama'),
(10, 'Adventure'),
(10, 'Drama'),
(10, 'Fantasy');

INSERT INTO 
FilmAwards(film_id, award_id, quantity)
VALUES
(1, 'Oscar', 7),
(2, 'Oscar', 3),
(3, 'Oscar', 6),
(4, 'Oscar', 2),
(5, 'Oscar', 3),
(6, 'Oscar', 7),
(7, 'Oscar', 11),
(8, 'Oscar', 1),
(9, 'Oscar', 1),
(10, 'Oscar', 4);

INSERT INTO 
FilmRating(film_id, platform_id, rating)
VALUES
(1, 'Metascore', 80.0),
(1, 'IMDb', 9.3),
(2, 'Metascore', 100.0),
(2, 'IMDb', 9.2),
(3, 'Metascore', 85.0),
(3, 'IMDb', 9.0),
(4, 'Metascore', 82.0),
(4, 'IMDb', 9.0),
(5, 'Metascore', 96.0),
(5, 'IMDb', 8.9),
(6, 'Metascore', 93.0),
(6, 'IMDb', 8.9),
(7, 'Metascore', 94.0),
(7, 'IMDb', 8.9),
(8, 'Metascore', 94.0),
(8, 'IMDb', 8.8),
(9, 'Metascore', 66.0),
(9, 'IMDb', 8.8),
(10, 'Metascore', 92.0),
(10, 'IMDb', 8.8);