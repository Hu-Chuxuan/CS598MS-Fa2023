SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.title_basics.primaryTitle = 'The Boxtrolls (2014)')
AND t1.genres LIKE '%horror%'
AND t1.isAdult = 0
ORDER BY t2.averageRating DESC