SELECT t.* FROM
(SELECT * FROM
title_basic WHERE title_type = "movie" AND title_basics.start_year < year(now())-5 ) AS tb
LEFT JOIN
name_basic ON tb.primary_title=name_basic.primary_name