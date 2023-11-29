SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.tconst = t4.tconst
JOIN title_principals t5 ON t1.tconst = t5.tconst
WHERE t2.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE tconst = 'Highlander (1986)')
AND t5.category = 'crime'
ORDER BY t2.numVotes DESC, t1.startYear DESC