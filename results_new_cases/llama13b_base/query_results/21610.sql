SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'feature film'
AND t1.isAdult = 0
AND t1.startYear = 1998
AND t2.averageRating > (SELECT AVG(t3.averageRating)
                      FROM title_ratings t3
                      WHERE t3.tconst = t1.tconst)
ORDER BY t2.numVotes DESC