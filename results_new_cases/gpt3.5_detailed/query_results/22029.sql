SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.primaryTitle != 'Daddy''s Home' 
AND tb.startYear > 2000 
ORDER BY tr.averageRating DESC 
LIMIT 5