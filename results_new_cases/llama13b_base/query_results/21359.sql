SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.startYear BETWEEN 1990 AND 1999
AND t1.genres LIKE '%comedy%'
AND t2.averageRating > (
    SELECT AVG(t3.rating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst
                         FROM title_ratings t4
                         WHERE t4.nconst IN (SELECT nconst
                                             FROM name_basics
                                             WHERE primaryProfession = 'Director'))
)
AND t2.numVotes > 1000
ORDER BY t2.averageRating DESC