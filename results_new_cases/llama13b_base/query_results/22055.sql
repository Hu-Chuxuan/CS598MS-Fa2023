SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.primaryName
WHERE t1.genres = 'Action'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst = t1.tconst)
AND t2.numVotes > (SELECT COUNT(t4.numVotes) FROM title_ratings t4 WHERE t4.tconst = t1.tconst)
AND t3.knownForTitles LIKE '%Armageddon%'
AND NOT EXISTS (SELECT 1 FROM title_principals t4 WHERE t4.tconst = t1.tconst AND t4.category = 'Actor' AND t4.job = 'Director')
ORDER BY t2.averageRating DESC, t1.startYear DESC