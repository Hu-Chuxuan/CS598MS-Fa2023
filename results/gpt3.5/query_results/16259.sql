SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 1990 
AND startYear < 2000 
AND genres LIKE '%Comedy%' 
AND genres LIKE '%Drama%' 
AND primaryTitle != 'Dazed and Confused  (1993)'
ORDER BY averageRating DESC
LIMIT 10