SELECT * FROM (title_basic WHERE titleType = "movie" AND genre IN ('Action', 'Comedy') OR (title_rating >.8)) JOIN (name_basics ON title_basics.primaryName=name_basics.primaryName) JOIN (title_crew ON title_crew.directors LIKE '%Chris Hemsworth%' ) JOIN (title_principles ON title_principle.job='Actor' OR title_principles.category='Loki') GROUP BY title_basic.primaryName ORDER BY AVG(title_rating)