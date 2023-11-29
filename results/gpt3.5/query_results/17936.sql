SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 2022
AND tr.numVotes >= 1000
AND nb.primaryName = 'Steve'
AND tb1.genres LIKE '%Comedy%'
AND tb1.tconst NOT IN ('tt0080339', 'tt0405422')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5