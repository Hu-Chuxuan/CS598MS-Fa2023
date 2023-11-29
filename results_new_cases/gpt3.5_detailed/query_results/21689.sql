SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND startYear >= 1980
AND startYear <= 1990
AND tconst != 'tt0096734'  -- excluding the user's favorite movie
AND tconst NOT IN ('tt0185103')  -- excluding the user's historical preference
ORDER BY averageRating DESC
LIMIT 5