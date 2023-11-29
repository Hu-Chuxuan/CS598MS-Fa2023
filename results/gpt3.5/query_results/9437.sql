SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2010
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle != 'Forrest Gump'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5