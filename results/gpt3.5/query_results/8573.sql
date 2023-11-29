SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.startYear < 1987
AND title_basics.genres LIKE '%Comedy%'
AND title_ratings.numVotes > 1000
AND title_basics.tconst NOT IN ('tt0090556', 'tt0092947', 'tt0093857')