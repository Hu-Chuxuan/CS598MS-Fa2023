SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND startYear > 1990
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tr.tconst = tb.tconst AND tr.averageRating > 5) > 5