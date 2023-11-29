SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'action' AND t1.genres = 'comedy' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst = t1.tconst AND t3.numVotes > 100)
AND NOT EXISTS (SELECT 1 FROM title_principals t4 WHERE t4.tconst = t1.tconst AND t4.category = 'actor' AND t4.job = 'director')
AND NOT EXISTS (SELECT 1 FROM title_crew t5 WHERE t5.tconst = t1.tconst AND t5.job = 'writer')
AND t1.startYear BETWEEN '2000-01-01' AND '2020-12-31'
AND t1.endYear BETWEEN '2000-01-01' AND '2020-12-31'
AND t1.runtimeMinutes BETWEEN 80 AND 120
AND t2.numVotes > 1000
ORDER BY t2.averageRating DESC