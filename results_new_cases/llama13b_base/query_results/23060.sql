SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'horror'
AND t2.averageRating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.averageRating > 7 AND t4.numVotes > 1000)
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings t3
    WHERE t3.tconst = t1.tconst AND t3.averageRating > 7
)
ORDER BY t1.startYear DESC, t1.endYear DESC, t1.runtimeMinutes ASC