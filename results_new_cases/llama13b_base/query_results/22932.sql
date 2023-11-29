SELECT t1.title, t1.averageRating, t1.numVotes, t2.director, t2.writer
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'war' OR t1.genres = 'action'
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                      FROM title_ratings t3
                      WHERE t3.tconst IN (SELECT t4.tconst
                                         FROM title_basics t4
                                         WHERE t4.genres = 'horror'
                                         UNION
                                         SELECT t5.tconst
                                         FROM title_basics t5
                                         WHERE t5.genres = 'thriller'))
AND NOT EXISTS (SELECT 1
               FROM title_ratings tr
               WHERE tr.tconst = t1.tconst AND tr.averageRating < 5)
AND NOT EXISTS (SELECT 1
               FROM title_basics t3
               WHERE t3.title = t1.title AND t3.primaryProfession = 'actor' AND t3.knownForTitles = 'The Birds (1963)')
AND NOT EXISTS (SELECT 1
               FROM title_basics t4
               WHERE t4.title = t1.title AND t4.primaryProfession = 'actor' AND t4.knownForTitles = 'Frozen (2010)'])
GROUP BY t1.title, t1.averageRating, t1.numVotes, t2.director, t2.writer
ORDER BY t1.averageRating DESC, t1.numVotes DESC