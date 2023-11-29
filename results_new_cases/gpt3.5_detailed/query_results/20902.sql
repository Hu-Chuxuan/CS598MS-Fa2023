SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.titleType = 'movie'
AND (tb.primaryTitle NOT IN ('Fast & Furious', 'Coming to America', 'The Ring', 'The Silence of the Lambs'))
ORDER BY tr.averageRating DESC
LIMIT 5