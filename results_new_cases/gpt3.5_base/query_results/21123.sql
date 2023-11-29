SELECT 
    tb.tconst AS movie_id,
    tb.primaryTitle AS movie_title,
    tb.startYear AS release_year,
    tb.genres,
    tr.averageRating AS rating,
    tr.numVotes AS num_votes
FROM 
    title_basics tb
JOIN 
    title_ratings tr ON tb.tconst = tr.tconst
WHERE 
    tb.genres LIKE '%Action%' 
    AND tb.startYear > 2017 
    AND tb.tconst NOT IN ('tt0120616', 'tt0974015', 'tt3501632') 
ORDER BY 
    tr.averageRating DESC,
    tr.numVotes DESC
LIMIT 5