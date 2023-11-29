SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.titleType = 'movie'
AND tb.startYear > 1980
AND tb.tconst NOT IN ('tt2277860')
ORDER BY tr.averageRating DESC
LIMIT 5