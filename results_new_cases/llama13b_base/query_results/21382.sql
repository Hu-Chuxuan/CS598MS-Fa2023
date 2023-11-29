SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.title = 'Nocturnal Animals (2016)'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst = t1.tconst)
AND t3.primaryProfession IN ('Actor', 'Director', 'Writer')
AND t3.knownForTitles IN (SELECT DISTINCT t5.title FROM name_basics t5 WHERE t5.primaryName = t3.primaryName)
ORDER BY t1.averageRating DESC, t3.primaryProfession ASC