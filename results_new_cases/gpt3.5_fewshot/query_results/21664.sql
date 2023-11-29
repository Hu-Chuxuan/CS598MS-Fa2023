SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0
AND FIND_IN_SET('Apocalypse', tb.genres) > 0
AND tb.startYear > 2010
AND tb.titleType = 'movie'