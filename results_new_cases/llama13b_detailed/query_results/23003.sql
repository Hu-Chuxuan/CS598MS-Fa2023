SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2003 AND runtimeMinutes > 60 AND genres LIKE '%Documentary%' AND directors LIKE '%Ford%']
AND (name_basics.primaryName LIKE '%Up%' OR name_basics.primaryName LIKE '%Denali%')
ORDER BY averageRating DESC, numVotes DESC