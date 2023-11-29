SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE isAdult = 0 AND (
    (genres LIKE '%Comedy%' AND numVotes > 500) OR
    (genres LIKE '%Crime%' AND numVotes > 500) OR
    (genres LIKE '%Drama%' AND numVotes > 500)
)
ORDER BY averageRating DESC, numVotes DESC