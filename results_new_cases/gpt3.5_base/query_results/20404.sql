SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear <= 2000
AND tb.tconst NOT IN ('tt0077651', 'tt0117571')
ORDER BY tr.averageRating DESC
LIMIT 5