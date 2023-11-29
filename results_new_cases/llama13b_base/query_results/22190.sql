SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t4.directors, t4.writers, t5.ordering, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.tconst = t4.tconst
JOIN title_principals t5 ON t1.tconst = t5.tconst
WHERE t2.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE genres = 'Comedy'))
AND t1.genres = 'Comedy'
AND t5.category = 'Actor'
AND t5.job = 'Lead'
AND t5.characters = 'Male'
AND t4.directors = 'Todd Phillips'
AND t3.birthYear = 1975
AND t3.deathYear IS NULL
AND t2.numVotes > 10000
ORDER BY t2.averageRating DESC, t1.startYear ASC