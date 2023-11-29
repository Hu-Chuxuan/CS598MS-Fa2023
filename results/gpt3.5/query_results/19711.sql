SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2017
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt3783958', 'tt1392190', 'tt0095016', 'tt2911666', 'tt1320253', 'tt0479884')
ORDER BY tr.averageRating DESC
LIMIT 5