SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Science Fiction'
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                         FROM title_ratings t3
                         WHERE t3.title IN (SELECT t4.title
                                            FROM title_basics t4
                                            WHERE t4.primaryTitle = 'Guardians of the Galaxy'
                                            AND t4.startYear = 2014))
AND EXISTS (SELECT 1
              FROM name_basics n
              JOIN title_crew tc ON n.nconst = tc.nconst
              WHERE tc.directors = 'James Gunn'
              OR tc.writers = 'James Gunn')
AND NOT EXISTS (SELECT 1
                  FROM title_principals tp
                  JOIN name_basics n ON tp.nconst = n.nconst
                  WHERE tp.category = 'Actor'
                  AND n.birthYear > 1970)
ORDER BY t2.averageRating DESC