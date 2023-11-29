SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Romance%' 
AND tr.averageRating > 7 
AND (tb.primaryTitle != 'Waiting for Forever' OR tb.startYear != 2010) 
AND tb.primaryTitle NOT IN ('Jumanji', 'Baywatch', 'Rampage') 
ORDER BY tr.averageRating DESC 
LIMIT 1