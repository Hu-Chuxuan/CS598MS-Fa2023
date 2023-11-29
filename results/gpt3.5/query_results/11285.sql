SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear BETWEEN 1980 AND 2008
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0107048', 'tt0116695', 'tt0838283')
ORDER BY tr.averageRating DESC
LIMIT 10