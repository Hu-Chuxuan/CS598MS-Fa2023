SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.startYear BETWEEN 2000 AND 2010
AND tb.tconst NOT IN ('tt0338013', 'tt1375666')
ORDER BY tr.averageRating DESC
LIMIT 5