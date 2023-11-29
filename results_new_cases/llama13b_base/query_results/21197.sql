SELECT 
  t.title_id, 
  t.title, 
  t.primaryTitle, 
  t.originalTitle, 
  t.isAdult, 
  t.startYear, 
  t.endYear, 
  t.runtimeMinutes, 
  t.genres, 
  n.name, 
  n.birthYear, 
  n.deathYear, 
  n.primaryProfession, 
  n.knownForTitles, 
  c.category, 
  c.job, 
  c.characters 
FROM 
  title_basics t 
  JOIN name_basics n ON t.primaryTitle = n.primaryName 
  JOIN title_crew c ON t.tconst = c.tconst 
WHERE 
  t.title = 'Ant-Man and the Wasp' AND 
  t.startYear = 2018 AND 
  EXISTS (
    SELECT 
      1 
    FROM 
      title_ratings tr 
    WHERE 
      tr.tconst = t.tconst AND 
      tr.averageRating > (
        SELECT 
          AVG(rating) 
        FROM 
          title_ratings tr2 
        WHERE 
          tr2.tconst IN (
            SELECT 
              tconst 
            FROM 
              title_basics t3 
            WHERE 
              t3.title = 'Black Panther' AND 
              t3.startYear = 2018
          )
      )
  )
ORDER BY 
  t.startYear DESC, 
  t.primaryTitle ASC