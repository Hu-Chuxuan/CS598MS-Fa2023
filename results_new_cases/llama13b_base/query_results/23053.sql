SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'War' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.primaryTitle = 'Black Hawk Down (2002)') AND t3.numVotes > 1000)
AND t1.primaryTitle NOT IN (SELECT t5.primaryTitle FROM title_basics t5 WHERE t5.primaryTitle = 'Fight Club (1999)')
ORDER BY t2.averageRating DESC, t1.startYear DESC