SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE isAdult = 1 AND (genres LIKE '%Horror%' OR genres LIKE '%Science Fiction%')
AND (directors LIKE '%James Gunn%' OR directors LIKE '%Joss Whedon%')
AND (title_ratings.averageRating > 6.5 AND title_ratings.numVotes > 1000)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5