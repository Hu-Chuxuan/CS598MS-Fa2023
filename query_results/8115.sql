SELECT * FROM
( SELECT tc.*, nr.*, nc.*, tr.*, pr.* FROM title_basic AS tb LEFT JOIN title_rating as TR ON tb.titleID = TR.movieID WHERE tb.primaryTitle LIKE '%' + @input + '%') AS TB
INNER JOIN name_basic NB ON TB.titleID = NB.titleID AND BETWEEN NB.birthyear - 9 AND NB.deathyear > 9 ORDER BY ABS((TB.numvotessum/(TR.averagerating*nb.numvotes))-1), NB.genre ASC LIMIT 1