SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2016
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt3521164', 'tt2294629', 'tt2277860')
ORDER BY tr.averageRating DESC
LIMIT 5