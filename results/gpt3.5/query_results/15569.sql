SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres AS movie_genres, tr.averageRating AS average_rating, tr.numVotes AS number_of_votes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Drama%'
AND tb1.startYear = 1994
AND tb1.primaryTitle != 'Forrest Gump'
AND tb1.primaryTitle NOT IN ('Dunkirk', 'Forrest Gump', 'The Dark Knight', 'Captain Phillips')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5