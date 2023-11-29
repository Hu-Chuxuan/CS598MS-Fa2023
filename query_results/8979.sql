SELECT * FROM
    ( SELECT * FROM title WHERE titleType = “movie” AND averageRating > 6 ORDER BY numVotes DESC LIMIT 3 ) AS T1 INNER JOIN
        ( SELECT * FROM cast WHERE title IN (“tt0000001”, “tt0000002”, “tt0000003”)) AS C ON T1.tconst=C.castingID OR T1.tconst LIKE CONCAT("%"," ",C.castingID,"%") GROUP BY C.castingID HAVING COUNT(*)>0 ORDER BY AVG(numVotes),COUNT(*) ASC LIMIT 1 OFFSET 0