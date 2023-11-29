SELECT * FROM title_basics tb
INNER JOIN (
  SELECT nconst, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY nconst
) tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Horror%'
AND tr.avg_rating > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE nconst IN (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'actor'
  )
)
ORDER BY tr.avg_rating DESC