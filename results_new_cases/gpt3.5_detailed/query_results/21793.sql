SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0086250', 'tt0464142', 'tt0169547', 'tt0137523', 'tt0268978')
ORDER BY tr.averageRating DESC
LIMIT 5