SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2016 AND endYear >= 2000
AND (
    (directors LIKE '%Pixar%' AND characters LIKE '%animated%')
    OR (genres LIKE '%Animation%' AND characters LIKE '%kids%')
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5