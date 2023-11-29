SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Vin Diesel'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Pirates of the Caribbean ')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5