SELECT primaryTitle, startYear, averageRating 
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 2012
AND genres LIKE '%Action%'
AND tconst NOT IN ('tt0133093', 'tt0232500', 'tt0232383') 
ORDER BY averageRating DESC 
LIMIT 5