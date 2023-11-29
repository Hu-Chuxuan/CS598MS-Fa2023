SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 2022 
AND tb.tconst NOT IN ('tt0120338', 'tt0110912')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5