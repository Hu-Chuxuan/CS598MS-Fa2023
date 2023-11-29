SELECT DISTINCT 
    t.* FROM  
        title AS t JOIN cast AS c ON c.tconst = t.tconst WHERE c.job LIKE '%Actor%' AND t.startyear >= '1900' ORDER BY avgrat DESC LIMIT 10 OFFSET 0 