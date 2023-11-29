SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Romance%'
AND (directors OR writers) IN (
  SELECT nconst
  FROM name_basics
  WHERE primaryProfession LIKE '%Director%' OR primaryProfession LIKE '%Writer%'
)
AND (name_basics.primaryName LIKE '%Ryan Gosling%' OR name_basics.primaryName LIKE '%Emma Stone%')
ORDER BY startYear DESC, endYear DESC, runtimeMinutes DESC