SELECT * FROM rating WHERE (rating_type='user') AND (title_id IN(
		SELECT t_id from title_ratings where user_id =?)) ORDER BY avg_rating DESC LIMIT?