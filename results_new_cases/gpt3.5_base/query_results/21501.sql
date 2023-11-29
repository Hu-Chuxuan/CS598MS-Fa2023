SELECT tb.primaryTitle AS recommended_movie,
       tr.averageRating AS rating,
       tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.primaryTitle != 'Avengers: Infinity War'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5