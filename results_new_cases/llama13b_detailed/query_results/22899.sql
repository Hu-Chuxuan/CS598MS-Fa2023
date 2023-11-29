SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE isAdult = 1 AND (
    (genres LIKE '%Comedy%' AND genres LIKE '%Romance%') OR
    (genres LIKE '%Horror%' AND genres LIKE '%Thriller%')
) AND
(
    (directors LIKE '%Coen%') OR
    (writers LIKE '%Coen%')
) AND
(
    (titleType ='movie') AND
    (startYear BETWEEN 1980 AND 2010) AND
    (runtimeMinutes > 90)
)
ORDER BY startYear DESC