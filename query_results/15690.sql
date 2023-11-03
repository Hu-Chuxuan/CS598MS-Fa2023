SELECT t.* FROM title AS t JOIN title_ratings AS r ON t.titleId = r.titleId WHERE t.isAdult!= "yes" AND EXISTS( SELECT * FROM rating AS rr WHERE rr.rating >= 6 AND rr.userID IN ('a','b') ) ORDER BY avgRating DESC LIMIT 5