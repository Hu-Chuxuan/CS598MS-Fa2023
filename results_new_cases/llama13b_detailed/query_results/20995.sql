SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
FROM title_basics
WHERE isAdult = 0 AND (
    titleType ='movie' AND
    genres LIKE '%Animation%' AND
    genres LIKE '%Comedy%'
)
ORDER BY startYear DESC