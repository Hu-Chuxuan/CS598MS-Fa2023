SELECT * FROM
(
    SELECT * FROM title_basic WHERE titleType = "movie" AND genre IN ('Action') ORDER BY rating DESC LIMIT 0,6