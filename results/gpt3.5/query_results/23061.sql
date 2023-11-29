SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb.startYear = 1993
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND (nb.primaryName = 'Renny Harlin' OR nb.primaryName = 'Sylvester Stallone')
AND tb.primaryTitle != 'Cliffhanger (1993)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5