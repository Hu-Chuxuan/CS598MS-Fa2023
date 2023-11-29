SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear < 1990
AND tb.tconst NOT IN ('tt0085241', 'tt1396484', 'tt0087800')
ORDER BY tr.averageRating DESC
LIMIT 10