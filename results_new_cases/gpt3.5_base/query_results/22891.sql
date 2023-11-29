SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Fifty Shades of Grey  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 10