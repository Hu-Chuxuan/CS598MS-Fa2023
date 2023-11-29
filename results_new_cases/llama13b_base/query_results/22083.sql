SELECT 
  t.title_id, t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
  AVG(r.rating) AS avg_rating, COUNT(r.title_id) AS num_votes
FROM 
  title_basics t
  JOIN title_ratings r ON t.title_id = r.title_id
  JOIN name_basics n ON t.directors = n.name_id OR t.writers = n.name_id
WHERE 
  t.genres LIKE '%comedy%' AND 
  t.title NOT IN (SELECT title FROM title_principals WHERE category = 'actor') AND 
  NOT EXISTS (
    SELECT 1 FROM title_principals 
    WHERE title_id = t.title_id AND category = 'actress'
  )
GROUP BY 
  t.title_id, t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres
HAVING 
  AVG(r.rating) > (SELECT AVG(r.rating) FROM title_ratings WHERE title_id IN (SELECT title_id FROM title_principals WHERE category = 'actor'))
ORDER BY 
  AVG(r.rating) DESC, num_votes DESC