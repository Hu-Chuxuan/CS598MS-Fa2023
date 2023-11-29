SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE (nb.primaryName = 'Adam Sandler' OR nb.primaryName = 'Jim Carrey' OR nb.primaryName = 'Channing Tatum')
AND tb.startYear > 2010
AND tb.genres LIKE '%Romance%'
AND tb.titleType = 'movie'
AND tb.primaryTitle != 'Dear John'
AND tb.primaryTitle NOT IN ('The Vow', '50 First Dates')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5