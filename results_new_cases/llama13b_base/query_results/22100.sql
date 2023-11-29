SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres = 'Horror'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst IN (SELECT t1.tconst FROM title_basics WHERE t1.genres = 'Horror'))
AND t3.knownForTitles IN (SELECT t5.knownForTitles FROM name_basics t5 WHERE t5.primaryProfession = 'Director' AND t5.birthYear = 1970 AND t5.deathYear = 2020)
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE t1.tconst = title_principals.tconst AND title_principals.category = 'Actor' AND title_principals.job = 'Lead')
ORDER BY t1.averageRating DESC, t1.numVotes DESC