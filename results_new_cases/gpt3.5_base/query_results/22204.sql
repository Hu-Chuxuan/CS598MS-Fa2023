SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Documentary%'
AND tb.primaryTitle NOT IN ('Coco (2017)')
ORDER BY tr.averageRating DESC
LIMIT 10