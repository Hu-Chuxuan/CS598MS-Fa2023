SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 1995
AND tb.tconst NOT IN ('tt0384806', 'tt0178868')  -- Excluding the user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5