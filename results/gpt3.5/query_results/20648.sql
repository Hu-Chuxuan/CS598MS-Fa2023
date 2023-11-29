SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 1990
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0099864', 'tt1396484', 'tt0170262', 'tt4154756')
ORDER BY tr.averageRating DESC
LIMIT 5