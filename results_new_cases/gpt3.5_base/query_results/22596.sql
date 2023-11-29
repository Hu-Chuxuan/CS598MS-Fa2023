SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'documentary' 
AND tb.genres LIKE '%music%' 
AND tb.tconst NOT IN ('Friday Night Lights  (2004)', 'Clash of the Titans  (1981)', 'Hoosiers (1986)') 
ORDER BY tr.averageRating DESC 
LIMIT 5