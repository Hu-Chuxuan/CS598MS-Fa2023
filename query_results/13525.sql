SELECT * FROM 
( SELECT rating
     , count(*) AS votesCount
    FROM ratings
   GROUP BY rating ) AS r
LEFT JOIN titles t ON r.rating = t.averageRating