SELECT
  t.title_id,
  t.title_basics.primaryTitle,
  t.title_basics.genres,
  t.title_principals.category,
  t.title_principals.job,
  t.title_ratings.averageRating
FROM
  title_basics t
  JOIN title_crew tc ON t.title_id = tc.tconst
  JOIN title_principals tp ON t.title_id = tp.tconst
  JOIN title_ratings tr ON t.title_id = tr.tconst
WHERE
  t.primaryTitle LIKE '%Adam Sandler%'
  AND tp.category = 'actor'
  AND tr.numVotes > 1000
ORDER BY
  tr.averageRating DESC