SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('It (1990)', 'The Exorcist (1973)')
ORDER BY tr.averageRating DESC
LIMIT 5