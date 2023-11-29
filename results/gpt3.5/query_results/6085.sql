SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2007
AND tb1.genres LIKE '%Romance%'
AND tb1.tconst NOT IN ('tt0431308', 'tt0338013')
ORDER BY tr.averageRating DESC
LIMIT 5