SELECT * FROM
( SELECT t.*, r.*, c.*
FROM title_basics as tb
INNER JOIN title_rating s ON tb.title_id = s.titleId
LEFT OUTER JOIN name_basic na ON tb.title_id=na.name_id AND na.category='actress'
LEFT OUTER JOIN crew cr ON tb.title_id = cr.titleId WHERE tb.isAdult <> 1 OR NOT EXISTS (SELECT * FROM casts WHERE casts.casts_movie_id IN (SELECT title_id FROM title_principals)) ) AS t INNER JOIN rating r USING (title_id)