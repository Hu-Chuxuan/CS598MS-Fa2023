SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Romance%'
AND genres LIKE '%Drama%'
AND genres NOT LIKE '%Animation%'
AND startYear > 1990
AND startYear < 2010
AND primaryTitle != 'The Princess and the Frog'
AND primaryTitle NOT LIKE '%Princess%'
AND averageRating > 7
ORDER BY numVotes DESC
LIMIT 5