SELECT 
  title_basics.title,
  title_basics.primaryTitle,
  title_ratings.averageRating,
  title_crew.directors,
  title_principals.characters
FROM 
  title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN title_crew ON title_basics.tconst = title_crew.tconst
  JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
  title_basics.titleType ='movie'
  AND title_basics.isAdult = '0'
  AND title_ratings.numVotes > 1000
  AND title_basics.runtimeMinutes > 60
  AND title_basics.genres LIKE '%animals%'
  AND title_basics.startYear > 1980
  AND title_basics.endYear < 2020
  AND NOT EXISTS (
    SELECT 
      * 
    FROM 
      title_ratings 
    WHERE 
      title_ratings.tconst = title_basics.tconst 
      AND title_ratings.averageRating < 5
  )
GROUP BY 
  title_basics.title,
  title_basics.primaryTitle,
  title_ratings.averageRating,
  title_crew.directors,
  title_principals.characters
HAVING 
  COUNT(DISTINCT title_principals.characters) > 1
  AND COUNT(DISTINCT title_crew.directors) > 1
ORDER BY 
  title_ratings.averageRating DESC,
  title_basics.primaryTitle ASC