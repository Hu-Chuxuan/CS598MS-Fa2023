SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Fast Five (2011)', 'Guardians of the Galaxy (2014)', 'The Avengers (2012)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5