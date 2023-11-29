SELECT * FROM title_basic WHERE tconst =? AND (startyear >? OR (endyear <?)) ORDER BY avgrat DESC LIMIT? OFFSET?
UNION ALL
SELECT * FROM title_rated WHERE tconst =? AND (avgrat >=?) ORDER BY avgrat ASC LIMIT? OFFSET?
UNION ALL
SELECT * FROM title_crew WHERE tconst IN (?,?) UNION ALL SELECT * FROM title_principal WHERE tconst IN(?,?),category='act',job=?,characters!="[\"Assistant\"]"
ORDER BY avgrat DESC LIMIT? OFFSET?
UNION ALL
SELECT * FROM title_principal WHERE tconst IN?(?,?),(category LIKE '%%'),job=?,characters!=""
ORDER BY avgrat DESC LIMIT? OFFSET?
UNION ALL
SELECT * from title_rating where tconst=(?,?) order by avgrat desc LIMIT? offset?