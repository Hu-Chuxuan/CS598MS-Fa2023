SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear BETWEEN 1975 AND 1985
AND tb.tconst NOT IN ('tt0084522', 'tt0409459', 'tt0103064', 'tt1431045', 'tt0088249', 'tt0088513')
ORDER BY tr.averageRating DESC
LIMIT 5