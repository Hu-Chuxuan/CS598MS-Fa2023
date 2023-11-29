SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.genres = tb.genres
    AND tb2.primaryTitle IN (SELECT primaryTitle FROM title_basics WHERE startYear > 1975 AND startYear < 1995 LIMIT 10)
) > 0