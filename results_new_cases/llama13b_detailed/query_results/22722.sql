SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2017 AND endYear >= 2000 AND runtimeMinutes > 120
AND (
    (genres LIKE '%War%') OR 
    (directors LIKE '%Christopher Nolan%') OR 
    (writers LIKE '%Christopher Nolan%') OR 
    (characters LIKE '%Tom Hardy%') OR 
    (characters LIKE '%Mark Rylance%')
)
AND NOT (
    (title = 'Dunkirk') OR 
    (title = 'Darkest Hour') OR 
    (title = 'Atonement')
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5