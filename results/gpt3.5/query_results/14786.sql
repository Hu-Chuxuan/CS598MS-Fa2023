SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.genres IS NOT NULL
AND tb.tconst NOT IN ('tt0109830', 'tt6266538')
ORDER BY tr.averageRating DESC
LIMIT 10