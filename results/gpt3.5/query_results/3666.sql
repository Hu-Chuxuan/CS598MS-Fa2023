SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 1996
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0122718', 'tt0104257', 'tt0117665')
ORDER BY tr.averageRating DESC
LIMIT 5