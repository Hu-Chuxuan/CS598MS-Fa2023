SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2015
AND genres NOT LIKE '%Comedy%'
AND primaryTitle NOT LIKE '%Trainwreck%'
AND primaryTitle NOT IN ('Spy', 'Ted 2')
ORDER BY averageRating DESC
LIMIT 5