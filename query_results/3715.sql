SELECT * FROM
    tconst JOIN
        ( SELECT rating
             , COUNT(*) AS votes
          FROM ratings
         WHERE user = "userInput" AND genre IN ('Action','Comedy') GROUP BY genre ) as voteCounts ON tconst.titleType=voteCounts.rating