SELECT 
    tb.tconst AS movie_id,
    tb.primaryTitle AS movie_title,
    tb.startYear AS release_year,
    tb.genres AS movie_genres,
    tr.averageRating AS average_rating,
    tr.numVotes AS num_votes
FROM 
    title_basics AS tb
JOIN 
    title_ratings AS tr ON tb.tconst = tr.tconst
WHERE 
    tb.titleType = 'movie'
    AND tb.startYear = 2017
    AND tb.genres LIKE '%Fantasy%'
    AND tb.tconst NOT IN ('tt1731141')  -- Exclude "Ender's Game"
ORDER BY 
    tr.numVotes DESC
LIMIT 5