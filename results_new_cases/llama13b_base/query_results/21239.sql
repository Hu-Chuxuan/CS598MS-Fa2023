SELECT * FROM title_basics tb
JOIN (
  SELECT tconst, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY tconst
) AS tr ON tb.tconst = tr.tconst
JOIN (
  SELECT nconst, birth_year, death_year, primary_profession, known_for_titles
  FROM name_basics
  WHERE primary_profession IN ('Actress', 'Actor')
  GROUP BY nconst
) AS nb ON tb.directors = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND tb.start_year <= 2004
AND tb.end_year >= 2004
AND EXISTS (
  SELECT 1 FROM title_ratings
  WHERE tconst = tb.tconst AND num_votes > 1000
)
AND NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE tconst = tb.tconst AND rating < 5
)
AND NOT EXISTS (
  SELECT 1 FROM name_basics
  WHERE nconst = tb.directors OR nconst = tb.writers
  AND known_for_titles NOT IN ('The Shawshank Redemption (1994)', 'Mr. Holland's Opus (1995)')
)
ORDER BY avg_rating DESC, start_year DESC