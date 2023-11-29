SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Animated'
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.primaryTitle = 'Coco' (2017) OR t4.primaryTitle = 'Sing' (2016) OR t4.primaryTitle = 'Moana' (2016)))
AND NOT EXISTS (SELECT 1 FROM title_ratings t3 WHERE t3.tconst = t1.tconst AND t3.averageRating > t2.averageRating)
AND t1.startYear BETWEEN 2015 AND 2018
AND t1.runtimeMinutes < 120

