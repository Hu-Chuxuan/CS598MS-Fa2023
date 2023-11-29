SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND NOT FIND_IN_SET('Action', tb.genres) > 0
AND NOT FIND_IN_SET('Adventure', tb.genres) > 0
AND NOT FIND_IN_SET('Science Fiction', tb.genres) > 0
AND startYear > 1980
AND startYear < 2010
AND (SELECT COUNT(*) FROM title_principals WHERE tconst = tb.primaryTitle AND category = 'actor' AND job = 'lead') > 2