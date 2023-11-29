SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Silly', tb.genres) > 0
AND startYear > 2010
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tr.tconst = tb.tconst AND tr.averageRating > 6) > 0