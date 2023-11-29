SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1995
AND genres LIKE '%Adventure%'
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0113497', 'tt0111282')  -- Exclude Jumanji (1995) and A Bad Moms Christmas (2017)
ORDER BY averageRating DESC
LIMIT 1