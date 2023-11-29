SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt5776858', 'tt5433138', 'tt0857191', 'tt5013056', 'tt4555426')
ORDER BY tr.averageRating DESC
LIMIT 5