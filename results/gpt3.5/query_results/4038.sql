SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2015
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt2224026', 'tt1276104', 'tt0990407', 'tt2637294')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5