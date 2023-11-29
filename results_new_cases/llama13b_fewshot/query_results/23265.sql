SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'White Chicks' LIMIT 1)) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND startYear > 2000