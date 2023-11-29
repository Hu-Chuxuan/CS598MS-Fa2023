SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, nconst, category, job, characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Science Fiction%'
AND (
    directors = 'nm0085156' OR writers = 'nm0085156'
    OR (directors LIKE '%nm0085156%' AND writers LIKE '%nm0085156%')
)
AND (
    directors = 'nm0005690' OR writers = 'nm0005690'
    OR (directors LIKE '%nm0005690%' AND writers LIKE '%nm0005690%')
)
AND (
    directors = 'nm1588970' OR writers = 'nm1588970'
    OR (directors LIKE '%nm1588970%' AND writers LIKE '%nm1588970%')
)
AND (
    title_ratings.numVotes > 1000
    OR (title_ratings.averageRating > 7 AND title_ratings.numVotes > 50)
)
ORDER BY title_ratings.averageRating DESC, title_ratings.numVotes DESC