SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear BETWEEN 1980 AND 1990 
AND tb.tconst != 'tt0088939' 
ORDER BY tr.averageRating DESC 
LIMIT 5