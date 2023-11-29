SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Hangover', tb.genres) > 0
AND FIND_IN_SET('Girls Trip', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020