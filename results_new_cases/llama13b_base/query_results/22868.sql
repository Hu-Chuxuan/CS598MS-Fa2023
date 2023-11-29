SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, 
       t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles, 
       t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.tconst = t4.tconst
JOIN title_principals t5 ON t1.tconst = t5.tconst
WHERE t1.genres = 'Musical' AND t1.startYear = 2012
AND t2.averageRating > (SELECT AVG(t6.averageRating) FROM title_ratings t6 WHERE t6.tconst = 'Les Misérables (2012)')
AND t3.primaryProfession = 'Actor'
AND t4.directors = 'Tom Hooper'
AND t5.category = 'Acting'
AND t5.job = 'Lead'
AND t5.characters = 'Jean Valjean'
ORDER BY t2.numVotes DESC