SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Action%'
AND tb.startYear > 1997
AND tb.startYear < 2020
AND tb.tconst NOT IN ('tt1600524', 'tt0082971', 'tt0088763') 
ORDER BY tr.averageRating DESC
LIMIT 5