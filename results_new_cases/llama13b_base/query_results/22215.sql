SELECT t.title, t.tconst, t.startYear, t.runtimeMinutes, t.genres, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, c.job, c.characters
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.directors
WHERE t.genres = 'crime' AND t.startYear >= 1990 AND t.startYear <= 2010
AND (t.title NOT IN (SELECT title FROM title_ratings WHERE user_id = 123456789) OR t.numVotes > 10000)
GROUP BY t.title, t.tconst, t.startYear, t.runtimeMinutes, t.genres, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, c.job, c.characters
HAVING COUNT(DISTINCT n.primaryName) > 2 AND COUNT(DISTINCT c.job) > 2
ORDER BY COUNT(DISTINCT n.primaryName) DESC, COUNT(DISTINCT c.job) DESC