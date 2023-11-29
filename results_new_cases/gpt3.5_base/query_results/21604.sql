SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tb.genres LIKE '%Romance%'
AND tr.averageRating >= 7.5
AND tr.numVotes >= 1000
AND tb.primaryTitle NOT IN ('The Big Sick (2017)', 'Saving Private Ryan (1998)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1