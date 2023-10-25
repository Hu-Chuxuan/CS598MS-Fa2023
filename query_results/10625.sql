SELECT t.* FROM title_ratings AS r INNER JOIN
(title_principals AS p LEFT OUTER JOIN
name_basics AS m ON p.primaryName = m.nconst WHERE
m.category IN ('Actor') AND p.job LIKE '%Act%' OR
m.category IN ('Director')) USING (tconst) INNER JOIN
title_basics AS b ON r.tconst=b.tconst