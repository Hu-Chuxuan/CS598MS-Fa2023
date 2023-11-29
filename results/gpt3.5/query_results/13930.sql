SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND startYear > 2000
AND averageRating >= 8
AND primaryTitle NOT IN ('Gladiator  (2000)', 'Robin Hood  (2010)')
ORDER BY averageRating DESC
LIMIT 5