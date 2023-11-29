SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Romance%' 
AND tb.startYear > 2000 
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Drama%') 
AND tr.averageRating > 6 
AND tb.primaryTitle NOT IN ('Under the Tuscan Sun (2003)', 'The Blue Lagoon (1980)') 
AND tb.startYear IS NOT NULL 
AND tb.runtimeMinutes IS NOT NULL 
AND tb.genres IS NOT NULL 
AND tr.numVotes > 1000 
ORDER BY tr.averageRating DESC 
LIMIT 5