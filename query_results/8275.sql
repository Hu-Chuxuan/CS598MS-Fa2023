SELECT * FROM (
    SELECT
        r.*,
        cnt = COUNT(*) OVER() AS totalCount
     FROM
         (SELECT 
            t.tconst,
            sum((v.numVotes + v2.numVotes)) / count(*),
            avg(v.averageRating)
             from title_ratings t join vote v where ((v.primaryTitle like '%' ||? || '%')) group by t.tconst order by avg desc limit 1) r
   WHERE 
       EXISTS ( SELECT 1 from (
                SELECT 
                    t.*,
                    cnt = COUNT(*) over () as totalCount
               from
                   (SELECT 
                      t.tconst,
                      sum((v.numVotes + v2.numVotes)) / count (*),
                      avg(v.averageRating)
                     from title_ratings t join vote v where ((v.primaryTitle like '%' ||? || '%')) group by t.tconst ) r
              WHERE 
                  exists (SELECT 1 from title_principals p where p.job='Actor') AND EXISTS (SELECT 1 from title_principals p where p.category='Actress') GROUP BY t.tconst HAVING totalcount > 2 ORDER BY avg DESC LIMIT 1
           ) b where r.tconst=b.tconst and r.avg>=(b.avg*0.5)
      )
     WHERE r.tconst IN ('tt0000001','tt0000002')