SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear < 1981
AND genres LIKE '%Comedy%'
AND genres LIKE '%Action%'
ORDER BY averageRating DESC
LIMIT 5