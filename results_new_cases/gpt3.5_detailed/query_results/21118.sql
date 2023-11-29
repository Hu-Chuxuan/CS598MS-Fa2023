SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%'
AND tb.startYear > 2000
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt0209183')  -- Exclude "She's All That (1999)" based on user preference
ORDER BY tr.numVotes DESC
LIMIT 5