SELECT primaryTitle, startYear, averageRating, numVotes, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND genres LIKE '%Animation%'
AND tconst NOT IN ('tt2096673', 'tt0139414', 'tt0107131')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5