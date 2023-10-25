SELECT * FROM
( SELECT rating FROM titles WHERE year BETWEEN? AND? ) AS t1
INNER JOIN
( SELECT title FROM names WHERE genre =? OR title IN (?)) AS t2 ON t1.rating >= t2.title