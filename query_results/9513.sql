SELECT * FROM
( SELECT rating AS r, title AS t, cast AS c, crew AS e, count(*) as total
FROM title_ratings tr JOIN title_crew cr ON tr.title = cr.movie AND tr.averageRating > 6 WHERE tr.title IN ('Jumanji  (2017)' ) GROUP BY r,t,c,e HAVING COUNT(*) >= 2 ORDER by total DESC LIMIT 3