SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Scream (1996)', 'Scary Movie ')
ORDER BY tr.averageRating DESC
LIMIT 10