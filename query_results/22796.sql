SELECT DISTINCT t.* FROM titles AS t JOIN ( SELECT * from (select t.*, avg(rating) as rating from ratings where title_id =? group by title_id ) as m WHERE m.title_id IN (?)) as r ON t.movie_id=r.title_id AND r.rating>=? GROUP BY t.movie_id ORDER BY r.rating DESC LIMIT 3