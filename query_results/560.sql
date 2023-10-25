SELECT * FROM (
    SELECT DISTINCT t.*, COUNT(DISTINCT nc.*.primaryName) AS numCharacters
       , CASE WHEN SUM((CASE WHEN r.rating >= 7 THEN 1 ELSE -1 END)) > 0
                AND SUM((CASE WHEN r.averageRating < 6 OR r.numVotes IS NULL THEN 1 ELSE -1 END)) = 0
            THEN 'good'
            ELSE IF ((SUM((CASE WHEN r.averageRating <= 6 THEN 1 ELSE -1 END))) / SUM((CASE WHEN r.avgRating IS NOT NULL THEN 1 ELSE -1 END)) BETWEEN 0 && 0.49)
                   THAN 'bad'
             ELSE 'ugly'
         END AS rating
     FROM title_basics t INNER JOIN (title_ratings R) ON t.tconst=r.tconst WHERE t.isAdult='false' GROUP BY t.tconst ORDER BY (case when sum(distinct count(nc.*.primaryName))>0 then 0 else 1 end)