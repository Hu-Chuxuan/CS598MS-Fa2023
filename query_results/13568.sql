SELECT tc.* FROM title_crew AS tc JOIN
( SELECT DISTINCT ON(titleType) t.*
FROM title_basic as t LEFT OUTER JOIN title_rating as tr ON t.tconst = tr.tconst WHERE
tr.numvotes >0 AND t.isadult <> 'TRUE' ORDER BY avg_rating DESC LIMIT 1 ) AS T ON t.tconst=tc.tconst