SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Drama' AND t1.startYear BETWEEN 2010 AND 2019
AND t2.averageRating > 7 AND t2.numVotes > 10000
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t1.tconst = title_principals.tconst AND category = 'Actress' AND job = 'Lead')
AND NOT EXISTS (SELECT 1 FROM name_basics WHERE t1.primaryName = name_basics.primaryName)

ORDER BY t2.averageRating DESC, t1.startYear DESC