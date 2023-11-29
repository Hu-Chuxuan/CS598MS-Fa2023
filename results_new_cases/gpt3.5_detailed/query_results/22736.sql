SELECT tb.primaryTitle AS movie_title, tb.startYear AS release_year, tb.genres AS movie_genres, tr.averageRating AS avg_rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10