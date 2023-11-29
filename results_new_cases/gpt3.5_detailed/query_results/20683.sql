SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2008
AND tb.primaryTitle NOT IN ('Meet the Fockers (2004)', 'Tropic Thunder (2008)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5