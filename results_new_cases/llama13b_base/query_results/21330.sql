SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.name_basics.primaryName, t2.name_basics.birthYear, t2.name_basics.deathYear, t2.name_basics.primaryProfession, t3.title_crew.directors, t3.title_crew.writers, t4.title_principals.ordering, t4.title_principals.category, t4.title_principals.job, t4.title_principals.characters
FROM title_basics t1
JOIN name_basics t2 ON t1.title_basics.primaryTitle = t2.primaryName
JOIN title_crew t3 ON t1.title_basics.directors = t3.directors
JOIN title_principals t4 ON t1.title_basics.ordering = t4.ordering
WHERE t1.title_basics.title = 'The Lord of the Rings: The Return of the King'
AND t2.name_basics.primaryName NOT IN (SELECT n1.primaryName FROM name_basics n1 WHERE n1.birthYear < 1980)
AND t3.title_crew.directors NOT IN (SELECT d1.directors FROM title_crew d1 WHERE d1.title_basics.startYear < 2000)
AND t4.title_principals.category = 'actor'
AND t4.title_principals.job = 'actor'
AND t4.title_principals.characters NOT IN (SELECT c1.characters FROM title_principals c1 WHERE c1.title_basics.startYear < 2000)
ORDER BY t1.title_basics.runtimeMinutes DESC