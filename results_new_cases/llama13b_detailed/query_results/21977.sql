SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, principalCast, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1981 AND runtimeMinutes > 80
AND (
    principalCast LIKE '%Zombieland%' OR
    principalCast LIKE '%Shaun of the Dead%' OR
    principalCast LIKE '%Terminator 2:%' OR
    principalCast LIKE '%Deadpool%' OR
    principalCast LIKE '%The Terminator%'
)
ORDER BY runtimeMinutes DESC, startYear DESC