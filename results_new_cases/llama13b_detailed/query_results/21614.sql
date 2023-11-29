SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Fantasy%' AND genres LIKE '%Action%'
AND (
    directors = 'nm0085156' OR
    directors = 'nm0374658' OR
    directors = 'nm1588970'
)
AND (
    writers = 'nm0085156' OR
    writers = 'nm1588970'
)
AND (
    characters LIKE '%Assistant%' OR
    characters LIKE '%Blacksmith%'
)
ORDER BY startYear DESC, runtimeMinutes DESC