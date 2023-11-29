SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Drama' AND t2.averageRating > (SELECT AVG(t3.rating)
                                                   FROM title_ratings t3
                                                   WHERE t3.title IN (SELECT t4.title
                                                                   FROM title_basics t4
                                                                   WHERE t4.primaryTitle = 'Die Hard (1988)'
                                                                   UNION
                                                         SELECT t5.title
                                                         FROM title_basics t5
                                                         WHERE t5.primaryTitle = 'Deadpool (2016)'
                                                         UNION
                                                         SELECT t6.title
                                                         FROM title_basics t6
                                                         WHERE t6.primaryTitle = 'The Terminator (1984)'))
ORDER BY t2.averageRating DESC