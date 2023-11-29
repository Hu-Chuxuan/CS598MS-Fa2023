SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, ordering, category, job, characters
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Adventure%' OR genres LIKE '%Fantasy%')
AND (directors = 'nm0085156' OR writers = 'nm0085156')
AND (characters LIKE '%Pirates%' OR characters LIKE '%Caribbean%')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5