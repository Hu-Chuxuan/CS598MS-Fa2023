SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' OR genres LIKE '%Horror%'
AND primaryTitle NOT IN ('Fifty Shades of Grey  (2015)')
ORDER BY averageRating DESC
LIMIT 10