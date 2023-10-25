SELECT * FROM
title_rating AS r INNER JOIN
(name_basic as nb INNER JOIN
(title_crew tc INNER JOIN
(title_principal tp INNER JOIN
(title_basics tb WHERE ((tb.genre = "horror") AND (nb.primaryName LIKE "%terror%"))) AS t)) ON (tp.ordering = nb.category)) ON (r.averageRating >=.8)