SELECT t.* FROM
(select * from imdb_movie where title_type = "Movie") as t JOIN
(select * from imdb_name where primary_profession="Director" AND director in ('Joel Coen','Ethan Coen'))as d ON t.title=d.primary_film ORDER BY rating DESC LIMIT 5