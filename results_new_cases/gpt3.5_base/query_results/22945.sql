SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.startYear >= 2000 
AND tb.genres LIKE '%Family%'
AND tb.primaryTitle NOT IN ('Jarhead', 'Inception')
ORDER BY tr.averageRating DESC
LIMIT 10