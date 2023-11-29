SELECT tb.primaryTitle AS Recommended_Movie, tr.averageRating AS Rating, tb.genres 
FROM title_basics AS tb 
JOIN title_ratings AS tr ON tb.tconst = tr.tconst 
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Animated%') 
AND tb.startYear > 2010 
AND tb.primaryTitle NOT IN ('Frozen (2013)', 'Never Let Me Go  (2010)', 'Frozen  (2010)')
ORDER BY tr.averageRating DESC
LIMIT 5