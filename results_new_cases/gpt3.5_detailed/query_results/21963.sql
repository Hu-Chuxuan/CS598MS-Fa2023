SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings 
ON title_basics.tconst = title_ratings.tconst 
WHERE (genres LIKE '%Crime%' OR genres LIKE '%Thriller%') 
AND startYear BETWEEN 1960 AND 2020 
AND title_basics.tconst NOT IN ('tt2488496') -- exclude The Greatest Showman
ORDER BY averageRating DESC 
LIMIT 5