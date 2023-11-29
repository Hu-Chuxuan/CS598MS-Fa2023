SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Musical' OR genres LIKE '%Comedy' OR genres LIKE '%Romance')
AND directors = 'nm0085156' -- Replace with the user's preferred director
AND writers = 'nm0085156' -- Replace with the user's preferred writer
AND name_basics.primaryName = 'Fred Astaire' -- Replace with the user's preferred actor
AND name_basics.knownForTitles = 'tt0053137,tt00319' -- Replace with the user's preferred movies
ORDER BY startYear DESC, runtimeMinutes ASC
LIMIT 5