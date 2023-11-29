SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2010
AND tb.genres LIKE '%Adventure%'
AND tb.tconst NOT IN ('tt1355644')
ORDER BY tr.averageRating DESC
LIMIT 5