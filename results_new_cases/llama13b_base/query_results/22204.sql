SELECT t1.title_basics.primaryTitle, t1.title_basics.startYear, t1.title_basics.runtimeMinutes, t2.name_basics.primaryName, t3.title_crew.directors, t4.title_principals.characters
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
JOIN title_crew t3 ON t1.tconst = t3.tconst
JOIN title_principals t4 ON t1.tconst = t4.tconst
WHERE t1.genres LIKE '%comedy%' AND t1.genres LIKE '%documentary%' AND t2.birthYear > 1980 AND t2.deathYear < 2020
AND NOT EXISTS (
  SELECT 1 
  FROM title_ratings 
  WHERE t1.tconst = title_ratings.tconst AND title_ratings.averageRating < 7
)
AND NOT EXISTS (
  SELECT 1 
  FROM title_ratings 
  WHERE t1.tconst = title_ratings.tconst AND title_ratings.numVotes < 1000
)
AND t4.characters NOT LIKE '%Coco%'
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC
LIMIT 5