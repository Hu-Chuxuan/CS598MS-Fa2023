SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2008
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0449487', 'tt0137523')
ORDER BY averageRating DESC
LIMIT 10