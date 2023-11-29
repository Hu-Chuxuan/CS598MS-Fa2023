SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 1980 
AND startYear < 1990
AND primaryTitle <> 'Take Me Home Tonight'
AND genres LIKE '%Music%'
ORDER BY averageRating DESC
LIMIT 5