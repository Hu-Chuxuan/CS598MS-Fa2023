SELECT * FROM title WHERE
((rating > 5 AND genre = 'documentary') OR
   ((rating < 5 AND genre <> 'comedy')))