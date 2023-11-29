SELECT * FROM (
    SELECT DISTINCT
        t.*
    , RANK() OVER (PARTITION BY rr_id ORDER BY avg_rating DESC) AS rr_rank
    , CASE WHEN avg_rating >.5 THEN 1 ELSE 0 END AS rated
   FROM
      ((title_basic tb LEFT JOIN title_ratings tr ON tb.title_id = tr.title_id AND tr.averageRating >=.5 )
       INNER JOIN title_crew tc USING (title_id))
     WHERE NOT EXISTS (SELECT 1 from title_principal pr where tb.title_id=pr.title_id)