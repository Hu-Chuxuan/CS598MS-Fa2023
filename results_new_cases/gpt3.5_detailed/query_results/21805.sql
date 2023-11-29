SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tc.directors LIKE '%nm0000264%' -- Pedro Almodovar's nconst
AND tb.titleType = 'movie'
AND tr.numVotes > 1000  -- considering popular movies with a significant number of votes
AND tb.tconst NOT IN ('tt2543164')  -- excluding 'Arrival' based on user's historical preference
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10