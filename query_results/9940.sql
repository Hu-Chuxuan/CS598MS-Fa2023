SELECT * FROM 
( SELECT t.title_id AS id, t.primaryTitle as Title, r.averageRating as Rating, c.* from title t INNER JOIN ratings r ON t.titleID = r.titleId WHERE r.numvotes > 0 AND t.isadult = false ORDER BY t.startyear DESC LIMIT 5 ) AS T 
INNER JOIN cast c USING (casting_id)