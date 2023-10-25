SELECT * FROM
( SELECT * FROM (SELECT DISTINCT cast_id AS id,cast_name as name FROM cast_principal WHERE job = "character") as cpp
JOIN casting ON cpp.id=casting.cast_id JOIN titles t USING (titleId) LEFT OUTER JOIN genre g USING (genreId) GROUP BY cast_id )
WHERE title_type!='Short Film'