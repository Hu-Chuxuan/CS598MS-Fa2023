SELECT DISTINCT
    t.*
FROM
    title AS t INNER JOIN 
    ((title_principals 
        LEFT OUTER JOIN title_ratings ON title_principals.tconst = title_ratings.tconst AND title_principals.ordering >= title_ratings.ordering )
         LEFT OUTER JOIN title_crew ON title_principals.tconst = title_crew.tconst ) ON (((title_principals.job LIKE '%actor%' OR title_principals.category='%actor%' OR title_crew.job LIKE '%actor%' OR title_crew.category='%actor%') AND title_principals.ordering < 10))
WHERE
    (((title_principals.job LIKE '%director%' OR title_principals.category='%director%' OR title_crew.job LIKE '%director%' OR title_crew.category='%director%')) AND title_principals.ordering > 10)