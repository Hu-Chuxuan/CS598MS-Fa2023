SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND (FIND_IN_SET('Monster', tb.genres) > 0 OR FIND_IN_SET('Creature', tb.genres) > 0)
AND startYear < 1980