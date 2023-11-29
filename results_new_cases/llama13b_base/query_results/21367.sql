SELECT 
  t.title_id, t.title, t.original_title, t.start_year, t.end_year, t.runtime_minutes, t.genres, 
  n.name, n.birth_year, n.death_year, n.primary_profession, n.known_for_titles, 
  c.category, c.job, c.characters
FROM 
  title_basics t 
  JOIN name_basics n ON t.primary_title = n.primary_name 
  JOIN title_crew c ON t.directors = c.directors OR t.writers = c.writers 
WHERE 
  t.title = 'Training Day' AND 
  t.genres LIKE '%thriller' AND 
  t.start_year = 2001 AND 
  NOT EXISTS (
    SELECT 
      1 
    FROM 
      title_ratings tr 
    WHERE 
      tr.tconst = t.title_id AND 
      tr.average_rating < 7
  ) AND 
  NOT EXISTS (
    SELECT 
      1 
    FROM 
      title_principals tp 
    WHERE 
      tp.title_id = t.title_id AND 
      tp.category = 'action'
  )
JOIN (
  SELECT 
    t.title_id, t.average_rating, COUNT(1) as numVotes 
  FROM 
    title_ratings tr 
  GROUP BY 
    t.title_id
) rated ON t.title_id = rated.title_id AND rated.average_rating > 7
JOIN (
  SELECT 
    t.title_id, COUNT(1) as numCharacters 
  FROM 
    title_principals tp 
  GROUP BY 
    t.title_id
) char ON t.title_id = char.title_id AND char.numCharacters > 5
ORDER BY 
  rated.average_rating DESC, char.numCharacters DESC