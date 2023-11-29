SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Mystery%' AND tb.genres LIKE '%Thriller%' 
AND tb.startYear <= 2022 
AND tb.primaryTitle NOT IN ('Memento', 'Seven', 'The Silence of the Lambs') 
ORDER BY tr.averageRating DESC, tb.startYear DESC 
LIMIT 5