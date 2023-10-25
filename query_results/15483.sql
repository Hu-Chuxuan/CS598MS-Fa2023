SELECT * FROM 
( SELECT t.*, r.rating AS rating_average, r.numvotes AS rating_numvotes, c.genre_name AS genre_name 
FROM title_basics as t INNER JOIN ratings AS r ON t.titleID = r.titleID 
INNER JOIN name_basics as c ON t.titleID = c.movieID WHERE 
((r.rating >= 9 AND r.numvotes > 10)) OR ((c.primaryGenre_id IN ('Action')))