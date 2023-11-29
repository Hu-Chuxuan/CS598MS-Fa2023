SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n3 ON t2.nconst = n3.nconst
WHERE t1.genres = 'Drama' AND t1.startYear BETWEEN 2000 AND 2019
AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.nconst = n3.nconst)
AND t2.numVotes > (SELECT COUNT(*) FROM title_ratings t4 WHERE t4.nconst = n3.nconst)
AND NOT EXISTS (SELECT 1 FROM title_principals t5 WHERE t5.tconst = t1.tconst AND t5.category = 'Actress')
AND NOT EXISTS (SELECT 1 FROM title_crew t6 WHERE t6.tconst = t1.tconst AND t6.job = 'Director')
AND t1.endYear > (SELECT MAX(t7.endYear) FROM title_basics t7 WHERE t7.tconst = t1.tconst)
AND t1.runtimeMinutes > (SELECT AVG(t8.runtimeMinutes) FROM title_basics t8 WHERE t8.tconst = t1.tconst)
ORDER BY t1.averageRating DESC, t1.numVotes DESC