SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND genres LIKE '%Fantasy%' AND isAdult = 0
AND (
    (directors = 'nm1588970' AND primaryProfession LIKE '%Actor%' AND knownForTitles LIKE '%Jurassic Park%')
    OR (directors = 'nm0085156' AND primaryProfession LIKE '%Writer%' AND knownForTitles LIKE '%Jurassic Park%')
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5