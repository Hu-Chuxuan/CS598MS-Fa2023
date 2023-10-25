SELECT t.* FROM
title_basics AS t INNER JOIN
name_basics AS n ON t.primaryTitle = n.primaryName AND
n.birthYear >=? AND
n.deathYear <=? WHERE
(t.genre IN ('Drama')) OR ((t.runtimeMinutes > 160)) OR ((t.runtimeMinutes < 60))