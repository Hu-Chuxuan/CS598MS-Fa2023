SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE isAdult = 0
AND (
    titleType ='movie'
    OR titleType ='short'
    OR titleType = 'tvseries'
    OR titleType = 'tvepisode'
    OR titleType = 'video'
)
AND (
    primaryTitle LIKE '%family%'
    OR originalTitle LIKE '%family%'
    OR genres LIKE '%family%'
)
AND (
    directors LIKE '%%The% Karate Kid  (2010)%'
    OR directors LIKE '%I Now Pronounce You Chuck & Larry (2007)%'
    OR directors LIKE '%Ted  (2012)%'
    OR directors LIKE '%The Goonies (1985)%'
)
AND (
    nconst NOT IN (
        SELECT nconst
        FROM name_basics
        WHERE birthYear > 1980
    )
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10