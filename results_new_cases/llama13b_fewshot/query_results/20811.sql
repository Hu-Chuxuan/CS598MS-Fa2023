SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020
AND FIND_IN_SET('It Follows', tb.genres) > 0
AND (SELECT AVG(rating) FROM title_ratings WHERE tb.primaryTitle = title_ratings.title LIMIT 1) > 6