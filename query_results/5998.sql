SELECT * FROM
( SELECT tc.*, nr.*, nb.*, np.*, nc.*, tc.titleID AS id
FROM title_ratings as r JOIN title_basic as b ON r.primaryTitle = b.id
JOIN name_basics as n ON n.primaryName = r.director OR n.primaryName = r.writer
LEFT OUTER JOIN name_basics as p ON p.category LIKE '%actress%' AND p.job IN ('Actress')
WHERE b.isAdult=FALSE AND b.startYEAR <= YEAR(NOW()) - 1980 AND b.endYEAR >= YEAR(NOW()) + 2030