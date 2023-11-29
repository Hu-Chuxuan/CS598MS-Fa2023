SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' AND tb.genres LIKE '%Crime%'
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt1870479', 'tt0120903', 'tt1430132') 
ORDER BY tr.averageRating DESC
LIMIT 5