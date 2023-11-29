SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Drama%')
AND startYear >= 1980
AND startYear <= 1993
AND tconst NOT IN ('tt0097368', 'tt0080487', 'tt0088258', 'tt0098512')  
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10