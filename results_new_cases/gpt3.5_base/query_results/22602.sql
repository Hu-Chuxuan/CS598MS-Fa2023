SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear < 1960 
AND tb.genres LIKE '%Drama%' 
AND tb.tconst NOT IN ('tt0047396', 'tt0048728')  -- excluding Vertigo and To Catch a Thief
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5