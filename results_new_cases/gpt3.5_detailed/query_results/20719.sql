SELECT tconst, primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings USING (tconst)
WHERE genres LIKE '%Action%' OR genres LIKE '%Comedy%' OR genres LIKE '%Thriller%'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10