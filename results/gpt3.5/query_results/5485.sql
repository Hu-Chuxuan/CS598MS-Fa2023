SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Gal Gadot'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Guardians of the Galaxy', 'Wonder Woman', 'The Avengers')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5