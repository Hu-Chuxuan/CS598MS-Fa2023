SELECT DISTINCT movies.* FROM
(select * from ratings where userID=?) AS r
INNER JOIN titles as t ON r.title = t.titleId
LEFT OUTER JOIN name_basics AS nb USING (primaryTitle)
LEFT OUTER JOIN cast AND crew CUSING (movie) WHERE C.job IN ('Director') OR CAST.character IS NOT NULL