SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.primaryTitle = 'Meet the Parents' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.primaryTitle = 'Face/Off' AND t3.numVotes > 1000)
AND t1.genres LIKE '%Comedy%'
AND NOT EXISTS (SELECT 1 FROM title_basics t3 WHERE t3.tconst = t1.tconst AND t3.primaryProfession = 'Ben Stiller')
GROUP BY t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
HAVING AVG(t2.averageRating) > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.primaryTitle = 'The Punisher' AND t3.numVotes > 1000)
ORDER BY AVG(t2.averageRating) DESC