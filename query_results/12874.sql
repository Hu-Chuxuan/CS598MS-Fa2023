SELECT t.* FROM titles AS t INNER JOIN title_recommendation_history AS r ON t.title = r.movie WHERE r.user_id IN ('5986cdfd-bffa-4ebe-baec-fcfafde11ce1')