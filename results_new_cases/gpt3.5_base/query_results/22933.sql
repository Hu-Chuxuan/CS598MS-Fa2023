SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Horror%' 
AND tb.primaryTitle NOT IN ('Carrie  (2013)', 'Carrie  (1976)', 'The Shining  (1980)', 'Thinner  (1996)') 
ORDER BY tr.averageRating DESC
LIMIT 5