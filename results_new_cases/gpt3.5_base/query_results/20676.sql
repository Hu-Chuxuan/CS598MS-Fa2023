SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Chicago (2002)', 'Step Brothers (2008)')
ORDER BY averageRating DESC
LIMIT 5