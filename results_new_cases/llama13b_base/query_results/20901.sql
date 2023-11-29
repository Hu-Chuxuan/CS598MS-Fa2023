SELECT t1.title, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Family' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.averageRating > 7 AND t4.numVotes > 1000))
AND t1.startYear BETWEEN 2000 AND 2020
AND NOT EXISTS (SELECT 1 FROM title_principals t3 WHERE t3.tconst = t1.tconst AND t3.category = 'Adult')
AND NOT EXISTS (SELECT 1 FROM name_basics t4 WHERE t4.nconst = t1.primaryName AND t4.birthYear > 1980 AND t4.deathYear < 2000)
ORDER BY t2.averageRating DESC, t1.startYear DESC