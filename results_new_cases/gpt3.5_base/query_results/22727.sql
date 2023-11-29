SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Seven', 'Snatch', 'Fight Club')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10