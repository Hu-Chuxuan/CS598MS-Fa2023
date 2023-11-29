SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
FROM title_basics
WHERE isAdult = 1 AND (
    (genres LIKE '%Romance%' AND genres LIKE '%Comedy%')
    OR (genres LIKE '%Drama%' AND genres LIKE '%Thriller%')
)
ORDER BY averageRating DESC, numVotes DESC