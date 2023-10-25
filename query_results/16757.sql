SELECT DISTINCT
	title_basic.primaryTitle AS Movie Title,
	genreList = ( SELECT genre FROM genres WHERE id IN (
		SELECT genreID FROM title_ratings JOIN title_crew ON title_rating.movieID=title_crew.id AND rating IS NOT NULL) GROUP BY genre ORDER BY count DESC LIMIT 20 )
FROM
(   SELECT * from title_basics LEFT OUTER JOIN title_principal ON title_basics.movieId=title_prinicpal.movieId