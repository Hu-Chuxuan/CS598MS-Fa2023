SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating 
FROM title_basics tb1 
JOIN title_ratings tr ON tb1.tconst = tr.tconst 
WHERE tb1.genres LIKE '%Thriller%' 
AND tb1.startYear BETWEEN 2000 AND 2020 
AND tb1.tconst NOT IN ('tt2267998', 'tt1568346') 
ORDER BY tr.averageRating DESC 
LIMIT 5