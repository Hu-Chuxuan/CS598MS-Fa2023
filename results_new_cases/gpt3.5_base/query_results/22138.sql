SELECT tb.primaryTitle AS RecommendedMovie, tb.startYear AS Year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.genres LIKE '%Action%'
AND tb.startYear < 1981
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt0119113', 'tt1396484', 'tt0112462', 'tt0468569')
ORDER BY tr.averageRating DESC
LIMIT 5