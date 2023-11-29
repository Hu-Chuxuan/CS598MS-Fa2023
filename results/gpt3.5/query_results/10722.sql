SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%3D%'
AND tb.primaryTitle NOT IN ('Avatar', 'Interstellar', 'The Revenant')
ORDER BY tr.averageRating DESC
LIMIT 5