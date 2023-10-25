SELECT DISTINCT titles.* FROM
titles INNER JOIN
title_ratings ON titles.id = title_ratings.tconst WHERE title_ratings.numvotes > 1 AND titles.startyear >= 2018