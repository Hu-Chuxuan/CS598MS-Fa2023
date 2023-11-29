SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.tconst = t2.tconst 
WHERE t1.genres = 'Comedy' AND t2.averageRating > (SELECT AVG(t3.rating) FROM title_ratings t3 WHERE t3.title IN (SELECT title FROM title_basics WHERE primaryTitle = 'Pineapple Express  (2008)' OR primaryTitle = '21 Jump Street  (2012)')) 
AND t1.startYear BETWEEN 1960 AND 2017 
AND t1.endYear BETWEEN 1990 AND 2017 
AND t1.runtimeMinutes BETWEEN 60 AND 120 
AND t2.numVotes > 1000 
ORDER BY t2.averageRating DESC