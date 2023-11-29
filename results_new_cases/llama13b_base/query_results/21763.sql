SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.title = t2.title_basics.title
WHERE t1.genres LIKE '%fantasy%'
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                         FROM title_ratings t3
                         WHERE t3.title_basics.title IN (SELECT t4.title_basics.title
                                                       FROM title_basics t4
                                                       WHERE t4.primaryTitle = 'The Lord of the Rings: The Return of the King'
                                                       AND t4.startYear = 2003)
                         AND t3.numVotes > 1000)
ORDER BY t2.averageRating DESC