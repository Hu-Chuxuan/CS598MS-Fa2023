SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND genres LIKE '%Drama%'
AND startYear > 1980
AND startYear < 1990
AND isAdult = 0
AND averageRating > 7
AND primaryTitle NOT IN ('Steel Magnolias (1989)', '9 to 5  (1980)')
ORDER BY averageRating DESC
LIMIT 5