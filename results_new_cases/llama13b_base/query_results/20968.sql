SELECT 
  t.title_id, 
  t.title, 
  t.primaryTitle, 
  t.originalTitle, 
  t.isAdult, 
  t.startYear, 
  t.endYear, 
  t.runtimeMinutes, 
  t.genres, 
  n.name, 
  n.birthYear, 
  n.deathYear, 
  n.primaryProfession, 
  n.knownForTitles, 
  c.directors, 
  c.writers, 
  p.category, 
  p.job, 
  p.characters
FROM 
  title_basics t 
  JOIN name_basics n ON t.primaryTitle = n.title 
  JOIN title_crew c ON t.title_id = c.title_id 
  JOIN title_principals p ON t.title_id = p.title_id 
WHERE 
  t.genres LIKE '%Comedy%' 
  AND t.title NOT IN (SELECT title FROM title_ratings WHERE user_id = 123)  -- exclude movies already rated by the user
  AND t.startYear BETWEEN 2000 AND 2010 
  AND t.runtimeMinutes > 90 
  AND n.birthYear = 1970 
  AND n.deathYear = 1979 
  AND c.directors LIKE '%Adam%']
ORDER BY 
  RANDOM()
LIMIT 5