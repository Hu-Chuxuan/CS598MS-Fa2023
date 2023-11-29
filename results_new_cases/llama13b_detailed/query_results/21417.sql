SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (directors LIKE '%Wayans Brothers%' OR writers LIKE '%Wayans Brothers%')
AND (name_basics.primaryName LIKE '%Wayans%' OR name_basics.knownForTitles LIKE '%Wayans%')
GROUP BY tconst
ORDER BY averageRating DESC, numVotes DESC