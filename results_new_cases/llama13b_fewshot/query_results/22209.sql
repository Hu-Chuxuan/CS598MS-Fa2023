SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND FIND_IN_SET('Mystery', tb.genres) > 0
AND startYear > 2000
AND (SELECT COUNT(*) FROM title_ratings WHERE tconst = tb.primaryTitle AND averageRating > 7) > 5