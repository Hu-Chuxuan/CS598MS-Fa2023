SELECT * FROM 
    (SELECT distinct tconst from title_principals where tconst = 'tt0000001') as x join  
    (SELECT distinct rated_by from title_ratings group by rated_by order by count(*) desc limit 10 )as y left outer join 
    ( SELECT distinct tconst, avg(rating), numvotes from title_ratings group by tconst order by avg(rating) asc limit 10)as z right outer join 
     (SELECT distinct tconst from title_principals where tconst = 'tt0000001') as w inner join 
      (SELECT distinct p.category,job,characters from title_principals as p inner join title_crew as c where p.ordering=c.ordering and p.tconst='tt0000001') as u left outer join 
        (SELECT distinct d.* from title_principals as d inner join title_principals as o where o.ordering >d.ordering and o.tconst='tt0000001') as v left outer join 
         (SELECT distinct tconst from title_principals where tconst like '%Ace%') as q where q.tconst = 'tt0000001')