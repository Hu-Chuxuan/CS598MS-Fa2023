SELECT * FROM (title_rating INNER JOIN title_recommendation ON rating >= 6 AND rating <= 8) WHERE user_id =?