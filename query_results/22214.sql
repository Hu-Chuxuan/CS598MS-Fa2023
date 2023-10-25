SELECT * FROM
( SELECT t.title_id AS id,
		CASE WHEN SUM((m.rating / 10)) > 8 THEN "Recommended" ELSE "Not Recommended" END AS rating
FROM movies m INNER JOIN titles t ON t.movie_ID = m.title_id AND t.title_type = 'MO'
GROUP BY t.title_id ) AS T
INNER JOIN
( select tb.* from title_basic tb where tb.primary_name like '%Scarlett%') as b WHERE b.title_id=tb.title_id