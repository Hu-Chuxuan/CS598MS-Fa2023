SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Vampire%'
AND (
    directors LIKE '%Fright Night%' OR
    writers LIKE '%Fright Night%' OR
    name_basics.knownForTitles LIKE '%Fright Night%'
)
AND NOT (
    directors LIKE '%The Lost Boys%' OR
    writers LIKE '%The Lost Boys%' OR
    name_basics.knownForTitles LIKE '%The Lost Boys%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5