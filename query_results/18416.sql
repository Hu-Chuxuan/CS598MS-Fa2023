SELECT * FROM
title_ratings t1 JOIN (name_basics nb AND title_crew tr) ON nb.primaryName = tr.director WHERE tr.directors LIKE '%Sofia%'