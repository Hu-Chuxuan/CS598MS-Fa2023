SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.isAdult = 0
AND tb.genres LIKE '%War%' 
AND tb.genres LIKE '%Action%'
ORDER BY tr.averageRating DESC
LIMIT 10