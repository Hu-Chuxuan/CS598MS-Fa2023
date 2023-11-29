SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Action%' AND t1.genres LIKE '%Comedy%'
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                     FROM title_ratings t3
                     WHERE t3.tconst IN (SELECT t4.tconst
                                     FROM title_ratings t4
                                     WHERE t4.nconst IN (SELECT n5.nconst
                                                   FROM name_basics n5
                                                   WHERE n5.primaryProfession = 'Actor'
                                                   AND n5.knownForTitles IN (SELECT t6.title
                                                                      FROM title_basics t6
                                                                      WHERE t6.genres LIKE '%Action%'
                                                                      AND t6.startYear BETWEEN 2010 AND 2020
                                                                      AND t6.runtimeMinutes < 120
                                                                      AND t6.primaryTitle = 1)))
                     AND t3.numVotes > 10000)
AND t1.tconst NOT IN (SELECT t7.tconst
                     FROM title_basics t7
                     WHERE t7.genres LIKE '%Drama%'
                     AND t7.startYear BETWEEN 2010 AND 2020
                     AND t7.runtimeMinutes < 120)
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes
ORDER BY t2.averageRating DESC, t1.startYear DESC