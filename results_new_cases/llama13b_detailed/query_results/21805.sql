SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.nconst, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear > 2000 AND endYear < 2020 AND runtimeMinutes > 90 AND genres LIKE '%Drama%' AND directors LIKE '%Pedro Almodovar%'
GROUP BY tconst
HAVING COUNT(DISTINCT name_basics.nconst) > 10
ORDER BY averageRating DESC, numVotes DESC