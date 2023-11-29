SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.tconst = t2.tconst 
WHERE t1.genres = 'Science Fiction' AND t1.startYear = 1984 AND t2.averageRating > (SELECT AVG(t3.averageRating) 
FROM title_ratings t3 
WHERE t3.title IN (SELECT title 
FROM title_basics 
WHERE primaryTitle = 'The Terminator (1984)')) 
AND t1.primaryTitle NOT IN (SELECT title 
FROM title_basics 
WHERE primaryTitle = '28 Days Later (2002)') 
AND t1.primaryTitle NOT IN (SELECT title 
FROM title_basics 
WHERE primaryTitle = 'I Am Legend (2007)') 
ORDER BY t2.averageRating DESC