SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 2013
AND tb.startYear >= 1999
AND tb.genres LIKE '%Romance%'
AND tb.tconst NOT IN ('tt0331314')
ORDER BY tr.averageRating DESC
LIMIT 5