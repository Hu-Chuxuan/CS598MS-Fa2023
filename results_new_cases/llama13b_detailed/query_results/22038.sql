SELECT * FROM title_basics
WHERE titleType ='movie' AND primaryTitle LIKE '%Purple%'
AND (genres LIKE '%Drama%' OR genres LIKE '%Romance%')
AND (directors LIKE '%Steven%SPIELBERG%' OR writers LIKE '%Alice%Walker%')
AND NOT (isAdult = 1 OR runtimeMinutes > 180)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10