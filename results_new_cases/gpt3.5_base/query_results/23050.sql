SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1990
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0099864', 'tt0081505')
ORDER BY tr.averageRating DESC
LIMIT 5