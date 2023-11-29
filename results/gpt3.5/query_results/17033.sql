SELECT 
    tb.primaryTitle AS recommended_movie,
    tb.startYear AS release_year,
    tr.averageRating AS average_rating,
    tr.numVotes AS number_of_votes,
    tb.genres AS movie_genres
FROM 
    title_basics AS tb
JOIN 
    title_ratings AS tr 
ON 
    tb.tconst = tr.tconst
WHERE 
    tb.titleType = 'movie'
    AND tr.numVotes > 1000
    AND tb.genres LIKE '%Comedy%'
    AND tb.startYear > 2010
    AND tb.primaryTitle NOT IN ('Game Night (2018)', 'Horrible Bosses 2 (2014)', 'Extract ')
ORDER BY 
    tr.averageRating DESC, tr.numVotes DESC
LIMIT 5