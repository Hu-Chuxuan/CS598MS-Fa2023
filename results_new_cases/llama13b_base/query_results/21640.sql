SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Superhero'
AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.genres = 'Superhero')
)
AND t1.startYear BETWEEN 2010 AND 2020
AND EXISTS (
    SELECT 1 FROM title_crew t3
    JOIN name_basics t4 ON t3.directors = t4.nconst
    WHERE t4.primaryProfession = 'Actor' AND t4.knownForTitles IN (SELECT t5.tconst FROM title_basics t5 WHERE t5.genres = 'Superhero')
)
AND NOT EXISTS (
    SELECT 1 FROM title_principals t6
    JOIN name_basics t7 ON t6.ordering = t7.nconst
    WHERE t7.primaryProfession = 'Actor' AND t7.knownForTitles IN (SELECT t8.tconst FROM title_basics t8 WHERE t8.genres = 'Superhero')
)
ORDER BY t2.averageRating DESC, t1.startYear DESC