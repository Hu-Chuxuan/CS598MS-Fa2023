SELECT
  t.title_id,
  t.title_basics.primaryTitle,
  t.title_basics.originalTitle,
  t.title_basics.genres,
  t.title_crew.directors,
  t.title_crew.writers,
  t.title_principals.characters,
  AVG(tr.rating) AS averageRating
FROM
  title_basics t
  JOIN title_crew ON t.title_id = title_crew.tconst
  JOIN title_principals ON t.title_id = title_principals.tconst
  JOIN title_ratings tr ON t.title_id = tr.tconst
WHERE
  t.titleType ='movie'
  AND t.isAdult = 0
  AND t.startYear = 2002
  AND t.genres LIKE '%Zombie'
  AND tr.numVotes > 100
GROUP BY
  t.title_id
HAVING
  AVG(tr.rating) > (SELECT AVG(rating) FROM title_ratings WHERE numVotes > 100)
ORDER BY
  AVG(tr.rating) DESC