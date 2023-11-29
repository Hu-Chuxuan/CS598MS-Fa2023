SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2010 AND runtimeMinutes > 120
AND (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tconst = title_basics.tconst
    AND numVotes > 100
) > (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tconst = title_basics.tconst
    AND numVotes <= 100
)
AND NOT EXISTS (
    SELECT 1
    FROM title_principals
    WHERE nconst = title_basics.directors OR nconst = title_basics.writers
    AND category = 'director' OR category = 'writer'
    AND job = 'Hereafter'
)
AND (
    SELECT COUNT(DISTINCT nconst)
    FROM title_principals
    WHERE nconst = title_basics.directors OR nconst = title_basics.writers
    AND category = 'director' OR category = 'writer'
    AND job = 'Zathura' OR job = 'Jumanji'
) > 1
ORDER BY AVG(rating) DESC, startYear DESC