SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'horror' OR t1.genres = 'thriller'
AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.primaryName IN (SELECT t5.primaryName FROM name_basics t5 WHERE t5.knownForTitles LIKE '%The Lord of the Rings:%'))
)
AND t2.numVotes > (
    SELECT COUNT(t3.numVotes)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.primaryName IN (SELECT t5.primaryName FROM name_basics t5 WHERE t5.knownForTitles LIKE '%The Lord of the Rings:%'))
)
AND NOT EXISTS (
    SELECT 1
    FROM title_basics t3
    JOIN title_ratings t4 ON t3.tconst = t4.tconst
    WHERE t3.genres = 'horror' OR t3.genres = 'thriller'
    AND t4.averageRating < (
        SELECT AVG(t5.averageRating)
        FROM title_ratings t5
        WHERE t5.tconst IN (SELECT t6.tconst FROM title_ratings t6 WHERE t6.primaryName IN (SELECT t7.primaryName FROM name_basics t7 WHERE t7.knownForTitles LIKE '%The Lord of the Rings:%'))
    )
)
ORDER BY t1.averageRating DESC, t1.numVotes DESC