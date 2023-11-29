SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS average_rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2000
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('The Birds', 'It', 'Halloween', 'A Nightmare on Elm Street')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5