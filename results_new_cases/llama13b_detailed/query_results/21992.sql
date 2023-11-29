SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
WHERE t.genres LIKE '%Horror' AND t.genres LIKE '%Comedy'
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE t.tconst = title_ratings.tconst
  AND title_ratings.averageRating > 5
)
AND EXISTS (
  SELECT 1
  FROM title_principals
  WHERE t.tconst = title_principals.tconst
  AND title_principals.category = 'actor'
  AND title_principals.job NOT IN ('self', 'producer')
)
ORDER BY t.startYear DESC, t.endYear DESC, n.primaryName ASC