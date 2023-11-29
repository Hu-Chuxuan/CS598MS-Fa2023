SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Dark Comedy', tb.genres) > 0
AND FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 1990
AND startYear < 2010
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tb.tconst = tr.tconst AND tr.averageRating > 7) > 2