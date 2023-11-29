SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, characters
FROM title_basics
WHERE isAdult = 0 AND (genres LIKE '%Comedy%' OR genres LIKE '%Horror%')
AND (directors LIKE '%nm1588970%' OR writers LIKE '%nm1588970%')
AND NOT (characters LIKE '%[""]%' OR characters LIKE '%[""]%')
ORDER BY startYear DESC, runtimeMinutes ASC