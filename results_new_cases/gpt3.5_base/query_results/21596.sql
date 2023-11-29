SELECT primaryTitle
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Mystery%'
AND primaryTitle NOT IN ('Pulp Fiction', 'Kill Bill: Volume 1')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5