SELECT t1.* FROM
( SELECT DISTINCT tb.* FROM title_basics AS tb INNER JOIN
title_ratings AS tr ON tb.primaryTitle = tr.originalTitle ) as tb LEFT OUTER JOIN
name_basics na USING (primaryName)