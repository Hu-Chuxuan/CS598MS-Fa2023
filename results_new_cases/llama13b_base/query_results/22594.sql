SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres LIKE '%ghost story%'
AND t2.averageRating > (
    SELECT AVG(t4.averageRating)
    FROM title_ratings t4
    WHERE t4.tconst IN (
        SELECT t5.tconst
        FROM title_basics t5
        WHERE t5.genres LIKE '%ghost story%'
    )
)
AND t3.knownForTitles NOT IN (
    SELECT t6.knownForTitles
    FROM name_basics t6
    WHERE t6.birthYear < 1980
)
AND t1.startYear > 2000
AND t1.endYear < 2020
AND t2.numVotes > 10000
AND t3.primaryProfession NOT IN ('Actor', 'Actress')
ORDER BY t1.averageRating DESC, t1.numVotes DESC