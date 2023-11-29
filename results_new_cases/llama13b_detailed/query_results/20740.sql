SELECT * FROM title_basics tb
JOIN (
  SELECT nconst, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY nconst
) tr ON tb.nconst = tr.nconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.endYear <= 2020
AND tr.avg_rating > 6
ORDER BY tr.avg_rating DESC