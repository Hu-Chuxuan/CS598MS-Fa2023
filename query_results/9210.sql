SELECT * FROM (title_ratings INNER JOIN name_basics ON rating = averageRating AND title = titleType AND genre IN ('Comedy') ORDER BY avg(rating)) AS RATINGS WHERE numVOTES >= 10