SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1980 
AND tb.tconst != 'tt0098635' 
AND tr.numVotes > 10000 
ORDER BY tr.averageRating DESC 
LIMIT 5