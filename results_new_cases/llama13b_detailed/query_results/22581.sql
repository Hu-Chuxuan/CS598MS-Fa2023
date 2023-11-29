SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Comedy%'
GROUP BY tconst
HAVING COUNT(DISTINCT characters) > 2
ORDER BY averageRating DESC