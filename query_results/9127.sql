SELECT * FROM
(SELECT t.*, r.averageRating as rating, SUM(r.numVotes)/SUM(t.runtimeMinutes*r.numVotes)*100 AS percentageFromUsers
FROM titles AS t LEFT JOIN ratings AS r ON r.titleId = t.id WHERE r.rating > 8 AND t.startYear <= 2019 GROUP BY t.id ORDER by percentageFromUsers DESC LIMIT 10