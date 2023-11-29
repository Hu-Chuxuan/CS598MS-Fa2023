SELECT * FROM
	( SELECT
		tconst AS TitleID,
		rating_average + 100/(numvotes+1) AS MovieScore,
		FROM tb_imdb_titleratings WHERE (titleid='tt0000001') ORDER BY rating_average DESC LIMIT 5 ) AS X
UNION ALL
	SELECT
		tconst AS TitleID,
		genre_count AS GenreCount,
		FROM tb_imdb_moviedata WHERE (titleid='tt0000001') GROUP BY genre_count ORDER BY GenreCount ASC LIMIT 5 