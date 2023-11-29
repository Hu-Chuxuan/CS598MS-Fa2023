SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear BETWEEN 1960 AND 1979
AND tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('The French Connection', 'Dog Day Afternoon', 'Klute', 'Lawrence of Arabia')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5