SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle LIKE '%American Pie%' OR tb.primaryTitle LIKE '%Scary Movie%')
AND tb.startYear <= 2000
ORDER BY tr.averageRating DESC
LIMIT 10