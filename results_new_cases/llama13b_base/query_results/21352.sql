SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Horror' AND t2.averageRating > 7 AND t2.numVotes > 1000
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t1.tconst = title_principals.tconst AND category = 'Actors' AND job = 'Director')
AND NOT EXISTS (SELECT 1 FROM name_basics WHERE t1.primaryName = name_basics.primaryName)
ORDER BY t2.averageRating DESC, t1.startYear DESC