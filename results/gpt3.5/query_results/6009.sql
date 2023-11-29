SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_ratings AS tr2 ON tr1.averageRating = tr2.averageRating
JOIN title_ratings AS tr3 ON tr2.numVotes = tr3.numVotes
JOIN title_ratings AS tr4 ON tr3.tconst = tr4.tconst
WHERE tr4.numVotes > 5000
AND tb1.titleType = 'movie'
AND tb1.startYear > 2003
AND tb1.genres LIKE '%Drama%'
AND tb1.genres LIKE '%Romance%'
AND tb1.primaryTitle != 'Latter Days'
AND tb1.primaryTitle NOT IN ('The Falls', 'Brokeback Mountain')
ORDER BY tr4.averageRating DESC, tr4.numVotes DESC
LIMIT 1