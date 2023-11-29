SELECT t1.title, t1.titleType, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n ON t1.primaryName = n.primaryName
WHERE t1.genres ='superhero'
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                     FROM title_ratings t3
                     WHERE t3.tconst IN (SELECT t4.tconst
                                         FROM title_basics t4
                                         WHERE t4.primaryName = n.primaryName
                                         AND t4.startYear <= 2022
                                         AND t4.endYear >= 2010))
AND t1.startYear >= 2010
AND t1.endYear <= 2022
AND t1.runtimeMinutes > 90
AND t2.numVotes > 1000
ORDER BY t2.averageRating DESC