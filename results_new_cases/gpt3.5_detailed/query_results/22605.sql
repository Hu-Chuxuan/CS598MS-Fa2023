SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear = 1985 
AND tb.primaryTitle != 'Cocoon' 
AND tb.primaryTitle NOT IN ('Fargo', 'Heathers') 
ORDER BY tr.averageRating DESC 
LIMIT 5