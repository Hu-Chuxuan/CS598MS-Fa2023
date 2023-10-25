SELECT * FROM
(SELECT DISTINCT tconst AS TitleID
FROM title_basic WHERE isadult = "0" AND startyear < 1970 ORDER BY tconst ASC LIMIT 4) T
INNER JOIN
title_rating ON tconst=titleid
WHERE avg_rating >.5 OR avg_rating <=.5