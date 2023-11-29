SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tb.startYear >= 2010
AND tb.runtimeMinutes <= 120
AND tb.tconst NOT IN ('tt0418763', 'tt1375666')
ORDER BY tr.averageRating DESC
LIMIT 10