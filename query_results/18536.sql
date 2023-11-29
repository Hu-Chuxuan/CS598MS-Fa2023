SELECT * FROM
    (SELECT t.*, r.rating AS recommended_rating, SUM((r.numVotes + c.numVotes)) OVER (PARTITION BY t.tconst ORDER BY c.numVotes DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total_votes
     FROM title_basic t INNER JOIN
         (SELECT t.tconst, AVG(AVG(rating)) AS avg_rating
          FROM title_ratings r GROUP BY t.tconst ) r ON t.tconst = r.tconst LEFT OUTER JOIN
        ( SELECT t.*, COUNT(*) AS numVotes
           FROM title_ratings r WHERE t.tconst=r.tconst AND r.averageRating > 6.0
             GROUP BY t.tconst
              HAVING COUNT(*) >= 100 )c ON t.tconst=c.tconst
      WHERE t.isAdult <> '1' AND ((r.recommended_rating>6 OR c.total_votes>0)))
WHERE r.averageRating>=6 OR c.total_votes>0)