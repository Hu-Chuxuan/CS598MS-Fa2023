SELECT tb.primaryTitle AS Recommended_Movie, tr.averageRating AS Rating, tb.startYear AS Release_Year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.startYear >= 1980 
AND tb.startYear <= 1990 
AND tb.primaryTitle NOT IN ('They Live (1988)', 'Transformers')
ORDER BY tr.averageRating DESC
LIMIT 2