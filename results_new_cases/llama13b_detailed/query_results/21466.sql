SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 1992 AND endYear >= 1987 AND runtimeMinutes > 12 AND genres LIKE '%Historical%'
AND directors LIKE '%Francis%'(+) AND writers LIKE '%Stoker%'(+)
AND name_basics.primaryName LIKE '%Fred%'(+) AND name_basics.knownForTitles LIKE '%Dracula%'(+)
GROUP BY tconst
HAVING COUNT(DISTINCT name_basics.primaryName) > 1
ORDER BY averageRating DESC, numVotes DESC