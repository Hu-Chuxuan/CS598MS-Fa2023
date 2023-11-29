SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tr.numVotes > 1000
AND tb1.titleType = 'movie'
AND tb1.startYear > 1980
AND tb1.startYear < 2017
AND tb1.primaryTitle NOT IN ('Weird Science', 'Revenge of the Nerds', 'Jumanji', 'Jumanji 2')
ORDER BY tr.averageRating DESC
LIMIT 5