SELECT tc.* FROM title_basics AS tb INNER JOIN
( SELECT tc.* FROM title_ratings AS tr INNER JOIN
title_principals as tp ON tr.tconst = tp.tconst WHERE tp.category LIKE '%actress%' ) AS ac ON tb.tconst=ac.tc