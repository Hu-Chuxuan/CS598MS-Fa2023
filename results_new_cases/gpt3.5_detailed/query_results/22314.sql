SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt5155780')  -- excluding the movie mentioned in user's preference history
AND tr.numVotes > 1000  -- considering movies with a significant number of votes
ORDER BY tr.averageRating DESC
LIMIT 10