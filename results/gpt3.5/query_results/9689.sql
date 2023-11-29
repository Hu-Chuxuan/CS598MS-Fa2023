SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'X-Men' AND tb1.startYear > 2000
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5