SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 2010
AND genres LIKE '%Romance%'
AND primaryTitle NOT IN ('Pretty Woman', 'Dear John')
ORDER BY averageRating DESC
LIMIT 5