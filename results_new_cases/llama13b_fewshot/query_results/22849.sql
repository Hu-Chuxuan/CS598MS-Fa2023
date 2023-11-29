SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Science Fiction', tb.genres) > 0
AND FIND_IN_SET('Unusual', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tr.tconst = tb.tconst AND tr.averageRating > 7) > 1