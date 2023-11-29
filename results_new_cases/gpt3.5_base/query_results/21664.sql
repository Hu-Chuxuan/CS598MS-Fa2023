SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Adventure%' 
AND tb.genres LIKE '%Thriller%' 
AND tb.primaryTitle NOT IN ('Game Night (2018)', 'Jumanji  (2017)') 
ORDER BY tr.averageRating DESC