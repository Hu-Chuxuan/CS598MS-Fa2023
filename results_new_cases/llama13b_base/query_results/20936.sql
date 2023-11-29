SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst 
WHERE t1.genres LIKE '%Action%' AND t1.genres LIKE '%Comedy%' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.primaryTitle = 'Deadpool  (2016)' OR t4.primaryTitle = 'Deadpool 2  (2018)')) 
ORDER BY t2.averageRating DESC