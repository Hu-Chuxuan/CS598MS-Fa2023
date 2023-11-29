SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Greatest Showman (2017)'
AND tb1.titleType = 'movie'
AND tb1.startYear > 2017
AND tb1.primaryTitle != 'The Greatest Showman (2017)'
AND tb1.primaryTitle NOT IN ('The Karate Kid (1984)')
ORDER BY tb1.numVotes DESC
LIMIT 5