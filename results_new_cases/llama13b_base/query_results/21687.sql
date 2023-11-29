SELECT t1.title, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.title LIKE '%Eragon%' AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst
                         FROM title_basics t4
                         WHERE t4.title LIKE '%Teaching Mrs. Tingle%' OR
                             t4.title LIKE '%Date Night%' OR
                             t4.title LIKE '%Deadpool 2%' OR
                             t4.title LIKE '%Game Night%'
                         )
)
ORDER BY t2.averageRating DESC, t1.runtimeMinutes ASC