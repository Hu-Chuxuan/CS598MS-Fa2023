SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Animation%'
AND tb.runtimeMinutes <= 120
AND tb.tconst NOT IN ('tt3521164')  -- excluding previous movie 'Moana'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5