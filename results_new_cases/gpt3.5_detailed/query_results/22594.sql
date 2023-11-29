SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' 
AND tb.genres LIKE '%Thriller%' 
AND tb.genres LIKE '%Mystery%'
AND tb.startYear <= 2022 
AND tb.tconst NOT IN ('tt0884328', 'tt0361748', 'tt5013056', 'tt4555426')
ORDER BY tr.averageRating DESC
LIMIT 10