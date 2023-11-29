SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2004 AND (originalTitle LIKE '%Incredibles%' OR primaryTitle LIKE '%Incredibles%')
AND (directors LIKE '%Brad%Bird%' OR writers LIKE '%Brad%Bird%')
AND (characters LIKE '%Bob%Parr%' OR characters LIKE '%Helen%Parr%')
ORDER BY averageRating DESC, numVotes DESC