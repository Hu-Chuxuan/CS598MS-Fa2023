SELECT * FROM
( SELECT t.*, r.rating AS rating_user
FROM title_basics as tb INNER JOIN title_ratings as tr ON tb.`titleId` = tr.`titleId` WHERE
tb.primaryTitle LIKE "i%")
UNION ALL
SELECT * FROM
( SELECT t.*, r.rating AS rating_user
FROM title_basics as tb INNER JOIN title_ratings as tr ON tb.`titleId` = tr.`titleId` WHERE
tb.originalTitle LIKE "%and%you%" )
ORDER BY rating_user DESC LIMIT 0, 1