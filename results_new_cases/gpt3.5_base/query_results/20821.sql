SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Family%' 
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 1990 
AND tb.startYear <= 2005 
AND tb.tconst NOT IN ('tt0120623', 'tt0324941', 'tt0120587')
ORDER BY tr.averageRating DESC
LIMIT 10