SELECT * FROM
( SELECT rating AS r, COUNT(*) AS cnt, t.title AS tname, t.genre AS genre, t.primaryTitle AS primaryTitle, t.originalTitle as origTitle, t.isAdult as adult, t.startYear as yearStart, t.endYear as yearEnd, t.runtimeMinutes as minTime, t.numVotes as votesCount
FROM titles AS t JOIN ratings ON t.id = ratings.tId ORDER BY r DESC LIMIT 6 ) AS m
GROUP BY genre