SELECT t.* FROM title AS t JOIN title_ratings r ON t.titleID = r.tconst WHERE rating > 7 AND genre NOT IN ('Drama','Horror') ORDER BY r.avgrating DESC LIMIT 5