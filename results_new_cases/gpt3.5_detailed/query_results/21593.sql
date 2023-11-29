SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Action%' OR genres LIKE '%Spy%')
AND titleType = 'movie'
AND startYear >= 1990
AND averageRating >= 7
AND primaryTitle != 'Argo'
ORDER BY numVotes DESC
LIMIT 1