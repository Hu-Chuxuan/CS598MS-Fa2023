SELECT t.* FROM title_basic AS t JOIN cast AS c ON c.title_id = t.movie_id WHERE t.genre LIKE 'comedy' AND t.primaryTitle LIKE '%Meet%'