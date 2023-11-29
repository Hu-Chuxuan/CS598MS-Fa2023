SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2017
AND tb.tconst NOT IN ('tt0948470', 'tt6359956')  -- excluding A Bad Moms Christmas (2017) and Bad Moms (2016)
ORDER BY tr.averageRating DESC
LIMIT 5