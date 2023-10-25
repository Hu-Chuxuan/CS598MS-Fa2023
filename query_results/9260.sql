SELECT * FROM title_basics tb JOIN
( SELECT avg(rating), count(*) as votes
FROM title_ratings tr WHERE rating > 7 AND userid =? UNION ALL
SELECT avg(rating), count(*) AS votes
FROM title_ratings tr WHERE rating < 8 AND userid!=? ) r ON r.avg >= 7