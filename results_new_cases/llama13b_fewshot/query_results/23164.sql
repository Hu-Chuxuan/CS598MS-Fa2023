SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Romance', tb.genres) > 0
AND startYear > 2000
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tb.tconst = tr.tconst AND tr.averageRating > 5) > 1