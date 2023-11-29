SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'horror' AND t2.averageRating > (SELECT AVG(t3.averageRating)
                                                    FROM title_ratings t3
                                                    WHERE t3.tconst = t1.tconst)
                                                    AND t2.numVotes > (SELECT COUNT(t4.tconst)
                                                                     FROM title_ratings t4
                                                                     WHERE t4.tconst = t1.tconst)
                                                    AND t1.startYear >= (SELECT MIN(t5.startYear)
                                                                     FROM title_basics t5
                                                                     WHERE t5.primaryTitle = t1.primaryTitle)
                                                    AND t1.endYear <= (SELECT MAX(t6.endYear)
                                                                     FROM title_basics t6
                                                                     WHERE t6.primaryTitle = t1.primaryTitle)
                                                    AND t2.numVotes > 100
                                                    AND t1.isAdult = 0
ORDER BY t2.averageRating DESC