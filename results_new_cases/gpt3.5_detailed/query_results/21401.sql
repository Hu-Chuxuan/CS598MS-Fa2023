SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Stoner%'
AND tb.startYear >= 1988
AND tb.tconst NOT IN ('tt0096320', 'tt0117008')
ORDER BY tr.averageRating DESC
LIMIT 10