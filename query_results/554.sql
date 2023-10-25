SELECT DISTINCT t1.* FROM
( SELECT * FROM title_basic WHERE tconst = "Happy Gilmore" ) AS t1 INNER JOIN
( SELECT * FROM title_rating WHERE avgRating >= 7 AND numVotes > 1000 ) AS t2 ON t1.titleID = t2.titleID