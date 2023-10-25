SELECT DISTINCT tc.* FROM titles AS tc INNER JOIN
( SELECT avg(rating), count(*) as cnt
FROM ratings WHERE rating >.8 AND userID =?
GROUP BY titleId ) AS r ON r.titleId=tc.id