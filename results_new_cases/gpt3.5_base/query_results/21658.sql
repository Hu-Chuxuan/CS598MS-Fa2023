SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 1990 
AND tb.startYear < 2005 
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt0457430') -- Exclude The Matrix
AND tb.tconst NOT IN ('tt0457430') -- Exclude Pan's Labyrinth
ORDER BY tr.numVotes DESC
LIMIT 5