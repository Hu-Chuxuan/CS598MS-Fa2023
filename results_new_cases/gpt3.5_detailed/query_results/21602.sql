SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' AND tb.startYear >= 2000 AND tb.startYear < 2010 
AND tr.averageRating > 7.5 
AND tb.tconst <> 'tt2267998' 
AND tb.tconst NOT IN ('tt0314331', 'tt0332280')
ORDER BY tr.numVotes DESC
LIMIT 5