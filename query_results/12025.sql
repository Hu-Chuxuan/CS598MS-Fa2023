SELECT * FROM (title_recommendation JOIN title_ratings ON rating_id = tconst_id AND genre IN ('Action')) WHERE user_rating >= 7