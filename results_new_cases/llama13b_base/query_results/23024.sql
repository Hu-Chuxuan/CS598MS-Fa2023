SELECT t1.title, t1.imdb_id, t1.original_title, t1.start_year, t1.genres, t2.average_rating, t2.num_votes, t3.primary_name, t3.birth_year, t3.death_year, t3.primary_profession, t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.imdb_id = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.directors = t4.directors
JOIN title_principals t5 ON t1.ordering = t5.ordering
WHERE t1.genres = 'thriller'
AND t2.average_rating > 7
AND t3.primary_profession = 'actor'
AND t4.directors = 'Martin Scorsese'
AND t5.category = 'actor'
AND t5.job = 'leading'
AND t5.characters = 'Leonardo DiCaprio'
GROUP BY t1.title, t1.imdb_id, t1.original_title, t1.start_year, t1.genres, t2.average_rating, t2.num_votes, t3.primary_name, t3.birth_year, t3.death_year, t3.primary_profession, t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
HAVING COUNT(DISTINCT t5.characters) > 1
ORDER BY t2.average_rating DESC, t1.start_year DESC