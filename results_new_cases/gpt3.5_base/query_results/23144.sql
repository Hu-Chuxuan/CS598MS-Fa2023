SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE 
(tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Fantasy%' OR tb.genres LIKE '%Romance%')
AND tb.startYear > 1962
AND tb.tconst NOT IN ('tt0093779', 'tt0022913')
ORDER BY tr.averageRating DESC
LIMIT 5