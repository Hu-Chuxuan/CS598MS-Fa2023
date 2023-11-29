SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Crime%' AND tb.genres LIKE '%Thriller%' 
AND tb.primaryTitle NOT IN ('The Rock', 'Escape from Alcatraz', 'Con Air', 'The Shawshank Redemption')
ORDER BY tr.averageRating DESC 
LIMIT 5