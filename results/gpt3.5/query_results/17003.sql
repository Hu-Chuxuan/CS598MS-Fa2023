SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND nb.primaryName LIKE '%beautiful lady%'
AND tb.primaryTitle NOT IN ('Notting Hill ', "You've Got Mail (1998)", 'Sleepless in Seattle (1993)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5