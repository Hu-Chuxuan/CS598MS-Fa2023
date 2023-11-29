SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.directors, t3.writers, t4.ordering, t4.category, t4.job, t4.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
JOIN title_crew t4 ON t1.tconst = t4.tconst
WHERE t1.genres = 'Family'
AND t2.averageRating > 7
AND t3.primaryProfession = 'Actor'
AND t4.category = 'Acting'
AND t4.job = 'Lead'
AND t4.characters = 'Princess'
AND t1.title NOT IN (SELECT title FROM title_ratings WHERE nconst = 'Jurassic Park')
AND t1.title NOT IN (SELECT title FROM title_ratings WHERE nconst = 'The Dawns Here Are Quiet (1972)')
AND t1.title NOT IN (SELECT title FROM title_ratings WHERE nconst = 'Jurassic Park III (2001)')
AND t1.title NOT IN (SELECT title FROM title_ratings WHERE nconst = 'Jumanji  (2017)')
ORDER BY t1.averageRating DESC, t4.ordering ASC
LIMIT 10