SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles, t3.directors, t3.writers, t4.category, t4.job, t4.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
JOIN title_crew t4 ON t1.tconst = t4.tconst
WHERE t1.genres = 'Drama' AND t1.isAdult = '0' AND t2.averageRating > (SELECT AVG(t5.averageRating) FROM title_ratings t5 WHERE t5.tconst = t1.tconst)
AND t3.primaryProfession = 'Actor' AND t4.category = 'Director'
AND t4.job = 'Director'
AND t4.characters = 'Keanu Reeves'
AND t1.startYear > 2000
AND t1.endYear < 2015
AND t2.numVotes > 10000
ORDER BY t1.averageRating DESC, t4.directors ASC
LIMIT 5