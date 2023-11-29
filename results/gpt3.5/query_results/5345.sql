SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
OR tb.genres LIKE '%Action%' 
OR tb.genres LIKE '%Fantasy%'
AND tb.startYear >= 2000
AND tb.isAdult = 1
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt0418279', 'tt1399103')
ORDER BY tr.averageRating DESC