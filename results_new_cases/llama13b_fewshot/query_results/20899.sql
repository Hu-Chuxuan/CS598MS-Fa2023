SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('American Pie', tb.genres) > 0
AND FIND_IN_SET('Scary Movie', tb.genres) > 0