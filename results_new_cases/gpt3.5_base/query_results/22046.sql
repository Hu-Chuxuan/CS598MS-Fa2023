SELECT primaryTitle
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND startYear > 1990
AND primaryTitle NOT IN ('Superbad  (2007)', 'Grown Ups  (2010)', 'Ace Ventura: Pet Detective (1994)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5