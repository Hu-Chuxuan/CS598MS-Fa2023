SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 1980
AND startYear <= 1990
AND genres LIKE '%Adventure%'
AND tconst NOT IN ('tt0068646', 'tt0089218', 'tt0390521')  --excluding The Godfather, The Goonies, and Super Size Me
ORDER BY averageRating DESC
LIMIT 5