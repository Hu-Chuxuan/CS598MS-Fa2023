SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Insidious', 'Jigsaw', 'Girls Trip')
ORDER BY tr.averageRating DESC
LIMIT 10