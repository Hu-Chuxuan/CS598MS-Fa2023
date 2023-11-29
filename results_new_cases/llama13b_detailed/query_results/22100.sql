SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (
    (primaryTitle LIKE '%horror%') OR 
    (genres LIKE '%horror%')
)
ORDER BY startYear DESC, runtimeMinutes DESC