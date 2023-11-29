SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear >= 1980 
AND startYear <= 1998 
AND tconst != 'tt0129387' -- Excluding There's Something About Mary
ORDER BY averageRating DESC
LIMIT 5