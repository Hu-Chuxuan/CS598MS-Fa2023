SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1978 AND runtimeMinutes > 90 AND genres LIKE '%Horror%'
AND (directors LIKE '%John Carpenter%' OR writers LIKE '%John Carpenter%')
AND name_basics.primaryName NOT IN (SELECT knownForTitles FROM name_basics WHERE birthYear > 1950)
AND name_basics.primaryName NOT IN (SELECT knownForTitles FROM name_basics WHERE deathYear < 1970)
AND name_basics.primaryProfession NOT IN (SELECT job FROM name_basics WHERE category = 'actor')
AND name_basics.knownForTitles NOT IN (SELECT tconst FROM title_basics WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1978 AND runtimeMinutes > 90 AND genres LIKE '%Horror%')
ORDER BY runtimeMinutes DESC, numVotes DESC, averageRating DESC
LIMIT 5