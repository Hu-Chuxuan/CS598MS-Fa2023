SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Crime%' 
AND tr.numVotes > 1000 
AND tb.startYear > 1980 
AND tb.tconst NOT IN ('tt0091203') 
ORDER BY tr.averageRating DESC 
LIMIT 5