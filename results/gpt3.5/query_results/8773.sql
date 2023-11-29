SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Sci-Fi%'
AND primaryTitle NOT IN ('RoboCop', 'Men in Black 3', 'I, Robot', 'Independence Day', 'Arrival')
ORDER BY averageRating DESC
LIMIT 5