SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.isAdult = 1
AND tb.startYear > 1980
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0045152', 'tt0086856', 'tt0059742')
ORDER BY tr.averageRating DESC
LIMIT 5