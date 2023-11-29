SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres = 'Adventure'
AND t2.averageRating > (
    SELECT AVG(t4.averageRating)
    FROM title_ratings t4
    WHERE t4.tconst IN (SELECT t5.tconst
                         FROM title_basics t5
                         WHERE t5.titleType = 'Feature Film'
                         AND t5.startYear BETWEEN 1980 AND 1989
                         AND t5.endYear BETWEEN 1980 AND 1989)
)
AND t3.knownForTitles NOT IN (SELECT n1.knownForTitles
                              FROM name_basics n1
                              WHERE n1.primaryProfession = 'Actor'
                              AND n1.birthYear BETWEEN 1940 AND 1960)
ORDER BY t1.averageRating DESC, t1.numVotes DESC