SELECT * FROM
    ( SELECT DISTINCT tconst, averageRating AS avgrat,numVotes AS vots, rating AS ratng
        FROM title_rating WHERE titleType = “movie” AND averageRating > 7 ORDER BY AVG(averageRating),numVotes DESC LIMIT 1 ) AS T1 LEFT JOIN
    ( SELECT DISTINCT tconst, averageRating AS avgrat,numVotes AS vots, rating AS ratng
     FROM title_rating WHERE titleType = “movie” AND averageRating <= 7 OR numvotes >= 10000000 OR averageRating < 5 ORDER BY AVG(avgrat))AS T2 ON T1.tconst=T2.tconst GROUP BY tconst HAVING COUNT(*)>2 ORDER BY tconst ASC