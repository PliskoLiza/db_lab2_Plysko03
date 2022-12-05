-- Кількість Оскарів кожного фільму
SELECT film_name, quantity FROM (filmawards INNER JOIN film ON film.film_id = filmawards.film_id) ORDER BY filmawards.quantity

-- Частка фільмів кожного жанру
SELECT genre_name, Count(filmgenres.film_id) as quantity FROM (filmgenres INNER JOIN genres ON filmgenres.genre_id = genres.genre_id)
GROUP BY genres.genre_name ORDER BY quantity

-- Кількість фільмів, що виходять, в залежності від року
SELECT COUNT(film_name) as quantity, extract(year from release_date) as year FROM Film GROUP BY year ORDER BY year