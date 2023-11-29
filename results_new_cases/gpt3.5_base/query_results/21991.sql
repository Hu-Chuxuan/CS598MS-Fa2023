SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear BETWEEN 2010 AND 2020 
AND tb.primaryTitle NOT IN ('Captain Phillips', 'Sully', 'Girls Trip') 
AND tr.averageRating >= 7 
ORDER BY tr.averageRating DESC 
LIMIT 5