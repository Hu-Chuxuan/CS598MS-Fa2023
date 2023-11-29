SELECT 
  t.title_basics.title,
  t.title_basics.primaryTitle,
  t.title_basics.originalTitle,
  t.title_basics.isAdult,
  t.title_basics.startYear,
  t.title_basics.endYear,
  t.title_basics.runtimeMinutes,
  t.title_basics.genres,
  r.averageRating,
  r.numVotes
FROM 
  title_basics t
  JOIN title_ratings r ON t.title_basics.tconst = r.tconst
WHERE 
  t.genres = 'drama'
  AND r.averageRating > (
    SELECT 
      AVG(r2.averageRating)
    FROM 
      title_ratings r2
      JOIN title_basics t2 ON r2.tconst = t2.tconst
    WHERE 
      t2.primaryTitle = 'Seven'
      OR t2.primaryTitle = 'Wind River'
  )
ORDER BY 
  r.averageRating DESC