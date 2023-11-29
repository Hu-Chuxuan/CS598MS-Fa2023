SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.name, t3.category, t4.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.primaryName
JOIN title_crew t4 ON t1.directors = t4.directors
JOIN title_principals t5 ON t1.ordering = t5.ordering
WHERE t1.primaryTitle = 'The Hunger Games' OR t1.originalTitle = 'The Hunger Games'
AND t2.averageRating > 7
AND t3.birthYear = 1954
AND t4.job = 'Director'
AND t5.category = 'Actress'
AND t5.characters = 'Oprah'
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t2.name, t3.category, t4.job, t5.characters
HAVING COUNT(DISTINCT t5.characters) > 1