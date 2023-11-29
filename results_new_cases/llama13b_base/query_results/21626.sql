SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
WHERE t1.genres LIKE '%romance%' AND t1.startYear = 1980
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst = t1.tconst)
AND t1.runtimeMinutes > (SELECT AVG(t4.runtimeMinutes) FROM title_basics t4 WHERE t4.tconst = t1.tconst)
AND NOT EXISTS (SELECT 1 FROM title_principals t5 WHERE t5.tconst = t1.tconst AND t5.category = 'actress')
AND NOT EXISTS (SELECT 1 FROM title_crew t6 WHERE t6.tconst = t1.tconst AND t6.job = 'director')
AND NOT EXISTS (SELECT 1 FROM title_principals t7 WHERE t7.tconst = t1.tconst AND t7.job = 'actor')
AND NOT EXISTS (SELECT 1 FROM title_crew t8 WHERE t8.tconst = t1.tconst AND t8.job = 'writer')
AND NOT EXISTS (SELECT 1 FROM title_ratings t9 WHERE t9.tconst = t1.tconst AND t9.numVotes > 1000)
AND NOT EXISTS (SELECT 1 FROM title_basics t10 WHERE t10.tconst = t1.tconst AND t10.endYear > 2015)

