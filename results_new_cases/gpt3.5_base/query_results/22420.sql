SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0838283', 'tt0075148')