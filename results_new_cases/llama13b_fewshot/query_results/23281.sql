SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Adventure', tb.genres) > 0
AND FIND_IN_SET('Family', tb.genres) > 0
AND startYear > 2000
AND (tb.runtimeMinutes > 60 OR tb.runtimeMinutes = 0)
LIMIT 5