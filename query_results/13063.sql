SELECT * FROM (title_ratings t JOIN title_crew c ON t.directorId = c.id) WHERE rating >.70 AND genre IN ('Comedy', 'Drama') ORDER BY avgRATING DESC