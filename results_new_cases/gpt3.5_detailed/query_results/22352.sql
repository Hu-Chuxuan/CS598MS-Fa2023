SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2008
AND tb.tconst NOT IN ('tt0800039')
ORDER BY tr.averageRating DESC
LIMIT 10