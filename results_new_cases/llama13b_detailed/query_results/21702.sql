SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2004 AND runtimeMinutes > 60
AND (genres LIKE '%kung-fu%' OR genres LIKE '%action%' OR genres LIKE '%adventure%')
AND (directors LIKE '%The%Last%Dragon%20(2004)%' OR directors LIKE '%The%Last%Dragon%20(2004)%')
AND (writers LIKE '%The%Last%Dragon%20(2004)%' OR writers LIKE '%The%Last%Dragon%20(2004)%')
AND (characters LIKE '%The%Last%Dragon%20(2004)%' OR characters LIKE '%The%Last%Dragon%20(2004)%')
ORDER BY averageRating DESC, numVotes DESC