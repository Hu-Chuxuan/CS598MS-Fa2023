SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    array_agg(name -> 'nmconst', category -> 'category', job -> 'job', characters -> 'characters') AS principals
  FROM title_basics
  WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2012 AND endYear >= 1985
  GROUP BY tconst
) AS titles
WHERE exists (
  SELECT 1 FROM title_crew
  WHERE titles.tconst = tconst
) AND exists (
  SELECT 1 FROM title_principals
  WHERE titles.tconst = tconst
) AND genres @> 'Time Travel'
ORDER BY rating DESC