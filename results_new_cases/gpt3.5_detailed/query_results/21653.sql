SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND startYear <= 2022
AND endYear = '\N'
AND tconst NOT IN ('tt0357413')  -- Excluding user's previous preference
ORDER BY averageRating DESC
LIMIT 5