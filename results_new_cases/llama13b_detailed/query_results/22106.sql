SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND genre IN ('Science Fiction', 'Comedy')
AND (startYear BETWEEN 1990 AND 2019 OR endYear BETWEEN 1990 AND 2019)
AND (runtimeMinutes > 60 OR runtimeMinutes < 60)
AND (isAdult = 0 OR isAdult = 1)
LIMIT 5