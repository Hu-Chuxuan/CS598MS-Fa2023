SELECT t.title, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       r.averageRating, r.numVotes, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles, 
       c.directors, c.writers, c.ordering, c.category, c.job, c.characters
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryTitle
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres LIKE '%comedy%' OR t.genres LIKE '%animated%'
AND r.averageRating > (SELECT AVG(r2.averageRating) FROM title_ratings r2 WHERE r2.tconst = t.tconst AND r2.numVotes > 1000)
AND r.numVotes > 1000
AND NOT EXISTS (SELECT 1 FROM title_ratings r3 WHERE r3.tconst = t.tconst AND r3.averageRating > r.averageRating)
AND NOT EXISTS (SELECT 1 FROM name_basics n3 WHERE n3.primaryName = n.primaryName AND n3.birthYear > n.birthYear)
AND NOT EXISTS (SELECT 1 FROM title_crew c3 WHERE c3.tconst = t.tconst AND c3.directors = c.directors)
AND NOT EXISTS (SELECT 1 FROM title_principals p3 WHERE p3.tconst = t.tconst AND p3.category = 'actress' AND p3.job = 'lead' AND p3.characters = 'Maya Rudolph')
ORDER BY r.averageRating DESC, t.startYear DESC