SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS avg_rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1991
AND (tb.genres LIKE '%Crime%' OR tb.genres LIKE '%Drama%')
AND tb.primaryTitle NOT IN ('Scarface  (1983)', 'Goodfellas (1990)', 'Godfather  (1991)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5