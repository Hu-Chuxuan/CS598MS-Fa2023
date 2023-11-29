SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE t1.genres = 'Drama' AND t1.title_basics.primaryTitle LIKE '%Jerker%' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.title_basics.tconst = t1.title_basics.tconst AND t3.numVotes > 1000)
AND NOT EXISTS (SELECT 1 FROM title_principals t4 WHERE t4.title_basics.tconst = t1.title_basics.tconst AND t4.category = 'Actress' AND t4.job = 'Lead')
AND NOT EXISTS (SELECT 1 FROM name_basics t5 WHERE t5.nconst = t1.title_basics.nconst AND t5.birthYear = 1980 AND t5.deathYear = 1980)
GROUP BY t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
HAVING COUNT(DISTINCT t2.tconst) > 10
ORDER BY t2.averageRating DESC, t1.title_basics.primaryTitle ASC