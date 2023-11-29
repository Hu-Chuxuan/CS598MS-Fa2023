SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > (SELECT AVG(t3.averageRating)
                                                    FROM title_ratings t3
                                                    WHERE t3.tconst IN (SELECT t4.tconst
                                                                     FROM title_basics t4
                                                                     WHERE t4.primaryGenre = 'Comedy'))
                                                    AND t1.startYear BETWEEN 2000 AND 2020
                                                    AND t1.runtimeMinutes < 120
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes
HAVING COUNT(DISTINCT t2.nconst) > (SELECT COUNT(DISTINCT n1.nconst)
                                        FROM name_basics n1
                                        WHERE n1.primaryProfession = 'Actor'
                                        AND n1.birthYear BETWEEN 1970 AND 1990)
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC