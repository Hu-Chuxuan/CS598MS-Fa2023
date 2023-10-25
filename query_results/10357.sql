SELECT t.* FROM
title_rating r INNER JOIN
( SELECT * from title WHERE tconst = "movie" ) as t ON r.tconst=t.tconst AND r.averageRating>=6