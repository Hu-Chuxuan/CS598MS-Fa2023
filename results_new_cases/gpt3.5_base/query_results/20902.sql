SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Fast & Furious', 'Coming to America', 'The Ring', 'The Silence of the Lambs')
ORDER BY tr.averageRating DESC
LIMIT 10