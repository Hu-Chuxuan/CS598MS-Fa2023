SELECT * FROM title_basics
WHERE genres = 'Drama' AND runtimeMinutes > 120
AND (
    (directors = 'nm0085156' OR writers = 'nm0085156')
    OR (directors = 'nm0005690' OR writers = 'nm0005690')
)
AND (
    (titleType ='movie' AND startYear > 2000)
    OR (titleType = 'tvseries' AND startYear > 2000 AND endYear IS NULL)
)
AND NOT (titleType ='short' OR titleType = 'video')

This SQL query will retrieve all movies and TV series with a runtime of over 2 hours, that are classified as dramas, and have been directed or written by either Pedro Almodóvar or Martin Scorsese. The query also filters out shorts and videos