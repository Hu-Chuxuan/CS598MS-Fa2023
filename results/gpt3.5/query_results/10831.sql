SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1995
AND startYear <= 2010
AND primaryTitle NOT IN ('Fast & Furious', 'Gone in 60 Seconds', 'Men in Black', 'Mission: Impossible')
ORDER BY averageRating DESC
LIMIT 5