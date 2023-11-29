SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres NOT LIKE '%Action%'
AND genres NOT LIKE '%Thriller%'
AND runtimeMinutes > 60
AND averageRating >= 6
AND startYear <= 2015
AND title_basics.tconst NOT IN ('tt0247638', 'tt1661199')  -- Exclude known preferences
ORDER BY averageRating DESC
LIMIT 5