SELECT * FROM ( SELECT DISTINCT TOP 10 t.*
FROM title AS t INNER JOIN
title_basic AS b ON t.tconst = b.tconst INNER JOIN
title_rating AS r ON t.tconst=r.tconst WHERE
b.isAdult='1' AND ((b.startyear <=? OR b.endyear >=?) AND r.numvotes>?))
WHERE b.primaryProfession LIKE '%%AND%' ORDER BY r.averageRATING DESC LIMIT 10 OFFSET?