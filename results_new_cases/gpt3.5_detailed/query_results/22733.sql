SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Suspense%'
AND startYear = 2004
AND primaryTitle != 'The Manchurian Candidate'
AND primaryTitle NOT IN ('Fargo', 'A Quiet Place', 'World War Z')
ORDER BY averageRating DESC
LIMIT 5