SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Musical%'
AND tb.startYear > 2012
AND tb.tconst NOT IN ('tt0120484', 'tt0293508', 'tt0147800', 'tt0116483')
ORDER BY tr.averageRating DESC
LIMIT 10