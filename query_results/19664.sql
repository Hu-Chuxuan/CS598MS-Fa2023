SELECT * FROM 
    ( SELECT title_principals.*, count(title_principals.job) AS jc
      from title_principals WHERE job = "Actress" GROUP BY title_principals.job ) AS temp
LEFT JOIN 
     ( select title_principals.*, count(*) as cnt
       from title_principals where job="Actor", (category='Lead Actor') OR (category in ('Supporting Role', 'Guest Star')) AND (job NOT IN ("Director","Writer")) group by job order by cnt desc LIMIT 5 OFFSET 0 ) t ON t.cnt > temp.jc  
WHERE title_principals.primaryName= 'Katharine Heigl'
GROUP BY title_principals.name
ORDER BY title_principals.job DESC