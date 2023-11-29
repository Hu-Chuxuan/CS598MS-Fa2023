SELECT tb.tconst, tb.primaryTitle, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear > 2000
AND tb.tconst NOT IN ('tt0078346', 'tt0081573', 'tt0468569')
ORDER BY tr.averageRating DESC
LIMIT 10