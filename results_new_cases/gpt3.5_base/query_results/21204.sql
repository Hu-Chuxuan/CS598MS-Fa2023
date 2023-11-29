SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear > 2012
AND tb.endYear IS NULL
AND tb.tconst NOT IN ('tt1825683', 'tt2015381', 'tt3896198', 'tt0848228')  -- Excluding user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5