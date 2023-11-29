SELECT * FROM title_basics
WHERE genres LIKE '%Horror%'
AND runtimeMinutes < 120
AND (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_id = tconst
) > 6

UNION

SELECT * FROM title_basics
WHERE primaryTitle LIKE '%The Exorcist%'
OR primaryTitle LIKE '%It%'

ORDER BY runtimeMinutes ASC