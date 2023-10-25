SELECT * FROM
( SELECT t.*, tc.rating AS tv_rating, tc.numvotess as tv_numvote from title_ratings t join title_ratings tc ON t.title_id = tc.title_id WHERE tc.averageRatings >.7 ) AS T
JOIN ( SELECT r.*, rc.rating AS rr_rating, rc.numvotees as rr_numvotee from ratings r JOIN rating_categories rc ON r.category = rc.category AND rc.category IN ('Drama','Horror') WHERE rc.rating >= 6.0 GROUP BY r.category HAVING COUNT(*)>1 ORDER by count(*) DESC LIMIT 10) R ON T.title_name=R.movie_name
WHERE T.title_genre='Drama' OR T.title_genre='Horror'