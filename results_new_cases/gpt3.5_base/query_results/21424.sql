SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Romance%' 
    OR tb.genres LIKE '%Drama%' 
    OR tb.genres LIKE '%Thriller%' 
    AND tb.startYear < 2000 
    AND tr.averageRating > 7 
    AND tb.primaryTitle NOT IN ('Seven', 'The Godfather', 'Godfather') 
ORDER BY tr.averageRating DESC 
LIMIT 5