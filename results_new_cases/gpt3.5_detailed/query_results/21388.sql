SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Kids%'
AND title_basics.startYear >= 2010
AND title_ratings.numVotes > 1000
AND title_basics.tconst NOT IN ('tt0314331')  -- excluding 'Love Actually (2003)'
ORDER BY averageRating DESC
LIMIT 3