SELECT * FROM title_basics tb
JOIN (
  SELECT title_id, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY title_id
) tr ON tb.title_id = tr.title_id
JOIN (
  SELECT n_const, primary_name, birth_year, death_year, primary_profession, known_for_titles
  FROM name_basics
  WHERE primary_profession IN ('Actress', 'Actor')
  GROUP BY n_const
) nb ON tb.title_id = nb.known_for_titles
WHERE tb.genres LIKE '%Science Fiction%' AND tb.genres LIKE '%Comedy%' AND tb.startYear > 1990 AND tb.endYear < 2020
AND EXISTS (
  SELECT 1 FROM title_ratings
  WHERE title_id = tb.title_id AND numVotes > 10000
)
AND EXISTS (
  SELECT 1 FROM name_basics
  WHERE n_const = tb.primaryName AND primary_profession IN ('Actress', 'Actor')
)
ORDER BY avg_rating DESC