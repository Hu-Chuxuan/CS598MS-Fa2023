SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Trading Places'
AND startYear != 1983
AND primaryTitle != 'Dumb and Dumber To'
AND startYear != 2014
AND genres LIKE '%Comedy%'
AND (primaryTitle = 'Dumb and Dumber' OR primaryTitle = 'Dumb and Dumber To')
ORDER BY averageRating DESC
LIMIT 5