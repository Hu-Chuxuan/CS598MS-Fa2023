SELECT t1.title_id, t1.title, t1.original_title, t1.start_year, t1.end_year, t1.runtime_minutes, t1.genres, t2.average_rating, t2.num_votes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
WHERE t1.genres LIKE '%action%' AND t1.genres LIKE '%romance%'
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  JOIN name_basics t4 ON t3.person_id = t4.person_id
  WHERE t3.job = 'Director' AND t4.birth_year = '1980'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t5
  JOIN name_basics t6 ON t5.person_id = t6.person_id
  WHERE t5.job = 'Writer' AND t6.birth_year = '1980'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew t7
  WHERE t7.department = 'Cinematography' AND t7.job = 'Director of Photography'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew t8
  WHERE t8.department = 'Film Editing' AND t8.job = 'Editor'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t9
  WHERE t9.job = 'Actor' AND t9.birth_year = '1980'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t10
  WHERE t10.job = 'Actress' AND t10.birth_year = '1980'
)
ORDER BY average_rating DESC, num_votes DESC
LIMIT 10