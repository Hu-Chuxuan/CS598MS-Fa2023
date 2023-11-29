SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE
genres LIKE '%Action%' AND
directors = 'nm0085156' AND
(
    characters = '[""Assistant""]' OR
    characters = '[""Blacksmith""]'
)
AND
(
    title_ratings.averageRating > 5 OR
    title_ratings.numVotes > 1000
)
ORDER BY
title_ratings.averageRating DESC, title_principals.ordering ASC
LIMIT 5