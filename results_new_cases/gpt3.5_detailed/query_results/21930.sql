SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE tconst != 'tt0116861' -- Exclude Clerks (1994)
AND tconst != 'tt0118842' -- Exclude Chasing Amy (1997)
AND genres LIKE '%Comedy%'
AND startYear > 1980 -- Considering relatively recent comedies 
ORDER BY averageRating DESC
LIMIT 5