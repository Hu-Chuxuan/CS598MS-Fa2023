SELECT DISTINCT
    t.title_id AS MovieId,
		t.genre_ids AS GenreIds,
		c.character_name AS CharacterNames,
		t.title_type AS TitleTypes,
		t.primary_title as PrimaryTitle,
		t.original_title AS OriginalTitle,
		CASE WHEN t.is_adult = 'yes' THEN 'true' ELSE 'false' END ISADULT,
		DATEDIFF(YEAR, t.start_year, CURRENT_TIMESTAMP()) - DATEDIFF(DAY, t.end_year, CURRENT_TIMESTAMP()),
		COALESCE((SELECT COUNT(*) FROM ratings r WHERE r.movie_rating_id IN (t.title_id)), 0) NUMBEROFUSERREACTIONS,
FROM movies m INNER JOIN cast c ON m.cast_id=c.cast_id AND m.title_id=(SELECT MAX(m2.title_id) from movies m2 where m2.user_id=? AND m2.category='actor')
INNER JOIN genres g ON m.genre_id=g.genre_id
WHERE EXISTS ( SELECT * FROM user_movies um WHERE um.user_id=?)
AND EXISTS ( SELECT * FROM rating r WHERE r.user_id=? AND r.movie_rating_id in (select max(title_rating_id)) )
GROUP BY M.MovieID