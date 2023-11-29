SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.startYear < 2000 
AND tb.genres LIKE '%Family%' 
AND tr.averageRating >= 7 
AND tb.tconst NOT IN ('tt2948356', 'tt1974265', 'tt0109813', 'tt0089218')
ORDER BY tr.numVotes DESC 
LIMIT 10