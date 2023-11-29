SELECT * FROM title_basics tb
JOIN (
  SELECT title_id, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY title_id
) tr ON tb.title_id = tr.title_id
JOIN (
  SELECT nb.name_id, COUNT(DISTINCT tc.category) AS num_categories
  FROM name_basics nb
  JOIN title_crew tc ON nb.name_id = tc.name_id
  GROUP BY nb.name_id
) nc ON tb.title_id = nc.name_id
WHERE tb.genres LIKE '%horror%' OR tb.genres LIKE '%comedy%'
AND tb.startYear BETWEEN 1970 AND 2010
AND tb.runtimeMinutes > 90
AND NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE title_id = tb.title_id AND user_id = ANY (
    SELECT user_id
    FROM user_preferences
    WHERE title_id = tb.title_id
  )
)
ORDER BY avg_rating DESC, num_categories DESC