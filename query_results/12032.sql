SELECT * FROM 
(title_basic INNER JOIN title_rating ON title_basic.primaryTitle = title_rating.primaryTitle) 
INNER JOIN title_crew USING (director) 
LEFT OUTER JOIN title_principal USING (character) WHERE actor IS NULL AND director <> NULL