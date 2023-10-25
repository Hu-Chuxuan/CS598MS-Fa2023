SELECT * FROM (SELECT title_basic.*,(SELECT SUM(rating) AS ratingSum FROM title_ratings WHERE title = tb.title AND user_id = 1)) AS ratings
WHERE ((((SUM(rating)/COUNT(*))>0.8 OR COUNT(*) > 6 )AND ( (genre IN ('Comedy')))))
GROUP BY tb.title