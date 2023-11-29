SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Science Fiction'
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.averageRating > 7 AND t4.numVotes > 10000))
AND NOT EXISTS (SELECT 1 FROM title_principals t5 WHERE t5.tconst = t1.tconst AND t5.category = 'Actor' AND t5.job = 'Director')
AND NOT EXISTS (SELECT 1 FROM title_crew t6 WHERE t6.tconst = t1.tconst AND t6.job = 'Director')
AND NOT EXISTS (SELECT 1 FROM name_basics t7 WHERE t7.nconst = t1.primaryTitle AND t7.birthYear > 1980)
AND NOT EXISTS (SELECT 1 FROM name_basics t8 WHERE t8.nconst = t1.primaryTitle AND t8.deathYear < 2000)
AND NOT EXISTS (SELECT 1 FROM title_ratings t9 WHERE t9.tconst = t1.tconst AND t9.numVotes > 10000)
ORDER BY t2.averageRating DESC, t1.startYear DESC