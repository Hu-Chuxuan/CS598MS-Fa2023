SELECT 
  t.title_basics.primaryTitle,
  t.title_basics.startYear,
  t.title_basics.runtimeMinutes,
  t.title_ratings.averageRating,
  t.title_principals.characters
FROM 
  title_basics t
  JOIN title_ratings tr ON t.tconst = tr.tconst
  JOIN name_basics n ON t.primaryName = n.primaryName
  JOIN title_crew c ON t.directors = c.directors
  JOIN title_principals p ON t.tconst = p.tconst
WHERE 
  t.genres LIKE '%horror%'
  AND t.title_ratings.averageRating > (
    SELECT 
      AVG(tr.rating)
    FROM 
      title_ratings tr
      JOIN name_basics n ON tr.tconst = n.tconst
      WHERE 
        n.primaryProfession = 'Actor'
        AND n.knownForTitles LIKE '%Jason X (2001)%'
  )
ORDER BY 
  t.title_ratings.averageRating DESC