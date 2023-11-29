SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Comedy%' OR genres LIKE '%Drama%')
AND (startYear = 2004 OR startYear = 2005)
AND NOT (title = 'The Butterfly Effect (2004)' OR title = 'Crash (2004)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5