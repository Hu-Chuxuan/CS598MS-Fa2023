SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Hero%' 
AND tb.primaryTitle NOT IN ('Memento', 'Eraserhead', 'Aliens', 'The Silence of the Lambs') 
ORDER BY tr.averageRating DESC 
LIMIT 5