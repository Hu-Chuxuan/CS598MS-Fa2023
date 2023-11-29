SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE isAdult = 0 AND (
    titleType ='movie' AND
    genres LIKE '%Action%' AND
    directors LIKE '%Jason Bateman%' OR
    directors LIKE '%Tiffany Haddish%'
)
ORDER BY startYear DESC, runtimeMinutes DESC