SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' OR genres LIKE '%Documentary%'
AND primaryTitle NOT IN ('Coco  (2017)')
ORDER BY averageRating DESC
LIMIT 10