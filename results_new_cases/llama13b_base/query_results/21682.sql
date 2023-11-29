SELECT t1.title_id, t1.title, t1.original_title, t1.start_year, t1.end_year, t1.runtime_minutes, t1.genres, t2.average_rating, t2.num_votes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
JOIN name_basics n ON t1.primary_title = n.primary_name
WHERE t1.genres LIKE '%foreign%' AND t1.start_year BETWEEN 1980 AND 1999
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE title_id = t1.title_id AND category = 'comedy'
)
AND NOT EXISTS (
  SELECT 1 FROM title_crew
  WHERE title_id = t1.title_id AND job = 'director'
)
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE title_id = t1.title_id AND job = 'actor'
)
AND t2.average_rating > (
  SELECT AVG(t3.rating)
  FROM title_ratings t3
  WHERE t3.title_id = t1.title_id
)
AND t2.num_votes > 100
ORDER BY t2.average_rating DESC