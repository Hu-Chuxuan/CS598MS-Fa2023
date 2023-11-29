SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Drama%' 
AND tb.startYear >= 1980 
AND tb.tconst NOT IN ('tt0081505', 'tt1259521', 'tt0091499', 'tt3065204')
ORDER BY tr.averageRating DESC
LIMIT 10