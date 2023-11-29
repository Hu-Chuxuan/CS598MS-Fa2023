SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles, t3.directors, t3.writers, t4.ordering, t4.category, t4.job, t4.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
JOIN title_crew t4 ON t1.tconst = t4.tconst
WHERE t1.genres = 'Kung Fu'
AND t2.averageRating > (
    SELECT AVG(t5.averageRating)
    FROM title_ratings t5
    WHERE t5.tconst IN (
        SELECT t6.tconst
        FROM title_basics t6
        WHERE t6.titleType = 'Sequel'
        AND t6.primaryTitle = 'The Last Dragon'
    )
)
AND t3.primaryName NOT IN (
    SELECT n1.primaryName
    FROM name_basics n1
    WHERE n1.birthYear < 1980
)
AND t4.ordering NOT IN (
    SELECT ordering
    FROM title_principals
    WHERE category = 'Actor'
    AND job = 'Lead'
)
GROUP BY t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles, t3.directors, t3.writers, t4.ordering, t4.category, t4.job, t4.characters
HAVING COUNT(DISTINCT t4.category) > 1
ORDER BY t1.averageRating DESC, t1.numVotes DESC