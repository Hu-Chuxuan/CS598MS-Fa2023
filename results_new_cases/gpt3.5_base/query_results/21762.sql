SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Adventure%' 
AND tb.startYear BETWEEN 1980 AND 1995 
AND tb.primaryTitle != 'Bill & Ted\'s Bogus Journey' 
ORDER BY tr.averageRating DESC 
LIMIT 5