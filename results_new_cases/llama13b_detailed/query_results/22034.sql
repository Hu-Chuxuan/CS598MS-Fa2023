SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2011 AND endYear >= 2009
AND (
    (genres LIKE '%Comedy%' AND genres LIKE '%Action%' AND genres LIKE '%Adventure%')
    OR (genres LIKE '%Horror%' AND genres LIKE '%Science Fiction%')
)
AND directors = ANY (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'director' AND knownForTitles = 'tt0053137'
)
AND writers = ANY (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'writer' AND knownForTitles = 'tt0053137'
)
AND characters = ANY (
    SELECT nconst
    FROM name_basics
    WHERE primaryProfession = 'actor' AND knownForTitles = 'tt0053137'
)
ORDER BY rating DESC, numVotes DESC