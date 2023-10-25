SELECT * FROM 
( SELECT DISTINCT cast_name AS "Character",
                      title_basic.title_type AS "Category",
                      title_rating.average_rating as rating,
                       SUM(title_rating.numvotes)/SUM(title_principal.numcharacters)*100 AS score
FROM   title_basic INNER JOIN
                     title_principal ON title_basic.title_ID = title_principal.title_ID INNER JOIN
                     title_crew ON title_basic.title_ID=title_crew.title_ID INNER JOIN
                     title_rating ON title_basic.title_ID=title_rating.title_ID WHERE userPreferencedMovie IN ('Coming Home', 'Mermaid') AND title_category='Action' GROUP BY cast_name, title_basic.title_type HAVING COUNT(*) > 0 ORDER BY score DESC LIMIT 1 OFFSET 0 ) AS t1