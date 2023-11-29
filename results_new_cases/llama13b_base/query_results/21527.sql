SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t4.job, t4.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
JOIN title_crew t4 ON t1.tconst = t4.tconst
WHERE t1.genres LIKE '%drama%' AND t1.originalTitle NOT LIKE '%Documentary%' AND t1.startYear BETWEEN 1980 AND 1990
AND (t2.averageRating > 7 OR t2.numVotes > 10000)
AND t3.knownForTitles LIKE '%Beaches%' OR t3.knownForTitles LIKE '%Terms of Endearment%'
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t1.tconst = title_principals.tconst AND title_principals.category = 'actress')
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t4.job, t4.characters
HAVING COUNT(DISTINCT t4.job) > 1 AND COUNT(DISTINCT t4.characters) > 2
ORDER BY t2.averageRating DESC, t1.startYear DESC