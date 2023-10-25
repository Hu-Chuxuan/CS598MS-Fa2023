SELECT * FROM
(SELECT tc.*,(SELECT COUNT(*) AS votes FROM rating r WHERE r.titleID = tc.id AND r.userID=1) AS voteCount, AVG(r.voteAverage), MIN(r.voteAverage), MAX(r.voteAverage)) AS aggregatedData
FROM title_ratings as r INNER JOIN title_basics as b ON r.titleID = b.id LEFT OUTER JOIN name_basics as p ON b.nameID = p.id
WHERE b.isAdult IS NULL OR b.isAdult = 'false' AND b.startYear <= YEAR(NOW()) AND b.endYear >=YEAR(NOW()-9 ) GROUP BY tb.id ORDER BY tb.averageRating DESC LIMIT 7