SELECT * FROM
(select title_name as "title", rating from ratings where rating > 7 AND genre = 'comedy') AS t1
JOIN
(select distinct title_name, year - 2008 from cast WHERE year < 2009 ) AS c ON t1.title LIKE CONCAT('%',c.year,'-%') OR t1.title LIKE CONCAT('%',CAST(c.year-1 AS CHAR),'-',CONCAT('%',c.year,'-%'))
OR c.title LIKE CONCAT('%',CAST(c.year+1 AS CHAR), '-',CONCAT('%','20'+CAST(c.year AS CHAR)))
GROUP BY t1.title HAVING COUNT(*) >= 2