SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Drama%')
AND startYear >= 2000
AND startYear <= 2020
AND primaryTitle != 'Mean Girls'
ORDER BY numVotes DESC
LIMIT 5