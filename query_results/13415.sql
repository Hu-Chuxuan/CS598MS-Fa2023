SELECT tb.* FROM title_basic AS tb INNER JOIN
( SELECT DISTINCT rating_id FROM ratings WHERE user_rating = 'Good') AS r ON r.rating_id = tb.titleId