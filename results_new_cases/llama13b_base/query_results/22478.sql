SELECT t1.title, t1.imdb_id, t2.average_rating, t2.num_votes, t3.name, t3.job
FROM title_basics t1
JOIN title_ratings t2 ON t1.imdb_id = t2.title_id
JOIN name_basics t3 ON t1.original_title = t3.name
WHERE t1.genres LIKE '%Animation%' AND t2.average_rating > 7 AND t3.primary_profession = 'Director'
AND EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_id = t1.imdb_id AND category = 'Director' AND job = 'Director'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_id = t1.imdb_id AND category = 'Actor' AND job = 'Actor'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew
  WHERE title_id = t1.imdb_id AND role = 'Director'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_crew
  WHERE title_id = t1.imdb_id AND role = 'Actor'
)
AND t1.start_year = 2017
AND t1.end_year = 2017
AND t2.num_votes > 10000
AND t2.average_rating > 7.5
AND t3.name NOT IN ('Lee Unkrich', 'Pixar Animation Studios') -- exclude The Incredibles (2004) and Finding Dory (2016)

ORDER BY t2.average_rating DESC, t3.name ASC