import psycopg2

username = 'Plysko'
password = '1234'
database = 'Lab_2_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT film_name, quantity FROM 
(filmawards INNER JOIN film ON film.film_id = filmawards.film_id) 
ORDER BY filmawards.quantity
'''

query_2 = '''
SELECT genre_name, Count(filmgenres.film_id) as quantity 
FROM (filmgenres INNER JOIN genres ON filmgenres.genre_id = genres.genre_id)
GROUP BY genres.genre_name ORDER BY quantity
'''

query_3 = '''
SELECT COUNT(film_name) as quantity, extract(year from release_date) as year 
FROM Film GROUP BY year ORDER BY year
'''


conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()
    cur.execute(query_1)
    print("Кількість Оскарів кожного фільму")
    for row in cur:
        print(row)
    print()

    cur = conn.cursor()
    cur.execute(query_2)
    print("Частка фільмів кожного жанру")
    for row in cur:
        print(row)
    print()

    print("Кількість фільмів, що виходять, в залежності від року")
    cur = conn.cursor()
    cur.execute(query_3)
    for row in cur:
        print(f'({row[0]}, {str(row[1])})')
    print()