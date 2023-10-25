SELECT * FROM
    ( SELECT tc.*,
        (CASE WHEN (tc.title_type = 'Movie') THEN 1 ELSE -1 END ) AS type_count
     FROM title_basics as tb LEFT JOIN
         (SELECT * from title_rating WHERE avg(average_rating)>=6 AND average_votes >= 2000) tr ON (tb.movieid=tr.movieid)
      RIGHT OUTER JOIN
          (select distinct nc.*
           from name_basic as na left join name_category as ns on (na.name_primary=ns.name_primary)) NC on (tb.movieId=nc.name_primary)
       INNER JOIN
            ( select dc.* from title_crew as dt left join director as dd on (dt.director_id=dd.director_ID) where dt.movieId in ('The Hitchhiker’s Guide to the Galaxy','Blade Runner','Blade Runner 2049')) DC on (dc.movieId=tb.movieId)
        INNER JOIN
             ( select pc.* from title_principal as pt left join character as c on (pt.character_id=c.character_id) inner join actor as aa on (c.actor_id=aa.actor_ID) where aa.actor_id IN ('Harris Ford','Jared Leto') order by pt.ordering desc limit 10) PC on (pc.movieId=tb.movieId)
   GROUP BY tc.movieid ORDER BY tc.title_type DESC LIMIT 5