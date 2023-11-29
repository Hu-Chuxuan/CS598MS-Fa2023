SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.tconst NOT IN ('tt0032138', 'tt0032138', 'tt0054215')
ORDER BY tr.averageRating DESC
LIMIT 5