SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 2015
AND genres LIKE '%Adventure%'
AND primaryTitle != 'Everest'
AND primaryTitle != 'The Wildest Dream'
ORDER BY averageRating DESC
LIMIT 5