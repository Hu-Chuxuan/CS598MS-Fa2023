SELECT DISTINCT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%')
AND (tb.startYear <= 1999)
AND tb.tconst NOT IN ('tt0163187', 'tt0283426')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10