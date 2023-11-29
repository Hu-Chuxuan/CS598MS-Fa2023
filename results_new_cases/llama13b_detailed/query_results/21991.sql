SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE genres = 'Drama' AND startYear = 2013 AND endYear = 2016 AND runtimeMinutes > 120
AND (directors LIKE '%Tom%Hanks%' OR directors LIKE '%Clint%Eastwood%')
AND characters NOT LIKE '%animated%'
AND characters NOT LIKE '%documentary%'
ORDER BY averageRating DESC, numVotes DESC