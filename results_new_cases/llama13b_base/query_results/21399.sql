SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.startYear = 1990 AND t1.genres LIKE '%Action%'
AND t2.averageRating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.tconst = t1.tconst
    AND t3.numVotes > 100
)
AND t1.primaryTitle NOT IN (SELECT t4.primaryTitle FROM title_basics t4 WHERE t4.tconst = t1.tconst)
ORDER BY t2.averageRating DESC