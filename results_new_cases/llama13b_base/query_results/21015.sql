SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n3 ON t2.primaryName = n3.primaryName
WHERE t1.genres = 'Comedy' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.primaryName IN (SELECT n2.primaryName FROM name_basics n2 WHERE n2.knownForTitles LIKE '%Comedy%'))
AND t2.numVotes > 1000
AND NOT EXISTS (SELECT 1 FROM title_principals t4 WHERE t4.tconst = t1.tconst AND t4.category = 'Actor' AND t4.job = 'Director')
AND NOT EXISTS (SELECT 1 FROM title_crew t5 WHERE t5.tconst = t1.tconst AND t5.job = 'Writer')
ORDER BY t1.averageRating DESC, t1.numVotes DESC