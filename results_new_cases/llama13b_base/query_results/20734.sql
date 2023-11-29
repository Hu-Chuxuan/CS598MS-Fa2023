SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Comedy%'
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.primaryName = 'Adam Sandler'))
AND NOT EXISTS (SELECT 1 FROM title_basics t5 WHERE t5.tconst = t1.tconst AND t5.primaryName = 'Adam Sandler')
AND t1.startYear BETWEEN 2000 AND 2019
AND t1.endYear BETWEEN 2000 AND 2019
AND NOT EXISTS (SELECT 1 FROM title_basics t6 WHERE t6.tconst = t1.tconst AND t6.primaryName = 'Jennifer Aniston')
AND NOT EXISTS (SELECT 1 FROM title_basics t7 WHERE t7.tconst = t1.tconst AND t7.primaryName = 'Justin Theroux')
ORDER BY t2.averageRating DESC, t1.startYear DESC