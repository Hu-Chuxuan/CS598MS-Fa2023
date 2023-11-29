SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE primaryTitle LIKE '%Horror%'
AND (
   genres LIKE '%Drama%'
   OR genres LIKE '%Mystery%'
)
AND averageRating > 7
AND numVotes > 1000
ORDER BY averageRating DESC