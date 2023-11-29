SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear > 2002
AND tb.startYear <= 2022
AND tb.tconst NOT IN ('tt0095016', 'tt0116629', 'tt0281358')
ORDER BY tr.averageRating DESC
LIMIT 5