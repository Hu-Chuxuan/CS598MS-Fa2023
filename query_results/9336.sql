SELECT tb.* FROM
( SELECT nc.name AS character,
   c.job AS job,
   nc.category AS genre
FROM title_principals tp JOIN cast c ON c.castId = tp.id WHERE
tp.ordering > -1 AND
tp.category <> '' GROUP BY c.job,nc.category ) as x LEFT OUTER JOIN
title_crew tc ON tp.primaryName = tc.director OR
tp.primaryName = tc.writer UNION ALL
SELECT tc.* FROM title_crew tc WHERE tc.director IN ('Steven Spielberg', 'John Williams')
UNION ALL
SELECT r.* FROM title_ratings r INNER JOIN title_basic tb ON r.averageRating >=.87 AND r.numVotes >= 600 WHERE
tb.startYear < 1970 ORDER BY r.avgRating DESC LIMIT 10