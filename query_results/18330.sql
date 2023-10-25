SELECT * FROM ( SELECT * FROM ( SELECT rating, count(*) as votes FROM ratings GROUP BY rating) AS r JOIN titles ON r.rating = titles.averageRating AND titles.numVotes > 0 WHERE titles.primaryTitle LIKE 'The%' ) AS t JOIN casts USING(titleId)