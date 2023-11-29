SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Adventure%' AND startYear >= 1990 AND averageRating > 6.5
AND tconst NOT IN ('tt0097576', 'tt8391994', 'tt0161056', 'tt0087469')
ORDER BY numVotes DESC
LIMIT 10