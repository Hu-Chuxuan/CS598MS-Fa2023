SELECT * FROM title_basics tb
JOIN (
  SELECT nconst, avg_rating, num_votes
  FROM title_ratings
  GROUP BY nconst
) tr ON tb.tconst = tr.tconst
JOIN (
  SELECT nconst, job, characters
  FROM title_principals
  GROUP BY nconst
) tp ON tb.tconst = tp.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2015
AND tb.endYear >= 2000
AND tp.category = 'actor'
AND tr.averageRating > 6.5
ORDER BY tr.averageRating DESC, tp.job ASC