SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%adventure%' AND t1.startYear BETWEEN 1980 AND 1990
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.title IN (SELECT t4.title FROM title_basics t4 WHERE t4.primaryTitle = 'The Goonies (1985)') AND t3.numVotes > 1000)
ORDER BY t2.averageRating DESC