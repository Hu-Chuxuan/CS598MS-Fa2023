SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Musical%'
AND tb.primaryTitle NOT IN ('Grease  (1978)', 'Dreamgirls  (2006)')
ORDER BY tr.averageRating DESC
LIMIT 5