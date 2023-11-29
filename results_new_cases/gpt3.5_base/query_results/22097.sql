SELECT tb.primaryTitle AS Recommended_Movie, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt1431045') -- excluding Deadpool (2016)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5