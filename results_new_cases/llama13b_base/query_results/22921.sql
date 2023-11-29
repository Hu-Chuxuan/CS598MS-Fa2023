SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%animated%' AND t1.startYear <= 1991 AND t1.endYear >= 1991
AND EXISTS (
  SELECT 1
  FROM name_basics n
  JOIN title_crew c ON n.nconst = c.nconst
  WHERE c.directors = 'Walt Disney' OR c.writers = 'Walt Disney'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals p
  WHERE p.category = 'Adult'
)
AND t2.averageRating > (
  SELECT AVG(t3.averageRating)
  FROM title_ratings t3
  WHERE t3.tconst = t1.tconst
)
AND t2.numVotes > (
  SELECT COUNT(t3.numVotes)
  FROM title_ratings t3
  WHERE t3.tconst = t1.tconst
)
ORDER BY t2.primaryName, t1.startYear DESC