SELECT * FROM
    ((SELECT TOP 10 t.*, r.*
        from title_basics AS t INNER JOIN
            title_ratings AS r ON t.primaryTitle = r.tconst WHERE t.isAdult=0 AND t.startYear >= 1970 ORDER BY avgRate DESC LIMIT 1 OFFSET 0 )
     UNION ALL
      SELECT DISTINCT p.*
       FROM title_principals AS p LEFT OUTER JOIN title_basics b ON p.ordering = b.tconst
                          WHERE p.category LIKE '%act%' OR p.job='%cast%' OR p.job IN ('Actor','Cameo')
             GROUP BY p.ordering
             ORDER BY count(*) desc))
WHERE NOT EXISTS (SELECT * FROM title_ratings R WHERE R.tconst=P.tconst)