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
  r.averageRating,
  r.numVotes,
  c.category,
  c.job,
  c.characters
FROM 
  title_basics t
  JOIN title_ratings r ON t.title_id = r.tconst
  JOIN name_basics n ON t.primaryTitle = n.primaryName
  JOIN title_crew c ON t.title_id = c.tconst
WHERE 
  t.titleType = 'feature film'
  AND t.isAdult = 0
  AND r.numVotes > 1000
  AND t.genres LIKE '%thriller%'
  AND t.startYear BETWEEN 2000 AND 2020
  AND NOT EXISTS (
    SELECT 
      1
    FROM 
      title_principals p
    WHERE 
      p.title_id = t.title_id AND 
      p.category = 'actor' AND 
      p.job = 'lead'
    EXCEPT 
      SELECT 
      1
    FROM 
      title_principals p
    WHERE 
      p.title_id = t.title_id AND 
      p.category = 'actor' AND 
      p.job = 'lead'
      AND p.characters = 'James Franco'
  )
ORDER BY 
  r.averageRating DESC, 
  t.startYear DESC