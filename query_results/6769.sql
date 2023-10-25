SELECT * FROM
( SELECT DISTINCT tc.*, nc.*, dc.*, pc.*, rc.*, c.*
FROM title_basic as tb
LEFT JOIN title_rating as tr ON tb.titleId = tr.movieId
INNER JOIN name_basic as nb ON nb.nameId = tb.primaryName
INNER JOIN director AS d ON tb.directorId = d.id
INNER JOIN writer AS w ON tb.writerId=w.id
INNER JOIN producer AS p ON tb.producerId=p.id
LEFT JOIN cast AS ca ON ca.castMemberId = tb.id
WHERE year >= '2017' AND year <= '2019'
AND genre IN ('Action', 'Comedy')
UNION ALL
SELECT * from title_crew WHERE year>=2018)