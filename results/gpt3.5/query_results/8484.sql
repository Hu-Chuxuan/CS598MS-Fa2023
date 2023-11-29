SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics AS tb 
JOIN title_ratings AS tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.titleType = 'movie' 
AND tr.numVotes > 1000 
AND tb.primaryTitle != 'Kill Bill'
ORDER BY tr.averageRating DESC
LIMIT 5