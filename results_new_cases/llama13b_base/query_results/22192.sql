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
  c.category, 
  j.job, 
  c.characters
FROM 
  title_basics t 
  JOIN title_ratings tr ON t.title_id = tr.title_id 
  JOIN name_basics n ON t.primaryTitle = n.primaryName 
  JOIN title_crew c ON t.title_id = c.title_id 
  JOIN title_principals j ON t.title_id = j.title_id 
WHERE 
  t.genres LIKE '%thriller%' 
  AND t.startYear BETWEEN 2000 AND 2019 
  AND tr.averageRating > 7 
  AND n.birthYear BETWEEN 1950 AND 1980 
  AND c.category = 'acting' 
  AND j.job = 'lead' 
  AND t.primaryTitle NOT IN (SELECT n.primaryName FROM name_basics n WHERE n.deathYear IS NOT NULL)
GROUP BY 
  t.title_id, 
  t.title, 
  t.primaryTitle, 
  t.originalTitle, 
  t.isAdult, 
  t.startYear, 
  t.endYear, 
  t.runtimeMinutes, 
  t.genres, 
  c.category, 
  j.job, 
  c.characters
HAVING 
  COUNT(DISTINCT j.job) > 1 
  AND COUNT(DISTINCT c.category) > 1
ORDER BY 
  t.startYear DESC, 
  t.title ASC