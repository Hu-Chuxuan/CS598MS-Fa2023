SELECT tb.* FROM imdb_movies AS m JOIN imdb_titletype AS t ON m.titleType=t.titleType WHERE ((m.primaryTitle LIKE '%Alien%'))
UNION ALL SELECT m.* FROM imdb_movie AS m INNER JOIN imdb_name_basics AS nb USING(primaryTitle)