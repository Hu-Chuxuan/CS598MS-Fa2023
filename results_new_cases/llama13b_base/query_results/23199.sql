SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Horror' AND t1.primaryTitle LIKE '%The Purge%'
AND t2.averageRating > (SELECT AVG(t3.rating)
FROM title_ratings t3
WHERE t3.tconst IN (SELECT t4.tconst
FROM title_basics t4
WHERE t4.primaryTitle = 'The Purge (2013)'))
AND NOT EXISTS (SELECT 1
FROM title_ratings t5
WHERE t5.tconst = t1.tconst AND t5.numVotes > 100)
ORDER BY t2.averageRating DESC, t1.startYear DESC