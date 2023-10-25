SELECT t.* FROM imdb_movie AS t WHERE
(
    SELECT avg(rating) from imdb_title_ratings where imdb_title_ratings.imdb_title = imdb_movies.primaryTitle AND rating > 7/10
) >=.8 OR
(
	SELECT count(*) from imdb_name_acting_roles as mr INNER JOIN imdb_name_basics na ON mr.nconst=na.nconst WHERE mr.job='character' AND na.category IN ('actor','actress') GROUP BY na.birthYear HAVING COUNT(*)>2 ORDER by na.ordering DESC LIMIT 5