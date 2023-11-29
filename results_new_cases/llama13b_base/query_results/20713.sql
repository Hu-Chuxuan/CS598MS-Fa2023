SELECT 
  title_basics.title,
  title_basics.primaryTitle,
  title_ratings.averageRating,
  name_basics.primaryName,
  title_crew.directors,
  title_principals.characters
FROM 
  title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN name_basics ON title_basics.tconst = name_basics.tconst
  JOIN title_crew ON title_basics.tconst = title_crew.tconst
  JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
  title_basics.genres = 'action' OR title_basics.genres = 'comedy' OR title_basics.genres = 'click flicks'
  AND title_ratings.numVotes > 1000
  AND name_basics.primaryName IN (SELECT primaryName FROM name_basics WHERE knownForTitles IN ('Deadpool (2016)'))
GROUP BY 
  title_basics.title,
  title_basics.primaryTitle,
  title_ratings.averageRating,
  name_basics.primaryName,
  title_crew.directors,
  title_principals.characters
HAVING 
  AVG(title_ratings.averageRating) > 7
ORDER BY 
  AVG(title_ratings.averageRating) DESC