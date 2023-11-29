SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND startYear = 2004
AND tb.primaryTitle != 'The Last Dragon'
LIMIT 10