SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Death Race  (2008)', 'Fast & Furious 6 (2013)', 'Fast & Furious  (2009)')
ORDER BY tr.averageRating DESC
LIMIT 5