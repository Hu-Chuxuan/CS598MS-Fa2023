SELECT TOP 10 * FROM imdb.title_recommendation WHERE user_id = 7 AND genre IN ('comedy') ORDER BY rating DESC