SELECT t.title_basics.primaryTitle, t.title_basics.genres, c.name_basics.primaryName, c.name_basics.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.title_crew.directors = c.nconst
WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.genres LIKE '%Horror%'
AND c.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE t.tconst = title_ratings.tconst
  AND title_ratings.averageRating > 7
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE t.tconst = title_principals.tconst
  AND title_principals.category = 'Actor'
  AND title_principals.job NOT LIKE '%Voice%'
)
ORDER BY t.title_basics.runtimeMinutes DESC, t.title_basics.startYear DESC